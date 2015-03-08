#include "throne_of_thunder.h"
#include "GridNotifiers.h"
#include "Vehicle.h"
#include "GameObjectAI.h"

enum eSpells
{
    //===============================================
    // Horridon

    // Triple Puncture
    SPELL_TRIPLE_PUNCTURE                   = 136767, // Casted on Main Tank

    // Double Swipe
    SPELL_DOUBLE_SWIPE                      = 136741, // Launch everything
    SPELL_DOUBLE_SWIPE_FRONT                = 136740, // Frontal damages
    SPELL_DOUBLE_SWIPE_BACK                 = 136739, // Back damages

    // Charge
    SPELL_CHARGE                            = 136769, 
	
    // Dire Call
    SPELL_DIRE_CALL                         = 137458, // Launch everything
    SPELL_SUMMON_DIREHORN_SPIRIT_SELECTOR   = 140947,
    SPELL_SUMMON_DIREHORN_SPIRIT            = 140945,

    // After a charge at a door
    SPELL_HEADACHE                          = 137294,
    SPELL_CRACKED_SHELL                     = 137240,

    // Enrage
    SPELL_RAMPAGE                           = 136821,

    //===============================================
    // Farraki
    SPELL_STONE_GAZE                        = 136708, // Stonegazer
    SPELL_BLAZING_SUNLIGHT                  = 136719, // Wastewalker
    SPELL_SUMMON_SAND_TRAP                  = 136725, // Wastewalker

    //===============================================
    // Gurubashi
    SPELL_RENDING_CHARGE                    = 136653, // Bloodlord
    SPELL_RENDING_CHARGE_DAMAGES            = 136654, // Bloodlord 
    SPELL_VENOM_BOLT_VOLLEY                 = 136587, // Venom Priest
    SPELL_SUMMON_VENOMOUS_EFFUSION          = 136644, // Venom Priest

    //===============================================
    // Drakkari
    SPELL_UNCONTROLLED_ABOMINATION          = 136709, // Risen Drakkari Champion / Warrior
    SPELL_DEADLY_PLAGUE                     = 136710, // Risen Drakkari Champion / Warrior 
    SPELL_MORTAL_STRIKE                     = 136670, // Frozen Warlord
    SPELL_SUMMON_FROZEN_ORB                 = 136564, // Frozen Warlord

    //===============================================
    // Amani
    SPELL_FIREBALL                          = 136465, // Flame Caster
    SPELL_SWIPE                             = 136463, // Warbear
    SPELL_CHAIN_LIGHTNING                   = 136480, // Beast Shaman
    SPELL_HEX_OF_CONFUSION                  = 136512, // 
    SPELL_SUMMON_LIGHTNING_NOVA_TOTEM       = 136487, // 

    //===============================================
    // Zandalari
    SPELL_DINO_MENDING                      = 136797, // Dinomancer
    SPELL_DINO_FORM                         = 137237, // 
    SPELL_SUMMON_ORB_OF_CONTROL_FARRAKI     = 137445, // 
    SPELL_SUMMON_ORB_OF_CONTROL_GURUBASHI   = 137447, // 
    SPELL_SUMMON_ORB_OF_CONTROL_DRAKKARI    = 137448, // 
    SPELL_SUMMON_ORB_OF_CONTROL_AMANI       = 137449, // 

    //===============================================
    // Summons
    SPELL_DIRE_FIXATION                     = 140946, // Dire Horn Spirit
    SPELL_WEAK_LINK                         = 140948, // Dire Horn Spirit
    SPELL_SAND_TRAP_PERIODIC                = 136724,
    SPELL_SAND_TRAP                         = 136723, // SpellScript needed (radius)
    SPELL_SUMMON_LIVING_POISON              = 136644, // Three times ?
    SPELL_LIVING_POISON_PERIODIC            = 136645,
    SPELL_LIVING_POISON                     = 136646,
    SPELL_FROZEN_BOLT_PERIODIC              = 136572,
    SPELL_FROZEN_BOLT                       = 136573, // Frozen Orb
    SPELL_LIGHTNING_NOVA_PERIODIC           = 136489, // Lightning Nova Totem
    SPELL_LIGHTNING_NOVA                    = 136490,

    //===============================================
    // Jalak
    SPELL_BESTIAL_CRY                       = 136817,

    //===============================================
    // Orb of Control
    SPELL_CONTROL_HORRIDON_FARRAKI          = 137433,
    SPELL_CONTROL_HORRIDON_GURUBASHI        = 137442,
    SPELL_CONTROL_HORRIDON_DRAKKARI         = 137443,
    SPELL_CONTROL_HORRIDON_AMANI            = 137444,
};

enum eEvents
{
    //===============================================
    // Horridon
    EVENT_TRIPLE_PUNCTURE                   = 1,
    EVENT_DOUBLE_SWIPE                      = 2,
    EVENT_HORRIDON_CHARGE                   = 3, // 
    EVENT_DIRE_CALL                         = 4,
    EVENT_PREPARE_CHARGE                    = 5, // Pseudo hack
    EVENT_CHARGE_AT_DOOR                    = 6,

    //===============================================
    // Farraki
    EVENT_STONE_GAZE                        = 7,
    EVENT_BLAZING_LIGHT                     = 8,
    EVENT_SUMMON_SAND_TRAP                  = 9,

    //===============================================
    // Gurubashi
    EVENT_RENDING_CHARGE                    = 10,
    EVENT_GURUBASHI_VENOM_BOLT_VOLLEY       = 11,
    EVENT_SUMMON_VENOMOUS_EFFUSION          = 12,

