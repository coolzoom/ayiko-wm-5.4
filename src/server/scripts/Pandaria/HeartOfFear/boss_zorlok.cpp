#include "heart_of_fear.h"

enum gSpells : uint32
{
    SPELL_SONG_OF_THE_EMPRESS       = 123791,
    SPELL_CANCEL_SONG               = 123793,
    SPELL_FORCE_AND_VERVE           = 122713,
    SPELL_NOISE_CANCELLING          = 122706,
    SPELL_INHALE                    = 122852,
    SPELL_CONVERT                   = 122740,
    SPELL_EXHALE                    = 122761,
    SPELL_ATTENUATION               = 127834,

    SPELL_PHEROMONES_OF_ZEAL        = 123811,
    SPELL_PHEROMONES_AURA           = 123812,

    SPELL_INHALE_PHEROMONES         = 124018,
    SPELL_SONIC_PULSE_VISUAL        = 124668,

    SPELL_PLATFORM_SONG             = 132236,

};

static const Position aPlatforms[4] =
{
    { -2321.16f, 305.12f, 410.f, 5.5f },
    { -2232.13f, 214.7f, 410.f, 2.4f},
    { -2315.63f, 218.13f, 410.f, 0.8f},
    { -2274.8f, 259.187f, 406.5f, 4.f }
};

class boss_imperial_vizier_zorlok : public CreatureScript
{
public:
    boss_imperial_vizier_zorlok() : CreatureScript("boss_imperial_vizier_zorlok") {}

    enum eTalks : uint32
    {
        TALK_IDLE1,
        TALK_IDLE2,
        TALK_IDLE3,
        TALK_IDLE4,
        TALK_IDLE5,
        TALK_IDLE6,
        TALK_AGGRO,
        EMOTE_PLATFORM,
        TALK_INHALE,
        TALK_FAV,
        TALK_SLAY,
        TALK_POSSESS,
        EMOTE_POSSESS,
        TALK_EXHALE,
        EMOTE_P2,
        TALK_DEATH,
        TALK_ATTENUATION_PHASE,
        TALK_CONVERT_PHASE,
        TALK_P2,
    };

    enum eEvents : uint32
    {
        EVENT_NONE,
        EVENT_IDLE_YELL,
        EVENT_VISIBILITY_CHECK,
        EVENT_CHECK_PHEROMONES,
        EVENT_CHECK_HEALTH,
        EVENT_LIFTOFF,
        EVENT_MOVE_PLATFORM,
        EVENT_LAND,
        EVENT_FORCE_AND_VERVE,
        EVENT_ATTENUATION,
        EVENT_INHALE,
        EVENT_EXHALE,
        EVENT_POSSESS,
        EVENT_ORIENTATE,
    };

    enum eObjects : uint32
    {
        AT_PHEROMONES           = 363
    };

    enum ePlatforms : uint32
    {
        PLATFORM_VERVE          = 1,
        PLATFORM_ATTENUATION,
        PLATFORM_POSSESS,
        PLATFORM_MIDDLE
    };

    struct boss_imperial_vizier_zorlokAI : public BossAI
    {
        boss_imperial_vizier_zorlokAI(Creature* pCreature) : BossAI(pCreature, DATA_VIZIER)
        {
            pInstance = me->GetInstanceScript();
            Initialize();
        }

        // Out of combat
        EventMap m_mPassiveEvents;
        EventMap m_mPermEvents;
        std::vector<Unit*> mUnitVector;

        uint32 m_uiWhichTalk;
        uint32 m_uiPlatform;
        uint32 m_uiMultiplier;
        uint32 m_uiPushTimer;

        InstanceScript* pInstance;

        bool m_bIsActive;


        uint32 GetTalkTimer() const
        {
            switch (m_uiWhichTalk)
            {
            case TALK_IDLE1:
            case TALK_IDLE2:
            case TALK_IDLE3:
            case TALK_IDLE4:
                return 7000;
            case TALK_IDLE5:
                return 11000;
            case TALK_IDLE6:
                return 0;
            }
            return 0;
        }

