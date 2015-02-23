/*
 * Copyright (C) 2008-2015 MoltenCore <http://www.molten-wow.com/>
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

#include "ScriptMgr.h"
#include "InstanceScript.h"
#include "VMapFactory.h"
#include "terrace_of_endless_spring.h"

class instance_terrace_of_endless_spring : public InstanceMapScript
{
    public:
        instance_terrace_of_endless_spring() : InstanceMapScript("instance_terrace_of_endless_spring", 996) { }

        InstanceScript* GetInstanceScript(InstanceMap* map) const
        {
            return new instance_terrace_of_endless_spring_InstanceMapScript(map);
        }

        struct instance_terrace_of_endless_spring_InstanceMapScript : public InstanceScript
        {
            instance_terrace_of_endless_spring_InstanceMapScript(Map* map) : InstanceScript(map) { }

            EventMap m_mEvents;
            uint32 m_auiEncounter[MAX_TYPES];
            std::string strSaveData;

            bool ritualOfPurification;
            bool introDone;

            // Protectors of the Endless
            uint64 ancientRegailGuid;
            uint64 ancientAsaniGuid;
            uint64 protectorKaolanGuid;
            uint64 minionOfFearControllerGuid;

            // Tsulong
            uint64 tsulongGuid;

            // Lei Shi
            uint64 leiShiGuid;

            // Sha of Fear
            uint64 shaOfFearGuid;
            uint64 pureLightTerraceGuid;

            // Timers, old school style!
            uint32 tsulongEventTimer;

            // Council's Vortex
            uint64 wallOfCouncilsVortexGuid;
            uint64 councilsVortexGuid;

            // Lei Shi's Vortex
            uint64 wallOfLeiShisVortexGuid;
            uint64 leiShisVortexGuid;

            uint64 tsulongChestGUID;
            uint64 leishiChestsGUID;

            void Initialize()
            {
                SetBossNumber(DATA_MAX_BOSS_DATA);

                // 5.2
                ritualOfPurification        = false;
                introDone                   = false;

                ancientRegailGuid           = 0;
                ancientAsaniGuid            = 0;
                protectorKaolanGuid         = 0;
                minionOfFearControllerGuid  = 0;

                tsulongGuid                 = 0;

                leiShiGuid                  = 0;

                shaOfFearGuid               = 0;
                pureLightTerraceGuid        = 0;

                tsulongEventTimer           = 0;

                wallOfCouncilsVortexGuid    = 0;
                councilsVortexGuid          = 0;

                wallOfLeiShisVortexGuid     = 0;
                leiShisVortexGuid           = 0;

                tsulongChestGUID = 0;
                leishiChestsGUID = 0;

                memset(&m_auiEncounter, 0, sizeof(m_auiEncounter));
            }

            void OnCreatureCreate(Creature* creature)
            {
                switch (creature->GetEntry())
                {
                    case NPC_ANCIENT_ASANI:
                        ancientAsaniGuid = creature->GetGUID();
                        break;
                    case NPC_ANCIENT_REGAIL:
                        ancientRegailGuid = creature->GetGUID();
                        break;
                    case NPC_PROTECTOR_KAOLAN:
                        protectorKaolanGuid = creature->GetGUID();
                        break;
                    case NPC_MINION_OF_FEAR_CONTROLLER:
                        minionOfFearControllerGuid = creature->GetGUID();
                        break;
                    case NPC_TSULONG:
                        tsulongGuid = creature->GetGUID();
                        break;
                    case NPC_LEI_SHI:
                        leiShiGuid = creature->GetGUID();
                        break;
                    case NPC_SHA_OF_FEAR:
                        shaOfFearGuid = creature->GetGUID();
                        break;
                    case NPC_PURE_LIGHT_TERRACE:
                        pureLightTerraceGuid = creature->GetGUID();
                        break;
                    default:
                        break;
                }
            }

            void OnGameObjectCreate(GameObject* go)
            {
                switch (go->GetEntry())
                {
                    case GOB_COUNCILS_VORTEX:
                        councilsVortexGuid = go->GetGUID();
                        break;
                    case GOB_WALL_OF_COUNCILS_VORTEX:
                        wallOfCouncilsVortexGuid = go->GetGUID();
                        break;
                    case GOB_WALL_OF_LEI_SHI:
                        wallOfLeiShisVortexGuid = go->GetGUID();
                        break;
                    case GOB_LEI_SHIS_VORTEX:
                        leiShisVortexGuid = go->GetGUID();
                        break;
                    case 212922:
                    case 212923:
                    case 212924:
                    case 212925:
                    case 212926:
                        tsulongChestGUID = go->GetGUID();
                        break;
                    case 213073:
                    case 213074:
                    case 213075:
                    case 213076:
                    case 213077:
                        leishiChestsGUID = go->GetGUID();
                        break;
                    default:
                        break;
                }
            }

            bool SetBossState(uint32 id, EncounterState state)
            {
                if (!InstanceScript::SetBossState(id, state))
                    return false;

                if (id == DATA_PROTECTORS && state == DONE)
                    if (Creature* c = instance->GetCreature(GetData64(NPC_TSULONG)))
                    {
                        instance->LoadGrid(c->GetPositionX(), c->GetPositionY());
                        c->AI()->DoAction(ACTION_START_TSULONG_WAYPOINT);
                    }

                if (id == DATA_TSULONG && state == DONE)
                    DoRespawnGameObject(tsulongChestGUID, DAY);

                if (id == DATA_LEI_SHI && state == DONE)
                    DoRespawnGameObject(leishiChestsGUID, DAY);

                if (id < MAX_TYPES)
                    SetData(id, (uint32)state);

                return true;
            }

            void Update(uint32 uiDiff)
            {
                m_mEvents.Update(uiDiff);

                while (uint32 eventId = m_mEvents.ExecuteEvent())
                {
                    switch (eventId)
                    {
                    case 1:
                        if (Creature* c = instance->GetCreature(GetData64(NPC_TSULONG)))
                        {
                            instance->LoadGrid(c->GetPositionX(), c->GetPositionY());
                            c->AI()->DoAction(ACTION_START_TSULONG_WAYPOINT);
                        }
                        break;
                    case 2:
                        Map::PlayerList const& lPlayers = instance->GetPlayers();

                        for (Map::PlayerList::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
                        {
                            if (Player* pPlayer = itr->GetSource())
                            {
                                if (!pPlayer->HasAura(SPELL_LEIS_HOPE))
                                {
                                    if (Aura* pAura = pPlayer->AddAura(SPELL_LEIS_HOPE, pPlayer))
                                    {
                                        pAura->SetMaxDuration(3 * HOUR);
                                        pAura->SetDuration(3 * HOUR);
                                    }
                                }
                            }
                        }

                        m_mEvents.ScheduleEvent(2, 40000);
                        break;
                    }
                }
            }

            void SetData(uint32 type, uint32 data)
            {
                if (type >= MAX_TYPES)
                {
                    switch (type)
                    {
                    case SPELL_RITUAL_OF_PURIFICATION:
                        ritualOfPurification = data;
                        break;
                    case INTRO_DONE:
                    {
                                       if (data > 0)
                                       {
                                           Creature* asani = instance->GetCreature(ancientAsaniGuid);
                                           if (asani)
                                               asani->AI()->DoAction(ACTION_INTRO_FINISHED);

                                           Creature* regail = instance->GetCreature(ancientRegailGuid);
                                           if (regail)
                                               regail->AI()->DoAction(ACTION_INTRO_FINISHED);

                                           Creature* kaolan = instance->GetCreature(protectorKaolanGuid);
                                           if (kaolan)
                                               kaolan->AI()->DoAction(ACTION_INTRO_FINISHED);
                                       }

                                       introDone = data > 0;

                                       break;
                    }
                    default:
                        break;
                    }
                }
                else
                {
                    switch (type)
                    {
                    case TYPE_PROTECTORS:
                    case TYPE_TSULONG:
                    case TYPE_LEI_SHI:
                    case TYPE_SHA:
                        m_auiEncounter[type] = data;
                        break;
                    case TYPE_LEIS_HOPE:
                        if (data == DONE)
                            m_mEvents.ScheduleEvent(2, 200);
                        m_auiEncounter[type] = data;
                        break;
                    }

                    if (data >= DONE)
                    {
                        OUT_SAVE_INST_DATA;

                        std::ostringstream saveStream;
                        saveStream << m_auiEncounter[0] << ' ' << m_auiEncounter[1] << ' ' << m_auiEncounter[2] << ' '
                            << m_auiEncounter[3] << m_auiEncounter[4];

                        strSaveData = saveStream.str();

                        SaveToDB();
                        OUT_SAVE_INST_DATA_COMPLETE;
                    }
                }
            }

            void Load(const char* chrIn)
            {
                if (!chrIn)
                {
                    OUT_LOAD_INST_DATA_FAIL;
                    return;
                }

                OUT_LOAD_INST_DATA(chrIn);
                std::istringstream loadStream(chrIn);

                loadStream >> m_auiEncounter[0] >> m_auiEncounter[1] >> m_auiEncounter[2] >> m_auiEncounter[3] >> m_auiEncounter[4];
                for (uint8 i = 0; i < MAX_TYPES; ++i)
                if (m_auiEncounter[i] == IN_PROGRESS)                // Do not load an encounter as "In Progress" - reset it instead.
                    m_auiEncounter[i] = NOT_STARTED;

                if (m_auiEncounter[TYPE_PROTECTORS] == DONE && m_auiEncounter[TYPE_TSULONG] != DONE)
                {
                    m_mEvents.ScheduleEvent(1, 200);
                }

                if (m_auiEncounter[TYPE_LEIS_HOPE] == DONE && instance->IsHeroic())
                {
                    m_mEvents.ScheduleEvent(2, 200);
                }

                OUT_LOAD_INST_DATA_COMPLETE;
            }

            std::string GetSaveData()
            {
                return strSaveData;
            }

            uint32 GetData(uint32 type)
            {
                switch (type)
                {
                    case SPELL_RITUAL_OF_PURIFICATION:
                        return ritualOfPurification;
                    case INTRO_DONE:
                        return introDone;
                    case TYPE_PROTECTORS:
                    case TYPE_TSULONG:
                    case TYPE_LEI_SHI:
                    case TYPE_SHA:
                    case TYPE_LEIS_HOPE:
                        return m_auiEncounter[type];
                    default:
                        return 0;
                }
            }

            uint64 GetData64(uint32 type)
            {
                switch (type)
                {
                    case NPC_ANCIENT_ASANI:
                        return ancientAsaniGuid;
                    case NPC_ANCIENT_REGAIL:
                        return ancientRegailGuid;
                    case NPC_PROTECTOR_KAOLAN:
                        return protectorKaolanGuid;
                    case NPC_MINION_OF_FEAR_CONTROLLER:
                        return minionOfFearControllerGuid;
                    case NPC_TSULONG:
                        return tsulongGuid;
                    case NPC_LEI_SHI:
                        return leiShiGuid;
                    case NPC_SHA_OF_FEAR:
                        return shaOfFearGuid;
                    case NPC_PURE_LIGHT_TERRACE:
                        return pureLightTerraceGuid;
                    case GOB_COUNCILS_VORTEX:
                        return councilsVortexGuid;
                    case GOB_WALL_OF_COUNCILS_VORTEX:
                        return wallOfCouncilsVortexGuid;
                    case GOB_WALL_OF_LEI_SHI:
                        return wallOfLeiShisVortexGuid;
                    case GOB_LEI_SHIS_VORTEX:
                        return leiShisVortexGuid;
                    default:
                        break;
                }

                return 0;
            }

            bool IsWipe()
            {
                Map::PlayerList const& PlayerList = instance->GetPlayers();

                if (PlayerList.isEmpty())
                    return true;

                return false;
            }

            bool CheckRequiredBosses(uint32 bossId, Player const* player = NULL) const
            {
                if (!InstanceScript::CheckRequiredBosses(bossId, player))
                    return false;

                switch (bossId)
                {
                    case DATA_TSULONG:
                    case DATA_LEI_SHI:
                    case DATA_SHA_OF_FEAR:
                        if (GetBossState(bossId - 1) != DONE)
                            return false;
                    default:
                        break;
                }

                return true;
            }
        };
};

void AddSC_instance_terrace_of_endless_spring()
{
    new instance_terrace_of_endless_spring();
}