    //===============================================
    // Drakkari
    EVENT_SWITCH_TARGET                     = 13, // Risen Drakkari doesn't have a real threat list
    EVENT_MORTAL_STRIKE                     = 14,
    EVENT_SUMMON_FROZEN_ORB                 = 15,

    //===============================================
    // Amani
    EVENT_FIREBALL                          = 16,
    EVENT_SWIPE                             = 17,
    EVENT_CHAIN_LIGHTNING                   = 18,
    EVENT_HEX_OF_CONFUSION                  = 19,
    EVENT_SUMMON_LIGHTNING_NOVA_TOTEM       = 20,

    //===============================================
    // Zandalari
    EVENT_DINO_MENDING                      = 21,

    //===============================================
    // Summons
    EVENT_EFFUSION_VENOM_BOLT_VOLLEY        = 22,

    //===============================================
    // Jalak
    EVENT_BESTIAL_CRY                       = 23,

    //===============================================
    // Helper
    EVENT_SUMMON_MINOR                      = 24, // 
    EVENT_SUMMON_MAJOR                      = 25, // 
    EVENT_SUMMON_ZANDALARI_DINOMANCER       = 26, // 
    EVENT_SUMMON_MINOR_DRAKKARI             = 27, // 
    EVENT_TRANSITION                        = 28, // 

    //===============================================
    // RP Event Helper
    EVENT_CHECK_PLAYERS                     = 29, // Every 500 ms to not flood the world
    EVENT_INTRO_PART_I                      = 30, // Jalak begins it's speech... 
    EVENT_INTRO_PART_II                     = 31, // Continues
    EVENT_INTRO_PART_III                    = 32, // Horridon breaks free and go and kill every... oh wait... that's not the time
    EVENT_INTRO_PART_IV                     = 33, // Now Horridon breaks free 
};

enum eCreatures
{
    //===============================================
    // Farraki
    MOB_SUL_LITHUZ_STONEGAZER               = 69172,
    MOB_FARRAKI_SKIRMISHER                  = 69173,
    MOB_FARRAKI_WASTEWALKER                 = 69175, // Total of three will be called to action

    //===============================================
    // Gurubashi
    MOB_GURUBASHI_BLOODLORD                 = 69167,
    MOB_GURUBASHI_VENOM_PRIEST              = 69164, // Total of three will be called to action

    //===============================================
    // Drakkari
    MOB_RISEN_DRAKKARI_WARRIOR              = 69184,
    MOB_RISEN_DRAKKARI_CHAMPION             = 69185,
    MOB_DRAKKARI_FROZEN_WARLORD             = 69178, // Total of three will be called to action

    //===============================================
    // Amani
    MOB_AMANI_SHI_PROTECTOR                 = 69169,
    MOB_AMANI_SHI_FLAME_CASTER              = 69168,
    MOB_AMANI_WARBEAR                       = 69177, // Total of three will be called to action
    MOB_AMANI_SHI_BEAST_SHAMAN              = 69176, // Riding Amani Warbears, attackable once Amani Warbear has fallen

    //===============================================
    // Zandalari
    MOB_ZANDALARI_DINOMANCER                = 69221, // Jumping periodically during subphases

    //===============================================
    // Summons
    MOB_DIREHORN_SPIRIT                     = 70688, // Only spawn in Heroic
    MOB_SAND_TRAP                           = 69346, // Summoned by Farraki Wastewalker
    MOB_VENOMOUS_EFFUSION                   = 69314, // Summoned by Gurubashi Venom Priests
    MOB_LIVING_POISON                       = 69313, // Created when a Venomous Effusion is created
    MOB_FROZEN_ORB                          = 69268, // Summoned by Drakkari Frozen Warlords
    MOB_LIGHTNING_NOVA_TOTEM                = 69215, // Summoned by Amani'Shi Beast Shaman

    //===============================================
    // Others
};

enum eActions
{
    //===============================================
    // Controller
    ACTION_FIGHT_BEGIN                      = 0,
    ACTION_FIGHT_RESET                      = 1,
    ACTION_ENTER_NEXT_TRASH_PHASE           = 2,
    ACTION_FIGHT_END                        = 3,
    ACTION_PREPARE_TRANSITION               = 4,

    //===============================================
    // Jalak
    ACTION_ENTER_PHASE_TWO                  = 5,

    //===============================================
    // Horridon
    ACTION_INTRO                            = 6,
    ACTION_PREPARE_CHARGE                   = 7,
    ACTION_CONTROL_APPLY                    = 8,
};


enum eMotions
{
    //===============================================
    // Majors
    MOTION_MAJOR_JUMP                       = 0,

    //===============================================
    // Zandalari Dinomancers
    MOTION_DINOMANCER_JUMP                  = 1,

    //===============================================
    // Horridon
    MOTION_HORRIDON_CHARGE                  = 2,
    MOTION_HORRIDON_DOOR_CHARGE             = 3,

};


enum eTalks
{
    TALK_ENTER_PHASE_2                      = 0, // Hahaha, now it be my turn
    TALK_ON_HORRIDON_KILLED_UNIT            = 1, // Da'kala koraste
    TALK_INTRO_FIRST                        = 2, // Welcome weaklings
    TALK_INTRO_SECOND                       = 3, // The tribes have assembled
    TALK_INTRO_THIRD                        = 4, // Now, witness the true might
    TALK_ON_JALAK_KILLED_UNIT               = 5, // Ya skull
    TALK_DRAKKARI                           = 6, // Drakkari tribe
    TALK_GURUBASHI                          = 7,
    TALK_FARRAKI                            = 8,
    TALK_AMANI                              = 9,
};

