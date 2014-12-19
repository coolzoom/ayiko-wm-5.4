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

static const Position bridgePos[] = 
{
    {1888.998f, 5177.15f, 143.3173f, 0.0f},
    {1808.063f, 5251.847f, 142.6636f, 0.0f}
};

class boss_wing_leader_neronok : public CreatureScript
{
    enum Yells
    {

        SAY_LIFT_OFF,
        EMOTE_LIFT_OFF,
        SAY_AGGRO,
    };

    enum Spells
    {
        SPELL_HURL_BRICK        = 121762,
        SPELL_CAUSTIC_PITCH     = 121443,
        SPELL_QUICK_DRY_RESIN   = 121447,
        SPELL_GUSTING_WINDS     = 121282
    };

    enum Events
    {
        EVENT_HAUL_BRICK        = 1,
        EVENT_CAUSTIC_PITCH,
        EVENT_QUICK_DRY_RESIN,
        EVENT_SWITCH_PHASE,
        EVENT_GUSTING_WINDS,
        EVENT_FLY_OTHER_END,
        EVENT_LAND,
        EVENT_RE_ENGAGE,
    };

    enum 
    {
        EVENT_GROUP_MOVEMENT        = 1,
        EVENT_GROUP_COMBAT          = 2
    };

    struct boss_wing_leader_neronokAI : public BossAI
    {
        boss_wing_leader_neronokAI(Creature * creature) : BossAI(creature, BOSS_NERONOK) {}

        void Reset() override
        {
            side = false;
            phase = 0;
            SetCombatMovement(false);
            events.Reset();
            me->SetCanFly(false);
            me->SetReactState(REACT_AGGRESSIVE);
        }

        void AttackStart(Unit* target)
        {
            if (!target)
                return;

            if (me->Attack(target, true))
                DoStartNoMovement(target);
        }

        void DamageTaken(Unit* , uint32& damage)
        {
            if (phase < 2)
            {
                uint8 threshold = phase ? 40 : 70;
                if (me->HealthBelowPctDamaged(threshold, damage))
                {
                    side = !side;
                    me->SetReactState(REACT_PASSIVE);
                    me->AttackStop();
                    me->SetTarget(0);
                    me->SetCanFly(true);
                    me->GetMotionMaster()->MoveTakeoff(0, bridgePos[phase++]);
                    events.CancelEventGroup(EVENT_GROUP_COMBAT);
                    events.CancelEventGroup(EVENT_GROUP_MOVEMENT);
                    events.ScheduleEvent(EVENT_FLY_OTHER_END, me->GetSplineDuration() + 500, EVENT_GROUP_MOVEMENT);
                }
            }
        }

