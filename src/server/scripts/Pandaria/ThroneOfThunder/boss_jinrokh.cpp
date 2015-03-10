#include "throne_of_thunder.h"
#include "ObjectVisitors.hpp"
#include "GridNotifiers.h"

enum eSpells : uint32
{
    SPELL_CONDUCTIVE_WATER_SUMMON       = 137145,
    SPELL_CONDUCTIVE_WATERFALL          = 137340,
    SPELL_CONDUCTIVE_WATER_VISUAL       = 137277,
    SPELL_ELECTRIFIED_WATER_VISUAL      = 137978,

    SPELL_LIGHTNING_FISSURE_SUMMON      = 137479,
    SPELL_LIGHTNING_FISSURE_VISUAL      = 137480,
    SPELL_LIGHTNING_FISSURE_CONDUCTION  = 138133,
    SPELL_LIGHTNING_FISSURE_AURA        = 140031,

    SPELL_FOCUSED_LIGHTNING             = 137399,
    SPELL_FOCUSED_LIGHTNING_VISUAL      = 137425,
    SPELL_FOCUSED_LIGHTNING_FIXATE      = 137422,
    SPELL_FOCUSED_LIGHTNING_SPEED       = 137389,
    SPELL_FOCUSED_LIGHTNING_AOE         = 137429,
    SPELL_FOCUSED_LIGHTNING_DETONATION  = 137374,
    SPELL_VIOLENT_LIGHTNING_DETONATION  = 138990,
    SPELL_FOCUSED_LIGHTNING_DAMAGE      = 137423,
    SPELL_FOCUSED_LIGHTNING_TARGET      = 137194,
    SPELL_FOCUSED_LIGHTNING_CONDUCTION  = 137530,

    SPELL_IMPLOSION                     = 137507,

    SPELL_CONDUCTIVE_WATER_GROW_AURA    = 137694,
    SPELL_ELECTRIFIED_WATERS            = 138006,
    SPELL_FLUIDITY                      = 138002,

    SPELL_STATIC_BURST                  = 137162,
    SPELL_STATIC_WOUND                  = 138349,
    SPELL_STATIC_WOUND_DAMAGE           = 138389,

    SPELL_LIGHTNING_STORM               = 137313,
    SPELL_LIGHTNING_STORM_VISUAL        = 138568,
};

enum eCreatures : uint32
{
    NPC_LIGHTNING_FISSURE               = 69609,
    NPC_CONDUCTIVE_WATER                = 69469,
};

class notPlayerPredicate
{
public:
    bool operator()(WorldObject* target) const
    {
        return target && target->GetTypeId() != TYPEID_PLAYER;
    }
};

class notInLosPredicate
{
public:
    notInLosPredicate(Unit* caster) : _caster(caster) {}
    bool operator()(WorldObject* target) const
    {
        return target && !target->IsWithinLOSInMap(_caster);
    }

private:
    Unit* _caster;
};

class boss_jinrokh : public CreatureScript
{
public:
    boss_jinrokh() : CreatureScript("boss_jinrokh") {}

    enum eEvents : uint32
    {
        EVENT_NONE,
        EVENT_STATIC_BURST,
        EVENT_FOCUSED_LIGHTNING,
        EVENT_THUNDERING_THROW,
        EVENT_LIGHTNING_STORM,
        EVENT_IONIZATION,
    };

    struct boss_jinrokhAI : public BossAI
    {
        boss_jinrokhAI(Creature* pCreature) : BossAI(pCreature, DATA_JINROKH)
        {
        }

        uint32 m_uiPushTimer;

        void EnterEvadeMode()
        {
            events.Reset();

            _EnterEvadeMode();
        }

        void EnterCombat(Unit* pWho)
        {
            events.ScheduleEvent(EVENT_STATIC_BURST, urand(18000, 24000));
            events.ScheduleEvent(EVENT_FOCUSED_LIGHTNING, 10000);
            events.ScheduleEvent(EVENT_THUNDERING_THROW, 30000);
            events.ScheduleEvent(EVENT_LIGHTNING_STORM, 90000); // 1,5 minutes
        }

