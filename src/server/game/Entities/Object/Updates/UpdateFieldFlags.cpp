<<<<<<< HEAD
/*
 * Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

=======
>>>>>>> Multiple changes:
#include "UpdateFieldFlags.h"

// Auto generated for version 17359

// > Object
uint32 const ObjectUpdateFieldFlags[OBJECT_END] =
{
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_TYPE
    UF_FLAG_VIEWER_DEPENDENT,                               // OBJECT_FIELD_ENTRY_ID
    UF_FLAG_VIEWER_DEPENDENT | UF_FLAG_DYNAMIC,             // OBJECT_FIELD_DYNAMIC_FLAGS
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_SCALE
};

// > Object > Item
uint32 const ItemUpdateFieldFlags[ITEM_END] =
{
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_TYPE
    UF_FLAG_VIEWER_DEPENDENT,                               // OBJECT_FIELD_ENTRY_ID
    UF_FLAG_VIEWER_DEPENDENT | UF_FLAG_DYNAMIC,             // OBJECT_FIELD_DYNAMIC_FLAGS
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_SCALE
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_OWNER
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_OWNER
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_CONTAINED_IN
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_CONTAINED_IN
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_CREATOR
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_CREATOR
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_GIFT_CREATOR
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_GIFT_CREATOR
    UF_FLAG_OWNER,                                          // ITEM_FIELD_STACK_COUNT
    UF_FLAG_OWNER,                                          // ITEM_FIELD_EXPIRATION
    UF_FLAG_OWNER,                                          // ITEM_FIELD_SPELL_CHARGES
    UF_FLAG_OWNER,                                          // ITEM_FIELD_SPELL_CHARGES
    UF_FLAG_OWNER,                                          // ITEM_FIELD_SPELL_CHARGES
    UF_FLAG_OWNER,                                          // ITEM_FIELD_SPELL_CHARGES
    UF_FLAG_OWNER,                                          // ITEM_FIELD_SPELL_CHARGES
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_DYNAMIC_FLAGS
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_PROPERTY_SEED
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_RANDOM_PROPERTIES_ID
    UF_FLAG_OWNER,                                          // ITEM_FIELD_DURABILITY
    UF_FLAG_OWNER,                                          // ITEM_FIELD_MAX_DURABILITY
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_CREATE_PLAYED_TIME
    UF_FLAG_OWNER,                                          // ITEM_FIELD_MODIFIERS_MASK
};

// > Object > Item > Container
uint32 const ContainerUpdateFieldFlags[CONTAINER_END] =
{
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_TYPE
    UF_FLAG_VIEWER_DEPENDENT,                               // OBJECT_FIELD_ENTRY_ID
    UF_FLAG_VIEWER_DEPENDENT | UF_FLAG_DYNAMIC,             // OBJECT_FIELD_DYNAMIC_FLAGS
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_SCALE
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_OWNER
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_OWNER
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_CONTAINED_IN
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_CONTAINED_IN
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_CREATOR
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_CREATOR
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_GIFT_CREATOR
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_GIFT_CREATOR
    UF_FLAG_OWNER,                                          // ITEM_FIELD_STACK_COUNT
    UF_FLAG_OWNER,                                          // ITEM_FIELD_EXPIRATION
    UF_FLAG_OWNER,                                          // ITEM_FIELD_SPELL_CHARGES
    UF_FLAG_OWNER,                                          // ITEM_FIELD_SPELL_CHARGES
    UF_FLAG_OWNER,                                          // ITEM_FIELD_SPELL_CHARGES
    UF_FLAG_OWNER,                                          // ITEM_FIELD_SPELL_CHARGES
    UF_FLAG_OWNER,                                          // ITEM_FIELD_SPELL_CHARGES
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_DYNAMIC_FLAGS
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_ENCHANTMENT
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_PROPERTY_SEED
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_RANDOM_PROPERTIES_ID
    UF_FLAG_OWNER,                                          // ITEM_FIELD_DURABILITY
    UF_FLAG_OWNER,                                          // ITEM_FIELD_MAX_DURABILITY
    UF_FLAG_PUBLIC,                                         // ITEM_FIELD_CREATE_PLAYED_TIME
    UF_FLAG_OWNER,                                          // ITEM_FIELD_MODIFIERS_MASK
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_SLOTS
    UF_FLAG_PUBLIC,                                         // CONTAINER_FIELD_NUM_SLOTS
};

// > Object > Unit
uint32 const UnitUpdateFieldFlags[UNIT_END] =
{
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_TYPE
    UF_FLAG_PUBLIC | UF_FLAG_VIEWER_DEPENDENT,              // OBJECT_FIELD_ENTRY_ID
    UF_FLAG_VIEWER_DEPENDENT | UF_FLAG_DYNAMIC,             // OBJECT_FIELD_DYNAMIC_FLAGS
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_SCALE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_CHARM
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_CHARM
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_SUMMON
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_SUMMON
    UF_FLAG_PRIVATE,                                        // UNIT_FIELD_CRITTER
    UF_FLAG_PRIVATE,                                        // UNIT_FIELD_CRITTER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_CHARMED_BY
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_CHARMED_BY
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_SUMMONED_BY
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_SUMMONED_BY
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_CREATED_BY
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_CREATED_BY
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_DEMON_CREATOR
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_DEMON_CREATOR
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_TARGET
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_TARGET
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_BATTLE_PET_COMPANION_GUID
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_BATTLE_PET_COMPANION_GUID
    UF_FLAG_PUBLIC | UF_FLAG_DYNAMIC,                       // UNIT_FIELD_CHANNEL_OBJECT
    UF_FLAG_PUBLIC | UF_FLAG_DYNAMIC,                       // UNIT_FIELD_CHANNEL_OBJECT
    UF_FLAG_PUBLIC | UF_FLAG_DYNAMIC,                       // UNIT_FIELD_CHANNEL_SPELL
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_SUMMONED_BY_HOME_REALM
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_SEX
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_DISPLAY_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_OVERRIDE_DISPLAY_POWER_ID
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_HEALTH
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MAX_HEALTH
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MAX_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MAX_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MAX_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MAX_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MAX_POWER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_INTERRUPTED_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_INTERRUPTED_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_INTERRUPTED_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_INTERRUPTED_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_INTERRUPTED_FLAT_MODIFIER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_LEVEL
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_EFFECTIVE_LEVEL
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_FACTION_TEMPLATE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_VIRTUAL_ITEM_ID
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_VIRTUAL_ITEM_ID
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_VIRTUAL_ITEM_ID
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_FLAGS
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_FLAGS2
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_AURA_STATE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_ATTACK_ROUND_BASE_TIME
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_ATTACK_ROUND_BASE_TIME
    UF_FLAG_PRIVATE,                                        // UNIT_FIELD_RANGED_ATTACK_ROUND_BASE_TIME
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_BOUNDING_RADIUS
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_COMBAT_REACH
    UF_FLAG_VIEWER_DEPENDENT | UF_FLAG_DYNAMIC,             // UNIT_FIELD_DISPLAY_ID
    UF_FLAG_PUBLIC | UF_FLAG_DYNAMIC,                       // UNIT_FIELD_NATIVE_DISPLAY_ID
    UF_FLAG_PUBLIC | UF_FLAG_DYNAMIC,                       // UNIT_FIELD_MOUNT_DISPLAY_ID
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_MIN_DAMAGE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_MAX_DAMAGE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_MIN_OFF_HAND_DAMAGE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_MAX_OFF_HAND_DAMAGE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_ANIM_TIER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_PET_NUMBER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_PET_NAME_TIMESTAMP
    UF_FLAG_OWNER,                                          // UNIT_FIELD_PET_EXPERIENCE
    UF_FLAG_OWNER,                                          // UNIT_FIELD_PET_NEXT_LEVEL_EXPERIENCE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MOD_CASTING_SPEED
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MOD_SPELL_HASTE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MOD_HASTE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MOD_RANGED_HASTE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MOD_HASTE_REGEN
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_CREATED_BY_SPELL
    UF_FLAG_PUBLIC | UF_FLAG_VIEWER_DEPENDENT,              // UNIT_FIELD_NPC_FLAGS
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_NPC_FLAGS
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_EMOTE_STATE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STATS
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STATS
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STATS
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STATS
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STATS
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_POS_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_POS_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_POS_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_POS_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_POS_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_NEG_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_NEG_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_NEG_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_NEG_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_NEG_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_RESISTANCES
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_RESISTANCES
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_RESISTANCES
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_RESISTANCES
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_RESISTANCES
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_RESISTANCES
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_RESISTANCES
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_POSITIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_POSITIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_POSITIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_POSITIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_POSITIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_POSITIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_POSITIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_NEGATIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_NEGATIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_NEGATIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_NEGATIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_NEGATIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_NEGATIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_NEGATIVE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_BASE_MANA
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_BASE_HEALTH
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_SHAPESHIFT_FORM
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_ATTACK_POWER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_ATTACK_POWER_MOD_POS
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_ATTACK_POWER_MOD_NEG
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_ATTACK_POWER_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RANGED_ATTACK_POWER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RANGED_ATTACK_POWER_MOD_POS
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RANGED_ATTACK_POWER_MOD_NEG
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RANGED_ATTACK_POWER_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_MIN_RANGED_DAMAGE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_MAX_RANGED_DAMAGE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_MAX_HEALTH_MODIFIER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_HOVER_HEIGHT
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MIN_ITEM_LEVEL
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MAX_ITEM_LEVEL
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_WILD_BATTLE_PET_LEVEL
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_BATTLE_PET_COMPANION_NAME_TIMESTAMP
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_INTERACT_SPELL_ID
};

// > Object > Unit > Player
uint32 const PlayerUpdateFieldFlags[PLAYER_END] =
{
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_TYPE
    UF_FLAG_PUBLIC | UF_FLAG_VIEWER_DEPENDENT,              // OBJECT_FIELD_ENTRY_ID
    UF_FLAG_VIEWER_DEPENDENT | UF_FLAG_DYNAMIC,             // OBJECT_FIELD_DYNAMIC_FLAGS
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_SCALE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_CHARM
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_CHARM
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_SUMMON
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_SUMMON
    UF_FLAG_PRIVATE,                                        // UNIT_FIELD_CRITTER
    UF_FLAG_PRIVATE,                                        // UNIT_FIELD_CRITTER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_CHARMED_BY
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_CHARMED_BY
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_SUMMONED_BY
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_SUMMONED_BY
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_CREATED_BY
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_CREATED_BY
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_DEMON_CREATOR
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_DEMON_CREATOR
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_TARGET
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_TARGET
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_BATTLE_PET_COMPANION_GUID
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_BATTLE_PET_COMPANION_GUID
    UF_FLAG_PUBLIC | UF_FLAG_DYNAMIC,                       // UNIT_FIELD_CHANNEL_OBJECT
    UF_FLAG_PUBLIC | UF_FLAG_DYNAMIC,                       // UNIT_FIELD_CHANNEL_OBJECT
    UF_FLAG_PUBLIC | UF_FLAG_DYNAMIC,                       // UNIT_FIELD_CHANNEL_SPELL
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_SUMMONED_BY_HOME_REALM
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_SEX
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_DISPLAY_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_OVERRIDE_DISPLAY_POWER_ID
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_HEALTH
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MAX_HEALTH
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MAX_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MAX_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MAX_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MAX_POWER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MAX_POWER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_INTERRUPTED_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_INTERRUPTED_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_INTERRUPTED_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_INTERRUPTED_FLAT_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_ALL_UNITS,    // UNIT_FIELD_POWER_REGEN_INTERRUPTED_FLAT_MODIFIER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_LEVEL
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_EFFECTIVE_LEVEL
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_FACTION_TEMPLATE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_VIRTUAL_ITEM_ID
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_VIRTUAL_ITEM_ID
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_VIRTUAL_ITEM_ID
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_FLAGS
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_FLAGS2
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_AURA_STATE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_ATTACK_ROUND_BASE_TIME
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_ATTACK_ROUND_BASE_TIME
    UF_FLAG_PRIVATE,                                        // UNIT_FIELD_RANGED_ATTACK_ROUND_BASE_TIME
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_BOUNDING_RADIUS
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_COMBAT_REACH
    UF_FLAG_VIEWER_DEPENDENT | UF_FLAG_DYNAMIC,             // UNIT_FIELD_DISPLAY_ID
    UF_FLAG_PUBLIC | UF_FLAG_DYNAMIC,                       // UNIT_FIELD_NATIVE_DISPLAY_ID
    UF_FLAG_PUBLIC | UF_FLAG_DYNAMIC,                       // UNIT_FIELD_MOUNT_DISPLAY_ID
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_MIN_DAMAGE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_MAX_DAMAGE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_MIN_OFF_HAND_DAMAGE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_MAX_OFF_HAND_DAMAGE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_ANIM_TIER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_PET_NUMBER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_PET_NAME_TIMESTAMP
    UF_FLAG_OWNER,                                          // UNIT_FIELD_PET_EXPERIENCE
    UF_FLAG_OWNER,                                          // UNIT_FIELD_PET_NEXT_LEVEL_EXPERIENCE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MOD_CASTING_SPEED
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MOD_SPELL_HASTE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MOD_HASTE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MOD_RANGED_HASTE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MOD_HASTE_REGEN
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_CREATED_BY_SPELL
    UF_FLAG_PUBLIC | UF_FLAG_VIEWER_DEPENDENT,              // UNIT_FIELD_NPC_FLAGS
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_NPC_FLAGS
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_EMOTE_STATE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STATS
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STATS
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STATS
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STATS
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STATS
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_POS_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_POS_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_POS_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_POS_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_POS_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_NEG_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_NEG_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_NEG_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_NEG_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_STAT_NEG_BUFF
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_RESISTANCES
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_RESISTANCES
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_RESISTANCES
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_RESISTANCES
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_RESISTANCES
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_RESISTANCES
    UF_FLAG_PRIVATE | UF_FLAG_OWNER | UF_FLAG_EMPATH,       // UNIT_FIELD_RESISTANCES
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_POSITIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_POSITIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_POSITIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_POSITIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_POSITIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_POSITIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_POSITIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_NEGATIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_NEGATIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_NEGATIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_NEGATIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_NEGATIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_NEGATIVE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RESISTANCE_BUFF_MODS_NEGATIVE
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_BASE_MANA
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_BASE_HEALTH
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_SHAPESHIFT_FORM
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_ATTACK_POWER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_ATTACK_POWER_MOD_POS
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_ATTACK_POWER_MOD_NEG
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_ATTACK_POWER_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RANGED_ATTACK_POWER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RANGED_ATTACK_POWER_MOD_POS
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RANGED_ATTACK_POWER_MOD_NEG
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_RANGED_ATTACK_POWER_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_MIN_RANGED_DAMAGE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_MAX_RANGED_DAMAGE
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MODIFIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_POWER_COST_MULTIPLIER
    UF_FLAG_PRIVATE | UF_FLAG_OWNER,                        // UNIT_FIELD_MAX_HEALTH_MODIFIER
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_HOVER_HEIGHT
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MIN_ITEM_LEVEL
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_MAX_ITEM_LEVEL
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_WILD_BATTLE_PET_LEVEL
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_BATTLE_PET_COMPANION_NAME_TIMESTAMP
    UF_FLAG_PUBLIC,                                         // UNIT_FIELD_INTERACT_SPELL_ID
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_DUEL_ARBITER
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_DUEL_ARBITER
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_PLAYER_FLAGS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_GUILD_RANK_ID
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_GUILD_DELETE_DATE
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_GUILD_LEVEL
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_HAIR_COLOR_ID
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_REST_STATE
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_ARENA_FACTION
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_DUEL_TEAM
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_GUILD_TIME_STAMP
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PARTY_MEMBER,                                   // PLAYER_FIELD_QUEST_LOG
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VISIBLE_ITEMS
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_PLAYER_TITLE
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_FAKE_INEBRIATION
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_VIRTUAL_PLAYER_REALM
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_CURRENT_SPEC_ID
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_TAXI_MOUNT_ANIM_KIT_ID
    UF_FLAG_PUBLIC,                                         // PLAYER_FIELD_CURRENT_BATTLE_PET_BREED_QUALITY
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_INV_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_FARSIGHT_OBJECT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_FARSIGHT_OBJECT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_KNOWN_TITLES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_KNOWN_TITLES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_KNOWN_TITLES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_KNOWN_TITLES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_KNOWN_TITLES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_KNOWN_TITLES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_KNOWN_TITLES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_KNOWN_TITLES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_KNOWN_TITLES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_KNOWN_TITLES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COINAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COINAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_XP
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_NEXT_LEVEL_XP
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SKILL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_CHARACTER_POINTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MAX_TALENT_TIERS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_TRACK_CREATURE_MASK
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_TRACK_RESOURCE_MASK
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MAINHAND_EXPERTISE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_OFFHAND_EXPERTISE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_RANGED_EXPERTISE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATING_EXPERTISE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BLOCK_PERCENTAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_DODGE_PERCENTAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PARRY_PERCENTAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_CRIT_PERCENTAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_RANGED_CRIT_PERCENTAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_OFFHAND_CRIT_PERCENTAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SPELL_CRIT_PERCENTAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SPELL_CRIT_PERCENTAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SPELL_CRIT_PERCENTAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SPELL_CRIT_PERCENTAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SPELL_CRIT_PERCENTAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SPELL_CRIT_PERCENTAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SPELL_CRIT_PERCENTAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SHIELD_BLOCK
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SHIELD_BLOCK_CRIT_PERCENTAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MASTERY
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_POWER_DAMAGE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_POWER_HEALING
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_EXPLORED_ZONES
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_REST_STATE_BONUS_POOL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_POS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_POS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_POS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_POS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_POS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_POS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_POS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_NEG
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_NEG
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_NEG
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_NEG
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_NEG
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_NEG
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_NEG
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_PERCENT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_PERCENT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_PERCENT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_PERCENT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_PERCENT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_PERCENT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_DAMAGE_DONE_PERCENT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_HEALING_DONE_POS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_HEALING_PERCENT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_HEALING_DONE_PERCENT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_PERIODIC_HEALING_DONE_PERCENT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_WEAPON_DMG_MULTIPLIERS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_WEAPON_DMG_MULTIPLIERS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_WEAPON_DMG_MULTIPLIERS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_SPELL_POWER_PERCENT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_RESILIENCE_PERCENT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_OVERRIDE_SPELL_POWER_BY_APPERCENT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_OVERRIDE_APBY_SPELL_POWER_PERCENT
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_TARGET_RESISTANCE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_TARGET_PHYSICAL_RESISTANCE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_LIFETIME_MAX_RANK
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SELF_RES_SPELL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_MEDALS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_PRICE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_PRICE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_PRICE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_PRICE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_PRICE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_PRICE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_PRICE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_PRICE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_PRICE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_PRICE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_PRICE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_PRICE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_TIMESTAMP
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_TIMESTAMP
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_TIMESTAMP
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_TIMESTAMP
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_TIMESTAMP
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_TIMESTAMP
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_TIMESTAMP
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_TIMESTAMP
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_TIMESTAMP
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_TIMESTAMP
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_TIMESTAMP
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_BUYBACK_TIMESTAMP
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_YESTERDAY_HONORABLE_KILLS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_LIFETIME_HONORABLE_KILLS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_WATCHED_FACTION_INDEX
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_COMBAT_RATINGS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PVP_INFO
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MAX_LEVEL
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_RUNE_REGEN
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_RUNE_REGEN
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_RUNE_REGEN
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_RUNE_REGEN
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_NO_REAGENT_COST_MASK
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_NO_REAGENT_COST_MASK
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_NO_REAGENT_COST_MASK
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_NO_REAGENT_COST_MASK
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_GLYPH_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_GLYPH_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_GLYPH_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_GLYPH_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_GLYPH_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_GLYPH_SLOTS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_GLYPHS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_GLYPHS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_GLYPHS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_GLYPHS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_GLYPHS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_GLYPHS
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_GLYPH_SLOTS_ENABLED
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PET_SPELL_POWER
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_RESEARCHING
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_RESEARCHING
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_RESEARCHING
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_RESEARCHING
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_RESEARCHING
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_RESEARCHING
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_RESEARCHING
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_RESEARCHING
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PROFESSION_SKILL_LINE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_PROFESSION_SKILL_LINE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_UI_HIT_MODIFIER
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_UI_SPELL_HIT_MODIFIER
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_HOME_REALM_TIME_OFFSET
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_MOD_PET_HASTE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SUMMONED_BATTLE_PET_GUID
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_SUMMONED_BATTLE_PET_GUID
    UF_FLAG_PRIVATE | UF_FLAG_DYNAMIC_SELF_ONLY,            // PLAYER_FIELD_OVERRIDE_SPELLS_ID
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_LFG_BONUS_FACTION_ID
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_LOOT_SPEC_ID
    UF_FLAG_PRIVATE | UF_FLAG_DYNAMIC_SELF_ONLY,            // PLAYER_FIELD_OVERRIDE_ZONE_PVPTYPE
    UF_FLAG_PRIVATE,                                        // PLAYER_FIELD_ITEM_LEVEL_DELTA
};

// > Object > GameObject
uint32 const GameObjectUpdateFieldFlags[GAMEOBJECT_END] =
{
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_TYPE
    UF_FLAG_VIEWER_DEPENDENT,                               // OBJECT_FIELD_ENTRY_ID
    UF_FLAG_VIEWER_DEPENDENT | UF_FLAG_DYNAMIC,             // OBJECT_FIELD_DYNAMIC_FLAGS
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_SCALE
    UF_FLAG_PUBLIC,                                         // GAMEOBJECT_FIELD_CREATED_BY
    UF_FLAG_PUBLIC,                                         // GAMEOBJECT_FIELD_CREATED_BY
    UF_FLAG_PUBLIC,                                         // GAMEOBJECT_FIELD_DISPLAY_ID
    UF_FLAG_PUBLIC | UF_FLAG_DYNAMIC,                       // GAMEOBJECT_FIELD_FLAGS
    UF_FLAG_PUBLIC,                                         // GAMEOBJECT_FIELD_PARENT_ROTATION
    UF_FLAG_PUBLIC,                                         // GAMEOBJECT_FIELD_PARENT_ROTATION
    UF_FLAG_PUBLIC,                                         // GAMEOBJECT_FIELD_PARENT_ROTATION
    UF_FLAG_PUBLIC,                                         // GAMEOBJECT_FIELD_PARENT_ROTATION
    UF_FLAG_PUBLIC,                                         // GAMEOBJECT_FIELD_FACTION_TEMPLATE
    UF_FLAG_PUBLIC,                                         // GAMEOBJECT_FIELD_LEVEL
    UF_FLAG_PUBLIC | UF_FLAG_DYNAMIC,                        // GAMEOBJECT_FIELD_PERCENT_HEALTH
    UF_FLAG_PUBLIC | UF_FLAG_DYNAMIC,                        // GAMEOBJECT_FIELD_STATE_SPELL_VISUAL_ID
};

// > Object > DynamicObject
uint32 const DynamicObjectUpdateFieldFlags[DYNAMICOBJECT_END] =
{
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_TYPE
    UF_FLAG_VIEWER_DEPENDENT,                               // OBJECT_FIELD_ENTRY_ID
    UF_FLAG_VIEWER_DEPENDENT | UF_FLAG_DYNAMIC,             // OBJECT_FIELD_DYNAMIC_FLAGS
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_SCALE
    UF_FLAG_PUBLIC,                                         // DYNAMICOBJECT_FIELD_CASTER
    UF_FLAG_PUBLIC,                                         // DYNAMICOBJECT_FIELD_CASTER
    UF_FLAG_VIEWER_DEPENDENT,                               // DYNAMICOBJECT_BYTES
    UF_FLAG_PUBLIC,                                         // DYNAMICOBJECT_FIELD_SPELL_ID
    UF_FLAG_PUBLIC,                                         // DYNAMICOBJECT_FIELD_RADIUS
    UF_FLAG_PUBLIC,                                         // DYNAMICOBJECT_FIELD_CAST_TIME
};

// > Object > Corpse
uint32 const CorpseUpdateFieldFlags[CORPSE_END] =
{
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_TYPE
    UF_FLAG_VIEWER_DEPENDENT,                               // OBJECT_FIELD_ENTRY_ID
    UF_FLAG_VIEWER_DEPENDENT | UF_FLAG_DYNAMIC,             // OBJECT_FIELD_DYNAMIC_FLAGS
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_SCALE
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_OWNER
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_OWNER
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_PARTY_GUID
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_PARTY_GUID
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_DISPLAY_ID
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_ITEMS
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_SKIN_ID
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_FACIAL_HAIR_STYLE_ID
    UF_FLAG_PUBLIC,                                         // CORPSE_FIELD_FLAGS
    UF_FLAG_VIEWER_DEPENDENT,                               // CORPSE_FIELD_DYNAMIC_FLAGS
};

// > Object > AreaTrigger
uint32 const AreaTriggerUpdateFieldFlags[AREATRIGGER_END] =
{
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_TYPE
    UF_FLAG_VIEWER_DEPENDENT,                               // OBJECT_FIELD_ENTRY_ID
    UF_FLAG_VIEWER_DEPENDENT | UF_FLAG_DYNAMIC,             // OBJECT_FIELD_DYNAMIC_FLAGS
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_SCALE
    UF_FLAG_PUBLIC,                                         // AREATRIGGER_FIELD_CASTER
    UF_FLAG_PUBLIC,                                         // AREATRIGGER_FIELD_CASTER
    UF_FLAG_PUBLIC,                                         // AREATRIGGER_FIELD_DURATION
    UF_FLAG_PUBLIC,                                         // AREATRIGGER_FIELD_SPELL_ID
    UF_FLAG_VIEWER_DEPENDENT,                               // AREATRIGGER_FIELD_SPELL_VISUAL_ID
    UF_FLAG_PUBLIC | UF_FLAG_DYNAMIC,                       // AREATRIGGER_FIELD_EXPLICIT_SCALE
};

// > Object > SceneObject
uint32 const SceneObjectUpdateFieldFlags[SCENE_END] =
{
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_GUID
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_DATA
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_TYPE
    UF_FLAG_VIEWER_DEPENDENT,                               // OBJECT_FIELD_ENTRY_ID
    UF_FLAG_VIEWER_DEPENDENT | UF_FLAG_DYNAMIC,             // OBJECT_FIELD_DYNAMIC_FLAGS
    UF_FLAG_PUBLIC,                                         // OBJECT_FIELD_SCALE
    UF_FLAG_PUBLIC,                                         // SCENEOBJECT_FIELD_SCRIPT_PACKAGE_ID
    UF_FLAG_PUBLIC,                                         // SCENEOBJECT_FIELD_RND_SEED_VAL
    UF_FLAG_PUBLIC,                                         // SCENEOBJECT_FIELD_CREATED_BY
    UF_FLAG_PUBLIC,                                         // SCENEOBJECT_FIELD_CREATED_BY
    UF_FLAG_PUBLIC,                                         // SCENEOBJECT_FIELD_SCENE_TYPE
};
