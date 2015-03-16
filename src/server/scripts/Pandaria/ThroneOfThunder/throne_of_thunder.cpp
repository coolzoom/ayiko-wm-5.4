#include "throne_of_thunder.h"

/* 3/14-2015 Emre */

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
            {
                //pSummoned->AddAura(SPELL_SPEAR_PULSE_AOE, pSummoned);
                m_triggerGuid = pSummoned->GetGUID();
            }
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
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    //if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 1))
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

void AddSC_throne_of_thunder()
{
    new npc_zandalari_spearshaper();
}