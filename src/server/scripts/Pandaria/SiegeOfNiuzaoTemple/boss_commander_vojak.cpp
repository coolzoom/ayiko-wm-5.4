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

class boss_commander_vojak : public CreatureScript
{
    enum Yells
    {

    };

    enum Spells
    {

    };

    enum Events
    {

    };

    struct boss_commander_vojakAI : public BossAI
    {
        boss_commander_vojakAI(Creature * creature) : BossAI(creature, BOSS_JINBAK) {}

        void Reset() override
        {

        }

        void EnterCombat(Unit* ) override
        {

        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    default:
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
    };
public:
    boss_commander_vojak() : CreatureScript("boss_commander_vojak") {}

    CreatureAI * GetAI(Creature * creature) const override
    {
        return new boss_commander_vojakAI(creature);
    }
};

void AddSC_commander_vojak()
{
    new boss_commander_vojak();
}