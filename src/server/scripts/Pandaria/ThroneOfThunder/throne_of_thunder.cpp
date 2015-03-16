#include "throne_of_thunder.h"

/* 3/14-2015 Emre */

enum sSpells : uint32
{
    SPELL_FOCUSED_LIGHTNING_TARGET      = 139203,
    SPELL_FOCUSED_LIGHTNING_AOE         = 139209,
    SPELL_FOCUSED_LIGHTNING             = 139206,
    SPELL_FOCUSED_LIGHTNING_DAMAGE      = 139210,
    SPELL_FOCUSED_LIGHTNING_DETONATION  = 139211
};

class npc_zandalari_spearshaper : public CreatureScript
{
    enum eSpells : uint32
    {
        // needs disarm
        // cmake, scriptloader
        SPELL_SPEAR_DISARM          = 137066,
        SPELL_SPEAR_PULSE_AOE       = 137058,
        SPELL_BERSERKING            = 137096,
        SPELL_THROW_SPEAR           = 136986,
        SPELL_RETRIEVE_SPEAR_JUMP   = 137070,
        SPELL_RETRIEVE_SPEAR_STUN   = 137072,
        SPELL_SPEAR_SPIN            = 137077
    };

    enum eEvents : uint32
    {
        EVENT_NONE,
        EVENT_ZERK,
        EVENT_SPEAR_THROW,
        EVENT_RETRIEVE_SPEAR,
        EVENT_RE_SPIN,
    };

    enum eCreatures : uint32
    {
        NPC_SPEAR                   = 69438
    };

public:
    npc_zandalari_spearshaper() : CreatureScript("npc_zandalari_spearshaper") {}

    struct ai_impl : public ScriptedAI
    {
        ai_impl(Creature* pCreature) : ScriptedAI(pCreature) {}

        void Reset() override
        {
            events.Reset();
            summons.DespawnAll();
            m_triggerGuid = 0;

            if (me->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE))
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
        }

        uint64 m_triggerGuid;

        void JustSummoned(Creature* pSummoned) override
        {
            summons.Summon(pSummoned);
            
            if (pSummoned->GetEntry() == NPC_SPEAR)
                m_triggerGuid = pSummoned->GetGUID();
        }

        void SummonedCreatureDespawn(Creature* pSummoned) override
        {
            summons.Despawn(pSummoned);
        }

        void EnterCombat(Unit* pWho) override
        {
            events.ScheduleEvent(EVENT_ZERK, 6000 + rand() % 5000);
            events.ScheduleEvent(EVENT_SPEAR_THROW, 10000 + rand() % 7000);
        }

        void JumpToSpear()
        {
            Position pos;

            if (Creature* pSpear = ObjectAccessor::GetCreature(*me, m_triggerGuid))
            {
                pSpear->GetPosition(&pos);
                me->GetMotionMaster()->Clear(false);
                me->GetMotionMaster()->MoveJump(pos, 10.f, 20.f, 1948);

            }
        }

        void MovementInform(uint32 uiType, uint32 uiPointId)
        {
            if (uiPointId == 1948)
            {
                DoCast(me, SPELL_RETRIEVE_SPEAR_STUN, true);

                if (Creature* pSpear = ObjectAccessor::GetCreature(*me, m_triggerGuid))
                    pSpear->DespawnOrUnsummon();

                me->RemoveAurasDueToSpell(SPELL_SPEAR_DISARM);

                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
                events.ScheduleEvent(EVENT_RE_SPIN, 800);
            }
        }

        void UpdateAI(const uint32 uiDiff) override
        {
            if (!UpdateVictim())
                return;

            events.Update(uiDiff);

            if (me->HasUnitState(UNIT_STATE_CASTING) || me->HasAura(SPELL_SPEAR_SPIN))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_ZERK:
                    DoCast(SPELL_BERSERKING);
                    events.ScheduleEvent(EVENT_ZERK, 8000 + rand() % 5000);
                    break;
                case EVENT_SPEAR_THROW:
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 1))
                        DoCast(pTarget, SPELL_THROW_SPEAR);
                    events.ScheduleEvent(EVENT_RETRIEVE_SPEAR, 5000);
                    events.ScheduleEvent(EVENT_SPEAR_THROW, 25000 + rand() % 8000);
                    break;
                case EVENT_RETRIEVE_SPEAR:
                    JumpToSpear();
                    break;
                case EVENT_RE_SPIN:
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
                    me->GetMotionMaster()->MoveChase(me->GetVictim());
                    DoCast(me, SPELL_SPEAR_SPIN, true);
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new ai_impl(pCreature);
    }
};