        void EnterCombat(Unit* ) override
        {
            events.ScheduleEvent(EVENT_HAUL_BRICK, 1000);
            events.ScheduleEvent(EVENT_CAUSTIC_PITCH, 3000);
            events.ScheduleEvent(EVENT_QUICK_DRY_RESIN, 8000);
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
                    case EVENT_HAUL_BRICK:
                        if (Unit * victim = me->GetVictim())
                            if (!victim->IsWithinMeleeRange(me))
                                DoCast(victim, SPELL_HURL_BRICK, false);
                        events.ScheduleEvent(EVENT_HAUL_BRICK, 2000, EVENT_GROUP_COMBAT);
                        break;
                    case EVENT_CAUSTIC_PITCH:
                        if (Unit * target = SelectTarget(SELECT_TARGET_RANDOM))
                        {
                            me->CastSpell(target, SPELL_CAUSTIC_PITCH, true);
                        }
                        //DoCast(SELECT_TARGET_RANDOM, SPELL_CAUSTIC_PITCH, false);
                        events.ScheduleEvent(EVENT_CAUSTIC_PITCH, 5000, EVENT_GROUP_COMBAT);
                        break;
                    case EVENT_QUICK_DRY_RESIN:
                        DoCast(SELECT_TARGET_RANDOM, SPELL_QUICK_DRY_RESIN, false);
                        events.ScheduleEvent(EVENT_QUICK_DRY_RESIN, 8000, EVENT_GROUP_COMBAT);
                        break;
                    case EVENT_GUSTING_WINDS:
                        DoCast(me, SPELL_GUSTING_WINDS, false);
                        events.ScheduleEvent(EVENT_GUSTING_WINDS, 10000, EVENT_GROUP_COMBAT);
                        break;
                    case EVENT_FLY_OTHER_END:
                        me->GetMotionMaster()->MoveTakeoff(0, bridgePos[side]);
                        events.ScheduleEvent(EVENT_LAND, me->GetSplineDuration() + 500, EVENT_GROUP_MOVEMENT);
                        break;
                    case EVENT_LAND:
                    {
                        Position pos;
                        pos.Relocate(me);
                        pos.m_positionZ = me->GetBaseMap()->GetHeight(me->GetPhaseMask(), pos.GetPositionX(), pos.GetPositionY(), pos.GetPositionZ(), true);
                        me->GetMotionMaster()->MoveLand(0, pos);
                        events.ScheduleEvent(EVENT_RE_ENGAGE, me->GetSplineDuration() + 500, EVENT_GROUP_MOVEMENT);
                    }
                        break;
                    case EVENT_RE_ENGAGE:
                        me->SetReactState(REACT_AGGRESSIVE);
                        if (Unit * victim = me->GetVictim())
                        {
                            AttackStart(victim);
                            me->SetTarget(victim->GetGUID());
                        }
                        events.ScheduleEvent(EVENT_HAUL_BRICK, 1000);
                        events.ScheduleEvent(EVENT_CAUSTIC_PITCH, 3000);
                        events.ScheduleEvent(EVENT_QUICK_DRY_RESIN, 8000);
                        events.ScheduleEvent(EVENT_GUSTING_WINDS, 2000);
                        break;

                    default:
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
    private:
        uint8 phase;
        bool side;
    };
public:
    boss_wing_leader_neronok() : CreatureScript("boss_wing_leader_neronok") {}

    CreatureAI * GetAI(Creature * creature) const override
    {
        return new boss_wing_leader_neronokAI(creature);
    }
};

// Quick-Dry Resin - 121447
class spell_quick_dry_resin : public SpellScriptLoader
{
    enum
    {
        SPELL_ENCASED_IN_RESIN      = 121448,
        SPELL_SCREEN_EFFECT         = 122063,
    };

    class script_impl : public AuraScript
    {
        PrepareAuraScript(script_impl)

        void PeriodicTick(AuraEffect const * aurEff)
        {
            Unit * target = GetUnitOwner();

            // real value unknown
            int32 powerAmt = target->GetPower(POWER_ALTERNATE_POWER) + 2;

            if (powerAmt >= 100)
            {
                target->RemoveAurasDueToSpell(aurEff->GetId());
                target->RemoveAurasDueToSpell(SPELL_SCREEN_EFFECT);
                target->CastSpell(target, SPELL_ENCASED_IN_RESIN, true);
                return;
            }
            else if (powerAmt >= 80)
            {
                if (!target->HasAura(SPELL_SCREEN_EFFECT))
                    target->CastSpell(target, SPELL_SCREEN_EFFECT, true);
            } else if (target->HasAura(SPELL_SCREEN_EFFECT))
                target->RemoveAurasDueToSpell(SPELL_SCREEN_EFFECT);

            target->SetPower(POWER_ALTERNATE_POWER, powerAmt);
        }

        void OnProc(AuraEffect const * aurEff, ProcEventInfo& eventInfo)
        {
            if (Unit * owner = GetUnitOwner())
                owner->ModifyPower(POWER_ALTERNATE_POWER, -10);
        }

        void Register()
        {
            OnEffectProc += AuraEffectProcFn(script_impl::OnProc, EFFECT_1, SPELL_AURA_ENABLE_ALT_POWER);
            OnEffectPeriodic += AuraEffectPeriodicFn(script_impl::PeriodicTick, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
        }
    };

public:
    spell_quick_dry_resin() : SpellScriptLoader("spell_quick_dry_resin") {}

    AuraScript * GetAuraScript() const
    {
        return new script_impl;
    }
};

void AddSC_wing_leader_neronok()
{
    new boss_wing_leader_neronok();
    new spell_quick_dry_resin();
}