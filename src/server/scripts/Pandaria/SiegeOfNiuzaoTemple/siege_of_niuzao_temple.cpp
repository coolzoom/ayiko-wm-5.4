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

/*
***********************
***** TRASH MOBS ******
***********************
*/

// Sik'thik Guardian - 61928
class npc_sikthik_guardian : public CreatureScript
{
    enum Spells
    {
        SPELL_MALLEABLE_RESIN           = 121422
    };

    struct npc_sikthik_guardianAI : public ScriptedAI
    {
        npc_sikthik_guardianAI(Creature * creature) : ScriptedAI(creature) {}

        void Reset() override
        {
            chargeTimer = urand(5000, 6000);
        }

        void UpdateAI(uint32 const diff) override
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (chargeTimer <= diff)
            {
                DoCast(SELECT_TARGET_RANDOM, SPELL_MALLEABLE_RESIN, true, 1);
                chargeTimer = 10000;
            }chargeTimer -= diff;

            DoMeleeAttackIfReady();
        }

    private:
        uint32 chargeTimer;
    };

public:
    npc_sikthik_guardian() : CreatureScript("npc_sikthik_guardian") {}

    CreatureAI * GetAI(Creature * creature) const override
    {
        return new npc_sikthik_guardianAI(creature);
    }
};


class npc_sikthik_amber_weaver : public CreatureScript
{
    enum Spells
    {
        SPELL_RESIN_WEAVE_COSMETIC      = 120596,
        SPELL_RESIN_WEAVING             = 121114,
        SPELL_RESIN_SHELL               = 120946,
    };

    struct npc_sikthik_amber_weaverAI : public ArcherAI
    {
        npc_sikthik_amber_weaverAI(Creature * creature) : ArcherAI(creature)
        {
            visualTimer = 3000;


            me->m_CombatDistance = 15.0f;
            me->m_SightDistance = 15.0f;
            m_minRange = 10.0f;
        }

        void Reset() override
        {
            resinShellTimer = urand(10000, 12000);
            resinWeavingtimer = urand(6000, 8000);
        }

        void JustReachedHome() override
        {
            visualTimer = 1000;
        }

        void EnterCombat(Unit* )
        {
            me->InterruptNonMeleeSpells(true);
        }

        void UpdateAI(uint32 const diff) override
        {
            if (visualTimer)
            {
                if (visualTimer <= diff)
                {
                    DoCast(me, SPELL_RESIN_WEAVE_COSMETIC, false);
                    visualTimer = 0;
                } else visualTimer -= diff;
            }

            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (resinWeavingtimer <= diff)
            {
                DoCast(SELECT_TARGET_RANDOM, SPELL_RESIN_WEAVING, false);
                resinWeavingtimer = 10000;
                return;
            } else resinWeavingtimer -= diff;

            if (resinShellTimer <= diff)
            {
                DoCast(me, SPELL_RESIN_SHELL, false);
                resinShellTimer = 20000;
            } else resinShellTimer -= diff;

            DoMeleeAttackIfReady();
        }
    private:
        uint32 visualTimer;
        uint32 resinShellTimer;
        uint32 resinWeavingtimer;
    };

public:
    npc_sikthik_amber_weaver() : CreatureScript("npc_sikthik_amber_weaver") {}

    CreatureAI * GetAI(Creature * creature) const override
    {
        return new npc_sikthik_amber_weaverAI(creature);
    }
};


class npc_resin_flake : public CreatureScript
{
    enum Spells
    {
        // SPELL_RESIDUE_AURA           = 120940,
        SPELL_RESIDUE           = 120938,
    };

    struct npc_resin_flakeAI : public ScriptedAI
    {
        npc_resin_flakeAI(Creature * creature) : ScriptedAI(creature) {}

        void Reset() override
        {
            residueTimer = 5000;
        }

        void UpdateAI(uint32 const diff) override
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (residueTimer <= diff)
            {
                DoCast(me, SPELL_RESIDUE, true);
                residueTimer = urand(5000, 6000);
            } else residueTimer -= diff;

            DoMeleeAttackIfReady();
        }
    private:
        uint32 residueTimer;
    };

public:
    npc_resin_flake() : CreatureScript("npc_resin_flake") {}

    CreatureAI * GetAI(Creature * creature) const override
    {
        return new npc_resin_flakeAI(creature);
    }
};

/*

class npc_sikthik_guardian : public CreatureScript
{
    enum Spells
    {

    };

    struct npc_sikthik_guardianAI : public ScriptedAI
    {
        npc_sikthik_guardianAI(Creature * creature) : ScriptedAI(creature) {}

        void Reset() override
        {

        }

        void UpdateAI(uint32 const diff) override
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            DoMeleeAttackIfReady();
        }
    };

public:
    npc_sikthik_guardian() : CreatureScript("npc_sikthik_guardian") {}

    CreatureAI * GetAI(Creature * creature) const override
    {
        return new npc_sikthik_guardianAI(creature);
    }
};
*/

void AddSC_siege_of_niuzao_temple()
{
    // Hollowed Out Tree
    new npc_sikthik_guardian();
    new npc_sikthik_amber_weaver();
    new npc_resin_flake();
};