        void Initialize()
        {
            SetCombatMovement(false);

            if (pInstance)
            {
                if (pInstance->GetData(DATA_VIZIER_INTRO) != DONE)
                    m_mPassiveEvents.ScheduleEvent(EVENT_IDLE_YELL, 10000);//30000);

                m_uiWhichTalk = TALK_IDLE1;

                me->SetCanFly(true);
            }

            m_mPermEvents.ScheduleEvent(EVENT_CHECK_PHEROMONES, 1000);
            
            float x, y, z;
            me->GetPosition(x, y, z);
            me->SetHomePosition(x, y, z, me->GetOrientation());
        }

        void Reset()
        {
            SetCombatMovement(false);
        }

        void ScheduleEventsForPlatform()
        {
            me->SetReactState(REACT_AGGRESSIVE);
            m_bIsActive = true;

            events.ScheduleEvent(EVENT_CHECK_HEALTH, 1000);
            events.ScheduleEvent(EVENT_INHALE, 10000);
            events.ScheduleEvent(EVENT_ORIENTATE, 500);
            
            switch (m_uiPlatform)
            {
            case PLATFORM_VERVE:
                events.ScheduleEvent(EVENT_FORCE_AND_VERVE, urand(18000, 23000));
                break;
            case PLATFORM_ATTENUATION:
                events.ScheduleEvent(EVENT_ATTENUATION, urand(18000, 23000));
                break;
            case PLATFORM_POSSESS:
                events.ScheduleEvent(EVENT_POSSESS, urand(18000, 23000));
                break;
            }

            if (m_uiPlatform == PLATFORM_MIDDLE)
            {
                events.ScheduleEvent(EVENT_ATTENUATION, urand(18000, 23000));
                events.ScheduleEvent(EVENT_FORCE_AND_VERVE, urand(24000, 30000));
                events.ScheduleEvent(EVENT_POSSESS, urand(36000, 42000));

                SetCombatMovement(true);

                if (me->GetVictim())
                    me->GetMotionMaster()->MoveChase(me->GetVictim());
            }
            else
                DoCast(SPELL_SONG_OF_THE_EMPRESS);
        }

        void DoCheckHealthLevels()
        {
            if (me->GetHealthPct() < (100.f - (20.0f * m_uiMultiplier)))
            {
                if (m_uiPlatform < PLATFORM_MIDDLE)
                    LiftOff();

                events.ScheduleEvent(EVENT_CHECK_HEALTH, 12000);
                return;
            }

            events.ScheduleEvent(EVENT_CHECK_HEALTH, 1000);
        }

        void EnterEvadeMode()
        {
            m_mPassiveEvents.ScheduleEvent(EVENT_VISIBILITY_CHECK, 5000);

            me->SetHover(false);
            me->SetByteValue(UNIT_FIELD_BYTES_1, 3, 0);
            me->SetReactState(REACT_AGGRESSIVE);

            me->AttackStop();
            me->RemoveAllAuras();
            me->SetVisible(false);
            me->CombatStop(true);
            me->DeleteThreatList();

            me->GetMotionMaster()->MoveTargetedHome();

            CleanupPheromones();
        }

        void KilledUnit(Unit* pWho)
        {
            Talk(TALK_SLAY);
        }

