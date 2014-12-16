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

enum
{
    ACTION_BULWARK_BREAKS       = 10,
    NPC_REINFORCEMENTS_STALKER  = 61483,
    NPC_BLADE_RUSH_STALKER      = 63720
};

static const Position reinforcements[4] = 
{
    {1741.793f, 5338.747f, 136.2742f, 4.686225f },
    {1727.012f, 5342.524f, 138.5872f, 4.686225f },
    {1733.038f, 5332.926f, 136.088f, 4.686225f },
    {1750.8f, 5332.092f, 134.8477f, 4.686225f}
};

class boss_general_pavalak : public CreatureScript
{
    enum Yells
    {

    };

    enum Spells
    {
        SPELL_BULWARK           = 119476,
        SPELL_BLADE_RUSH_SUMMON = 124277, // summons 63720
        SPELL_BLADE_RUSH_EFF    = 124283, // condition targets 63720
        SPELL_BLADE_RUSH_DUMMY  = 124291,
        SPELL_BLADE_RUSH_CHARGE = 124312,
        SPELL_TEMPEST           = 119875
    };

    enum Events
    {
        EVENT_BLADE_RUSH        = 1,
        EVENT_REINFORCEMENTS,
        EVENT_BOMBARDMENT,
        EVENT_TEMPEST,
        EVENT_BLADE_RUSH_END,
    };

    struct boss_general_pavalakAI : public BossAI
    {
        boss_general_pavalakAI(Creature * creature) : BossAI(creature, BOSS_PAVALAK) {}

        void Reset() override
        {
            phase = 0;
            me->SetReactState(REACT_AGGRESSIVE);
            _Reset();
        }

        void EnterCombat(Unit* ) override
        {
            events.ScheduleEvent(EVENT_BLADE_RUSH, 10000);
            events.ScheduleEvent(EVENT_TEMPEST, 15000);
            _EnterCombat();
        }

        void DoAction(int32 const action) override
        {
            if (action == ACTION_BULWARK_BREAKS)
            {
                events.ScheduleEvent(EVENT_BLADE_RUSH, 10000);
                events.ScheduleEvent(EVENT_TEMPEST, 15000);
                summons.DespawnEntry(NPC_REINFORCEMENTS_STALKER);
                me->SetReactState(REACT_AGGRESSIVE);

            }
        }

        //void SpellHit(Unit* caster, SpellInfo const* spell) override
        //{
        //    if (spell->Id == SPELL_BLADE_RUSH_DUMMY)
        //        DoCast(caster, SPELL_BLADE_RUSH_CHARGE, false);
        //}

        void SpellHitTarget(Unit* target, SpellInfo const* spell) override
        {
            if (spell->Id == SPELL_BLADE_RUSH_DUMMY)
                DoCast(target, SPELL_BLADE_RUSH_CHARGE, false);

        }

        void DamageTaken(Unit*, uint32& damage) override
        {
            if (phase < 2)
            {
                // Use bulwark at 65 and 35 %
                uint32 healthChk = phase ? 35 : 65;
                

                if (me->HealthBelowPctDamaged(healthChk, damage))
                {
                    damage = 0;
                    me->SetHealth(me->CountPctFromMaxHealth(healthChk));

                    ++phase;
                    me->InterruptNonMeleeSpells(true);
                    events.Reset();
                    me->SetReactState(REACT_PASSIVE);
                    DoCast(me, SPELL_BULWARK, false);

                    // Reinforcement waves
                    for (auto itr : reinforcements)
                        me->SummonCreature(NPC_REINFORCEMENTS_STALKER, itr);
                }
            }
        }

        void MovementInform(uint32 type, uint32 id) override
        {
            if (type == EFFECT_MOTION_TYPE && id == EVENT_CHARGE)
                events..RescheduleEvent(EVENT_BLADE_RUSH_END, 200);
        }

