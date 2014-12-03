/*
 * Copyright (C) 2008-20XX Trinity <http://www.pandashan.com>
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

#include "mogu_shan_vault.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"

enum eSpells
{
    // Jasper
    SPELL_JASPER_OVERLOAD               = 115843,
    SPELL_JASPER_PETRIFICATION          = 116036,
    SPELL_JASPER_PETRIFICATION_BAR      = 131270,
    SEPLL_JASPER_TRUE_FORM              = 115828,
    SPELL_JASPER_CHAINS                 = 130395,
    SPELL_JASPER_CHAINS_VISUAL          = 130403,
    SPELL_JASPER_CHAINS_DAMAGE          = 130404,

    // Jade
    SPELL_JADE_OVERLOAD                 = 115842,
    SPELL_JADE_PETRIFICATION            = 116006,
    SPELL_JADE_PETRIFICATION_BAR        = 131269,
    SEPLL_JADE_TRUE_FORM                = 115827,
    SPELL_JADE_SHARDS                   = 116223,

    // Amethyst
    SPELL_AMETHYST_OVERLOAD             = 115844,
    SPELL_AMETHYST_PETRIFICATION        = 116057,
    SPELL_AMETHYST_PETRIFICATION_BAR    = 131255,
    SPELL_AMETHYST_TRUE_FORM            = 115829,
    SPELL_AMETHYST_POOL                 = 116235,

    // Cobalt
    SPELL_COBALT_OVERLOAD               = 115840,
    SPELL_COBALT_PETRIFICATION          = 115852,
    SPELL_COBALT_PETRIFICATION_BAR      = 131268,
    SEPLL_COBALT_TRUE_FORM              = 115771,
    SPELL_COBALT_MINE                   = 129460,

    // Shared
    SPELL_SOLID_STONE                   = 115745,
    SPELL_REND_FLESH                    = 125206,
    SPELL_ANIM_SIT                      = 128886,
    SPELL_ZERO_ENERGY                   = 72242,
    SPELL_TOTALY_PETRIFIED              = 115877,

    //  Energized Tiles
    SPELL_TILES_AURA                    = 116579,
    SPELL_TILES_AURA_EFFECT             = 116541,
    SPELL_TILES_DISPLAYED               = 116542,
    SPELL_LIVING_AMETHYST               = 116322,
    SPELL_LIVING_COBALT                 = 116199,
    SPELL_LIVING_JADE                   = 116301,
    SPELL_LIVING_JASPER                 = 116304,
};

enum eEvents
{
    // Controller
    EVENT_PETRIFICATION                 = 1,
    EVENT_CRYSTALS                      = 2,

    // Guardians
    EVENT_CHECK_NEAR_GUARDIANS          = 3,
    EVENT_CHECK_ENERGY                  = 4,
    EVENT_REND_FLESH                    = 5,
    EVENT_MAIN_ATTACK                   = 6,
    EVENT_ENRAGE                        = 7,

    // Tiles
    EVENT_TILING                        = 8,
};

uint32 guardiansEntry[4] =
{
    NPC_JASPER,
    NPC_JADE,
    NPC_AMETHYST,
    NPC_COBALT
};

// For living crystals - Stone guard
Position stoneGuardsPos[4] =
{
    {3919.89f, 1258.59f, 466.363f, 4.66991f},
    {3878.93f, 1258.49f, 466.363f, 4.69497f},
    {3928.00f, 1246.34f, 466.363f, 4.71147f},
    {3870.75f, 1246.28f, 466.363f, 4.54348f}
};

// Specific orientation for tiles (should not be turned)
#define TILE_ORIENTATION 4.714031f

// Invisible modelID for NPC Tiling Creature 62026
#define INVISIBLE_DISPLAYID 11686

// 60089 - Stone Guard Controller
class boss_stone_guard_controller : public CreatureScript
{
public:
    boss_stone_guard_controller() : CreatureScript("boss_stone_guard_controller") {}

    struct boss_stone_guard_controllerAI : public ScriptedAI
    {
        boss_stone_guard_controllerAI(Creature* creature) : ScriptedAI(creature)
        {
            pInstance = creature->GetInstanceScript();
        }

        InstanceScript* pInstance;
        EventMap events;

        uint32 lastPetrifierEntry;

        uint8 totalGuardian;

        // Heroic
        uint8 powDownCount;

        bool fightInProgress;

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
            me->SetVisible(false);

            fightInProgress = false;
            lastPetrifierEntry = 0;

            if (pInstance->GetBossState(DATA_STONE_GUARD) != DONE)
                pInstance->SetBossState(DATA_STONE_GUARD, NOT_STARTED);

            events.ScheduleEvent(EVENT_PETRIFICATION, 15000);

            if (IsHeroic())
                powDownCount = 2;
        }

        void DoAction(int32 const action)
        {
            switch (action)
            {
                case ACTION_ENTER_COMBAT:
                {
                    for (uint32 entry: guardiansEntry)
                        if (Creature* guardian = me->GetMap()->GetCreature(pInstance->GetData64(entry)))
                            if (guardian->IsAlive())
                                pInstance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, guardian);

                            events.ScheduleEvent(EVENT_PETRIFICATION, 15000);
                        if (IsHeroic())
                            events.ScheduleEvent(EVENT_CRYSTALS, 7000);

                        fightInProgress = true;
                    break;
                }
                case ACTION_GUARDIAN_DIED:
                {
                    if (!fightInProgress)
                        break;

                    totalGuardian = 0;
                    for (uint32 entry: guardiansEntry)
                        if (Creature* guardian = me->GetMap()->GetCreature(pInstance->GetData64(entry)))
                            if (guardian->IsAlive())
                                ++totalGuardian;

                            if (--totalGuardian) // break if a guardian is still alive
                                break;

                            for (uint32 entry: guardiansEntry)
                                if (Creature* guardian = me->GetMap()->GetCreature(pInstance->GetData64(entry)))
                                    pInstance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, guardian);

                                pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_TOTALY_PETRIFIED);
                            pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_JASPER_CHAINS);
                            pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_JASPER_PETRIFICATION_BAR);
                            pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_JADE_PETRIFICATION_BAR);
                            pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_AMETHYST_PETRIFICATION_BAR);
                            pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_COBALT_PETRIFICATION_BAR);
                            pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_TILES_AURA_EFFECT);

                            pInstance->SetBossState(DATA_STONE_GUARD, DONE);

                            fightInProgress = false;

                            // Removing Crystals
                            if (Creature* amethystCrystal = GetClosestCreatureWithEntry(me, NPC_LIVING_AMETHYST_CRYSTAL, 200.0f))
                                amethystCrystal->DespawnOrUnsummon();

                            if (Creature* cobaltCrystal = GetClosestCreatureWithEntry(me, NPC_LIVING_COBALT_CRYSTAL, 200.0f))
                                cobaltCrystal->DespawnOrUnsummon();

                            if (Creature* jadeCrystal = GetClosestCreatureWithEntry(me, NPC_LIVING_JADE_CRYSTAL, 200.0f))
                                jadeCrystal->DespawnOrUnsummon();

                            if (Creature* jasperCrystal = GetClosestCreatureWithEntry(me, NPC_LIVING_JASPER_CRYSTAL, 200.0f))
                                jasperCrystal->DespawnOrUnsummon();

                            // Removing energized tiles
                            me->RemoveAllDynObjects();
                            break;
                }
                case ACTION_POWER_DOWN:
                {
                    if (Creature* guardian = pInstance->instance->GetCreature(pInstance->GetData64(NPC_AMETHYST)))
                    {
                        if (powDownCount)
                        {
                            if (powDownCount == 2 || guardian->GetHealthPct() < 40.0f)
                            {
                                // Removing Tiles
                                me->RemoveAllDynObjects();

                                // Removing buff
                                std::list<Player*> raid;
                                GetPlayerListInGrid(raid, me, 5000.0f);

                                for (auto player : raid)
                                    player->RemoveAura(SPELL_TILES_AURA_EFFECT);

                                // Decreasing powDowCount
                                --powDownCount;
                            }
                        }
                    }
                    break;
                }
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!fightInProgress)
                return;

            if (!pInstance)
                return;

            events.Update(diff);

            switch (events.ExecuteEvent())
            {
                case EVENT_PETRIFICATION:
                {
                    if (fightInProgress)
                    {
                        bool alreadyOnePetrificationInProgress = false;

                        for (uint8 i = 0; i < 4; ++i)
                            if (uint64 stoneGuardGuid = pInstance->GetData64(guardiansEntry[i]))
                                if (Creature* stoneGuard = pInstance->instance->GetCreature(stoneGuardGuid))
                                    if (stoneGuard->HasAura(SPELL_JASPER_PETRIFICATION)   || stoneGuard->HasAura(SPELL_JADE_PETRIFICATION) ||
                                        stoneGuard->HasAura(SPELL_AMETHYST_PETRIFICATION) || stoneGuard->HasAura(SPELL_COBALT_PETRIFICATION))
                                    {
                                        alreadyOnePetrificationInProgress = true;
                                        break;
                                    }

                                    if (alreadyOnePetrificationInProgress)
                                    {
                                        events.ScheduleEvent(EVENT_PETRIFICATION, 20000);
                                        break;
                                    }

                                    uint32 nextPetrifierEntry = 0;
                                    do
                                    {
                                        nextPetrifierEntry = guardiansEntry[rand() % 4];
                                    }
                                    while (nextPetrifierEntry == lastPetrifierEntry);

                                    if (uint64 stoneGuardGuid = pInstance->GetData64(nextPetrifierEntry))
                                    {
                                        if (Creature* stoneGuard = pInstance->instance->GetCreature(stoneGuardGuid))
                                        {
                                            if (stoneGuard->IsAlive() && stoneGuard->IsInCombat())
                                            {
                                                stoneGuard->AI()->DoAction(ACTION_PETRIFICATION);
                                                lastPetrifierEntry = nextPetrifierEntry;
                                                events.ScheduleEvent(EVENT_PETRIFICATION, 90000);
                                            }
                                            else
                                                events.ScheduleEvent(EVENT_PETRIFICATION, 2000);
                                        }
                                        else
                                            events.ScheduleEvent(EVENT_PETRIFICATION, 2000);
                                    }
                                    else
                                        events.ScheduleEvent(EVENT_PETRIFICATION, 2000);
                    }
                    break;
                }
                case EVENT_CRYSTALS:
                {
                    for (uint8 i = 0; i < 4; ++i)
                        if (uint64 stoneGuardGuid = pInstance->GetData64(guardiansEntry[i]))
                            if (Creature* stoneGuard = pInstance->instance->GetCreature(stoneGuardGuid))
                                if (stoneGuard->IsAlive())
                                {
                                    switch(stoneGuard->GetEntry())
                                    {
                                        case NPC_JASPER:
                                        {
                                            me->SummonCreature(NPC_LIVING_JASPER_CRYSTAL, stoneGuardsPos[i]);
                                            break;
                                        }
                                        case NPC_JADE:
                                        {
                                            me->SummonCreature(NPC_LIVING_JADE_CRYSTAL, stoneGuardsPos[i]);
                                            break;
                                        }
                                        case NPC_AMETHYST:
                                        {
                                            me->SummonCreature(NPC_LIVING_AMETHYST_CRYSTAL, stoneGuardsPos[i]);
                                            break;
                                        }
                                        case NPC_COBALT:
                                        {
                                            me->SummonCreature(NPC_LIVING_COBALT_CRYSTAL, stoneGuardsPos[i]);
                                            break;
                                        }
                                    }
                                }
                                break;
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_stone_guard_controllerAI(creature);
    }
};

// 59915 - Jasper Guardian
// 60043 - Jade Guardian
// 60047 - Amethyst Guardian
// 60051 - Cobalt Guardian
class boss_generic_guardian : public CreatureScript
{
public:
    boss_generic_guardian() : CreatureScript("boss_generic_guardian") {}

    struct boss_generic_guardianAI : public BossAI
    {
        boss_generic_guardianAI(Creature* creature) : BossAI(creature, DATA_STONE_GUARD), summons(creature)
        {
            pInstance = creature->GetInstanceScript();
            creature->RemoveFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_REGENERATE_POWER);
        }

        InstanceScript* pInstance;
        EventMap events;
        SummonList summons;

        uint32 spellOverloadId;
        uint32 spellPetrificationId;
        uint32 spellPetrificationBarId;
        uint32 spellTrueFormId;
        uint32 spellMainAttack;

        bool warnedForOverload;
        bool isInTrueForm;

        Creature* GetController()
        {
            if (pInstance)
                return me->GetMap()->GetCreature(pInstance->GetData64(NPC_STONE_GUARD_CONTROLLER));
            else
                return NULL;
        }

        void Reset()
        {
            _Reset();
            isInTrueForm = false;
            warnedForOverload = false;
            me->SetReactState(REACT_DEFENSIVE);
            me->setPowerType(POWER_ENERGY);
            me->SetPower(POWER_ENERGY, 0);
            me->RemoveFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_REGENERATE_POWER);

            me->CastSpell(me, SPELL_SOLID_STONE, true);
            me->CastSpell(me, SPELL_ANIM_SIT,    true);
            me->CastSpell(me, SPELL_ZERO_ENERGY, true);

            if (Creature* stoneGuardController = me->GetMap()->GetCreature(GetData(NPC_STONE_GUARD_CONTROLLER)))
                stoneGuardController->AI()->Reset();

            summons.DespawnAll();
            me->RemoveAllAreasTrigger();

            switch (me->GetEntry())
            {
                case NPC_JASPER:
                    spellOverloadId             = SPELL_JASPER_OVERLOAD;
                    spellPetrificationId        = SPELL_JASPER_PETRIFICATION;
                    spellPetrificationBarId     = SPELL_JASPER_PETRIFICATION_BAR;
                    spellTrueFormId             = SEPLL_JASPER_TRUE_FORM;
                    spellMainAttack             = SPELL_JASPER_CHAINS;
                    break;
                case NPC_JADE:
                    spellOverloadId             = SPELL_JADE_OVERLOAD;
                    spellPetrificationId        = SPELL_JADE_PETRIFICATION;
                    spellPetrificationBarId     = SPELL_JADE_PETRIFICATION_BAR;
                    spellTrueFormId             = SEPLL_JADE_TRUE_FORM;
                    spellMainAttack             = SPELL_JADE_SHARDS;
                    break;
                case NPC_AMETHYST:
                    spellOverloadId             = SPELL_AMETHYST_OVERLOAD;
                    spellPetrificationId        = SPELL_AMETHYST_PETRIFICATION;
                    spellPetrificationBarId     = SPELL_AMETHYST_PETRIFICATION_BAR;
                    spellTrueFormId             = SPELL_AMETHYST_TRUE_FORM;
                    spellMainAttack             = SPELL_AMETHYST_POOL;
                    break;
                case NPC_COBALT:
                    spellOverloadId             = SPELL_COBALT_OVERLOAD;
                    spellPetrificationId        = SPELL_COBALT_PETRIFICATION;
                    spellPetrificationBarId     = SPELL_COBALT_PETRIFICATION_BAR;
                    spellTrueFormId             = SEPLL_COBALT_TRUE_FORM;
                    spellMainAttack             = SPELL_COBALT_MINE;
                    break;
                default:
                    spellOverloadId             = 0;
                    spellPetrificationId        = 0;
                    spellPetrificationBarId     = 0;
                    spellTrueFormId             = 0;
                    spellMainAttack             = 0;
                    break;
            }

            if (pInstance)
                pInstance->DoRemoveAurasDueToSpellOnPlayers(spellPetrificationBarId);

            events.Reset();
            events.ScheduleEvent(EVENT_CHECK_NEAR_GUARDIANS,    2500);
            events.ScheduleEvent(EVENT_CHECK_ENERGY,            1000);
            events.ScheduleEvent(EVENT_REND_FLESH,              5000);
            events.ScheduleEvent(EVENT_MAIN_ATTACK,             10000);
            events.ScheduleEvent(EVENT_ENRAGE,                  360000);
        }

        void EnterCombat(Unit* /*attacker*/)
        {
            if (pInstance)
                pInstance->SetBossState(DATA_STONE_GUARD, IN_PROGRESS);

            me->RemoveAurasDueToSpell(SPELL_SOLID_STONE);
            me->RemoveAurasDueToSpell(SPELL_ANIM_SIT);
        }

        void EnterEvadeMode()
        {
            me->RemoveAurasDueToSpell(SPELL_AMETHYST_PETRIFICATION);
            me->RemoveAurasDueToSpell(SPELL_JADE_PETRIFICATION);
            me->RemoveAurasDueToSpell(SPELL_COBALT_PETRIFICATION);
            me->RemoveAurasDueToSpell(SPELL_JASPER_PETRIFICATION);

            for (uint32 entry : guardiansEntry)
            {
                if (pInstance)
                {
                    if (Creature* gardian = me->GetMap()->GetCreature(pInstance->GetData64(entry)))
                    {
                        pInstance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, gardian);
                        gardian->RemoveAurasDueToSpell(SPELL_AMETHYST_PETRIFICATION);
                        gardian->RemoveAurasDueToSpell(SPELL_JADE_PETRIFICATION);
                        gardian->RemoveAurasDueToSpell(SPELL_COBALT_PETRIFICATION);
                        gardian->RemoveAurasDueToSpell(SPELL_JASPER_PETRIFICATION);
                    }
                }
            }

            if (pInstance)
            {
                pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_JASPER_CHAINS);
                pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_TOTALY_PETRIFIED);
                pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_COBALT_PETRIFICATION_BAR);
                pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_JASPER_PETRIFICATION_BAR);
                pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_JADE_PETRIFICATION_BAR);
                pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_AMETHYST_PETRIFICATION_BAR);
            }

            BossAI::EnterEvadeMode();
            if (pInstance)
            {
                pInstance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
                pInstance->SetBossState(DATA_STONE_GUARD, FAIL);
            }
            _DespawnAtEvade();
        }

        void JustSummoned(Creature* summon)
        {
            summons.Summon(summon);
        }

        void SummonedCreatureDespawn(Creature* summon)
        {
            summons.Despawn(summon);
        }

        void DamageTaken(Unit* attacker, uint32& damage)
        {
            if (Creature* controller = GetController())
            {
                if (damage >= me->GetHealth() && me->IsAlive())
                {
                    me->LowerPlayerDamageReq(me->GetMaxHealth()); // Allow player loots even if only the controller has damaged the guardian
                    controller->AI()->DoAction(ACTION_GUARDIAN_DIED);

                    for (uint32 entry: guardiansEntry)
                        if (Creature* gardian = controller->GetMap()->GetCreature(pInstance->GetData64(entry)))
                            if (gardian != me)
                                attacker->Kill(gardian, false, NULL);

                            return;
                }

                for (uint32 entry: guardiansEntry)
                    if (Creature* gardian = controller->GetMap()->GetCreature(pInstance->GetData64(entry)))
                        if (gardian->GetGUID() != me->GetGUID() && damage < gardian->GetHealth())
                            gardian->ModifyHealth(-int32(damage));

                        // Heroic : turns off white tiles when life < 75% and then < 40%
                        if (me->HealthBelowPctDamaged(75, damage))
                            controller->AI()->DoAction(ACTION_POWER_DOWN);
            }
        }

        void RegeneratePower(Powers /*power*/, int32& value)
        {
            if (!me->IsInCombat())
            {
                value = 0;
                return;
            }

            if (isInTrueForm)
                value = 4; // Creature regen every 2 seconds, and guardians must regen at 2/sec
                else
                    value = 0;
        }

        void JustDied(Unit* /*killer*/)
        {
            me->RemoveAllAreasTrigger();

            if (Creature* controller = GetController())
                controller->AI()->DoAction(ACTION_GUARDIAN_DIED);
        }

        void DoAction(int32 const action)
        {
            switch (action)
            {
                case ACTION_ENTER_COMBAT:
                    if (!me->IsInCombat())
                        if (Player* victim = me->SelectNearestPlayerNotGM(100.0f))
                            AttackStart(victim);
                        break;
                case ACTION_PETRIFICATION:
                {
                    char buf[128];
                    sprintf(buf, "%s begins to petrify all players!", me->GetName().c_str());
                    me->MonsterTextEmote(buf, 0, true);
                    me->CastSpell(me, spellPetrificationId, true);
                    pInstance->DoCastSpellOnPlayers(spellPetrificationBarId);
                    break;
                }
            }
        }

        bool CheckNearGuardians()
        {
            for (uint32 entry : guardiansEntry)
                if (entry != me->GetEntry())
                    if (GetClosestCreatureWithEntry(me, entry, 12.0f, true))
                        return true;

                    return false;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
            {
                if (!me->isMoving() && !me->HasAura(SPELL_ANIM_SIT))
                    me->CastSpell(me, SPELL_ANIM_SIT, true);

                return;
            }

            events.Update(diff);

            switch(events.ExecuteEvent())
            {
                case EVENT_CHECK_NEAR_GUARDIANS:
                {
                    bool hasNearGardian = CheckNearGuardians();

                    if (!isInTrueForm && hasNearGardian)
                    {
                        me->RemoveAurasDueToSpell(SPELL_SOLID_STONE);
                        me->CastSpell(me, spellTrueFormId, true);
                        isInTrueForm = true;
                    }
                    else if (isInTrueForm && !hasNearGardian)
                    {
                        me->CastSpell(me, SPELL_SOLID_STONE, true);
                        me->RemoveAurasDueToSpell(spellTrueFormId);
                        isInTrueForm = false;
                    }

                    events.ScheduleEvent(EVENT_CHECK_NEAR_GUARDIANS, 2000);
                    break;
                }
                case EVENT_CHECK_ENERGY:
                {
                    if (me->GetPower(POWER_ENERGY) >= me->GetMaxPower(POWER_ENERGY))
                    {
                        me->MonsterTextEmote(sSpellMgr->GetSpellInfo(spellOverloadId)->SpellName, 0, true);
                        me->CastSpell(me, spellOverloadId, false);
                        me->RemoveAurasDueToSpell(spellPetrificationId);
                        if (pInstance)
                            pInstance->DoRemoveAurasDueToSpellOnPlayers(spellPetrificationBarId);
                    }
                    else if (me->GetPower(POWER_ENERGY) >= 85 && !warnedForOverload)
                    {
                        Talk(1);
                        warnedForOverload = true;
                    }

                    events.ScheduleEvent(EVENT_CHECK_ENERGY, 1000);
                    break;
                }
                case EVENT_REND_FLESH:
                {
                    if (Unit* victim = SelectTarget(SELECT_TARGET_TOPAGGRO))
                        me->CastSpell(victim, SPELL_REND_FLESH, false);

                    events.ScheduleEvent(EVENT_REND_FLESH, urand(20000, 25000));
                    break;
                }
                case EVENT_MAIN_ATTACK:
                {
                    if (isInTrueForm)
                    {
                        switch (me->GetEntry())
                        {
                            case NPC_JADE:
                            {
                                me->CastSpell(me, SPELL_JADE_SHARDS, false);
                                events.ScheduleEvent(EVENT_MAIN_ATTACK, 8000);
                                break;
                            }
                            case NPC_COBALT:
                            case NPC_AMETHYST:
                            {
                                if (Unit* victim = SelectTarget(SELECT_TARGET_RANDOM))
                                    me->CastSpell(victim, spellMainAttack, false);

                                events.ScheduleEvent(EVENT_MAIN_ATTACK, 10000);
                                break;
                            }
                            case NPC_JASPER:
                            {
                                for (uint8 i = 0; i < 2; ++i)
                                {
                                    std::list<Player*> playerList;
                                    std::list<Player*> tempPlayerList;
                                    GetPlayerListInGrid(playerList, me, 100.0f);

                                    uint64 victimGuid = 0;
                                    if (me->GetVictim())
                                        victimGuid = me->GetVictim()->GetGUID();

                                    for (auto player: playerList)
                                        if (player->IsAlive() && !player->HasAura(SPELL_JASPER_CHAINS) && !player->HasAura(SPELL_TOTALY_PETRIFIED) && player->GetGUID() != victimGuid)
                                            tempPlayerList.push_back(player);

                                        if (tempPlayerList.size() < 2)
                                            break;

                                        Trinity::Containers::RandomResizeList(tempPlayerList, 2);

                                    Player* firstPlayer  = *tempPlayerList.begin();
                                    Player* SecondPlayer = *(++(tempPlayerList.begin()));

                                    if (!firstPlayer || !SecondPlayer)
                                        break;

                                    if (auto const aura = me->AddAura(SPELL_JASPER_CHAINS, firstPlayer))
                                        aura->SetScriptGuid(0, SecondPlayer->GetGUID());

                                    if (auto const aura = me->AddAura(SPELL_JASPER_CHAINS, SecondPlayer))
                                        aura->SetScriptGuid(0, firstPlayer->GetGUID());
                                }

                                events.ScheduleEvent(EVENT_MAIN_ATTACK, 10000);
                                break;
                            }
                        }
                    }

                    break;
                }
                            case EVENT_ENRAGE:
                                me->CastSpell(me, SPELL_BERSERK, true);
                                break;
            }

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_generic_guardianAI(creature);
    }
};