        void JustDied(Unit* pKiller)
        {
            Talk(TALK_DEATH);

            CleanupPheromones();

            pInstance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void CleanupPheromones()
        {
            me->RemoveAreaTrigger(SPELL_PHEROMONES_OF_ZEAL);

            Map::PlayerList const& lPlayers = me->GetMap()->GetPlayers();
            for (Map::PlayerList::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
            {
                if (Player* pPlayer = itr->GetSource())
                {
                    if (pPlayer->HasAura(SPELL_PHEROMONES_AURA))
                        pPlayer->RemoveAurasDueToSpell(SPELL_PHEROMONES_AURA);
                }
            }
        }

        void EnterCombat(Unit* pWho)
        {
            m_bIsActive = false;

            Talk(TALK_AGGRO);

            me->GetMotionMaster()->MoveIdle();

            m_uiPlatform = 0;
            m_uiMultiplier = 0;
            m_uiPushTimer = 0;

            me->SetReactState(REACT_PASSIVE);

            mUnitVector.clear();
            Map::PlayerList const& lPlayers = me->GetMap()->GetPlayers();
            for (Map::PlayerList::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
            {
                if (Player* pPlayer = itr->GetSource())
                    mUnitVector.push_back(pPlayer);
            }

            DoCast(SPELL_PHEROMONES_OF_ZEAL);

            LiftOff();
        }
        
        void LiftOff()
        {
            m_bIsActive = false;

            ++m_uiPlatform;

            events.Reset();

            me->SetByteValue(UNIT_FIELD_BYTES_1, 3, UNIT_BYTE1_FLAG_HOVER);

            float x, y;
            float angle = me->GetAngle(&aPlatforms[m_uiPlatform]);

            GetPositionWithDistInOrientation(me, 15.f, angle, x, y);

            me->SetHover(true);
            me->SetCanFly(true);
            me->SetReactState(REACT_PASSIVE);
            SetCombatMovement(false);
            me->GetMotionMaster()->MoveTakeoff(113, x, y, me->GetPositionZ() + 15.f);

            switch (m_uiPlatform)
            {
            case PLATFORM_ATTENUATION:
                Talk(TALK_ATTENUATION_PHASE);
                break;
            case PLATFORM_POSSESS:
                Talk(TALK_CONVERT_PHASE);
                break;
            case PLATFORM_MIDDLE:
                Talk(TALK_P2);
                break;
            }

            ++m_uiMultiplier;
        }

        void GoToNextPlatform()
        {
            if (m_uiPlatform == PLATFORM_MIDDLE)
            {
                me->GetMotionMaster()->MovePoint(110, aPlatforms[PLATFORM_MIDDLE - 1].GetPositionX(), aPlatforms[PLATFORM_MIDDLE - 1].GetPositionY(), aPlatforms[PLATFORM_MIDDLE - 1].GetPositionZ() + 22.f);
                return;
            }
            float x, y;
            float angle = me->GetAngle(&aPlatforms[m_uiPlatform - 1]);

            GetPositionWithDistInOrientation(me, me->GetDistance(aPlatforms[m_uiPlatform - 1]) - 10.f, angle, x, y);
            me->GetMotionMaster()->MovePoint(112, x, y, me->GetPositionZ());

            Talk(EMOTE_PLATFORM);
        }

        void Land()
        {
            me->getThreatManager().resetAllAggro();

            me->SetCanFly(false);
            me->SetHover(false);
            me->SetByteValue(UNIT_FIELD_BYTES_1, 3, 0);
            me->GetMotionMaster()->MoveLand(111, aPlatforms[m_uiPlatform-1]);
        }

        void MovementInform(uint32 uiType, uint32 uiPointId)
        {
            switch (uiPointId)
            {
            case 110: // middle point
                DoCast(SPELL_INHALE_PHEROMONES);
                Talk(EMOTE_P2);
                events.ScheduleEvent(EVENT_LAND, 500);
                break;
            case 111: // landed
                ScheduleEventsForPlatform();
                break;
            case 112: // landing
                events.ScheduleEvent(EVENT_LAND, 100);
                break;
            case 113: // takeoff
                events.ScheduleEvent(EVENT_MOVE_PLATFORM, 200);
                break;
            }
        }

        // REMINDER: Pheromones need to be cleared on destruction of player class
        void CleanPheromonesIfCan()
        {
            if (AreaTrigger* pAt = me->GetAreaTrigger(SPELL_PHEROMONES_OF_ZEAL))
            {
                for (auto const pUnit : mUnitVector)
                {
                    if (pUnit->GetPositionZ() > pAt->GetPositionZ() + 3 && pUnit->HasAura(SPELL_PHEROMONES_AURA))
                        pUnit->RemoveAurasDueToSpell(SPELL_PHEROMONES_AURA);
                }
            }

            events.ScheduleEvent(EVENT_CHECK_PHEROMONES, 1000);
        }

        void DoAttackOrSing()
        {
            if (me->isAttackReady() && !me->HasUnitState(UNIT_STATE_CASTING))
            {
                if (me->GetVictim())
                {
                    if (me->IsWithinMeleeRange(me->GetVictim()))
                    {
                        me->AttackerStateUpdate(me->GetVictim());
                        me->resetAttackTimer();
                    }
                    else
                    {
                        std::list<HostileReference*> ThreatList = me->getThreatManager().getThreatList();

                        for (auto tItr : ThreatList)
                        {
                            if (Unit* pUnit = ObjectAccessor::GetUnit(*me, (tItr->getUnitGuid())))
                            {
                                if (me->GetDistance(pUnit) < 5.f)
                                {
                                    if (me->Attack(pUnit, true))
                                    {
                                        me->GetMotionMaster()->Clear(false);
                                        me->GetMotionMaster()->MoveIdle();
                                        return;
                                    }
                                }
                            }
                        }

                        if (m_bIsActive && m_uiPlatform != PLATFORM_MIDDLE)
                            DoCast(SPELL_PLATFORM_SONG);
                    }
                }
            }
        }

        void PushRemainingEvents()
        {
            m_uiPushTimer = 3000;
        }

        void UpdateAI(const uint32 uiDiff)
        {
            m_mPermEvents.Update(uiDiff);

            while (uint32 PermEventId = m_mPermEvents.ExecuteEvent())
            {
                switch (PermEventId)
                {
                case 1:
                    break;
                }
            }

            if (!UpdateVictim())
            {
                // We don't want to break our evade loop
                if (!me->IsInEvadeMode())
                    m_mPassiveEvents.Update(uiDiff);

                while (uint32 oocEventId = m_mPassiveEvents.ExecuteEvent())
                {
                    switch (oocEventId)
                    {
                    case EVENT_IDLE_YELL:
                        Talk(m_uiWhichTalk);
                        if (m_uiWhichTalk < TALK_IDLE6)
                        {
                            m_mPassiveEvents.ScheduleEvent(EVENT_IDLE_YELL, GetTalkTimer());
                            ++m_uiWhichTalk;
                        }
                        break;
                    case EVENT_VISIBILITY_CHECK:
                        if (!me->IsVisible())
                            me->SetVisible(true);
                        m_mPassiveEvents.ScheduleEvent(EVENT_VISIBILITY_CHECK, 10000);
                        break;
                    }
                }

                return;
            }

            // In combat
            if (me->HasUnitState(UNIT_STATE_CASTING) || me->GetCurrentSpell(CURRENT_CHANNELED_SPELL))
                return;

            if (!IsCombatMovementAllowed())
                DoAttackOrSing();
            else
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
                case EVENT_MOVE_PLATFORM:
                    GoToNextPlatform();
                    break;
                case EVENT_LIFTOFF:
                    LiftOff();
                    break;
                case EVENT_LAND:
                    Land();
                    break;
                case EVENT_CHECK_HEALTH:
                    DoCheckHealthLevels();
                    break;
                case EVENT_INHALE:
                    DoCast(SPELL_INHALE);
                    Talk(TALK_INHALE);
                    events.ScheduleEvent(EVENT_INHALE, urand(18000, 23000));
                    PushRemainingEvents();
                    break;
                case EVENT_ATTENUATION:
                    DoCast(SPELL_ATTENUATION);
                    events.ScheduleEvent(EVENT_ATTENUATION, urand(38000, 46000));
                    PushRemainingEvents();
                    break;
                case EVENT_EXHALE:
                    PushRemainingEvents();
                    events.ScheduleEvent(EVENT_EXHALE, urand(24000, 30000));
                    break;
                case EVENT_POSSESS:
                    Talk(TALK_POSSESS);
                    PushRemainingEvents();
                    events.ScheduleEvent(EVENT_POSSESS, urand(51000, 62000));
                    break;
                case EVENT_FORCE_AND_VERVE:
                    PushRemainingEvents();
                    events.ScheduleEvent(EVENT_FORCE_AND_VERVE, urand(38000, 46000));
                    Talk(TALK_FAV);
                    DoCast(SPELL_FORCE_AND_VERVE);
                    break;
                }
            }
        }

    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_imperial_vizier_zorlokAI(pCreature);
    }
};

class AreaTrigger_at_pheromones : public AreaTriggerScript
{
public:
    AreaTrigger_at_pheromones() : AreaTriggerScript("at_pheromones") {}

