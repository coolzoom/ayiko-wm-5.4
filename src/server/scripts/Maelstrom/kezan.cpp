#include "CombatAI.h"
#include "ScriptedEscortAI.h"
#include "ScriptedFollowerAI.h"
#include "ScriptedGossip.h"
#include "ScriptedSmoothEscortAI.h"
#include "SpellScript.h"
#include "Vehicle.h"
#include "WorldSession.h"

/*
TODO: Translate all texts
*/

enum eQuests
{
    QUEST_TROUBLE_IN_THE_MINES                 = 14075,
    QUEST_TAKING_CARE_OF_BUSINESS              = 14138,
    QUEST_KAJA_COLA                            = 25473,
    QUEST_MEGS_IN_MARKETING                    = 28349,
    QUEST_DO_IT_YOURSELF                       = 14070,
    QUEST_GOOD_HELP_IS_HARD_TO_FIND            = 14069,
    QUEST_ROLLING_WITH_MY_HOMIES               = 14071,
    QUEST_THE_REPLACEMENTS                     = 24488,
    QUEST_NECESSARY_ROUGHNESS                  = 24502,
    QUEST_FOURTH_AND_GOAL                      = 28414,
    QUEST_OFF_TO_THE_BANK_FEMALE               = 26711,
    QUEST_OFF_TO_THE_BANK_MALE                 = 26712,
    QUEST_THE_NEW_YOU_FEMALE                   = 14110,
    QUEST_THE_NEW_YOU_MALE                     = 14109,
    QUEST_LIFE_OF_THE_PARTY_MALE               = 14113,
    QUEST_LIFE_OF_THE_PARTY_FEMALE             = 14153,
    QUEST_PIRATE_PARTY_CRASHERS                = 14115,
    QUEST_THE_UNINVITED_GUEST                  = 14116,
    QUEST_A_BAZILLION_MACAROONS                = 14120,
    QUEST_ROBBING_HOODS                        = 14121,
    QUEST_THE_GREAT_BANK_HEIST                 = 14122,
    QUEST_WALTZ_RIGHT_IN                       = 14123,
    QUEST_LIBERATE_THE_KAJAMITE                = 14124,
    QUEST_STEADY_SHOT                          = 14007,
    QUEST_ARCANE_MISSILES                      = 14008,
    QUEST_FLASH_HEAL                           = 14009,
    QUEST_EVISCERATE                           = 14010,
    QUEST_PRIMAL_STRIKE                        = 14011,
    QUEST_IMMOLATE                             = 14012,
    QUEST_CHARGE                               = 14013,
    QUEST_447                                  = 14125,
    QUEST_LIFE_SAVINGS                         = 14126,
};

enum eCreatures
{
    NPC_KEZAN_CITIZEN                          = 35063,
    NPC_DEFIANT_TROLL                          = 34830,
    NPC_HOT_ROD                                = 34840,
    NPC_ACE                                    = 34957,
    NPC_GOBBER                                 = 34958,
    NPC_IZZY                                   = 34959,
    NPC_INVIS_ACE                              = 34892,
    NPC_INVIS_GOBBER                           = 34954,
    NPC_INVIS_IZZY                             = 34890,
    NPC_HOTROD_KILL_CREDIT                     = 48323,
    NPC_COACH_CROSSCHECK                       = 37106,
    NPC_STEAMWHEEDLE_SHARK                     = 37114,
    NPC_FOURTH_AND_GOAL_TARGET                 = 37203,
    NPC_DEATHWING_QFAG                         = 48572,
    NPC_FBOK_BANK_TELLER                       = 35120,
    NPC_KEZAN_PARTYGOER_MALE                   = 35175,
    NPC_KEZAN_PARTYGOER_FEMALE                 = 35186,
    NPC_FIZZ_LIGHTER                           = 34689,
    NPC_EVOL_FINGERS                           = 34696,
    NPC_TRAINING_DUMMY                         = 48304,
    NPC_PIRATE_PARTY_CRASHER                   = 35200,
    NPC_ASSISTANT_GREELY                       = 48496,
    NPC_HOBART_GRAPPLEHAMMER                   = 48494,
    NPC_MICRO_MECHACHICKEN                     = 48519,
    NPC_ELM_GENERAL_PURPOSE_BUNNY              = 24021,
    NPC_OVERLOADED_GENERATOR                   = 37561,
    NPC_STOVE_LEAK                             = 37590,
    NPC_SMOLDERING_BED                         = 37594,
    NPC_GASBOT                                 = 37598,
    NPC_HOT_ROD_LS                             = 37676,
    NPC_CHIP_ENDALE                            = 35054,
    NPC_CANDY_CANE                             = 35053,
};

enum eSpells
{
    SPELL_QUEST_INVISIBILITY_DETECTION_1       = 60922,
    SPELL_QUEST_INVISIBILITY_DETECTION_2       = 49417,
    SPELL_QUEST_INVISIBILITY_DETECTION_3       = 49416,
    SPELL_QUEST_INVISIBILITY_DETECTION_4       = 80818,
    SPELL_QUEST_INVISIBILITY_DETECTION_5       = 94704,
    SPELL_QUEST_INVISIBILITY_DETECTION_6       = 94567,
    SPELL_SASSYS_INCENTIVE                     = 82025,
    SPELL_ENRAGE_QGHIHTF                       = 45111,
    SPELL_KEYS_TO_THE_HOT_ROD                  = 91551,
    SPELL_HOT_ROD_HONK_HORN                    = 66298,
    SPELL_HOT_ROD_KNOCKBACK                    = 66301,
    SPELL_BOOM_INVIS_MODEL                     = 68560,
    SPELL_ROCKET                               = 36628,
    SPELL_COLA_CAN                             = 75133,
    SPELL_PANICKED_CITIZEN_INVIS               = 90636,
    SPELL_THROW_FOOTBOMB                       = 69993,
    SPELL_PERMANENT_FEIGN_DEATH                = 29266,
    SPELL_INCREASED_MOD_DETECTED_RANGE         = 76651,
    SPELL_KICK_FOOTBOMB                        = 70052,
    SPELL_DEATHWINGS_ATTACK                    = 66858,
    SPELL_CHARACTER_EARTHQUAKE                 = 90615,
    SPELL_XPLOSION                             = 91117,
    SPELL_MARK                                 = 42171,
    SPELL_THROW_GEARS                          = 75775,
    SPELL_KNOCKBACK                            = 75986,
    SPELL_BUBBLE_BLAST                         = 75761,
    SPELL_FROSTBOLT                            = 9672,
    SPELL_CREATE_HIP_NEW_OUTFIT                = 66781,
    SPELL_CREATE_COOL_SHADES                   = 66782,
    SPELL_CREATE_SHINY_BLING                   = 66780,
    SPELL_BUBBLY                               = 66909,
    SPELL_BUCKET                               = 66910,
    SPELL_DANCE                                = 66911,
    SPELL_FIREWORKS                            = 66912,
    SPELL_HORS_DOEUVRES                        = 66913,
    AURA_HAPPY_PARTYGOER                       = 66916,
    AURA_PARTYGOER_BUBBLY                      = 75042,
    AURA_PARTYGOER_BUCKET                      = 75044,
    AURA_DRUNKEN_STUN                          = 46957,
    AURA_DRUNKEN_INTOXICATION                  = 55664,
    AURA_PARTYGOER_DANCE                       = 75046,
    AURA_PARTYGOER_FIREWORKS                   = 75048,
    AURA_PARTYGOER_HORS_DOEUVRES               = 75050,
    SPELL_PARTYGOER_BUBBLY                     = 75122,
    SPELL_PARTYGOER_SUMMON_BUCKET              = 66931,
    SPELL_PARTYGOER_VOMIT                      = 43391,
    SPELL_PARTYGOER_SUMMON_DISCO_BALL          = 66930,
    SPELL_PARTYGOER_DANCE                      = 75123,
    SPELL_PARTYGOER_HORS_DOEUVRES              = 75124,
    SPELL_PARTYGOER_FIREWORKS_BLUE             = 66917,
    SPELL_PARTYGOER_FIREWORKS_GREEN            = 66918,
    SPELL_PARTYGOER_FIREWORKS_RED              = 66919,
    SPELL_TGBH_SUMMON_BUNNY_VEHICLE            = 67488,
    SPELL_TGBH_BUNNY_DRILL_AURA                = 67495,
    SPELL_TGBH_BUNNY_EXPLOSIVES_AURA           = 67496,
    SPELL_TGBH_BUNNY_LISTEN_AURA               = 67497,
    SPELL_TGBH_BUNNY_LOCKPICK_AURA             = 67498,
    SPELL_TGBH_BUNNY_G_RAY_AURA                = 67499,
    SPELL_TGBH_POWER_CORRECT                   = 67493,
    SPELL_TGBH_POWER_INCORRECT                 = 67494,
    SPELL_INFINIFOLD_LOCKPICK                  = 67525,
    SPELL_BLASTCRACKERS                        = 67508,
    SPELL_KAJAMITE_DRILL                       = 67522,
    SPELL_AMAZING_G_RAY                        = 67526,
    SPELL_EAR_O_SCOPE                          = 67524,
    SPELL_TIMER                                = 67502,
    SPELL_THROW_SUPER_SPLODY_COCKTAIL          = 67020,
    SPELL_CREATE_STOLEN_LOOT                   = 67041,
    SPELL_POWER_WORD_FORTITUDE                 = 74973,
    SPELL_LIGHTNING_BOLT_FOR_FIZZ              = 69630,
    SPELL_LIGHTNING_BOLT_FOR_EVOL              = 69626,
    SPELL_FIREBALL                             = 45595,
    SPELL_SHADOW_BOLT                          = 33335,
    SPELL_SHOOT_GUN                            = 65977,
    SPELL_AWESOME_PARTY_ENSEMBLE               = 66908,
    SPELL_LOTP_OUTFIT_SECONDARY                = 66985,
    SPELL_LOTP_OUTFIT_FEMALE                   = 66927,
    SPELL_LOTP_OUTFIT_MALE                     = 66928,
    SPELL_LOTP_PAPARAZZI                       = 66929,
    SPELL_SUMMON_HOT_ROD                       = 66393,
    SPELL_SLEEP                                = 62248,
    SPELL_COSMETIC_POLYMORPH_IMPACT_VISUAL     = 65313,
    SPELL_LIGHTNING_IMPACT                     = 89139,
    SPELL_LIGHTNING_BEAM                       = 89138,
    SPELL_MECHACHICKEN_OVERLOAD                = 71423,
    SPELL_MICRO_MECHACHICKEN_GROW              = 89125,
    SPELL_STEALTH                              = 80264,
    SPELL_MECHACHICKEN_EXPLOSION               = 91390,
    SPELL_OVERLOADED_GENERATOR_VISUAL          = 70226,
    SPELL_STOVE_LEAK_VISUAL                    = 70236,
    SPELL_SMOLDERING_BED_PRECAST_MASTER        = 70251,
    SPELL_SMOLDERING_BED_VISUAL                = 70250,
    SPELL_LS_HOT_ROD_KNOCKBACK                 = 70330,
    SPELL_HOT_ROD_SKID                         = 70325,

    PHASE_QUEST_ZONE_SPECIFIC_1                = 59073,
    PHASE_QUEST_ZONE_SPECIFIC_2                = 59074,
    PHASE_QUEST_ZONE_SPECIFIC_3                = 59087,
    PHASE_QUEST_ZONE_SPECIFIC_4                = 67789,
    PHASE_QUEST_ZONE_SPECIFIC_5                = 68480,
    PHASE_QUEST_ZONE_SPECIFIC_6                = 68481,
    PHASE_QUEST_ZONE_SPECIFIC_7                = 68482,
    PHASE_QUEST_ZONE_SPECIFIC_8                = 68483,
};

enum eItems
{
    ITEM_STOLEN_LOOT                           = 47530,
    ITEM_PERSONAL_RICHES                       = 46858,
};

enum eScriptTexts
{
    PLAYER_RANDOM_YELL                         = -1987015,    // -1987015 to -1987034
    HOMIES_RANDOM_SAY                          = -1987035,    // -1987035 to -1987045
    HOMIES_RANDOM_ALARM                        = -1987046,    // -1987046 to -1987051
    CITIZEN_RANDOM_SAY                         = -1987052,    // -1987052 to -1987065
    CITIZEN_RANDOM_ALARM                       = -1987066,    // -1987066 to -1987070
    COACH_SAY_GOTTA_HURRY                      = -1987073,
    BUCCANEER_SAY_FOOTBOMB                     = -1987076,
    DEATHWING_YELL                             = -1987077,
    COACH_NOT_AT_MY_FIELD                      = -1987078,
    PLAYER_SAY_WHAT_IS_THIS                    = -1987079,
    ACE_SAY_WHAT_IS_THIS                       = -1987080,
    IZZY_SAY_WHAT_IS_THIS                      = -1987081,
    COACH_SAY_GOOD_WORK                        = -1987082,
    NPC_BRUNO_SAY_1                            = -1987083,
    NPC_BRUNO_SAY_2                            = -1987084,
    NPC_FRANKIE_SAY_1                          = -1987085,
    NPC_FRANKIE_SAY_2                          = -1987086,
    NPC_JACK_SAY                               = -1987087,
    NPC_SUDSY_SAY_1                            = -1987088,
    NPC_SUDSY_SAY_2                            = -1987089,
    SASSY_SAY_HELP_HIM                         = -1987090,
    HOMIES_RANDOM_ATTACK_YELL                  = -1987091,    // -1987091 to -1987097
    FBOK_BANK_TELLER_SAY_NEXT                  = -1987100,
    CITIZEN_SAY_SZABO_SO_COOL                  = -1987102,
    SASSY_SAY_BREAK_YOUR_MOOLAH                = -1987117,
    BAMM_MEGABOMB_QUEST_ACCEPT                 = -1987118,
    FIZZ_LIGHTER_QUEST_ACCEPT                  = -1987119,
    SLINKY_SHARPSHIV_QUEST_ACCEPT              = -1987120,
    MAXX_AVALANCHE_QUEST_ACCEPT                = -1987121,
    EVOL_FINGERS_QUEST_ACCEPT                  = -1987122,
    WARRIOR_MATIC_NX_01_QUEST_ACCEPT           = -1987123,
    SISTER_GOLDSKIMMER_QUEST_ACCEPT            = -1987124,
    SISTER_GOLDSKIMMER_RANDOM_SPEACH           = -1987125,    // -1987125 to -1987131
    MAXX_AVALANCHE_RANDOM_SPEACH               = -1987132,    // -1987132 to -1987138
    CANDY_CANE_SAY_GO_TO_THE_PARTY             = -1987139,
    CANDY_CANE_EMOTE_GO                        = -1987140,
    CHIP_ENDALE_SAY_GO_TO_THE_PARTY            = -1987141,
    CHIP_ENDALE_EMOTE_GO                       = -1987142,
    PARTYGOER_RANDOM_SAY_NEED_HORS_DOEUVRES    = -1987143,    // -1987143 to -1987144
    PARTYGOER_RANDOM_SAY_NEED_BUBBLY           = -1987145,    // -1987145 to -1987146
    PARTYGOER_RANDOM_SAY_NEED_FIREWORKS        = -1987147,    // -1987147 to -1987148
    PARTYGOER_RANDOM_SAY_NEED_BUCKET           = -1987149,    // -1987149 to -1987150
    PARTYGOER_RANDOM_SAY_NEED_DANCE            = -1987151,    // -1987151 to -1987152
    PARTYGOER_RANDOM_SAY_OK_HORS_DOEUVRES      = -1987153,    // -1987153 to -1987155
    PARTYGOER_RANDOM_SAY_OK_BUBBLY             = -1987156,    // -1987156 to -1987158
    PARTYGOER_RANDOM_SAY_OK_FIREWORKS          = -1987159,    // -1987159 to -1987161
    PARTYGOER_RANDOM_SAY_OK_BUCKET             = -1987162,    // -1987162 to -1987165
    PARTYGOER_RANDOM_SAY_OK_DANCE              = -1987166,    // -1987166 to -1987168
    PIRATE_PARTY_CRASHER_RANDOM_SAY            = -1987169,    // -1987169 to -1987176
    HOBART_YELL_PREPARE                        = -1987177,
    GREELY_SAY_SHEESH                          = -1987178,
    GREELY_SAY_ONE_MECHACHICKEN                = -1987179,
    HOBART_SAY_DEAR_GREELY                     = -1987180,
    GREELY_SIGH                                = -1987181,
    GREELY_SAY_YES_DOCTOR                      = -1987182,
    HOBART_SAY_EXCELLENT                       = -1987183,
    GREELY_SHAKES_HEAD                         = -1987184,
    HOBART_SAY_THANK_YOU                       = -1987185,
    HOBART_SAY_HORRIBLE_PROBLEM                = -1987186,
    HOBART_SAY_GREATEST_GOBLIN                 = -1987187,
    HOBART_SAY_FLIP_THE_SWITCH                 = -1987188,
    GREELY_COUGHS                              = -1987189,
    GREELY_SAY_AT_THE_CONTROLS                 = -1987190,
    HOBART_SAY_QUITE_RIGHT                     = -1987191,
    HOBART_SAY_FLIPPING                        = -1987192,
    HOBART_SAY_CAN_YOU_FEEL                    = -1987193,
    HOBART_SAY_GROCERY_STORE                   = -1987194,
    HOBART_SAY_FLIPPING_SECOND                 = -1987195,
    HOBART_SAY_WAIT                            = -1987196,
    GREELY_SAY_YA_THINK                        = -1987197,
    HOBART_YELL_I_KNOW                         = -1987198,
    GREELY_YELL_FAR_RIGHT                      = -1987199,
    HOBART_YELL_I_ALWAYS_LOVED                 = -1987200,
    GREELY_YELL_WHAT                           = -1987201,
    HOBART_YELL_FLIPPING_THE_OVERRIDE          = -1987202,
    HOBART_SAY_ARE_WE_STILL_ALIVE              = -1987203,
    GREELY_SAY_WERE_STILL_ALIVE                = -1987204,
    HOBART_SAY_WELL_OF_COURSE                  = -1987205,
    GREELY_SAY_IS_THAT_EGG                     = -1987206,
    HOBART_OPEN_MOUTH                          = -1987207,
    GREELY_SAY_ALWAYS_LOVED                    = -1987208,
    HOBART_SAY_MISS_GREELY                     = -1987209,
    GREELY_BOTH_AGREE                          = -1987210,
    HOBART_SAY_SKY_IS_FALLING                  = -1987211,
    GREELY_SAY_SKY_IS_FALLING                  = -1987212,
    HOBART_SAY_GRAB_ONLY_THE_IMPORTANT         = -1987213,
    GREELY_SAY_GRAB_ONLY_THE_IMPORTANT         = -1987214,
    HOBART_SAY_PARTY                           = -1987215,
    GREELY_SAY_PARTY                           = -1987216,
    HOBART_SAY_DEATHWING                       = -1987217,
    GREELY_SAY_DEATHWING                       = -1987218,
    HOBART_SAY_GET_EVERYTHING_PACKED           = -1987219,
    GREELY_SAY_GET_EVERYTHING_PACKED           = -1987220,
    HOBART_SAY_SUBJECT_NINE                    = -1987221,
    GREELY_SAY_SUBJECT_NINE                    = -1987222,
    HOBART_SAY_SCHEMATICS                      = -1987223,
    GREELY_SAY_SCHEMATICS                      = -1987224,
    HOBART_SAY_INGENIOUS_CAP                   = -1987225,
    GREELY_SAY_INGENIOUS_CAP                   = -1987226,
    VINNY_SLAPCHOP_RANDOM_SAY                  = -1987227,    // -1987227 to -1987234
    KAJA_COLA_BALLOON_RANDOM_YELL              = -1987235,    // -1987235 to -1987242
    FOREMAN_DAMPWICK_RANDOM_YELL               = -1987243,    // -1987243 to -1987250
    GALLYWIX_RANDOM_YELL_FIRST_PHASE           = -1987251,    // -1987251 to -1987258
    GALLYWIX_RANDOM_YELL_SECOND_PHASE          = -1987259,    // -1987259 to -1987264
    KAJA_COLA_RANDOM_IDEA                      = -1987265,    // -1987265 to -1987323
    BRUTE_ENFORCER_FIRST_RANDOM_SAY            = -1987324,    // -1987324 to -1987327
    BRUTE_ENFORCER_SECOND_RANDOM_SAY           = -1987328,    // -1987328 to -1987331
    SASSY_SAY_CANT_LOOK                        = -1987332,
    CLAIMS_ADJUSTER_YELL_VICTIM                = -1987333,
    SASSY_SAY_GO_TO_THE_GALLYWIX_BOAT          = -1987334,
    SASSY_SAY_GO_AROUND                        = -1987335,
    SASSY_YELL_OUT_OF_THE_WAY                  = -1987336,
    SASSY_SAY_OH_NO                            = -1987337,
    CANDY_CANE_SAY_GAME_OVER                   = -1987338,
    CHIP_ENDALE_SAY_GAME_OVER                  = -1987339,
    JACK_THE_HAMMER_SAY_HAMMER                 = -1987340,
};

enum eFactions
{
    ORIGINAL_FACTION                           = 2159,
    AGGRESSIVE_FACTION                         = 14,
};

enum eArea
{
    AREA_KAJAMITE_MINE                         = 4766,
};

///////////
// Class quests and trainers
///////////

class npc_sister_goldskimmer : public CreatureScript
{
public:
    npc_sister_goldskimmer() : CreatureScript("npc_sister_goldskimmer") { }

    bool OnQuestAccept(Player* player, Creature* /*creature*/, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_FLASH_HEAL)
            /*creature->DoPersonalScriptText*/DoScriptText(SISTER_GOLDSKIMMER_QUEST_ACCEPT, player);

        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->getClass() != CLASS_PRIEST)
        {
            player->SEND_GOSSIP_MENU(14601, creature->GetGUID());
            return true;
        }

        return false;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_sister_goldskimmerAI (creature);
    }

    struct npc_sister_goldskimmerAI : public ScriptedAI
    {
        npc_sister_goldskimmerAI(Creature* creature) : ScriptedAI(creature)
        {
            if (me->GetPhaseMask() == 4)
                CanCast = false;
            else
                CanCast = true;
        }

        bool CanCast;

        void MoveInLineOfSight(Unit* who)
        {
            if (!me->IsWithinDistInMap(who, 30.0f))
                return;

            if (!CanCast)
                return;

            if (Player* player = who->ToPlayer())
                if (!player->HasAura(SPELL_POWER_WORD_FORTITUDE))
                {
                    DoCast(player, SPELL_POWER_WORD_FORTITUDE);
                    me->ModifyPower(POWER_MANA, me->GetMaxPower(POWER_MANA));
                    uint8 roll = urand(0, 6);
                    /*me->DoPersonalScriptText*/DoScriptText(SISTER_GOLDSKIMMER_RANDOM_SPEACH - roll, player);
                }
        }

        void UpdateAI(uint32 /*diff*/)
        {
            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_maxx_avalanche : public CreatureScript
{
public:
    npc_maxx_avalanche() : CreatureScript("npc_maxx_avalanche") { }

    bool OnQuestAccept(Player* player, Creature* /*creature*/, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_PRIMAL_STRIKE)
            /*creature->DoPersonalScriptText*/DoScriptText(MAXX_AVALANCHE_QUEST_ACCEPT, player);

        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->getClass() != CLASS_SHAMAN)
        {
            player->SEND_GOSSIP_MENU(14806, creature->GetGUID());
            return true;
        }

        return false;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_maxx_avalancheAI (creature);
    }

    struct npc_maxx_avalancheAI : public ScriptedAI
    {
        npc_maxx_avalancheAI(Creature* creature) : ScriptedAI(creature)
        {
            uiEventTimer = 3000;
            uiPhase = 0;

            switch (me->GetPhaseMask())
            {
            case 4:
                CanCast = false;
                break;
            case 16384:
                CanCast = false;
                me->SetUInt32Value(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_NONE);
                break;
            default:
                CanCast = true;
                break;
            }
        }

        uint32 uiEventTimer;
        uint8 uiPhase;
        bool CanCast;

        void UpdateAI(uint32 diff)
        {
            if (!CanCast)
                return;

            if (uiEventTimer <= diff)
            {
                ++uiPhase;
                switch (uiPhase)
                {
                case 1:
                    uiEventTimer = 2000;
                    me->ModifyPower(POWER_MANA, me->GetMaxPower(POWER_MANA));
                    if (Creature* target = me->FindNearestCreature(NPC_FIZZ_LIGHTER, 30.0f))
                    {
                        float x, y, z;
                        target->GetPosition(x, y, z);
                        Position pos;
                        target->GetRandomNearPosition(pos, 3.0f);
                        me->CastSpell(pos.m_positionX, pos.m_positionY, pos.m_positionZ, SPELL_LIGHTNING_BOLT_FOR_FIZZ, false);
                    }
                    break;
                case 2:
                    uiEventTimer = 2000;
                    me->ModifyPower(POWER_MANA, me->GetMaxPower(POWER_MANA));
                    if (Creature* target = me->FindNearestCreature(NPC_EVOL_FINGERS, 30.0f))
                    {
                        float x, y, z;
                        target->GetPosition(x, y, z);
                        Position pos;
                        target->GetRandomNearPosition(pos, 3.0f);
                        me->CastSpell(pos.m_positionX, pos.m_positionY, pos.m_positionZ, SPELL_LIGHTNING_BOLT_FOR_EVOL, false);
                    }
                    break;
                case 3:
                    uiEventTimer = urand(20000, 80000);
                    uiPhase = 0;
                    uint8 roll = urand(0, 6);
                    DoScriptText(MAXX_AVALANCHE_RANDOM_SPEACH - roll, me);
                    break;
                }
            }
            else
                uiEventTimer -= diff;
        }
    };
};

class npc_fizz_lighter : public CreatureScript
{
public:
    npc_fizz_lighter() : CreatureScript("npc_fizz_lighter") { }

