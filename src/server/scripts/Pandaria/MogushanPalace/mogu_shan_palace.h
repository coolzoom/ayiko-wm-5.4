/*
 *    Dungeon : Mogushan Palace 88-90
 *    Instance General Script
 */

#ifndef MOGUSHAN_PALACE_H_
#define MOGUSHAN_PALACE_H_

#include "SpellScript.h"
#include "Map.h"
#include "Creature.h"
#include "CreatureAIImpl.h"

enum eData
{
    DATA_TRIAL_OF_THE_KING      = 0,
    DATA_GEKKAN                 = 1,
    DATA_XIN_THE_WEAPONMASTER   = 2,

    MAX_ENCOUNTER               = 3,

    MAX_GUIDS = 4,
};

enum eSpells
{
    //Kuai the brute
    SPELL_COMBAT_SOUND_LOOP         = 126252,
    SPELL_SHOCKWAVE                 = 119922,
    SPELL_PICK_SHOCKWAVE_TARGET     = 120499,
    SPELL_GUARDIAN_TAUNT            = 85667,

    //Ming the cunning
    SPELL_LIGHTNING_BOLT            = 123654,
    SPELL_WHIRLING_DERVISH          = 119981,
    SPELL_MAGNETIC_FIELD_10         = 120102,
    SPELL_MAGNETIC_FIELD_20         = 120118,
    SPELL_MAGNETIC_FIELD_40         = 120119,
    SPELL_MAGNETIC_FIELD_AURA       = 120100,
    SPELL_MAGNETIC_FIELD_SCRIPT     = 120099,
    SPELL_MAGNETIC_PULL             = 120111,

    //Haiyan the unstoppable
    SPELL_TRAUMATIC_BLOW            = 123655,
    SPELL_CONFLAGRATE_AURA          = 120160,
    SPELL_CONFLAGRATE               = 120167,
    SPELL_CONFLAGRATE_SPREAD        = 120165,
    SPELL_METEOR                    = 120195,
    SPELL_METEOR_TARGETING          = 120194,

    //Xin trigger
    SPELL_PING_AURA                 = 120915,
    SPELL_PING                      = 120510,
    SPELL_MOGU_JUMP                 = 120444,

    //Xin the weaponmaster
    SPELL_WHIRLWIND                 = 119373,
    SPELL_PERMANENT_FEIGN_DEATH     = 130966,

    //Gurthan scrapper, harthak adept and kargesh grunt
    SPELL_GRUNT_AURA                = 121746,
    SPELL_SET_SPAWN_LOCATION        = 120385,
    SPELL_REPLACE_STAND_CHEER       = 120862,
    SPELL_REPLACE_STAND_RUDE        = 120863,
    SPELL_REPLACE_STAND_SHOUT       = 120864,
    SPELL_REPLACE_STAND_LAUGH       = 120866,
    SPELL_REPLACE_STAND_APPLAUD     = 120867,
    SPELL_REPLACE_STAND_NO          = 121568,
    SPELL_REPLACE_STAND_CRY         = 121569,
    SPELL_REPLACE_STAND_READY1H     = 121571,
    SPELL_SCALE_95_100              = 123167,
    SPELL_SCALE_115_120             = 123168,
    SPELL_SCALE_105_110             = 123169,
    SPELL_GRUNT_KNOCK               = 121724,
    SPELL_GRUNT_KNOCK_2             = 121660,

    //Whirling dervish trigger
    SPELL_WHIRLING_DERVISH_AURA     = 119982,
    SPELL_WHIRLING_DERVISH_TARGETS  = 119994,
    SPELL_THROW                     = 120087,
    SPELL_THROW_2                   = 120035,

    //Glintrok
    SPELL_GLINTROK_ANIM_REPLACE     = 118967,
    SPELL_GLINTROK_SCOUT_CALL       = 119076,
    SPELL_IRON_PROTECTOR            = 118958,

    //Cave bats
    SPELL_GIANT_CAVE_BAT_COSMETIC   = 119319,

};

enum eCreatures
{
    //Boss
    CREATURE_KUAI_THE_BRUTE                 = 61442,
    CREATURE_MING_THE_CUNNING               = 61444,
    CREATURE_HAIYAN_THE_UNSTOPPABLE         = 61445,
    CREATURE_XIN_THE_WEAPONMASTER_TRIGGER   = 61884,
    CREATURE_XIN_THE_WEAPONMASTER           = 61398,

    //Trash
    CREATURE_GURTHAN_SCRAPPER               = 61447,
    CREATURE_GURTHAN_SCRAPPER_2             = 61549,
    CREATURE_HARTHAK_ADEPT                  = 61449,
    CREATURE_HARTHAK_ADEPT_2                = 61550,
    CREATURE_KARGESH_GRUNT                  = 61450,
    CREATURE_KARGESH_GRUNT_2                = 61551,
    CREATURE_GLINTROK_SCOUT                 = 64243,
    CREATURE_CAVE_BAT                       = 61415,

    //Trigger
    CREATURE_WHIRLING_DERVISH               = 61626,
    CREATURE_BEACON                         = 64250,

    CREATURE_GEKKAN                         = 61243,
    CREATURE_GLINTROK_IRONHIDE              = 61337,
    CREATURE_GLINTROK_SKULKER               = 61338,
    CREATURE_GLINTROK_ORACLE                = 61339,
    CREATURE_GLINTROK_HEXXER                = 61340,

    //XIN THE WEAPONMASTER
    CREATURE_ANIMATED_STAFF                 = 61433,
    CREATURE_ANIMATED_AXE                   = 61451,
    CREATURE_CROSSBOW                       = 61679
};

enum eTypes
{
    TYPE_MING,
    TYPE_KUAI,
    TYPE_HAIYAN,
    TYPE_TRIAL_ENDED,

    TYPE_MING_RETIRED,
    TYPE_KUAI_RETIRED,
    TYPE_HAIYAN_RETIRED,

    TYPE_WIPE_FIRST_BOSS,
    TYPE_TRIAL_CHEST,

    TYPE_ACTIVATE_ANIMATED_STAFF,
    TYPE_ACTIVATE_ANIMATED_AXE,

    TYPE_SHUFFLE_ORDER,
};

enum eGameObjects
{
    GO_DOOR_BEFORE_TRIAL    = 213594,
    GO_TRIAL_CHEST          = 214520,
    GO_DOOR_AFTER_TRIAL     = 213593,
    GO_DOOR_BEFORE_KING     = 213596,
    GO_ANCIENT_MOGU_TREASURE= 214795,
    GO_GEKKAN_TREASURE_DOOR = 214654,

};

static const Position pTrialIntroPositions[] =
{
    { -4251.8f, -2613.6f, 17.49f, 0.0f },
    { -4216.0f, -2590.4f, 17.50f, 0.0f },
    { -4215.8f, -2636.8f, 17.50f, 0.0f },
};

#endif // MOGUSHAN_PALACE_H_
