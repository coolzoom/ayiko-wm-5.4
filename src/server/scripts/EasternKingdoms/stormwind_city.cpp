/*
 * Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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

/* ScriptData
SDName: Stormwind_City
SD%Complete: 0
SDComment:
SDCategory: Stormwind City
EndScriptData */

/* ContentData
EndContentData */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "ScriptedEscortAI.h"

class npc_king_varian_wrynn_quest : public CreatureScript
{
public:
    npc_king_varian_wrynn_quest() : CreatureScript("npc_king_varian_wrynn_quest") { }

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest)
    {
        if (quest->GetQuestId() == 30988) // The Alliance Way
            if (Creature* master = player->SummonCreature(61796, creature->GetPositionX(), creature->GetPositionY(), creature->GetPositionZ(), creature->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN, 300000, player->GetGUID()))
                master->AI()->SetGUID(player->GetGUID());

        return true;
    }
};

class npc_king_varian_wrynn_the_alliance_way : public CreatureScript
{
public:
    npc_king_varian_wrynn_the_alliance_way() : CreatureScript("npc_king_varian_wrynn_the_alliance_way") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_king_varian_wrynn_the_alliance_wayAI (creature);
    }

    struct npc_king_varian_wrynn_the_alliance_wayAI : public ScriptedAI
    {
        npc_king_varian_wrynn_the_alliance_wayAI(Creature* creature) : ScriptedAI(creature) {}

        uint32 phaseId;
        uint32 phaseTimer;
        uint64 playerGUID;

        void Reset()
        {
            playerGUID = 0;
            phaseId = 0;
            phaseTimer = 2000;
        }

        void SetGUID(uint64 guid , int32 /* = 0 */)
        {
            playerGUID = guid;
        }

        void UpdateAI(const uint32 diff)
        {
            if (playerGUID == 0)
                return;

            if (phaseTimer < diff)
            {
                if (phaseId > 14)
                {
                    if (Player * player = Unit::GetPlayer(*me, playerGUID))
                        player->KilledMonsterCredit(61798);
                    playerGUID = 0;
                }

                Talk(phaseId, playerGUID);

                phaseTimer = 6500;
                
                if (phaseId == 0 || phaseId == 1 || phaseId == 13)
                    phaseTimer = 3000;
                else if (phaseId == 7  || phaseId == 9)
                    phaseTimer = 5000;
                else if (phaseId == 6 || phaseId == 3)
                    phaseTimer = 6000;
                else if (phaseId == 11)
                    phaseTimer = 9000;
                else if (phaseId == 2)
                    phaseTimer = 7000;
                else if (phaseId == 5)
                    phaseTimer = 10000;
                else if (phaseId == 12)
                    phaseTimer = 13000;

                ++phaseId;
            }
            else
                phaseTimer -= diff;
        }
    };
};


void AddSC_stormwind_city()
{
    new npc_king_varian_wrynn_quest();
    new npc_king_varian_wrynn_the_alliance_way();
}
