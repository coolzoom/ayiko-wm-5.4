#include "throne_of_thunder.h"
#include "ObjectVisitors.hpp"
#include "GridNotifiers.h"

enum eSpells : uint32
{
    // Thundering Throw
    SPELL_THUNDERING_THROW                  = 140597, // Need SpellScript to handle ScriptEffect
    SPELL_THUNDERING_THROW_JUMP             = 137173, // Casted by player on a statue
    SPELL_THUNDERING_THROW_SILENCE          = 137161, // Silence, visuals
    SPELL_THUNDERING_TRHOW_FLY_VISUAL       = 140594, // Visual in flight
    SPELL_THUNDERING_THROW_HIT_DAMAGE       = 137370, // Damage on hit statue
    SPELL_THUNDERING_THROW_HIT_AOE_DAMAGE   = 137167, // AOE Damage on hit statue
    SPELL_THUNDERING_THROW_STUN             = 137371, // Stun after aoe damage on hit statue
    SPELL_THUNDERING_THROW_IMPACT_VISUAL    = 140606, // Visual of the impact on ground


    // Conductive Water / Conduction
    SPELL_CONDUCTIVE_WATER_VISUAL           = 137277,
    SPELL_CONDUCTIVE_WATER_STATUE_FLOW      = 137340, // Water flows from the broken statue
    SPELL_CONDUCTIVE_WATER_SUMMON           = 137145, // Summon stalker
    SPELL_CONDUCTIVE_WATER_PERIODIC_GROW    = 137676, // Periodically grows stalker
    SPELL_CONDUCTIVE_WATER_GROW             = 137694, // Grow stalker
    SPELL_CONDUCTIVE_WATER_MOD_DAMAGE_TAKEN = 138470, // Increase player damage taken
    SPELL_CONDUCTIVE_WATER_ELECTRIC         = 137978, // Electric visual
    SPELL_CONDUCTIVE_WATER_ELECTRIC_POWER   = 138568, // Lightnings appear
    SPELL_FLUIDITY                          = 138002, // Empower player

    // Static Burst / Static Wound
    SPELL_STATIC_BURST                      = 137162, // Need AuraScript for periodic dummy (on expire, trigger 138349)
    SPELL_STATIC_WOUND                      = 138349, // Need AuraScript
    SPELL_STATIC_WOUND_SHARED               = 138389, // Amount is calculated as follow : SPELL_STATIC_WOUND proc base amount * nbr of stacks / 3

    // Focused Lightning
    SPELL_FOCUSED_LIGHTNING_FOLLOW          = 137422,
    SPELL_FOCUSED_LIGHTNING_SUMMON          = 139206, // Summon the orb
    SPELL_FOCUSED_LIGHTNING_VISUAL          = 139233, // Make it appear
    SPELL_FOCUSED_LIGHTNING_PERIODIC_SPEED  = 137389, // Periodically increase speed
    SPELL_FOCUSED_LIGHTNING_PERIODIC_DAMAGE = 139210, // Casted every 0.5 seconds
    SPELL_FOCUSED_LIGHTNING_DETONATE_LOWER  = 139211, // Detonation damages lowered 
    SPELL_FOCUSED_LIGHTNING_DETONATE        = 137374, // Not in Conductive Water
    SPELL_FOCUSED_LIGHTNING_CONDUCTION      = 137530, // Detonate in conductive water
    SPELL_FOCUSED_LIGHTNING_ELECTRIC        = 138990, // Detonate in Electrified Waters

    // Lightning Fissure
    SPELL_LIGHTNING_FISSURE_SUMMON          = 137479, // Summon the fissure
    SPELL_LIGHTNING_FISSURE_VISUAL          = 137480, // Make it appear
    SPELL_LIGHTNING_FISSURE_PERIODIC        = 137485, // Casted by players
    SPELL_LIGHTNING_FISSURE_CONDUCTION      = 138133, // In contact with Conductive Water

    // Implosion
    SPELL_IMPLOSION                         = 137507, // When crossed by a Focused Lightning
    SPELL_IMPLOSION_CONDUCTIVE_WATERS       = 138990, // When in contact with a Conductive Water

    // Lightning Storm
    SPELL_LIGHTNING_STORM                   = 137313, // Trigger damages
    SPELL_LIGHTNING_STORM_VISUAL            = 140753, // Visual of the storm 