    bool OnTrigger(Player* pPlayer, AreaTriggerEntry const* pTrigger)
    {
        if (!pPlayer->HasAura(SPELL_PHEROMONES_AURA))
        {
            pPlayer->AddAura(SPELL_PHEROMONES_AURA, pPlayer);
        }

        return false;
    }
};

class spell_attenuation : public SpellScriptLoader
{
    enum : uint32
    {
        CREATURE_SONIC_RING         = 62687,
        SPELL_SONIC_RING_VISUAL     = 122334
    };

public:
    spell_attenuation() : SpellScriptLoader("spell_attenuation") {}

    class spell_attenuation_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_attenuation_AuraScript);

        float aO[4];
        float x, y, z;
        uint32 mAuraTicks;

        bool Load()
        {
            if (Unit* pCaster = GetCaster())
            {
                pCaster->GetPosition(x, y, z, aO[1]);
                aO[0] = aO[1] - ((float)M_PI / 2);
                aO[2] = aO[1] + ((float)M_PI / 2);
                aO[3] = aO[1] + ((float)M_PI);

                mAuraTicks = 0;
                return true;
            }
            return false;
        }

        void HandleEffectPeriodic(AuraEffect const* aurEff)
        {
            if (Unit* pCaster = GetCaster())
            {
                for (uint8 i = 0; i < 4; ++i)
                {
                    float orientation_matrix = aO[i] + mAuraTicks*((float)M_PI / 8);
                    float spawnX = x + 0.5f *cos(orientation_matrix);
                    float spawnY = y + 0.5f *sin(orientation_matrix);
                    if (Creature* pRing = pCaster->SummonCreature(CREATURE_SONIC_RING, spawnX, spawnY, z, orientation_matrix, TEMPSUMMON_TIMED_DESPAWN, 30000))
                    {
                        float ringO = pRing->GetOrientation();

                        pRing->SetVisible(false);
                        pRing->AddAura(SPELL_SONIC_RING_VISUAL, pRing);
                        pRing->SetSpeed(MOVE_RUN, pRing->GetPositionZ() < 408.f ? 0.8f : 0.64f, true);
                        pRing->SetDisplayId(11686);
                        pRing->SetVisible(true);
                        pRing->GetMotionMaster()->MovePoint(0, spawnX + 100 * cos(ringO), spawnY + 100 * sin(ringO), z);
                    }
                }
            }

            ++mAuraTicks;
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_attenuation_AuraScript::HandleEffectPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_attenuation_AuraScript();
    }
};

