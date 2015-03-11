#include "throne_of_thunder.h"
#include "ObjectVisitors.hpp"
#include "GridNotifiers.h"

enum eSpells : uint32
{
    SPELL_CONDUCTIVE_WATER_SUMMON           = 137145,
    SPELL_CONDUCTIVE_WATERFALL              = 137340,
    SPELL_CONDUCTIVE_WATER_VISUAL           = 137277,
    SPELL_CONDUCTIVE_WATER_DUMMY            = 137168,
    SPELL_CONDUCTIVE_WATER_GROW             = 137694,
    SPELL_ELECTRIFY_WATERS                  = 138568,
    SPELL_ELECTRIFIED_WATER_VISUAL          = 137978,

    SPELL_LIGHTNING_FISSURE_SUMMON          = 137479,
    SPELL_LIGHTNING_FISSURE_VISUAL          = 137480,
    SPELL_LIGHTNING_FISSURE_CONDUCTION      = 138133,
    SPELL_LIGHTNING_FISSURE_AURA            = 140031,

    SPELL_FOCUSED_LIGHTNING                 = 137399,
    SPELL_FOCUSED_LIGHTNING_VISUAL          = 137425,
    SPELL_FOCUSED_LIGHTNING_FIXATE          = 137422,
    SPELL_FOCUSED_LIGHTNING_SPEED           = 137389,
    SPELL_FOCUSED_LIGHTNING_AOE             = 137429,
    SPELL_FOCUSED_LIGHTNING_DETONATION      = 137374,
    SPELL_VIOLENT_LIGHTNING_DETONATION      = 138990,
    SPELL_FOCUSED_LIGHTNING_DAMAGE          = 137423,
    SPELL_FOCUSED_LIGHTNING_TARGET          = 137194,
    SPELL_FOCUSED_LIGHTNING_CONDUCTION      = 137530,

    SPELL_IMPLOSION                         = 137507,

    SPELL_CONDUCTIVE_WATER_GROW_AURA        = 137694,
    SPELL_ELECTRIFIED_WATERS                = 138006,
    SPELL_FLUIDITY                          = 138002,

    SPELL_STATIC_BURST                      = 137162,
    SPELL_STATIC_WOUND                      = 138349,
    SPELL_STATIC_WOUND_DAMAGE               = 138389,

    SPELL_LIGHTNING_STORM                   = 137313,
    SPELL_LIGHTNING_STORM_VISUAL            = 138568,

        // Thundering Throw
    SPELL_THUNDERING_THROW                  = 137180, // Need SpellScript to handle ScriptEffect
    SPELL_THUNDERING_THROW_JUMP             = 137173, // Casted by player on a statue
    SPELL_THUNDERING_THROW_SILENCE          = 137161, // Silence, visuals
    SPELL_THUNDERING_THROW_FLY_VISUAL       = 140594, // Visual in flight
    SPELL_THUNDERING_THROW_HIT_DAMAGE       = 137370, // Damage on hit statue
    SPELL_THUNDERING_THROW_HIT_AOE_DAMAGE   = 137167, // AOE Damage on hit statue
    SPELL_THUNDERING_THROW_STUN             = 137371, // Stun after aoe damage on hit statue
    SPELL_THUNDERING_THROW_IMPACT_VISUAL    = 140606, // Visual of the impact on ground
};

enum eCreatures : uint32
{
    NPC_LIGHTNING_FISSURE               = 69609,
    NPC_CONDUCTIVE_WATER                = 69469,
};

enum iActions : int32
{
    ACTION_NONE,
    ACTION_DESTROYED,
    ACTION_RESET,
    ACTION_ELECTRIFY
};