enum eGameObjects
{
    //===============================================
    // Orbs of Control
    GOB_ORB_OF_CONTROL_FARRAKI              = 218193,
    GOB_ORB_OF_CONTROL_GURUBASHI            = 218374,
    GOB_ORB_OF_CONTROL_DRAKKARI             = 218375,
    GOB_ORB_OF_CONTROL_AMANI                = 218376,

    //===============================================
    // Others
    GOB_HORRIDON_PRISON_DOOR                = 218674,
};

enum eDatas
{
    DATA_AMANI_BEAST_SHAMAN_LIGHTNING_COUNT = 0, // To know how many time we stroke
};


enum eBossPhases
{
    BOSS_PHASE_SUMMONS                      = 0,
    BOSS_PHASE_JALAK                        = 1
};
#define MAX_BOSS_PHASE BOSS_PHASE_JALAK + 1


enum eTrashPhases
{
    TRASH_PHASE_FARRAKI                     = 0,
    TRASH_PHASE_GURUBASHI                   = 1,
    TRASH_PHASE_DRAKKARI                    = 2,
    TRASH_PHASE_AMANI                       = 3,

    MAX_TRASH_PHASE                         = TRASH_PHASE_AMANI + 1,
};


enum eMajorsCycle
{
    MAJOR_CYCLE_FIRST                       = 0,
    MAJOR_CYCLE_SECOND                      = 1,

    MAX_MAJOR_CYCLE                         = 2,
};


enum eDrakkariCycle
{
    DRAKKARI_CYCLE_FIRST                    = 0,
    DRAKKARI_CYCLE_SECOND                   = 1,

    MAX_DRAKKARI_CYCLE                      = 2,
};

//=========================================================
// Positions

#define MAX_SUMMON_POSITIONS_BY_PHASE   3
#define MAX_JUMP_POSITIONS_BY_PHASE     3

// Major trashes jump positions
static const Position farrakiWastewalkerJumpPositions[MAX_JUMP_POSITIONS_BY_PHASE] =
{
    { 5467.254395f, 5816.405762f, 129.902646f, 4.075048f },
    { 5483.035645f, 5790.856445f, 129.902646f, 3.160844f },
    { 5468.463867f, 5797.777344f, 129.902646f, 3.943101f },
};

static const Position gurubashiVenomPriestJumpPositions[MAX_JUMP_POSITIONS_BY_PHASE] =
{
    { 5498.676270f, 5716.721680f, 129.902646f, 1.986669f },
    { 5474.693359f, 5712.250000f, 129.902646f, 2.587496f },
    { 5465.093750f, 5962.224609f, 129.902646f, 2.188514f },
};

static const Position drakkariFrozenWarlordJumpPositions[MAX_JUMP_POSITIONS_BY_PHASE] =
{
    { 5400.352051f, 5693.921875f, 129.902646f, 0.728940f },
    { 5392.058105f, 5711.792969f, 129.902646f, 0.918221f },
    { 5371.409809f, 5728.193848f, 129.902646f, 0.607201f },
};

static const Position amaniWarbearJumpPositions[MAX_JUMP_POSITIONS_BY_PHASE] =
{
    { 5363.801270f, 5787.882812f, 129.902646f, 5.383204f },
    { 5385.030273f, 5793.059570f, 129.902646f, 5.625892f },
    { 5397.149902f, 5811.657227f, 129.902646f, 5.167220f },
};


// Summoning of minor and medium trashes positions
static const Position farrakiTrashSummonPositions[MAX_SUMMON_POSITIONS_BY_PHASE] =
{
    { 5505.863281f, 5841.025391f, 130.537231f, 0.000000f },
    { 5514.541992f, 5841.049316f, 130.537231f, 0.000000f },
    { 5513.420898f, 5827.835938f, 130.537231f, 0.000000f },
};

static const Position gurubashiTrashSummonPositions[MAX_SUMMON_POSITIONS_BY_PHASE] =
{
    { 5520.958008f, 5675.670898f, 130.537231f, 0.000000f },
    { 5519.500000f, 5667.600098f, 130.537231f, 0.000000f },
    { 5509.516113f, 5668.375000f, 130.537231f, 0.000000f },
};

static const Position drakkariTrashSummonPositions[MAX_SUMMON_POSITIONS_BY_PHASE] =
{
    { 5358.775391f, 5662.011719f, 130.537231f, 0.000000f },
    { 5346.132324f, 5668.255859f, 130.537231f, 0.000000f },
    { 5346.598633f, 5677.144043f, 130.537231f, 0.000000f },
};

static const Position amaniTrashSummonPositions[MAX_SUMMON_POSITIONS_BY_PHASE] =
{
    { 5346.283203f, 5824.987305f, 130.537231f, 0.000000f },
    { 5348.529785f, 5839.762207f, 130.537231f, 0.000000f },
    { 5360.542969f, 5844.966309f, 130.537231f, 0.000000f },
};