enum eMineSpell
{
    SPELL_COBALT_MINE_VISUAL    = 129455,
    SPELL_COBALT_MINE_EXPLOSION = 116281
};

// 65803 - Cobalt mine
class mob_cobalt_mine : public CreatureScript
{
public:
    mob_cobalt_mine() : CreatureScript("mob_cobalt_mine") {}

    struct mob_cobalt_mineAI : public ScriptedAI
    {
        mob_cobalt_mineAI(Creature* creature) : ScriptedAI(creature)
        {
            pInstance = creature->GetInstanceScript();
        }

        InstanceScript* pInstance;
        uint32 preparationTimer;
        bool isReady;
        bool isExploded;

        void Reset()
        {
            preparationTimer = 3000;
            isReady    = false;
            isExploded = false;
            me->AddAura(SPELL_COBALT_MINE_VISUAL, me);
        }

        void UpdateAI(const uint32 diff)
        {
            if (pInstance)
                if (pInstance->GetBossState(DATA_STONE_GUARD) != IN_PROGRESS)
                    me->DespawnOrUnsummon();

                if (preparationTimer)
                {
                    if (preparationTimer <= diff)
                    {
                        isReady = true;
                        preparationTimer = 0;
                    }
                    else
                        preparationTimer -= diff;
                }

                if (isReady && !isExploded)
                    if (me->SelectNearestPlayerNotGM(5.0f))
                    {
                        me->CastSpell(me, SPELL_COBALT_MINE_EXPLOSION, false);
                        me->DespawnOrUnsummon(700);
                        isExploded = true;
                    }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_cobalt_mineAI(creature);
    }
};

// Generic Living Crystals : 60304 (Cobalt) 60306 (Jade) 60307 (Jasper) 60308 (Amethyst)
class mob_living_crystal : public CreatureScript
{
public:
    mob_living_crystal() : CreatureScript("mob_living_crystal") { }

