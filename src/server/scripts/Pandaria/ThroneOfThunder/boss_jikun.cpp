#include "GameObjectAI.h"
#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "SpellAuras.h"
#include "MapManager.h"
#include "Spell.h"
#include "Vehicle.h"
#include "Cell.h"
#include "CellImpl.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "CreatureTextMgr.h"
#include "Unit.h"
#include "Player.h"
#include "Creature.h"
#include "InstanceScript.h"
#include "Map.h"
#include "VehicleDefines.h"
#include "SpellInfo.h"

#include "throne_of_thunder.h"

/* 
    NOTE:
    Ji-Kun's young are located throughout the roost and progress through different stages of life. After a period of incubation Young Eggs of Ji-Kun will hatch into Hatchlings. 
    When fed by Ji-Kun, the Hatchlings then mature into Fledglings. Both Fledgling Eggs and Mature Eggs will hatch into Juveniles.
*/

enum Spells
{
    // Ji-Kun.

    // Infected talons
    SPELL_INFECTED_TALONS_AURA          = 140094, // Boss check aura on successful melee ability.
    SPELL_INFECTED_TALONS_DAMAGE        = 140092, // Player debuff.

    // Talon Rake
    SPELL_TALON_RAKE                    = 134366, // Damage + increase.

    // Quills
    SPELL_QUILLS                        = 134380, // Triggers SPELL_QUILLS_DAMAGE damage and SPELL_QUILLS_PERIODIC (Effect 1).
    SPELL_QUILLS_DAMAGE                 = 134381, // Quills damage.
    SPELL_QUILLS_PERIODIC               = 138649, // Periodic dummy - cast of SPELL_QUILLS_VISUAL.
    SPELL_QUILLS_VISUAL                 = 138650, // Quills visual.

    // Down Draft
    SPELL_DOWN_DRAFT                    = 134370, // Areatrigger aura.

    // Caw
    SPELL_CAW                           = 138923, // Script Effect for SPELL_CAW_MISSILE (Effect 0).
    SPELL_CAW_MISSILE                   = 138926, // Triggers SPELL_CAW_DAMAGE.
    SPELL_CAW_DAMAGE                    = 134375, // Damage in 8 yards.

    /*
        Flying mechanic:

        When an egg or hatchling from the lower nests located around Ji-Kun's roost is slain it leaves behind a feather for players to loot. 
        This feather grants the player Daedalian Wings. Daedalian Wings grants the player an extra action button that allows players to take flight for 10 sec.
    */

    // Drop feather
    SPELL_DROP_FEATHER                  = 134338, // 140016 Summons lootable feather.

    // Daedelian Wings
    SPELL_DAEDELIAN_WINGS               = 134339, // 140014 LFR version (No CD trigger). Flight spell + SPELL_LESSON_OF_ICARUS trigger. Stacks added / aura removed using this spell.
    SPELL_LESSON_OF_ICARUS              = 140571, // Cooldown 1 minute Dummy (Effect 0) - Cannot pickup wings.
    SPELL_FLIGHT_ACTION_BUTTON          = 133755, // Action button spell on Daedelian Wings. Removes 1 stack and makes player fly.

    /*
        Feed mechanic:

        Ji-Kun spits up globs of food for her young. If a Hatchling has called out for food, Ji-Kun will aim this ability in their direction; 
        otherwise the food will land at random locations around Ji-Kun's platform. When the food lands on the ground, it forms a Feed Pool.
        While a glob of food is traveling through the air, players with Flight can intercept it to prevent a Feed Pool from forming. 
        Doing so afflicts the player with Slimed, but also grants Primal Nutriment.
    */

    // Feed young
    SPELL_FEED_YOUNG                    = 137528, // Triggers SPELL_REGURGITATE each 1 sec on Normal / 2.5 sec on Heroic.
    SPELL_REGURGITATE                   = 134385, // Script effect (Effect 0) for summoning NPC_FEED_POOL / NPC_FEED_HATCHLINGS.

    // Feed pool
    SPELL_FEED_POOL_DMG                 = 138319, // Periodic damage.
    SPELL_FEED_POOL_VISUAL              = 138854, // Green visual, on platform.
    SPELL_FEED_POOL_VISUAL_HATCHLING    = 139284, // Yellow visual, on hatchlings in nest.
    SPELL_SUMMON_POOL                   = 134259, // Main platform, summons NPC_POOL_OF_FEED.
    SPELL_SUMMON_POOL_HATCHLINGS        = 139285, // Hatchling nest, summons NPC_POOL_OF_FEED_HATCHLING.

    SPELL_SLIMED                        = 134256, // On players intercepting Ji-Kun's food globules. Periodic damage and Script Effect (Effect 1) for SPELL_SLIMED_DMG_INCREASE.
    SPELL_SLIMED_DMG_INCREASE           = 138309, // 10% damage increase from next Slimed.

    SPELL_PRIMAL_NUTRIMENT              = 140741, // On players intercepting Ji-Kun's food globules. Eff 0 + 1 Dummy A. H / D incr., SPELL_PRIMAL_NUTRIMENT_INCREASE trigger on Eff 2.
    SPELL_PRIMAL_NUTRIMENT_INCREASE     = 112879, // 30% Healing and 100% Damage increase.

    // Ji-Kun's Flock.

    // Hatchling

    SPELL_HATCHLING_CHEEP               = 139296, // Triggers SPELL_HATCHLING_CHEEP_DAMAGE in 10 yards.
    SPELL_HATCHLING_CHEEP_DAMAGE        = 139298,
    SPELL_CHEEP_AOE                     = 140129,
    SPELL_INCUBATION_LOW_NEST           = 134347, // 10 sec incubation
    SPELL_INCUBATION_HIGH_NEST          = 134335, // 20 sec incubation

    SPELL_SUMMON_YOUNG_HATCHLING        = 134336,
    SPELL_SUMMON_JUVENILE               = 138905,