// Jump positions for Zandalari Dinomancers
static const Position zandalariDinomancersJumpPositions[MAX_TRASH_PHASE][MAX_JUMP_POSITIONS_BY_PHASE] =
{
    {
        { 5467.254395f, 5816.405762f, 129.902646f, 4.075048f },
        { 5483.035645f, 5790.856445f, 129.902646f, 3.160844f },
        { 5468.463867f, 5797.777344f, 129.902646f, 3.943101f },
    },
    {
        { 5498.676270f, 5716.721680f, 129.902646f, 1.986669f },
        { 5474.693359f, 5712.250000f, 129.902646f, 2.587496f },
        { 5465.093750f, 5962.224609f, 129.902646f, 2.188514f },
    },
    {
        { 5400.352051f, 5693.921875f, 129.902646f, 0.728940f },
        { 5392.058105f, 5711.792969f, 129.902646f, 0.918221f },
        { 5371.409809f, 5728.193848f, 129.902646f, 0.607201f },
    },
    {
        { 5363.801270f, 5787.882812f, 129.902646f, 5.383204f },
        { 5385.030273f, 5793.059570f, 129.902646f, 5.625892f },
        { 5397.149902f, 5811.657227f, 129.902646f, 5.167220f },
    }
};

// Summoning positions for Zandalari Dinomancers
static const Position zandalariDinomancersSummonPositions[] =
{
    { 5326.83f, 5787.72f, 169.237f, 6.10253f },
    { 5536.14f, 5721.06f, 169.238f, 2.95279f },
    { 5325.51f, 5720.81f, 169.237f, 0.32948f },
    { 5418.50f, 5666.55f, 192.349f, 1.45472f },
    { 5447.01f, 5667.53f, 192.352f, 1.64919f },
    { 5340.08f, 5648.40f, 190.758f, 0.87616f },
    { 5521.05f, 5649.76f, 190.653f, 2.39193f },
    { 5537.03f, 5784.27f, 169.238f, 3.67703f },
    { 5534.14f, 5838.86f, 190.416f, 3.98585f },
    { 5377.32f, 5884.95f, 190.356f, 5.23621f },
};

// Relocation of Horridon's Home Position
static const Position middlePosition = { 5431.621094f, 5763.865723f, 129.606461f, 1.57860f };

//=========================================================
// Helper functions


static Creature *GetHorridon(WorldObject *source)
{
    return ObjectAccessor::GetCreature(*source, source->GetInstanceScript()->GetData64(BOSS_HORRIDON));
}

static Creature *GetJalak(WorldObject *source)
{
    return ObjectAccessor::GetCreature(*source, source->GetInstanceScript()->GetData64(MOB_WAR_GOD_JALAK));
}

static Creature *GetHorridonHelper(WorldObject *source)
{
    return ObjectAccessor::GetCreature(*source, source->GetInstanceScript()->GetData64(NPC_HORRIDON_EVENT_HELPER));
}

static GameObject *GetDoorByPhase(eTrashPhases phase, WorldObject *source)
{
    switch (phase)
    {
        case TRASH_PHASE_FARRAKI:
            return ObjectAccessor::GetGameObject(*source, source->GetInstanceScript()->GetData64(GOB_TRIBAL_DOOR_FARRAKI));

        case TRASH_PHASE_GURUBASHI:
            return ObjectAccessor::GetGameObject(*source, source->GetInstanceScript()->GetData64(GOB_TRIBAL_DOOR_GURUBASHI));

        case TRASH_PHASE_DRAKKARI:
            return ObjectAccessor::GetGameObject(*source, source->GetInstanceScript()->GetData64(GOB_TRIBAL_DOOR_DRAKKARI));

        case TRASH_PHASE_AMANI:
            return ObjectAccessor::GetGameObject(*source, source->GetInstanceScript()->GetData64(GOB_TRIBAL_DOOR_AMANI));

        default:
            return NULL;
    }
}

static GameObject *GetDoorByOrb(GameObject *orb)
{
    switch (orb->GetEntry())
    {
        case GOB_ORB_OF_CONTROL_FARRAKI:
            return ObjectAccessor::GetGameObject(*orb, orb->GetInstanceScript()->GetData64(GOB_TRIBAL_DOOR_FARRAKI));

        case GOB_ORB_OF_CONTROL_GURUBASHI:
            return ObjectAccessor::GetGameObject(*orb, orb->GetInstanceScript()->GetData64(GOB_TRIBAL_DOOR_GURUBASHI));

        case GOB_ORB_OF_CONTROL_DRAKKARI:
            return ObjectAccessor::GetGameObject(*orb, orb->GetInstanceScript()->GetData64(GOB_TRIBAL_DOOR_DRAKKARI));

        case GOB_ORB_OF_CONTROL_AMANI:
            return ObjectAccessor::GetGameObject(*orb, orb->GetInstanceScript()->GetData64(GOB_TRIBAL_DOOR_AMANI));

        default:
            return NULL;
    }
}

static GameObject *GetDoorBySpell(uint32 uiSpellId, WorldObject *pSource)
{
    switch (uiSpellId)
    {
        case SPELL_CONTROL_HORRIDON_FARRAKI:
            return ObjectAccessor::GetGameObject(*pSource, pSource->GetInstanceScript()->GetData64(GOB_TRIBAL_DOOR_FARRAKI));

        case SPELL_CONTROL_HORRIDON_GURUBASHI:
            return ObjectAccessor::GetGameObject(*pSource, pSource->GetInstanceScript()->GetData64(GOB_TRIBAL_DOOR_GURUBASHI));

        case SPELL_CONTROL_HORRIDON_DRAKKARI:
            return ObjectAccessor::GetGameObject(*pSource, pSource->GetInstanceScript()->GetData64(GOB_TRIBAL_DOOR_DRAKKARI));

        case SPELL_CONTROL_HORRIDON_AMANI:
            return ObjectAccessor::GetGameObject(*pSource, pSource->GetInstanceScript()->GetData64(GOB_TRIBAL_DOOR_AMANI));

        default:
            return 0;
    }
}