        void DoCastBossSpell(Unit* target, uint32 spellId, bool trig, uint32 push = 0)
        {
            DoCast(target, spellId, trig);

            if (push)
                m_uiPushTimer = push;
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();

            if (m_uiPushTimer)
            {
                if (m_uiPushTimer <= uiDiff)
                    m_uiPushTimer = 0;
                else
                {
                    m_uiPushTimer -= uiDiff;
                    return;
                }
            }

            events.Update(uiDiff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_STATIC_BURST:
                    DoCastBossSpell(me->GetVictim(), SPELL_STATIC_BURST, true, 1000);
                    events.ScheduleEvent(EVENT_STATIC_BURST, urand(13000, 18000));
                    break;
                case EVENT_FOCUSED_LIGHTNING:
                    DoCastBossSpell(me->GetVictim(), SPELL_FOCUSED_LIGHTNING, false, 2000);
                    events.ScheduleEvent(EVENT_FOCUSED_LIGHTNING, urand(12000, 15000));
                    break;
                case EVENT_LIGHTNING_STORM:
                    DoCastBossSpell(me->GetVictim(), SPELL_LIGHTNING_STORM, false, 3000);
                    events.ScheduleEvent(EVENT_LIGHTNING_STORM, 90000);
                    break;
                }
            }
        }

    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_jinrokhAI(pCreature);
    }
};

class npc_focused_lightning : public CreatureScript
{
    enum eEvents : uint32
    {
        EVENT_NONE,
        EVENT_FISSURE_CHECK
    };

public:
    npc_focused_lightning() : CreatureScript("npc_focused_lightning") {}

    struct npc_focused_lightningAI : public ScriptedAI
    {
        npc_focused_lightningAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            Initialize();
        }

        void Initialize()
        {
            me->AddAura(SPELL_FOCUSED_LIGHTNING_VISUAL, me);
            me->AddAura(SPELL_FOCUSED_LIGHTNING_SPEED, me);

            DoCast(SPELL_FOCUSED_LIGHTNING_TARGET);
        }

        void UpdateAI(const uint32 uiDiff)
        {
        }

    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_focused_lightningAI(pCreature);
    }

};

class npc_lightning_fissure : public CreatureScript
{
public:
    npc_lightning_fissure() : CreatureScript("npc_lightning_fissure") {}

    struct npc_lightning_fissureAI : public ScriptedAI
    {
        npc_lightning_fissureAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            Initialize();
        }

        void Initialize()
        {
            me->AddAura(SPELL_LIGHTNING_FISSURE_VISUAL, me);
            me->AddAura(SPELL_LIGHTNING_FISSURE_AURA, me);
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_lightning_fissureAI(pCreature);
    }
};

class npc_conductive_water : public CreatureScript
{
    npc_conductive_water() : CreatureScript("npc_conductive_water") {}

    struct npc_conductive_waterAI : public ScriptedAI
    {
        npc_conductive_waterAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            Initialize();
        }
        
        void Initialize()
        {
            me->AddAura(SPELL_CONDUCTIVE_WATER_VISUAL, me);
            me->AddAura(SPELL_CONDUCTIVE_WATER_GROW_AURA, me);
        }

        void UpdateAI(const uint32 uiDiff)
        {
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_conductive_waterAI(pCreature);
    }
};

class spell_focused_lightning_targeting : public SpellScriptLoader
{
public:
    spell_focused_lightning_targeting() : SpellScriptLoader("spell_focused_lightning_targeting") {}

    class spell_focused_lightning_targeting_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_focused_lightning_targeting_SpellScript);

        bool Validate()
        {
            return true;
        }

        void SelectTargets(std::list<WorldObject*>&targets)
        {
            if (GetCaster())
            {

                targets.remove_if(notPlayerPredicate());
                targets.remove_if(notInLosPredicate(GetCaster()));

                if (!targets.empty())
                {
                    if (WorldObject* target = Trinity::Containers::SelectRandomContainerElement(targets))
                    {
                        GetCaster()->CastSpell(target->ToUnit(), SPELL_FOCUSED_LIGHTNING_FIXATE, true);
                        GetCaster()->GetMotionMaster()->MoveFollow(target->ToUnit(), 0.2f, 0.0f);
                    }
                }
            }
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_focused_lightning_targeting_SpellScript::SelectTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_focused_lightning_targeting_SpellScript();
    }
};

class spell_focused_lightning_aoe : public SpellScriptLoader
{
public:
    spell_focused_lightning_aoe() : SpellScriptLoader("spell_focused_lightning_aoe") {}

    class spell_focused_lightning_aoe_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_focused_lightning_aoe_SpellScript);

        bool Validate()
        {
            return true;
        }
        
        void SelectTargets(std::list<WorldObject*>&targets)
        {
            targets.remove_if(notPlayerPredicate());
        }

        void HandleEffectHitTarget(SpellEffIndex eff_idx)
        {
            if (Unit* pUnit = GetHitUnit())
            {
                if (Unit* pCaster = GetCaster())
                {
                    pCaster->CastSpell(pUnit, SPELL_FOCUSED_LIGHTNING_DAMAGE, true);
                }
            }
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_focused_lightning_aoe_SpellScript::SelectTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
            OnEffectHitTarget += SpellEffectFn(spell_focused_lightning_aoe_SpellScript::HandleEffectHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_focused_lightning_aoe_SpellScript();
    }
};