    SPELL_HATCHLING_EVOLUTION           = 134322,

    SPELL_HATCHLING_EATING              = 134321,

    // Fledgling

    SPELL_FLEDGLING_LAY_EGG             = 134367, // Summons NPC_FLEDGLING_EGG_JIKUN.
    SPELL_FLEDGLING_CHEEP               = 140570, // Needs target limitation.

    // Juvenile

    SPELL_JUVENILE_CHEEP                = 140227, // Script effect (Effect 0) for SPELL_JUVENILE_CHEEP_DAMAGE in 60 yards.
    SPELL_JUVENILE_CHEEP_DAMAGE         = 140129, // Damage in 10 yards.

    // Nest Guardian - HEROIC!

    SPELL_GUARDIAN_TALON_STRIKE         = 139100, // Weapon damage 180 degree arc.
    SPELL_GUARDIAN_SCREECH              = 140640, // Damage, Interrupt, Script Effect (Effect 2) for SPELL_GUARDIAN_SCREECH_SLOW. If not actively engaged in melee combat.
    SPELL_GUARDIAN_SCREECH_SLOW         = 134372, // Slow casting on targets (Removed after casting any spell). Mana users.

    SPELL_BEAM_VISUAL                   = 137526, // visual aur of beam
};

enum FeedMovementPoints
{
    POINT_GREEN_FEED_AIR = 1,
    POINT_GREEN_FEED_GROUND = 2,
    POINT_FEED_CAME_TO_HATCHLING = 3,
};

enum JuvenileMovementPoints
{
    POINT_MOVE_TO_CENTER_FLY = 1,
};

enum HatchlingMovementPoints
{
    POINT_MOVE_TO_EAT_POOL = 1,
};

enum JikunMovementPoints
{
    POINT1 = 1,
    POINT2 = 2,
};

enum EventsJiKun
{
    EVENT_TALON_RAKE    = 1,
    EVENT_QUILLS,
    EVENT_DOWN_DRAFT,
    EVENT_DOWN_DRAFT_FALL,
    EVENT_CAW,
    EVENT_ACTIVATE_NEST,
    EVENT_FEED_YOUNG
};

enum EventsHatchlings
{
    EVENT_FIND_EAT    = 1,
    EVENT_CHEEP,
    EVENT_LAY_EGG,
};

enum EventsJuvenile
{
    EVENT_START_FLY_AWAY    = 1,
    EVENT_JUVENILE_CHEEP,
};

enum EggsJikun
{
    EVENT_SUMMON_HATCHLING    = 1,
};

enum Npcs
{
    // Ji-Kun.
    NPC_YOUNG_EGG_OF_JIKUN     = 68194, // Hatches to Hatchling.
    NPC_FLEDGLING_EGG_JIKUN    = 68202, // Hatches to Juvenile.
    NPC_MATURE_EGG_OF_JIKUN    = 69628, // Hatches to Juvenile.

    NPC_JIKUN_HATCHLING        = 68192,
    NPC_JIKUN_FLEDGLING        = 68193,
    NPC_JIKUN_JUVENILE         = 70095,

    NPC_JIKUN_NEST_GUARDIAN    = 70134, // HEROIC only!

    NPC_FEED_POOL              = 68178, // Feed NPC's.
    NPC_FEED_HATCHLINGS        = 70130,

    NPC_POOL_OF_FEED           = 68188, // Feed Pool NPC's.
    NPC_POOL_OF_FEED_HATCHLING = 70216,

    NPC_BEAM_NEST              = 68208, // Visual beam of active nest
};

// Center
Position Center = { 6146.085f,  4319.261f,  -30.608f, 2.739f };

// Ji-Kun intro movement.
Position const IntroMoving[2] =
{
    { 6213.971f,  4289.072f,  -14.402f, 2.873f },
    { 6146.085f,  4319.261f,  -30.608f, 2.739f }
};

// Ji-Kun low nest positions.
Position const NestPositionsGround[5] =
{
    { 6071.182f,  4285.108f, -101.469f, 1.873f },
    { 6096.028f,  4339.460f,  -93.655f, 1.873f },
    { 6159.814f,  4370.529f,  -70.502f, 1.873f },
    { 6220.071f,  4333.520f,  -57.075f, 1.873f },
    { 6192.708f,  4267.664f,  -70.764f, 1.873f }
};

// Ji-Kun high nest positions.
Position const NestPositionsHigh[5] =
{
    { 6078.422f,  4270.403f,   42.407f, 1.873f },
    { 6082.500f,  4371.428f,   45.238f, 1.873f },
    { 6151.905f,  4330.750f,   72.997f, 1.873f },
    { 6217.987f,  4352.961f,   68.138f, 1.873f },
    { 6173.894f,  4239.375f,   43.848f, 1.873f }
};

uint32 const EggsLowNest = 15; // size of eggs on low nests
uint32 const EggsHighNest = 10;// size of eggs on high nests

Unit * SelectRandomTargetWithGuidOnRange(Unit *FromWho, uint32 entry,float range,bool player)
{
   std::list<Player*> PlayerList;
   std::list<Creature*> CreatureList;

   if (player)
       GetPlayerListInGrid(PlayerList, FromWho, range);
   else
       GetCreatureListWithEntryInGrid(CreatureList, FromWho, entry, range);

   if (player && !PlayerList.empty())
   {
       if (Player *target = Trinity::Containers::SelectRandomContainerElement(PlayerList))
           return target->ToUnit();
   }
   else if (!CreatureList.empty())
   {
       if (Creature *target = Trinity::Containers::SelectRandomContainerElement(CreatureList))
           return target->ToUnit();
   }

    return NULL;
}

// Ji-Kun - 69712.
class boss_jikun : public CreatureScript
{
    public:
        boss_jikun() : CreatureScript("boss_jikun") { }