static uint32 GetSummoningOrbSpellByPhase(eTrashPhases phase)
{
    switch (phase)
    {
        case TRASH_PHASE_FARRAKI:
            return SPELL_SUMMON_ORB_OF_CONTROL_FARRAKI;

        case TRASH_PHASE_GURUBASHI:
            return SPELL_SUMMON_ORB_OF_CONTROL_GURUBASHI;

        case TRASH_PHASE_DRAKKARI:
            return SPELL_SUMMON_ORB_OF_CONTROL_DRAKKARI;

        case TRASH_PHASE_AMANI:
            return SPELL_SUMMON_ORB_OF_CONTROL_AMANI;

        default:
            return 0;
    }
}

static uint32 GetControlSpellByOrb(GameObject *pOrb)
{
    switch (pOrb->GetEntry())
    {
        case GOB_ORB_OF_CONTROL_FARRAKI:
            return SPELL_CONTROL_HORRIDON_FARRAKI;

        case GOB_ORB_OF_CONTROL_GURUBASHI:
            return SPELL_CONTROL_HORRIDON_GURUBASHI;

        case GOB_ORB_OF_CONTROL_DRAKKARI:
            return SPELL_CONTROL_HORRIDON_DRAKKARI;

        case GOB_ORB_OF_CONTROL_AMANI:
            return SPELL_CONTROL_HORRIDON_AMANI;

        default:
            return 0;
    }
}

static uint32 GetControlSpellByPhase(eTrashPhases ePhase)
{
    switch (ePhase)
    {
        case TRASH_PHASE_FARRAKI:
            return SPELL_CONTROL_HORRIDON_FARRAKI;

        case TRASH_PHASE_GURUBASHI:
            return SPELL_CONTROL_HORRIDON_GURUBASHI;

        case TRASH_PHASE_DRAKKARI:
            return SPELL_CONTROL_HORRIDON_DRAKKARI;

        case TRASH_PHASE_AMANI:
            return SPELL_CONTROL_HORRIDON_AMANI;

        default:
            return 0;
    }
}


static Position GetChargePositionByDoor(GameObject *pDoor)
{
    switch (pDoor->GetEntry())
    {
        case GOB_TRIBAL_DOOR_FARRAKI:
            return { 5502.53f, 5826.19f, 130.53f, 0.82f };

        case GOB_TRIBAL_DOOR_GURUBASHI:
            return { 5501.19f, 5865.15f, 130.53f, 5.39f };

        case GOB_TRIBAL_DOOR_DRAKKARI:
            return { 5361.72f, 5863.75f, 130.53f, 3.89f };

        case GOB_TRIBAL_DOOR_AMANI:
            return { 5363.09f, 5823.77f, 130.53f, 2.35f };

        default:
            return { 0.0f, 0.0f, 0.0f, 0.0f };
    }
}

// Horridon AI
class boss_horridon : public CreatureScript
{
public:
    boss_horridon() : CreatureScript("boss_horridon") { }

    struct boss_horridon_AI : public BossAI
    {
        boss_horridon_AI(Creature *pCreature) : BossAI(pCreature, DATA_HORRIDON), bJalakCalled(false)
        {
            pChargeDoor = NULL;
            events.Reset();
        }

        void Reset()
        {
            pInstance->SetBossState(DATA_HORRIDON, NOT_STARTED);

            events.Reset();
            pChargeDoor = NULL;
            bJalakCalled = false;

            me->RemoveAurasDueToSpell(SPELL_HEADACHE);
            me->RemoveAurasDueToSpell(SPELL_CRACKED_SHELL);
            me->RemoveAurasDueToSpell(SPELL_RAMPAGE);

            if (Creature *pHorridonHelper = GetHorridonHelper(me))
            {
                if (CreatureAI* pHelperAI = pHorridonHelper->AI())
                    pHelperAI->DoAction(ACTION_FIGHT_RESET);
            }
        }

        void EnterCombat(Unit *pVictim)
        {
            pInstance->SetBossState(DATA_HORRIDON, IN_PROGRESS);
            pInstance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);

            events.ScheduleEvent(EVENT_TRIPLE_PUNCTURE, 10 * IN_MILLISECONDS);
            events.ScheduleEvent(EVENT_DOUBLE_SWIPE, 15 * IN_MILLISECONDS);
            events.ScheduleEvent(EVENT_HORRIDON_CHARGE, 13 * IN_MILLISECONDS);

            if (IsHeroic())
                events.ScheduleEvent(EVENT_DIRE_CALL, 8 * IN_MILLISECONDS);

            if (Creature *pHorridonHelper = GetHorridonHelper(me))
            {
                if (CreatureAI* pHelperAI = pHorridonHelper->AI())
                    pHelperAI->DoAction(ACTION_FIGHT_BEGIN);
            }
        }

        void DoAction(int32 iAction)
        {
            switch (iAction)
            {
                case ACTION_INTRO:
                    me->GetMotionMaster()->MoveCharge(middlePosition.GetPositionX(), middlePosition.GetPositionY(), middlePosition.GetPositionZ(), 42.0f, MOTION_HORRIDON_CHARGE);
                    me->SetHomePosition(middlePosition);
                    break;

                default:
                    break;
            }
        }