    // Lightning Strike (Heroic)
    SPELL_LIGHTNING_STRIKE_VISUAL           = 138299, // Visual (blue column)
    SPELL_LIGHTNING_STRIKE_EXPLOSION        = 137647, // AOE Damages
    SPELL_LIGHTNING_STRIKE_MOB_VISUAL       = 137966, // Visual of the stalker
    SPELL_LIGHTNING_STRIKE_MOB_DAMAGES      = 137905, // To check, damages to any target

    // Electrified Waters
    SPELL_ELECTRIFIED_WATERS                = 138006, // Damages

    // Ionization (Heroic)
    SPELL_IONIZATION                        = 138732, // Aura Script needed (OnEffectRemove)
    SPELL_IONIZATION_DAMAGES                = 138733, // Damages in 8 yards
    SPELL_IONIZATION_DAMAGES_CONDUCTION     = 138743, // Damages in Conductive Waters

    // Berserk
    SPELL_BERSERK                           = 47008,
};

enum eEvents
{
    // Jin'Rokh
    EVENT_THUNDERING_THROW                  = 1,
    EVENT_STATIC_BURST                      = 2,
    EVENT_FOCUSED_LIGHTNING                 = 3,
    EVENT_LIGHTNING_STORM                   = 4,
    EVENT_LIGHTNING_STORM_END               = 5,
    EVENT_IONIZATION                        = 6,
    EVENT_BERSERK                           = 7,

    // Conductive Water
    EVENT_WATER_CHECK_PLAYERS               = 8, // To (re)apply auras if needed
    EVENT_WATER_GROW                        = 9, // Cause aura is wierdly buged

    // Orb of Focused Lightning
    EVENT_INITIALIZE_MOTION                 = 10, // Little delay to fix the Motion Master
    EVENT_ORB_CHECK_PLAYER                  = 11, // Check distance with the targeted player

    // Lightning Fissure
    EVENT_FISSURE_PERIODIC                  = 12, // Cast spell on players
    EVENT_FISSURE_CHECK_WATER               = 13, // Check distance from pools of water

    // Lightning Strike Stalker (Heroic)
    EVENT_STRIKE_LIGHTNING                  = 14,
    EVENT_STRIKE_STALKER_EXPLOSION          = 15, // Explosion when column bursts and summon other stalkers

    // Lightning Strike (Heroic)
    EVENT_STRIKE_CAST                       = 16, // Check players in line

    // Mogu statue stalker
    EVENT_STATUE_CHECK_PLAYER_THROW         = 17, // Check distance with the thrown player
    EVENT_STATUE_CHECK_PLAYER_CRASH         = 18, // Check distance ground - thrown player
    EVENT_STOP_SPRAYING                     = 19, // Stop spraying water after 8 seconds
};

enum eCreatures : uint32
{
    NPC_MOGU_STATUE_STALKER                 = 662200,
    NPC_CONDUCTIVE_WATER                    = 69469,
    NPC_LIGHTNING_ORB                       = 70174,
    NPC_LIGHTNING_FISSURE                   = 69609, // Maybe 70307 ?
    NPC_LIGHTNING_STRIKE                    = 69753, // Heroic only
    NPC_LIGHTNING_STRIKE_STORM              = 662201, // Heroic only
};

enum eJinRokhTalks
{
    TALK_INTRO                              = 0, // When players enter room I assume
    TALK_AGGRO                              = 1, // EnterCombat
    TALK_BERSERK                            = 2, // On Berserk ?
    TALK_DEATH                              = 3, // JustDied
    TALK_KILLED_PLAYER_FIRST                = 4, // KilledUnit
    TALK_KILLED_PLAYER_SECOND               = 5, // KilledUnit
    TALK_THUNDERING_THROW                   = 6, // On Thundering Throw
    TALK_LIGNTING_STORM                     = 7, // On Lightning Storm
};

enum eJinRokhDatas
{
    // Mogu Statue Stalker
    DATA_STATUE_DESTROYED                   = 0, // Value returned at this index set to 1 when statue has been destroyed
    DATA_STATUE_THROW_PLAYER                = 1,

    // Stalker Strike
    DATA_STRIKE_STORM_COUNT                 = 2,

    // Lightning Strike
    DATA_LIGHTNING_STRIKE_TIMER             = 3, // Timer before casting lightning visual
};

enum eMotions
{
    POINT_MIDDLE                            = 1, // When returning to middle
};