        void JustSummoned(Creature* summon) override
        {
            if (summon->GetEntry() == NPC_BLADE_RUSH_STALKER)
            {
                me->AddThreat(summon, 100000.0f);
                me->SetTarget(summon->GetGUID());
                DoCast(me, SPELL_BLADE_RUSH_EFF, false);
            }

            BossAI::JustSummoned(summon);
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
                    case EVENT_BLADE_RUSH:
                        me->SetReactState(REACT_PASSIVE);
                        me->GetMotionMaster()->Clear();
                        me->GetMotionMaster()->MoveIdle();
                        DoCast(me, SPELL_BLADE_RUSH_SUMMON, true);
                        events.ScheduleEvent(EVENT_BLADE_RUSH, 20000);
                        events.ScheduleEvent(EVENT_BLADE_RUSH_END, 5000);
                        break;
                    case EVENT_BLADE_RUSH_END:
                        me->SetReactState(REACT_AGGRESSIVE);
                        if (Unit * victim = me->GetVictim())
                            AttackStart(victim);
                        break;
                    case EVENT_REINFORCEMENTS:
                        break;
                    case EVENT_BOMBARDMENT:
                        break;
                    case EVENT_TEMPEST:
                        DoCast(me, SPELL_TEMPEST, false);
                        events.ScheduleEvent(EVENT_TEMPEST, 40000);
                        break;
                    default:
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        uint8 phase;
    };
public:
    boss_general_pavalak() : CreatureScript("boss_general_pavalak") {}

    CreatureAI * GetAI(Creature * creature) const override
    {
        return new boss_general_pavalakAI(creature);
    }
};

// Bulwark - 119476
class spell_general_pavalak_bulwark : public SpellScriptLoader
{

    class aura_impl : public AuraScript
    {
        PrepareAuraScript(aura_impl);

        void OnRemove(AuraEffect const * /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if (Unit* target = GetTarget())
                if (Creature * creatureTarget = target->ToCreature())
                    creatureTarget->AI()->DoAction(ACTION_BULWARK_BREAKS);
        }

        void Register()
        {
            OnEffectRemove += AuraEffectRemoveFn(aura_impl::OnRemove, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB, AURA_EFFECT_HANDLE_REAL);
        }
    };

public:
    spell_general_pavalak_bulwark() : SpellScriptLoader("spell_general_pavalak_bulwark") {}

    AuraScript* GetAuraScript() const
    {
        return new aura_impl();
    }
};

// Siege Explosive -- 61452
class npc_pavalak_siege_explosive : public CreatureScript
{
    enum
    {
        SPELL_SIEGE_EXPLOSIVE_PARENT = 119388,
        // 40:07
        SPELL_ARMING_VISUAL_YELLOW  = 88315, // 00:01 40:08
        SPELL_ARMING_VISUAL_ORANGE  = 88316, // 00:02 40:10
        SPELL_ARMING_VISUAL_RED     = 88317, // 00:03 40:11
        SPELL_BOMB_ARMED            = 119702,// 00:05 40:12
        SPELL_DETONATE              = 119703,// 00:09 40:16

        EVENT_ARMING_YELLOW = 1,
        EVENT_ARMING_ORANGE,
        EVENT_ARMING_RED,
        EVENT_ARMED,
        EVENT_DETONATE,
    };

    struct npc_pavalak_siege_explosiveAI : public ScriptedAI
    {
        npc_pavalak_siege_explosiveAI(Creature * creature) : ScriptedAI(creature)
        {
        }

        void Reset() override
        {
            me->SetReactState(REACT_PASSIVE);
        }

        void IsSummonedBy(Unit*) override
        {
            events.ScheduleEvent(EVENT_ARMING_YELLOW, 1000);
        }

        void OnSpellClick(Unit* clicker, bool &) override
        {
            //clicker->RemoveAurasDueToSpell(SPELL_SIEGE_EXPLOSIVE_PARENT);
            me->DisappearAndDie();
        }

        void UpdateAI(uint32 const diff) override
        {
            events.Update(diff);

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_ARMING_YELLOW:
                        DoCast(me, SPELL_ARMING_VISUAL_YELLOW, true);
                        events.ScheduleEvent(EVENT_ARMING_ORANGE, 1000);
                        break;
                    case EVENT_ARMING_ORANGE:
                        DoCast(me, SPELL_ARMING_VISUAL_ORANGE, true);
                        events.ScheduleEvent(EVENT_ARMING_RED, 1000);
                        break;
                    case EVENT_ARMING_RED:
                        DoCast(me, SPELL_ARMING_VISUAL_RED, true);
                        events.ScheduleEvent(EVENT_ARMED, 2000);
                        break;
                    case EVENT_ARMED:
                        me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);
                        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                        events.ScheduleEvent(EVENT_DETONATE, 4000);
                        break;
                    case EVENT_DETONATE:
                        DoCast(me, SPELL_DETONATE, true);
                        me->DespawnOrUnsummon(500);
                        break;
                    default:
                        break;
                }
            }
        }

    private:
    };

public:
    npc_pavalak_siege_explosive() : CreatureScript("npc_pavalak_siege_explosive") {}

    CreatureAI * GetAI(Creature * creature) const override
    {
        return new npc_pavalak_siege_explosiveAI(creature);
    }
};