        void UpdateAI(uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if (HealthBelowPct(30) && !bJalakCalled)
            {
                bJalakCalled = true;
                if (Creature *pJalak = GetJalak(me))
                {
                    if (CreatureAI* pJalakAI = pJalak->AI())
                        pJalakAI->DoAction(ACTION_ENTER_PHASE_TWO);
                }
            }

            events.Update(uiDiff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            while (uint32 uiEventId = events.ExecuteEvent())
            {
                switch (uiEventId)
                {
                case EVENT_TRIPLE_PUNCTURE:
                    if (Unit *pVictim = me->GetVictim())
                        DoCast(pVictim, SPELL_TRIPLE_PUNCTURE);
                    events.ScheduleEvent(EVENT_TRIPLE_PUNCTURE, urand(10, 15) * IN_MILLISECONDS);
                    break;

                case EVENT_DOUBLE_SWIPE:
                    DoCastAOE(SPELL_DOUBLE_SWIPE);
                    events.ScheduleEvent(EVENT_DOUBLE_SWIPE, urand(12, 18) * IN_MILLISECONDS);
                    break;

                case EVENT_HORRIDON_CHARGE:
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 1))
                        DoCast(pTarget, SPELL_CHARGE);
                    events.ScheduleEvent(EVENT_HORRIDON_CHARGE, urand(15, 25) * IN_MILLISECONDS);
                    break;

                case EVENT_DIRE_CALL:
                    DoCastAOE(SPELL_DIRE_CALL);
                    events.ScheduleEvent(EVENT_DIRE_CALL, urand(8, 15) * IN_MILLISECONDS);
                    break;

                case EVENT_CHARGE_AT_DOOR:
                    break;

                default:
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit *pKiller)
        {
            if (GetJalak(me) && GetJalak(me)->isDead())
            {
                pInstance->SetBossState(DATA_HORRIDON, DONE);
                if (Creature *pController = GetHorridonHelper(me))
                    pController->AI()->DoAction(ACTION_FIGHT_END);
            }

            pInstance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void MovementInform(uint32 uiMotionType, uint32 uiMovementId)
        {
            if (uiMotionType == EFFECT_MOTION_TYPE)
            {
                switch (uiMovementId)
                {
                case EVENT_CHARGE:
                    DoCastAOE(SPELL_DOUBLE_SWIPE);
                    break;

                default:
                    break;
                }
            }
        }

        void KilledUnit(Unit *pKilled)
        {
            if (Creature *pJalak = GetJalak(me))
                pJalak->AI()->Talk(TALK_ON_HORRIDON_KILLED_UNIT);
        }

        void ChargeAtDoor(GameObject *pDoor)
        {
            if (!pDoor)
                return;

            pChargeDoor = pDoor;
            Position chargePosition = GetChargePositionByDoor(pDoor);
            me->GetMotionMaster()->MoveCharge(chargePosition.GetPositionX(), chargePosition.GetPositionY(), chargePosition.GetPositionZ(), 42.0f, MOTION_HORRIDON_DOOR_CHARGE);
            DoCast(me, SPELL_HEADACHE);
        }

    private:
        EventMap        events;
        GameObject      *pChargeDoor;
        InstanceScript  *pInstance;
        bool            bJalakCalled;
    };

    CreatureAI *GetAI(Creature *pCreature) const
    {
        return new boss_horridon(pCreature);
    }
};

// Helper AI
class npc_horridon_event_helper : public CreatureScript
{
    public:
        npc_horridon_event_helper() : CreatureScript("npc_horrion_event_helper") { }

    struct npc_horridon_event_helper_AI : public ScriptedAI
    {   
            npc_horridon_event_helper_AI(Creature *pCreature) : ScriptedAI(pCreature)
            {
                events.Reset();
                summons.clear();
                jumpers.clear();

                uiTrashPhase    = MAX_TRASH_PHASE;
                uiMinorTrashId  = 0;
                memset(&uiMediumTrashId, 0, sizeof(uiMediumTrashId));
                uiMajorTrashId  = 0;
                uiMajorCycle    = MAJOR_CYCLE_FIRST;
                uiDrakkariCycle = DRAKKARI_CYCLE_FIRST;

                summonPositions = NULL;
                jumpPositions   = NULL;
            }
            
            EventMap                events;
            InstanceScript          *pInstance;
            const Position*         summonPositions;
            const Position*         jumpPositions;
            std::list<Creature*>    summons;
            std::list<Creature*>    jumpers;
            uint32                  uiTrashPhase;
            uint32                  uiMinorTrashId;
            uint32                  uiMediumTrashId[2];
            uint32                  uiMajorTrashId;
            uint32                  uiMajorCycle;
            uint32                  uiDrakkariCycle;

            void DoAction(int32 iAction)
            {
                switch (iAction)
                {
                    case ACTION_FIGHT_BEGIN:
                        FightBegin();
                        break;

                    case ACTION_ENTER_NEXT_TRASH_PHASE:
                        EnterNextPhase();
                        break;

                    case ACTION_FIGHT_RESET:
                        FightReset();
                        break;

                    case ACTION_FIGHT_END:
                        FightEnd();
                        break;

                    case ACTION_PREPARE_TRANSITION:
                        PrepareTransition();
                        break;

                    default:
                        break;
                }
            }