    bool OnQuestAccept(Player* player, Creature* /*creature*/, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_ARCANE_MISSILES)
            /*creature->DoPersonalScriptText*/DoScriptText(FIZZ_LIGHTER_QUEST_ACCEPT, player);

        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->getClass() != CLASS_MAGE)
        {
            player->SEND_GOSSIP_MENU(50011, creature->GetGUID());
            return true;
        }

        return false;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_fizz_lighterAI (creature);
    }

    struct npc_fizz_lighterAI : public ScriptedAI
    {
        npc_fizz_lighterAI(Creature* creature) : ScriptedAI(creature)
        {
            SetCombatMovement(false);
            uiCastTimer = 3000;

            switch (me->GetPhaseMask())
            {
            case 4:
                CanCast = false;
                break;
            case 16384:
                CanCast = false;
                me->SetUInt32Value(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_NONE);
                break;
            default:
                CanCast = true;
                break;
            }
        }

        uint32 uiCastTimer;
        bool CanCast;

        void UpdateAI(uint32 diff)
        {
            if (CanCast)
            {
                if (uiCastTimer <= diff)
                {
                    uiCastTimer = 3000;
                    DoCast(me, SPELL_FIREBALL);
                }
                else
                    uiCastTimer -= diff;
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_evol_fingers : public CreatureScript
{
public:
    npc_evol_fingers() : CreatureScript("npc_evol_fingers") { }

    bool OnQuestAccept(Player* player, Creature* /*creature*/, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_IMMOLATE)
            /*creature->DoPersonalScriptText*/DoScriptText(EVOL_FINGERS_QUEST_ACCEPT, player);

        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->getClass() != CLASS_WARLOCK)
        {
            player->SEND_GOSSIP_MENU(14595, creature->GetGUID());
            return true;
        }

        return false;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_evol_fingersAI (creature);
    }

    struct npc_evol_fingersAI : public ScriptedAI
    {
        npc_evol_fingersAI(Creature* creature) : ScriptedAI(creature)
        {
            SetCombatMovement(false);
            uiCastTimer = 3000;

            switch (me->GetPhaseMask())
            {
            case 4:
                CanCast = false;
                break;
            case 16384:
                CanCast = false;
                me->SetUInt32Value(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_NONE);
                break;
            default:
                CanCast = true;
                break;
            }
        }

        uint32 uiCastTimer;
        bool CanCast;

        void UpdateAI(uint32 diff)
        {
            if (CanCast)
            {
                if (uiCastTimer <= diff)
                {
                    if (Creature* target = me->FindNearestCreature(NPC_FIZZ_LIGHTER, 40.0f))
                        DoCast(target, SPELL_SHADOW_BOLT);

                    uiCastTimer = 3000;
                }
                else
                    uiCastTimer -= diff;
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_bamm_megabomb : public CreatureScript
{
public:
    npc_bamm_megabomb() : CreatureScript("npc_bamm_megabomb") { }

    bool OnQuestAccept(Player* player, Creature* /*creature*/, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_STEADY_SHOT)
            /*creature->DoPersonalScriptText*/DoScriptText(BAMM_MEGABOMB_QUEST_ACCEPT, player);

        return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_bamm_megabombAI (creature);
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->getClass() != CLASS_HUNTER)
        {
            player->SEND_GOSSIP_MENU(14798, creature->GetGUID());
            return true;
        }

        return false;
    }

    struct npc_bamm_megabombAI : public ScriptedAI
    {
        npc_bamm_megabombAI(Creature* creature) : ScriptedAI(creature)
        {
            uiCastTimer = urand(3500, 5000);

            switch (me->GetPhaseMask())
            {
            case 4:
                CanCast = false;
                break;
            case 16384:
                CanCast = false;
                me->SetUInt32Value(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_NONE);
                break;
            default:
                CanCast = true;
                break;
            }
        }

        uint32 uiCastTimer;
        bool CanCast;

        void UpdateAI(uint32 diff)
        {
            if (CanCast)
            {
                if (uiCastTimer <= diff)
                {
                    uiCastTimer = urand(3500, 5000);
                    DoCast(me, SPELL_SHOOT_GUN);
                }
                else
                    uiCastTimer -= diff;
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_slinky_sharpshiv : public CreatureScript
{
public:
    npc_slinky_sharpshiv() : CreatureScript("npc_slinky_sharpshiv") { }

    bool OnQuestAccept(Player* player, Creature* /*creature*/, Quest const* quest)
    {
        switch (quest->GetQuestId())
        {
        case QUEST_EVISCERATE:
            /*creature->DoPersonalScriptText*/DoScriptText(SLINKY_SHARPSHIV_QUEST_ACCEPT, player);
            break;
        }

        return true;
    }

    bool OnQuestReward(Player* player, Creature* /*creature*/, Quest const* quest, uint32 /*opt*/)
    {
        if (quest->GetQuestId() == QUEST_WALTZ_RIGHT_IN)
            if (player->GetQuestStatus(QUEST_THE_GREAT_BANK_HEIST) == QUEST_STATUS_REWARDED &&
                player->GetQuestStatus(QUEST_ROBBING_HOODS) == QUEST_STATUS_REWARDED &&
                player->GetQuestStatus(QUEST_LIBERATE_THE_KAJAMITE) == QUEST_STATUS_REWARDED)
            {
                player->RemoveAura(PHASE_QUEST_ZONE_SPECIFIC_5);
                player->AddAura(PHASE_QUEST_ZONE_SPECIFIC_6, player);
                player->SaveToDB();
            }

            return true;
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->getClass() != CLASS_ROGUE)
        {
            player->PrepareQuestMenu(creature->GetGUID());
            player->SEND_GOSSIP_MENU(14811, creature->GetGUID());
            return true;
        }

        return false;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_slinky_sharpshivAI (creature);
    }

    struct npc_slinky_sharpshivAI : public ScriptedAI
    {
        npc_slinky_sharpshivAI(Creature* creature) : ScriptedAI(creature)
        {
            if (me->GetPhaseMask() == 16384)
                me->SetUInt32Value(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_NONE);
        }

        void UpdateAI(uint32 /*diff*/)
        {
        }
    };
};

class npc_warrior_matic_nx_01 : public CreatureScript
{
public:
    npc_warrior_matic_nx_01() : CreatureScript("npc_warrior_matic_nx_01") { }

    bool OnQuestAccept(Player* player, Creature* /*creature*/, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_CHARGE)
            /*creature->DoPersonalScriptText*/DoScriptText(WARRIOR_MATIC_NX_01_QUEST_ACCEPT, player);

        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->getClass() != CLASS_WARRIOR)
        {
            player->SEND_GOSSIP_MENU(15000, creature->GetGUID());
            return true;
        }

        return false;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_warrior_matic_nx_01AI (creature);
    }

    struct npc_warrior_matic_nx_01AI : public ScriptedAI
    {
        npc_warrior_matic_nx_01AI(Creature* creature) : ScriptedAI(creature)
        {
            if (me->GetPhaseMask() == 16384)
                me->SetUInt32Value(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_NONE);
        }

        void UpdateAI(uint32 /*diff*/)
        {
            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

///////////
// Quests:
//     Taking Care of Business 14138,
//     Kaja'Cola 25473,
//     Megs in Marketing 28349,
///////////

struct Psc
{
    uint64 uiPlayerGUID;
    uint32 uiEventTimer;
    uint32 uiPhase;
};

#define    GOSSIP_GO_TO_THE_BOAT    "Okay, Sassy, I'm ready to go."

class npc_sassy_sardwrench : public CreatureScript
{
public:
    npc_sassy_sardwrench() : CreatureScript("npc_sassy_sardwrench") { }

    enum talks
    {
        SASSY_SAY_LOL       = 0,
        SASSY_SAY_MEGS_IN_MARKETING = 1,
    };

    bool OnGossipHello(Player* player, Creature* creature)
    {
        uint32 uiGossipId = 17571;

        if ((player->GetQuestStatus(QUEST_LIFE_OF_THE_PARTY_MALE) == QUEST_STATUS_INCOMPLETE) &&
            player->GetQuestStatus(QUEST_PIRATE_PARTY_CRASHERS) == QUEST_STATUS_NONE)
            uiGossipId = 17572;

        if ((player->GetQuestStatus(QUEST_LIFE_OF_THE_PARTY_FEMALE) == QUEST_STATUS_INCOMPLETE) &&
            player->GetQuestStatus(QUEST_PIRATE_PARTY_CRASHERS) == QUEST_STATUS_NONE)
            uiGossipId = 17572;

        if ((player->GetQuestStatus(QUEST_LIFE_OF_THE_PARTY_MALE) == QUEST_STATUS_COMPLETE) &&
            player->GetQuestStatus(QUEST_PIRATE_PARTY_CRASHERS) & (QUEST_STATUS_NONE | QUEST_STATUS_INCOMPLETE))
            uiGossipId = 17573;

        if ((player->GetQuestStatus(QUEST_LIFE_OF_THE_PARTY_FEMALE) == QUEST_STATUS_COMPLETE) &&
            player->GetQuestStatus(QUEST_PIRATE_PARTY_CRASHERS) & (QUEST_STATUS_NONE | QUEST_STATUS_INCOMPLETE))
            uiGossipId = 17573;

        if ((player->GetQuestStatus(QUEST_PIRATE_PARTY_CRASHERS) == QUEST_STATUS_COMPLETE) &&
            player->GetQuestStatus(QUEST_A_BAZILLION_MACAROONS) == QUEST_STATUS_NONE)
            uiGossipId = 17574;

        if (player->GetQuestStatus(QUEST_A_BAZILLION_MACAROONS) & (QUEST_STATUS_COMPLETE | QUEST_STATUS_INCOMPLETE))
            uiGossipId = 17575;

        if (player->GetQuestStatus(QUEST_ROBBING_HOODS) == QUEST_STATUS_COMPLETE &&
            player->GetQuestStatus(QUEST_THE_GREAT_BANK_HEIST) == QUEST_STATUS_COMPLETE &&
            player->GetQuestStatus(QUEST_WALTZ_RIGHT_IN) == QUEST_STATUS_COMPLETE &&
            player->GetQuestStatus(QUEST_LIBERATE_THE_KAJAMITE) == QUEST_STATUS_COMPLETE)
            uiGossipId = 17576;

        if (player->GetQuestStatus(QUEST_LIFE_SAVINGS) == QUEST_STATUS_INCOMPLETE)
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_GO_TO_THE_BOAT, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);

        player->PrepareQuestMenu(creature->GetGUID());
        player->SEND_GOSSIP_MENU(uiGossipId, creature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action)
    {
        player->PlayerTalkClass->ClearMenus();

        if (action == GOSSIP_ACTION_INFO_DEF)
        {
            float x, y, z = creature->GetPositionZ();
            creature->GetNearPoint2D(x, y, 3.0f, creature->GetOrientation() + M_PI / 4);
            player->CastSpell(player, PHASE_QUEST_ZONE_SPECIFIC_8, false);
            player->DestroyItemCount(46856, 1, true);

            if (Creature* hotrod = player->SummonCreature(NPC_HOT_ROD_LS, x, y, z))
                if (SmoothEscortAI* escort = CAST_AI(SmoothEscortAI, hotrod->AI()))
                {
                    if (Creature* sassy = player->SummonCreature(37680, x, y, z))
                        sassy->EnterVehicle(hotrod, 0);

                    player->EnterVehicle(hotrod, 1);
                    escort->AddWaypoint(1,-8425.38f,1328.87f,101.956f);
                    escort->AddWaypoint(2,-8421.79f,1333.12f,102.364f);
                    escort->AddWaypoint(3,-8412.47f,1335.64f,102.326f);
                    escort->AddWaypoint(4,-8400.14f,1337.37f,101.982f);
                    escort->AddWaypoint(5,-8376.50f,1348.69f,101.975f);
                    escort->AddWaypoint(6,-8364.13f,1347.29f,100.312f);
                    escort->AddWaypoint(7,-8354.41f,1343.26f,95.8217f);
                    escort->AddWaypoint(8,-8344.45f,1338.25f,89.7618f);
                    escort->AddWaypoint(9,-8339.29f,1335.17f,87.6991f);
                    escort->AddWaypoint(10,-8333.11f,1331.05f,87.0341f);
                    escort->AddWaypoint(11,-8321.08f,1321.99f,87.9551f);
                    escort->AddWaypoint(12,-8315.27f,1317.73f,87.2524f);
                    escort->AddWaypoint(13,-8309.10f,1314.06f,84.8207f);
                    escort->AddWaypoint(14,-8303.91f,1311.26f,82.2196f);
                    escort->AddWaypoint(15,-8297.86f,1308.01f,78.5731f);
                    escort->AddWaypoint(16,-8294.21f,1306.56f,75.9687f);
                    escort->AddWaypoint(17,-8292.03f,1305.61f,73.5784f);
                    escort->AddWaypoint(18,-8287.09f,1303.27f,68.7732f);
                    escort->AddWaypoint(19,-8282.96f,1301.28f,65.0758f);
                    escort->AddWaypoint(20,-8276.19f,1299.01f,59.8176f);
                    escort->AddWaypoint(21,-8271.50f,1297.45f,56.4913f);
                    escort->AddWaypoint(22,-8264.58f,1295.90f,51.9402f);
                    escort->AddWaypoint(23,-8259.09f,1294.71f,48.8402f);
                    escort->AddWaypoint(24,-8251.53f,1293.56f,45.0274f);
                    escort->AddWaypoint(25,-8246.01f,1292.83f,42.5180f);
                    escort->AddWaypoint(26,-8238.32f,1292.11f,39.2295f);
                    escort->AddWaypoint(27,-8230.16f,1291.58f,36.3618f);
                    escort->AddWaypoint(28,-8224.49f,1291.36f,34.6277f);
                    escort->AddWaypoint(29,-8217.40f,1291.24f,32.7357f);
                    escort->AddWaypoint(30,-8210.30f,1291.24f,31.1584f);
                    escort->AddWaypoint(31,-8204.61f,1291.38f,30.1318f);
                    escort->AddWaypoint(32,-8197.20f,1291.88f,29.1144f);
                    escort->AddWaypoint(33,-8190.99f,1292.30f,28.6688f);
                    escort->AddWaypoint(34,-8183.25f,1293.64f,27.2814f);
                    escort->AddWaypoint(35,-8174.77f,1294.94f,26.0061f);
                    escort->AddWaypoint(36,-8167.61f,1295.76f,25.0049f);
                    escort->AddWaypoint(37,-8159.68f,1296.62f,24.0758f);
                    escort->AddWaypoint(38,-8153.06f,1297.29f,23.2302f);
                    escort->AddWaypoint(39,-8146.75f,1297.82f,22.2031f);
                    escort->AddWaypoint(40,-8139.64f,1297.23f,20.8587f);
                    escort->AddWaypoint(41,-8135.00f,1297.57f,20.5206f);
                    escort->AddWaypoint(42,-8130.32f,1300.50f,19.9457f);
                    escort->AddWaypoint(43,-8127.43f,1306.52f,19.3136f);
                    escort->AddWaypoint(44,-8126.20f,1314.47f,18.7197f);
                    escort->AddWaypoint(45,-8125.68f,1329.52f,17.8607f);
                    escort->AddWaypoint(46,-8124.89f,1341.55f,17.1133f);
                    escort->AddWaypoint(47,-8124.27f,1348.29f,17.3852f);
                    escort->AddWaypoint(48,-8123.51f,1359.30f,19.3157f);
                    escort->AddWaypoint(49,-8122.60f,1371.38f,22.2654f);
                    escort->AddWaypoint(50,-8122.03f,1377.20f,23.1136f);
                    escort->AddWaypoint(51,-8121.24f,1383.81f,23.6746f);
                    escort->AddWaypoint(52,-8120.48f,1389.00f,23.7922f);
                    escort->AddWaypoint(53,-8119.60f,1395.60f,23.3315f);
                    escort->AddWaypoint(54,-8118.66f,1400.76f,22.4183f);
                    escort->AddWaypoint(55,-8117.30f,1407.06f,20.4558f);
                    escort->AddWaypoint(56,-8116.07f,1412.83f,18.1914f);
                    escort->AddWaypoint(57,-8114.92f,1418.72f,16.1875f);
                    escort->AddWaypoint(58,-8113.23f,1429.29f,13.0687f);
                    escort->AddWaypoint(59,-8112.00f,1436.06f,11.5173f);
                    escort->AddWaypoint(60,-8110.77f,1443.05f,10.2880f);
                    escort->AddWaypoint(61,-8109.64f,1449.17f,9.81804f, 500);
                    escort->AddWaypoint(62,-8108.60f,1456.10f,9.98186f);
                    escort->AddWaypoint(63,-8108.21f,1461.50f,10.0528f);
                    escort->AddWaypoint(64,-8112.41f,1467.96f,10.0984f);
                    escort->AddWaypoint(65,-8119.51f,1478.24f,10.4105f);
                    escort->AddWaypoint(66,-8121.80f,1485.42f,10.6638f);
                    escort->AddWaypoint(67,-8122.04f,1492.62f,11.1742f);
                    escort->AddWaypoint(68,-8121.35f,1500.88f,10.5241f);
                    escort->AddWaypoint(69,-8118.24f,1509.03f,10.3345f);
                    escort->AddWaypoint(70,-8114.80f,1516.22f,10.0675f);
                    escort->AddWaypoint(71,-8107.86f,1526.28f,9.52589f);
                    escort->AddWaypoint(72,-8101.88f,1535.21f,9.34943f);
                    escort->AddWaypoint(73,-8099.31f,1546.64f,9.12364f);
                    escort->AddWaypoint(74,-8098.55f,1556.10f,8.94064f);
                    escort->AddWaypoint(75,-8096.11f,1625.51f,8.78228f);
                    escort->AddWaypoint(76,-8096.47f,1649.65f,10.0208f);
                    escort->AddWaypoint(77,-8096.74f,1663.73f,11.5271f);
                    escort->AddWaypoint(78,-8103.78f,1691.23f,15.3531f);
                    escort->AddWaypoint(79,-8109.90f,1696.20f,16.6564f);
                    escort->AddWaypoint(80,-8113.23f,1698.49f,18.9307f);
                    escort->AddWaypoint(81,-8115.83f,1700.98f,20.8800f);
                    escort->AddWaypoint(82,-8119.49f,1704.42f,23.4167f);
                    escort->AddWaypoint(83,-8124.64f,1709.90f,26.8272f);
                    escort->AddWaypoint(84,-8128.63f,1715.32f,29.3983f);
                    escort->AddWaypoint(85,-8132.33f,1721.63f,31.6928f);
                    escort->AddWaypoint(86,-8134.51f,1726.81f,33.0131f);
                    escort->AddWaypoint(87,-8136.43f,1732.03f,34.0754f);
                    escort->AddWaypoint(88,-8137.48f,1738.16f,34.8704f);
                    escort->AddWaypoint(89,-8137.91f,1743.78f,35.1258f);
                    escort->AddWaypoint(90,-8137.37f,1748.61f,34.9439f);
                    escort->AddWaypoint(91,-8136.48f,1754.65f,34.5787f);
                    escort->AddWaypoint(92,-8134.38f,1759.58f,33.9260f);
                    escort->AddWaypoint(93,-8131.15f,1765.65f,32.8294f);
                    escort->AddWaypoint(94,-8127.14f,1770.74f,31.4358f);
                    escort->AddWaypoint(95,-8121.74f,1776.90f,29.6606f);
                    escort->AddWaypoint(96,-8116.82f,1781.36f,28.4168f);
                    escort->AddWaypoint(97,-8111.85f,1784.92f,28.7040f);
                    escort->AddWaypoint(98,-8108.42f,1787.96f,29.3762f);
                    escort->AddWaypoint(99,-8104.37f,1792.24f,30.3825f);
                    escort->AddWaypoint(100,-8101.48f,1796.07f,31.3296f);
                    escort->AddWaypoint(101,-8098.53f,1800.13f,32.4053f);
                    escort->AddWaypoint(102,-8095.65f,1804.58f,33.6369f);
                    escort->AddWaypoint(103,-8093.22f,1808.60f,34.8034f);
                    escort->AddWaypoint(104,-8090.76f,1812.98f,36.3530f);
                    escort->AddWaypoint(105,-8088.47f,1816.71f,37.5583f);
                    escort->AddWaypoint(106,-8084.40f,1823.03f,39.7250f);
                    escort->AddWaypoint(107,-8077.03f,1824.59f,41.3678f);
                    escort->AddWaypoint(108,-8070.16f,1822.37f,42.4776f);
                    escort->AddWaypoint(109,-8062.44f,1821.97f,42.8076f);
                    escort->AddWaypoint(110,-8056.33f,1822.18f,42.8170f);
                    escort->AddWaypoint(111,-8049.89f,1822.38f,42.5627f);
                    escort->AddWaypoint(112,-8043.23f,1822.53f,42.2247f);
                    escort->AddWaypoint(113,-8034.60f,1822.42f,39.8810f);
                    escort->AddWaypoint(114,-8026.67f,1821.64f,36.1786f);
                    escort->AddWaypoint(115,-8014.71f,1820.55f,29.8471f);
                    escort->AddWaypoint(116,-8000.99f,1819.48f,24.6067f);
                    escort->AddWaypoint(117,-7993.08f,1822.92f,21.2857f);
                    escort->AddWaypoint(118,-7983.36f,1827.66f,16.8506f);
                    escort->AddWaypoint(119,-7976.36f,1830.73f,13.8622f);
                    escort->AddWaypoint(120,-7968.22f,1832.91f,11.6773f);
                    escort->AddWaypoint(121,-7960.49f,1833.61f,10.2075f);
                    escort->AddWaypoint(122,-7953.07f,1836.06f,8.50395f);
                    escort->AddWaypoint(123,-7949.61f,1835.68f,6.69894f);
                    escort->AddWaypoint(124,-7918.63f,1835.01f,5.54989f);
                    escort->AddWaypoint(125,-7884.50f,1836.57f,4.28574f);
                    escort->AddWaypoint(126,-7849.60f,1845.08f,7.19778f, 0, true);
                    escort->SetSpeedXY(21.0f);
                    escort->SetSpeedZ(21.0f);
                    escort->Start(true);
                }
        }
        return true;
    }

    bool OnQuestReward(Player* player, Creature* /*creature*/, Quest const* quest, uint32 /*opt*/)
    {
        switch (quest->GetQuestId())
        {
        case QUEST_LIFE_OF_THE_PARTY_MALE:
        case QUEST_LIFE_OF_THE_PARTY_FEMALE:
            player->RemoveAurasDueToSpell(SPELL_AWESOME_PARTY_ENSEMBLE);
            player->RemoveAurasDueToSpell(SPELL_LOTP_OUTFIT_SECONDARY);
            player->RemoveAurasDueToSpell(SPELL_LOTP_OUTFIT_FEMALE);
            player->RemoveAurasDueToSpell(SPELL_LOTP_OUTFIT_MALE);
            player->RemoveAurasDueToSpell(SPELL_LOTP_PAPARAZZI);
            player->RemoveAurasDueToSpell(PHASE_QUEST_ZONE_SPECIFIC_1);
            player->AddAura(PHASE_QUEST_ZONE_SPECIFIC_2, player);
            break;
        case QUEST_PIRATE_PARTY_CRASHERS:
            player->RemoveAurasDueToSpell(PHASE_QUEST_ZONE_SPECIFIC_2);
            player->CastSpell(player, PHASE_QUEST_ZONE_SPECIFIC_3, false);
            break;
        case QUEST_A_BAZILLION_MACAROONS:
            player->RemoveAurasDueToSpell(PHASE_QUEST_ZONE_SPECIFIC_4);
            player->CastSpell(player, PHASE_QUEST_ZONE_SPECIFIC_5, false);
            break;
        case QUEST_THE_GREAT_BANK_HEIST:
            if (player->GetQuestStatus(QUEST_ROBBING_HOODS) == QUEST_STATUS_REWARDED &&
                player->GetQuestStatus(QUEST_WALTZ_RIGHT_IN) == QUEST_STATUS_REWARDED &&
                player->GetQuestStatus(QUEST_LIBERATE_THE_KAJAMITE) == QUEST_STATUS_REWARDED)
            {
                player->RemoveAura(PHASE_QUEST_ZONE_SPECIFIC_5);
                player->AddAura(PHASE_QUEST_ZONE_SPECIFIC_6, player);
                player->SaveToDB();
            }
            break;
        }

        return true;
    }

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest)
    {
        switch (quest->GetQuestId())
        {
        case QUEST_TAKING_CARE_OF_BUSINESS:
            creature->AI()->Talk(SASSY_SAY_LOL, player->GetGUID());
            break;
        case QUEST_MEGS_IN_MARKETING:
            creature->AI()->Talk(SASSY_SAY_MEGS_IN_MARKETING, player->GetGUID());
            break;
        case QUEST_DO_IT_YOURSELF:
            /*creature->DoPersonalScriptText*/DoScriptText(SASSY_SAY_HELP_HIM, player);
            break;
        case QUEST_447:
            if (player->GetPhaseMask() == 8192)
                player->CompleteQuest(QUEST_447);
            else
                /*creature->DoPersonalScriptText*/DoScriptText(SASSY_SAY_CANT_LOOK, player);
            break;
        case QUEST_LIFE_SAVINGS:
            if (player->GetPhaseMask() == 8192)
                /*creature->DoPersonalScriptText*/DoScriptText(SASSY_SAY_GO_TO_THE_GALLYWIX_BOAT, player);
            break;
        }

        return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_sassy_sardwrenchAI (creature);
    }

    struct npc_sassy_sardwrenchAI : public ScriptedAI
    {
        npc_sassy_sardwrenchAI(Creature* creature) : ScriptedAI(creature)
        {
            if (me->GetPhaseMask() == 16384)
                me->SetUInt32Value(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_NONE);
        }

        void UpdateAI(uint32 /*diff*/)
        {
            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_foreman_dampwick : public CreatureScript
{
    enum
    {
        SAY_GIFT,
        SAY_OUCH,
        SAY_OKAY,
        SAY_BOSS
    };

    bool OnGossipHello(Player* player, Creature* creature)
    {
        uint32 uiGossipId = 14684;

        if (player->GetQuestStatus(QUEST_GOOD_HELP_IS_HARD_TO_FIND) == QUEST_STATUS_COMPLETE &&
            player->GetQuestStatus(QUEST_TROUBLE_IN_THE_MINES) == QUEST_STATUS_COMPLETE)
            uiGossipId = 14685;

        if (creature->GetPhaseMask() == 4)
            uiGossipId = 14761;

        if (player->GetQuestStatus(QUEST_THE_UNINVITED_GUEST) & (QUEST_STATUS_COMPLETE | QUEST_STATUS_INCOMPLETE))
            uiGossipId = 14762;

        player->PrepareQuestMenu(creature->GetGUID());
        player->SEND_GOSSIP_MENU(uiGossipId, creature->GetGUID());
        return true;
    }

    bool OnQuestReward(Player* player, Creature* creature, Quest const* quest, uint32 /*opt*/)
    {
        if (quest->GetQuestId() == QUEST_TAKING_CARE_OF_BUSINESS)
        {
            Psc new_psc;
            new_psc.uiPlayerGUID = player->GetGUID();
            new_psc.uiEventTimer = 0;
            new_psc.uiPhase = 0;
            CAST_AI(npc_foreman_dampwickAI, creature->AI())->lPlayers.push_back(new_psc);
        }

        if (quest->GetQuestId() == QUEST_LIBERATE_THE_KAJAMITE)
            if (player->GetQuestStatus(QUEST_THE_GREAT_BANK_HEIST) == QUEST_STATUS_REWARDED &&
                player->GetQuestStatus(QUEST_ROBBING_HOODS) == QUEST_STATUS_REWARDED &&
                player->GetQuestStatus(QUEST_WALTZ_RIGHT_IN) == QUEST_STATUS_REWARDED)
            {
                player->RemoveAura(PHASE_QUEST_ZONE_SPECIFIC_5);
                player->AddAura(PHASE_QUEST_ZONE_SPECIFIC_6, player);
                player->SaveToDB();
            }

            return true;
    }

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_KAJA_COLA)
            creature->AI()->Talk(SAY_BOSS, player->GetGUID());
        return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_foreman_dampwickAI (creature);
    }

    struct npc_foreman_dampwickAI : public ScriptedAI
    {
        npc_foreman_dampwickAI(Creature* creature) : ScriptedAI(creature)
        {
            lPlayers.clear();
            uiRandomYellTimer = 1000;

            if (me->GetPhaseMask() == 16384)
                me->SetUInt32Value(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_NONE);

            if (me->GetPhaseMask() == 1)
            {
                CanYell = true;
                me->setActive(true);
            }
            else
                CanYell = false;
        }

        std::list<Psc> lPlayers;
        uint32 uiRandomYellTimer;
        bool CanYell;

        void UpdateAI(uint32 diff)
        {
            if (CanYell)
            {
                if (uiRandomYellTimer <= diff)
                {
                    uiRandomYellTimer = urand(20000, 60000);
                    Map::PlayerList const &lPlayers = me->GetMap()->GetPlayers();

                    if (lPlayers.isEmpty())
                        return;

//                    for (Map::PlayerList::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
//                        if (Player* player = itr->getSource())
//                            if (player->GetPhaseMask() == 1 && player->GetAreaId() == AREA_KAJAMITE_MINE)
//                            {
//                                uint8 roll = urand(0, 7);
//                                /*me->DoPersonalScriptText*///DoScriptText(FOREMAN_DAMPWICK_RANDOM_YELL - roll, player, true);
//                            }

                }
                else
                    uiRandomYellTimer -= diff;
            }

            if (!lPlayers.empty())
            {
                for (std::list<Psc>::iterator itr = lPlayers.begin(); itr != lPlayers.end(); )
                    if ((*itr).uiEventTimer <= diff)
                    {
                        ++(*itr).uiPhase;

                        if (Unit::GetPlayer(*me, (*itr).uiPlayerGUID))
                        {
                            switch ((*itr).uiPhase)
                            {
                            case 1:
                                (*itr).uiEventTimer = 1000;
                                /*me->DoPersonalScriptText*/Talk(SAY_GIFT);
                                break;
                            case 2:
                                (*itr).uiEventTimer = 3000;
                                DoCast(me, SPELL_SASSYS_INCENTIVE);
                                /*me->DoPersonalScriptText*/Talk(SAY_OUCH);
                                break;
                            case 3:
                                /*me->DoPersonalScriptText*/Talk(SAY_OKAY);
                                itr = lPlayers.erase(itr);
                                break;
                            }
                        }
                        else
                            itr = lPlayers.erase(itr);
                    }
                    else
                    {
                        (*itr).uiEventTimer -= diff;
                        ++itr;
                    }
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };

public:
    npc_foreman_dampwick() : CreatureScript("npc_foreman_dampwick") { }
};

///////////
// Quest Good Help is Hard to Find 14069
///////////

const uint16 TrollRandomEmoteState[4]=
{
    EMOTE_STATE_READY_UNARMED,
    EMOTE_STATE_DANCESPECIAL,
    EMOTE_STATE_ROAR,
};

class npc_defiant_troll : public CreatureScript
{
public:
    npc_defiant_troll() : CreatureScript("npc_defiant_troll") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_defiant_trollAI (creature);
    }

    struct npc_defiant_trollAI : public ScriptedAI
    {
        npc_defiant_trollAI(Creature* creature) : ScriptedAI(creature){ }

        void Reset()
        {
            uint8 roll = urand(0, 3);

            if (roll < 3)
                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, TrollRandomEmoteState[roll]);
            else
                me->AddAura(SPELL_SLEEP, me);
        }

        void UpdateAI(uint32 /*diff*/)
        {
            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class spell_goblin_all_in_1_der_belt_shocker : public SpellScriptLoader
{
    enum
    {
        SAY_TAZER
    };

    class spell_goblin_all_in_1_der_belt_shocker_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_goblin_all_in_1_der_belt_shocker_SpellScript)

        void DummyEffect(SpellEffIndex /*effIndex*/)
        {
            Creature* troll = NULL;

            if (Unit* target = GetExplTargetUnit())
                troll = target->ToCreature();

            if (!troll)
                return;

            if (!(troll->GetEntry() == NPC_DEFIANT_TROLL))
                return;

            troll->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);
            troll->SetUInt32Value(UNIT_NPC_EMOTESTATE, 0);
            troll->RemoveAllAuras();
            troll->DespawnOrUnsummon(5000);
            troll->AI()->Talk(SAY_TAZER);

            if (Player * const player = GetCaster()->ToPlayer())
                player->KilledMonsterCredit(34830);
        }

        void Register()
        {
            OnEffectHit += SpellEffectFn(spell_goblin_all_in_1_der_belt_shocker_SpellScript::DummyEffect, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

public:
    spell_goblin_all_in_1_der_belt_shocker() : SpellScriptLoader("spell_goblin_all_in_1_der_belt_shocker") { }

    SpellScript *GetSpellScript() const
    {
        return new spell_goblin_all_in_1_der_belt_shocker_SpellScript();
    }
};


///////////
// Quest Rolling with my Homies 14071
///////////

enum qRWMH
{
    SPELL_VISUAL_START_FIRE_ROCKET_1        = 7071,
    SPELL_VISUAL_START_FIRE_ROCKET_2        = 12032,

    DATA_KNOCKBACK                          = 0,
    DATA_KNOCKBACK_NONE                     = 1,
    DATA_KNOCKBACK_KNOCKBACK                = 2,
    DATA_KNOCKBACK_ALARM                    = 3,
    DATA_KNOCKBACK_IMMUNE                   = 4,
};

const uint32 Homies[3]=
{
    NPC_ACE,
    NPC_GOBBER,
    NPC_IZZY
};

const uint32 InvisHomies[3]=
{
    NPC_INVIS_ACE,
    NPC_INVIS_GOBBER,
    NPC_INVIS_IZZY
};

const uint64 DetectSpells[3]=
{
    SPELL_QUEST_INVISIBILITY_DETECTION_1,
    SPELL_QUEST_INVISIBILITY_DETECTION_2,
    SPELL_QUEST_INVISIBILITY_DETECTION_3
};

const uint16 RollingEmote[7]=
{
    EMOTE_ONESHOT_ROAR,
    EMOTE_ONESHOT_BATTLE_ROAR,
    EMOTE_ONESHOT_POINT,
    EMOTE_ONESHOT_RUDE,
    EMOTE_ONESHOT_LAUGH,
    EMOTE_ONESHOT_CRY,
    EMOTE_ONESHOT_COWER
};

const uint16 RollingEmoteState[7]=
{
    EMOTE_ONESHOT_CRY,
    EMOTE_STATE_STUN,
    EMOTE_STATE_DEAD,
    EMOTE_STATE_KNEEL,
    EMOTE_STATE_FALL,
    EMOTE_STATE_COWER,
    EMOTE_ONESHOT_KNOCKDOWN
};

static float CitizenAtTribune[8][3]=
{
    {-8259.96f,1468.21f,43.67f},
    {-8258.11f,1499.26f,43.61f},
    {-8265.65f,1499.59f,44.16f},
    {-8278.00f,1499.43f,44.89f},
    {-8285.91f,1499.94f,45.37f},
    {-8284.19f,1468.88f,44.88f},
    {-8277.95f,1468.16f,44.67f},
    {-8267.49f,1467.81f,44.14f},
};

static float CitizenInBank[12][3]=
{
    {-8373.08f,1728.13f,39.9428f},
    {-8369.11f,1727.94f,39.9818f},
    {-8364.33f,1727.73f,39.9517f},
    {-8360.16f,1725.19f,39.9468f},
    {-8356.08f,1725.18f,42.3415f},
    {-8346.05f,1725.22f,49.9416f},
    {-8351.53f,1725.34f,45.7875f},
    {-8339.41f,1725.17f,50.7469f},
    {-8362.91f,1723.26f,39.9479f},
    {-8368.51f,1722.14f,39.9835f},
    {-8373.52f,1722.16f,39.9445f},
    {-8331.84f,1725.48f,50.7286f},
};

const uint16 TribuneEmotes[15]=
{
    EMOTE_ONESHOT_QUESTION,
    EMOTE_ONESHOT_EXCLAMATION,
    EMOTE_ONESHOT_NO,
    EMOTE_ONESHOT_TALK,
    EMOTE_ONESHOT_POINT,
    EMOTE_ONESHOT_DANCE,
    EMOTE_ONESHOT_CHEER,
    EMOTE_ONESHOT_ROAR,
    EMOTE_ONESHOT_CHICKEN,
    EMOTE_ONESHOT_EAT_NOSHEATHE,
    EMOTE_ONESHOT_RUDE,
    EMOTE_ONESHOT_LAUGH,
    EMOTE_ONESHOT_YES,
    EMOTE_ONESHOT_WAVE,
    EMOTE_ONESHOT_SPELL_CAST_OMNI
};

const uint32 BoomVisualEffect[12] = {17582,17583,7244,10014,9991,8792,8095,14577,18406,13935,13933,13934};

class npc_megs_dreadshredder : public CreatureScript
{
public:
    npc_megs_dreadshredder() : CreatureScript("npc_megs_dreadshredder") { }

    enum talks
    {
        DREADSHREDDER_SAY_USE_KEYS      = 0,
        DREADSHREDDER_SAY_YOU_LIKE_IT   = 1,
        DREADSHREDDER_SAY_FINISH        = 2,
    };

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (creature->GetPhaseMask() == 4)
        {
            player->SEND_GOSSIP_MENU(14658, creature->GetGUID());
            return true;
        }

        return false;
    }

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_ROLLING_WITH_MY_HOMIES)
        {
            if (Creature* hotrod = player->GetVehicleCreatureBase())
            {
                if (hotrod->GetEntry() == NPC_HOT_ROD)
                    if (Vehicle* vehicle = hotrod->GetVehicleKit())
                    {
                        player->KilledMonsterCredit(NPC_HOTROD_KILL_CREDIT, 0);

                        for (int i = 0; i < 3; ++i)
                            if (vehicle->GetPassenger(i + 1))
                                player->KilledMonsterCredit(InvisHomies[i], 0);
                            else
                                player->AddAura(DetectSpells[i], player);

                        return true;
                    }
            }
            else
            {
                for (int i = 0; i < 3; ++i)
                    player->CastSpell(player, DetectSpells[i], true);

                creature->AI()->Talk(DREADSHREDDER_SAY_USE_KEYS, player->GetGUID());
                creature->AI()->Talk(DREADSHREDDER_SAY_YOU_LIKE_IT, player->GetGUID());
            }
        }

            return true;
    }

    bool OnQuestReward(Player* player, Creature* creature, Quest const* quest, uint32 /*opt*/)
    {
        if (quest->GetQuestId() == QUEST_ROLLING_WITH_MY_HOMIES)
            creature->AI()->Talk(DREADSHREDDER_SAY_FINISH, player->GetGUID());

        if (quest->GetQuestId() == QUEST_ROBBING_HOODS)
            if (player->GetQuestStatus(QUEST_THE_GREAT_BANK_HEIST) == QUEST_STATUS_REWARDED &&
                player->GetQuestStatus(QUEST_WALTZ_RIGHT_IN) == QUEST_STATUS_REWARDED &&
                player->GetQuestStatus(QUEST_LIBERATE_THE_KAJAMITE) == QUEST_STATUS_REWARDED)
            {
                player->RemoveAura(PHASE_QUEST_ZONE_SPECIFIC_5);
                player->AddAura(PHASE_QUEST_ZONE_SPECIFIC_6, player);
                player->SaveToDB();
            }

            return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_megs_dreadshredderAI (creature);
    }

    struct npc_megs_dreadshredderAI : public ScriptedAI
    {
        npc_megs_dreadshredderAI(Creature* creature) : ScriptedAI(creature)
        {
            if (me->GetPhaseMask() == 16384)
                me->SetUInt32Value(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_NONE);
        }

        void UpdateAI(uint32 /*diff*/)
        {
            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_homies_follower : public CreatureScript
{
public:
    npc_homies_follower() : CreatureScript("npc_homies_follower") { }

    bool OnQuestAccept(Player* player, Creature* /*creature*/, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_ROLLING_WITH_MY_HOMIES)
            if (Creature* hotrod = player->GetVehicleCreatureBase())
                if (hotrod->GetEntry() == NPC_HOT_ROD)
                    if (Vehicle* vehicle = hotrod->GetVehicleKit())
                    {
                        player->KilledMonsterCredit(NPC_HOTROD_KILL_CREDIT, 0);

                        for (int i = 0; i < 3; ++i)
                            if (vehicle->GetPassenger(i + 1))
                                player->KilledMonsterCredit(InvisHomies[i], 0);
                            else
                                player->AddAura(DetectSpells[i], player);

                        return true;
                    }

                    return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_homies_followerAI(creature);
    }

    struct npc_homies_followerAI : public FollowerAI
    {
        npc_homies_followerAI(Creature* creature) : FollowerAI(creature)
        {
            Follow = false;
            creature->SetReactState(REACT_PASSIVE);
            creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
        }

        bool Follow;

        void EnterEvadeMode()
        {
            FollowerAI::EnterEvadeMode();
        }

        void UpdateAI(uint32 diff)
        {
            if (Follow)
            {
                Follow = false;

                if (me->isSummon())
                    if (Player* player = me->ToTempSummon()->GetSummoner()->ToPlayer())
                    {
                        StartFollow(player);
                        /*
                        float angle = 0.0f;

                        switch (me->GetEntry())
                        {
                        case NPC_ACE:
                            angle = M_PI + M_PI / 4;
                            break;
                        case NPC_GOBBER:
                            angle = M_PI;
                            break;
                        case NPC_IZZY:
                            angle = M_PI - M_PI / 4;
                            break;
                        }

                        StartFollow(player, 0, NULL, angle, 0.5f);
                        */
                    }
            }

            FollowerAI::UpdateAI(diff);
        }
    };
};

class npc_hot_rod : public CreatureScript
{
public:
    npc_hot_rod() : CreatureScript("npc_hot_rod") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_hot_rodAI (creature);
    }

    struct npc_hot_rodAI : public ScriptedAI
    {
        npc_hot_rodAI(Creature* creature) : ScriptedAI(creature)
        {
            uiSpeedTimer = 100;
            uiSayTimer = 5000;
            uiInWaterTimer = 1000;
            Speed = 0.5f;
            Boost = 0.0f;
            IsBoost = false;
            Moving = false;
            Event = false;
            Despawn = false;
            Boom = false;
            Say = false;
            InWater = false;
            me->AddAura(88480, me);
            creature->SetReactState(REACT_PASSIVE);
            creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        }

        uint32 uiSpeedTimer;
        uint32 uiSayTimer;
        uint32 uiInWaterTimer;
        float Speed;
        float Boost;
        bool IsBoost;
        bool Moving;
        bool Event;
        bool Despawn;
        bool Boom;
        bool Say;
        bool InWater;

        void Reset()
        {
            if (Boom)
                me->AddAura(SPELL_BOOM_INVIS_MODEL, me);
        }

        void DamageTaken(Unit* /*done_by*/, uint32 &damage)
        {
            damage = 0;
        }

        void SpellHit(Unit* /*caster*/, const SpellInfo* spell)
        {
            if (spell->Id == SPELL_CREATE_STOLEN_LOOT)
                if (Vehicle* vehicle = me->GetVehicleKit())
                    if (Unit* passenger = vehicle->GetPassenger(0))
                        if (Player* player = passenger->ToPlayer())
                        {
                            if (player->HasItemCount(ITEM_STOLEN_LOOT, 12))
                                return;

                            ItemPosCountVec dest;
                            uint32 no_space = 0;
                            uint8 msg = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, ITEM_STOLEN_LOOT, 1, &no_space);

                            if (msg != EQUIP_ERR_OK)
                                return;

                            Item* item = player->StoreNewItem(dest, ITEM_STOLEN_LOOT, true, Item::GenerateItemRandomPropertyId(ITEM_STOLEN_LOOT));

                            if (!item)
                            {
                                player->SendEquipError(EQUIP_ERR_ITEM_NOT_FOUND, NULL, NULL);
                                return;
                            }

                            if (item)
                                player->SendNewItem(item, 1, true, true);
                        }

                        if (!Boom && spell->Id == SPELL_ROCKET)
                            if (Vehicle* vehicle = me->GetVehicleKit())
                                if (Unit* passenger = vehicle->GetPassenger(0))
                                {
                                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                                    Boom = true;
                                    passenger->ExitVehicle();
                                    DoCast(me, SPELL_BOOM_INVIS_MODEL);

                                    for (int i = 0; i < 12; ++i)
                                        me->SendPlaySpellVisualKit(BoomVisualEffect[i], 0);
                                }
        }

        void PressureCitizensEvent(uint8 s_roll, uint32 text_id)
        {
            Say = true;
            uint8 h_roll = urand(1, 3);

            if (Vehicle* vehicle = me->GetVehicleKit())
            {
                if (Unit* passenger = vehicle->GetPassenger(h_roll))
                {
                    if (/*Creature* homies = */passenger->ToCreature())
                    {
                        if (Unit* passenger_player = vehicle->GetPassenger(0))
                        {
                            if (Player* player = passenger_player->ToPlayer())
                            {
                                uint8 roll = urand(0, s_roll);
                                /*homies->DoPersonalScriptText*/DoScriptText(text_id - roll, player);
                            }
                        }
                    }
                }
            }
        }

        void SetBoost(bool apply)
        {
            if (apply)
            {
                IsBoost = true;
                Boost = Speed / 2;
                me->SetSpeed(MOVE_RUN, Speed + Boost, true);
            }
            else
            {
                IsBoost = false;
                Boost = 0.0f;
                me->SetSpeed(MOVE_RUN, Speed, true);
            }
        }

        void PassengerBoarded(Unit* who, int8 seatId, bool apply)
        {
            if (!(seatId == 0 && !apply))
                return;

            Player* player = who->ToPlayer();

            if (!player)
                return;

            Despawn = true;

            if (Vehicle* vehicle = me->GetVehicleKit())
                for (int i = 1; i < 4; ++i)
                    if (Unit* passenger = vehicle->GetPassenger(i))
                        if (Creature* homies = passenger->ToCreature())
                            homies->DespawnOrUnsummon();
        }

        void OnCharmed(bool /*charm*/)
        {
            me->IsAIEnabled = true;
            me->NeedChangeAI = false;
        }

        void UpdateAI(uint32 diff)
        {
            if (Say)
            {
                if (uiSayTimer <= diff)
                {
                    Say = false;
                    uiSayTimer = 5000;
                }
                else
                    uiSayTimer -= diff;
            }

            if (Despawn)
            {
                Despawn = false;
                uint16 uiDespawnTimer = 0;

                if (Boom)
                    uiDespawnTimer = 5000;

                if (me->isSummon())
                    if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                        if (Player* player = summoner->ToPlayer())
                        {
                            player->RemoveAura(SPELL_KEYS_TO_THE_HOT_ROD);
                            player->AddAura(SPELL_KEYS_TO_THE_HOT_ROD, player);
                        }

                        me->DespawnOrUnsummon(uiDespawnTimer);
            }

            if (!Moving && Event)
            {
                Event = false;
                Vehicle* vehicle = me->GetVehicleKit();

                if (!vehicle)
                    return;

                Player* player = NULL;

                if (Unit* passenger = vehicle->GetPassenger(0))
                    player = passenger->ToPlayer();

                if (!player)
                    return;

                QuestStatusMap::iterator itr = player->getQuestStatusMap().find(QUEST_ROLLING_WITH_MY_HOMIES);

                if (itr == player->getQuestStatusMap().end())
                    return;

                QuestStatusData& q_status = itr->second;
                Quest const* qInfo = sObjectMgr->GetQuestTemplate(QUEST_ROLLING_WITH_MY_HOMIES);

                if (!qInfo)
                    return;

                if (q_status.Status == QUEST_STATUS_INCOMPLETE)
                {
                    for (uint32 i = 0; i < 3; ++i)
                    {
                        if (q_status.CreatureOrGOCount[i + 1] == 0)
                        {
                            if (Creature* invis_homies = player->FindNearestCreature(InvisHomies[i], 10.0f))
                            {
                                player->KilledMonsterCredit(InvisHomies[i], 0);
                                player->RemoveAura(DetectSpells[i]);
                                float x, y, z, o;
                                invis_homies->GetPosition(x, y, z, o);

                                if (Creature* homies = player->SummonCreature(Homies[i], x, y, z, o))
                                {
                                    homies->SetSeerGUID(player->GetGUID());
                                    homies->SetVisible(false);
                                    homies->EnterVehicle(me, i + 1);
                                }
                            }
                        }
                    }
                }
            }

            if (uiSpeedTimer <= diff)
            {
                uiSpeedTimer = 100;

                if (me->IsInWater())
                    InWater = true;

                if (me->isMoving())
                {
                    DoCast(me, SPELL_HOT_ROD_KNOCKBACK);
                    Moving = true;
                    Event = true;

                    if (Speed < 3.0f)
                    {
                        if (IsBoost)
                        {
                            Boost = Speed / 2;
                            Speed = Speed + 0.2;
                        }
                        else
                            Speed = Speed + 0.1;

                        me->SetSpeed(MOVE_RUN, Speed + Boost, true);
                    }
                }
                else
                {
                    Moving = false;

                    if (Speed > 0.5f)
                    {
                        Speed = 0.5f;
                        Boost = 0.0f;
                        me->SetSpeed(MOVE_RUN, Speed, true);
                    }
                }
            }
            else
                uiSpeedTimer -= diff;

            if (InWater)
            {
                if (uiInWaterTimer <= diff)
                {
                    InWater = false;
                    uiInWaterTimer = 1000;

                    if (me->IsInWater() && !Boom)
                        if (Vehicle* vehicle = me->GetVehicleKit())
                            if (Unit* passenger = vehicle->GetPassenger(0))
                            {
                                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                                Boom = true;
                                passenger->ExitVehicle();
                                DoCast(me, SPELL_BOOM_INVIS_MODEL);
                                DoCast(73839);
                                DoCast(84376);
                                DoCast(84509);
                            }
                }
                else
                    uiInWaterTimer -= diff;
            }
        }
    };
};

class npc_kezan_citizen : public CreatureScript
{
public:
    npc_kezan_citizen() : CreatureScript("npc_kezan_citizen") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_kezan_citizenAI (creature);
    }

    struct npc_kezan_citizenAI : public ScriptedAI
    {
        npc_kezan_citizenAI(Creature* creature) : ScriptedAI(creature)
        {
            uiHotRodGUID = 0;
            uiCastTimer = 1500;
            uiEventTimer = 5000;
            uiKnockbackTimer = 5000;
            uiCastPhase = 0;
            uiKnockbackData = DATA_KNOCKBACK_NONE;
            Event = false;
            Cast = false;
            uiRandomEmoteTimer = urand(2000, 5000);
            uiColaCanTimer = urand(4000, 8000);
            CheckPosition();
        }

        uint64 uiHotRodGUID;
        uint32 uiEventTimer;
        uint32 uiCastTimer;
        uint32 uiKnockbackTimer;
        uint32 uiRandomEmoteTimer;
        uint32 uiColaCanTimer;
        uint8 uiCastPhase;
        uint8 uiKnockbackData;
        bool Event;
        bool Cast;
        bool AtTribune;

        void CheckPosition()
        {
            if (me->HasAura(SPELL_PANICKED_CITIZEN_INVIS))
                return;

            Position pos;
            me->GetPosition(&pos);

            for (int i = 0; i < 8; ++i)
            {
                float dist = pos.GetExactDist(CitizenAtTribune[i][0], CitizenAtTribune[i][1], CitizenAtTribune[i][2]);

                if (dist < 7.0f)
                {
                    AtTribune = true;
                    uiKnockbackData = DATA_KNOCKBACK_IMMUNE;
                    return;
                }
            }

            for (int i = 0; i < 12; ++i)
            {
                float dist = pos.GetExactDist(CitizenInBank[i][0], CitizenInBank[i][1], CitizenInBank[i][2]);

                if (dist < 7.0f)
                {
                    uiKnockbackData = DATA_KNOCKBACK_IMMUNE;
                    return;
                }
            }

            AtTribune = false;
        }

        uint32 GetData(uint32 data)
        {
            if (data == DATA_KNOCKBACK)
                return uiKnockbackData;

            return 0;
        }

        void MoveScare(Unit* caster)
        {
            Event = true;
            me->HandleEmoteCommand(EMOTE_ONESHOT_COWER);
            me->RemoveUnitMovementFlag(MOVEMENTFLAG_WALKING);
            float h_angle = caster->GetOrientation();
            float m_angle = caster->GetAngle(me);
            float angle = me->GetAngle(caster);
            float x, y, z = me->GetPositionZ();

            if (h_angle - m_angle < 0)
                me->GetNearPoint2D(x, y, 7.0f, angle + M_PI + M_PI / 4);
            else
                me->GetNearPoint2D(x, y, 7.0f, angle + M_PI - M_PI / 4);

            me->GetMotionMaster()->MovePoint(0, x, y, z);
        }

        void MoveKnockback(Creature* hotrod)
        {
            if (hotrod->GetEntry() == NPC_HOT_ROD)
            {
                uint8 a_roll = urand(0, 150);

                if (a_roll < 10)
                {
                    me->setFaction(14);
                    Cast = true;
                    uiHotRodGUID = hotrod->GetGUID();
                    uiCastPhase = 0;
                    uint8 y_roll = urand(0, 4);
                    uiKnockbackData = DATA_KNOCKBACK_ALARM;
                    CAST_AI(npc_hot_rod::npc_hot_rodAI, hotrod->AI())->PressureCitizensEvent(5, HOMIES_RANDOM_ALARM);

                    if (Vehicle* vehicle = hotrod->GetVehicleKit())
                        if (Unit* passenger = vehicle->GetPassenger(0))
                            if (Player* player = passenger->ToPlayer())
                                /*me->DoPersonalScriptText*/DoScriptText(CITIZEN_RANDOM_ALARM - y_roll, player);
                }
                else
                {
                    uiKnockbackData = DATA_KNOCKBACK_KNOCKBACK;
                    uint8 s_roll = urand(0, 13);
                    uint8 e_roll = urand(0, 6);
                    me->SetUInt32Value(UNIT_NPC_EMOTESTATE, RollingEmoteState[e_roll]);

                    if (!CAST_AI(npc_hot_rod::npc_hot_rodAI, hotrod->AI())->Say)
                    {
                        CAST_AI(npc_hot_rod::npc_hot_rodAI, hotrod->AI())->PressureCitizensEvent(10, HOMIES_RANDOM_SAY);

                        if (Vehicle* vehicle = hotrod->GetVehicleKit())
                            if (Unit* passenger = vehicle->GetPassenger(0))
                                if (Player* player = passenger->ToPlayer())
                                    /*me->DoPersonalScriptText*/DoScriptText(CITIZEN_RANDOM_SAY - s_roll, player);
                    }
                }
            }
            else
                if (hotrod->GetEntry() == NPC_HOT_ROD_LS)
                {
                    uiKnockbackData = DATA_KNOCKBACK_KNOCKBACK;
                    //uint8 s_roll = urand(0, 13);
                    uint8 e_roll = urand(0, 6);
                    me->SetUInt32Value(UNIT_NPC_EMOTESTATE, RollingEmoteState[e_roll]);
                }
        }

        void SpellHit(Unit* caster, const SpellInfo* spell)
        {
            if (spell->Id == SPELL_HOT_ROD_HONK_HORN)
                if (!Event && uiKnockbackData == DATA_KNOCKBACK_NONE)
                    MoveScare(caster);
        }

        void UpdateAI(uint32 diff)
        {
            if (AtTribune)
            {
                if (uiRandomEmoteTimer <= diff)
                {
                    uint8 roll = urand(0, 14);
                    me->HandleEmoteCommand(TribuneEmotes[roll]);
                    uiRandomEmoteTimer = urand(3000, 7000);
                }
                else
                    uiRandomEmoteTimer -= diff;

                if (uiColaCanTimer <= diff)
                {
                    DoCast(me, SPELL_COLA_CAN, false);
                    uiColaCanTimer = urand(4000, 10000);
                }
                else
                    uiColaCanTimer -= diff;

                return;
            }

            if (Cast)
            {
                if (uiCastTimer <= diff)
                {
                    ++uiCastPhase;

                    if (Unit* hotrod = Unit::GetCreature(*me, uiHotRodGUID))
                        switch (uiCastPhase)
                    {
                        case 1:
                            {
                                uiCastTimer = 500;
                                uint8 e_roll = urand(0, 4);
                                me->HandleEmoteCommand(RollingEmote[e_roll]);
                                me->SetFacingToObject(hotrod);
                            }
                            break;
                        case 2:
                            {
                                uiCastTimer = 500;
                                me->SendPlaySpellVisualKit(SPELL_VISUAL_START_FIRE_ROCKET_1, 0);
                                me->SendPlaySpellVisualKit(SPELL_VISUAL_START_FIRE_ROCKET_2, 0);
                                float x, y, z;
                                hotrod->GetPosition(x, y, z);
                                me->GetMotionMaster()->MoveCharge(x, y, z);
                            }
                            break;
                        case 3:
                            {
                                uiCastTimer = 1500;
                                float x, y, z;
                                hotrod->GetPosition(x, y, z);
                                me->GetMotionMaster()->MoveCharge(x, y, z);
                                me->CastSpell(hotrod, SPELL_ROCKET, false);
                                me->setFaction(2159);
                            }
                            break;
                        case 4:
                            Cast = false;
                            uiCastTimer = 1500;
                            uiKnockbackData = DATA_KNOCKBACK_NONE;
                            me->DespawnOrUnsummon();
                            break;
                    }
                }
                else
                    uiCastTimer -= diff;
            }

            if (uiKnockbackData == DATA_KNOCKBACK_KNOCKBACK)
            {
                if (uiKnockbackTimer <= diff)
                {
                    uiKnockbackTimer = 5000;
                    uiKnockbackData = DATA_KNOCKBACK_NONE;
                    me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_NONE);
                    me->GetMotionMaster()->MoveTargetedHome();
                }
                else
                    uiKnockbackTimer -= diff;
            }

            if (Event)
            {
                if (uiEventTimer <= diff)
                {
                    Event = false;
                    uiEventTimer = 5000;
                    me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                    me->GetMotionMaster()->MoveTargetedHome();
                }
                else
                    uiEventTimer -= diff;
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class spell_keys_to_the_hot_rod : public SpellScriptLoader
{
public:
    spell_keys_to_the_hot_rod() : SpellScriptLoader("spell_keys_to_the_hot_rod") { }

    class spell_keys_to_the_hot_rod_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_keys_to_the_hot_rod_AuraScript);

        uint64 uiSummonedHomies[3];

        bool Load()
        {
            memset(&uiSummonedHomies, 0, sizeof(uiSummonedHomies));
            return true;
        }

        void SummonHomies(Player* player, int i)
        {
            if (player->GetVehicle())
                return;

            float x, y, z, o;
            player->GetPosition(x, y, z, o);

            if (Creature* homies = player->SummonCreature(Homies[i], x, y, z, o))
            {
                homies->SetSeerGUID(player->GetGUID());
                homies->SetVisible(false);

                if (Creature* summoned_homies = Unit::GetCreature(*player, uiSummonedHomies[i]))
                    summoned_homies->DespawnOrUnsummon();

                uiSummonedHomies[i] = homies->GetGUID();
                CAST_AI(npc_homies_follower::npc_homies_followerAI, homies->AI())->Follow = true;
            }
        }

        void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            Player* player = NULL;

            if (Unit* caster = GetCaster())
                player = caster->ToPlayer();

            if (!player)
                return;

            switch (player->getGender())
            {
            case GENDER_MALE:
                {
                    if (player->GetQuestStatus(QUEST_LIFE_OF_THE_PARTY_MALE) == QUEST_STATUS_INCOMPLETE ||
                        player->GetQuestStatus(QUEST_LIFE_OF_THE_PARTY_MALE) == QUEST_STATUS_COMPLETE)
                        return;

                    RewardedQuestSet::const_iterator complete_quest_life;
                    complete_quest_life = player->getRewardedQuests().find(QUEST_LIFE_OF_THE_PARTY_MALE);

                    if (complete_quest_life != player->getRewardedQuests().end())
                        return;
                }
                break;
            case GENDER_FEMALE:
                {
                    if (player->GetQuestStatus(QUEST_LIFE_OF_THE_PARTY_FEMALE) == QUEST_STATUS_INCOMPLETE ||
                        player->GetQuestStatus(QUEST_LIFE_OF_THE_PARTY_FEMALE) == QUEST_STATUS_COMPLETE)
                        return;

                    RewardedQuestSet::const_iterator complete_quest_life;
                    complete_quest_life = player->getRewardedQuests().find(QUEST_LIFE_OF_THE_PARTY_FEMALE);

                    if (complete_quest_life != player->getRewardedQuests().end())
                        return;
                }
                break;
            }

            RewardedQuestSet::const_iterator complete_quest_rolling;
            complete_quest_rolling = player->getRewardedQuests().find(QUEST_ROLLING_WITH_MY_HOMIES);

            if (complete_quest_rolling != player->getRewardedQuests().end())
            {
                for (int i = 0; i < 3; ++i)
                    SummonHomies(player, i);

                return;
            }

            QuestStatusMap::iterator itr = player->getQuestStatusMap().find(QUEST_ROLLING_WITH_MY_HOMIES);

            if (itr == player->getQuestStatusMap().end())
                return;

            QuestStatusData& q_status = itr->second;

            if (q_status.Status == QUEST_STATUS_INCOMPLETE)
            {
                for (int i = 0; i <3; ++i)
                    if (q_status.CreatureOrGOCount[i + 1] == 1)
                        SummonHomies(player, i);
            }
            else
                for (int i = 0; i < 3; ++i)
                    SummonHomies(player, i);
        }

        void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            Player* player = NULL;

            if (Unit* caster = GetCaster())
                player = caster->ToPlayer();

            if (!player)
                return;

            for (int i = 0; i < 3; ++i)
                if (Creature* summoned_homies = Unit::GetCreature(*player, uiSummonedHomies[i]))
                {
                    summoned_homies->DespawnOrUnsummon();
                    uiSummonedHomies[i] = 0;
                }
        }

        void Register()
        {
            OnEffectApply += AuraEffectApplyFn(spell_keys_to_the_hot_rod_AuraScript::OnApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            OnEffectRemove += AuraEffectRemoveFn(spell_keys_to_the_hot_rod_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_keys_to_the_hot_rod_AuraScript();
    }
};

class spell_summon_hot_rod : public SpellScriptLoader
{
public:
    spell_summon_hot_rod() : SpellScriptLoader("spell_summon_hot_rod") { }

    class spell_summon_hot_rod_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_summon_hot_rod_SpellScript)

            void SummonHomies(Player* summoner, Creature* hotrod, int i)
        {
            float x, y, z, o;
            summoner->GetPosition(x, y, z, o);

            if (Creature* homies = summoner->SummonCreature(Homies[i - 1], x, y, z, o))
            {
                homies->SetSeerGUID(summoner->GetGUID());
                homies->SetVisible(false);
                homies->EnterVehicle(hotrod, i);
            }
        }

        void SummonHotRod(SpellEffIndex effIndex)
        {
            PreventHitDefaultEffect(effIndex);

            Player* player = NULL;

            if (Unit* caster = GetCaster())
                player = caster->ToPlayer();

            if (!player)
                return;

            float x, y, z, o;
            player->GetPosition(x, y, z, o);

            if (Creature* hotrod = player->SummonCreature(NPC_HOT_ROD, x, y, z, o))
            {
                if (player->GetPet())
                    player->CastSpell(player, 36562, false);

                player->EnterVehicle(hotrod, 0);
                hotrod->CombatStart(player);
                player->CombatStart(hotrod);
                player->RemoveAura(SPELL_KEYS_TO_THE_HOT_ROD);
                player->AddAura(SPELL_KEYS_TO_THE_HOT_ROD, player);
                //FIXME - MERGE player->ClearUnitState(UNIT_STATE_ONVEHICLE);

                switch (player->getGender())
                {
                case GENDER_MALE:
                    {
                        if (player->GetQuestStatus(QUEST_LIFE_OF_THE_PARTY_MALE) == QUEST_STATUS_INCOMPLETE ||
                            player->GetQuestStatus(QUEST_LIFE_OF_THE_PARTY_MALE) == QUEST_STATUS_COMPLETE)
                            return;

                        RewardedQuestSet::const_iterator complete_quest_life;
                        complete_quest_life = player->getRewardedQuests().find(QUEST_LIFE_OF_THE_PARTY_MALE);

                        if (complete_quest_life != player->getRewardedQuests().end())
                            return;
                    }
                    break;
                case GENDER_FEMALE:
                    {
                        if (player->GetQuestStatus(QUEST_LIFE_OF_THE_PARTY_FEMALE) == QUEST_STATUS_INCOMPLETE ||
                            player->GetQuestStatus(QUEST_LIFE_OF_THE_PARTY_FEMALE) == QUEST_STATUS_COMPLETE)
                            return;

                        RewardedQuestSet::const_iterator complete_quest_life;
                        complete_quest_life = player->getRewardedQuests().find(QUEST_LIFE_OF_THE_PARTY_FEMALE);

                        if (complete_quest_life != player->getRewardedQuests().end())
                            return;
                    }
                    break;
                }

                RewardedQuestSet::const_iterator complete_quest;
                complete_quest = player->getRewardedQuests().find(QUEST_ROLLING_WITH_MY_HOMIES);

                if (complete_quest != player->getRewardedQuests().end())
                {
                    for (int i = 1; i < 4; ++i)
                        SummonHomies(player, hotrod, i);

                    return;
                }

                QuestStatusMap::iterator incomplete_quest = player->getQuestStatusMap().find(QUEST_ROLLING_WITH_MY_HOMIES);

                if (incomplete_quest == player->getQuestStatusMap().end())
                    return;

                QuestStatusData& q_status = incomplete_quest->second;

                for (int i = 1; i < 4; ++i)
                    if (q_status.CreatureOrGOCount[i] == 1)
                        SummonHomies(player, hotrod, i);
            }
        }

        void Register()
        {
            OnEffectHit += SpellEffectFn(spell_summon_hot_rod_SpellScript::SummonHotRod, EFFECT_0, SPELL_EFFECT_SUMMON);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_summon_hot_rod_SpellScript();
    }
};

class spell_punch_it_boost : public SpellScriptLoader
{
public:
    spell_punch_it_boost() : SpellScriptLoader("spell_punch_it_boost") { }

    class spell_punch_it_boost_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_punch_it_boost_AuraScript);

        enum sBoost
        {
            SPELL_VISUAL_BOOS_1    = 1168,
            SPELL_VISUAL_BOOS_2    = 6695,
        };

        void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            PreventDefaultAction();

            Creature* hotrod = NULL;

            if (Unit* target = GetTarget())
                hotrod = target->ToCreature();

            if (!hotrod)
                return;

            if (hotrod->GetEntry() != NPC_HOT_ROD)
                return;

            hotrod->SendPlaySpellVisualKit(SPELL_VISUAL_BOOS_1, 0);
            hotrod->SendPlaySpellVisualKit(SPELL_VISUAL_BOOS_2, 0);

            CAST_AI(npc_hot_rod::npc_hot_rodAI, hotrod->AI())->SetBoost(true);
        }

        void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            PreventDefaultAction();

            Creature* hotrod = NULL;

            if (Unit* target = GetTarget())
                hotrod = target->ToCreature();

            if (!hotrod)
                return;

            if  (hotrod->GetEntry() != NPC_HOT_ROD)
                return;

            CAST_AI(npc_hot_rod::npc_hot_rodAI, hotrod->AI())->SetBoost(false);
        }

        void Register()
        {
            OnEffectApply += AuraEffectApplyFn(spell_punch_it_boost_AuraScript::OnApply, EFFECT_0, SPELL_AURA_MOD_SPEED_NOT_STACK, AURA_EFFECT_HANDLE_REAL);
            OnEffectRemove += AuraEffectRemoveFn(spell_punch_it_boost_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_MOD_SPEED_NOT_STACK, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_punch_it_boost_AuraScript();
    }
};

class spell_hot_rod_honk_horn : public SpellScriptLoader
{
public:
    spell_hot_rod_honk_horn() : SpellScriptLoader("spell_hot_rod_honk_horn") { }

    class spell_hot_rod_honk_horn_SpellScript : public SpellScript
    {
        enum sBeep
        {
            SOUND_BEEP    = 22491,
        };

        PrepareSpellScript(spell_hot_rod_honk_horn_SpellScript)

        void Beep(SpellEffIndex /*effIndex*/)
        {
            Player* player = NULL;

            if (Unit* caster = GetCaster())
                if (Vehicle* vehicle = caster->GetVehicleKit())
                    if (Unit* passenger = vehicle->GetPassenger(0))
                        player = passenger->ToPlayer();

            if (!player)
                return;

            uint8 roll = urand(0, 19);
            LocaleConstant loc_idx = player->GetSession()->GetSessionDbLocaleIndex();
            char const* text = sObjectMgr->GetTrinityString(PLAYER_RANDOM_YELL - roll, loc_idx);
            player->Yell(text, LANG_UNIVERSAL);
            roll = urand(0, 3);
            player->HandleEmoteCommand(RollingEmote[roll]);
        }

        void Register()
        {
            OnEffectHit += SpellEffectFn(spell_hot_rod_honk_horn_SpellScript::Beep, EFFECT_0, SPELL_EFFECT_PLAY_SOUND);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_hot_rod_honk_horn_SpellScript();
    }
};

class spell_hot_rod_knockback : public SpellScriptLoader
{
public:
    spell_hot_rod_knockback() : SpellScriptLoader("spell_hot_rod_knockback") { }

    class spell_hot_rod_knockback_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_hot_rod_knockback_SpellScript)

            void Knockback(SpellEffIndex effIndex)
        {
            PreventHitDefaultEffect(effIndex);

            Creature* citizen = NULL;
            Creature* hotrod = NULL;

            if (Unit* target = GetHitUnit())
                citizen = target->ToCreature();

            if (Unit* caster = GetCaster())
                hotrod = caster->ToCreature();

            if (!(citizen && hotrod))
                return;

            npc_kezan_citizen::npc_kezan_citizenAI *citizenAI = CAST_AI(npc_kezan_citizen::npc_kezan_citizenAI, citizen->AI());
            if (!citizenAI || citizenAI->GetData(DATA_KNOCKBACK) != DATA_KNOCKBACK_NONE)
                return;

            npc_hot_rod::npc_hot_rodAI *hotrodAI = CAST_AI(npc_hot_rod::npc_hot_rodAI, hotrod->AI());
            if (!hotrodAI)
                return;

            float speed = hotrodAI->Speed;
            float boost = hotrodAI->Boost;

            if (speed + boost > 2.5f)
            {
                if (citizen->IsNonMeleeSpellCasted(true))
                    citizen->InterruptNonMeleeSpells(true);

                float x, y;
                hotrod->GetPosition(x, y);
                citizen->KnockbackFrom(x, y, 15.0f, 10.0f);
                citizenAI->MoveKnockback(hotrod);
            }
            else if (!hotrodAI->Event)
            {
                citizenAI->MoveScare(hotrod);
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_hot_rod_knockback_SpellScript::Knockback, EFFECT_0, SPELL_EFFECT_KNOCK_BACK);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_hot_rod_knockback_SpellScript();
    }
};

///////////
// Quests:
//     The Replacements    24488,
//     Necessary Roughness 24502,
//     Fourth and Goal     28414,
///////////

enum qTR
{
    SOUND_WOW_1                             = 17466,
    SOUND_WOW_2                             = 17467,
    DEATHWING_SOUND_1                       = 23227,
    DEATHWING_SOUND_2                       = 23229,
    DEATHWING_SOUND_3                       = 23230,

    ACTION_FAIL_NECESSARY_ROUGHNESS         = 1,

    TYPE_SEAT_CHANGE                        = 2,
    DATA_NONE                               = 3,
    DATA_SEAT_IN_CHANGE                     = 4,
};

static const float SharkSummonPos[8][4]=
{
    {-8288.62f, 1479.97f, 43.97413f, 0.1134f},
    {-8273.75f, 1484.46f, 43.02283f, 6.2744f},
    {-8288.08f, 1487.72f, 43.92963f, 6.1902f},
    {-8281.04f, 1477.49f, 43.38793f, 0.2214f},
    {-8281.33f, 1490.41f, 43.55893f, 6.0833f},
    {-8295.10f, 1484.91f, 44.40643f, 6.2684f},
    {-8294.66f, 1474.68f, 44.37793f, 0.2158f},
    {-8294.61f, 1493.67f, 44.70723f, 6.0708f}
};

struct QFAG
{
    uint64 uiPlayerGUID;
    uint64 uiDeathwingGUID;
};

class npc_coach_crosscheck : public CreatureScript
{
public:
    npc_coach_crosscheck() : CreatureScript("npc_coach_crosscheck") { }

    enum talks
    {
        COACH_SAY_SHREDDER      = 0,
    };

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->GetQuestStatus(QUEST_FOURTH_AND_GOAL) & QUEST_STATUS_COMPLETE)
        {
            player->PrepareQuestMenu(creature->GetGUID());
            player->SEND_GOSSIP_MENU(15122, creature->GetGUID());
            return true;
        }

        return false;
    }

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest)
    {
        switch (quest->GetQuestId())
        {
            case QUEST_THE_REPLACEMENTS:
                /*creature->DoPersonalScriptText*/DoScriptText(COACH_SAY_GOTTA_HURRY, player);
                break;
            case QUEST_NECESSARY_ROUGHNESS:
                creature->AI()->Talk(COACH_SAY_SHREDDER, player->GetGUID());
                player->AddAura(SPELL_QUEST_INVISIBILITY_DETECTION_4, player);
                break;
            case QUEST_FOURTH_AND_GOAL:
                player->AddAura(SPELL_QUEST_INVISIBILITY_DETECTION_4, player);
                break;
        }

        return true;
    }

    bool OnQuestReward(Player* player, Creature* creature, Quest const* quest, uint32 /*opt*/)
    {
        if (quest->GetQuestId() == QUEST_FOURTH_AND_GOAL)
        {
            player->RemoveAura(SPELL_INCREASED_MOD_DETECTED_RANGE);
            creature->Whisper(PLAYER_SAY_WHAT_IS_THIS, player->GetGUID(), true);
            CAST_AI(npc_coach_crosscheckAI, creature->AI())->StartNewEvent(player->GetGUID());
        }

        return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_coach_crosscheckAI (creature);
    }

    struct npc_coach_crosscheckAI : public ScriptedAI
    {
        npc_coach_crosscheckAI(Creature* creature) : ScriptedAI(creature)
        {
            lPlayersGUID.clear();
            lPlayers.clear();
            lEventPlayers.clear();
        }

        std::list<uint64> lPlayersGUID;
        std::list<QFAG> lPlayers;
        std::list<Psc> lEventPlayers;

        void StartNewEvent(uint64 uiPlayerGUID)
        {
            if (!lEventPlayers.empty())
                for (std::list<Psc>::const_iterator itr = lEventPlayers.begin(); itr != lEventPlayers.end(); ++itr)
                    if (itr->uiPlayerGUID == uiPlayerGUID)
                        return;

            Psc new_psc;
            new_psc.uiPlayerGUID = uiPlayerGUID;
            new_psc.uiPhase = 0;
            new_psc.uiEventTimer = 1000;
            lEventPlayers.push_back(new_psc);
        }

        void FinishDeathwingEvent(uint64 uiPlayerGUID)
        {
            if (lPlayers.empty())
                return;

            for (std::list<QFAG>::iterator itr = lPlayers.begin(); itr != lPlayers.end();)
                if (itr->uiPlayerGUID == uiPlayerGUID)
                {
                    lPlayers.erase(itr);
                    return;
                }
                else
                     ++itr;
        }

        void StartDeathwingEvent(Player* player)
        {
            if (!player)
                return;

            uint64 uiPlayerGUID = player->GetGUID();

            if (!lPlayers.empty())
            {
                for (std::list<QFAG>::iterator itr = lPlayers.begin(); itr != lPlayers.end();)
                {
                    if (itr->uiPlayerGUID == uiPlayerGUID)
                    {
                        if (Unit::GetCreature(*me, itr->uiDeathwingGUID))
                            return;
                        else
                            itr = lPlayers.erase(itr);
                    }
                    else
                    {
                        ++itr;
                    }
                }
            }

            if (Creature* deathwing = player->SummonCreature(NPC_DEATHWING_QFAG, -8178.59f,1482.14f,83.99894f,3.106686f))
            {
                QFAG new_QFAG;
                new_QFAG.uiPlayerGUID = uiPlayerGUID;
                new_QFAG.uiDeathwingGUID = deathwing->GetGUID();
                lPlayers.push_back(new_QFAG);

                if (SmoothEscortAI* escort = CAST_AI(SmoothEscortAI, deathwing->AI()))
                {
                    escort->AddWaypoint(1, -8200.11f, 1482.16f, 80.1797f);
                    escort->AddWaypoint(2, -8414.07f, 1487.01f, 186.857f);
                    escort->AddWaypoint(3, -8583.05f, 1515.07f, 236.993f);
                    escort->AddWaypoint(4, -8626.69f, 1554.29f, 241.131f);
                    escort->AddWaypoint(5, -8619.00f, 1590.41f, 243.703f);
                    escort->AddWaypoint(6, -8598.17f, 1611.67f, 245.374f);
                    escort->AddWaypoint(7, -8579.87f, 1616.72f, 246.272f);
                    escort->AddWaypoint(8, -8550.54f, 1609.86f, 242.346f);
                    escort->AddWaypoint(9, -8301.08f, 1485.95f, 88.0648f);
                    escort->AddWaypoint(10, -8287.33f, 1484.92f, 85.2588f);
                    escort->AddWaypoint(11, -7800.26f, 1207.90f, 172.478f);
                    escort->Start();
                    deathwing->SetCanFly(true);
                }
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (!lEventPlayers.empty())
            {
                for (std::list<Psc>::iterator itr = lEventPlayers.begin(); itr != lEventPlayers.end();)
                {
                    if ((*itr).uiEventTimer <= diff)
                    {
                        if (Player* player = Unit::GetPlayer(*me, itr->uiPlayerGUID))
                        {
                            ++(*itr).uiPhase;

                            switch ((*itr).uiPhase)
                            {
                                case 1:
                                    {
                                        (*itr).uiEventTimer = 1000;
                                        std::list<Creature*> lHomies;
                                        player->GetCreatureListWithEntryInGrid(lHomies, NPC_ACE, 15.0f);

                                        if (!lHomies.empty())
                                            for (std::list<Creature*>::const_iterator homie = lHomies.begin(); homie != lHomies.end(); ++homie)
                                                if ((*homie)->isSummon())
                                                    if (uint64 guid = (*homie)->ToTempSummon()->GetSummonerGUID())
                                                        if (guid == (*itr).uiPlayerGUID)
                                                        {
                                                            /*(*homie)->DoPersonalScriptText*/DoScriptText(ACE_SAY_WHAT_IS_THIS, player);
                                                            return;
                                                        }
                                    }
                                    break;
                                case 2:
                                    {
                                        (*itr).uiEventTimer = 1000;
                                        std::list<Creature*> lHomies;
                                        player->GetCreatureListWithEntryInGrid(lHomies, NPC_IZZY, 15.0f);

                                        if (!lHomies.empty())
                                            for (std::list<Creature*>::const_iterator homie = lHomies.begin(); homie != lHomies.end(); ++homie)
                                                if ((*homie)->isSummon())
                                                    if (uint64 guid = (*homie)->ToTempSummon()->GetSummonerGUID())
                                                        if (guid == (*itr).uiPlayerGUID)
                                                        {
                                                            /*(*homie)->DoPersonalScriptText*/DoScriptText(IZZY_SAY_WHAT_IS_THIS, player);
                                                            return;
                                                        }
                                    }
                                    break;
                                case 3:
                                    /*me->DoPersonalScriptText*/DoScriptText(COACH_SAY_GOOD_WORK, player);
                                    itr = lEventPlayers.erase(itr);
                                    break;
                            }
                        }
                        else
                            itr = lEventPlayers.erase(itr);
                    }
                    else
                        (*itr).uiEventTimer -= diff;
                }
            }


            if (!lPlayersGUID.empty())
            {
                for (std::list<uint64>::iterator itr = lPlayersGUID.begin(); itr != lPlayersGUID.end(); ++itr)
                {
                    if (Player* player = Unit::GetPlayer(*me, (*itr)))
                    {
                        player->RemoveAura(SPELL_KEYS_TO_THE_HOT_ROD);
                        player->AddAura(SPELL_KEYS_TO_THE_HOT_ROD, player);
                        player->AddAura(SPELL_QUEST_INVISIBILITY_DETECTION_4, player);
                        player->RemoveAura(SPELL_INCREASED_MOD_DETECTED_RANGE);
                    }
                }

                lPlayersGUID.clear();
            }


            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_steamwheedle_shark : public CreatureScript
{
public:
    npc_steamwheedle_shark() : CreatureScript("npc_steamwheedle_shark") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_steamwheedle_sharkAI(creature);
    }

    struct npc_steamwheedle_sharkAI : public npc_escortAI
    {
        npc_steamwheedle_sharkAI(Creature* creature) : npc_escortAI(creature)
        {
            SetDespawnAtFar(false);
            Hit = false;
        }

        bool Hit;

        void SpellHit(Unit* caster, const SpellInfo* spell)
        {
            if (spell->Id == SPELL_THROW_FOOTBOMB)
            {
                if (Hit)
                    return;

                if (Vehicle* vehicle = caster->GetVehicleKit())
                {
                    if (Unit* passenger = vehicle->GetPassenger(0))
                    {
                        if (Player* player = passenger->ToPlayer())
                        {
                            if (player->GetGUID() == me->GetSeerGUID())
                            {
                                Hit = true;
                                player->PlayDirectSound(SOUND_WOW_1, player);
                                player->KilledMonsterCredit(NPC_STEAMWHEEDLE_SHARK, me->GetGUID());
                            }
                        }
                    }
                }

                me->CastSpell(me, SPELL_PERMANENT_FEIGN_DEATH, false);
                me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_THROW_FOOTBOMB, true);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                me->SetSpeed(MOVE_RUN, 0.0f, true);
                me->SetSpeed(MOVE_WALK, 0.0f, true);
            }
        }

        void WaypointReached(uint32 point)
        {
            if (point == 1)
                if (me->isSummon())
                    if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                        if (Creature* buccaneer = summoner->ToCreature())
                            buccaneer->AI()->DoAction(ACTION_FAIL_NECESSARY_ROUGHNESS);
        }

        void UpdateAI(uint32 diff)
        {
            npc_escortAI::UpdateAI(diff);
        }
    };
};

class npc_bilgewater_buccaneer : public CreatureScript
{
public:
    npc_bilgewater_buccaneer() : CreatureScript("npc_bilgewater_buccaneer") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_bilgewater_buccaneerAI (creature);
    }

    struct npc_bilgewater_buccaneerAI : public VehicleAI
    {
        npc_bilgewater_buccaneerAI(Creature* creature) : VehicleAI(creature), lSummons(me)
        {
            creature->AddUnitState(UNIT_STATE_ROOT);
            creature->AddUnitMovementFlag(MOVEMENTFLAG_ROOT);

            if (me->isSummon())
                if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                {
                    me->SetSeerGUID(summoner->GetGUID());
                    me->SetVisible(false);
                }

                uiEventTimer = 2000;
                Event = false;
        }

        SummonList lSummons;
        uint32 uiEventTimer;
        bool Event;

        enum talks
        {
            BUCCANEER_SAY_FOOTBOMBS      = 0,
        };

        void DoAction(int32 /*action*/)
        {
            if (Vehicle* vehicle = me->GetVehicleKit())
                vehicle->RemoveAllPassengers();
        }

        void PassengerBoarded(Unit* who, int8 seatId, bool apply)
        {
            if (seatId != 0)
                return;

            Player* player = who->ToPlayer();

            if (!player)
                return;

            if (apply)
            {
                Event = true;
                player->PlayDirectSound(SOUND_WOW_1, player);
                player->RemoveAura(SPELL_QUEST_INVISIBILITY_DETECTION_4);
                player->RemoveAura(SPELL_KEYS_TO_THE_HOT_ROD);
                player->AddAura(SPELL_KEYS_TO_THE_HOT_ROD, player);
            }
            else
            {
                player->AddAura(SPELL_QUEST_INVISIBILITY_DETECTION_4, player);
                lSummons.DespawnAll();

                if (player->GetQuestStatus(QUEST_NECESSARY_ROUGHNESS) == QUEST_STATUS_INCOMPLETE)
                    player->FailQuest(QUEST_NECESSARY_ROUGHNESS);

                if (Creature* coach = me->FindNearestCreature(NPC_COACH_CROSSCHECK, 30.0f))
                    CAST_AI(npc_coach_crosscheck::npc_coach_crosscheckAI, coach->AI())->lPlayersGUID.push_back(player->GetGUID());
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (Event)
            {
                if (uiEventTimer <= diff)
                {
                    Event = false;
                    uiEventTimer = 2000;

                    if (me->isSummon())
                        if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                            if (Player* player = summoner->ToPlayer())
                                if (player->GetQuestStatus(QUEST_NECESSARY_ROUGHNESS) == QUEST_STATUS_INCOMPLETE)
                                {
                                    uint64 uiPlayerGUID = player->GetGUID();
                                    Talk(BUCCANEER_SAY_FOOTBOMBS, uiPlayerGUID);

                                    for (int i = 0; i < 8; ++i)
                                        if (Creature* shark = me->SummonCreature(NPC_STEAMWHEEDLE_SHARK,
                                            SharkSummonPos[i][0], SharkSummonPos[i][1],
                                            SharkSummonPos[i][2], SharkSummonPos[i][3],TEMPSUMMON_TIMED_OR_DEAD_DESPAWN,600000))
                                        {
                                            shark->SetSeerGUID(uiPlayerGUID);
                                            shark->SetVisible(false);
                                            lSummons.Summon(shark);

                                            if (npc_escortAI* escort = CAST_AI(npc_escortAI, shark->AI()))
                                                escort->Start(false);
                                        }
                                }
                }
                else
                    uiEventTimer -= diff;
            }
        }
    };
};

class spell_permanent_feign_death : public SpellScriptLoader
{
public:
    spell_permanent_feign_death() : SpellScriptLoader("spell_permanent_feign_death") { }

    class spell_permanent_feign_deathAuraScript : public AuraScript
    {
        PrepareAuraScript(spell_permanent_feign_deathAuraScript)

            void EffectDeath(AuraEffect const * /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            Unit* target = GetTarget();

            if (!target)
                return;

            target->SetFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH);

            if (target->GetTypeId() == TYPEID_UNIT)
                if (target->GetEntry() == NPC_STEAMWHEEDLE_SHARK)
                    return;

            target->SetFlag(OBJECT_FIELD_DYNAMIC_FLAGS, UNIT_DYNFLAG_DEAD);
        }

        void Register()
        {
            OnEffectApply += AuraEffectApplyFn(spell_permanent_feign_deathAuraScript::EffectDeath, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript *GetAuraScript() const
    {
        return new spell_permanent_feign_deathAuraScript();
    }
};

class npc_bilgewater_buccaneer_goal : public CreatureScript
{
public:
    npc_bilgewater_buccaneer_goal() : CreatureScript("npc_bilgewater_buccaneer_goal") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_bilgewater_buccaneer_goalAI (creature);
    }

    struct npc_bilgewater_buccaneer_goalAI : public VehicleAI
    {
        npc_bilgewater_buccaneer_goalAI(Creature* creature) : VehicleAI(creature)
        {
            creature->AddUnitState(UNIT_STATE_ROOT);
            creature->AddUnitMovementFlag(MOVEMENTFLAG_ROOT);
            creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            uiSeatData = DATA_NONE;

            if (creature->isSummon())
                if (Unit* summoner = creature->ToTempSummon()->GetSummoner())
                {
                    creature->SetSeerGUID(summoner->GetGUID());
                    creature->SetVisible(false);
                }
        }

        uint8 uiSeatData;

        void SetData(uint32 /*type*/, uint32 data)
        {
            uiSeatData = data;
        }

        void DoAction(int32 /*action*/)
        {
            if (Vehicle* vehicle = me->GetVehicleKit())
                if (Unit* passenger = vehicle->GetPassenger(0))
                {
                    uiSeatData = DATA_SEAT_IN_CHANGE;
                    passenger->ChangeSeat(1);
                }
        }

        void Reset()
        {
            me->AddAura(SPELL_INCREASED_MOD_DETECTED_RANGE, me);
            me->AddAura(SPELL_QUEST_INVISIBILITY_DETECTION_5 , me);
        }

        void PassengerBoarded(Unit* who, int8 seatId, bool apply)
        {
            Player* player = who->ToPlayer();

            if (!player)
                return;

            if (apply)
            {
                if (seatId == 0)
                {
                    player->PlayDirectSound(SOUND_WOW_2, player);
                    player->RemoveAura(SPELL_QUEST_INVISIBILITY_DETECTION_4);
                    player->RemoveAura(SPELL_KEYS_TO_THE_HOT_ROD);
                    player->AddAura(SPELL_KEYS_TO_THE_HOT_ROD, player);
                    player->CastSpell(player, SPELL_INCREASED_MOD_DETECTED_RANGE, false);

                    if (player->GetQuestStatus(QUEST_FOURTH_AND_GOAL) == QUEST_STATUS_COMPLETE)
                    {
                        uiSeatData = DATA_SEAT_IN_CHANGE;
                        player->ChangeSeat(1);
                        return;
                    }

                    player->AddAura(SPELL_QUEST_INVISIBILITY_DETECTION_5, player);
                    me->Whisper(BUCCANEER_SAY_FOOTBOMB, player->GetGUID(), true);
                }
                else
                    if (uiSeatData == DATA_SEAT_IN_CHANGE)
                        uiSeatData = DATA_NONE;
            }
            else
            {
                if (uiSeatData != DATA_SEAT_IN_CHANGE)
                    if (Creature* coach = me->FindNearestCreature(NPC_COACH_CROSSCHECK, 30.0f))
                        CAST_AI(npc_coach_crosscheck::npc_coach_crosscheckAI, coach->AI())->lPlayersGUID.push_back(player->GetGUID());
            }
        }

        void UpdateAI(uint32 /*diff*/)
        {
        }
    };
};

class npc_fourth_and_goal_target : public CreatureScript
{
public:
    npc_fourth_and_goal_target() : CreatureScript("npc_fourth_and_goal_target") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_fourth_and_goal_targetAI (creature);
    }

    struct npc_fourth_and_goal_targetAI : public ScriptedAI
    {
        npc_fourth_and_goal_targetAI(Creature* creature) : ScriptedAI(creature)
        {
            creature->setActive(true);
            creature->SetReactState(REACT_PASSIVE);
            creature->AddAura(SPELL_MARK, creature);
            creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        }

        void UpdateAI(uint32 /*diff*/)
        {
        }
    };
};

class npc_deathwing_qfag : public CreatureScript
{
public:
    npc_deathwing_qfag() : CreatureScript("npc_deathwing_qfag") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_deathwing_qfagAI(creature);
    }

    struct npc_deathwing_qfagAI : public SmoothEscortAI
    {
        npc_deathwing_qfagAI(Creature* creature) : SmoothEscortAI(creature)
        {
            me->setActive(true);
            uiEventTimer = 0;
            uiPhase = 0;
            Event = false;

            if (me->isSummon())
                if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                    if (Player* player = summoner->ToPlayer())
                        player->PlayDirectSound(DEATHWING_SOUND_1, player);
        }

        uint32 uiEventTimer;
        uint8 uiPhase;
        bool Event;

        void SpellHit(Unit* /*caster*/, const SpellInfo* spell)
        {
            if (spell->Id == 87226)
            {
                Event = true;
                DoCast(me, SPELL_XPLOSION);

                if (me->isSummon())
                    if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                        if (Player* player = summoner->ToPlayer())
                        {
                            player->PlayDirectSound(DEATHWING_SOUND_3, player);

                            if (Creature* coach = me->FindNearestCreature(NPC_COACH_CROSSCHECK, 30.0f))
                                CAST_AI(npc_coach_crosscheck::npc_coach_crosscheckAI, coach->AI())->FinishDeathwingEvent(player->GetGUID());
                        }
            }
        }

        void WaypointReached(uint32 point)
        {
            switch (point)
            {
            case 1:
                if (me->isSummon())
                    if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                        if (Player* player = summoner->ToPlayer())
                        {
                            /*me->DoPersonalScriptText*/DoScriptText(DEATHWING_YELL, player);

                            if (Creature* buccaneer = player->GetVehicleCreatureBase())
                            {
                                player->AddAura(SPELL_QUEST_INVISIBILITY_DETECTION_6, player);
                                buccaneer->AI()->DoAction(0);
                            }
                        }
                        break;
            case 3:
                if (me->isSummon())
                    if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                        if (Player* player = summoner->ToPlayer())
                        {
                            DoCast(me, SPELL_DEATHWINGS_ATTACK);
                            player->CastSpell(player, SPELL_CHARACTER_EARTHQUAKE, false);
                            player->PlayDirectSound(DEATHWING_SOUND_2, player);
                        }
                        break;
            case 10:
                Event = true;
                SetEscortPaused(true);
                break;
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (Event)
            {
                if (uiEventTimer <= diff)
                {
                    ++uiPhase;
                    switch (uiPhase)
                    {
                    case 1:
                        uiEventTimer = 500;

                        if (me->isSummon())
                            if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                                if (Player* player = summoner->ToPlayer())
                                    if (Creature* coach = me->FindNearestCreature(NPC_COACH_CROSSCHECK, 90.0f))
                                    {
                                        coach->SetFacingToObject(me);
                                        /*coach->DoPersonalScriptText*/DoScriptText(COACH_NOT_AT_MY_FIELD, player);
                                    }
                                    break;
                    case 2:
                        uiEventTimer = 1000;

                        if (Creature* coach = me->FindNearestCreature(NPC_COACH_CROSSCHECK, 90.0f))
                        {
                            coach->SendPlaySpellVisualKit(SPELL_VISUAL_START_FIRE_ROCKET_1, 0);
                            coach->SendPlaySpellVisualKit(SPELL_VISUAL_START_FIRE_ROCKET_2, 0);
                        }
                        break;
                    case 3:
                        Event = false;
                        uiEventTimer = 500;

                        if (Creature* coach = me->FindNearestCreature(NPC_COACH_CROSSCHECK, 90.0f))
                        {
                            if (me->isSummon())
                                if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                                    if (Player* player = summoner->ToPlayer())
                                        CAST_AI(npc_coach_crosscheck::npc_coach_crosscheckAI, coach->AI())->FinishDeathwingEvent(player->GetGUID());

                            coach->CastSpell(me, 87226, false);
                        }
                        break;
                    case 4:
                        Event = false;
                        uiEventTimer = 500;
                        SetEscortPaused(false);
                        break;
                    }
                }
                else
                    uiEventTimer -= diff;
            }

            SmoothEscortAI::UpdateAI(diff);
        }
    };
};

class spell_kick_footbomb : public SpellScriptLoader
{
public:
    spell_kick_footbomb() : SpellScriptLoader("spell_kick_footbomb") { }

    class spell_kick_footbomb_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_kick_footbomb_SpellScript)

        void OnKick(SpellEffIndex /*effIndex*/)
        {
            float x, y, z;
            GetExplTargetDest()->GetPosition(x, y, z);

            if (sqrt(pow(x + 8507.12, 2) + pow(y - 1485.39, 2) + pow(z - 199.23, 2)) > 50.0f)
                return;

            Unit* caster = GetCaster();

            if (!caster)
                return;

            if (Vehicle* vehicle = caster->GetVehicleKit())
                if (Unit* passenger = vehicle->GetPassenger(0))
                    if (Player* player = passenger->ToPlayer())
                        if (player->GetQuestStatus(QUEST_FOURTH_AND_GOAL) == QUEST_STATUS_INCOMPLETE)
                        {
                            player->RemoveAura(SPELL_QUEST_INVISIBILITY_DETECTION_5);
                            player->PlayDirectSound(SOUND_WOW_2, player);
                            player->KilledMonsterCredit(NPC_FOURTH_AND_GOAL_TARGET, 0);

                            if (Creature* coach = player->FindNearestCreature(NPC_COACH_CROSSCHECK, 30.0f))
                                CAST_AI(npc_coach_crosscheck::npc_coach_crosscheckAI, coach->AI())->StartDeathwingEvent(player);
                        }
        }

        void Register()
        {
            OnEffectHit += SpellEffectFn(spell_kick_footbomb_SpellScript::OnKick, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_kick_footbomb_SpellScript();
    }
};

///////////
// Quest Do it Yourself 14070
///////////

enum qDIY
{
    SPELL_VISUAL_CATS_MARK    = 15652,
};

class npc_bruno_flameretardant : public CreatureScript
{
public:
    npc_bruno_flameretardant() : CreatureScript("npc_bruno_flameretardant") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_bruno_flameretardantAI (creature);
    }

    struct npc_bruno_flameretardantAI : public ScriptedAI
    {
        npc_bruno_flameretardantAI(Creature* creature) : ScriptedAI(creature)
        {
            uiVisualCastTimer = 2000;
        }

        uint32 uiVisualCastTimer;

        void MoveInLineOfSight(Unit* who)
        {
            if (me->IsInCombat())
                return;

            if (who->GetTypeId() == TYPEID_PLAYER && me->IsWithinDistInMap(who, 10.0f))
                if (Player* player = who->ToPlayer())
                {
                    QuestStatusMap::iterator incomplete_quest = player->getQuestStatusMap().find(QUEST_DO_IT_YOURSELF);

                    if (incomplete_quest == player->getQuestStatusMap().end())
                        return;

                    QuestStatusData& q_status = incomplete_quest->second;
                    uint64 uiPlayerGUID = player->GetGUID();

                    if (q_status.CreatureOrGOCount[0] == 0)
                    {
                        /*me->DoPersonalScriptText*/DoScriptText(NPC_BRUNO_SAY_1, player);
                        me->setFaction(AGGRESSIVE_FACTION);
                        AttackStart(player);

                        for (int i = 0; i < 3; ++i)
                        {
                            std::list<Creature*> lHomies;
                            me->GetCreatureListWithEntryInGrid(lHomies, Homies[i], 25.0f);

                            for (std::list<Creature*>::const_iterator itr = lHomies.begin(); itr != lHomies.end(); ++itr)
                                if ((*itr)->isSummon())
                                    if ((*itr)->ToTempSummon()->GetSummonerGUID() == uiPlayerGUID)
                                    {
                                        uint8 roll = urand(0, 6);
                                        /*(*itr)->DoPersonalScriptText*/DoScriptText(HOMIES_RANDOM_ATTACK_YELL - roll, player);
                                        (*itr)->AI()->AttackStart(me);
                                    }
                        }
                    }
                }
        }

        void DamageTaken(Unit* /*done_by*/, uint32 &damage)
        {
            if (me->GetHealth() <= damage)
            {
                std::list<HostileReference*> const& tList = me->getThreatManager().getThreatList();

                damage = 0;
                me->CombatStop(true);
                me->setFaction(ORIGINAL_FACTION);

                if (tList.empty())
                    return;

                for (std::list<HostileReference*>::const_iterator itr = tList.begin(); itr != tList.end(); ++itr)
                    if (Unit* attacker = Unit::GetUnit((*me), (*itr)->getUnitGuid()))
                    {
                        attacker->CombatStop();

                        if (attacker->GetTypeId() == TYPEID_UNIT)
                            attacker->ToCreature()->AI()->EnterEvadeMode();

                        if (Player* player = attacker->ToPlayer())
                        {
                            /*me->DoPersonalScriptText*/DoScriptText(NPC_BRUNO_SAY_2, player);
                            player->KilledMonsterCredit(me->GetEntry(), me->GetGUID());
                        }
                    }

                    EnterEvadeMode();
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (uiVisualCastTimer <= diff)
            {
                uiVisualCastTimer = 2000;
                Map::PlayerList const &lPlayers = me->GetMap()->GetPlayers();

                if (lPlayers.isEmpty())
                    return;

                for (Map::PlayerList::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
                    if (Player* player = itr->getSource())
                    {
                        QuestStatusMap::iterator incomplete_quest = player->getQuestStatusMap().find(QUEST_DO_IT_YOURSELF);

                        if (incomplete_quest == player->getQuestStatusMap().end())
                            return;

                        QuestStatusData& q_status = incomplete_quest->second;

                        if (q_status.CreatureOrGOCount[0] == 0)
                        {
                            WorldPacket data(SMSG_PLAY_SPELL_VISUAL, 8 + 4);
                            data << uint64(me->GetGUID());
                            data << uint32(SPELL_VISUAL_CATS_MARK);
                            player->SendDirectMessage(&data);
                        }
                    }
            }
            else
                uiVisualCastTimer -= diff;

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_frankie_gearslipper : public CreatureScript
{
public:
    npc_frankie_gearslipper() : CreatureScript("npc_frankie_gearslipper") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_frankie_gearslipperAI (creature);
    }

    struct npc_frankie_gearslipperAI : public ScriptedAI
    {
        npc_frankie_gearslipperAI(Creature* creature) : ScriptedAI(creature)
        {
            uiVisualCastTimer = 2000;
        }

        uint32 uiThrowTimer;
        uint32 uiVisualCastTimer;

        void Reset()
        {
            uiThrowTimer = urand(2000, 7000);
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (me->IsInCombat())
                return;

            if (who->GetTypeId() == TYPEID_PLAYER && me->IsWithinDistInMap(who, 10.0f))
                if (Player* player = who->ToPlayer())
                {
                    QuestStatusMap::iterator incomplete_quest = player->getQuestStatusMap().find(QUEST_DO_IT_YOURSELF);

                    if (incomplete_quest == player->getQuestStatusMap().end())
                        return;

                    QuestStatusData& q_status = incomplete_quest->second;
                    uint64 uiPlayerGUID = player->GetGUID();

                    if (q_status.CreatureOrGOCount[1] == 0)
                    {
                        /*me->DoPersonalScriptText*/DoScriptText(NPC_FRANKIE_SAY_1, player);
                        me->setFaction(AGGRESSIVE_FACTION);
                        AttackStart(player);

                        for (int i = 0; i < 3; ++i)
                        {
                            std::list<Creature*> lHomies;
                            me->GetCreatureListWithEntryInGrid(lHomies, Homies[i], 25.0f);

                            for (std::list<Creature*>::const_iterator itr = lHomies.begin(); itr != lHomies.end(); ++itr)
                                if ((*itr)->isSummon())
                                    if ((*itr)->ToTempSummon()->GetSummonerGUID() == uiPlayerGUID)
                                    {
                                        uint8 roll = urand(0, 6);
                                        /*(*itr)->DoPersonalScriptText*/DoScriptText(HOMIES_RANDOM_ATTACK_YELL - roll, player);
                                        (*itr)->AI()->AttackStart(me);
                                    }
                        }
                    }
                }
        }

        void DamageTaken(Unit* /*done_by*/, uint32 &damage)
        {
            if (me->GetHealth() <= damage)
            {
                std::list<HostileReference*> const& tList = me->getThreatManager().getThreatList();

                damage = 0;
                me->CombatStop(true);
                me->setFaction(ORIGINAL_FACTION);

                if (tList.empty())
                    return;

                for (std::list<HostileReference*>::const_iterator itr = tList.begin(); itr != tList.end(); ++itr)
                    if (Unit* attacker = Unit::GetUnit((*me), (*itr)->getUnitGuid()))
                    {
                        attacker->CombatStop();

                        if (attacker->GetTypeId() == TYPEID_UNIT)
                            attacker->ToCreature()->AI()->EnterEvadeMode();

                        if (Player* player = attacker->ToPlayer())
                        {
                            /*me->DoPersonalScriptText*/DoScriptText(NPC_FRANKIE_SAY_2, player);
                            player->KilledMonsterCredit(me->GetEntry(), me->GetGUID());
                        }
                    }

                    EnterEvadeMode();
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (uiVisualCastTimer <= diff)
            {
                uiVisualCastTimer = 2000;
                Map::PlayerList const &lPlayers = me->GetMap()->GetPlayers();

                if (lPlayers.isEmpty())
                    return;

                for (Map::PlayerList::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
                    if (Player* player = itr->getSource())
                    {
                        QuestStatusMap::iterator incomplete_quest = player->getQuestStatusMap().find(QUEST_DO_IT_YOURSELF);

                        if (incomplete_quest == player->getQuestStatusMap().end())
                            return;

                        QuestStatusData& q_status = incomplete_quest->second;

                        if (q_status.CreatureOrGOCount[1] == 0)
                        {
                            WorldPacket data(SMSG_PLAY_SPELL_VISUAL, 8 + 4);
                            data << uint64(me->GetGUID());
                            data << uint32(SPELL_VISUAL_CATS_MARK);
                            player->SendDirectMessage(&data);
                        }
                    }
            }
            else
                uiVisualCastTimer -= diff;

            if (!UpdateVictim())
                return;

            if (uiThrowTimer <= diff)
            {
                uiThrowTimer = urand(2000, 7000);
                DoCast(me->GetVictim(), SPELL_THROW_GEARS);
            }
            else
                uiThrowTimer -= diff;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_jack_the_hammer : public CreatureScript
{
public:
    npc_jack_the_hammer() : CreatureScript("npc_jack_the_hammer") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_jack_the_hammerAI (creature);
    }

    struct npc_jack_the_hammerAI : public ScriptedAI
    {
        npc_jack_the_hammerAI(Creature* creature) : ScriptedAI(creature)
        {
            uiVisualCastTimer = 2000;
        }

        uint32 uiKnockbackTimer;
        uint32 uiVisualCastTimer;

        void Reset()
        {
            uiKnockbackTimer = urand(3000, 8000);
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (me->IsInCombat())
                return;

            if (who->GetTypeId() == TYPEID_PLAYER && me->IsWithinDistInMap(who, 10.0f))
                if (Player* player = who->ToPlayer())
                {
                    QuestStatusMap::iterator incomplete_quest = player->getQuestStatusMap().find(QUEST_DO_IT_YOURSELF);

                    if (incomplete_quest == player->getQuestStatusMap().end())
                        return;

                    QuestStatusData& q_status = incomplete_quest->second;
                    uint64 uiPlayerGUID = player->GetGUID();

                    if (q_status.CreatureOrGOCount[2] == 0)
                    {
                        /*me->DoPersonalScriptText*/DoScriptText(JACK_THE_HAMMER_SAY_HAMMER, player);
                        me->HandleEmoteCommand(EMOTE_ONESHOT_ROAR);
                        me->setFaction(AGGRESSIVE_FACTION);
                        AttackStart(player);

                        for (int i = 0; i < 3; ++i)
                        {
                            std::list<Creature*> lHomies;
                            me->GetCreatureListWithEntryInGrid(lHomies, Homies[i], 25.0f);

                            for (std::list<Creature*>::const_iterator itr = lHomies.begin(); itr != lHomies.end(); ++itr)
                                if ((*itr)->isSummon())
                                    if ((*itr)->ToTempSummon()->GetSummonerGUID() == uiPlayerGUID)
                                    {
                                        uint8 roll = urand(0, 6);
                                        /*(*itr)->DoPersonalScriptText*/DoScriptText(HOMIES_RANDOM_ATTACK_YELL - roll, player);
                                        (*itr)->AI()->AttackStart(me);
                                    }
                        }
                    }
                }
        }

        void DamageTaken(Unit* /*done_by*/, uint32 &damage)
        {
            if (me->GetHealth() <= damage)
            {
                std::list<HostileReference*> const& tList = me->getThreatManager().getThreatList();

                damage = 0;
                me->CombatStop(true);
                me->setFaction(ORIGINAL_FACTION);

                if (tList.empty())
                    return;

                for (std::list<HostileReference*>::const_iterator itr = tList.begin(); itr != tList.end(); ++itr)
                    if (Unit* attacker = Unit::GetUnit((*me), (*itr)->getUnitGuid()))
                    {
                        attacker->CombatStop();

                        if (attacker->GetTypeId() == TYPEID_UNIT)
                            attacker->ToCreature()->AI()->EnterEvadeMode();

                        if (Player* player = attacker->ToPlayer())
                        {
                            /*me->DoPersonalScriptText*/DoScriptText(NPC_JACK_SAY, player);
                            player->KilledMonsterCredit(me->GetEntry(), me->GetGUID());
                        }
                    }

                    EnterEvadeMode();
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (uiVisualCastTimer <= diff)
            {
                uiVisualCastTimer = 2000;
                Map::PlayerList const &lPlayers = me->GetMap()->GetPlayers();

                if (lPlayers.isEmpty())
                    return;

                for (Map::PlayerList::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
                    if (Player* player = itr->getSource())
                    {
                        QuestStatusMap::iterator incomplete_quest = player->getQuestStatusMap().find(QUEST_DO_IT_YOURSELF);

                        if (incomplete_quest == player->getQuestStatusMap().end())
                            return;

                        QuestStatusData& q_status = incomplete_quest->second;

                        if (q_status.CreatureOrGOCount[2] == 0)
                        {
                            WorldPacket data(SMSG_PLAY_SPELL_VISUAL, 8 + 4);
                            data << uint64(me->GetGUID());
                            data << uint32(SPELL_VISUAL_CATS_MARK);
                            player->SendDirectMessage(&data);
                        }
                    }
            }
            else
                uiVisualCastTimer -= diff;

            if (!UpdateVictim())
                return;

            if (uiKnockbackTimer <= diff)
            {
                uiKnockbackTimer = urand(3000, 8000);
                DoCast(me->GetVictim(), SPELL_KNOCKBACK);
            }
            else
                uiKnockbackTimer -= diff;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_sudsy_magee : public CreatureScript
{
public:
    npc_sudsy_magee() : CreatureScript("npc_sudsy_magee") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_sudsy_mageeAI (creature);
    }

    struct npc_sudsy_mageeAI : public ScriptedAI
    {
        npc_sudsy_mageeAI(Creature* creature) : ScriptedAI(creature)
        {
            uiVisualCastTimer = 2000;
        }

        uint32 uiFrostboltTimer;
        uint32 uiBubbleBlastTimer;
        uint32 uiVisualCastTimer;

        void Reset()
        {
            uiFrostboltTimer = 1000;
            uiBubbleBlastTimer = 500;
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (me->IsInCombat())
                return;

            if (who->GetTypeId() == TYPEID_PLAYER && me->IsWithinDistInMap(who, 10.0f))
                if (Player* player = who->ToPlayer())
                {
                    QuestStatusMap::iterator incomplete_quest = player->getQuestStatusMap().find(QUEST_DO_IT_YOURSELF);

                    if (incomplete_quest == player->getQuestStatusMap().end())
                        return;

                    QuestStatusData& q_status = incomplete_quest->second;
                    uint64 uiPlayerGUID = player->GetGUID();

                    if (q_status.CreatureOrGOCount[3] == 0)
                    {
                        /*me->DoPersonalScriptText*/DoScriptText(NPC_SUDSY_SAY_1, player);
                        me->setFaction(AGGRESSIVE_FACTION);
                        AttackStart(player);

                        for (int i = 0; i < 3; ++i)
                        {
                            std::list<Creature*> lHomies;
                            me->GetCreatureListWithEntryInGrid(lHomies, Homies[i], 25.0f);

                            for (std::list<Creature*>::const_iterator itr = lHomies.begin(); itr != lHomies.end(); ++itr)
                                if ((*itr)->isSummon())
                                    if ((*itr)->ToTempSummon()->GetSummonerGUID() == uiPlayerGUID)
                                    {
                                        uint8 roll = urand(0, 6);
                                        /*(*itr)->DoPersonalScriptText*/DoScriptText(HOMIES_RANDOM_ATTACK_YELL - roll, player);
                                        (*itr)->AI()->AttackStart(me);
                                    }
                        }
                    }
                }
        }

        void DamageTaken(Unit* /*done_by*/, uint32 &damage)
        {
            if (me->GetHealth() <= damage)
            {
                std::list<HostileReference*> const& tList = me->getThreatManager().getThreatList();

                damage = 0;
                me->CombatStop(true);
                me->setFaction(ORIGINAL_FACTION);

                if (tList.empty())
                    return;

                for (std::list<HostileReference*>::const_iterator itr = tList.begin(); itr != tList.end(); ++itr)
                    if (Unit* attacker = Unit::GetUnit((*me), (*itr)->getUnitGuid()))
                    {
                        attacker->CombatStop();

                        if (attacker->GetTypeId() == TYPEID_UNIT)
                            attacker->ToCreature()->AI()->EnterEvadeMode();

                        if (Player* player = attacker->ToPlayer())
                        {
                            /*me->DoPersonalScriptText*/DoScriptText(NPC_SUDSY_SAY_2, player);
                            player->KilledMonsterCredit(me->GetEntry(), me->GetGUID());
                        }
                    }

                    EnterEvadeMode();
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (uiVisualCastTimer <= diff)
            {
                uiVisualCastTimer = 2000;
                Map::PlayerList const &lPlayers = me->GetMap()->GetPlayers();

                if (lPlayers.isEmpty())
                    return;

                for (Map::PlayerList::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
                    if (Player* player = itr->getSource())
                    {
                        QuestStatusMap::iterator incomplete_quest = player->getQuestStatusMap().find(QUEST_DO_IT_YOURSELF);

                        if (incomplete_quest == player->getQuestStatusMap().end())
                            return;

                        QuestStatusData& q_status = incomplete_quest->second;

                        if (q_status.CreatureOrGOCount[3] == 0)
                        {
                            WorldPacket data(SMSG_PLAY_SPELL_VISUAL, 8 + 4);
                            data << uint64(me->GetGUID());
                            data << uint32(SPELL_VISUAL_CATS_MARK);
                            player->SendDirectMessage(&data);
                        }
                    }
            }
            else
                uiVisualCastTimer -= diff;

            if (!UpdateVictim())
                return;

            if (uiBubbleBlastTimer <= diff)
            {
                uiBubbleBlastTimer = urand(2000, 8000);
                me->CastStop();
                DoCast(me->GetVictim(), SPELL_BUBBLE_BLAST);
            }
            else
                uiBubbleBlastTimer -= diff;

            if (uiFrostboltTimer <= diff)
            {
                uiFrostboltTimer = 3500;
                DoCast(me->GetVictim(), SPELL_FROSTBOLT);
            }
            else
                uiFrostboltTimer -= diff;

            DoMeleeAttackIfReady();
        }
    };
};

///////////
// Quests:
//    Off to the Bank 26711, 26712
//    The New You 14110, 14109
///////////

enum qOTTB
{
    SZABO_MENU_ID_1                 = 14700,
    SZABO_MENU_ID_2                 = 14701,
    MISSA_MENU_ID_1                 = 14702,
    MISSA_MENU_ID_2                 = 14703,
    GAPPY_MENU_ID_1                 = 14704,
    GAPPY_MENU_ID_2                 = 14705,

    ITEM_NEW_OUTFIT                 = 47046,
    ITEM_COOL_SHADES                = 47047,
    ITEM_SHINY_BLING                = 47045,
};

#define    NEW_OUTFIT     "Ð—Ð°Ð±Ð¾, Ñ Ñ…Ð¾Ñ‡Ñƒ ÑƒÑÑ‚Ñ€Ð¾Ð¸Ñ‚ÑŒ Ð²ÐµÑ‡ÐµÑ€Ð¸Ð½ÐºÑƒ, Ð¸ Ð¼Ð½Ðµ Ð½ÑƒÐ¶ÐµÐ½ Ð½Ð¾Ð²Ñ‹Ð¹ Ð¼Ð¾Ð´Ð½Ñ‹Ð¹ ÐºÐ¾ÑÑ‚ÑŽÐ¼"
#define    COOL_SHADES    "ÐœÐ½Ðµ Ð½ÑƒÐ¶Ð½Ñ‹ Ð¼Ð¾Ð´Ð½Ñ‹Ðµ Ñ‚ÐµÐ¼Ð½Ñ‹Ðµ Ð¾Ñ‡ÐºÐ¸. Ð§Ñ‚Ð¾ Ð¼Ð¾Ð¶Ð½Ð¾ ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ Ð½Ð° ÑÑ‚Ð¸ Ð´Ð²Ðµ Ð¿Ð°Ñ‡ÐºÐ¸ Ð´ÐµÑ€ÐµÐ²ÑÐ½Ð½Ñ‹Ñ…?"
#define    SHINY_BLING    "ÐŸÑ€Ð¾Ð´Ð°Ð¹ Ð¼Ð½Ðµ ÑÐ°Ð¼Ñ‹Ðµ ÐºÑ€ÑƒÑ‚Ñ‹Ðµ, ÑÐ°Ð¼Ñ‹Ðµ ÑÑ€ÐºÐ¸Ðµ Ð±Ð»ÐµÑÑ‚ÑÑˆÐºÐ¸!"

struct Psc_ls
{
    uint64 uiPlayerGUID;
    uint32 uiPersonalTimer;
};

class npc_chip_endale : public CreatureScript
{
public:
    npc_chip_endale() : CreatureScript("npc_chip_endale") { }

    enum talks
    {
        CHIP_ENDALE_SAY_START       = 0,
    };

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->getGender() == GENDER_MALE)
        {
            player->SEND_GOSSIP_MENU(14680, creature->GetGUID());
            return true;
        }

        if (creature->GetPhaseMask() & 1024)
        {
            player->SEND_GOSSIP_MENU(14682, creature->GetGUID());
            return true;
        }

        return false;
    }

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest)
    {
        switch (quest->GetQuestId())
        {
        case QUEST_OFF_TO_THE_BANK_FEMALE:
            creature->AI()->Talk(CHIP_ENDALE_SAY_START, player->GetGUID());
            break;
        case QUEST_LIFE_OF_THE_PARTY_FEMALE:
            player->CastSpell(player, SPELL_AWESOME_PARTY_ENSEMBLE, false);
            player->CastSpell(player, SPELL_LOTP_OUTFIT_SECONDARY, false);
            player->CastSpell(player, SPELL_LOTP_OUTFIT_FEMALE, false);
            player->CastSpell(player, SPELL_LOTP_PAPARAZZI, false);
            player->CastSpell(player, PHASE_QUEST_ZONE_SPECIFIC_1, false);
            player->RemoveAura(SPELL_QUEST_INVISIBILITY_DETECTION_5);
            /*creature->DoPersonalScriptText*/DoScriptText(CHIP_ENDALE_SAY_GO_TO_THE_PARTY, player);
            creature->Whisper(CHIP_ENDALE_EMOTE_GO, player->GetGUID(), true);
            break;
        }

        return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_chip_endaleAI (creature);
    }

    struct npc_chip_endaleAI : public ScriptedAI
    {
        npc_chip_endaleAI(Creature* creature) : ScriptedAI(creature)
        {
            lPlayers.clear();

            if (me->GetPhaseMask() == 16384)
                me->SetUInt32Value(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_NONE);
        }

        std::list<Psc_ls> lPlayers;

        void UpdateAI(uint32 diff)
        {
            if (!lPlayers.empty())
            {
                for (std::list<Psc_ls>::iterator itr = lPlayers.begin(); itr != lPlayers.end();)
                {
                    if ((*itr).uiPersonalTimer <= diff)
                    {
                        if (Player* player = Unit::GetPlayer(*me, (*itr).uiPlayerGUID))
                            /*me->DoPersonalScriptText*/DoScriptText(CHIP_ENDALE_SAY_GAME_OVER, player);

                        itr = lPlayers.erase(itr);
                    }
                    else
                    {
                        (*itr).uiPersonalTimer -= diff;
                        ++itr;
                    }
                }
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_candy_cane : public CreatureScript
{
public:
    npc_candy_cane() : CreatureScript("npc_candy_cane") { }

    enum talks
    {
        CANDY_CANE_SAY_START        = 0,
    };

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->getGender() == GENDER_FEMALE)
        {
            player->SEND_GOSSIP_MENU(14680, creature->GetGUID());
            return true;
        }

        if (creature->GetPhaseMask() & 1024)
        {
            player->SEND_GOSSIP_MENU(14682, creature->GetGUID());
            return true;
        }

        return false;
    }

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest)
    {
        switch (quest->GetQuestId())
        {
        case QUEST_OFF_TO_THE_BANK_MALE:
            creature->AI()->Talk(CANDY_CANE_SAY_START, player->GetGUID());
            break;
        case QUEST_LIFE_OF_THE_PARTY_MALE:
            player->CastSpell(player, SPELL_AWESOME_PARTY_ENSEMBLE, false);
            player->CastSpell(player, SPELL_LOTP_OUTFIT_SECONDARY, false);
            player->CastSpell(player, SPELL_LOTP_OUTFIT_MALE, false);
            player->CastSpell(player, SPELL_LOTP_PAPARAZZI, false);
            player->CastSpell(player, PHASE_QUEST_ZONE_SPECIFIC_1, false);
            player->RemoveAura(SPELL_QUEST_INVISIBILITY_DETECTION_5);
            /*creature->DoPersonalScriptText*/DoScriptText(CANDY_CANE_SAY_GO_TO_THE_PARTY, player);
            creature->Whisper(CANDY_CANE_EMOTE_GO, player->GetGUID(), true);
            break;
        }

        return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_candy_caneAI (creature);
    }

    struct npc_candy_caneAI : public ScriptedAI
    {
        npc_candy_caneAI(Creature* creature) : ScriptedAI(creature)
        {
            lPlayers.clear();

            if (me->GetPhaseMask() == 16384)
                me->SetUInt32Value(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_NONE);
        }

        std::list<Psc_ls> lPlayers;

        void UpdateAI(uint32 diff)
        {
            if (!lPlayers.empty())
            {
                for (std::list<Psc_ls>::iterator itr = lPlayers.begin(); itr != lPlayers.end();)
                {
                    if ((*itr).uiPersonalTimer <= diff)
                    {
                        if (Player* player = Unit::GetPlayer(*me, (*itr).uiPlayerGUID))
                            /*me->DoPersonalScriptText*/DoScriptText(CANDY_CANE_SAY_GAME_OVER, player);

                        itr = lPlayers.erase(itr);
                    }
                    else
                    {
                        (*itr).uiPersonalTimer -= diff;
                        ++itr;
                    }
                }
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_fbok_bank_teller : public CreatureScript
{
public:
    npc_fbok_bank_teller() : CreatureScript("npc_fbok_bank_teller") { }

    enum talks
    {
        FBOK_BANK_TELLER_SAY_COOL       = 0,
    };

    bool OnQuestReward(Player* player, Creature* creature, Quest const* quest, uint32 /*opt*/)
    {
        switch (quest->GetQuestId())
        {
            case QUEST_OFF_TO_THE_BANK_FEMALE:
            case QUEST_OFF_TO_THE_BANK_MALE:
            {
                creature->AI()->Talk(FBOK_BANK_TELLER_SAY_COOL, player->GetGUID());
                if (Creature* teller = creature->FindNearestCreature(NPC_FBOK_BANK_TELLER, 15.0f))
                    teller->AI()->Talk(FBOK_BANK_TELLER_SAY_COOL, player->GetGUID());
            }
        }

        return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_fbok_bank_tellerAI (creature);
    }

    struct npc_fbok_bank_tellerAI : public ScriptedAI
    {
        npc_fbok_bank_tellerAI(Creature* creature) : ScriptedAI(creature)
        {
            if (me->GetPhaseMask() > 3)
                CanSay = false;
            else
                CanSay = true;
        }

        uint32 uiNextTimer;
        bool CanSay;

        void Reset()
        {
            uiNextTimer = urand(25000, 35000);
        }

        void UpdateAI(uint32 diff)
        {
            if (CanSay)
            {
                if (uiNextTimer <= diff)
                {
                    DoScriptText(FBOK_BANK_TELLER_SAY_NEXT, me);
                    uiNextTimer = urand(25000, 35000);
                }
                else
                    uiNextTimer -= diff;
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_szabo : public CreatureScript
{
public:
    npc_szabo() : CreatureScript("npc_szabo") { }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        uint32 uiTextID = 14700;

        if ((player->GetQuestStatus(QUEST_THE_NEW_YOU_FEMALE) == QUEST_STATUS_INCOMPLETE ||
            player->GetQuestStatus(QUEST_THE_NEW_YOU_MALE) == QUEST_STATUS_INCOMPLETE) &&
            !player->HasItemCount(ITEM_NEW_OUTFIT, 1))
        {
            uiTextID = 14701;
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, NEW_OUTFIT, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        }

        if ((player->GetQuestStatus(QUEST_THE_NEW_YOU_FEMALE) == QUEST_STATUS_COMPLETE ||
            player->GetQuestStatus(QUEST_THE_NEW_YOU_MALE) == QUEST_STATUS_COMPLETE) ||
            player->HasItemCount(ITEM_NEW_OUTFIT, 1))
            uiTextID = 14703;

        player->SEND_GOSSIP_MENU(uiTextID, creature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action)
    {
        player->PlayerTalkClass->ClearMenus();

        if (action == GOSSIP_ACTION_INFO_DEF)
        {
            player->SEND_GOSSIP_MENU(14702, creature->GetGUID());
            player->CastSpell(player, SPELL_CREATE_HIP_NEW_OUTFIT, false);

            if (/*Creature* citizen = */creature->FindNearestCreature(NPC_KEZAN_CITIZEN, 30.0f))
                /*citizen->DoPersonalScriptText*/DoScriptText(CITIZEN_SAY_SZABO_SO_COOL, player);
        }
        return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_szaboAI (creature);
    }

    struct npc_szaboAI : public ScriptedAI
    {
        npc_szaboAI(Creature* creature) : ScriptedAI(creature)
        {
            uiVisualCastTimer = 2000;
        }

        uint32 uiVisualCastTimer;

        void UpdateAI(uint32 diff)
        {
            if (uiVisualCastTimer <= diff)
            {
                uiVisualCastTimer = 2000;
                Map::PlayerList const &lPlayers = me->GetMap()->GetPlayers();

                if (lPlayers.isEmpty())
                    return;

                for (Map::PlayerList::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
                    if (Player* player = itr->getSource())
                    {
                        QuestStatusMap::iterator incomplete_quest;

                        if (player->getGender() == GENDER_FEMALE)
                            incomplete_quest = player->getQuestStatusMap().find(QUEST_THE_NEW_YOU_FEMALE);
                        else
                            incomplete_quest = player->getQuestStatusMap().find(QUEST_THE_NEW_YOU_MALE);

                        if (incomplete_quest == player->getQuestStatusMap().end())
                            return;

                        QuestStatusData& q_status = incomplete_quest->second;

                        if (q_status.ItemCount[1] == 0)
                        {
                            WorldPacket data(SMSG_PLAY_SPELL_VISUAL, 8 + 4);
                            data << uint64(me->GetGUID());
                            data << uint32(SPELL_VISUAL_CATS_MARK);
                            player->SendDirectMessage(&data);
                        }
                    }
            }
            else
                uiVisualCastTimer -= diff;

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_missa_spekkies : public CreatureScript
{
public:
    npc_missa_spekkies() : CreatureScript("npc_missa_spekkies") { }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        uint32 uiTextID = 14704;

        if ((player->GetQuestStatus(QUEST_THE_NEW_YOU_FEMALE) == QUEST_STATUS_INCOMPLETE ||
            player->GetQuestStatus(QUEST_THE_NEW_YOU_MALE) == QUEST_STATUS_INCOMPLETE) &&
            !player->HasItemCount(ITEM_COOL_SHADES, 1))
        {
            uiTextID = 14705;
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, COOL_SHADES, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        }

        if ((player->GetQuestStatus(QUEST_THE_NEW_YOU_FEMALE) == QUEST_STATUS_COMPLETE ||
            player->GetQuestStatus(QUEST_THE_NEW_YOU_MALE) == QUEST_STATUS_COMPLETE) ||
            player->HasItemCount(ITEM_COOL_SHADES, 1))
            uiTextID = 14707;

        player->SEND_GOSSIP_MENU(uiTextID, creature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action)
    {
        player->PlayerTalkClass->ClearMenus();

        if (action == GOSSIP_ACTION_INFO_DEF)
        {
            player->SEND_GOSSIP_MENU(14706, creature->GetGUID());
            player->CastSpell(player, SPELL_CREATE_COOL_SHADES, false);
        }
        return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_missa_spekkiesAI (creature);
    }

    struct npc_missa_spekkiesAI : public ScriptedAI
    {
        npc_missa_spekkiesAI(Creature* creature) : ScriptedAI(creature)
        {
            uiVisualCastTimer = 2000;
        }

        uint32 uiVisualCastTimer;

        void UpdateAI(uint32 diff)
        {
            if (uiVisualCastTimer <= diff)
            {
                uiVisualCastTimer = 2000;
                Map::PlayerList const &lPlayers = me->GetMap()->GetPlayers();

                if (lPlayers.isEmpty())
                    return;

                for (Map::PlayerList::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
                    if (Player* player = itr->getSource())
                    {
                        QuestStatusMap::iterator incomplete_quest;

                        if (player->getGender() == GENDER_FEMALE)
                            incomplete_quest = player->getQuestStatusMap().find(QUEST_THE_NEW_YOU_FEMALE);
                        else
                            incomplete_quest = player->getQuestStatusMap().find(QUEST_THE_NEW_YOU_MALE);

                        if (incomplete_quest == player->getQuestStatusMap().end())
                            return;

                        QuestStatusData& q_status = incomplete_quest->second;

                        if (q_status.ItemCount[2] == 0)
                        {
                            WorldPacket data(SMSG_PLAY_SPELL_VISUAL, 8 + 4);
                            data << uint64(me->GetGUID());
                            data << uint32(SPELL_VISUAL_CATS_MARK);
                            player->SendDirectMessage(&data);
                        }
                    }
            }
            else
                uiVisualCastTimer -= diff;

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_gappy_silvertooth : public CreatureScript
{
public:
    npc_gappy_silvertooth() : CreatureScript("npc_gappy_silvertooth") { }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        uint32 uiTextID = 14696;

        if ((player->GetQuestStatus(QUEST_THE_NEW_YOU_FEMALE) == QUEST_STATUS_INCOMPLETE ||
            player->GetQuestStatus(QUEST_THE_NEW_YOU_MALE) == QUEST_STATUS_INCOMPLETE) &&
            !player->HasItemCount(ITEM_SHINY_BLING, 1))
        {
            uiTextID = 14697;
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, SHINY_BLING, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        }

        if ((player->GetQuestStatus(QUEST_THE_NEW_YOU_FEMALE) == QUEST_STATUS_COMPLETE ||
            player->GetQuestStatus(QUEST_THE_NEW_YOU_MALE) == QUEST_STATUS_COMPLETE) ||
            player->HasItemCount(ITEM_SHINY_BLING, 1))
            uiTextID = 14699;

        player->SEND_GOSSIP_MENU(uiTextID, creature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action)
    {
        player->PlayerTalkClass->ClearMenus();

        if (action == GOSSIP_ACTION_INFO_DEF)
        {
            player->SEND_GOSSIP_MENU(14698, creature->GetGUID());
            player->CastSpell(player, SPELL_CREATE_SHINY_BLING, false);
        }
        return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_gappy_silvertoothAI (creature);
    }

    struct npc_gappy_silvertoothAI : public ScriptedAI
    {
        npc_gappy_silvertoothAI(Creature* creature) : ScriptedAI(creature)
        {
            uiVisualCastTimer = 2000;
        }

        uint32 uiVisualCastTimer;

        void UpdateAI(uint32 diff)
        {
            if (uiVisualCastTimer <= diff)
            {
                uiVisualCastTimer = 2000;
                Map::PlayerList const &lPlayers = me->GetMap()->GetPlayers();

                if (lPlayers.isEmpty())
                    return;

                for (Map::PlayerList::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
                    if (Player* player = itr->getSource())
                    {
                        QuestStatusMap::iterator incomplete_quest;

                        if (player->getGender() == GENDER_FEMALE)
                            incomplete_quest = player->getQuestStatusMap().find(QUEST_THE_NEW_YOU_FEMALE);
                        else
                            incomplete_quest = player->getQuestStatusMap().find(QUEST_THE_NEW_YOU_MALE);

                        if (incomplete_quest == player->getQuestStatusMap().end())
                            return;

                        QuestStatusData& q_status = incomplete_quest->second;

                        if (q_status.ItemCount[0] == 0)
                        {
                            WorldPacket data(SMSG_PLAY_SPELL_VISUAL, 8 + 4);
                            data << uint64(me->GetGUID());
                            data << uint32(SPELL_VISUAL_CATS_MARK);
                            player->SendDirectMessage(&data);
                        }
                    }
            }
            else
                uiVisualCastTimer -= diff;

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

///////////
// Quests Life of the Party 14113, 14153
///////////

enum qLOTP
{
    TYPE_BUBBLY                          = 1,
    TYPE_BUCKET                          = 2,
    TYPE_DANCE                           = 3,
    TYPE_FIREWORKS                       = 4,
    TYPE_HORS_DOEUVRES                   = 5,

    VIRTUAL_ITEM_BUBBLY                  = 2718,
    VIRTUAL_ITEM_HORS_DOEUVRES           = 2202,
    VIRTUAL_ITEM_FIREWORKS               = 9701,
};

class npc_kezan_partygoer : public CreatureScript
{
public:
    npc_kezan_partygoer() : CreatureScript("npc_kezan_partygoer") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_kezan_partygoerAI (creature);
    }

    struct npc_kezan_partygoerAI : public ScriptedAI
    {
        npc_kezan_partygoerAI(Creature* creature) : ScriptedAI(creature)
        {
            reset = false;
            uiResetTimer = 25000;
            uiSpeachTimer = urand(10000, 40000);
            ChooseAura();
        }

        uint32 uiResetTimer;
        uint32 uiSpeachTimer;
        bool reset;

        void ChooseAura()
        {
            me->RemoveAllAuras();
            uint8 roll = urand(TYPE_BUBBLY, TYPE_HORS_DOEUVRES);

            switch (roll)
            {
            case TYPE_BUBBLY:
                me->AddAura(AURA_PARTYGOER_BUBBLY, me);
                me->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID, VIRTUAL_ITEM_BUBBLY);
                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_EAT_NO_SHEATHE);
                break;
            case TYPE_BUCKET:
                me->AddAura(AURA_PARTYGOER_BUCKET, me);
                me->AddAura(AURA_DRUNKEN_STUN, me);
                me->AddAura(AURA_DRUNKEN_INTOXICATION, me);
                me->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID, 0);
                break;
            case TYPE_DANCE:
                me->AddAura(AURA_PARTYGOER_DANCE, me);
                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_DANCE);
                me->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID, 0);
                break;
            case TYPE_FIREWORKS:
                me->AddAura(AURA_PARTYGOER_FIREWORKS, me);
                me->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID, VIRTUAL_ITEM_FIREWORKS);
                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_READY1H);
                break;
            case TYPE_HORS_DOEUVRES:
                me->AddAura(AURA_PARTYGOER_HORS_DOEUVRES, me);
                me->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID, VIRTUAL_ITEM_HORS_DOEUVRES);
                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_EAT_NO_SHEATHE);
                break;
            }
        }

        void SpellHit(Unit* caster, const SpellInfo* spell)
        {
            if (me->HasAura(AURA_HAPPY_PARTYGOER))
                return;

            if (Player* player = caster->ToPlayer())
                if (player->GetQuestStatus(QUEST_LIFE_OF_THE_PARTY_MALE) == QUEST_STATUS_INCOMPLETE ||
                    player->GetQuestStatus(QUEST_LIFE_OF_THE_PARTY_FEMALE) == QUEST_STATUS_INCOMPLETE)
                {
                    switch (spell->Id)
                    {
                    case SPELL_BUBBLY:
                        if (me->HasAura(AURA_PARTYGOER_BUBBLY))
                        {
                            reset = true;
                            me->RemoveAura(AURA_PARTYGOER_BUBBLY);
                            me->AddAura(AURA_HAPPY_PARTYGOER, me);
                            me->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID, 0);
                            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, 0);
                            player->KilledMonsterCredit(NPC_KEZAN_PARTYGOER_MALE, 0);
                            DoCast(me, SPELL_PARTYGOER_BUBBLY);
                            uint8 roll = urand(0, 2);
                            /*me->DoPersonalScriptText*/DoScriptText(PARTYGOER_RANDOM_SAY_OK_BUBBLY - roll, player);
                        }
                        break;
                    case SPELL_BUCKET:
                        if (me->HasAura(AURA_PARTYGOER_BUCKET))
                        {
                            reset = true;
                            me->RemoveAura(AURA_PARTYGOER_BUCKET);
                            me->RemoveAura(AURA_DRUNKEN_STUN);
                            me->RemoveAura(AURA_DRUNKEN_INTOXICATION);
                            me->AddAura(AURA_HAPPY_PARTYGOER, me);
                            me->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID, 0);
                            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, 0);
                            DoCast(me, SPELL_PARTYGOER_SUMMON_BUCKET);
                            DoCast(me, SPELL_PARTYGOER_VOMIT);
                            player->KilledMonsterCredit(NPC_KEZAN_PARTYGOER_MALE, 0);
                            uint8 roll = urand(0, 3);
                            /*me->DoPersonalScriptText*/DoScriptText(PARTYGOER_RANDOM_SAY_OK_BUCKET - roll, player);
                        }
                        break;
                    case SPELL_DANCE:
                        if (me->HasAura(AURA_PARTYGOER_DANCE))
                        {
                            reset = true;
                            me->RemoveAura(AURA_PARTYGOER_DANCE);
                            me->AddAura(AURA_HAPPY_PARTYGOER, me);
                            me->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID, 0);
                            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, 0);
                            DoCast(me, SPELL_PARTYGOER_SUMMON_DISCO_BALL);
                            DoCast(me, SPELL_PARTYGOER_DANCE);
                            player->CastSpell(player, SPELL_PARTYGOER_DANCE, false);
                            player->KilledMonsterCredit(NPC_KEZAN_PARTYGOER_MALE, 0);
                            uint8 roll = urand(0, 2);
                            /*me->DoPersonalScriptText*/DoScriptText(PARTYGOER_RANDOM_SAY_OK_DANCE - roll, player);
                        }
                        break;
                    case SPELL_FIREWORKS:
                        if (me->HasAura(AURA_PARTYGOER_FIREWORKS))
                        {
                            reset = true;
                            me->RemoveAura(AURA_PARTYGOER_FIREWORKS);
                            me->AddAura(AURA_HAPPY_PARTYGOER, me);
                            me->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID, 0);
                            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, 0);
                            player->CastSpell(player, SPELL_PARTYGOER_FIREWORKS_BLUE, false);
                            player->CastSpell(player, SPELL_PARTYGOER_FIREWORKS_GREEN, false);
                            player->CastSpell(player, SPELL_PARTYGOER_FIREWORKS_RED, false);
                            player->KilledMonsterCredit(NPC_KEZAN_PARTYGOER_MALE, 0);
                            uint8 roll = urand(0, 2);
                            /*me->DoPersonalScriptText*/DoScriptText(PARTYGOER_RANDOM_SAY_OK_FIREWORKS - roll, player);
                        }
                        break;
                    case SPELL_HORS_DOEUVRES:
                        if (me->HasAura(AURA_PARTYGOER_HORS_DOEUVRES))
                        {
                            reset = true;
                            me->RemoveAura(AURA_PARTYGOER_HORS_DOEUVRES);
                            me->AddAura(AURA_HAPPY_PARTYGOER, me);
                            me->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID, 0);
                            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, 0);
                            DoCast(me, SPELL_PARTYGOER_HORS_DOEUVRES);
                            player->KilledMonsterCredit(NPC_KEZAN_PARTYGOER_MALE, 0);
                            uint8 roll = urand(0, 2);
                            /*me->DoPersonalScriptText*/DoScriptText(PARTYGOER_RANDOM_SAY_OK_HORS_DOEUVRES - roll, player);
                        }
                        break;
                    }
                }
        }

        void UpdateAI(uint32 diff)
        {
            if (reset)
            {
                if (uiResetTimer <= diff)
                {
                    reset = false;
                    uiResetTimer = 25000;
                    ChooseAura();
                }
                else
                    uiResetTimer -= diff;
            }

            if (me->HasAura(AURA_HAPPY_PARTYGOER))
                return;

            if (uiSpeachTimer <= diff)
            {
                uiSpeachTimer = urand(10000, 40000);
                uint8 roll = urand(0, 1);

                if (me->HasAura(AURA_PARTYGOER_BUBBLY))
                    DoScriptText(PARTYGOER_RANDOM_SAY_NEED_BUBBLY - roll, me);

                if (me->HasAura(AURA_PARTYGOER_BUCKET))
                    DoScriptText(PARTYGOER_RANDOM_SAY_NEED_BUCKET - roll, me);

                if (me->HasAura(AURA_PARTYGOER_DANCE))
                    DoScriptText(PARTYGOER_RANDOM_SAY_NEED_DANCE - roll, me);

                if (me->HasAura(AURA_PARTYGOER_FIREWORKS))
                    DoScriptText(PARTYGOER_RANDOM_SAY_NEED_FIREWORKS - roll, me);

                if (me->HasAura(AURA_PARTYGOER_HORS_DOEUVRES))
                    DoScriptText(PARTYGOER_RANDOM_SAY_NEED_HORS_DOEUVRES - roll, me);
            }
            else
                uiSpeachTimer -= diff;

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

///////////
// Quests The Great Bank Heist 14122
///////////

enum qTGBH
{
    ROLL_INFINIFOLD_LOCKPICK                  = 1,
    ROLL_BLASTCRACKERS                        = 2,
    ROLL_KAJAMITE_DRILL                       = 3,
    ROLL_AMAZING_G_RAY                        = 4,
    ROLL_EAR_O_SCOPE                          = 5,
};

class go_first_bank_of_kezan_vault : public GameObjectScript
{
public:
    go_first_bank_of_kezan_vault() : GameObjectScript("go_first_bank_of_kezan_vault"){ }

    bool OnGossipHello(Player* player, GameObject* /*go*/)
    {
        if (player->GetQuestStatus(QUEST_THE_GREAT_BANK_HEIST) == QUEST_STATUS_INCOMPLETE)
            if (!player->GetVehicle())
                player->CastSpell(player, SPELL_TGBH_SUMMON_BUNNY_VEHICLE, false);

        return true;
    }
};

class npc_first_bank_of_kezan_vault : public CreatureScript
{
    enum
    {
        VAULT_SAY_BREAKING,
        VAULT_SAY_USE_GOBLIN_ALL_IN_1_DER_BELT,
        VAULT_SAY_VAULT_WILL_BE_CRACKED,
        VAULT_SAY_GOOD_LUCK,
        VAULT_SAY_USE_INFINIFOLD_LOCKPICK,
        VAULT_SAY_USE_BLASTCRACKERS,
        VAULT_SAY_USE_KAJAMITE_DRILL,
        VAULT_SAY_USE_AMAZING_G_RAY,
        VAULT_SAY_USE_EAR_O_SCOPE,
        VAULT_SAY_SUCCESS,
        VAULT_SAY_CORRECT,
        VAULT_SAY_INCORRECT,
        VAULT_SAY_EMPTY_TEXT,
        VAULT_SAY_IS_NO_TIME,
    };

public:
    npc_first_bank_of_kezan_vault() : CreatureScript("npc_first_bank_of_kezan_vault") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_first_bank_of_kezan_vaultAI (creature);
    }

    struct npc_first_bank_of_kezan_vaultAI : public VehicleAI
    {
        npc_first_bank_of_kezan_vaultAI(Creature* creature) : VehicleAI(creature)
        {
            creature->AddUnitState(UNIT_STATE_ROOT);
            creature->AddUnitMovementFlag(MOVEMENTFLAG_ROOT);
            creature->setPowerType(POWER_MANA);
            creature->SetMaxPower(POWER_MANA, 100);
            creature->SetVisible(false);
            creature->SetReactState(REACT_PASSIVE);
            creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            uiEventTimer = 3000;
            uiDecreaseTimer = 2000;
            uiReRollTimer = 5000;
            uiPhase = 0;
            Event = false;
            Decrease = false;
            ReRoll = false;
        }

        uint32 uiEventTimer;
        uint32 uiDecreaseTimer;
        uint32 uiReRollTimer;
        uint8 uiPhase;
        bool Event;
        bool Decrease;
        bool ReRoll;

        void ChangeAura()
        {
            Player* player = NULL;

            if (me->isSummon())
                if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                    player = summoner->ToPlayer();

            if (!player)
                return;

            player->AddAura(SPELL_TIMER, player);
            uint8 roll = urand(ROLL_INFINIFOLD_LOCKPICK, ROLL_EAR_O_SCOPE);

            switch (roll)
            {
            case ROLL_INFINIFOLD_LOCKPICK:
                Talk(VAULT_SAY_USE_INFINIFOLD_LOCKPICK, player->GetGUID());
                me->AddAura(SPELL_TGBH_BUNNY_LOCKPICK_AURA, me);
                break;
            case ROLL_BLASTCRACKERS:
                Talk(VAULT_SAY_USE_BLASTCRACKERS, player->GetGUID());
                me->AddAura(SPELL_TGBH_BUNNY_EXPLOSIVES_AURA, me);
                break;
            case ROLL_KAJAMITE_DRILL:
                Talk(VAULT_SAY_USE_KAJAMITE_DRILL, player->GetGUID());
                me->AddAura(SPELL_TGBH_BUNNY_DRILL_AURA, me);
                break;
            case ROLL_AMAZING_G_RAY:
                Talk(VAULT_SAY_USE_AMAZING_G_RAY, player->GetGUID());
                me->AddAura(SPELL_TGBH_BUNNY_G_RAY_AURA, me);
                break;
            case ROLL_EAR_O_SCOPE:
                Talk(VAULT_SAY_USE_EAR_O_SCOPE, player->GetGUID());
                me->AddAura(SPELL_TGBH_BUNNY_LISTEN_AURA, me);
                break;
            }

            Talk(VAULT_SAY_EMPTY_TEXT, player->GetGUID());
        }

        void RemoveEventAuras()
        {
            me->RemoveAura(SPELL_TIMER);
            me->RemoveAura(SPELL_TGBH_BUNNY_LOCKPICK_AURA);
            me->RemoveAura(SPELL_TGBH_BUNNY_EXPLOSIVES_AURA);
            me->RemoveAura(SPELL_TGBH_BUNNY_DRILL_AURA);
            me->RemoveAura(SPELL_TGBH_BUNNY_G_RAY_AURA);
            me->RemoveAura(SPELL_TGBH_BUNNY_LISTEN_AURA);
        }

        void Hit(Player* player, bool correct)
        {
            if (correct)
            {
                DoCast(me, SPELL_TGBH_POWER_CORRECT);
                Talk(VAULT_SAY_CORRECT, player->GetGUID());

                if (me->GetPower(POWER_MANA) == 100)
                {
                    Talk(VAULT_SAY_SUCCESS, player->GetGUID());
                    player->ExitVehicle();

                    if (player->HasItemCount(ITEM_PERSONAL_RICHES, 1))
                        return;

                    ItemPosCountVec dest;
                    uint32 no_space = 0;
                    uint8 msg = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, ITEM_PERSONAL_RICHES, 1, &no_space);

                    if (msg != EQUIP_ERR_OK)
                        return;

                    Item* item = player->StoreNewItem(dest, ITEM_PERSONAL_RICHES, true, Item::GenerateItemRandomPropertyId(ITEM_PERSONAL_RICHES));

                    if (!item)
                    {
                        player->SendEquipError(EQUIP_ERR_ITEM_NOT_FOUND, NULL, NULL);
                        return;
                    }

                    if (item)
                        player->SendNewItem(item, 1, true, true);

                }
            }
            else
            {
                me->ModifyPower(POWER_MANA, -10);
                Talk(VAULT_SAY_INCORRECT, player->GetGUID());
            }

            Event = true;
            Decrease = false;
            ReRoll = false;
            RemoveEventAuras();
            player->RemoveAura(SPELL_TIMER);
            Talk(VAULT_SAY_EMPTY_TEXT, player->GetGUID());
        }

        void SpellHit(Unit* /*caster*/, const SpellInfo* spell)
        {
            Player* player = NULL;

            if (Vehicle* vehicle = me->GetVehicleKit())
                if (Unit* passenger = vehicle->GetPassenger(0))
                    player = passenger->ToPlayer();

            if (!player)
                return;

            switch (spell->Id)
            {
            case SPELL_INFINIFOLD_LOCKPICK:
                if (me->HasAura(SPELL_TGBH_BUNNY_LOCKPICK_AURA))
                    Hit(player, true);
                else
                    Hit(player, false);
                break;
            case SPELL_BLASTCRACKERS:
                if (me->HasAura(SPELL_TGBH_BUNNY_EXPLOSIVES_AURA))
                    Hit(player, true);
                else
                    Hit(player, false);
                break;
            case SPELL_KAJAMITE_DRILL:
                if (me->HasAura(SPELL_TGBH_BUNNY_DRILL_AURA))
                    Hit(player, true);
                else
                    Hit(player, false);
                break;
            case SPELL_AMAZING_G_RAY:
                if (me->HasAura(SPELL_TGBH_BUNNY_G_RAY_AURA))
                    Hit(player, true);
                else
                    Hit(player, false);
                break;
            case SPELL_EAR_O_SCOPE:
                if (me->HasAura(SPELL_TGBH_BUNNY_LISTEN_AURA))
                    Hit(player, true);
                else
                    Hit(player, false);
                break;
            }
        }

        void PassengerBoarded(Unit* who, int8 /*seatId*/, bool apply)
        {
            if (!apply)
                return;

            if (Player* player = who->ToPlayer())
            {
                player->KilledMonsterCredit(me->GetEntry(), 0);
                uiEventTimer = 3000;
                uiPhase = 0;
                Event = true;
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (Event)
            {
                if (uiEventTimer <= diff)
                {
                    ++uiPhase;

                    if (me->isSummon())
                        if (uint64 uiPlayerGUID = me->ToTempSummon()->GetSummonerGUID())
                            switch (uiPhase)
                        {
                            case 1:
                                uiEventTimer = 3500;
                                Talk(VAULT_SAY_BREAKING, uiPlayerGUID);
                                Talk(VAULT_SAY_EMPTY_TEXT, uiPlayerGUID);
                                break;
                            case 2:
                                uiEventTimer = 3500;
                                Talk(VAULT_SAY_USE_GOBLIN_ALL_IN_1_DER_BELT, uiPlayerGUID);
                                Talk(VAULT_SAY_EMPTY_TEXT, uiPlayerGUID);
                                break;
                            case 3:
                                uiEventTimer = 5000;
                                Talk(VAULT_SAY_VAULT_WILL_BE_CRACKED, uiPlayerGUID);
                                Talk(VAULT_SAY_EMPTY_TEXT, uiPlayerGUID);
                                break;
                            case 4:
                                uiEventTimer = 2000;
                                Talk(VAULT_SAY_GOOD_LUCK, uiPlayerGUID);
                                Talk(VAULT_SAY_EMPTY_TEXT, uiPlayerGUID);
                                break;
                            case 5:
                                ChangeAura();
                                Event = false;
                                ReRoll = true;
                                Decrease = true;
                                uiEventTimer = 1000;
                                uiDecreaseTimer = 2000;
                                uiReRollTimer = 5000;
                                uiPhase = 4;
                                break;
                        }
                }
                else
                    uiEventTimer -= diff;
            }

            if (ReRoll)
            {
                if (uiReRollTimer <= diff)
                {
                    Event = true;
                    ReRoll = false;
                    me->ModifyPower(POWER_MANA, -10);
                    RemoveEventAuras();

                    if (me->isSummon())
                        if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                            if (Player* player = summoner->ToPlayer())
                            {
                                Talk(VAULT_SAY_IS_NO_TIME, player->GetGUID());
                                Talk(VAULT_SAY_EMPTY_TEXT, player->GetGUID());
                            }
                }
                else
                    uiReRollTimer -= diff;
            }

            if (Decrease)
            {
                if (uiDecreaseTimer <= diff)
                {
                    uiDecreaseTimer = 2000;
                    me->ModifyPower(POWER_MANA, -5);
                }
                else
                    uiDecreaseTimer -= diff;
            }
        }
    };
};

///////////
// Quests Robbing Hoods 14121
///////////

const uint16 LooterRandomEmote[6]=
{
    EMOTE_ONESHOT_APPLAUD,
    EMOTE_ONESHOT_DANCE,
    EMOTE_ONESHOT_RUDE,
    EMOTE_ONESHOT_ROAR,
    EMOTE_ONESHOT_CHEER,
    EMOTE_ONESHOT_LAUGH,
};

class npc_hired_looter : public CreatureScript
{
public:
    npc_hired_looter() : CreatureScript("npc_hired_looter") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_hired_looterAI (creature);
    }

    struct npc_hired_looterAI : public ScriptedAI
    {
        npc_hired_looterAI(Creature* creature) : ScriptedAI(creature)
        {
            uiDieTimer = 500;
            uiThrowTimer = urand(5000, 15000);
            uiPhase = 0;
            Died = false;
        }

        uint32 uiDieTimer;
        uint32 uiThrowTimer;
        uint8 uiPhase;
        bool Died;

        void SpellHit(Unit* caster, const SpellInfo* spell)
        {
            if (Died)
                return;

            if (spell->Id == SPELL_HOT_ROD_KNOCKBACK)
            {
                Died = true;

                if (Vehicle* vehicle = caster->GetVehicleKit())
                    if (Unit* passenger = vehicle->GetPassenger(0))
                        if (Player* player = passenger->ToPlayer())
                            if (player->GetQuestStatus(QUEST_ROBBING_HOODS) == QUEST_STATUS_INCOMPLETE)
                                me->CastSpell(player, SPELL_CREATE_STOLEN_LOOT, false);
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (Died)
            {
                if (uiDieTimer <= diff)
                {
                    Died = false;
                    uiDieTimer = 500;
                    me->Kill(me);
                }
                else
                    uiDieTimer -= diff;
            }

            if (!UpdateVictim())
            {
                if (!Died)
                {
                    if (uiThrowTimer <= diff)
                    {
                        ++uiPhase;

                        switch (uiPhase)
                        {
                        case 1:
                            uiThrowTimer = 1000;
                            DoCast(me, SPELL_THROW_SUPER_SPLODY_COCKTAIL);
                            break;
                        case 2:
                            uiPhase = 0;
                            uiThrowTimer = urand(3000, 10000);
                            uint8 roll = urand(0, 5);
                            me->HandleEmoteCommand(LooterRandomEmote[roll]);
                            break;
                        }
                    }
                    else
                        uiThrowTimer -= diff;
                }

                return;
            }

            DoMeleeAttackIfReady();
        }
    };
};
/*
///////////
// Quests Waltz Right In 14123
///////////

class npc_villa_mook : public CreatureScript
{
public:
npc_villa_mook() : CreatureScript("npc_villa_mook") { }

CreatureAI* GetAI(Creature* creature) const
{
return new npc_villa_mookAI (creature);
}

struct npc_villa_mookAI : public ScriptedAI
{
npc_villa_mookAI(Creature* creature) : ScriptedAI(creature){ }

void EnterEvadeMode()
{
me->setFaction(ORIGINAL_FACTION);
}

void MoveInLineOfSight(Unit* who)
{
if (who->IsInCombat())
{
if (Player* player = who->ToPlayer())
if (me->IsWithinDistInMap(player, 15.0f) && !me->IsInCombat())
if (player->GetQuestStatus(14123) == QUEST_STATUS_INCOMPLETE || player->GetQuestStatus(14123) == QUEST_STATUS_COMPLETE)
{
me->setFaction(AGGRESSIVE_FACTION);
AttackStart(player);
}

return;
}

if (Player* player = who->ToPlayer())

if (player->GetQuestStatus(14123) == QUEST_STATUS_INCOMPLETE || player->GetQuestStatus(14123) == QUEST_STATUS_COMPLETE)
if (!player->HasAura(67435))
{
player->CastSpell(player, 67435, false);

if (player->IsVehicle())
{
float x, y, z, o;
player->GetPosition(x, y, z, o);
if (Creature* mook = player->SummonCreature(48925, x, y, z, o))
mook->EnterVehicle(player, 0);
}
}
}

void UpdateAI(uint32 diff)
{
if (!UpdateVictim())
return;

DoMeleeAttackIfReady();
}
};
};
*/

///////////
// Quests Liberate the Kaja'mite 14124
///////////

class go_kajamite_deposit : public GameObjectScript
{
public:
    go_kajamite_deposit() : GameObjectScript("go_kajamite_deposit"){ }

    bool OnGossipHello(Player* /*player*/, GameObject* go)
    {
        Position pos;

        for (int i = 0; i < 3; ++i)
        {
            go->GetRandomNearPosition(pos, 3.0f);
            go->SummonGameObject(195492, pos.m_positionX, pos.m_positionY, pos.m_positionZ, pos.m_orientation, 0, 0, 0, 0, 60000);
        }

        return true;
    }
};

class npc_pirate_party_crasher : public CreatureScript
{
public:
    npc_pirate_party_crasher() : CreatureScript("npc_pirate_party_crasher") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_pirate_party_crasherAI (creature);
    }

    struct npc_pirate_party_crasherAI : public ScriptedAI
    {
        npc_pirate_party_crasherAI(Creature* creature) : ScriptedAI(creature){ }

        uint32 uiSpeachTimer;
        uint32 uiSwashbucklingSliceTimer;

        void Reset()
        {
            uiSpeachTimer = urand(10000, 120000);
            uiSwashbucklingSliceTimer = urand(2000, 5000);
            me->SetReactState(REACT_PASSIVE);
        }

        void DamageTaken(Unit* /*done_by*/, uint32 & /*damage*/)
        {
            if (me->GetReactState() == REACT_PASSIVE)
                me->SetReactState(REACT_AGGRESSIVE);
        }

        void UpdateAI(uint32 diff)
        {
            if (uiSpeachTimer <= diff)
            {
                uiSpeachTimer = urand(10000, 40000);
                uint8 roll = urand(0, 7);
                DoScriptText(PIRATE_PARTY_CRASHER_RANDOM_SAY - roll, me);
            }
            else
                uiSpeachTimer -= diff;

            if (!UpdateVictim())
                return;

            if (uiSwashbucklingSliceTimer <= diff)
            {
                uiSwashbucklingSliceTimer = urand(2000, 5000);
                DoCast(me->GetVictim(), 75361);
            }
            else
                uiSwashbucklingSliceTimer -= diff;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_ktc_waiter : public CreatureScript
{
public:
    npc_ktc_waiter() : CreatureScript("npc_ktc_waiter") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ktc_waiterAI (creature);
    }

    struct npc_ktc_waiterAI : public ScriptedAI
    {
        npc_ktc_waiterAI(Creature* creature) : ScriptedAI(creature){ }

        uint32 uiFindTargetTimer;

        void Reset()
        {
            uiFindTargetTimer = 1000;
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
            {
                if (uiFindTargetTimer <= diff)
                {
                    uiFindTargetTimer = 1000;

                    if (Creature* pirate = me->FindNearestCreature(NPC_PIRATE_PARTY_CRASHER, 20.0f))
                    {
                        pirate->AI()->AttackStart(me);
                        me->CombatStart(pirate);
                        pirate->CombatStart(me);
                    }
                }
                else
                    uiFindTargetTimer -= diff;

                return;
            }

            DoMeleeAttackIfReady();
        }
    };
};

class npc_kezan_socialite : public CreatureScript
{
public:
    npc_kezan_socialite() : CreatureScript("npc_kezan_socialite") { }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->HasAura(67435))
        {
            player->SEND_GOSSIP_MENU(17550, creature->GetGUID());
            return true;
        }

        return false;
    }
};

///////////
// Hobart Grapplehammer, Assistant Greely
///////////

enum
{
    POINT_TESTING_PLATFORM                     = 1,
    POINT_BACK_OF_THE_DOCTOR_1                 = 2,
    POINT_RUN_AWAY_FROM_CHICKEN                = 3,
    POINT_BACK_OF_THE_DICTOR_2                 = 4,
};

struct KajaroEvent
{
    int32 HobartTextId;
    uint32 HobartTimer;
    int32 GreelyTextId;
};

static const KajaroEvent KajaroType[8]=
{
    {HOBART_SAY_SKY_IS_FALLING, 4000, GREELY_SAY_SKY_IS_FALLING},
    {HOBART_SAY_GRAB_ONLY_THE_IMPORTANT, 5000, GREELY_SAY_GRAB_ONLY_THE_IMPORTANT},
    {HOBART_SAY_PARTY, 4000, GREELY_SAY_PARTY},
    {HOBART_SAY_DEATHWING, 5000, GREELY_SAY_DEATHWING},
    {HOBART_SAY_GET_EVERYTHING_PACKED, 4000, GREELY_SAY_GET_EVERYTHING_PACKED},
    {HOBART_SAY_SUBJECT_NINE, 5000, GREELY_SAY_SUBJECT_NINE},
    {HOBART_SAY_SCHEMATICS, 4000, GREELY_SAY_SCHEMATICS},
    {HOBART_SAY_INGENIOUS_CAP, 5000, GREELY_SAY_INGENIOUS_CAP},
};

static float LeftBunnySummPos[7][4]=
{
    {-8411.01f, 1356.23f, 109.925f, 5.148721f},
    {-8410.72f, 1356.76f, 110.116f, 6.230825f},
    {-8410.48f, 1356.29f, 110.231f, 6.230825f},
    {-8411.18f, 1356.42f, 110.526f, 6.230825f},
    {-8411.56f, 1356.08f, 111.271f, 6.230825f},
    {-8411.06f, 1356.46f, 111.704f, 6.230825f},
    {-8411.21f, 1357.01f, 111.726f, 6.230825f},
};

static float RightBunnySummPos[7][4]=
{
    {-8403.19f, 1356.28f, 109.492f, 6.230825f},
    {-8403.80f, 1356.15f, 109.954f, 3.246312f},
    {-8402.79f, 1355.90f, 110.156f, 6.230825f},
    {-8403.34f, 1356.62f, 110.337f, 6.230825f},
    {-8402.85f, 1356.43f, 110.739f, 6.230825f},
    {-8402.64f, 1356.01f, 111.359f, 6.230825f},
    {-8402.84f, 1356.28f, 111.426f, 6.230825f},
};

class npc_hobart_grapplehammer : public CreatureScript
{
public:
    npc_hobart_grapplehammer() : CreatureScript("npc_hobart_grapplehammer") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_hobart_grapplehammerAI (creature);
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (creature->GetPhaseMask() == 1)
        {
            player->SEND_GOSSIP_MENU(17538, creature->GetGUID());
            return true;
        }
        else
        {
            player->SEND_GOSSIP_MENU(17554, creature->GetGUID());
            return true;
        }
    }

    struct npc_hobart_grapplehammerAI : public ScriptedAI
    {
        npc_hobart_grapplehammerAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
            me->setActive(true);
            uiMechachickenGUID = 0;
            uiGreelyGUID = 0;
            uiChickenEventTimer = 7000;
            uiKajaroEventTimer = 7000;
            uiBunnyTimer = 1000;
            uiGreelyResponseId = 0;
            uiChickenPhase = 0;
            uiKajaroPhase = 0;
            uiKajaroEventType = 0;
            memset(&m_auiLeftBunny, 0, sizeof(m_auiLeftBunny));
            memset(&m_auiRightBunny, 0, sizeof(m_auiRightBunny));
            bunny_activated = false;

            switch (me->GetPhaseMask())
            {
            case 3:
                Chicken = true;
                Kajaro = false;
                me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_USE_STANDING);
                break;
            case 4:
                Chicken = false;
                Kajaro = false;
                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_COWER);
                break;
            default:
                Chicken = false;
                Kajaro = true;
                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_COWER);
                break;
            }

            if (Creature* greely = me->SummonCreature(NPC_ASSISTANT_GREELY, -8405.3f, 1360.25f, 104.021f, 3.61756f))
                uiGreelyGUID = greely->GetGUID();

            for (int i = 0; i < 7; ++i)
            {
                if (Creature* left_bunny = me->SummonCreature(NPC_ELM_GENERAL_PURPOSE_BUNNY,
                    LeftBunnySummPos[i][0], LeftBunnySummPos[i][1], LeftBunnySummPos[i][2], LeftBunnySummPos[i][3]))
                    m_auiLeftBunny[i] = left_bunny->GetGUID();

                if (Creature* right_bunny = me->SummonCreature(NPC_ELM_GENERAL_PURPOSE_BUNNY,
                    RightBunnySummPos[i][0], RightBunnySummPos[i][1], RightBunnySummPos[i][2], RightBunnySummPos[i][3]))
                    m_auiRightBunny[i] = right_bunny->GetGUID();
            }
        }

        uint64 m_auiLeftBunny[7];
        uint64 m_auiRightBunny[7];
        uint64 uiMechachickenGUID;
        uint64 uiGreelyGUID;
        uint32 uiChickenEventTimer;
        uint32 uiKajaroEventTimer;
        uint32 uiBunnyTimer;
        uint32 uiGreelyResponseId;
        uint8 uiChickenPhase;
        uint8 uiKajaroEventType;
        uint8 uiKajaroPhase;
        bool bunny_activated;
        bool Chicken;
        bool Kajaro;

        void UpdateAI(uint32 diff)
        {
            if (Kajaro)
            {
                if (uiKajaroEventTimer <= diff)
                {
                    ++uiKajaroPhase;

                    switch(uiKajaroPhase)
                    {
                    case 1:
                        uiKajaroEventTimer = KajaroType[uiKajaroEventType].HobartTimer;
                        DoScriptText(KajaroType[uiKajaroEventType].HobartTextId, me);
                        break;
                    case 2:
                        uiKajaroEventTimer = urand(21000, 35000);

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            DoScriptText(KajaroType[uiKajaroEventType].GreelyTextId, greely);

                        uiKajaroEventType = urand(0, 7);
                        uiKajaroPhase = 0;
                        break;
                    }
                }
                else
                    uiKajaroEventTimer -= diff;
            }

            if (Chicken)
            {
                if (bunny_activated)
                {
                    if (uiBunnyTimer <= diff)
                    {
                        uiBunnyTimer = 1000;
                        uint8 l_roll;
                        uint8 r_roll;

                        if (uiChickenPhase < 37)
                        {
                            l_roll = urand(3, 4);
                            r_roll = urand(3, 4);
                        }
                        else
                        {
                            l_roll = urand(1, 2);
                            r_roll = urand(1, 2);
                        }

                        for (int i = 0; i < l_roll; ++i)
                            if (Creature* bunny = Unit::GetCreature(*me, m_auiLeftBunny[urand(0, 6)]))
                                bunny->CastSpell(bunny, SPELL_LIGHTNING_IMPACT, false);

                        for (int i = 0; i < r_roll; ++i)
                            if (Creature* bunny = Unit::GetCreature(*me, m_auiRightBunny[urand(0, 6)]))
                                bunny->CastSpell(bunny, SPELL_LIGHTNING_IMPACT, false);
                    }
                    else
                        uiBunnyTimer -= diff;
                }

                if (uiChickenEventTimer <= diff)
                {
                    ++uiChickenPhase;
                    switch(uiChickenPhase)
                    {
                    case 1:
                        uiChickenEventTimer = 2500;
                        DoScriptText(HOBART_YELL_PREPARE, me);
                        me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                        me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_NONE);

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            greely->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                        break;
                    case 2:
                        uiChickenEventTimer = 3000;

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                        {
                            greely->GetMotionMaster()->MovePoint(POINT_TESTING_PLATFORM, -8405.96f, 1357.84f, 104.709f);
                            DoScriptText(GREELY_SAY_SHEESH, greely);
                        }
                        break;
                    case 3:
                        uiChickenEventTimer = 4000;

                        if (Creature* mechachicken = me->SummonCreature(NPC_MICRO_MECHACHICKEN, -8406.926f, 1356.2f, 104.8625f, 1.53589f))
                        {
                            uiMechachickenGUID = mechachicken->GetGUID();
                            mechachicken->CastSpell(mechachicken, SPELL_COSMETIC_POLYMORPH_IMPACT_VISUAL, false);
                        }

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            greely->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_NONE);
                        break;
                    case 4:
                        uiChickenEventTimer = 6000;

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            DoScriptText(GREELY_SAY_ONE_MECHACHICKEN, greely);
                        break;
                    case 5:
                        uiChickenEventTimer = 8000;
                        DoScriptText(HOBART_SAY_DEAR_GREELY, me);
                        break;
                    case 6:
                        uiChickenEventTimer = 2000;
                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            DoScriptText(GREELY_SIGH, greely);
                        break;
                    case 7:
                        uiChickenEventTimer = 2000;

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            DoScriptText(GREELY_SAY_YES_DOCTOR, greely);
                        break;
                    case 8:
                        uiChickenEventTimer = 5000;
                        DoScriptText(HOBART_SAY_EXCELLENT, me);
                        break;
                    case 9:
                        uiChickenEventTimer = 2000;

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            greely->GetMotionMaster()->MovePoint(POINT_BACK_OF_THE_DOCTOR_1, -8405.3f, 1360.25f, 104.021f);
                        break;
                    case 10:
                        uiChickenEventTimer = 7000;
                        DoScriptText(HOBART_SAY_THANK_YOU, me);
                        break;
                    case 11:
                        uiChickenEventTimer = 5000;
                        DoScriptText(HOBART_SAY_HORRIBLE_PROBLEM, me);
                        break;
                    case 12:
                        uiChickenEventTimer = 8000;
                        DoScriptText(HOBART_SAY_GREATEST_GOBLIN, me);
                        break;
                    case 13:
                        uiChickenEventTimer = 1000;
                        DoScriptText(HOBART_SAY_FLIP_THE_SWITCH, me);
                        break;
                    case 14:
                        uiChickenEventTimer = 1000;

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            DoScriptText(GREELY_COUGHS, greely);
                        break;
                    case 15:
                        uiChickenEventTimer = 2500;
                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            DoScriptText(GREELY_SAY_AT_THE_CONTROLS, greely);
                        break;
                    case 16:
                        uiChickenEventTimer = 4000;
                        DoScriptText(HOBART_SAY_QUITE_RIGHT, me);
                        break;
                    case 17:
                        uiChickenEventTimer = 3500;
                        DoScriptText(HOBART_SAY_FLIPPING, me);
                        break;
                    case 18:
                        uiChickenEventTimer = 5000;
                        bunny_activated = true;
                        break;
                    case 19:
                        uiChickenEventTimer = 6000;
                        DoScriptText(HOBART_SAY_CAN_YOU_FEEL, me);
                        break;
                    case 20:
                        uiChickenEventTimer = 6000;
                        DoScriptText(HOBART_SAY_GROCERY_STORE, me);
                        break;
                    case 21:
                        uiChickenEventTimer = 7000;
                        DoScriptText(HOBART_SAY_FLIPPING_SECOND, me);
                        break;
                    case 22:
                        uiChickenEventTimer = 500;

                        if (Creature* chicken = Unit::GetCreature(*me, uiMechachickenGUID))
                        {
                            if (Creature* left_bunny = Unit::GetCreature(*me, m_auiLeftBunny[0]))
                            {
                                left_bunny->SetUInt64Value(UNIT_FIELD_CHANNEL_OBJECT, chicken->GetGUID());
                                left_bunny->SetUInt32Value(UNIT_CHANNEL_SPELL, SPELL_LIGHTNING_BEAM);
                            }

                            if (Creature* right_bunny = Unit::GetCreature(*me, m_auiRightBunny[0]))
                            {
                                right_bunny->SetUInt64Value(UNIT_FIELD_CHANNEL_OBJECT, chicken->GetGUID());
                                right_bunny->SetUInt32Value(UNIT_CHANNEL_SPELL, SPELL_LIGHTNING_BEAM);
                            }
                        }
                        break;
                    case 23:
                        uiChickenEventTimer = 3000;

                        if (Creature* chicken = Unit::GetCreature(*me, uiMechachickenGUID))
                        {
                            chicken->PlayDirectSound(12205);
                            chicken->HandleEmoteCommand(EMOTE_ONESHOT_CUSTOM_SPELL_02);
                            chicken->CastSpell(chicken, SPELL_MECHACHICKEN_OVERLOAD, false);
                        }
                        break;
                    case 24:
                        uiChickenEventTimer = 2000;
                        DoScriptText(HOBART_SAY_WAIT, me);

                        if (Creature* chicken = Unit::GetCreature(*me, uiMechachickenGUID))
                        {
                            chicken->PlayDirectSound(12205);
                            chicken->CastSpell(chicken, SPELL_MICRO_MECHACHICKEN_GROW, false);
                        }

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            greely->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_COWER);

                        me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_COWER);
                        break;
                    case 25:
                        uiChickenEventTimer = 1500;

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                        {
                            greely->CastSpell(greely, SPELL_STEALTH, false);
                            greely->GetMotionMaster()->MovePoint(POINT_RUN_AWAY_FROM_CHICKEN, -8404.18f, 1364.28f, 104.021f);
                        }
                        break;
                    case 26:
                        uiChickenEventTimer = 2000;

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            DoScriptText(GREELY_SAY_YA_THINK, greely);
                        break;
                    case 27:
                        uiChickenEventTimer = 4000;

                        if (Creature* chicken = Unit::GetCreature(*me, uiMechachickenGUID))
                        {
                            chicken->PlayDirectSound(12205);
                            chicken->CastSpell(chicken, SPELL_MICRO_MECHACHICKEN_GROW, false);
                        }
                        break;
                    case 28:
                        uiChickenEventTimer = 2000;
                        DoScriptText(HOBART_YELL_I_KNOW, me);
                        break;
                    case 29:
                        uiChickenEventTimer = 2000;

                        if (Creature* chicken = Unit::GetCreature(*me, uiMechachickenGUID))
                        {
                            chicken->PlayDirectSound(12205);
                            chicken->CastSpell(chicken, SPELL_MICRO_MECHACHICKEN_GROW, false);
                        }
                        break;
                    case 30:
                        uiChickenEventTimer = 2000;

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            DoScriptText(GREELY_YELL_FAR_RIGHT, greely);
                        break;
                    case 31:
                        uiChickenEventTimer = 2000;

                        if (Creature* chicken = Unit::GetCreature(*me, uiMechachickenGUID))
                        {
                            chicken->PlayDirectSound(12205);
                            chicken->CastSpell(chicken, SPELL_MICRO_MECHACHICKEN_GROW, false);
                        }
                        break;
                    case 32:
                        uiChickenEventTimer = 2000;

                        if (Creature* chicken = Unit::GetCreature(*me, uiMechachickenGUID))
                        {
                            chicken->PlayDirectSound(12205);
                            chicken->CastSpell(chicken, SPELL_MICRO_MECHACHICKEN_GROW, false);
                        }
                        break;
                    case 33:
                        uiChickenEventTimer = 2000;
                        DoScriptText(HOBART_YELL_I_ALWAYS_LOVED, me);
                        break;
                    case 34:
                        uiChickenEventTimer = 2000;

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            DoScriptText(GREELY_YELL_WHAT, greely);
                        break;
                    case 35:
                        uiChickenEventTimer = 5000;
                        DoScriptText(HOBART_YELL_FLIPPING_THE_OVERRIDE, me);
                        break;
                    case 36:
                        uiChickenEventTimer = 3000;

                        if (Creature* chicken = Unit::GetCreature(*me, uiMechachickenGUID))
                        {
                            chicken->PlayDirectSound(12205);
                            chicken->RemoveAllAuras();
                        }

                        if (Creature* left_bunny = Unit::GetCreature(*me, m_auiLeftBunny[0]))
                        {
                            left_bunny->SetUInt64Value(UNIT_FIELD_CHANNEL_OBJECT, 0);
                            left_bunny->SetUInt32Value(UNIT_CHANNEL_SPELL, 0);
                        }

                        if (Creature* right_bunny = Unit::GetCreature(*me, m_auiRightBunny[0]))
                        {
                            right_bunny->SetUInt64Value(UNIT_FIELD_CHANNEL_OBJECT, 0);
                            right_bunny->SetUInt32Value(UNIT_CHANNEL_SPELL, 0);
                        }
                        break;
                    case 37:
                        uiChickenEventTimer = 4000;
                        DoScriptText(HOBART_SAY_ARE_WE_STILL_ALIVE, me);
                        break;
                    case 38:
                        uiChickenEventTimer = 3000;

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                        {
                            greely->RemoveAllAuras();
                            DoScriptText(GREELY_SAY_WERE_STILL_ALIVE, greely);
                            greely->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_NONE);
                            greely->GetMotionMaster()->MovePoint(POINT_BACK_OF_THE_DICTOR_2, -8405.3f, 1360.25f, 104.021f);
                        }
                        break;
                    case 39:
                        uiChickenEventTimer = 4000;
                        DoScriptText(HOBART_SAY_WELL_OF_COURSE, me);
                        break;
                    case 40:
                        uiChickenEventTimer = 6000;
                        bunny_activated = false;

                        if (Creature* chicken = Unit::GetCreature(*me, uiMechachickenGUID))
                        {
                            chicken->CastSpell(chicken, SPELL_MECHACHICKEN_EXPLOSION, false);
                            chicken->PlayDirectSound(12205);
                            chicken->DespawnOrUnsummon(3000);
                        }
                        break;
                    case 41:
                        uiChickenEventTimer = 500;

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            DoScriptText(GREELY_SAY_IS_THAT_EGG, greely);
                        break;
                    case 42:
                        uiChickenEventTimer = 5000;
                        DoScriptText(HOBART_OPEN_MOUTH, me);
                        break;
                    case 43:
                        uiChickenEventTimer = 5000;

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            DoScriptText(GREELY_SAY_ALWAYS_LOVED, greely);
                        break;
                    case 44:
                        uiChickenEventTimer = 3000;
                        DoScriptText(HOBART_SAY_MISS_GREELY, me);
                        me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_USE_STANDING);
                        break;
                    case 45:
                        uiChickenEventTimer = 3000;

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            DoScriptText(GREELY_BOTH_AGREE, greely);
                        break;
                    case 46:
                        uiChickenEventTimer = 180000;
                        uiChickenPhase = 0;
                        me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);

                        if (Creature* greely = Unit::GetCreature(*me, uiGreelyGUID))
                            greely->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                        break;
                    }
                }
                else
                    uiChickenEventTimer -= diff;
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_assistant_greely : public CreatureScript
{
public:
    npc_assistant_greely() : CreatureScript("npc_assistant_greely") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_assistant_greelyAI (creature);
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (creature->GetPhaseMask() == 1)
        {
            player->SEND_GOSSIP_MENU(0, creature->GetGUID()); // 50005 N/A
            return true;
        }
        else
        {
            player->SEND_GOSSIP_MENU(0, creature->GetGUID()); // 50006 N/A
            return true;
        }
    }

    struct npc_assistant_greelyAI : public ScriptedAI
    {
        npc_assistant_greelyAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
            me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
            me->setActive(true);
            uiFollowTimer = 150;

            switch (me->GetPhaseMask())
            {
            case 3:
                Follow = false;
                break;
            case 4:
                Follow = false;
                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_COWER);
                break;
            default:
                Follow = true;
                me->AddUnitState(UNIT_STATE_ROOT);
                me->AddUnitMovementFlag(MOVEMENTFLAG_ROOT);
                break;
            }
        }

        uint32 uiFollowTimer;
        bool Follow;

        void MovementInform(uint32 type, uint32 id)
        {
            if (type != POINT_MOTION_TYPE)
                return;

            switch (id)
            {
            case POINT_TESTING_PLATFORM:
                me->SetFacingTo(4.14084f);
                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_USE_STANDING);
                break;
            case POINT_BACK_OF_THE_DOCTOR_1:
                if (me->isSummon())
                    if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                    {
                        me->SetFacingToObject(summoner);
                        DoScriptText(GREELY_SHAKES_HEAD, me);
                    }
                    break;
            case POINT_RUN_AWAY_FROM_CHICKEN:
                if (me->isSummon())
                    if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                        me->SetFacingToObject(summoner);
                break;
            case POINT_BACK_OF_THE_DICTOR_2:
                if (me->isSummon())
                    if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                    {
                        me->SetFacingToObject(summoner);
                        summoner->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_NONE);
                    }
                    break;
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (Follow)
            {
                if (uiFollowTimer <= diff)
                {
                    uiFollowTimer = 150;

                    if (me->isSummon())
                        if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                            me->SetFacingToObject(summoner);
                }
                else
                    uiFollowTimer -= diff;
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_kaja_cola_balloon : public CreatureScript
{
public:
    npc_kaja_cola_balloon() : CreatureScript("npc_kaja_cola_balloon") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_kaja_cola_balloonAI (creature);
    }

    struct npc_kaja_cola_balloonAI : public ScriptedAI
    {
        npc_kaja_cola_balloonAI(Creature* creature) : ScriptedAI(creature)
        {
            uiYellTimer = 1000;
            if (me->GetPhaseMask() == 3087)
            {
                me->setActive(true);
                Yell = true;
            }
            else
            {
                me->setActive(false);
                Yell = false;
            }
        }

        uint32 uiYellTimer;
        bool Yell;

        void UpdateAI(uint32 diff)
        {
            if (Yell)
            {
                if (uiYellTimer <= diff)
                {
                    uiYellTimer = urand(30000, 60000);
                    uint8 roll = urand(0, 7);
                    DoScriptText(KAJA_COLA_BALLOON_RANDOM_YELL - roll, me);
                }
                else
                    uiYellTimer -= diff;
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

#define   VINNY_VENDOR     "Ð’Ð¸Ð½Ð½Ð¸, Ñ Ð´Ð¾Ð»Ð¶ÐµÐ½ Ð´Ð¾Ð±Ñ‹Ñ‚ÑŒ Ñ…Ð¾Ñ‚Ñ Ð±Ñ‹ Ð¾Ð´Ð¸Ð½ ÑÑƒÐ²ÐµÐ½Ð¸Ñ€ Ñ Ð¼ÐµÑÑ‚Ð° ÐºÐ°Ñ‚Ð°ÐºÐ»Ð¸Ð·Ð¼Ð°!"

class npc_vinny_slapchop : public CreatureScript
{
public:
    npc_vinny_slapchop() : CreatureScript("npc_vinny_slapchop") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_vinny_slapchopAI (creature);
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, VINNY_VENDOR, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_TRADE);
        player->SEND_GOSSIP_MENU(0, creature->GetGUID()); // 50007 N/A
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action)
    {
        player->PlayerTalkClass->ClearMenus();

        if (action == GOSSIP_ACTION_TRADE)
            player->GetSession()->SendListInventory(creature->GetGUID());

        return true;
    }

    struct npc_vinny_slapchopAI : public ScriptedAI
    {
        npc_vinny_slapchopAI(Creature* creature) : ScriptedAI(creature)
        {
            uiSayTimer = urand(10000, 40000);
        }

        uint32 uiSayTimer;

        void UpdateAI(uint32 diff)
        {
            if (uiSayTimer <= diff)
            {
                uiSayTimer = urand(10000, 40000);
                uint8 roll = urand(0, 7);
                DoScriptText(VINNY_SLAPCHOP_RANDOM_SAY - roll, me);
            }
            else
                uiSayTimer -= diff;

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

static float MeteorTarget[402][3]=
{
    {-8037.68f,1475.99f,13.6223f},{-8041.16f,1483.95f,25.0963f},{-8041.91f,1495.25f,20.7194f},
    {-8032.24f,1496.39f,23.9126f},{-8025.68f,1485.01f,25.8630f},{-8041.24f,1505.12f,25.5332f},
    {-8076.59f,1522.16f,17.9709f},{-8077.30f,1513.77f,8.99984f},{-8053.48f,1509.48f,9.44403f},
    {-8055.35f,1485.35f,9.42139f},{-8039.05f,1464.38f,9.29380f},{-8067.47f,1467.07f,9.31727f},
    {-8086.85f,1470.7f,8.832340f},{-8103.07f,1481.57f,10.1055f},{-8112.70f,1437.85f,11.1506f},
    {-8099.88f,1264.54f,21.0841f},{-8058.81f,1141.94f,2.76407f},{-8096.91f,1342.74f,18.1227f},
    {-8068.48f,1162.18f,3.05742f},{-8052.22f,1173.28f,2.91838f},{-8036.89f,1197.22f,2.46190f},
    {-8062.27f,1188.14f,3.90544f},{-8024.79f,1205.59f,1.37508f},{-8029.19f,1223.73f,1.76494f},
    {-8053.10f,1210.93f,3.86019f},{-8043.74f,1229.99f,2.52742f},{-8047.74f,1252.81f,6.56697f},
    {-8037.87f,1297.72f,3.53944f},{-8055.57f,1278.24f,5.53981f},{-8026.04f,1304.86f,2.91297f},
    {-8045.09f,1325.30f,4.80808f},{-8057.48f,1338.18f,6.98008f},{-8044.74f,1365.26f,4.53430f},
    {-8046.55f,1382.63f,2.60187f},{-8053.19f,1401.32f,3.15130f},{-8075.15f,1401.26f,7.57897f},
    {-8093.07f,1371.91f,12.5679f},{-8093.58f,1391.20f,12.5674f},{-8120.85f,1382.40f,23.6426f},
    {-8124.57f,1357.68f,18.8603f},{-8172.53f,1341.48f,27.9590f},{-8161.24f,1355.54f,23.4237f},
    {-8174.19f,1386.07f,24.8344f},{-8234.61f,1408.73f,36.9358f},{-8242.37f,1383.82f,41.1568f},
    {-8212.09f,1395.50f,39.9162f},{-8206.88f,1369.10f,34.6802f},{-8233.45f,1341.80f,47.8119f},
    {-8261.95f,1353.64f,62.5433f},{-8270.65f,1374.68f,63.6114f},{-8311.16f,1379.20f,86.6267f},
    {-8352.93f,1384.25f,95.7099f},{-8398.04f,1360.53f,129.112f},{-8417.90f,1356.72f,134.570f},
    {-8429.48f,1373.74f,128.992f},{-8407.17f,1359.41f,127.608f},{-8421.11f,1367.92f,129.211f},
    {-8521.92f,1375.69f,108.413f},{-8523.60f,1299.74f,114.588f},{-8448.57f,1346.65f,102.444f},
    {-8447.05f,1371.65f,102.388f},{-8462.35f,1376.25f,101.697f},{-8484.00f,1382.84f,101.697f},
    {-8508.61f,1377.18f,101.716f},{-8512.02f,1349.75f,101.697f},{-8517.48f,1314.72f,101.863f},
    {-8485.11f,1329.38f,98.9211f},{-8484.09f,1310.34f,101.697f},{-8458.21f,1303.35f,101.947f},
    {-8425.03f,1295.12f,102.925f},{-8420.98f,1332.78f,102.356f},{-8385.83f,1330.55f,102.322f},
    {-8383.08f,1363.67f,102.067f},{-8353.45f,1343.85f,95.5177f},{-8324.33f,1339.75f,80.4592f},
    {-8306.44f,1308.16f,67.3110f},{-8282.09f,1292.87f,56.9746f},{-8250.65f,1304.47f,45.3597f},
    {-8184.25f,1329.89f,63.1769f},{-8181.56f,1322.03f,55.0864f},{-8159.35f,1314.61f,26.4618f},
    {-8189.84f,1312.64f,27.6195f},{-8137.79f,1308.98f,19.8113f},{-8111.47f,1310.57f,18.6071f},
    {-8104.93f,1286.12f,20.1409f},{-8126.01f,1251.00f,19.6462f},{-8111.52f,1224.01f,16.0268f},
    {-8121.25f,1155.22f,12.9709f},{-8110.50f,1181.40f,14.4180f},{-8149.94f,1167.08f,19.5562f},
    {-8137.99f,1191.00f,17.4234f},{-8169.59f,1200.18f,18.7697f},{-8188.52f,1217.12f,22.4706f},
    {-8161.76f,1221.41f,20.8543f},{-8156.47f,1241.08f,21.6440f},{-8154.94f,1256.68f,22.7579f},
    {-8150.27f,1287.58f,23.3850f},{-8173.76f,1278.06f,25.5544f},{-8179.01f,1265.74f,36.4265f},
    {-8192.40f,1276.75f,27.6607f},{-8206.10f,1250.43f,60.1228f},{-8209.18f,1271.33f,36.8474f},
    {-8204.77f,1244.57f,49.9996f},{-8219.71f,1242.81f,45.1397f},{-8217.20f,1232.63f,35.3453f},
    {-8225.51f,1233.63f,24.1994f},{-8244.10f,1257.35f,27.9735f},{-8248.97f,1204.12f,36.7716f},
    {-8268.35f,1222.54f,34.4648f},{-8290.61f,1244.50f,39.1817f},{-8306.43f,1235.52f,41.1522f},
    {-8330.18f,1231.38f,53.4531f},{-8347.05f,1227.46f,54.3543f},{-8357.28f,1199.09f,45.4824f},
    {-8389.13f,1184.67f,54.3850f},{-8399.34f,1213.46f,57.4407f},{-8411.57f,1229.80f,60.7457f},
    {-8394.02f,1245.47f,59.7155f},{-8385.13f,1261.33f,60.6984f},{-8393.19f,1275.48f,79.2300f},
    {-8428.73f,1260.14f,69.1703f},{-8464.21f,1244.84f,54.3887f},{-8508.75f,1240.72f,54.9423f},
    {-8452.64f,1213.22f,43.0954f},{-8478.42f,1213.83f,42.0305f},{-8505.35f,1223.07f,50.6053f},
    {-8513.14f,1202.46f,49.8505f},{-8488.22f,1167.01f,41.9150f},{-8487.33f,1140.70f,40.6198f},
    {-8478.69f,1128.04f,41.6854f},{-8472.56f,1163.18f,41.0058f},{-8459.93f,1181.22f,42.1854f},
    {-8443.70f,1198.07f,40.5342f},{-8420.14f,1196.56f,41.3180f},{-8424.33f,1175.26f,40.6914f},
    {-8448.33f,1174.65f,40.8060f},{-8445.03f,1157.14f,39.9888f},{-8451.10f,1145.83f,40.9183f},
    {-8443.84f,1107.99f,52.1924f},{-8419.00f,1126.36f,49.2527f},{-8028.87f,1481.56f,38.3273f},
    {-8028.99f,1506.36f,36.0386f},{-8087.26f,1496.92f,22.6907f},{-8100.74f,1517.34f,9.68134f},
    {-8123.84f,1517.62f,10.6082f},{-8130.38f,1492.14f,12.9926f},{-8145.67f,1492.48f,26.6957f},
    {-8146.08f,1525.65f,21.6292f},{-8156.04f,1545.47f,25.7418f},{-8164.30f,1532.97f,47.2374f},
    {-8173.93f,1511.44f,43.2488f},{-8178.37f,1486.72f,41.5304f},{-8189.10f,1524.61f,59.1192f},
    {-8194.75f,1542.65f,66.0870f},{-8198.37f,1547.58f,31.9746f},{-8116.75f,1554.00f,27.2984f},
    {-8122.01f,1542.77f,26.7214f},{-8114.74f,1529.92f,25.8053f},{-8113.16f,1539.34f,36.2071f},
    {-8102.46f,1550.34f,9.05301f},{-8084.31f,1536.76f,9.17192f},{-8059.48f,1542.59f,3.53651f},
    {-8028.07f,1538.22f,1.55586f},{-7996.98f,1502.57f,2.39352f},{-7991.51f,1528.00f,1.28052f},
    {-8004.85f,1563.46f,1.56339f},{-7999.34f,1594.35f,2.17393f},{-8006.75f,1604.55f,2.38489f},
    {-8050.17f,1620.84f,1.04762f},{-8067.14f,1602.28f,7.81356f},{-8096.68f,1617.33f,8.68595f},
    {-8087.12f,1592.75f,7.92499f},{-8108.32f,1592.50f,8.59131f},{-8090.40f,1631.63f,8.95684f},
    {-8072.92f,1649.38f,10.1871f},{-8044.60f,1653.57f,4.37643f},{-8021.95f,1639.24f,2.34828f},
    {-7996.61f,1637.17f,1.60131f},{-7994.46f,1655.70f,2.44999f},{-8010.08f,1663.25f,2.82048f},
    {-8002.64f,1679.93f,3.19247f},{-7994.76f,1695.15f,2.22928f},{-8014.16f,1701.03f,2.96222f},
    {-8005.91f,1721.59f,2.21401f},{-8023.12f,1732.57f,1.31788f},{-8012.69f,1751.27f,1.07758f},
    {-8031.88f,1710.56f,7.01437f},{-8049.05f,1745.71f,2.03484f},{-8044.88f,1776.31f,1.54140f},
    {-8022.54f,1784.73f,0.98204f},{-8087.86f,1773.94f,25.6381f},{-8037.12f,1762.20f,1.80717f},
    {-8082.06f,1730.01f,18.2666f},{-8070.86f,1707.03f,16.5465f},{-8044.80f,1699.18f,12.9628f},
    {-8073.86f,1679.94f,13.4186f},{-8096.19f,1675.74f,13.3204f},{-8098.53f,1700.74f,16.3298f},
    {-8109.20f,1739.97f,22.8146f},{-8112.35f,1774.00f,39.7602f},{-8094.99f,1807.06f,34.2375f},
    {-8067.89f,1831.77f,45.3007f},{-8056.43f,1816.78f,41.9736f},{-8025.39f,1821.22f,35.5957f},
    {-7998.59f,1820.47f,23.7669f},{-7980.88f,1806.43f,13.3507f},{-7971.68f,1908.20f,52.5324f},
    {-7996.62f,1904.99f,52.5176f},{-8028.01f,1902.80f,49.6608f},{-8023.44f,1873.97f,52.7744f},
    {-8004.30f,1876.02f,52.6784f},{-8005.74f,1861.77f,65.9874f},{-8031.11f,1860.10f,52.5216f},
    {-8048.75f,1876.51f,52.5164f},{-8054.38f,1859.08f,52.3152f},{-8064.52f,1895.29f,53.6651f},
    {-8054.42f,1917.65f,52.5129f},{-8047.46f,1911.33f,52.5143f},{-8047.32f,1934.01f,52.5890f},
    {-8055.51f,1947.62f,53.0907f},{-8079.51f,1952.64f,53.9686f},{-8046.28f,1950.57f,67.4519f},
    {-8079.02f,1929.12f,65.8922f},{-8112.23f,1929.90f,55.6128f},{-8118.68f,1913.42f,54.9076f},
    {-8092.71f,1895.89f,54.5085f},{-8096.62f,1874.26f,56.0164f},{-8114.35f,1867.71f,56.2004f},
    {-8139.16f,1861.77f,55.4215f},{-8146.83f,1887.72f,81.0716f},{-8154.03f,1903.98f,66.0807f},
    {-8143.70f,1912.14f,81.4387f},{-8155.74f,1896.17f,86.3040f},{-8154.48f,1887.44f,98.7238f},
    {-8136.74f,1891.18f,81.4883f},{-8149.41f,1848.57f,33.8570f},{-8159.65f,1841.05f,31.4248f},
    {-8143.59f,1823.63f,23.0160f},{-8158.70f,1778.53f,25.2191f},{-8185.56f,1788.36f,29.8838f},
    {-8176.88f,1763.34f,47.1109f},{-8182.01f,1779.40f,45.6053f},{-8174.42f,1774.36f,55.5011f},
    {-8184.51f,1747.35f,56.2979f},{-8201.65f,1762.05f,43.2104f},{-8221.98f,1745.37f,44.3920f},
    {-8239.13f,1726.88f,44.7975f},{-8247.40f,1724.67f,44.6988f},{-8236.96f,1716.77f,44.6888f},
    {-8235.27f,1699.40f,44.5862f},{-8225.99f,1708.32f,55.2297f},{-8210.29f,1723.04f,55.5713f},
    {-8205.04f,1719.37f,61.9990f},{-8208.55f,1702.31f,57.2884f},{-8207.53f,1695.21f,60.9719f},
    {-8206.98f,1691.87f,68.2909f},{-8209.78f,1678.74f,49.7786f},{-8210.34f,1685.61f,58.1599f},
    {-8181.90f,1668.56f,57.7743f},{-8119.52f,1602.52f,28.6966f},{-8121.59f,1588.66f,29.6093f},
    {-8135.98f,1591.01f,44.6268f},{-8144.41f,1595.12f,44.8364f},{-8144.46f,1601.59f,16.3018f},
    {-8157.13f,1613.54f,19.0649f},{-8160.54f,1645.76f,20.6001f},{-8175.91f,1655.82f,24.2878f},
    {-8188.97f,1625.97f,28.0432f},{-8205.34f,1633.55f,31.1166f},{-8218.12f,1644.59f,32.8152f},
    {-8226.97f,1631.59f,33.8053f},{-8219.49f,1604.67f,33.2154f},{-8229.99f,1589.33f,33.5585f},
    {-8208.79f,1574.95f,31.5433f},{-8209.29f,1555.51f,31.8884f},{-8179.93f,1548.80f,31.1706f},
    {-8169.80f,1567.19f,22.9115f},{-8175.13f,1588.15f,25.3683f},{-8144.05f,1588.18f,45.4832f},
    {-8171.52f,1611.78f,40.5640f},{-8170.19f,1612.04f,39.8783f},{-8169.57f,1629.38f,40.6756f},
    {-8174.49f,1625.01f,41.1788f},{-8177.42f,1616.89f,40.3119f},{-8200.22f,1618.75f,42.3867f},
    {-8194.98f,1600.51f,46.0721f},{-8195.65f,1582.67f,45.7628f},{-8194.36f,1546.49f,40.3620f},
    {-8243.48f,1559.47f,60.8475f},{-8241.81f,1580.22f,62.2030f},{-8242.42f,1580.86f,69.3832f},
    {-8297.73f,1607.72f,131.350f},{-8317.24f,1605.07f,130.934f},{-8317.45f,1621.26f,124.914f},
    {-8311.22f,1614.64f,129.569f},{-8291.52f,1612.08f,130.917f},{-8270.51f,1614.94f,129.910f},
    {-8263.07f,1654.11f,66.6103f},{-8279.28f,1658.81f,67.4949f},{-8257.62f,1666.90f,49.9469f},
    {-8240.17f,1674.51f,43.2782f},{-8259.22f,1692.26f,48.4038f},{-8274.26f,1704.07f,63.8722f},
    {-8275.31f,1718.44f,64.9682f},{-8276.65f,1726.24f,71.4404f},{-8301.52f,1726.90f,51.0400f},
    {-8318.98f,1726.47f,50.7467f},{-8331.63f,1748.07f,50.7927f},{-8330.70f,1711.08f,50.9302f},
    {-8319.73f,1698.28f,51.2294f},{-8339.30f,1700.00f,51.1353f},{-8349.15f,1720.86f,68.9031f},
    {-8354.30f,1731.89f,69.4192f},{-8343.74f,1732.48f,69.2499f},{-8342.35f,1721.51f,68.7857f},
    {-8389.17f,1728.71f,117.668f},{-8396.05f,1727.78f,118.204f},{-8413.08f,1723.72f,118.673f},
    {-8424.37f,1723.40f,120.330f},{-8424.23f,1728.65f,117.853f},{-8407.60f,1734.04f,117.950f},
    {-8400.43f,1735.36f,118.096f},{-8468.31f,1681.69f,78.5300f},{-8471.22f,1666.39f,74.6295f},
    {-8432.00f,1664.70f,48.0161f},{-8416.58f,1654.20f,45.7974f},{-8425.02f,1638.11f,43.6810f},
    {-8404.63f,1630.90f,43.6817f},{-8384.50f,1657.27f,49.5437f},{-8375.68f,1640.21f,49.5635f},
    {-8362.68f,1623.83f,72.9915f},{-8379.60f,1612.53f,72.2692f},{-8391.99f,1609.98f,82.0446f},
    {-8397.68f,1589.56f,72.3736f},{-8389.79f,1562.08f,62.1636f},{-8431.31f,1520.08f,69.3153f},
    {-8401.67f,1535.71f,50.3128f},{-8397.27f,1547.18f,49.2079f},{-8425.62f,1541.02f,48.5064f},
    {-8460.11f,1539.01f,50.7479f},{-8456.83f,1616.70f,44.0009f},{-8457.34f,1631.80f,45.7327f},
    {-8446.81f,1615.38f,42.3281f},{-8490.66f,1617.02f,47.2390f},{-8326.46f,1658.76f,78.2067f},
    {-8321.79f,1641.24f,81.3262f},{-8325.36f,1579.57f,79.7855f},{-8303.68f,1577.49f,74.7501f},
    {-8354.54f,1549.24f,75.7229f},{-8354.94f,1531.94f,55.4800f},{-8326.19f,1532.43f,47.2057f},
    {-8334.23f,1547.00f,81.8935f},{-8310.97f,1526.21f,49.5073f},{-8302.29f,1542.42f,47.6788f},
    {-8299.01f,1555.11f,76.2957f},{-8275.83f,1544.73f,50.9328f},{-8277.68f,1563.14f,51.9492f},
    {-8264.25f,1541.97f,40.8781f},{-8254.31f,1549.45f,40.7780f},{-8258.43f,1557.47f,55.9036f},
    {-8242.95f,1545.69f,46.5355f},{-8237.21f,1516.04f,40.9409f},{-8244.59f,1537.00f,40.4869f},
    {-8227.16f,1502.12f,40.6486f},{-8205.39f,1512.50f,52.7608f},{-8219.27f,1496.78f,40.6822f},
    {-8219.90f,1479.77f,39.6774f},{-8234.84f,1466.32f,40.4804f},{-8228.45f,1447.73f,39.6120f},
    {-8211.36f,1441.88f,36.1301f},{-8194.97f,1447.91f,37.6865f},{-8189.28f,1417.96f,25.2797f},
    {-8192.65f,1404.33f,26.2710f},{-8220.00f,1421.85f,47.6745f},{-8236.09f,1433.07f,39.3946f},
    {-8254.82f,1437.24f,40.2917f},{-8254.91f,1419.55f,40.0054f},{-8238.21f,1421.00f,51.9041f},
    {-8280.59f,1418.48f,52.9367f},{-8283.64f,1432.88f,39.5929f},{-8303.63f,1445.15f,41.7076f},
    {-8316.32f,1429.48f,44.5663f},{-8336.59f,1412.32f,75.8575f},{-8364.83f,1410.11f,89.0763f},
    {-8399.95f,1435.71f,80.6888f},{-8349.31f,1450.96f,47.8875f},{-8347.14f,1477.55f,47.3712f},
    {-8358.9f,1481.390f,63.7215f},{-8360.44f,1489.96f,63.2215f},{-8372.52f,1488.14f,63.8784f},
    {-8379.54f,1481.10f,64.1588f},{-8389.03f,1484.79f,108.922f},{-8393.46f,1462.69f,110.765f},
    {-8403.11f,1444.06f,112.509f},{-8409.97f,1461.63f,109.751f},{-8402.11f,1492.30f,112.804f},
    {-8458.92f,1490.22f,100.733f},{-8452.01f,1482.69f,102.460f},{-8459.09f,1475.15f,102.678f},
    {-8477.37f,1478.84f,87.2453f},{-8477.35f,1494.56f,87.1643f},{-8477.35f,1494.56f,87.1643f}
};

class npc_general_purpose_bunny : public CreatureScript
{
public:
    npc_general_purpose_bunny() : CreatureScript("npc_general_purpose_bunny") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_general_purpose_bunnyAI (creature);
    }

    struct npc_general_purpose_bunnyAI : public ScriptedAI
    {
        npc_general_purpose_bunnyAI(Creature* creature) : ScriptedAI(creature)
        {
            me->setActive(true);
            uiCastTimer = 1000;
        }

        uint32 uiCastTimer;

        void UpdateAI(uint32 diff)
        {
            if (uiCastTimer <= diff)
            {
                if (me->GetPhaseMask() == 3072)
                    uiCastTimer = urand(15000, 30000);
                else
                    uiCastTimer = urand(5000, 15000);

                uint8 roll = urand(0, 401);
                me->CastSpell(MeteorTarget[roll][0], MeteorTarget[roll][1], MeteorTarget[roll][2], 70097, false);
            }
            else
                uiCastTimer -= diff;

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_trade_prince_gallywix : public CreatureScript
{
public:
    npc_trade_prince_gallywix() : CreatureScript("npc_trade_prince_gallywix") { }


    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_trade_prince_gallywixAI (creature);
    }

    bool OnQuestAccept(Player* player, Creature* /*creature*/, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_A_BAZILLION_MACAROONS)
        {
            player->AddAura(94656, player);

            if (Creature* caster = player->SummonCreature(37748, -8431.653f, 1350.738f, 129.1189f))
            {
                caster->SetSeerGUID(player->GetGUID());
                caster->SetVisible(false);
                caster->CastSpell(caster, 70472, false);
                caster->DespawnOrUnsummon(5000);
            }
        }

        return true;
    }

    bool OnQuestReward(Player* player, Creature* /*creature*/, Quest const* quest, uint32 /*opt*/)
    {
        switch (quest->GetQuestId())
        {
        case QUEST_THE_UNINVITED_GUEST:
            player->RemoveAura(PHASE_QUEST_ZONE_SPECIFIC_3);
            player->CastSpell(player, PHASE_QUEST_ZONE_SPECIFIC_4, false);
            break;
        case QUEST_LIFE_SAVINGS:
            player->RemoveAura(PHASE_QUEST_ZONE_SPECIFIC_6);
            player->CastSpell(player, 91847, false);
            player->SendMovieStart(22);
            break;
        }

        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        switch (creature->GetPhaseMask())
        {
        case 2048:
            player->SEND_GOSSIP_MENU(15808, creature->GetGUID());
            return true;
        case 28672:
            player->PrepareQuestMenu(creature->GetGUID());
            player->SEND_GOSSIP_MENU(17818, creature->GetGUID());
            return true;
        default:
            return false;
        }
    }

    struct npc_trade_prince_gallywixAI : public ScriptedAI
    {
        npc_trade_prince_gallywixAI(Creature* creature) : ScriptedAI(creature)
        {
            if (me->GetPhaseMask() == 1032)
                me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);

            me->setActive(true);
            uiYellTimer = 1000;
        }

        uint32 uiYellTimer;

        void UpdateAI(uint32 diff)
        {
            if (uiYellTimer <= diff)
            {
                uiYellTimer = urand(20000, 40000);

                switch (me->GetPhaseMask())
                {
                case 1:
                    {
                        uint32 roll = urand(0, 7);

                        switch (roll)
                        {
                        case 0:
                        case 1:
                        case 2:
                            {
                                Map::PlayerList const &lPlayers = me->GetMap()->GetPlayers();

                                if (lPlayers.isEmpty())
                                    return;

                                for (Map::PlayerList::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
                                    if (Player* player = itr->getSource())
                                        if (player->GetPhaseMask() == 1)
                                            /*me->DoPersonalScriptText*/DoScriptText(GALLYWIX_RANDOM_YELL_FIRST_PHASE - roll, player);
                            }
                            break;
                        case 3:
                            {
                                Map::PlayerList const &lPlayers = me->GetMap()->GetPlayers();

                                if (lPlayers.isEmpty())
                                    return;

                                for (Map::PlayerList::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
                                    if (Player* player = itr->getSource())
                                        if (player->GetPhaseMask() == 1 && player->GetQuestStatus(QUEST_FOURTH_AND_GOAL) != QUEST_STATUS_COMPLETE)
                                            /*me->DoPersonalScriptText*/DoScriptText(GALLYWIX_RANDOM_YELL_FIRST_PHASE - roll, player);
                            }
                            break;
                        default:
                            DoScriptText(GALLYWIX_RANDOM_YELL_FIRST_PHASE - roll, me);
                            break;
                        }
                    }
                    break;
                case 2048:
                    {
                        uint32 roll = urand(0, 5);
                        DoScriptText(GALLYWIX_RANDOM_YELL_SECOND_PHASE - roll, me);
                    }
                    break;
                case 12288:
                    {
                        uint32 roll = urand(2, 5);
                        DoScriptText(GALLYWIX_RANDOM_YELL_SECOND_PHASE - roll, me);
                    }
                    break;
                }
            }
            else
                uiYellTimer -= diff;

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_goblin_supermodel : public CreatureScript
{
public:
    npc_goblin_supermodel() : CreatureScript("npc_goblin_supermodel") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_goblin_supermodelAI (creature);
    }

    struct npc_goblin_supermodelAI : public ScriptedAI
    {
        npc_goblin_supermodelAI(Creature* creature) : ScriptedAI(creature)
        {
            uiStreamBunnyGUID = 0;
            uiHoseBunnyGUID = 0;
            me->SetReactState(REACT_PASSIVE);
            uiCheckTimer = 2000;
        }

        uint64 uiStreamBunnyGUID;
        uint64 uiHoseBunnyGUID;
        uint32 uiCheckTimer;

        void Reset()
        {
            if (me->GetPhaseMask() > 15)
            {
                me->AddAura(70112, me);
                return;
            }

            uint32 uiTargetEntry = 0;

            switch (me->GetEntry())
            {
            case 37054:
                uiTargetEntry = 37057;
                if (Creature* bunny = Unit::GetCreature(*me, uiHoseBunnyGUID))
                {
                    bunny->SetUInt64Value(UNIT_FIELD_CHANNEL_OBJECT, me->GetGUID());
                    bunny->SetUInt32Value(UNIT_CHANNEL_SPELL, 69821);
                }
                else
                    if (Creature* bunny = me->SummonCreature(24021, -8067.288f, 1503.156f, 10.37352f, 0.0f))
                    {
                        uiHoseBunnyGUID = bunny->GetGUID();
                        bunny->SetUInt64Value(UNIT_FIELD_CHANNEL_OBJECT, me->GetGUID());
                        bunny->SetUInt32Value(UNIT_CHANNEL_SPELL, 69821);
                    }
                    break;
            case 37055:
                uiTargetEntry = 37056;
                if (Creature* bunny = Unit::GetCreature(*me, uiHoseBunnyGUID))
                {
                    bunny->SetUInt64Value(UNIT_FIELD_CHANNEL_OBJECT, me->GetGUID());
                    bunny->SetUInt32Value(UNIT_CHANNEL_SPELL, 69821);
                }
                else
                    if (Creature* bunny = me->SummonCreature(24021, -8067.618f, 1494.582f, 10.49888f, 0.0f))
                    {
                        uiHoseBunnyGUID = bunny->GetGUID();
                        bunny->SetUInt64Value(UNIT_FIELD_CHANNEL_OBJECT, me->GetGUID());
                        bunny->SetUInt32Value(UNIT_CHANNEL_SPELL, 69821);
                    }
                    break;
            case 37056:
                uiTargetEntry = 37055;
                if (Creature* bunny = Unit::GetCreature(*me, uiHoseBunnyGUID))
                {
                    bunny->SetUInt64Value(UNIT_FIELD_CHANNEL_OBJECT, me->GetGUID());
                    bunny->SetUInt32Value(UNIT_CHANNEL_SPELL, 69821);
                }
                else
                    if (Creature* bunny = me->SummonCreature(24021, -8067.885f, 1485.495f, 10.51868f, 0.0f))
                    {
                        uiHoseBunnyGUID = bunny->GetGUID();
                        bunny->SetUInt64Value(UNIT_FIELD_CHANNEL_OBJECT, me->GetGUID());
                        bunny->SetUInt32Value(UNIT_CHANNEL_SPELL, 69821);
                    }
                    break;
            case 37057:
                uiTargetEntry = 37054;
                if (Creature* bunny = Unit::GetCreature(*me, uiHoseBunnyGUID))
                {
                    bunny->SetUInt64Value(UNIT_FIELD_CHANNEL_OBJECT, me->GetGUID());
                    bunny->SetUInt32Value(UNIT_CHANNEL_SPELL, 69821);
                }
                else
                    if (Creature* bunny = me->SummonCreature(24021, -8067.641f, 1494.582f, 10.52287f, 0.0f))
                    {
                        uiHoseBunnyGUID = bunny->GetGUID();
                        bunny->SetUInt64Value(UNIT_FIELD_CHANNEL_OBJECT, me->GetGUID());
                        bunny->SetUInt32Value(UNIT_CHANNEL_SPELL, 69821);
                    }
                    break;
            }

            std::list<Creature*> lTargets;
            me->GetCreatureListWithEntryInGrid(lTargets, uiTargetEntry, 30.0f);

            if (lTargets.empty())
                return;

            for (std::list<Creature*>::const_iterator itr = lTargets.begin(); itr != lTargets.end(); ++itr)
                if ((*itr)->GetPhaseMask() == 15)
                    if (Creature* target = (*itr))
                    {
                        float x, y, z, o;
                        target->GetPosition(x, y, z, o);

                        if (Creature* bunny = Unit::GetCreature(*me, uiStreamBunnyGUID))
                        {
                            bunny->GetMotionMaster()->MoveFollow(target, 0.0f, 0);
                            me->SetUInt64Value(UNIT_FIELD_CHANNEL_OBJECT, bunny->GetGUID());
                            me->SetUInt32Value(UNIT_CHANNEL_SPELL, 69813);
                        }
                        else
                            if (Creature* bunny = me->SummonCreature(37046, x, y, z, o))
                            {
                                uiStreamBunnyGUID = bunny->GetGUID();
                                bunny->GetMotionMaster()->MoveFollow(target, 0.0f, 0.0f);
                                me->SetUInt64Value(UNIT_FIELD_CHANNEL_OBJECT, bunny->GetGUID());
                                me->SetUInt32Value(UNIT_CHANNEL_SPELL, 69813);
                            }
                    }
        }

        void UpdateAI(uint32 diff)
        {
            if (uiCheckTimer <= diff)
            {
                uiCheckTimer = 30000;
                Reset();
            }
            else
                uiCheckTimer -= diff;

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class spell_kaja_kola : public SpellScriptLoader
{
public:
    spell_kaja_kola() : SpellScriptLoader("spell_kaja_kola") { }

    class spell_kaja_kola_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_kaja_kola_SpellScript)

        void RandomIdea(SpellEffIndex /*effIndex*/)
        {
            Player* player = NULL;

            if (Unit* target = GetCaster())
                player = target->ToPlayer();

            if (!player)
                return;

            uint8 roll = urand(0, 57);
            /*player->DoPersonalScriptText*/DoScriptText(KAJA_COLA_RANDOM_IDEA - roll, player);
            player->AddAura(70483, player);
        }

        void Register()
        {
            OnEffectHit += SpellEffectFn(spell_kaja_kola_SpellScript::RandomIdea, EFFECT_0, SPELL_EFFECT_APPLY_AURA);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_kaja_kola_SpellScript();
    }
};

enum eMask
{
    CAN_SAY     = 0x01,
    SAID        = 0x02,
};

struct Psc_t
{
    uint64 uiPlayerGUID;
    uint32 uiEventTimer;
    uint8 uiEventMask;
};

class npc_brute_enforcer : public CreatureScript
{
public:
    npc_brute_enforcer() : CreatureScript("npc_brute_enforcer") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_brute_enforcerAI (creature);
    }

    struct npc_brute_enforcerAI : public ScriptedAI
    {
        npc_brute_enforcerAI(Creature* creature) : ScriptedAI(creature)
        {
            me->setActive(true);
            lPlayers.clear();
            uiBruteGUID = 0;

            if (me->GetPhaseMask() != 15)
                return;

            if (!me->isSummon())
                if (Creature* brute = me->SummonCreature(35304, -8451.56f, 1249.52f, 57.3227f, 4.24208f))
                    uiBruteGUID = brute->GetGUID();
        }

        std::list<Psc_t> lPlayers;
        uint64 uiBruteGUID;

        bool CanSay(uint64 uiPlayerGUID)
        {
            for (std::list<Psc_t>::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
                if (itr->uiPlayerGUID == uiPlayerGUID)
                    return false;

            return true;
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (me->GetPhaseMask() != 15)
                return;

            if (!me->IsWithinDistInMap(who, 10.0f) || !me->HasInArc(2*M_PI/3, who))
                return;

            float z = me->GetPositionZ();

            if (z - who->GetPositionZ() < 0)
                return;

            Player* player = who->ToPlayer();

            if (!player)
                return;

            uint64 uiPlayerGUID = player->GetGUID();

            if (me->isSummon())
            {
                if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                    if (Creature* brute = summoner->ToCreature())
                        if (!CAST_AI(npc_brute_enforcerAI, brute->AI())->CanSay(uiPlayerGUID))
                            return;

                for (std::list<Psc_t>::iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
                    if (itr->uiPlayerGUID == uiPlayerGUID)
                    {
                        if (itr->uiEventMask != CAN_SAY)
                            return;

                        (*itr).uiEventMask = SAID;
                        uint8 roll = urand(0, 3);
                        /*me->DoPersonalScriptText*/DoScriptText(BRUTE_ENFORCER_SECOND_RANDOM_SAY - roll, player);
                    }
            }
            else
            {
                if (!CanSay(uiPlayerGUID))
                    return;

                if (Creature* brute = Unit::GetCreature(*me, uiBruteGUID))
                    if (!CAST_AI(npc_brute_enforcerAI, brute->AI())->CanSay(uiPlayerGUID))
                        return;

                uint8 roll = urand(0, 3);
                /*me->DoPersonalScriptText*/DoScriptText(BRUTE_ENFORCER_FIRST_RANDOM_SAY - roll, player);
                Psc_t new_psc;
                new_psc.uiEventMask = SAID;
                new_psc.uiPlayerGUID = uiPlayerGUID;
                new_psc.uiEventTimer = urand(20000, 40000);
                lPlayers.push_back(new_psc);
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (!lPlayers.empty())
                for (std::list<Psc_t>::iterator itr = lPlayers.begin(); itr != lPlayers.end(); )
                {
                    if ((*itr).uiEventMask == CAN_SAY)
                    {
                        ++itr;
                        continue;
                    }

                    if ((*itr).uiEventTimer <= diff)
                    {
                        if (Creature* brute = Unit::GetCreature(*me, uiBruteGUID))
                        {
                            Psc_t new_psc;
                            new_psc.uiEventMask = CAN_SAY;
                            new_psc.uiPlayerGUID = (*itr).uiPlayerGUID;
                            new_psc.uiEventTimer = urand(20000, 40000);
                            CAST_AI(npc_brute_enforcerAI, brute->AI())->lPlayers.push_back(new_psc);
                        }

                        itr = lPlayers.erase(itr);
                    }
                    else
                    {
                        (*itr).uiEventTimer -= diff;
                        ++itr;
                    }
                }

                if (!UpdateVictim())
                    return;

                DoMeleeAttackIfReady();
        }
    };
};

///////////
// Quest 447 14125
///////////

class go_overloaded_generator : public GameObjectScript
{
public:
    go_overloaded_generator() : GameObjectScript("go_overloaded_generator"){ }

    bool OnGossipHello(Player* player, GameObject* /*go*/)
    {
        std::list<Creature*> lControls;
        player->GetAllMinionsByEntry(lControls, NPC_OVERLOADED_GENERATOR);

        if (!player->HasAura(PHASE_QUEST_ZONE_SPECIFIC_6))
            player->CastSpell(player, PHASE_QUEST_ZONE_SPECIFIC_6, false);

        if (!lControls.empty())
        {
            for (std::list<Creature*>::iterator itr = lControls.begin(); itr != lControls.end();)
            {
                if (Creature* generator = (*itr))
                {
                    player->m_Controlled.erase(generator);
                    itr = lControls.erase(itr);
                    generator->DespawnOrUnsummon();
                }
                else
                    ++itr;
            }
        }

        if (Creature* generator = player->SummonCreature(NPC_OVERLOADED_GENERATOR, -8420.861f, 1372.611f, 105.7554f))
        {
            player->m_Controlled.insert(generator);
            generator->SetSeerGUID(player->GetGUID());
            generator->SetVisible(false);
            generator->CastSpell(generator, SPELL_OVERLOADED_GENERATOR_VISUAL, false);
        }

        return false;
    }
};

class go_stove_leak : public GameObjectScript
{
public:
    go_stove_leak() : GameObjectScript("go_stove_leak"){ }

    bool OnGossipHello(Player* player, GameObject* /*go*/)
    {
        std::list<Creature*> lControls;
        player->GetAllMinionsByEntry(lControls, NPC_STOVE_LEAK);

        if (!player->HasAura(PHASE_QUEST_ZONE_SPECIFIC_6))
            player->CastSpell(player, PHASE_QUEST_ZONE_SPECIFIC_6, false);

        if (!lControls.empty())
        {
            for (std::list<Creature*>::iterator itr = lControls.begin(); itr != lControls.end();)
            {
                if (Creature* leak = (*itr))
                {
                    player->m_Controlled.erase(leak);
                    itr = lControls.erase(itr);
                    leak->DespawnOrUnsummon();
                }
                else
                    ++itr;
            }
        }

        if (Creature* leak = player->SummonCreature(NPC_STOVE_LEAK, -8402.417f, 1371.373f, 105.6856f))
        {
            player->m_Controlled.insert(leak);
            leak->SetSeerGUID(player->GetGUID());
            leak->SetVisible(false);
            leak->CastSpell(leak, SPELL_STOVE_LEAK_VISUAL, false);
        }

        return false;
    }
};

class go_smoldering_bed : public GameObjectScript
{
public:
    go_smoldering_bed() : GameObjectScript("go_smoldering_bed"){ }

    bool OnGossipHello(Player* player, GameObject* /*go*/)
    {
        if (!player->HasAura(PHASE_QUEST_ZONE_SPECIFIC_6))
            player->CastSpell(player, PHASE_QUEST_ZONE_SPECIFIC_6, false);

        player->CastSpell(player, SPELL_SMOLDERING_BED_PRECAST_MASTER, false);
        return false;
    }
};

class spell_smoldering_bed_precast_master : public SpellScriptLoader
{
public:
    spell_smoldering_bed_precast_master() : SpellScriptLoader("spell_smoldering_bed_precast_master") { }

    class spell_smoldering_bed_precast_master_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_smoldering_bed_precast_master_SpellScript)

            void Effect(SpellEffIndex effIndex)
        {
            PreventHitDefaultEffect(effIndex);

            Player* player = NULL;

            if (Unit* caster = GetCaster())
                player = caster->ToPlayer();

            if (!player)
                return;

            std::list<Creature*> lControls;
            player->GetAllMinionsByEntry(lControls, NPC_SMOLDERING_BED);

            if (!lControls.empty())
            {
                for (std::list<Creature*>::iterator itr = lControls.begin(); itr != lControls.end();)
                {
                    if (Creature* bed = (*itr))
                    {
                        player->m_Controlled.erase(bed);
                        itr = lControls.erase(itr);
                        bed->DespawnOrUnsummon();
                    }
                    else
                        ++itr;
                }
            }

            if (Creature* bed = player->SummonCreature(NPC_SMOLDERING_BED, -8402.31f, 1363.601f, 118.27f))
            {
                player->m_Controlled.insert(bed);
                bed->SetSeerGUID(player->GetGUID());
                bed->SetVisible(false);
                bed->CastSpell(bed, SPELL_SMOLDERING_BED_VISUAL, false);
            }
        }

        void Register()
        {
            OnEffectLaunch += SpellEffectFn(spell_smoldering_bed_precast_master_SpellScript::Effect, EFFECT_0, SPELL_EFFECT_TRIGGER_MISSILE);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_smoldering_bed_precast_master_SpellScript();
    }
};

class go_gasbot_control_panel : public GameObjectScript
{
public:
    go_gasbot_control_panel() : GameObjectScript("go_gasbot_control_panel"){ }

    bool OnGossipHello(Player* player, GameObject* /*go*/)
    {
        QuestStatusMap::iterator itr = player->getQuestStatusMap().find(QUEST_447);

        if (itr == player->getQuestStatusMap().end())
            return false;

        QuestStatusData& q_status = itr->second;

        if (q_status.Status == QUEST_STATUS_INCOMPLETE)
            for (int i = 0; i <3; ++i)
                if (q_status.CreatureOrGOCount[i] != 1)
                    return false;

        std::list<Creature*> lControls;
        player->GetAllMinionsByEntry(lControls, NPC_GASBOT);

        if (!lControls.empty())
        {
            for (std::list<Creature*>::iterator itr = lControls.begin(); itr != lControls.end();)
            {
                if (Creature* gasbot = (*itr))
                {
                    player->m_Controlled.erase(gasbot);
                    itr = lControls.erase(itr);
                    gasbot->DespawnOrUnsummon();
                }
                else
                    ++itr;
            }
        }

        if (Creature* gasbot = player->SummonCreature(NPC_GASBOT, -8424.346f, 1328.036f, 102.0427f, 1.570796f))
        {
            player->m_Controlled.insert(gasbot);
            gasbot->SetSeerGUID(player->GetGUID());
            gasbot->SetVisible(false);
            float x, y, z;
            gasbot->GetPosition(x, y, z);

            if (gasbot->GetVehicleKit())
            {
                for (int i = 0; i < 4; ++i)
                    if (Creature* target = gasbot->SummonCreature(37599, x, y, z))
                    {
                        target->SetSeerGUID(player->GetGUID());
                        target->SetVisible(false);
                        target->EnterVehicle(gasbot, i);
                    }
            }

            gasbot->CastSpell(gasbot, 70256, false);
        }

        return true;
    }
};

class npc_gasbot : public CreatureScript
{
public:
    npc_gasbot() : CreatureScript("npc_gasbot") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_gasbotAI (creature);
    }

    struct npc_gasbotAI : public npc_escortAI
    {
        npc_gasbotAI(Creature* creature) : npc_escortAI(creature)
        {
            Go = true;
            Boom = false;
            Say = false;
            uiGoTimer = 1500;
            uiSayTimer = 500;
            me->SetPhaseMask(12288, true);
            SetDespawnAtEnd(false);
            SetDespawnAtFar(false);
        }

        void Reset()
        {
            if (Boom)
                me->AddAura(SPELL_BOOM_INVIS_MODEL, me);
        }

        uint32 uiGoTimer;
        uint32 uiSayTimer;
        bool Say;
        bool Go;
        bool Boom;

        void DespawnPlayerControled(Player* player, uint32 uiControledEntry)
        {
            std::list<Creature*> lControls;
            player->GetAllMinionsByEntry(lControls, uiControledEntry);

            if (!lControls.empty())
            {
                for (std::list<Creature*>::iterator itr = lControls.begin(); itr != lControls.end();)
                {
                    if (Creature* controled = (*itr))
                    {
                        player->m_Controlled.erase(controled);
                        itr = lControls.erase(itr);
                        controled->DespawnOrUnsummon();
                    }
                    else
                        ++itr;
                }
            }
        }

        void WaypointReached(uint32 point)
        {
            if (point == 3)
            {
                Player* player = NULL;

                if (me->isSummon())
                    if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                        player = summoner->ToPlayer();

                if (!player)
                    return;

                DoCast(70259);
                player->CastSpell(player, PHASE_QUEST_ZONE_SPECIFIC_7, false);

                if (Vehicle* vehicle = me->GetVehicleKit())
                    for (int i = 0; i < 4; ++i)
                        if (Unit* passenger = vehicle->GetPassenger(i))
                            if (Creature* target = passenger->ToCreature())
                                target->DespawnOrUnsummon();

                DespawnPlayerControled(player, NPC_OVERLOADED_GENERATOR);
                DespawnPlayerControled(player, NPC_STOVE_LEAK);
                DespawnPlayerControled(player, NPC_SMOLDERING_BED);
                player->m_Controlled.erase(me);
                player->KilledMonsterCredit(NPC_GASBOT, 0);

                me->DespawnOrUnsummon(2000);
                me->AddAura(SPELL_BOOM_INVIS_MODEL, me);
                Boom = true;
                Say = true;
            }
        }

        void UpdateAI(uint32 diff)
        {
            npc_escortAI::UpdateAI(diff);

            if (Say)
            {
                if (uiSayTimer <= diff)
                {
                    Say = false;
                    uiSayTimer = 500;

                    if (me->isSummon())
                        if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                            if (Player* player = summoner->ToPlayer())
                                if (/*Creature* claims_adjuster = */player->FindNearestCreature(37602, 75.0f))
                                    /*claims_adjuster->DoPersonalScriptText*/DoScriptText(CLAIMS_ADJUSTER_YELL_VICTIM, player);
                }
                else
                    uiSayTimer -= diff;
            }

            if (Go)
            {
                if (uiGoTimer <= diff)
                {
                    Go = false;
                    uiGoTimer = 1500;
                    Start(false);
                }
                else
                    uiGoTimer -= diff;
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_hotrod_escort : public CreatureScript
{
public:
    npc_hotrod_escort() : CreatureScript("npc_hotrod_escort") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_hotrod_escortAI(creature);
    }

    struct npc_hotrod_escortAI : public SmoothEscortAI
    {
        npc_hotrod_escortAI(Creature* creature) : SmoothEscortAI(creature)
        {
            Event = false;
            uiEventPhase = 1;
            uiEventTimer = 1000;
            uiCastTimer = 100;
        }

        uint32 uiEventTimer;
        uint32 uiCastTimer;
        uint8 uiEventPhase;
        bool Event;

        void WaypointReached(uint32 point)
        {
            switch (point)
            {
            case 61:
                Event = true;
                if (me->isSummon())
                    if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                        if (Player* player = summoner->ToPlayer())
                            if (Vehicle* vehicle = me->GetVehicleKit())
                                if (Unit* passenger = vehicle->GetPassenger(0))
                                    if (/*Creature* sassy = */passenger->ToCreature())
                                        /*sassy->DoPersonalScriptText*/DoScriptText(SASSY_SAY_GO_AROUND, player);
                break;
            case 125:
                me->CastSpell(me, SPELL_HOT_ROD_SKID, false);
                break;
            case 126:
                uiEventTimer = 3500;
                uiEventPhase = 2;
                Event = true;
                if (Vehicle* vehicle = me->GetVehicleKit())
                {
                    if (Unit* passenger = vehicle->GetPassenger(1))
                        passenger->ExitVehicle();

                    if (me->isSummon())
                        if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                            if (Player* player = summoner->ToPlayer())
                            {
                                if (/*Unit* passenger = */vehicle->GetPassenger(0))
                                    /*passenger->DoPersonalScriptText*/DoScriptText(SASSY_SAY_OH_NO, player);

                                player->CompleteQuest(QUEST_LIFE_SAVINGS);
                                player->SaveToDB();

                                switch (player->getGender())
                                {
                                case GENDER_MALE:
                                    if (Creature* candy_cane = me->FindNearestCreature(NPC_CANDY_CANE, 30.0f))
                                    {
                                        Psc_ls new_psc;
                                        new_psc.uiPersonalTimer = 1000;
                                        new_psc.uiPlayerGUID = player->GetGUID();
                                        CAST_AI(npc_candy_cane::npc_candy_caneAI, candy_cane->AI())->lPlayers.push_back(new_psc);
                                    }
                                    break;
                                case GENDER_FEMALE:
                                    if (Creature* chip_endale = me->FindNearestCreature(NPC_CHIP_ENDALE, 30.0f))
                                    {
                                        Psc_ls new_psc;
                                        new_psc.uiPersonalTimer = 1000;
                                        new_psc.uiPlayerGUID = player->GetGUID();
                                        CAST_AI(npc_chip_endale::npc_chip_endaleAI, chip_endale->AI())->lPlayers.push_back(new_psc);
                                    }
                                    break;
                                }
                            }
                }
                break;
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (uiCastTimer <= diff)
            {
                uiCastTimer = 2000;
                DoCast(me, SPELL_LS_HOT_ROD_KNOCKBACK);
            }
            else
                uiCastTimer -= diff;

            if (Event)
            {
                if (uiEventTimer <= diff)
                {
                    Event = false;
                    uiEventTimer = 1000;

                    if (uiEventPhase == 1)
                    {
                        if (me->isSummon())
                        {
                            if (Unit* summoner = me->ToTempSummon()->GetSummoner())
                                if (Player* player = summoner->ToPlayer())
                                    if (Vehicle* vehicle = me->GetVehicleKit())
                                        if (Unit* passenger = vehicle->GetPassenger(0))
                                            if (/*Creature* sassy = */passenger->ToCreature())
                                                /*sassy->DoPersonalScriptText*/DoScriptText(SASSY_YELL_OUT_OF_THE_WAY, player);
                        }
                    }
                    else
                    {
                        if (Vehicle* vehicle = me->GetVehicleKit())
                            if (Unit* passenger = vehicle->GetPassenger(0))
                                if (Creature* sassy = passenger->ToCreature())
                                    sassy->DespawnOrUnsummon();

                        me->DespawnOrUnsummon();
                    }
                }
                else
                    uiEventTimer -= diff;
            }

            SmoothEscortAI::UpdateAI(diff);
        }
    };
};

class npc_villa_mook_ls : public CreatureScript
{
public:
    npc_villa_mook_ls() : CreatureScript("npc_villa_mook_ls") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_villa_mook_lsAI (creature);
    }

    struct npc_villa_mook_lsAI : public ScriptedAI
    {
        npc_villa_mook_lsAI(Creature* creature) : ScriptedAI(creature)
        {
            uiKnockbackTimer = 5000;
            uiKnockbackData = DATA_KNOCKBACK_NONE;
        }

        uint32 uiKnockbackTimer;
        uint32 uiKnockbackData;

        uint32 GetData(uint32 data)
        {
            if (data == DATA_KNOCKBACK)
                return uiKnockbackData;

            return 0;
        }

        void MoveKnockback(Creature* hotrod)
        {
            if (hotrod->GetEntry() == NPC_HOT_ROD_LS)
            {
                uiKnockbackData = DATA_KNOCKBACK_KNOCKBACK;
                //uint8 s_roll = urand(0, 13);
                uint8 e_roll = urand(0, 6);
                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, RollingEmoteState[e_roll]);
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (uiKnockbackData == DATA_KNOCKBACK_KNOCKBACK)
            {
                if (uiKnockbackTimer <= diff)
                {
                    uiKnockbackTimer = 5000;
                    uiKnockbackData = DATA_KNOCKBACK_NONE;
                    me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_NONE);
                    me->GetMotionMaster()->MoveTargetedHome();
                }
                else
                    uiKnockbackTimer -= diff;
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

class spell_ls_hot_rod_knockback : public SpellScriptLoader
{
public:
    spell_ls_hot_rod_knockback() : SpellScriptLoader("spell_ls_hot_rod_knockback") { }

    class spell_ls_hot_rod_knockback_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_ls_hot_rod_knockback_SpellScript)

            void Knockback(SpellEffIndex effIndex)
        {
            PreventHitDefaultEffect(effIndex);

            Creature* creature = NULL;
            Creature* hotrod = NULL;

            if (Unit* target = GetHitUnit())
                creature = target->ToCreature();

            if (Unit* caster = GetCaster())
                hotrod = caster->ToCreature();

            if (!(creature && hotrod))
                return;

            if (creature->AI()->GetData(DATA_KNOCKBACK) != DATA_KNOCKBACK_NONE)
                return;

            if (creature->IsNonMeleeSpellCasted(true))
                creature->InterruptNonMeleeSpells(true);

            float x, y;
            hotrod->GetPosition(x, y);

            switch (creature->GetEntry())
            {
            case 49218:
                creature->KnockbackFrom(x, y, 7.0f, 10.0f);
                CAST_AI(npc_villa_mook_ls::npc_villa_mook_lsAI, creature->AI())->MoveKnockback(hotrod);
                break;
            default:
                creature->KnockbackFrom(x, y, 15.0f, 10.0f);
                CAST_AI(npc_kezan_citizen::npc_kezan_citizenAI, creature->AI())->MoveKnockback(hotrod);
                break;
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_ls_hot_rod_knockback_SpellScript::Knockback, EFFECT_0, SPELL_EFFECT_KNOCK_BACK);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_ls_hot_rod_knockback_SpellScript();
    }
};

class go_ls_rope_ladder : public GameObjectScript
{
public:
    go_ls_rope_ladder() : GameObjectScript("go_ls_rope_ladder"){ }

    bool OnGossipHello(Player* player, GameObject* /*go*/)
    {
        player->TeleportTo(648, -7864.02f, 1831.4f, -0.956502f, 6.12391f);
        player->GetMotionMaster()->MoveJump(-7861.84f, 1831.27f, 8.53755f, 5.0f, 15.0f);
        return true;
    }
};

class go_yacht_boarding_mortar : public GameObjectScript
{
public:
    go_yacht_boarding_mortar() : GameObjectScript("go_yacht_boarding_mortar"){ }

    bool OnGossipHello(Player* player, GameObject* /*go*/)
    {
        player->TeleportTo(648, -7879.2f, 1828.67f, 5.55337f, 0.251894f);
        player->CastSpell(player, 92633, false);
        return true;
    }
};

class item_keys_to_the_hot_rod : public ItemScript
{
public:
    item_keys_to_the_hot_rod() : ItemScript("item_keys_to_the_hot_rod") { }

    bool OnUse(Player* player, Item* /*item*/, SpellCastTargets const& /*targets*/)
    {
        player->CastSpell(player, 66393, false);

        return true;
    }
};

    //class MovieScript : public PlayerScript
    //{
    //    enum
    //    {
    //        SPELL_LIFE_SAVINGS_TELEPORT     = 74100,
    //        MOVIE_KEZAN_ESCAPE              = 22
    //    };

    //public:
    //    MovieScript() : PlayerScript("MovieScript") { }

    //    virtual void OnMovieEnd(Player* player, uint32 movieID)
    //    {
    //        if (movieID == MOVIE_KEZAN_ESCAPE)
    //        {
    //            player->CastSpell(player, SPELL_LIFE_SAVINGS_TELEPORT, true);
    //        }
    //    }
    //};

void AddSC_kezan()
{
    new npc_sister_goldskimmer();
    new npc_maxx_avalanche();
    new npc_fizz_lighter();
    new npc_evol_fingers();
    new npc_bamm_megabomb();
    new npc_slinky_sharpshiv();
    new npc_warrior_matic_nx_01();
    new npc_sassy_sardwrench();
    new npc_foreman_dampwick();
    new npc_defiant_troll();
    new spell_goblin_all_in_1_der_belt_shocker();
    new npc_megs_dreadshredder();
    new npc_hot_rod();
    new npc_homies_follower();
    new npc_kezan_citizen();
    new npc_coach_crosscheck();
    new npc_steamwheedle_shark();
    new npc_bilgewater_buccaneer();
    new npc_bilgewater_buccaneer_goal();
    new npc_fourth_and_goal_target();
    new npc_deathwing_qfag();
    new npc_bruno_flameretardant();
    new npc_frankie_gearslipper();
    new npc_jack_the_hammer();
    new npc_sudsy_magee();
    new npc_chip_endale();
    new npc_candy_cane();
    new npc_fbok_bank_teller();
    new npc_szabo();
    new npc_missa_spekkies();
    new npc_gappy_silvertooth();
    new npc_kezan_partygoer();
    new npc_first_bank_of_kezan_vault();
    new npc_hired_looter();
    //new npc_villa_mook();
    new npc_pirate_party_crasher();
    new npc_ktc_waiter();
    new npc_kezan_socialite();
    new npc_hobart_grapplehammer();
    new npc_assistant_greely();
    new npc_kaja_cola_balloon();
    new npc_vinny_slapchop();
    new npc_general_purpose_bunny();
    new npc_trade_prince_gallywix();
    new npc_goblin_supermodel();
    new npc_brute_enforcer();
    new npc_gasbot();
    new npc_hotrod_escort();
    new npc_villa_mook_ls();

    new go_first_bank_of_kezan_vault();
    new go_kajamite_deposit();
    new go_overloaded_generator();
    new go_stove_leak();
    new go_smoldering_bed();
    new go_gasbot_control_panel();
    new go_ls_rope_ladder();
    new go_yacht_boarding_mortar();

    new spell_keys_to_the_hot_rod();
    new spell_summon_hot_rod();
    new spell_punch_it_boost();
    new spell_hot_rod_honk_horn();
    new spell_hot_rod_knockback();
    new spell_permanent_feign_death();
    new spell_kaja_kola();
    new spell_smoldering_bed_precast_master();
    new spell_ls_hot_rod_knockback();
    new spell_kick_footbomb();

    new item_keys_to_the_hot_rod();
}