// Sik'Thik Amber-Sapper - 61484
class npc_pavalak_amber_sapper : public CreatureScript
{
    enum
    {
        SPELL_CARRYING_EXPLOSIVES       = 119698,
        SPELL_SIEGE_EXPLOSIVE_MISSILE   = 119376,
        POINT_TARGET                    = 10,
        POINT_RETURN
    };

    struct npc_pavalak_amber_sapperAI : public ScriptedAI
    {
        npc_pavalak_amber_sapperAI(Creature * creature) : ScriptedAI(creature)
        {
        }

        void Reset() override
        {
            me->SetReactState(REACT_PASSIVE);
        }

        void IsSummonedBy(Unit* summoner) override
        {
            DoCast(me, SPELL_CARRYING_EXPLOSIVES, true);
            Position pos;
            summoner->GetRandomNearPosition(pos, 40.0f);
            pos.m_positionZ = 143.65f;

            me->GetMotionMaster()->MovePoint(POINT_TARGET, pos);
        }

        void MovementInform(uint32 type, uint32 id) override
        {
            if (type == POINT_MOTION_TYPE && id == POINT_TARGET)
            {
                DoCast(me, SPELL_SIEGE_EXPLOSIVE_MISSILE, false);
                me->RemoveAurasDueToSpell(SPELL_CARRYING_EXPLOSIVES);
                moveTimer = 2000;
            }
        }

        void UpdateAI(uint32 const diff) override
        {
            if (!moveTimer)
                return;

            if (moveTimer <= diff)
            {
                me->GetMotionMaster()->MoveTargetedHome();
                me->DespawnOrUnsummon(5000);
                moveTimer = 0;
            } else moveTimer -= diff;
        }

    private:
        uint32 moveTimer;
    };

public:
    npc_pavalak_amber_sapper() : CreatureScript("npc_pavalak_amber_sapper") {}

    CreatureAI * GetAI(Creature * creature) const override
    {
        return new npc_pavalak_amber_sapperAI(creature);
    }
};


static const Position sapperPos = { 1837.330f, 5235.642f, 176.60643f, 2.62f };
// bombardment - 119512
class spell_pavalak_bombardment : public SpellScriptLoader
{
    enum
    {
        NPC_AMBER_SAPPER            = 61484
    };
    class aura_impl : public AuraScript
    {
        PrepareAuraScript(aura_impl);

        void HandlePeriodic(AuraEffect const * /*aurEff*/)
        {
            if (Unit * target = GetTarget())
            {
                Position pos = sapperPos;
                float dist = frand(20.0f, 50.0f);
                float angle = (float)rand_norm() * static_cast<float>(2 * M_PI);
                pos.m_positionX += dist * std::cos(angle);
                pos.m_positionY += dist * std::sin(angle);

                target->SummonCreature(NPC_AMBER_SAPPER, pos);
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(aura_impl::HandlePeriodic, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
        }
    };

public:
    spell_pavalak_bombardment() : SpellScriptLoader("spell_pavalak_bombardment") {}

    AuraScript* GetAuraScript() const
    {
        return new aura_impl();
    }
};

// Reinforcements Summoner - 61483
// Summon Proxy - > Trigger JustSummoner in boss script
class npc_pavalak_reinforcements_summoner : public CreatureScript
{
    struct npc_pavalak_reinforcements_summonerAI : public ScriptedAI
    {
        npc_pavalak_reinforcements_summonerAI(Creature * creature) : ScriptedAI(creature)
        {
            summonerGUID = 0;
        }

        void IsSummonedBy(Unit* summoner) override
        {
            summonerGUID = summoner->GetGUID();
        }

        void JustSummoned(Creature* summon) override
        {
            if (Creature * pavalak = Creature::GetCreature(*me, summonerGUID))
                pavalak->AI()->JustSummoned(summon);
        }

    private:
        uint64 summonerGUID;
    };

public:
    npc_pavalak_reinforcements_summoner() : CreatureScript("npc_pavalak_reinforcements_summoner") {}

    CreatureAI * GetAI(Creature * creature) const override
    {
        return new npc_pavalak_reinforcements_summonerAI(creature);
    }
};

void AddSC_general_pavalak()
{
    new boss_general_pavalak();
    new spell_general_pavalak_bulwark();
    new npc_pavalak_siege_explosive();
    new npc_pavalak_amber_sapper();
    new spell_pavalak_bombardment();
    new npc_pavalak_reinforcements_summoner();
}