        struct boss_jikunAI : public BossAI
        {
            boss_jikunAI(Creature* creature) : BossAI(creature, DATA_JI_KUN), summons(me)
            {
                instance = creature->GetInstanceScript();
                PreIntro();
            }

            uint64 NestLowEggs[5][EggsLowNest],NestHighEggs[5][EggsHighNest];
            InstanceScript* instance;
            EventMap events;
            SummonList summons;
            bool lastNestHigh,introDone;

            /*** SPECIAL FUNCTIONS ***/

            void PreIntro()
            {
                introDone = false;
                me->SetVisible(false);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                me->SetReactState(REACT_PASSIVE);
            }

            void ActivateFeather()
            {
                std::list<GameObject*> jikunFeatherList;
                GetGameObjectListWithEntryInGrid(jikunFeatherList, me, GOB_JIKUN_FEATHER, 200.0f);

                for (auto feather : jikunFeatherList)
                {
                    feather->SetRespawnTime(0);
                    feather->UpdateObjectVisibility();
                }
            }

            void SummonEggs()
            {
                // 5 places of eggs
                for (uint8 i = 0; i <= 4; ++i)
                {
                    // bottom places 15 eggs in nest
                    for (uint8 j = 0; j <= EggsLowNest-1; ++j)
                    {
                        Position summonPos;
                        me->GetRandomPoint(NestPositionsGround[i], 7.0f, summonPos);

                        if (Creature* egg = me->SummonCreature(NPC_YOUNG_EGG_OF_JIKUN, summonPos.GetPositionX(), summonPos.GetPositionY(), summonPos.GetPositionZ()))
                            NestLowEggs[i][j] = egg->GetGUID();
                    }

                    // top places 10 eggs in nest
                    for (uint8 c = 0; c <= EggsHighNest-1; ++c)
                    {
                        Position summonPosHigh;
                        me->GetRandomPoint(NestPositionsHigh[i], 6.0f, summonPosHigh);

                        if (Creature* egg = me->SummonCreature(NPC_MATURE_EGG_OF_JIKUN, summonPosHigh.GetPositionX(), summonPosHigh.GetPositionY(), summonPosHigh.GetPositionZ()+3.0f))
                            NestHighEggs[i][c] = egg->GetGUID();
                    }
                }
            }