enum eActions
{
    // Conductive Water
    ACTION_WATER_SET_ELECTRIC               = 0, // Turn into Electrified Waters
};

//=======================================================================
// Variables
static const Position summonConductiveWaterPosition[] =
{
    { 5919.130371f, 6291.044922f, 124.034798f, 3.925846f }, // North west
    { 5918.745117f, 6236.436523f, 124.034798f, 2.359413f }, // North east
    { 5865.178711f, 6236.843750f, 124.034798f, 0.778800f }, // South east
    { 5864.652344f, 6290.865234f, 124.034798f, 5.490538f }  // South west
};

static const Position centerPosition = { 5891.990234f, 6263.640137f, 123.533661f, 1.570769327f };

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

// Helper for Focused Lightning selection
class FocusedLightningSelection : public std::unary_function<Unit*, bool>
{
public:
    FocusedLightningSelection() { }

    bool operator()(Unit const* pTarget) const
    {
        if (!pTarget->ToPlayer())
            return false;

        Player const* pPlayer = pTarget->ToPlayer();

        switch (pPlayer->getClass())
        {
            case CLASS_WARRIOR:
            case CLASS_ROGUE:
            case CLASS_DEATH_KNIGHT:
                return false;

            case CLASS_PALADIN:
                return pPlayer->GetSpecializationId(pPlayer->GetActiveSpec()) == SPEC_PRIEST_HOLY;

            case CLASS_DRUID:
                return pPlayer->GetSpecializationId(pPlayer->GetActiveSpec()) == SPEC_DRUID_BALANCE || pPlayer->GetSpecializationId(pPlayer->GetActiveSpec()) == SPEC_DRUID_RESTORATION;

            case CLASS_MONK:
                return pPlayer->GetSpecializationId(pPlayer->GetActiveSpec()) == SPEC_MONK_MISTWEAVER;

            case CLASS_SHAMAN:
                return pPlayer->GetSpecializationId(pPlayer->GetActiveSpec()) != SPEC_SHAMAN_ENHANCEMENT;

            case CLASS_MAGE:
            case CLASS_PRIEST:
            case CLASS_WARLOCK:
            case CLASS_HUNTER:
                return true;

            default:
                return false;
        }
    }
};


#define uiLightningStrikePerSecond 5UL

class boss_jinrokh : public CreatureScript
{
public:
    boss_jinrokh() : CreatureScript("boss_jinrokh") {}

    struct boss_jinrokhAI : public BossAI
    {
        boss_jinrokhAI(Creature* pCreature) : BossAI(pCreature, DATA_JINROKH)
        {
        }

        uint32 m_uiPushTimer;

        void Reset()
        {
            events.Reset();
            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            instance->SetBossState(DATA_JINROKH, NOT_STARTED);
            me->SetSpeed(MOVE_RUN, 1.0f, true);
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE); 
        }

        void EnterEvadeMode()
        {
            _EnterEvadeMode();
        }

        void MoveInLineOfSight(Unit *pWho)
        {
            if (!me->IsInCombat() && pWho && me->IsWithinDistInMap(pWho, 50.0f))
            {
                Talk(TALK_INTRO);    
            }
        }