enum eJDatas : uint32
{
    DATA_STATUE_DESTROYED,
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

class validStatuePredicate
{
public:
    bool operator() (WorldObject* target) const
    {
        if (target->ToCreature() && target->ToCreature()->AI())
            TC_LOG_ERROR("scripts", "notinlospredicate returned %u", target->ToCreature()->AI()->GetData(DATA_STATUE_DESTROYED));
        return target && target->ToPlayer() || ((target->ToCreature()->AI() && target->ToCreature()->AI()->GetData(DATA_STATUE_DESTROYED) == 1) || target->GetEntry() != NPC_JINROKH_STATUE);
    }
};

class electrifiedPredicate
{
public:
    bool operator()(Creature* target) const
    {
        return target && target->HasAura(SPELL_ELECTRIFIED_WATER_VISUAL);
    }
};

static const Position aWaterPos[4] = 
{
    { 5864.490f, 6290.628f, 124.03f, 5.51f },
    { 5917.633f, 6289.476f, 124.03f, 3.93f },
    { 5918.487f, 6236.848f, 124.03f, 2.36f },
    { 5865.241f, 6236.743f, 128.03f, 0.77f }
};

static const Position aCenterPos = { 5892.16f, 6263.58f, 124.1f, 0.0f };

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
        EVENT_BERSERK
    };

    struct boss_jinrokhAI : public BossAI
    {
        boss_jinrokhAI(Creature* pCreature) : BossAI(pCreature, DATA_JINROKH)
        {
        }

        uint32 m_uiPushTimer;

        void Reset()
        {
            _Reset();

            events.Reset();
            ResetStatues();
        }

        void EnterCombat(Unit* pWho)
        {
            events.ScheduleEvent(EVENT_STATIC_BURST, urand(18000, 24000));
            events.ScheduleEvent(EVENT_FOCUSED_LIGHTNING, 10000);
            events.ScheduleEvent(EVENT_THUNDERING_THROW, 30000);
            events.ScheduleEvent(EVENT_LIGHTNING_STORM, 90000); // 1,5 minutes
            events.ScheduleEvent(EVENT_BERSERK, 6 * MINUTE*IN_MILLISECONDS + 5000);
        }

        void DoCastBossSpell(Unit* target, uint32 spellId, bool trig, uint32 push = 0)
        {
            DoCast(target, spellId, trig);

            if (push)
                m_uiPushTimer = push;
        }

        void ResetStatues()
        {
            std::list<Creature*> pStatues;
            GetCreatureListWithEntryInGrid(pStatues, me, NPC_JINROKH_STATUE, 200.f);

            for (auto const pCreature : pStatues)
            {
                if (pCreature->AI())
                    pCreature->AI()->DoAction(ACTION_RESET);
            }
        }

        void DoHandleLightningStorm()
        {
            std::list<Creature*>pWaters;
            GetCreatureListWithEntryInGrid(pWaters, me, NPC_CONDUCTIVE_WATER, 200.f);

            pWaters.remove_if(electrifiedPredicate());

            for (Creature* pWater : pWaters)
            {
                if (pWater->AI())
                    pWater->AI()->DoAction(ACTION_ELECTRIFY);
            }
        }

        void MovementInform(uint32 uiType, uint32 uiPointId)
        {
            if (uiPointId == 1948)
            {
                DoCastBossSpell(me->GetVictim(), SPELL_LIGHTNING_STORM, false, 3000);
            }
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            events.Update(uiDiff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_STATIC_BURST:
                    DoCastBossSpell(me->GetVictim(), SPELL_STATIC_BURST, false, 1000);
                    events.ScheduleEvent(EVENT_STATIC_BURST, urand(12000, 16000));
                    break;
                case EVENT_FOCUSED_LIGHTNING:
                    DoCastBossSpell(me->GetVictim(), SPELL_FOCUSED_LIGHTNING, false, 2000);
                    events.ScheduleEvent(EVENT_FOCUSED_LIGHTNING, urand(12000, 15000));
                    break;
                case EVENT_LIGHTNING_STORM:
                    DoHandleLightningStorm();
                    me->GetMotionMaster()->MoveJump(aCenterPos, 20.f, 20.f, 1948);
                    events.ScheduleEvent(EVENT_LIGHTNING_STORM, 90000);
                    events.ScheduleEvent(EVENT_THUNDERING_THROW, 30000);
                    break;
                case EVENT_THUNDERING_THROW:
                    DoCast(me->GetVictim(), SPELL_THUNDERING_THROW);
                    break;
                case EVENT_BERSERK:
                    DoCast(me, SPELL_BERSERK, true);
                    break;
                }
            }

            DoMeleeAttackIfReady();
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

                if (targets.size() > 1)
                {
                    if (WorldObject* target = Trinity::Containers::SelectRandomContainerElement(targets))
                    {
                        targets.emplace(targets.begin(), target);
                        targets.resize(1);
                    }
                }
            }
        }

        void HandleHit()
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();

            if (!caster || !target)
                return;

            caster->CastSpell(target, SPELL_FOCUSED_LIGHTNING_FIXATE, true);
            caster->GetMotionMaster()->MoveFollow(target, 0.0f, 0.0f);
        }

        void Register()
        {
            OnHit += SpellHitFn(spell_focused_lightning_targeting_SpellScript::HandleHit);
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

        bool Load()
        {
            m_timer = 3000;
            return true;
        }

        uint32 m_timer;

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

        void HandleOnUpdate(const uint32 uiDiff)
        {
            if (m_timer <= uiDiff)
            {
                m_timer = 3000;
                SetStackAmount(GetStackAmount() - 1);
            }
            else
                m_timer -= uiDiff;
        }

        void Register()
        {
            OnEffectProc += AuraEffectProcFn(spell_static_wound_AuraScript::HandleOnProc, EFFECT_0, SPELL_AURA_DUMMY);
            OnAuraUpdate += AuraUpdateFn(spell_static_wound_AuraScript::HandleOnUpdate);
            //OnEffectApply += AuraEffectApplyFn(spell_static_wound_AuraScript::HandleOnApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            //OnEffectApply += AuraEffectApplyFn(spell_static_wound_AuraScript::HandleOnReApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAPPLY);
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
                if (Aura* pAura = pUnit->GetAura(SPELL_STATIC_WOUND))
                {
                    pAura->ModStackAmount(pAura->GetStackAmount() + 10 < 30 ? (pAura->GetStackAmount() + 10) : 30);
                }
                else if (Aura* pAura = pUnit->AddAura(SPELL_STATIC_WOUND, pUnit))
                    pAura->SetStackAmount(10);
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

class spell_thundering_throw_silence : public SpellScriptLoader
{
public:
    spell_thundering_throw_silence() : SpellScriptLoader("spell_thundering_throw_silence") {}

    class spell_impl : public SpellScript
    {
        PrepareSpellScript(spell_impl);

        void SelectTargets(std::list<WorldObject*>&targets)
        {
            TC_LOG_ERROR("scripts", "Size is %u", targets.size());
            targets.remove_if(validStatuePredicate());
            TC_LOG_ERROR("scripts", "Size is %u", targets.size());

            if (targets.size() > 1)
            {
                //if (WorldObject* target = Trinity::Containers::SelectRandomContainerElement(targets))
                {
                    //targets.emplace(targets.begin(), target);
                    targets.resize(1);
                }
            }
        }

        void HandleOnEffectHit(SpellEffIndex effIdx)
        {
            Unit* caster = GetCaster();
            Creature* target = GetHitCreature();

            if (!caster || !target)
                return;

            caster->CastSpell(target, SPELL_THUNDERING_THROW_JUMP, true);

            if (target->AI())
                target->AI()->DoAction(ACTION_DESTROYED);
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_impl::HandleOnEffectHit, EFFECT_4, SPELL_EFFECT_DUMMY);
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_impl::SelectTargets, EFFECT_4, TARGET_UNIT_SRC_AREA_ENTRY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_impl();
    }
};

class spell_thundering_throw : public SpellScriptLoader
{
public:
    spell_thundering_throw() : SpellScriptLoader("spell_thundering_throw") {}

    class spell_impl : public SpellScript
    {
        PrepareSpellScript(spell_impl);

        void HandleOnHit()
        {
            if (Unit* pUnit = GetHitUnit())
                pUnit->CastSpell(pUnit, SPELL_THUNDERING_THROW_SILENCE);
        }
        
        void Register()
        {
            OnHit += SpellHitFn(spell_impl::HandleOnHit);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_impl();
    }
};

static uint32 max_casts = 66;

class npc_jinrokh_statue : public CreatureScript
{
    enum eEvents
    {
        EVENT_NONE,
        EVENT_WATER_BEAM,
        EVENT_SPAWN_WATER,
        EVENT_TOSS_PLAYER,
        EVENT_STUN_PLAYER
    };

public:
    npc_jinrokh_statue() : CreatureScript("npc_jinrokh_statue") {}

    struct npc_jinrokh_statueAI : public ScriptedAI
    {
        npc_jinrokh_statueAI(Creature* pCreature) : ScriptedAI(pCreature) 
        { 
            statueData = 0; 
            playerGuid = 0;
        }

        uint32 statueData;
        uint64 playerGuid;

        void SetData(uint32 uiType, uint32 uiData) override
        {
            if (uiType == DATA_STATUE_DESTROYED)
                statueData = uiData;
        }

        uint32 GetData(uint32 uiType) override
        {
            if (uiType == DATA_STATUE_DESTROYED)
                return statueData;

            return 0;
        }

        void DoAction(const int32 iAction) override
        {
            if (iAction == ACTION_DESTROYED)
            {
                TC_LOG_ERROR("scripts", "Called");
                events.ScheduleEvent(EVENT_TOSS_PLAYER, 2000);
                events.ScheduleEvent(EVENT_WATER_BEAM, 4000);
                events.ScheduleEvent(EVENT_SPAWN_WATER, 7000);
                SetData(DATA_STATUE_DESTROYED, 1);

                TC_LOG_ERROR("scripts", "Called %u", GetData(DATA_STATUE_DESTROYED));
            }

            if (iAction == ACTION_RESET)
            {
                me->RemoveAllAuras();
                events.Reset();
                SetData(DATA_STATUE_DESTROYED, 0);

                if (Creature* pWaters = GetClosestCreatureWithEntry(me, NPC_CONDUCTIVE_WATER, 100.f))
                    pWaters->DespawnOrUnsummon();
            }
        }

        Position DoSpawnWater()
        {
            uint8 dist = 0;
            float i_range = 1000.f;

            for (uint8 i = 0; i < 4; ++i)
            {
                float new_dist = me->GetDistance(aWaterPos[i]);

                if (new_dist < i_range)
                {
                    dist = i;
                    i_range = new_dist;
                }
            }

            return aWaterPos[dist];
        }

        void DoTossPlayer()
        {
            std::list<Player*> players;
            GetPlayerListInGrid(players, me, 5.f);

            if (!players.empty())
            {
                if (players.size() > 1)
                {
                    players.sort(Trinity::ObjectDistanceOrderPred(me));
                    players.resize(1);
                }

                std::list<Player*>::const_iterator itr = players.begin();
                if (Player* pPlayer = *itr)
                {
                    playerGuid = pPlayer->GetGUID();
                    pPlayer->CastSpell(DoSpawnWater(), SPELL_THUNDERING_THROW_JUMP, true);
                    pPlayer->CastSpell(pPlayer, SPELL_THUNDERING_THROW_HIT_DAMAGE, true);
                    events.ScheduleEvent(EVENT_STUN_PLAYER, 2100);
                }
            }
        }

        void UpdateAI(const uint32 uiDiff) override
        {
            events.Update(uiDiff);

            switch (events.ExecuteEvent())
            {
            case EVENT_WATER_BEAM:
                me->AddAura(SPELL_CONDUCTIVE_WATERFALL, me);
                break;
            case EVENT_SPAWN_WATER:
                if (Creature* pWater = me->SummonCreature(NPC_CONDUCTIVE_WATER, DoSpawnWater()))
                {
                    if (pWater->AI())
                        pWater->AI()->DoAction(ACTION_RESET);
                }
                break;
            case EVENT_TOSS_PLAYER:
                DoTossPlayer();
                break;
            case EVENT_STUN_PLAYER:
                if (playerGuid)
                {
                    if (Player* pPlayer = ObjectAccessor::GetPlayer(*me, playerGuid))
                    {
                        pPlayer->CastSpell(pPlayer, SPELL_THUNDERING_THROW_HIT_AOE_DAMAGE, true);
                        pPlayer->CastSpell(pPlayer, SPELL_THUNDERING_THROW_STUN, true);
                        pPlayer->RemoveAurasDueToSpell(SPELL_THUNDERING_THROW_SILENCE);
                    }
                }
                break;
            }
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_jinrokh_statueAI(pCreature);
    }
};

class npc_conductive_water : public CreatureScript
{
    enum eEvents
    {
        EVENT_NONE,
        EVENT_GROW,
        EVENT_ELECTRIFY,
        EVENT_FINALIZE_ELECTRIFY
    };

public:
    npc_conductive_water() : CreatureScript("npc_conductive_water") {}

    struct npc_conductive_waterAI : public ScriptedAI
    {
        npc_conductive_waterAI(Creature* pCreature) : ScriptedAI(pCreature) {}

        uint32 m_size;

        void DoAction(const int32 iAction) override
        {
            if (iAction == ACTION_RESET)
            {
                m_size = 0;
                me->AddAura(SPELL_CONDUCTIVE_WATER_VISUAL, me);
                events.ScheduleEvent(EVENT_GROW, 500);
            }

            if (iAction == ACTION_ELECTRIFY)
            {
                events.ScheduleEvent(EVENT_ELECTRIFY, 5000);
            }
        }

        void UpdateAI(const uint32 uiDiff) override
        {
            events.Update(uiDiff);

            switch (events.ExecuteEvent())
            {
            case EVENT_GROW:
                events.ScheduleEvent(EVENT_GROW, 500);
                if (m_size < max_casts)
                {
                    DoCast(me, SPELL_CONDUCTIVE_WATER_GROW, true);
                    ++m_size;
                }
                DoCast(me, SPELL_CONDUCTIVE_WATER_DUMMY, true);
                break;
            case EVENT_ELECTRIFY:
                events.ScheduleEvent(EVENT_FINALIZE_ELECTRIFY, 1500);
                DoCast(me, SPELL_ELECTRIFY_WATERS, true);
                break;
            case EVENT_FINALIZE_ELECTRIFY:
                DoCast(me, SPELL_ELECTRIFIED_WATER_VISUAL, true);
                break;
            }
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_conductive_waterAI(pCreature);
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
    new spell_thundering_throw_silence();
    new spell_thundering_throw();
    new npc_jinrokh_statue();
    new npc_conductive_water();
}