class spell_song_of_the_empress : public SpellScriptLoader
{
    enum : uint32
    {
        SPELL_SONG_REMOVER      = 123793
    };

public:
    spell_song_of_the_empress() : SpellScriptLoader("spell_song_of_the_empress") {}

    class spell_song_of_the_empress_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_song_of_the_empress_AuraScript);

        void HandleOnRemove(AuraEffect const* aurEff, AuraEffectHandleModes mode)
        {
            Unit* pCaster = GetCaster();

            if (pCaster)
            {
                if (pCaster->HasAura(SPELL_SONG_REMOVER))
                    pCaster->RemoveAurasDueToSpell(SPELL_SONG_REMOVER);
            }
        }

        void HandleOnApply(AuraEffect const* aurEff, AuraEffectHandleModes mode)
        {
            Unit* pCaster = GetCaster();

            if (pCaster)
            {
                if (!pCaster->HasAura(SPELL_SONG_REMOVER))
                    pCaster->AddAura(SPELL_SONG_REMOVER, pCaster);
            }
        }

        void Register()
        {
            OnEffectApply += AuraEffectApplyFn(spell_song_of_the_empress_AuraScript::HandleOnApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            OnEffectRemove += AuraEffectRemoveFn(spell_song_of_the_empress_AuraScript::HandleOnRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    class spell_song_of_the_empress_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_song_of_the_empress_SpellScript);

        void OnBeforeCast()
        {
            Unit* pCaster = GetCaster();

            if (pCaster)
            {
                if (!pCaster->HasAura(SPELL_SONG_REMOVER))
                    pCaster->AddAura(SPELL_SONG_REMOVER, pCaster);
            }
        }

        void Register()
        {
            BeforeCast += SpellCastFn(spell_song_of_the_empress_SpellScript::OnBeforeCast);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_song_of_the_empress_AuraScript();
    }
    
    SpellScript* GetSpellScript() const
    {
        return new spell_song_of_the_empress_SpellScript();
    }
};

class spell_song_stopper : public SpellScriptLoader
{
public:
    spell_song_stopper() : SpellScriptLoader("spell_song_stopper") {}

    class spell_song_stopper_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_song_stopper_AuraScript);

        void HandleProc(ProcEventInfo& eventInfo)
        {
            Unit* pCaster = GetCaster();

            if (pCaster)
            {
                if (pCaster->HasUnitState(UNIT_STATE_CASTING))
                {
                    if (Spell* pSpell = pCaster->GetCurrentSpell(CURRENT_CHANNELED_SPELL))
                    {
                        if (pSpell->GetSpellInfo()->Id == SPELL_SONG_OF_THE_EMPRESS || pSpell->GetSpellInfo()->Id == SPELL_PLATFORM_SONG)
                            pCaster->InterruptSpell(CURRENT_CHANNELED_SPELL);
                    }
                    else if (pCaster->HasAura(SPELL_SONG_OF_THE_EMPRESS) || pCaster->HasAura(SPELL_PLATFORM_SONG))
                        pCaster->InterruptNonMeleeSpells(true);
                }
            }
        }

        void Register()
        {
            OnProc += AuraProcFn(spell_song_stopper_AuraScript::HandleProc);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_song_stopper_AuraScript();
    }
};