        void EnterCombat(Unit* pWho)
        {
            Talk(TALK_AGGRO);
            instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
            instance->SetBossState(DATA_JINROKH, IN_PROGRESS);

            events.ScheduleEvent(EVENT_THUNDERING_THROW, 30 * IN_MILLISECONDS);
            events.ScheduleEvent(EVENT_STATIC_BURST, urand(15, 20) * IN_MILLISECONDS);
            events.ScheduleEvent(EVENT_FOCUSED_LIGHTNING, urand(12, 17) * IN_MILLISECONDS);
            events.ScheduleEvent(EVENT_LIGHTNING_STORM, 75 * IN_MILLISECONDS);
            if (IsHeroic())
            {
                events.ScheduleEvent(EVENT_BERSERK, 6 * MINUTE * IN_MILLISECONDS);
                events.ScheduleEvent(EVENT_IONIZATION, 60 * IN_MILLISECONDS);
            }
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
                case EVENT_THUNDERING_THROW:
                    if (Unit* pVictim = me->GetVictim())
                    {
                        Talk(TALK_THUNDERING_THROW);
                        DoCast(pVictim, SPELL_THUNDERING_THROW);
                    }
                    events.ScheduleEvent(EVENT_THUNDERING_THROW, 90 * IN_MILLISECONDS);
                    break;

                case EVENT_STATIC_BURST:
                    if (Unit* pVictim = me->GetVictim())
                        DoCast(pVictim, SPELL_STATIC_BURST);
                    events.ScheduleEvent(EVENT_STATIC_BURST, urand(10, 20) * IN_MILLISECONDS);
                    break;

                case EVENT_FOCUSED_LIGHTNING:
                    DoCast(me, SPELL_FOCUSED_LIGHTNING_SUMMON);
                    events.ScheduleEvent(EVENT_FOCUSED_LIGHTNING, urand(15, 20) * IN_MILLISECONDS);
                    break;

                case EVENT_LIGHTNING_STORM:
                {
                    me->SetSpeed(MOVE_RUN, me->GetSpeedRate(MOVE_RUN) * 10.0f, true);
                    me->GetMotionMaster()->MovePoint(POINT_MIDDLE, centerPosition);
                    uint32 uiTimer = 2600;

                    for (uint8 i = 0; i < uiLightningStrikePerSecond * 15; ++i)
                    {
                        float fx, fy;
                        GetRandPosFromCenterInDist(me->GetPositionX(), me->GetPositionY(), frand(10.0f, 100.0f), fx, fy);

                        if (Creature *pSummon = me->SummonCreature(NPC_LIGHTNING_STRIKE, fx, fy, me->GetPositionZ() + 0.5f, 0.0f, TEMPSUMMON_TIMED_DESPAWN, 100000))
                        {
                            if (pSummon->AI())
                            {
                                pSummon->AI()->SetData(DATA_LIGHTNING_STRIKE_TIMER, uiTimer);
                                uiTimer += ( 1000 / uiLightningStrikePerSecond );
                            }
                        }
                    }
                    Talk(TALK_LIGNTING_STORM);
                    DoCast(me, SPELL_LIGHTNING_STORM);
                    events.ScheduleEvent(EVENT_LIGHTNING_STORM, 90 * IN_MILLISECONDS);
                    break;
                }

                case EVENT_LIGHTNING_STORM_END:
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM))
                        ScriptedAI::AttackStart(pTarget);
                    events.CancelEvent(EVENT_LIGHTNING_STORM_END);
                    break;

                case EVENT_IONIZATION:
                {
                    DoCastAOE(SPELL_IONIZATION);
                    events.ScheduleEvent(EVENT_IONIZATION, urand(60, 75) * IN_MILLISECONDS);
                    break;
                }

                case EVENT_BERSERK:
                    DoCast(me, SPELL_BERSERK);
                    events.CancelEvent(EVENT_BERSERK);
                    break;

                default:
                    break;
                }
            }
            if (!me->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE))
                DoMeleeAttackIfReady();
        }

        void MovementInform(uint32 uiMotionType, uint32 uiPointMotionId)
        {
            if (uiMotionType == POINT_MOTION_TYPE && uiPointMotionId == POINT_MIDDLE)
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
                me->SetSpeed(MOVE_RUN, me->GetSpeedRate(MOVE_RUN) / 10.0f, true);
                if (SpellInfo const* pLightningStorm = sSpellMgr->GetSpellInfo(SPELL_LIGHTNING_STORM))
                {
                    events.DelayEvents(pLightningStorm->GetMaxDuration());
                    events.ScheduleEvent(EVENT_LIGHTNING_STORM_END, pLightningStorm->GetMaxDuration());
                }
            }
        }

        void JustDied(Unit *pKiller)
        {
            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            instance->SetBossState(DATA_JINROKH, DONE);

            Talk(TALK_DEATH);
        }

        void KilledUnit(Unit *pKilled)
        {
            Talk(RAND<uint8>(TALK_KILLED_PLAYER_FIRST, TALK_KILLED_PLAYER_SECOND));
        }

        Creature* GetFarthestNotDestroyedStatue() const
        {
            std::list<Creature*> statues;
            std::vector<Creature*> availables;
            GetCreatureListWithEntryInGrid(statues, me, NPC_MOGU_STATUE_STALKER, 500.0f);

            for (Creature* statue : statues)
            {
                if (statue->AI()->GetData(DATA_STATUE_DESTROYED) == 0)
                    availables.push_back(statue);
            }

            std::sort(availables.begin(), availables.end(), [this] (Creature const* first, Creature const* second) -> bool
            {
                return this->me->GetExactDist2d(first) > this->me->GetExactDist2d(second);
            });

            if (availables.empty())
                return NULL;

            return availables.front();
        }

    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_jinrokhAI(pCreature);
    }
};