            void UpdateAI(uint32 uiDiff)
            {
                if (uiTrashPhase == MAX_TRASH_PHASE)
                    return;

                events.Update(uiDiff);

                while (uint32 uiEventId = events.ExecuteEvent())
                {
                    switch (uiEventId)
                    {
                        case EVENT_SUMMON_MINOR:
                            if (summonPositions)
                            {
                                std::list<uint32> entries;

                                if (uiMinorTrashId)
                                    entries.push_back(uiMinorTrashId);
                                if (uiMediumTrashId[0])
                                    entries.push_back(uiMediumTrashId[0]);
                                if (uiMediumTrashId[1])
                                    entries.push_back(uiMediumTrashId[1]);

                                if (entries.empty()) // Entries is empty, no need to reschedule event
                                    break;

                                for (uint8 i = 0; i < MAX_SUMMON_POSITIONS_BY_PHASE; ++i)
                                {
                                    uint32 uiSummonEntry = Trinity::Containers::SelectRandomContainerElement(entries);
                                    me->SummonCreature(uiSummonEntry, summonPositions[urand(0, MAX_SUMMON_POSITIONS_BY_PHASE - 1)]);
                                }

                                if (GameObject *pDoor = GetDoorByPhase((eTrashPhases)uiTrashPhase, me))
                                    pDoor->Use(me);

                                events.ScheduleEvent(EVENT_SUMMON_MINOR, urand(10, 20) * IN_MILLISECONDS);
                            }
                            break;

                        case EVENT_SUMMON_MAJOR:
                            if (jumpPositions)
                            {
                                std::list<Creature*> majors;
                                GetCreatureListWithEntryInGrid(majors, me, uiMajorTrashId, 50000.0f);

                                if (!majors.empty())
                                {
                                    if (uiMajorCycle == MAJOR_CYCLE_FIRST)
                                    {
                                        if (Creature *pCreature = Trinity::Containers::SelectRandomContainerElement(majors))
                                        {
                                            pCreature->GetMotionMaster()->MoveJump(jumpPositions[urand(0, MAX_JUMP_POSITIONS_BY_PHASE - 1)], 20.0f, 42.0f, MOTION_MAJOR_JUMP);
                                            jumpers.push_back(pCreature);
                                        }
                                    }
                                    else
                                    {
                                        for (Creature *pCreature : majors)
                                        {
                                            if (!pCreature->IsInCombat())
                                            {
                                                pCreature->GetMotionMaster()->MoveJump(jumpPositions[urand(0, MAX_JUMP_POSITIONS_BY_PHASE - 1)], 20.0f, 42.0f, MOTION_MAJOR_JUMP);
                                                jumpers.push_back(pCreature);
                                            }
                                        }
                                    }
                                }

                                ++uiMajorCycle;
                                events.ScheduleEvent(EVENT_SUMMON_MAJOR, 20 * IN_MILLISECONDS);
                            }
                            break;

                        case EVENT_SUMMON_ZANDALARI_DINOMANCER:
                        {
                            Position const summonPosition = zandalariDinomancersSummonPositions[urand(0, 9)];
                            if (Creature *pDinomancer = me->SummonCreature(MOB_ZANDALARI_DINOMANCER, summonPosition))
                                pDinomancer->GetMotionMaster()->MoveJump(zandalariDinomancersJumpPositions[uiTrashPhase][urand(0, MAX_SUMMON_POSITIONS_BY_PHASE - 1)], 20.0f, 42.0f, MOTION_DINOMANCER_JUMP);
                            events.ScheduleEvent(EVENT_SUMMON_ZANDALARI_DINOMANCER, MINUTE * IN_MILLISECONDS);
                            break;
                        }

                        case EVENT_SUMMON_MINOR_DRAKKARI:
                        {
                            switch (uiDrakkariCycle)
                            {
                                case DRAKKARI_CYCLE_FIRST:
                                    uiDrakkariCycle = DRAKKARI_CYCLE_SECOND;
                                    if (summonPositions)
                                    {
                                        me->SummonCreature(MOB_RISEN_DRAKKARI_CHAMPION, summonPositions[urand(0, MAX_SUMMON_POSITIONS_BY_PHASE - 1)]);
                                        me->SummonCreature(MOB_RISEN_DRAKKARI_WARRIOR, summonPositions[urand(0, MAX_SUMMON_POSITIONS_BY_PHASE - 1)]);
                                        events.ScheduleEvent(EVENT_SUMMON_MINOR_DRAKKARI, urand(6, 10) * IN_MILLISECONDS);
                                    }
                                    break;

                                case DRAKKARI_CYCLE_SECOND:
                                    uiDrakkariCycle = DRAKKARI_CYCLE_FIRST;
                                    if (summonPositions)
                                    {
                                        me->SummonCreature(MOB_RISEN_DRAKKARI_CHAMPION, summonPositions[urand(0, MAX_SUMMON_POSITIONS_BY_PHASE - 1)]);
                                        events.ScheduleEvent(EVENT_SUMMON_MINOR_DRAKKARI, urand(8, 15) * IN_MILLISECONDS);
                                    }
                                    break;
                                }

                                if (GameObject *pDoor = GetDoorByPhase((eTrashPhases)uiTrashPhase, me))
                                    pDoor->Use(me);
                                break;
                        }

                        case EVENT_TRANSITION:
                            EnterNextPhase();
                            break;

                        default:
                            break;
                    }
                }
            }

            void JustSummoned(Creature *pSummoned)
            {
                summons.push_back(pSummoned);
            }

            void SummonedCreatureDespawn(Creature *pSummoned)
            {
                summons.remove(pSummoned);
            }

            eTrashPhases GetTrashPhase() const
            {
                return (eTrashPhases)uiTrashPhase;
            }