class npc_focused_lightning : public CreatureScript
{
    enum eEvents : uint32
    {
        EVENT_NONE,
        EVENT_PULSE,
        EVENT_FIXATE_CHECK
    };

public:
    npc_focused_lightning() : CreatureScript("npc_focused_lightning_trash") {}

    struct npc_focused_lightningAI : public ScriptedAI
    {
        npc_focused_lightningAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            Initialize();
        }

        uint64 m_targetGuid;
        EventMap m_mEvents;

        void SetGUID(uint64 guid, int32) override
        {
            m_targetGuid = guid;
        }

        uint64 GetGUID(int32) override
        {
            return m_targetGuid;
        }

        void Initialize()
        {
            m_mEvents.ScheduleEvent(EVENT_PULSE, 500);
            m_mEvents.ScheduleEvent(EVENT_FIXATE_CHECK, 1500);
            m_targetGuid = 0;
            me->AddAura(SPELL_FOCUSED_LIGHTNING_VISUAL, me);

            DoCast(SPELL_FOCUSED_LIGHTNING_TARGET);
        }

        void GetFixatedPlayerOrGetNewIfNeeded()
        {
            std::list<Player*> players;
            GetPlayerListInGrid(players, me, 200.f);

            if (players.empty())
            {
                TC_LOG_ERROR("scripts", "Focused Lightning guid %u found no players in instance %u, possible exploit", me->GetGUID(), me->GetMap()->GetInstanceId());
                return;
            }

            for (Player* pPlayer : players)
            {
                if (pPlayer->HasAura(SPELL_FOCUSED_LIGHTNING_FIXATE, me->GetGUID()))
                {
                    m_targetGuid = pPlayer->GetGUID();
                    return;
                }
            }

            if (Player* pPlayer = Trinity::Containers::SelectRandomContainerElement(players))
            {
                DoCast(pPlayer, SPELL_FOCUSED_LIGHTNING_FIXATE, true);
                m_targetGuid = pPlayer->GetGUID();
            }
        }

        void UpdateAI(const uint32 uiDiff) override
        {
            m_mEvents.Update(uiDiff);

            switch (m_mEvents.ExecuteEvent())
            {
            case EVENT_FIXATE_CHECK:
                if (Unit* pTarget = ObjectAccessor::GetPlayer(*me, m_targetGuid))
                {
                    me->GetMotionMaster()->MoveFollow(pTarget, 0.f, 0.f);
                }
                else
                {
                    GetFixatedPlayerOrGetNewIfNeeded();
                    me->GetMotionMaster()->MoveFollow(pTarget, 0.f, 0.f);
                }
                m_mEvents.ScheduleEvent(EVENT_FIXATE_CHECK, 500);
                break;
            case EVENT_PULSE:
                DoCast(me, SPELL_FOCUSED_LIGHTNING_AOE, true);
                m_mEvents.ScheduleEvent(EVENT_PULSE, 500);
                break;
            }
        }

    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_focused_lightningAI(pCreature);
    }
};

class spell_focused_lightning_aoe : public SpellScriptLoader
{
public:
    spell_focused_lightning_aoe() : SpellScriptLoader("spell_focused_lightning_aoe_trash") {}

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
            if (Unit* pCaster = GetCaster())
            {

                if (Unit* pUnit = GetHitUnit())
                {
                    if (pUnit->HasAura(SPELL_FOCUSED_LIGHTNING_FIXATE, pCaster->GetGUID()))
                    {
                        pCaster->CastSpell(pUnit, SPELL_FOCUSED_LIGHTNING_DETONATION, true);
                        pCaster->Kill(pCaster);
                        return;
                    }

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

void AddSC_throne_of_thunder()
{
    new npc_zandalari_spearshaper();
    new npc_focused_lightning();
    new spell_focused_lightning_aoe();
}