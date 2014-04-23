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

#include "Common.h"
#include "DBCEnums.h"
#include "ObjectMgr.h"
#include "GuildMgr.h"
#include "World.h"
#include "WorldPacket.h"
#include "DatabaseEnv.h"
#include "AchievementMgr.h"
#include "Arena.h"
#include "CellImpl.h"
#include "GameEventMgr.h"
#include "GridNotifiersImpl.h"
#include "Guild.h"
#include "Language.h"
#include "Player.h"
#include "SpellMgr.h"
#include "DisableMgr.h"
#include "ScriptMgr.h"
#include "MapManager.h"
#include "Battleground.h"
#include "BattlegroundAB.h"
#include "Map.h"
#include "InstanceScript.h"
#include "Group.h"
#include "BattlePetMgr.h"

BattlePetMgr::BattlePetMgr(Player* owner) : m_player(owner)
{
}

void BattlePetMgr::GetBattlePetList(PetBattleDataList &battlePetList) const
{
    auto const &spellMap = m_player->GetSpellMap();
    for (auto const &itr : spellMap)
    {
        if (itr.second->state == PLAYERSPELL_REMOVED)
            continue;

        if (!itr.second->active || itr.second->disabled)
            continue;

        SpellInfo const* spell = sSpellMgr->GetSpellInfo(itr.first);
        if (!spell)
            continue;

        // Is summon pet spell
        if ((spell->Effects[0].Effect == SPELL_EFFECT_SUMMON && spell->Effects[0].MiscValueB == 3221) == 0)
            continue;

        const CreatureTemplate* creature = sObjectMgr->GetCreatureTemplate(spell->Effects[0].MiscValue);
        if (!creature)
            continue;

        const BattlePetSpeciesEntry* species = sBattlePetSpeciesStore.LookupEntry(creature->Entry);
        if (!species)
            continue;

        PetBattleData pet(creature->Entry, creature->Modelid1, species->ID, spell->Id);
        battlePetList.push_back(pet);
    }
}

void BattlePetMgr::BuildBattlePetJournal(WorldPacket *data)
{
    PetBattleDataList petList;
    GetBattlePetList(petList);

    ByteBuffer dataBuffer;

    data->Initialize(SMSG_BATTLEPET_JOURNAL);
    data->WriteBits(petList.size(), 19);

    // bits part
    for (auto const &pet : petList)
    {
        // Not sent for the moment, pig pig
        ObjectGuid petGuid = uint64(pet.m_summonSpellID);

        data->WriteBitSeq<7>(petGuid);
        data->WriteBit(true);                   // hasQuality, inverse
        data->WriteBitSeq<3, 5, 1, 6>(petGuid);
        data->WriteBit(false);                  // unk bit
        data->WriteBit(true);                   // hasBreed, inverse
        data->WriteBit(true);                   // hasUnk, inverse
        data->WriteBit(false);                  // hasFirstOwnerGuid
        data->WriteBits(0, 7);                  // name lenght
        data->WriteBitSeq<0, 2, 4>(petGuid);

        dataBuffer << uint16(1);                // Level
        dataBuffer.WriteByteSeq<7>(petGuid);
        dataBuffer << uint32(1);                // Health or MaxHealth
        dataBuffer << uint32(pet.m_speciesID);  // Species
        dataBuffer << uint32(1);                // Speed
        dataBuffer << uint32(1);                // Attack
        dataBuffer << uint32(1);                // MaxHealth or Health
        dataBuffer.WriteByteSeq<6>(petGuid);
        dataBuffer << uint32(pet.m_entry);      // PetEntry
        dataBuffer.WriteByteSeq<4, 2, 3, 0>(petGuid);
        dataBuffer << uint32(0);                // Power ?
        dataBuffer << uint16(0);                // Experience
        dataBuffer.WriteByteSeq<1, 5>(petGuid);
    }

    data->WriteBit(1);                          // Unk
    data->WriteBits(0, 25);                     // Battle Team
    data->FlushBits();

    if (dataBuffer.size())
        data->append(dataBuffer);

    *data << uint16(0);                         // Unk
}

void WorldSession::HandleSummonBattlePet(WorldPacket& recvData)
{
    ObjectGuid battlePetGuid;

    recvData.ReadBitSeq<7, 5, 0, 2, 4, 6, 3, 1>(battlePetGuid);
    recvData.ReadByteSeq<4, 1, 0, 2, 6, 3, 7, 5>(battlePetGuid);

    if (!_player->HasSpell(uint32(battlePetGuid)))
        return;

    _player->CastSpell(_player, uint32(battlePetGuid), true);
}