// Orb of Focused Lightning
class npc_orb_of_focused_lightning : public CreatureScript
{
public:
    npc_orb_of_focused_lightning() : CreatureScript("npc_orb_of_focused_lightning") { }

    class npc_orb_of_focused_lightning_AI : public ScriptedAI
    {
    public:
        npc_orb_of_focused_lightning_AI(Creature *pCreature) :
            ScriptedAI(pCreature), pTarget(NULL)
        {

        }

        void IsSummonedBy(Unit *pSummoner)
        {
            if (!pSummoner || !pSummoner->GetAI())
                me->DisappearAndDie();

            me->setFaction(35);

            events.ScheduleEvent(EVENT_INITIALIZE_MOTION, 200);
        }

        void UpdateAI(uint32 uiDiff)
        {
            if (pTarget)
            {
                if (me->GetExactDist2d(pTarget) <= 3.0f) 
                {
                    if (me->GetMap()->GetDifficulty() != RAID_TOOL_DIFFICULTY)
                        DoCastAOE(SPELL_FOCUSED_LIGHTNING_DETONATE);
                    else
                        pTarget->CastSpell(pTarget, SPELL_FOCUSED_LIGHTNING_DETONATE, false);

                    if (pTarget->HasAura(SPELL_CONDUCTIVE_WATER_MOD_DAMAGE_TAKEN))
                    {
                        if (pTarget->HasAura(SPELL_ELECTRIFIED_WATERS))
                            DoCastAOE(SPELL_FOCUSED_LIGHTNING_ELECTRIC);
                        else
                            pTarget->CastSpell(pTarget, SPELL_FOCUSED_LIGHTNING_CONDUCTION, false);
                    }
                    else
                        DoCast(me, SPELL_LIGHTNING_FISSURE_SUMMON);

                    me->Kill(me);
                    return;
                }
            }

            events.Update(uiDiff);

            while (uint32 uiEventId = events.ExecuteEvent())
            {
                switch (uiEventId)
                {
                    case EVENT_ORB_CHECK_PLAYER:
                    {
                        std::list<Player*> playerList;
                        GetPlayerListInGrid(playerList, me, 5.0f);

                        for (Player* pPlayer : playerList)
                        {
                            if (pPlayer != pTarget)
                                DoCast(pPlayer, SPELL_FOCUSED_LIGHTNING_PERIODIC_DAMAGE);
                        }
                        events.ScheduleEvent(EVENT_ORB_CHECK_PLAYER, 500);
                        break;
                    }

                    case EVENT_INITIALIZE_MOTION:
                        if (Creature *pJinrokh = ObjectAccessor::GetCreature(*me, me->GetInstanceScript()->GetData64(DATA_JINROKH)))
                        {
                            if (pTarget = pJinrokh->AI()->SelectTarget(SELECT_TARGET_RANDOM, 0, FocusedLightningSelection()))
                            {
                                DoCast(me, SPELL_FOCUSED_LIGHTNING_PERIODIC_SPEED, false);
                                me->CastSpell(pTarget, SPELL_FOCUSED_LIGHTNING_FOLLOW, false);

                                me->GetMotionMaster()->MoveFollow(pTarget, 0.0f, 0.0f);

                                events.ScheduleEvent(EVENT_ORB_CHECK_PLAYER, 500);
                            }
                            else
                                me->DisappearAndDie();
                        }
                        break;

                    default:
                        break;
                }
            }
        }

        void JustDied(Unit *pKiller)
        {
            if (pTarget)
                pTarget->RemoveAurasDueToSpell(SPELL_FOCUSED_LIGHTNING_FOLLOW);
        }

    private:
        EventMap        events;
        Unit            *pTarget;
    };

    CreatureAI *GetAI(Creature *pCreature) const
    {
        return new npc_orb_of_focused_lightning_AI(pCreature);
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
            DoCast(me, SPELL_LIGHTNING_FISSURE_VISUAL);

            events.ScheduleEvent(EVENT_FISSURE_PERIODIC, 1000);
            events.ScheduleEvent(EVENT_FISSURE_CHECK_WATER, 500);
        }
        