class notPlayerPredicate
{
public:
    bool operator()(WorldObject* target) const
    {
        return target && !target->ToPlayer();
    }
};

class GUIDPredicate
{
private:
    uint64 guid;
public:
    GUIDPredicate(uint64 uiGuid) : guid(uiGuid) {}

    bool operator()(WorldObject* target) const
    {
        return target && target->GetGUID() != guid;
    }
};

class spell_exhale : public SpellScriptLoader
{
public:
    spell_exhale() : SpellScriptLoader("spell_exhale") {}

    class spell_exhale_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_exhale_SpellScript);

        uint64 mainTargetGuid;

        void SelectTargets(std::list<WorldObject*>&targets)
        {
            targets.remove_if(notPlayerPredicate());

            std::list<WorldObject*>::iterator itr = targets.begin();
            std::advance(itr, urand(0, targets.size() - 1));

            if (itr != targets.end())
            {
                if (*itr)
                {
                    mainTargetGuid = (*itr)->GetGUID();
                }
            }

            targets.remove_if(GUIDPredicate(mainTargetGuid));
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_exhale_SpellScript::SelectTargets, EFFECT_0, SPELL_EFFECT_APPLY_AURA);
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_exhale_SpellScript::SelectTargets, EFFECT_2, SPELL_EFFECT_APPLY_AURA);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_exhale_SpellScript();
    }

    class spell_exhale_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_exhale_AuraScript);

        void HandlePeriodic(AuraEffect const* aurEff)
        {
            Unit* pCaster = GetCaster();
            Unit* pOwner = GetOwner()->ToUnit();

            if (pCaster == pOwner)
                return;

            std::list<Player*> potential_targets;
            std::list<WorldObject*> tempList;

            if (pOwner && pCaster)
            {
                GetPlayerListInGrid(potential_targets, pCaster, 60.f);

                for (auto const pObject : potential_targets)
                {
                    if (pObject->IsInBetween(pCaster, pOwner, 1.2f))
                        tempList.push_back(pObject);
                }

                if (!tempList.empty())
                {
                    tempList.sort(Trinity::ObjectDistanceOrderPred(pCaster));

                    std::list<WorldObject*>::iterator itr = tempList.begin();

                    if (Unit* pNewTarget = (*itr)->ToUnit())
                    {
                        const int32 bp0 = sSpellMgr->GetSpellInfo(122760, pCaster->GetMap()->GetDifficulty())->Effects[0].BasePoints / 2;
                        PreventDefaultAction();
                        pCaster->CastCustomSpell(pNewTarget, 122760, &bp0, 0, 0, true);
                    }
                }
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_exhale_AuraScript::HandlePeriodic, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_exhale_AuraScript();
    }
};