    struct mob_living_crystalAI : public ScriptedAI
    {
        mob_living_crystalAI(Creature* creature) : ScriptedAI(creature)
        {
            pInstance = creature->GetInstanceScript();
        }

        InstanceScript* pInstance;

        void Reset()
        {
        }

        void OnSpellClick(Unit* clicker, bool& /*result*/)
        {
            if (Player* player = clicker->ToPlayer())
            {
                auto const amethyst = player->GetAura(SPELL_LIVING_AMETHYST);
                auto const cobalt = player->GetAura(SPELL_LIVING_COBALT);
                auto const jade = player->GetAura(SPELL_LIVING_JADE);
                auto const jasper = player->GetAura(SPELL_LIVING_JASPER);

                // Prevent stacking different auras
                if (amethyst && cobalt)
                {
                    if (amethyst->GetStackAmount() > cobalt->GetStackAmount())
                        cobalt->Remove();
                    else
                        amethyst->Remove();
                    return;
                }
                else if (amethyst && jade)
                {
                    if (amethyst->GetStackAmount() > jade->GetStackAmount())
                        jade->Remove();
                    else
                        amethyst->Remove();
                    return;
                }
                else if (amethyst && jasper)
                {
                    if (amethyst->GetStackAmount() > jasper->GetStackAmount())
                        jasper->Remove();
                    else
                        amethyst->Remove();
                    return;
                }
                else if (cobalt && jade)
                {
                    if (cobalt->GetStackAmount() > jade->GetStackAmount())
                        jade->Remove();
                    else
                        cobalt->Remove();
                    return;
                }
                else if (cobalt && jasper)
                {
                    if (cobalt->GetStackAmount() > jasper->GetStackAmount())
                        jasper->Remove();
                    else
                        cobalt->Remove();
                    return;
                }
                else if (jade && jasper)
                {
                    if (jade->GetStackAmount() > jasper->GetStackAmount())
                        jasper->Remove();
                    else
                        jade->Remove();
                    return;
                }

                // Setting stack
                if (amethyst)
                    player->GetAura(SPELL_LIVING_AMETHYST)->SetStackAmount(10);
                else if (cobalt)
                    player->GetAura(SPELL_LIVING_COBALT)->SetStackAmount(10);
                else if (jade)
                    player->GetAura(SPELL_LIVING_JADE)->SetStackAmount(10);
                else if (jasper)
                    player->GetAura(SPELL_LIVING_JASPER)->SetStackAmount(10);
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_living_crystalAI(creature);
    }
};

// Tiling Creature - 62026 - Using a random creature not used anywhere else
class mob_tiling_creature : public CreatureScript
{
public :
    mob_tiling_creature() : CreatureScript("mob_tiling_creature") { }

