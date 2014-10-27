#include "RelocationNotifiers.hpp"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "Creature.h"
#include "CreatureAI.h"
#include "Player.h"
#include "CellImpl.h"
#include "Profiler/ProbePoint.hpp"

namespace {

bool shouldCallMoveInLineOfSight(Creature const *c, Unit const *u)
{
    return c != u
            && c->IsAIEnabled
            && c->IsAlive()
            && u->IsAlive()
            && !u->isInFlight()
            && !c->HasUnitState(UNIT_STATE_SIGHTLESS)
            && (c->HasReactState(REACT_AGGRESSIVE) || c->AI()->CanSeeEvenInPassiveMode())
            && c->canSeeOrDetect(u, false, true);
}

} // namespace

namespace Trinity {

void CreatureRelocationNotifier::Visit(PlayerMapType &m)
{
    for (auto &player : m)
    {
        if (!player->m_seer->isNeedNotify(NOTIFY_VISIBILITY_CHANGED))
            player->UpdateVisibilityOf(me_);

        if (shouldCallMoveInLineOfSight(me_, player))
            unitToMe_.push_back(player);
    }
}

void CreatureRelocationNotifier::Visit(CreatureMapType &m)
{
    for (auto &c : m)
    {
        if (shouldCallMoveInLineOfSight(me_, c))
            unitToMe_.push_back(c);

        if (!c->isNeedNotify(NOTIFY_VISIBILITY_CHANGED) && shouldCallMoveInLineOfSight(c, me_))
            meToCreature_.push_back(c);
    }
}

void CreatureRelocationNotifier::processCollected()
{
    if (!unitToMe_.empty()) {
        for (auto &u : unitToMe_)
            me_->AI()->MoveInLineOfSight_Safe(u);
        unitToMe_.clear();
    }

    if (!meToCreature_.empty()) {
        for (auto &c : meToCreature_)
            c->AI()->MoveInLineOfSight_Safe(me_);
        meToCreature_.clear();
    }
}

void DelayedUnitRelocation::operator()(Map &map, Cell &cell, CellCoord const &pair, float radius)
{
    creatures_.clear();
    players_.clear();

    map.Visit(cell, Trinity::makeGridVisitor(*this));
    map.Visit(cell, Trinity::makeWorldVisitor(*this));

    for (auto &creature : creatures_)
    {
        TC_PROBE2(worldserver, delayed_unit_relocation.creature.begin, &map, creature);

        creatureNotifier_.setCreature(*creature);

        cell.Visit(pair, Trinity::makeWorldVisitor(creatureNotifier_), map, *creature, radius);
        cell.Visit(pair, Trinity::makeGridVisitor(creatureNotifier_), map, *creature, radius);

        creatureNotifier_.processCollected();

        TC_PROBE2(worldserver, delayed_unit_relocation.creature.end, &map, creature);
    }

    for (auto &p : players_)
    {
        auto &player = p.first;
        auto &data = p.second;

        TC_PROBE2(worldserver, delayed_unit_relocation.player.begin, &map, player);

        Cell cell2(data.coord);
        PlayerRelocationNotifier relocate(*player);

        cell2.Visit(data.coord, Trinity::makeWorldVisitor(relocate), map, *data.viewPoint, radius);
        cell2.Visit(data.coord, Trinity::makeGridVisitor(relocate), map, *data.viewPoint, radius);

        relocate.SendToSelf();

        TC_PROBE2(worldserver, delayed_unit_relocation.player.end, &map, player);
    }
}

void DelayedUnitRelocation::Visit(CreatureMapType &m)
{
    for (auto &creature : m)
        if (creature->isNeedNotify(NOTIFY_VISIBILITY_CHANGED))
            creatures_.emplace_back(creature);
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

        players_.emplace_back(player, PlayerData(viewPoint, pair2));
    }
}

} // namespace Trinity