class spell_focused_lightning_speed : public SpellScriptLoader
{
public:
    spell_focused_lightning_speed() : SpellScriptLoader("spell_focused_lightning_speed") {}

    class spell_focused_lightning_speed_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_focused_lightning_speed_AuraScript);

        bool Validate()
        {
            return true;
        }

        void HandleOnPeriodic(AuraEffect const* aurEff)
        {
            if (WorldObject* pOwner = GetOwner())
            {
                if (pOwner->ToUnit())
                {
                    Unit* ok = nullptr;

                    Trinity::AnyUnitHavingBuffInObjectRangeCheck checker(pOwner, pOwner->ToUnit(), 3.f, SPELL_FOCUSED_LIGHTNING_FIXATE, false);

                    Trinity::UnitSearcher<Trinity::AnyUnitHavingBuffInObjectRangeCheck> searcher(pOwner, ok, checker);
                    Trinity::VisitNearbyWorldObject(pOwner, 3.f, searcher);

                    // todo move this implementation to aoe spellscript
                    if (ok)
                    {

                        if (ok->HasAura(SPELL_FLUIDITY))
                        {
                            ok->CastSpell(ok, SPELL_FOCUSED_LIGHTNING_CONDUCTION, true);
                            pOwner->ToUnit()->Kill(pOwner->ToUnit());
                            return;
                        }
                        else if (ok->HasAura(SPELL_ELECTRIFIED_WATERS))
                        {
                            ok->CastSpell(ok, SPELL_FOCUSED_LIGHTNING_CONDUCTION, true);
                            pOwner->ToUnit()->CastSpell(ok, SPELL_VIOLENT_LIGHTNING_DETONATION, true);
                            return;
                        }

                        pOwner->ToUnit()->CastSpell(ok, SPELL_LIGHTNING_FISSURE_SUMMON, true);
                        pOwner->ToUnit()->CastSpell(ok, SPELL_FOCUSED_LIGHTNING_DETONATION, true);
                        return;
                    }

                    Trinity::AnyUnitHavingBuffInObjectRangeCheck fissure_checker(pOwner, pOwner->ToUnit(), 5.f, SPELL_LIGHTNING_FISSURE_VISUAL, true);

                    Trinity::UnitSearcher<Trinity::AnyUnitHavingBuffInObjectRangeCheck> fissure_searcher(pOwner, ok, fissure_checker);
                    Trinity::VisitNearbyWorldObject(pOwner, 5.f, fissure_searcher);

                    if (ok)
                    {
                        pOwner->ToUnit()->CastSpell(ok, SPELL_IMPLOSION, true);

                        pOwner->ToUnit()->Kill(pOwner->ToUnit());
                        return;
                    }

                    pOwner->ToUnit()->CastSpell(pOwner->ToUnit(), SPELL_FOCUSED_LIGHTNING_AOE, true);
                }
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_focused_lightning_speed_AuraScript::HandleOnPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_focused_lightning_speed_AuraScript();
    }
};

class spell_focused_lightning_detonation : public SpellScriptLoader
{
public:
    spell_focused_lightning_detonation() : SpellScriptLoader("spell_focused_lightning_detonation") {}

    class spell_focused_lightning_detonation_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_focused_lightning_detonation_SpellScript);

        bool Validate()
        {
            return true;
        }

        void HandleAfterHit()
        {
            if (GetCaster())
                GetCaster()->Kill(GetCaster());
        }

        void Register()
        {
            AfterHit += SpellHitFn(spell_focused_lightning_detonation_SpellScript::HandleAfterHit);
        }

    };

    SpellScript* GetSpellScript() const
    {
        return new spell_focused_lightning_detonation_SpellScript();
    }
};

class spell_implosion : public SpellScriptLoader
{
public:
    spell_implosion() : SpellScriptLoader("spell_implosion") {}

    class spell_implosion_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_implosion_SpellScript)

        bool Validate()
        {
            return true;
        }

        void SelectTargets(std::list<WorldObject*>&targets)
        {
            targets.remove_if(notPlayerPredicate());
        }

        void HandleAfterHit()
        {
            if (GetCaster())
                GetCaster()->Kill(GetCaster());
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_implosion_SpellScript::SelectTargets, EFFECT_0, TARGET_UNIT_DEST_AREA_ENEMY);
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_implosion_SpellScript::SelectTargets, EFFECT_1, TARGET_UNIT_DEST_AREA_ENEMY);
            AfterHit += SpellHitFn(spell_implosion_SpellScript::HandleAfterHit);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_implosion_SpellScript();
    }
};