    struct mob_tiling_creatureAI : public ScriptedAI
    {
        mob_tiling_creatureAI(Creature* creature) : ScriptedAI(creature)
        {
            pInstance = creature->GetInstanceScript();
        }

        InstanceScript* pInstance;
        bool activated;

        void Reset()
        {
            me->SetDisplayId(INVISIBLE_DISPLAYID);
            events.Reset();
            activated = false;
            events.ScheduleEvent(EVENT_TILING, 100);
        }

        void DoAction(const int32 action)
        {
            switch (action)
            {
                case ACTION_TILING:
                {
                    if (Creature* controller = me->GetMap()->GetCreature(pInstance->GetData64(NPC_STONE_GUARD_CONTROLLER)))
                        controller->CastSpell(me, SPELL_TILES_DISPLAYED, false);

                    // me->CastSpell(me, SPELL_TILES_DISPLAYED, false);

                    std::list<Player*> playerList;
                    GetPlayerListInGrid(playerList, me, 5000.0f);

                    for (auto player : playerList)
                    {
                        auto const buff = player->GetAura(SPELL_TILES_AURA_EFFECT);
                        if (buff)
                            buff->SetStackAmount(buff->GetStackAmount() + 1);
                        else
                            me->AddAura(SPELL_TILES_AURA_EFFECT, player);
                    }

                    activated = true;
                    break;
                }
            }
        }