            void FightReset()
            {
                // Be sure that we have not already reset
                if (uiTrashPhase == MAX_TRASH_PHASE && summonPositions == NULL && jumpPositions == NULL)
                    return;

                // Respawn dead jumpers
                for (Creature *pCreatureIter : jumpers)
                {
                    if (pCreatureIter->isDead())
                    {
                        pCreatureIter->Respawn();
                        if (pCreatureIter->AI())
                            pCreatureIter->AI()->EnterEvadeMode();
                    }
                }

                if (Creature *pHorridon = GetHorridon(me))
                {
                    if (pHorridon->isDead())
                        pHorridon->Respawn();
                }

                if (Creature *pWarGodJalak = GetJalak(me))
                {
                    if (pWarGodJalak->isDead())
                    {
                        pWarGodJalak->Respawn();
                        pWarGodJalak->AI()->EnterEvadeMode();
                    }
                }

                events.Reset();
                summons.clear();
                jumpers.clear();

                uiTrashPhase    = MAX_TRASH_PHASE;
                uiMinorTrashId  = 0;
                memset(&uiMediumTrashId, 0, sizeof(uiMediumTrashId));
                uiMajorTrashId  = 0;
                uiMajorCycle    = MAJOR_CYCLE_FIRST;
                uiDrakkariCycle = DRAKKARI_CYCLE_FIRST;

                summonPositions = NULL;
                jumpPositions   = NULL;
            }

            void FightBegin()
            {
                uiTrashPhase        = TRASH_PHASE_FARRAKI;
                uiMinorTrashId      = MOB_SUL_LITHUZ_STONEGAZER;
                uiMediumTrashId[0]  = MOB_FARRAKI_SKIRMISHER;
                uiMediumTrashId[1]  = 0;
                uiMajorTrashId      = MOB_FARRAKI_WASTEWALKER;
                summonPositions     = farrakiTrashSummonPositions;
                jumpPositions       = farrakiWastewalkerJumpPositions;

                if (Creature *pJalak = GetJalak(me))
                    pJalak->AI()->Talk(TALK_FARRAKI);

                events.ScheduleEvent(EVENT_SUMMON_MINOR, 5 * IN_MILLISECONDS);
                events.ScheduleEvent(EVENT_SUMMON_MAJOR, 20 * IN_MILLISECONDS);
                events.ScheduleEvent(EVENT_SUMMON_ZANDALARI_DINOMANCER, MINUTE * IN_MILLISECONDS);
            }

            void FightEnd()
            {
                summons.clear();
                jumpers.clear();
                events.Reset();

                uiTrashPhase = MAX_TRASH_PHASE;
            }

            void EnterNextPhase()
            {
                uiMajorCycle    = MAJOR_CYCLE_FIRST;
                uiDrakkariCycle = DRAKKARI_CYCLE_FIRST;

                ++uiTrashPhase;
                if (Creature *pJalak = GetJalak(me))
                {
                    switch (uiTrashPhase)
                    {
                        case TRASH_PHASE_FARRAKI:
                            break;

                        case TRASH_PHASE_GURUBASHI:
                            uiMinorTrashId      = MOB_GURUBASHI_BLOODLORD;
                            uiMajorTrashId      = MOB_GURUBASHI_VENOM_PRIEST;
                            memset(&uiMediumTrashId, 0, sizeof(uiMediumTrashId));
                            summonPositions     = gurubashiTrashSummonPositions;
                            jumpPositions       = gurubashiVenomPriestJumpPositions;
                            pJalak->AI()->Talk(TALK_GURUBASHI);
                            break;

                        case TRASH_PHASE_DRAKKARI:
                            uiMajorTrashId      = MOB_DRAKKARI_FROZEN_WARLORD;
                            summonPositions     = drakkariTrashSummonPositions;
                            jumpPositions       = drakkariFrozenWarlordJumpPositions;
                            pJalak->AI()->Talk(TALK_DRAKKARI);
                            break;

                        case TRASH_PHASE_AMANI:
                            uiMinorTrashId      = MOB_AMANI_SHI_PROTECTOR;
                            uiMediumTrashId[0]  = MOB_AMANI_SHI_FLAME_CASTER;
                            uiMediumTrashId[1]  = 0;
                            uiMajorTrashId      = MOB_AMANI_WARBEAR;
                            summonPositions     = amaniTrashSummonPositions;
                            jumpPositions       = amaniWarbearJumpPositions;
                            pJalak->AI()->Talk(TALK_AMANI);
                            break;

                        case MAX_TRASH_PHASE:
                            if (Creature *pJalak = GetJalak(me))
                                pJalak->AI()->DoAction(ACTION_ENTER_PHASE_TWO);
                            return;

                        default:
                            return;
                    }

                    events.Reset();


                    if (uiTrashPhase != TRASH_PHASE_DRAKKARI)
                    {
                        events.ScheduleEvent(EVENT_SUMMON_MINOR, 5 * IN_MILLISECONDS);
                    }
                    else
                    {
                        events.ScheduleEvent(EVENT_SUMMON_MINOR_DRAKKARI, 5 * IN_MILLISECONDS);
                    }

                    events.ScheduleEvent(EVENT_SUMMON_MAJOR, 20 * IN_MILLISECONDS);
                    events.ScheduleEvent(EVENT_SUMMON_ZANDALARI_DINOMANCER, 30 * IN_MILLISECONDS);
                }
            }

            void PrepareTransition()
            {
                events.Reset();
                events.ScheduleEvent(EVENT_TRANSITION, 45 * IN_MILLISECONDS);
            }
        };

        CreatureAI *GetAI(Creature *pCreature) const
        {
            return new npc_horridon_event_helper_AI(pCreature);
        }
};

void AddSC_boss_horridon()
{
    new boss_horridon();
    new npc_horridon_event_helper();
}