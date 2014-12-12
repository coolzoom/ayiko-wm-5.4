/*
 * Copyright (C) 2008-2014 MoltenCore <http://www.molten-wow.com/>
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
#include "siege_of_niuzao_temple.h"



class instance_siege_of_niuzao_temple : public InstanceMapScript
{
    struct instance_impl : public InstanceScript
    {
        instance_impl(Map* map) : InstanceScript(map) {}


        void Initialize()
        {
            SetBossNumber(TOTAL_ENCOUNTERS);
        }

        bool SetBossState(uint32 id, EncounterState state)
        {
            if (!InstanceScript::SetBossState(id, state))
                return false;

            switch (id)
            {
                default:
                    break;
            }

            return true;
        }

        bool CheckRequiredBosses(uint32 bossId, Player const* player = NULL) const
        {
            if (!InstanceScript::CheckRequiredBosses(bossId, player))
                return false;

            return true;
        }

        void ProcessEvent(WorldObject* /*source*/, uint32 eventId) override
        {

        }

        std::string GetSaveData()
        {
            OUT_SAVE_INST_DATA;

            std::ostringstream saveStream;
            saveStream << "N T " << GetBossSaveData();

            OUT_SAVE_INST_DATA_COMPLETE;
            return saveStream.str();
        }

        void Load(const char* str)
        {
            if (!str)
            {
                OUT_LOAD_INST_DATA_FAIL;
                return;
            }

            OUT_LOAD_INST_DATA(str);

            char dataHead1, dataHead2;

            std::istringstream loadStream(str);
            loadStream >> dataHead1 >> dataHead2;

            if (dataHead1 == 'N' && dataHead2 == 'T')
            {
                for (uint32 i = 0; i < TOTAL_ENCOUNTERS; ++i)
                {
                    uint32 tmpState;
                    loadStream >> tmpState;
                    if (tmpState == IN_PROGRESS || tmpState > SPECIAL)
                        tmpState = NOT_STARTED;
                    SetBossState(i, EncounterState(tmpState));
                }
            } else
                OUT_LOAD_INST_DATA_FAIL;

            OUT_LOAD_INST_DATA_COMPLETE;
        }
    };

public:
    instance_siege_of_niuzao_temple() : InstanceMapScript("instance_siege_of_niuzao_temple", 1011) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const
    {
        return new instance_impl(map);
    }
};

void AddSC_instance_siege_of_niuzao_temple()
{
    new instance_siege_of_niuzao_temple();
}