        void UpdateAI(const uint32 diff)
        {
            events.Update(diff);

            switch (events.ExecuteEvent())
            {
                case EVENT_TILING:
                {
                    std::list<Player*> playerList;
                    GetPlayerListInGrid(playerList, me, 0.1f);

                    for (auto player : playerList)
                    {
                        if (playerList.empty())
                            break;

                        auto const amethyst = player->GetAura(SPELL_LIVING_AMETHYST);
                        auto const cobalt   = player->GetAura(SPELL_LIVING_COBALT);
                        auto const jade     = player->GetAura(SPELL_LIVING_JADE);
                        auto const jasper   = player->GetAura(SPELL_LIVING_JASPER);

                        if (amethyst || cobalt || jade || jasper)
                        {
                            DoAction(ACTION_TILING);
                            if (amethyst)
                            {
                                amethyst->SetStackAmount(amethyst->GetStackAmount() - 1);
                                if (!amethyst->GetStackAmount())
                                    amethyst->Remove();
                            }
                            else if (cobalt)
                            {
                                cobalt->SetStackAmount(cobalt->GetStackAmount() - 1);
                                if (!cobalt->GetStackAmount())
                                    cobalt->Remove();
                            }
                            else if (jade)
                            {
                                jade->SetStackAmount(jade->GetStackAmount() - 1);
                                if (!jade->GetStackAmount())
                                    jade->Remove();
                            }
                            else if (jasper)
                            {
                                jasper->SetStackAmount(jasper->GetStackAmount() - 1);
                                if (!jasper->GetStackAmount())
                                    jasper->Remove();
                            }
                            break;
                        }
                    }

                    if (!activated)
                        events.ScheduleEvent(EVENT_TILING, 100);

                    break;
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_tiling_creatureAI(creature);
    }
};

// Petrification - 115852 / 116006 / 116036 / 116057
class spell_petrification : public SpellScriptLoader
{
public:
    spell_petrification() : SpellScriptLoader("spell_petrification") { }

    class spell_petrification_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_petrification_AuraScript);

        void HandleTriggerSpell(AuraEffect const * /*aurEff*/)
        {
            PreventDefaultAction();

            Unit* caster = GetCaster();

            if (!caster)
                return;

            std::list<Player*> playerList;
            GetPlayerListInGrid(playerList, caster, 200.0f);

            for (auto target: playerList)
            {
                if (target->HasAura(SPELL_TOTALY_PETRIFIED))
                    continue;

                uint32 triggeredSpell = GetSpellInfo()->Effects[0].TriggerSpell;

                if (!target->HasAura(triggeredSpell))
                    caster->AddAura(triggeredSpell, target);

                if (auto const triggeredAura = target->GetAura(triggeredSpell))
                {
                    uint8 stackCount = triggeredAura->GetStackAmount();

                    uint8 newStackCount = (stackCount + 5 > 100) ? 100 : (stackCount + 5);
                    triggeredAura->SetStackAmount(newStackCount);
                    triggeredAura->RefreshDuration();
                    triggeredAura->RecalculateAmountOfEffects();

                    target->SetPower(POWER_ALTERNATE_POWER, newStackCount);

                    if (newStackCount >= 100)
                        caster->AddAura(SPELL_TOTALY_PETRIFIED, target);
                }
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_petrification_AuraScript::HandleTriggerSpell, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_petrification_AuraScript();
    }
};

// Jasper Chains - 130395
class spell_jasper_chains : public SpellScriptLoader
{
public:
    spell_jasper_chains() : SpellScriptLoader("spell_jasper_chains") { }

    class spell_jasper_chains_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_jasper_chains_AuraScript);
        uint64 playerLinkedGuid;

        bool Load()
        {
            playerLinkedGuid = 0;
            return true;
        }

        void SetGuid(uint32 /*type*/, uint64 guid)
        {
            playerLinkedGuid = guid;
        }

        void HandlePeriodic(AuraEffect const * /*aurEff*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetTarget();
            const SpellInfo* spell = GetSpellInfo();
            Player* linkedPlayer = sObjectAccessor->GetPlayer(*target, playerLinkedGuid);

            if (!caster || !target || !spell || !linkedPlayer || !linkedPlayer->IsAlive() || !linkedPlayer->HasAura(spell->Id))
                if (auto const myaura = GetAura())
                {
                    myaura->Remove();
                    return;
                }

                if (target->GetDistance(linkedPlayer) > spell->Effects[EFFECT_0].BasePoints)
                {
                    if (auto const aura = target->GetAura(spell->Id))
                    {
                        if (aura->GetStackAmount() >= 15)
                        {
                            aura->Remove();
                            return;
                        }
                    }

                    caster->AddAura(spell->Id, target);
                    target->CastSpell(linkedPlayer, SPELL_JASPER_CHAINS_DAMAGE, true);
                }
                else
                    target->CastSpell(linkedPlayer, SPELL_JASPER_CHAINS_VISUAL, true);
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_jasper_chains_AuraScript::HandlePeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_jasper_chains_AuraScript();
    }
};

// Jasper Chains (damage) - 130404
class spell_jasper_chains_damage : public SpellScriptLoader
{
public:
    spell_jasper_chains_damage() : SpellScriptLoader("spell_jasper_chains_damage") { }

    class spell_jasper_chains_damage_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_jasper_chains_damage_SpellScript);

        void DealDamage()
        {
            if (Unit* target = GetHitUnit())
            {
                if (auto const aura = target->GetAura(SPELL_JASPER_CHAINS))
                {
                    uint8 stacks = aura->GetStackAmount();
                    int32 damage = GetHitDamage();

                    if (damage && stacks)
                        SetHitDamage(damage * stacks);
                }
            }
        }

        void Register()
        {
            OnHit += SpellHitFn(spell_jasper_chains_damage_SpellScript::DealDamage);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_jasper_chains_damage_SpellScript();
    }
};

void AddSC_boss_stone_guard()
{
    new boss_stone_guard_controller();
    new boss_generic_guardian();
    new mob_cobalt_mine();
    new mob_living_crystal();
    new mob_tiling_creature();
    new spell_petrification();
    new spell_jasper_chains();
    new spell_jasper_chains_damage();
}
