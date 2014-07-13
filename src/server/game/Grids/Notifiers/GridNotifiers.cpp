/*
 * Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "UpdateData.h"
#include "Item.h"
#include "Map.h"
#include "Transport.h"
#include "ObjectAccessor.h"
#include "CellImpl.h"
#include "SpellInfo.h"

using namespace Trinity;

void VisibleNotifier::SendToSelf()
{
    // at this moment i_clientGUIDs have guids that not iterate at grid level checks
    // but exist one case when this possible and object not out of range: transports
    if (Transport* transport = i_player.GetTransport())
        for (Transport::PlayerSet::const_iterator itr = transport->GetPassengers().begin();itr != transport->GetPassengers().end();++itr)
        {
            if (vis_guids.find((*itr)->GetGUID()) != vis_guids.end())
            {
                vis_guids.erase((*itr)->GetGUID());

                i_player.UpdateVisibilityOf((*itr), i_data, i_visibleNow);

                if (!(*itr)->isNeedNotify(NOTIFY_VISIBILITY_CHANGED))
                    (*itr)->UpdateVisibilityOf(&i_player);
            }
        }

    for (Player::ClientGUIDs::const_iterator it = vis_guids.begin();it != vis_guids.end(); ++it)
    {
        i_player.m_clientGUIDs.erase(*it);
        i_data.AddOutOfRangeGUID(*it);

        if (IS_PLAYER_GUID(*it))
        {
            Player* player = ObjectAccessor::FindPlayer(*it);
            if (player && player->IsInWorld() && !player->isNeedNotify(NOTIFY_VISIBILITY_CHANGED))
                player->UpdateVisibilityOf(&i_player);
        }
    }

    if (!i_data.HasData())
        return;

    WorldPacket packet;
    if (i_data.BuildPacket(&packet))
        i_player.GetSession()->SendPacket(&packet);

    for (std::set<Unit*>::const_iterator it = i_visibleNow.begin(); it != i_visibleNow.end(); ++it)
        i_player.SendInitialVisiblePackets(*it);
}

void VisibleChangesNotifier::Visit(PlayerMapType &m)
{
    for (auto &source : m)
    {
        if (source == &i_object)
            continue;

        source->UpdateVisibilityOf(&i_object);

        if (source->GetSharedVisionList().empty())
            continue;

        for (auto &player : source->GetSharedVisionList())
            if (player->m_seer == source)
                player->UpdateVisibilityOf(&i_object);
    }
}

void VisibleChangesNotifier::Visit(CreatureMapType &m)
{
    for (auto &source : m)
    {
        if (source->GetSharedVisionList().empty())
            continue;

        for (auto &player : source->GetSharedVisionList())
            if (player->m_seer == source)
                player->UpdateVisibilityOf(&i_object);
    }
}

void VisibleChangesNotifier::Visit(DynamicObjectMapType &m)
{
    for (auto &obj : m)
    {
        auto const guid = obj->GetCasterGUID();
        if (!IS_PLAYER_GUID(guid))
            continue;

        auto const caster = (Player*)obj->GetCaster();
        if (caster && caster->m_seer == obj)
            caster->UpdateVisibilityOf(&i_object);
    }
}

inline void CreatureUnitRelocationWorker(Creature* c, Unit* u)
{
    if (!u->isAlive() || !c->isAlive() || c == u || u->isInFlight())
        return;

    if (!c->HasUnitState(UNIT_STATE_SIGHTLESS))
        if (c->IsAIEnabled && c->canSeeOrDetect(u, false, true))
            if (c->HasReactState(REACT_AGGRESSIVE) || c->AI()->CanSeeEvenInPassiveMode())
                c->AI()->MoveInLineOfSight_Safe(u);
}

void PlayerRelocationNotifier::Visit(PlayerMapType &m)
{
    for (auto &player : m)
    {
        vis_guids.erase(player->GetGUID());

        i_player.UpdateVisibilityOf(player, i_data, i_visibleNow);

        if (player->m_seer->isNeedNotify(NOTIFY_VISIBILITY_CHANGED))
            continue;

        player->UpdateVisibilityOf(&i_player);
    }
}

void PlayerRelocationNotifier::Visit(CreatureMapType &m)
{
    bool const relocatedForAI = (&i_player == i_player.m_seer);

    for (auto &creature : m)
    {
        vis_guids.erase(creature->GetGUID());

        i_player.UpdateVisibilityOf(creature, i_data, i_visibleNow);

        if (relocatedForAI && !creature->isNeedNotify(NOTIFY_VISIBILITY_CHANGED))
            creaturesToRelocate_.emplace_back(creature);
    }
}

void PlayerRelocationNotifier::processCreatureRelocations()
{
    for (auto &creature : creaturesToRelocate_)
        if (creature->IsInWorld())
            CreatureUnitRelocationWorker(creature, &i_player);
}

void CreatureRelocationNotifier::Visit(PlayerMapType &m)
{
    for (auto &player : m)
    {
        for (auto &other : i_creatureList)
        {
            CreatureUnitRelocationWorker(other, player);
            if (!player->m_seer->isNeedNotify(NOTIFY_VISIBILITY_CHANGED))
                player->UpdateVisibilityOf(other);
        }
    }
}

void CreatureRelocationNotifier::Visit(CreatureMapType &m)
{
    for (auto &creature : m)
    {
        for (auto &other : i_creatureList)
        {
            if (other->isAlive())
            {
                CreatureUnitRelocationWorker(other, creature);
                if (!creature->isNeedNotify(NOTIFY_VISIBILITY_CHANGED))
                    CreatureUnitRelocationWorker(creature, other);
            }
        }
    }
}

void DelayedUnitRelocation::Visit(CreatureMapType &m)
{
    CreatureRelocationNotifier::StorageType creaturesToRelocate;
    creaturesToRelocate.reserve(m.size());

    for (auto &creature : m)
    {
        if (creature->isNeedNotify(NOTIFY_VISIBILITY_CHANGED))
            creaturesToRelocate.push_back(creature);
    }

    if (creaturesToRelocate.empty())
        return;

    CreatureRelocationNotifier relocate(creaturesToRelocate);

    cell.Visit(p, Trinity::makeWorldVisitor(relocate), i_map, i_radius, CENTER_GRID_CELL_OFFSET, CENTER_GRID_CELL_OFFSET);
    cell.Visit(p, Trinity::makeGridVisitor(relocate), i_map, i_radius, CENTER_GRID_CELL_OFFSET, CENTER_GRID_CELL_OFFSET);
}

void DelayedUnitRelocation::Visit(PlayerMapType &m)
{
    for (auto &player : m)
    {
        WorldObject const* viewPoint = player->m_seer;

        if (!viewPoint->isNeedNotify(NOTIFY_VISIBILITY_CHANGED))
            continue;

        if (player != viewPoint && !viewPoint->IsPositionValid())
            continue;

        CellCoord pair2(Trinity::ComputeCellCoord(viewPoint->GetPositionX(), viewPoint->GetPositionY()));
        Cell cell2(pair2);
        //cell.SetNoCreate(); need load cells around viewPoint or player, that's why its commented

        PlayerRelocationNotifier relocate(*player);

        cell2.Visit(pair2, Trinity::makeWorldVisitor(relocate), i_map, *viewPoint, i_radius);
        cell2.Visit(pair2, Trinity::makeGridVisitor(relocate), i_map, *viewPoint, i_radius);

        relocate.processCreatureRelocations();
        relocate.SendToSelf();
    }
}

void AIRelocationNotifier::Visit(CreatureMapType &m)
{
    // We must have a copy here, MoveInLineOfSight can do anything, including
    // spawning/despawning NPCs, that invalidates grid storage
    creaturesInGrid_ = m;

    if (unit_->GetTypeId() == TYPEID_UNIT)
    {
        for (auto &creature : creaturesInGrid_)
        {
            CreatureUnitRelocationWorker(creature, unit_);
            CreatureUnitRelocationWorker(static_cast<Creature*>(unit_), creature);
        }
    }
    else
    {
        for (auto &creature : creaturesInGrid_)
            CreatureUnitRelocationWorker(creature, unit_);
    }
}

void MessageDistDeliverer::Visit(PlayerMapType &m)
{
    for (auto &target : m)
    {
        if (!target->InSamePhase(i_phaseMask))
            continue;

        if (target->GetExactDist2dSq(i_source) > i_distSq)
            continue;

        // Send packet to all who are sharing the player's vision
        if (!target->GetSharedVisionList().empty())
        {
            for (auto &player : target->GetSharedVisionList())
                if (player->m_seer == target)
                    SendPacket(player);
        }

        if (target->m_seer == target || target->GetVehicle())
            SendPacket(target);
    }
}

void MessageDistDeliverer::Visit(CreatureMapType &m)
{
    for (auto &target : m)
    {
        if (!target->InSamePhase(i_phaseMask))
            continue;

        if (target->GetExactDist2dSq(i_source) > i_distSq)
            continue;

        // Send packet to all who are sharing the creature's vision
        if (!target->GetSharedVisionList().empty())
        {
            for (auto &player : target->GetSharedVisionList())
                if (player->m_seer == target)
                    SendPacket(player);
        }
    }
}

void MessageDistDeliverer::Visit(DynamicObjectMapType &m)
{
    for (auto &target : m)
    {
        if (!target->InSamePhase(i_phaseMask))
            continue;

        if (target->GetExactDist2dSq(i_source) > i_distSq)
            continue;

        if (IS_PLAYER_GUID(target->GetCasterGUID()))
        {
            // Send packet back to the caster if the caster has vision of dynamic object
            auto const caster = (Player*)target->GetCaster();
            if (caster && caster->m_seer == target)
                SendPacket(caster);
        }
    }
}

/*
void
MessageDistDeliverer::VisitObject(Player* player)
{
    if (!i_ownTeamOnly || (i_source.GetTypeId() == TYPEID_PLAYER && player->GetTeam() == ((Player&)i_source).GetTeam()))
    {
        SendPacket(player);
    }
}
*/