            void RemoveAllAurasAndDespawnSummons()
            {
                if (instance)
                {
                    instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_PRIMAL_NUTRIMENT);
                    instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_TALON_RAKE);
                    instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_DAEDELIAN_WINGS);
                    instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_SLIMED_DMG_INCREASE);
                    instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_INFECTED_TALONS_DAMAGE);
                }

                DespawnCreature(NPC_FEED_POOL);
                DespawnCreature(NPC_POOL_OF_FEED);
                DespawnCreature(NPC_POOL_OF_FEED_HATCHLING);
                DespawnCreature(NPC_JIKUN_JUVENILE);
                DespawnCreature(NPC_JIKUN_HATCHLING);
                DespawnCreature(NPC_YOUNG_EGG_OF_JIKUN);
                DespawnCreature(NPC_MATURE_EGG_OF_JIKUN);
                DespawnCreature(NPC_FLEDGLING_EGG_JIKUN);
            }

            void DespawnCreature(uint32 entry)
            {
                std::list<Creature*> creatureList;
                GetCreatureListWithEntryInGrid(creatureList, me, entry, 500.0f);
                for (auto NowCreature : creatureList)
                    NowCreature->DespawnOrUnsummon();
            }

            uint64 GetEggGUID(uint8 NestNumber,bool HighEggs)
            {
                if (!instance)
                    return 0;

                std::list<Creature*> EggList;
                for (uint8 i = 0; i <= (HighEggs ? (EggsHighNest-1) : (EggsLowNest-1)); ++i)
                    if (Creature* Egg = instance->instance->GetCreature(HighEggs ? NestHighEggs[NestNumber][i] : NestLowEggs[NestNumber][i]))
                        if (Egg->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE))
                            EggList.push_back(Egg);

                if (!EggList.empty())
                    if (Creature *RandomEgg = Trinity::Containers::SelectRandomContainerElement(EggList))
                        return RandomEgg->GetGUID();

                return 0;
            }

            /*** NORMAL FUNCTIONS ***/

            void Reset()
            {
                RemoveAllAurasAndDespawnSummons();

                lastNestHigh = true;

                me->SetDisableGravity(true);
                me->SetCanFly(true);

                events.Reset();

                _Reset();

                //SummonEggs();

                if (instance)
                    instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            }

            void EnterCombat(Unit* who)
            {
                me->MonsterYell("Welcome to pandawow.ir . We are first mist of pandaria 5.4.8 in Asia .", LANG_UNIVERSAL, 0);
                DoCast(me, SPELL_INFECTED_TALONS_AURA);

                events.ScheduleEvent(EVENT_TALON_RAKE, 5000); 
                events.ScheduleEvent(EVENT_QUILLS, 40000);
                events.ScheduleEvent(EVENT_DOWN_DRAFT, 90000);
                events.ScheduleEvent(EVENT_CAW, 16000);
                events.ScheduleEvent(EVENT_ACTIVATE_NEST, 9000);

                if (instance)
                    instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);

                _EnterCombat();
            }

			void EnterEvadeMode()
            {
                me->RemoveAllAuras();
                Reset();
                me->DeleteThreatList();
                me->CombatStop(true);
                me->GetMotionMaster()->MoveTargetedHome();

                me->AddUnitState(UNIT_STATE_EVADE);

                if (instance)
                    instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me); // Remove.

                _EnterEvadeMode();
            }

            void JustSummoned(Creature* summon)
            {
                summons.Summon(summon);
				summon->setActive(true);

				if (me->IsInCombat())
					summon->SetInCombatWithZone();
            }

            void JustDied(Unit* killer)
            {
                RemoveAllAurasAndDespawnSummons();
                summons.DespawnAll();

                if (instance)
                {
                    ActivateFeather();
                    instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
                }

                _JustDied();
            }

            void DoAction(int32 const action)
            {
                me->GetMotionMaster()->MovePoint(POINT1, IntroMoving[0]);

                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                me->SetVisible(true);
                me->SetHomePosition(IntroMoving[1]);

                DoPlaySoundToSet(me, 36213); // pre agro
            }

            void MovementInform(uint32 type, uint32 id)
            {
                switch (id)
                {
                    case POINT1: 
                        me->GetMotionMaster()->MoveJump(IntroMoving[1].GetPositionX(),IntroMoving[1].GetPositionY(),IntroMoving[1].GetPositionZ(),15.0f,15.0f,10.0f,POINT2);
                        break;
                    case POINT2:
                        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                        me->SetReactState(REACT_AGGRESSIVE);
                        introDone = true;
                        break;
                }
            }

            void UpdateAI(uint32 const diff)
            {
                if (!UpdateVictim() || !introDone)
                    return;

                events.Update(diff);

                switch (events.ExecuteEvent())
                {
                    case EVENT_ACTIVATE_NEST:
                    {
                        bool IsHighActivate = lastNestHigh ? false : true;
                        lastNestHigh = IsHighActivate;
                        uint8 NestNumber = urand(0, 4);

                        if (instance)
                            for (uint8 i = 0; i <= (IsHighActivate ? 1 : 2); ++i)
                                if (Creature* Egg = instance->instance->GetCreature(GetEggGUID(NestNumber,IsHighActivate)))
                                {
                                    Egg->AddAura(IsHighActivate ? SPELL_INCUBATION_HIGH_NEST : SPELL_INCUBATION_LOW_NEST, Egg);
                                    Egg->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                                }

                        me->SummonCreature(NPC_BEAM_NEST, IsHighActivate ? NestPositionsHigh[NestNumber].GetPositionX() : NestPositionsGround[NestNumber].GetPositionX(), IsHighActivate ? NestPositionsHigh[NestNumber].GetPositionY() : NestPositionsGround[NestNumber].GetPositionY(), IsHighActivate ? -31.00f : NestPositionsGround[NestNumber].GetPositionZ() + 7.0f, 0.0f, TEMPSUMMON_TIMED_DESPAWN, 25000);
                        me->MonsterTextEmote(IsHighActivate ? "The eggs in one of the upper nests begin to hatch!" : "The eggs in one of the lower nests begin to hatch!", 0, true);

                        if (!IsHighActivate)
                            events.ScheduleEvent(EVENT_FEED_YOUNG, 12000);
                        events.ScheduleEvent(EVENT_ACTIVATE_NEST, 25000);
                        break;
                    }

                    case EVENT_FEED_YOUNG:
                        me->StopMoving();
                        DoCast(me, SPELL_FEED_YOUNG);
                        break;

                    case EVENT_TALON_RAKE:
                        me->StopMoving();
                        if (!me->HasUnitState(UNIT_STATE_CASTING) && me->GetVictim())
                        {
                            DoCast(me->GetVictim(), SPELL_TALON_RAKE);
                            events.ScheduleEvent(EVENT_TALON_RAKE, 20000);
                        }
                        else
                            events.ScheduleEvent(EVENT_TALON_RAKE, 2000);
                        break;

                    case EVENT_QUILLS:
                        me->MonsterTextEmote("|TInterface\\Icons\\ability_hunter_pet_dragonhawk.blp:20|tJi-Kun sends her |cFFFF0000|Hspell:134380|h[Quills]|h|r flying in all directions!", 0, true);
                        me->StopMoving();
                        DoCast(me, SPELL_QUILLS);
                        events.ScheduleEvent(EVENT_QUILLS, 60000);
                        break;

                    case EVENT_DOWN_DRAFT:
                        me->MonsterTextEmote("|TInterface\\Icons\\ability_druid_galewinds.blp:20|tJi-Kun uses her wings to create a massive |cFFFF0000|Hspell:134370|h[Down Draft]|h|r!", 0, true);
                        me->StopMoving();
                        DoCast(SPELL_DOWN_DRAFT);
                        events.ScheduleEvent(EVENT_DOWN_DRAFT, 90000);
                        events.ScheduleEvent(EVENT_DOWN_DRAFT_FALL, 2500);
                        break;

                    case EVENT_DOWN_DRAFT_FALL:
                    {
                        std::list<Player*> PlayerList;
                        GetPlayerListInGrid(PlayerList, me, 50.0f);
                        for (auto playerTarget : PlayerList)
                            if (!playerTarget->HasAura(SPELL_DAEDELIAN_WINGS))
                                playerTarget->NearTeleportTo(playerTarget->GetPositionX() - 4.0f * cos(playerTarget->GetAngle(me)),playerTarget->GetPositionY() - 1.6f * sin(playerTarget->GetAngle(me)),playerTarget->GetPositionZ(),playerTarget->GetOrientation());

                        if (me->HasAura(SPELL_DOWN_DRAFT))
                            events.ScheduleEvent(EVENT_DOWN_DRAFT_FALL, 500);
                        break;
                    }
                    case EVENT_CAW:
                        me->MonsterTextEmote("|TInterface\\Icons\\ability_hunter_animalhandler.blp:20|tJi-Kun |cFFFF0000|Hspell:138923|h[Caws]|h|r, sending powerful sound waves at her enemies!", 0, true);
                        me->StopMoving();
                        if (!me->HasUnitState(UNIT_STATE_CASTING))
                        {
                            DoCast(SPELL_CAW);
                            events.ScheduleEvent(EVENT_CAW, 16000);
                        }
                        else
                            events.ScheduleEvent(EVENT_CAW, 2000);
                        break;

                    default: break;
                }

                if (!me->HasUnitState(UNIT_STATE_CASTING))
                    DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_jikunAI(creature);
        }
};