class spell_exhale_damage : public SpellScriptLoader
{
public:
    spell_exhale_damage() : SpellScriptLoader("spell_exhale_damage") {}

    class spell_exhale_damage_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_exhale_damage_SpellScript);

        void HandleOnHit()
        {
            if (Unit* pCaster = GetCaster())
            {
                if (pCaster->HasAura(SPELL_EXHALE))
                {
                    uint32 m_auraStacks = GetCaster()->GetAura(SPELL_EXHALE)->GetStackAmount();

                    if (m_auraStacks > 2)
                        SetHitDamage(GetHitDamage() + (GetHitDamage() * (m_auraStacks * 0.5f)));
                }
            }
        }

        void Register()
        {
            OnHit += SpellHitFn(spell_exhale_damage_SpellScript::HandleOnHit);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_exhale_damage_SpellScript();
    }
};

class tooFarAwayPredicate
{
public:
    tooFarAwayPredicate(Unit* pCaster) : caster(pCaster) {}

    bool operator()(WorldObject* target) const
    {
        return target && target->GetDistance2d(caster) > 0.8f;
    }

private:
    Unit* caster;
};

class spell_sonic_ring : public SpellScriptLoader
{
public:
    spell_sonic_ring() : SpellScriptLoader("spell_sonic_ring") {}

    class spell_sonic_ring_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sonic_ring_SpellScript);

        void SelectTargets(std::list<WorldObject*>&targets)
        {
            if (Unit* pCaster = GetCaster())
            {
                targets.remove_if(tooFarAwayPredicate(pCaster));
            }
        }

        void HandleEffectHit()
        {
            if (Player* target = GetHitPlayer())
                if (target->HasAura(SPELL_NOISE_CANCELLING))
                    SetHitDamage(GetHitDamage() * 0.25f);
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sonic_ring_SpellScript::SelectTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sonic_ring_SpellScript::SelectTargets, EFFECT_1, TARGET_UNIT_SRC_AREA_ENTRY);
            OnHit += SpellHitFn(spell_sonic_ring_SpellScript::HandleEffectHit);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_sonic_ring_SpellScript();
    }
};

class spell_force_verve : public SpellScriptLoader
{
public:
    spell_force_verve() : SpellScriptLoader("spell_force_verve") { }

    class spell_force_verve_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_force_verve_SpellScript);

        void ApplyEffect()
        {
            if (Player* target = GetHitPlayer())
            if (target->HasAura(SPELL_NOISE_CANCELLING))
                SetHitDamage(GetHitDamage() * 0.4f);
        }

        void Register()
        {
            OnHit += SpellHitFn(spell_force_verve_SpellScript::ApplyEffect);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_force_verve_SpellScript();
    }
};

void AddSC_boss_zorlok()
{
    new boss_imperial_vizier_zorlok();
    new AreaTrigger_at_pheromones();
    new spell_attenuation();
    new spell_song_of_the_empress();
    new spell_song_stopper();
    new spell_sonic_ring();
    new spell_force_verve();
    new spell_exhale();
    new spell_exhale_damage();
}