        void UpdateAI(uint32 uiDiff)
        {
            events.Update(uiDiff);

            while (uint32 uiEventId = events.ExecuteEvent())
            {
                switch (uiEventId)
                {
                    case EVENT_FISSURE_PERIODIC:
                    {
                        std::list<Player*> playerList;
                        GetPlayerListInGrid(playerList, me, 5.0f);

                        for (Player* player : playerList)
                            player->CastSpell(player, SPELL_LIGHTNING_FISSURE_PERIODIC);

                        events.ScheduleEvent(EVENT_FISSURE_PERIODIC, 1000);
                        break;
                    }

                    case EVENT_FISSURE_CHECK_WATER:
                    {
                        std::list<Creature*> waters;
                        GetCreatureListWithEntryInGrid(waters, me, NPC_CONDUCTIVE_WATER, 500.0f);

                        waters.sort([this] (Creature const* first, Creature const* second) -> bool
                        {
                            return this->me->GetExactDist2d(first) < this->me->GetExactDist2d(second);
                        });

                        for (Creature *pWater : waters)
                        {
                            if (Aura *pGrow = pWater->GetAura(SPELL_CONDUCTIVE_WATER_GROW))
                            {
                                uint32 uiTicks = pGrow->GetStackAmount();
                                float fBase = 3.6f;

                                fBase += ( 0.4f * uiTicks );

                                float fDist = me->GetExactDist2d(pWater) - fBase;

                                if (fDist <= 5.0f)
                                {
                                    DoCastAOE(SPELL_IMPLOSION_CONDUCTIVE_WATERS);
                                    me->Kill(me);
                                    return;
                                }
                            }
                        }

                        if (GetClosestCreatureWithEntry(me, NPC_LIGHTNING_ORB, 5.0f, true))
                            DoCastAOE(SPELL_IMPLOSION);

                        events.ScheduleEvent(EVENT_FISSURE_CHECK_WATER, 500);
                        break;
                    }

                    default:
                        break;
                }
            }
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

            events.ScheduleEvent(EVENT_WATER_CHECK_PLAYERS, 1000);
            events.ScheduleEvent(EVENT_WATER_GROW, 200);
        }

        void DoAction(int32 iAction)
        {
            switch (iAction)
            {
                case ACTION_WATER_SET_ELECTRIC:
                    DoCast(me, SPELL_CONDUCTIVE_WATER_ELECTRIC_POWER);
                    DoCast(me, SPELL_CONDUCTIVE_WATER_ELECTRIC);
                    break;

                default:
                    break;
            }
        }

        void UpdateAI(const uint32 uiDiff)
        {
            events.Update(uiDiff);

            while (uint32 uiEventId = events.ExecuteEvent())
            {
                switch (uiEventId)
                {
                    case EVENT_WATER_CHECK_PLAYERS:
                    {
                        std::list<Player*> playerList;
                        GetPlayerListInGrid(playerList, me, 500.0f);

                        for (Player* pPlayer : playerList)
                        {
                            float fDist = me->GetExactDist2d(pPlayer);
                            float minDist = 3.6f;
                            if (Aura* pGrow = me->GetAura(SPELL_CONDUCTIVE_WATER_GROW))
                                minDist += ( 0.4f * ( pGrow->GetStackAmount() ) );

                            uint32 spellId = me->HasAura(SPELL_CONDUCTIVE_WATER_ELECTRIC) ? SPELL_ELECTRIFIED_WATERS : SPELL_FLUIDITY;

                            if (fDist <= minDist)
                            {
                                DoCast(pPlayer, spellId, false);
                                DoCast(pPlayer, SPELL_CONDUCTIVE_WATER_MOD_DAMAGE_TAKEN, false);
                            }
                        }
                    }
                    events.ScheduleEvent(EVENT_WATER_CHECK_PLAYERS, 1000);
                    break;

                    case EVENT_WATER_GROW:
                        DoCast(me, SPELL_CONDUCTIVE_WATER_GROW);
                        events.ScheduleEvent(EVENT_WATER_GROW, 200);
                        break;

                    default:
                        break;
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_conductive_waterAI(pCreature);
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
                    pOwner->CastCustomSpell(pOwner, SPELL_STATIC_WOUND, &final_dmg, 0, 0, true);
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
    new npc_orb_of_focused_lightning();

    new npc_lightning_fissure();
    new spell_implosion();
    new spell_static_wound();
    new spell_static_wound_damage();
    new spell_static_burst();
    new spell_lightning_storm_visual();
}