// Beam target - 68208.
class jikun_beam_target : public CreatureScript
{
    public:
        jikun_beam_target() : CreatureScript("jikun_beam_target") { }

        struct jikun_beam_targetAI : public ScriptedAI
        {
            jikun_beam_targetAI(Creature* creature) : ScriptedAI(creature) 
            { 
                me->SetDisableGravity(true);
                me->SetCanFly(true);
                me->SetDisplayId(11686);
                me->setFaction(14);
                me->SetReactState(REACT_PASSIVE);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->AddAura(SPELL_BEAM_VISUAL, me);
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new jikun_beam_targetAI(creature);
        }
};

// Young hatchling - 68192.
class young_hatchling_jikun : public CreatureScript
{
    public:
        young_hatchling_jikun() : CreatureScript("young_hatchling_jikun") { }

        struct young_hatchling_jikunAI : public ScriptedAI
        {
            young_hatchling_jikunAI(Creature* creature) : ScriptedAI(creature) { }

            EventMap events;

            void IsSummonedBy(Unit* summoner)
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IN_COMBAT); // no regen
                me->SetHomePosition(me->GetPositionX(),me->GetPositionY(),me->GetPositionZ(),me->GetOrientation());
                me->SetDisableGravity(true);
                me->SetCanFly(true);

                events.ScheduleEvent(EVENT_CHEEP, urand(5000,15000)); 
                events.ScheduleEvent(EVENT_FIND_EAT, urand(5000,7000)); 

                me->SetMaxHealth(summoner->GetMaxHealth());
                me->SetHealth(summoner->GetHealth());
                me->setFaction(summoner->getFaction());

                if (summoner->ToCreature())
                    summoner->ToCreature()->DespawnOrUnsummon();
            }

            void UpdateAI(const uint32 diff)
            { 
                if (me->GetDistance(me->GetHomePosition()) > 8.0f && me->GetReactState() != REACT_PASSIVE)
                {
                    me->CombatStop(true);
                    me->GetMotionMaster()->MoveTargetedHome();
                }

                events.Update(diff);

                switch (events.ExecuteEvent())
                {
                    case EVENT_FIND_EAT: // call this event when eat is came to platform and hatchling must start find it
                    {
                        if (Unit *target = SelectRandomTargetWithGuidOnRange(me->ToUnit(), NPC_POOL_OF_FEED_HATCHLING, 10.0f, false))
                            if (Creature *eat = target->ToCreature())
                                if (me->GetReactState() != REACT_PASSIVE)
                                {
                                    me->SetReactState(REACT_PASSIVE);
                                    me->GetMotionMaster()->MovePoint(POINT_MOVE_TO_EAT_POOL,eat->GetPositionX(),eat->GetPositionY(),eat->GetPositionZ()-3.0f);
                                }

                        events.ScheduleEvent(EVENT_FIND_EAT, urand(2000,4000)); 
                        break;
                    }
                    case EVENT_CHEEP:
                        me->StopMoving();
                        if (me->GetVictim() && me->GetReactState() != REACT_PASSIVE)
                            DoCast(me->GetVictim(),me->HasAura(SPELL_HATCHLING_EVOLUTION) ? SPELL_FLEDGLING_CHEEP : SPELL_HATCHLING_CHEEP);
                        events.ScheduleEvent(EVENT_CHEEP, urand(5000,15000));
                        break;

                    case EVENT_LAY_EGG:
                        me->StopMoving();
                        DoCast(SPELL_FLEDGLING_LAY_EGG);
                        events.ScheduleEvent(EVENT_LAY_EGG, 50000); 
                        break;

                    default: break;
                }

                if (!me->HasUnitState(UNIT_STATE_CASTING))
                    DoMeleeAttackIfReady();
            }

            void MovementInform(uint32 type, uint32 id)
            {
                switch (id)
                {
                    case POINT_MOVE_TO_EAT_POOL: // when came to eat pool must find nearst eat pool and start eat
                        bool Eating = false;
                        if (Unit *target = SelectRandomTargetWithGuidOnRange(me->ToUnit(), NPC_POOL_OF_FEED_HATCHLING, 3.0f, false))
                            if (Creature *eat = target->ToCreature())
                            {
                                Eating = true;
                                DoCast(SPELL_HATCHLING_EATING);
                                events.CancelEvent(EVENT_FIND_EAT);
                                events.ScheduleEvent(EVENT_LAY_EGG, 25000);
                                eat->DespawnOrUnsummon();
                            }

                        if (!Eating)
                            me->SetReactState(REACT_AGGRESSIVE);
                        break;
                }
            }

            void JustDied(Unit* killer)
            {
                std::list<Player*> PlayerList;
                GetPlayerListInGrid(PlayerList, me, 10.0f);
                for (auto playerTarget : PlayerList)
                    if (!playerTarget->HasAura(SPELL_LESSON_OF_ICARUS))
                    {
                        playerTarget->CastSpell(playerTarget,SPELL_DAEDELIAN_WINGS, true);
                        if (playerTarget->HasAura(SPELL_DAEDELIAN_WINGS))
                            playerTarget->GetAura(SPELL_DAEDELIAN_WINGS)->SetStackAmount(4);
                        break;
                    }
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new young_hatchling_jikunAI(creature);
        }
};

// Juvenile - 70095.
class npc_juvenile : public CreatureScript
{
    public:
        npc_juvenile() : CreatureScript("npc_juvenile") { }

        struct npc_juvenileAI : public ScriptedAI
        {
            npc_juvenileAI(Creature* creature) : ScriptedAI(creature) 
            {
            }

            EventMap events;
            
            void IsSummonedBy(Unit* summoner)
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IN_COMBAT); // no regen
                me->SetDisableGravity(true);
                me->SetCanFly(true);
                me->SetReactState(REACT_PASSIVE);