void UnfriendlyMessageDistDeliverer::Visit(PlayerMapType &m)
{
    for (auto &target : m)
    {
        if (!target->InSamePhase(i_phaseMask))
            continue;

        if (target->GetExactDist2dSq(i_source) > i_distSq)
            continue;

        // Send packet to all who are sharing the player's vision
        if (!target->GetSharedVisionList().empty())
        {
            for (auto &player : target->GetSharedVisionList())
                if (player->m_seer == target)
                    SendPacket(player);
        }

        if (target->m_seer == target || target->GetVehicle())
            SendPacket(target);
    }
}

bool AnyDeadUnitObjectInRangeCheck::operator()(Player* u)
{
    return !u->isAlive() && !u->HasAuraType(SPELL_AURA_GHOST) && i_searchObj->IsWithinDistInMap(u, i_range);
}

bool AnyDeadUnitObjectInRangeCheck::operator()(Corpse* u)
{
    return u->GetType() != CORPSE_BONES && i_searchObj->IsWithinDistInMap(u, i_range);
}

bool AnyDeadUnitObjectInRangeCheck::operator()(Creature* u)
{
    return !u->isAlive() && i_searchObj->IsWithinDistInMap(u, i_range);
}

bool AnyDeadUnitSpellTargetInRangeCheck::operator()(Player* u)
{
    return AnyDeadUnitObjectInRangeCheck::operator()(u) && i_check(u);
}

bool AnyDeadUnitSpellTargetInRangeCheck::operator()(Corpse* u)
{
    return AnyDeadUnitObjectInRangeCheck::operator()(u) && i_check(u);
}

bool AnyDeadUnitSpellTargetInRangeCheck::operator()(Creature* u)
{
    return AnyDeadUnitObjectInRangeCheck::operator()(u) && i_check(u);
}