class spell_static_wound : public SpellScriptLoader
{
public:
    spell_static_wound() : SpellScriptLoader("spell_static_wound") {}

    class spell_static_wound_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_static_wound_AuraScript)
        
        bool Validate()
        {
            return true;
        }

        void HandleOnApply(AuraEffect const *aurEff, AuraEffectHandleModes mode)
        {
            if (Aura* pAura = GetAura())
                pAura->SetStackAmount(10);
        }

        void HandleOnReApply(AuraEffect const *aurEff, AuraEffectHandleModes mode)
        {
            if (Aura* pAura = GetAura())
                pAura->SetStackAmount(pAura->GetStackAmount() + 10 > 30 ? 30 : pAura->GetStackAmount() + 10);
        }

        void HandleOnProc(AuraEffect const* aurEff, ProcEventInfo& eventInfo)
        {
            uint32 m_stacks = GetAura()->GetStackAmount();

            if (const SpellInfo* pSpellInfo = sSpellMgr->GetSpellInfo(SPELL_STATIC_WOUND, GetOwner()->GetMap()->GetDifficulty()))
            {
                int32 m_bp = pSpellInfo->Effects[0].BasePoints;
                int32 final_dmg = (m_bp * m_stacks) / 3;

                if (Unit* pOwner = GetOwner()->ToUnit())
                {
                    pOwner->CastCustomSpell(pOwner, SPELL_STATIC_WOUND_DAMAGE, &final_dmg, 0, 0, true);
                }
            }
        }

        void Register()
        {
            OnEffectProc += AuraEffectProcFn(spell_static_wound_AuraScript::HandleOnProc, EFFECT_0, SPELL_AURA_DUMMY);
            OnEffectApply += AuraEffectApplyFn(spell_static_wound_AuraScript::HandleOnApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            OnEffectApply += AuraEffectApplyFn(spell_static_wound_AuraScript::HandleOnReApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAPPLY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_static_wound_AuraScript();
    }
};

class spell_static_wound_damage : public SpellScriptLoader
{
public:
    spell_static_wound_damage() : SpellScriptLoader("spell_static_wound_damage") {}

    class spell_static_wound_damage_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_static_wound_damage_SpellScript);

        bool Validate()
        {
            return true;
        }

        void HandleEffectHitTarget(SpellEffIndex eff_idx)
        {
            if (Unit* pCaster = GetCaster())
            {
                if (Unit* pHit = GetHitUnit())
                {
                    if (pCaster->GetGUID() == pHit->GetGUID())
                        SetHitDamage(GetHitDamage() * 3);
                }
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_static_wound_damage_SpellScript::HandleEffectHitTarget, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_static_wound_damage_SpellScript();
    }
};

class spell_static_burst : public SpellScriptLoader
{
public:
    spell_static_burst() : SpellScriptLoader("spell_static_burst") {}

    class spell_static_burst_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_static_burst_AuraScript);

        bool Validate()
        {
            return true;
        }

        void HandleOnPeriodic(AuraEffect const *aurEff)
        {
            if (Unit* pUnit = GetOwner()->ToUnit())
            {
                pUnit->CastSpell(pUnit, SPELL_STATIC_WOUND, true);
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_static_burst_AuraScript::HandleOnPeriodic, EFFECT_1, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_static_burst_AuraScript();
    }
};

class spell_lightning_storm_visual : public SpellScriptLoader
{
public:
    spell_lightning_storm_visual() : SpellScriptLoader("spell_lightning_storm_visual") {}

    class spell_lightning_storm_visual_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_lightning_storm_visual_AuraScript);

        bool Validate()
        {
            return true;
        }

        void OnAuraEffectApply(AuraEffect const *aurEff, AuraEffectHandleModes mode)
        {
            if (GetCaster())
            {
                if (GetCaster()->HasAura(SPELL_LIGHTNING_STORM))
                    SetDuration(15000);
            }
        }

        void Register()
        {
            OnEffectApply += AuraEffectApplyFn(spell_lightning_storm_visual_AuraScript::OnAuraEffectApply, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_lightning_storm_visual_AuraScript();
    }
};

void AddSC_boss_jinrokh()
{
    new boss_jinrokh();
    new npc_focused_lightning();
    new npc_lightning_fissure();
    new spell_focused_lightning_targeting();
    new spell_focused_lightning_aoe();
    new spell_focused_lightning_speed();
    new spell_focused_lightning_detonation();
    new spell_implosion();
    new spell_static_wound();
    new spell_static_wound_damage();
    new spell_static_burst();
    new spell_lightning_storm_visual();
}