                events.ScheduleEvent(EVENT_START_FLY_AWAY, 4000); 

                me->SetMaxHealth(summoner->GetMaxHealth());
                me->SetHealth(summoner->GetHealth());
                me->setFaction(summoner->getFaction());

                if (summoner->ToCreature())
                    summoner->ToCreature()->DespawnOrUnsummon();
            }

            void MovementInform(uint32 type, uint32 id)
            {
                switch (id)
                {
                    case POINT_MOVE_TO_CENTER_FLY: // when came to position in air must start flying and cast caw
                        events.ScheduleEvent(EVENT_JUVENILE_CHEEP, urand(5000,15000)); 
                        break;
                }
            }

            void UpdateAI(const uint32 diff)
            {
                events.Update(diff);

                switch (events.ExecuteEvent())
                {
                    case EVENT_START_FLY_AWAY:
                    {
                        Position NextPoint;
                        me->GetRandomPoint(Center,25.0f,NextPoint);
                        me->GetMotionMaster()->MovePoint(POINT_MOVE_TO_CENTER_FLY, NextPoint.GetPositionX(), NextPoint.GetPositionY(), 28.0f);
                        break;
                    }
                    case EVENT_JUVENILE_CHEEP:
                    {
                        std::list<Player*> PlayerList;
                        GetPlayerListInGrid(PlayerList, me, 150.0f);
                        PlayerList.remove_if(Trinity::UnitAuraCheck(true, SPELL_DAEDELIAN_WINGS));

                        if (!PlayerList.empty())
                            if (Player *target = Trinity::Containers::SelectRandomContainerElement(PlayerList))
                                DoCast(target, SPELL_CHEEP_AOE);

                        events.ScheduleEvent(EVENT_JUVENILE_CHEEP, urand(5000,15000)); 
                        break;
                    }

                    default: break;
                }

                if (!me->HasUnitState(UNIT_STATE_CASTING))
                    DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_juvenileAI(creature);
        }
};

// Egg of Ji-Kun - 69628
class egg_of_jikun : public CreatureScript
{
    public:
        egg_of_jikun() : CreatureScript("egg_of_jikun") { }

        struct egg_of_jikunAI : public ScriptedAI
        {
            egg_of_jikunAI(Creature* creature) : ScriptedAI(creature) { }

            EventMap events;

            void Reset()
            {
                if (me->GetPositionZ() > -32.0f)
                {
                    me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);
                    return;
                }

                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IN_COMBAT); // no regen
                me->SetReactState(REACT_PASSIVE);
                switch (me->GetEntry())
                {
                    case NPC_FLEDGLING_EGG_JIKUN:
                    case NPC_MATURE_EGG_OF_JIKUN: 
                        events.ScheduleEvent(EVENT_SUMMON_HATCHLING, 20000); 
                        break;
                    case NPC_YOUNG_EGG_OF_JIKUN:
                        events.ScheduleEvent(EVENT_SUMMON_HATCHLING, 10000); 
                        break;
                }
            }

            void IsSummonedBy(Unit * summoner)
            {
                if (me->GetPositionZ() > -32.0f)
                    return;

                if (me->GetEntry() != NPC_FLEDGLING_EGG_JIKUN)
                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                else
                    me->AddAura(SPELL_INCUBATION_HIGH_NEST, me);

                me->setFaction(summoner->getFaction());
            }

            void OnSpellClick(Unit* clicker)
            {
                std::list<Creature*> JiKun;
                GetCreatureListWithEntryInGrid(JiKun, me, 69712, 500.0f);
                for (auto Ji : JiKun)
                    Ji->GetAI()->DoAction(1); 

                me->SetVisible(false);
            }

            void UpdateAI(const uint32 diff)
            { 
                if (me->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE) || me->HasFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK))
                    return;

                events.Update(diff);

                switch (events.ExecuteEvent())
                {
                    case EVENT_SUMMON_HATCHLING:
                        DoCast(me->GetEntry() == NPC_YOUNG_EGG_OF_JIKUN ? SPELL_SUMMON_YOUNG_HATCHLING : SPELL_SUMMON_JUVENILE);

                        events.ScheduleEvent(EVENT_SUMMON_HATCHLING, 50000); 
                        break;

                    default: break;
                }

            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new egg_of_jikunAI(creature);
        }
};

// Caw 138923
class spell_caw : public SpellScriptLoader
{
    public:
        spell_caw() : SpellScriptLoader("spell_caw") { }

        class spell_caw_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_caw_SpellScript);

            void SelectTarget(std::list<WorldObject*>& targets)
            {
                if (!GetCaster())
                    return;

                if (Unit *target = SelectRandomTargetWithGuidOnRange(GetCaster()->ToUnit(), 0, 50.0f, true))
                    if (Player *playerTarget = target->ToPlayer())
                        GetCaster()->CastSpell(target, SPELL_CAW_MISSILE, true);
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_caw_SpellScript::SelectTarget, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_caw_SpellScript();
        }
};

// Infected talons aura proc 140094.
class spell_infected_talons : public SpellScriptLoader
{
    public:
        spell_infected_talons() : SpellScriptLoader("spell_infected_talons") { }

        class spell_infected_talons_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_infected_talons_AuraScript);

            void OnProc(AuraEffect const* aurEff, ProcEventInfo& eventInfo)
            {
                PreventDefaultAction();

                if (!GetCaster() || !GetCaster()->GetVictim())
                    return;

                GetCaster()->CastSpell(GetCaster()->GetVictim(), SPELL_INFECTED_TALONS_DAMAGE, true);
            }

            void Register()
            {
                OnEffectProc += AuraEffectProcFn(spell_infected_talons_AuraScript::OnProc, EFFECT_0, SPELL_AURA_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_infected_talons_AuraScript();
        }
};

// Hatchling eated 134321
class spell_hatchling_eated : public SpellScriptLoader
{
    public:
        spell_hatchling_eated() : SpellScriptLoader("spell_hatchling_eated") { }

        class spell_hatchling_eated_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_hatchling_eated_AuraScript);

            void OnRemove(AuraEffect const*  /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (GetTarget())
                {
                    if (Creature *hatchling = GetTarget()->ToCreature())
                        hatchling->SetReactState(REACT_AGGRESSIVE);
                    GetTarget()->CastSpell(GetTarget(), SPELL_HATCHLING_EVOLUTION, true);
                }
            }

            void Register()
            {
                AfterEffectRemove += AuraEffectRemoveFn(spell_hatchling_eated_AuraScript::OnRemove, EFFECT_1, SPELL_AURA_MOD_ROOT, AURA_EFFECT_HANDLE_REAL);

            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_hatchling_eated_AuraScript();
        }
};

// 139319 pool of feed dmg aur
class pool_of_feed_dmg_aura : public SpellScriptLoader
{
    public:
        pool_of_feed_dmg_aura() : SpellScriptLoader("pool_of_feed_dmg_aura") { }

        class pool_of_feed_dmg_aura_AuraScript : public AuraScript
        {
            PrepareAuraScript(pool_of_feed_dmg_aura_AuraScript);

            void OnPeriodic(AuraEffect const* aurEff)
            {
                if (!GetTarget() || !aurEff || GetId() == 134256)
                    return;

                if (!GetCaster() && GetTarget()->HasAura(138319))
                {
                    GetTarget()->RemoveAura(138319);
                    return;
                }

                if (!GetCaster())
                    return;

                // if somebody get 3 ticks, pool must be despawned
                if (aurEff->GetTickNumber() == 3)
                    if (TempSummon * pool = GetCaster()->ToTempSummon())
                    {
                        if (GetTarget()->HasAura(138319))
                            GetTarget()->RemoveAura(138319);
                        pool->DespawnOrUnsummon();
                        return;
                    }

                if (GetTarget()->GetDistance(GetCaster()) > 4.0f)
                    if (GetTarget()->HasAura(138319))
                        GetTarget()->RemoveAura(138319);
            }

            void OnRemove(AuraEffect const*  /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (GetTarget())
                    GetTarget()->CastSpell(GetTarget(),SPELL_SLIMED_DMG_INCREASE,true);
            }

            void Register()
            {
                OnEffectPeriodic += AuraEffectPeriodicFn(pool_of_feed_dmg_aura_AuraScript::OnPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
                AfterEffectRemove += AuraEffectRemoveFn(pool_of_feed_dmg_aura_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE, AURA_EFFECT_HANDLE_REAL);

            }
        };

        AuraScript* GetAuraScript() const
        {
            return new pool_of_feed_dmg_aura_AuraScript();
        }
};

// Stack of wings remove 133755
class remove_stack_wings : public SpellScriptLoader
{
    public:
        remove_stack_wings() : SpellScriptLoader("remove_stack_wings") { }

        class remove_stack_wings_AuraScript : public AuraScript
        {
            PrepareAuraScript(remove_stack_wings_AuraScript);

            void OnApply(AuraEffect const*  /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (!GetTarget())
                    return;

                if (GetTarget()->HasAura(SPELL_DAEDELIAN_WINGS))
                    GetTarget()->GetAura(SPELL_DAEDELIAN_WINGS)->ModStackAmount(-1);
            }

            void Register()
            {
                OnEffectApply += AuraEffectApplyFn(remove_stack_wings_AuraScript::OnApply, EFFECT_0, SPELL_AURA_FLY, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);

            }
        };

        AuraScript* GetAuraScript() const
        {
            return new remove_stack_wings_AuraScript();
        }
};

// Pool of feed(dmg) 68188, 70216
class pool_of_feed_dmg : public CreatureScript
{
    public:
        pool_of_feed_dmg() : CreatureScript("pool_of_feed_dmg") { }

        struct pool_of_feed_dmgAI : public ScriptedAI
        {
            pool_of_feed_dmgAI(Creature* creature) : ScriptedAI(creature) 
            {
                me->SetDisplayId(11686);
                me->AddAura(me->GetEntry() == NPC_POOL_OF_FEED_HATCHLING ? SPELL_FEED_POOL_VISUAL_HATCHLING : SPELL_FEED_POOL_VISUAL, me);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            }

            void UpdateAI(const uint32 diff)
            { 
                if (me->GetEntry() != NPC_POOL_OF_FEED_HATCHLING)
                {
                    std::list<Player*> PlayerList;
                    GetPlayerListInGrid(PlayerList, me, 4.0f);
                    for (auto playerTarget : PlayerList)
                        if (!playerTarget->HasAura(SPELL_FEED_POOL_DMG))
                            me->CastSpell(playerTarget,SPELL_FEED_POOL_DMG,true);
                }
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new pool_of_feed_dmgAI(creature);
        }
};

// Feed of Ji-Kun 68178 70130
class npc_jikun_feed : public CreatureScript
{
    public:
        npc_jikun_feed() : CreatureScript("npc_jikun_feed") { }

        struct npc_jikun_feedAI : public ScriptedAI
        {
            npc_jikun_feedAI(Creature* creature) : ScriptedAI(creature)
            {
            }

            void UpdateAI(const uint32 diff)
            {
                // When eat flyed, player may get it when move to it
                std::list<Player*> PlayerList;
                GetPlayerListInGrid(PlayerList, me, 2.0f);
                for (auto player : PlayerList)
                    if (player->HasAura(SPELL_DAEDELIAN_WINGS) && !player->HasAura(SPELL_PRIMAL_NUTRIMENT))
                    {
                        player->CastSpell(player,134256,true);
                        player->CastSpell(player,SPELL_PRIMAL_NUTRIMENT,true);
                        me->DespawnOrUnsummon();
                    }
            }

            void MovementInform(uint32 type, uint32 id)
            {
                switch (id)
                {
                    case POINT_GREEN_FEED_AIR: // when came to position in air must fall to ground
                        me->GetMotionMaster()->MoveJump(me->GetPositionX(),me->GetPositionY(),-31.0f,5.0f,17.0f,10.0f,POINT_GREEN_FEED_GROUND);
                        break;
                    case POINT_GREEN_FEED_GROUND: // when falled on ground must summon pool
                        DoCast(SPELL_SUMMON_POOL);
                        me->DespawnOrUnsummon();
                        break;
                    case POINT_FEED_CAME_TO_HATCHLING: // when came summon eat for hatchling and select hatchling to eat it
                        DoCast(SPELL_SUMMON_POOL_HATCHLINGS);
                        me->DespawnOrUnsummon();
                        break;
                }
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_jikun_feedAI(creature);
        }
};

// Feed summon 137528.
class spell_feed_summon : public SpellScriptLoader
{
    public:
        spell_feed_summon() : SpellScriptLoader("spell_feed_summon") { }

        class spell_feed_summon_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_feed_summon_AuraScript);

            void OnTick(AuraEffect const*  aurEff)
            {
                if (!GetCaster())
                    return;

                if (aurEff->GetTickNumber() == 1) // first tick send 3 eat for hatchlings
                {
                    if (Unit *target = SelectRandomTargetWithGuidOnRange(GetCaster()->ToUnit(), NPC_BEAM_NEST, 500.0f, false))
                        if (Creature* beam = target->ToCreature())
                            for (uint8 i = 0;i<=2;++i)
                                if (Creature *Feed = GetCaster()->SummonCreature(NPC_FEED_HATCHLINGS,GetCaster()->GetPositionX(),GetCaster()->GetPositionY(),GetCaster()->GetPositionZ()+6.0f,0.0f,TEMPSUMMON_TIMED_DESPAWN,12000))
                                {
                                    Position newPos,src;
                                    beam->GetPosition(&src);
                                    Feed->GetRandomPoint(src, 7.0f,newPos);
                                    Feed->GetMotionMaster()->MoveJump(newPos.GetPositionX(),newPos.GetPositionY(),newPos.GetPositionZ()+1.0f,15.0f,50.0f,10.0f,POINT_FEED_CAME_TO_HATCHLING);
                                }
                }
                else // tick 2 send "green eat" for pools
                {
                    for (uint8 i = 0;i<=2;++i)
                        if (Creature *FeedGreen = GetCaster()->SummonCreature(NPC_FEED_POOL,GetCaster()->GetPositionX(),GetCaster()->GetPositionY(),GetCaster()->GetPositionZ()+6.0f,0.0f,TEMPSUMMON_TIMED_DESPAWN,12000))
                        {
                            Position jumpPos;
                            FeedGreen->GetRandomPoint(Center,40.0f,jumpPos);
                            FeedGreen->GetMotionMaster()->MoveJump(jumpPos.GetPositionX(),jumpPos.GetPositionY(),6.0f,35.0f,20.0f,10.0f,POINT_GREEN_FEED_AIR);
                        }
                }
            }

            void Register()
            {
                OnEffectPeriodic += AuraEffectPeriodicFn(spell_feed_summon_AuraScript::OnTick, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_feed_summon_AuraScript();
        }
};

// Ji kun platform teleporter - 70640.
class npc_jikun_teleport : public CreatureScript
{
    public:
        npc_jikun_teleport() : CreatureScript("npc_jikun_teleport") { }

        struct npc_jikun_teleportAI : public ScriptedAI
        {
            npc_jikun_teleportAI(Creature* creature) : ScriptedAI(creature) 
            {
                me->SetDisableGravity(true);
                me->SetCanFly(true);
            }

            void UpdateAI(const uint32 diff)
            {
                std::list<Player*> PlayerList;
                GetPlayerListInGrid(PlayerList, me, 220);

                for (auto playerTarget : PlayerList)
                {
                    if (playerTarget->IsFlying())
                        continue;

                    float angle = playerTarget->GetAngle(Center.GetPositionX(),Center.GetPositionY());

                    if (playerTarget->GetDistance(me) <= 5.0f && !playerTarget->HasAura(149418)) // Jump to platform of jikun
                    {
                        playerTarget->CastSpell(playerTarget,149418,true);
                        playerTarget->JumpTo(24.0f,20.0f);
                    }

                    if (!playerTarget->HasAura(89428) && playerTarget->GetPositionZ() < -108.0f) // fall from platform to bottom
                    {
                        playerTarget->AddAura(89428,playerTarget);

                        float dist = playerTarget->GetDistance(Center)-87.0f;
                        playerTarget->GetMotionMaster()->MoveJump(playerTarget->GetPositionX() + dist * cos(angle),playerTarget->GetPositionY() + dist * sin(angle),-20.0f,15.0f,11.0f);
                    }

                    if (playerTarget->HasAura(89428) && playerTarget->GetPositionZ() > -21.0f) // come to return jump
                    {
                        playerTarget->RemoveAurasDueToSpell(89428);

                        float dist = playerTarget->GetDistance(Center)-37.0f;
                        playerTarget->GetMotionMaster()->MoveJump(playerTarget->GetPositionX() + dist * cos(angle),playerTarget->GetPositionY() + dist * sin(angle),-31.0f,30.0f,22.0f);
                    }
                }
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_jikun_teleportAI(creature);
        }
};

void AddSC_boss_jikun()
{
    new boss_jikun();
    new spell_infected_talons();
    new spell_caw();
    new egg_of_jikun();
    new young_hatchling_jikun();
    new npc_juvenile();
    new jikun_beam_target();
    new spell_feed_summon();
    new npc_jikun_feed();
    new pool_of_feed_dmg();
    new pool_of_feed_dmg_aura();
    new remove_stack_wings();
    new spell_hatchling_eated();
    new npc_jikun_teleport();
}