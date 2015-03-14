/* Throne of Thunder */
SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM creature WHERE map = 1098;
DELETE FROM gameobject WHERE map = 1098;

-- GUID RANGES
-- Gameobjects
SET @OGUID := (SELECT MAX(guid) FROM gameobject) + 1;
-- Creatures 
SET @CGUID := (SELECT MAX(guid) FROM creature) + 1;

-- Instance Script
DELETE FROM `instance_template` WHERE `map` = 1098;
INSERT INTO `instance_template` (map, parent, script, allowMount) VALUES
(1098, 1064, 'instance_throne_of_thunder', 0);

-- Difficulty Data
SET @RAID_DIFF_10N := 3100000;
SET @RAID_DIFF_10H := 3200000;
SET @RAID_DIFF_25N := 3300000;
SET @RAID_DIFF_25H := 3400000;
SET @RAID_DIFF_25R := 3500000;

SET @HP_MOD_93 := (SELECT basehp4 FROM creature_classlevelstats WHERE class = 1 AND LEVEL = 93);
SET @HP_MOD_92 := (SELECT basehp4 FROM creature_classlevelstats WHERE class = 1 AND LEVEL = 92);
SET @HP_MOD_91 := (SELECT basehp4 FROM creature_classlevelstats WHERE class = 1 AND LEVEL = 91);
SET @HP_MOD_90 := (SELECT basehp4 FROM creature_classlevelstats WHERE class = 1 AND LEVEL = 90);
SET @HP_MOD_1  := (SELECT basehp0 FROM creature_classlevelstats WHERE class = 1 AND LEVEL = 0);

/* BEGIN Jin'rokh the Breaker */
/*---------------------------------------------------------------------------------------------------------------*/
-- Spell Scripts
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(137162, 'spell_static_burst'),
(137194, 'spell_focused_lightning_targeting'),
(137374, 'spell_focused_lightning_detonation'),
(137389, 'spell_focused_lightning_speed'),
(137429, 'spell_focused_lightning_aoe'),
(137507, 'spell_implosion'),
(138349, 'spell_static_wound'),
(138389, 'spell_static_wound_damage'),
(138568, 'spell_lightning_storm_visual'),
(138990, 'spell_focused_lightning_detonation'),
(137161, 'spell_thundering_throw_silence'),
(137180, 'spell_thundering_throw'),
(137168, 'spell_conductive_water_dummy'),
(138002, 'spell_water_auras'),
(138006, 'spell_water_auras'),
(137399, 'spell_focused_lightning'),
(137530, 'spell_focused_lightning_conduction'),
(138133, 'spell_lightning_fissure_conduction');
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Templates 
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`,`equipment_id`) VALUES 
(70245, 0, 0, 0, 0, 0, 27510, 0, 0, 0, 'Training Dummy', '', '', 0, 1, 1, 4, 14, 14, 0, 1, 1.14286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 1, 131076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 900, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 'npc_training_dummy', 17614,0);

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`,`equipment_id`) VALUES
(69388, 0, 0, 0, 0, 0, 47507, 0, 0, 0, 'Zandalari Spear-Shaper', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 184, 1, 0, 0, '', 17614,69388),
(69390, 0, 0, 0, 0, 0, 47528, 0, 0, 0, 'Zandalari Storm-Caller', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 270532680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 11000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,69390),
(69455, 0, 0, 0, 0, 0, 47536, 0, 0, 0, 'Zandalari Water-Binder', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 11000, '', 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,0),
(69465, 0, 0, 0, 0, 0, 47552, 0, 0, 0, 'Jin\'rokh the Breaker', '', '', 0, 93, 93, 4, 14, 14, 0, 1, 1.14286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900000, 3000000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 180, 1, 667893759, 1, 'boss_jinrokh', 17614,0),
(69467, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Statue', '', '', 0, 93, 93, 4, 14, 14, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 128, 'npc_jinrokh_statue', 17614,0),
(69469, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Conductive Water', '', '', 0, 1, 1, 4, 35, 35, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 33554438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 17826816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 130, 'npc_conductive_water', 17614,0),
(69593, 0, 0, 0, 0, 0, 47698, 0, 0, 0, 'Focused Lightning', '', '', 0, 93, 93, 4, 14, 14, 0, 0.65, 0.65, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 33554434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 17826816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 94, 1, 0, 0, '', 17614,0),
(69609, 0, 0, 0, 0, 0, 39633, 0, 0, 0, 'Lightning Fissure', '', '', 0, 93, 93, 4, 14, 14, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 33554438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 17826816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 130, 'npc_lightning_fissure', 17614,0),
(69676, 0, 0, 0, 0, 0, 39633, 0, 0, 0, 'Call Da Storm Stalker', '', '', 0, 1, 1, 4, 35, 35, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 17826816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 17614,0),
(69753, 0, 0, 0, 0, 0, 15294, 0, 0, 0, 'Lightning Strike', '', '', 0, 1, 1, 4, 35, 35, 0, 1, 1.14286, 1, 0, 9839, 14339, 0, 42299, 1, 2000, 2000, 1, 33554434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 17826816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 130, '', 17614,0),
(70174, 0, 0, 0, 0, 0, 47698, 0, 0, 0, 'Focused Lightning', '', '', 0, 1, 1, 4, 35, 35, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 33554438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 17826816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 94, 1, 0, 130, '', 17614,0),
(70230, 0, 0, 0, 0, 0, 47941, 47942, 47943, 47944, 'Zandalari Blade Initiate', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 184, 1, 0, 0, '', 17614,70230),
(70236, 0, 0, 0, 0, 0, 47528, 0, 0, 0, 'Zandalari Storm-Caller', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 270532680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,70236),

(@RAID_DIFF_10N + 69388, 0, 0, 0, 0, 0, 47507, 0, 0, 0, 'Zandalari Spear-Shaper', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 184, 1, 0, 0, '', 17614,69388),
(@RAID_DIFF_10N + 69390, 0, 0, 0, 0, 0, 47528, 0, 0, 0, 'Zandalari Storm-Caller', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 270532680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 11000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,69390),
(@RAID_DIFF_10N + 69455, 0, 0, 0, 0, 0, 47536, 0, 0, 0, 'Zandalari Water-Binder', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 11000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,0),
(@RAID_DIFF_10N + 69465, 0, 0, 0, 0, 0, 47552, 0, 0, 0, 'Jin\'rokh the Breaker', '', '', 0, 93, 93, 4, 14, 14, 0, 1, 1.14286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900000, 3000000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 180, 1, 667893759, 1, 'boss_jinrokh', 17614,0),
(@RAID_DIFF_10N + 70230, 0, 0, 0, 0, 0, 47941, 47942, 47943, 47944, 'Zandalari Blade Initiate', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 184, 1, 0, 0, '', 17614,70230),
(@RAID_DIFF_10N + 70236, 0, 0, 0, 0, 0, 47528, 0, 0, 0, 'Zandalari Storm-Caller', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 270532680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,70236),

(@RAID_DIFF_25N + 69388, 0, 0, 0, 0, 0, 47507, 0, 0, 0, 'Zandalari Spear-Shaper', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 184, 1, 0, 0, '', 17614,69388),
(@RAID_DIFF_25N + 69390, 0, 0, 0, 0, 0, 47528, 0, 0, 0, 'Zandalari Storm-Caller', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 270532680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 11000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,69390),
(@RAID_DIFF_25N + 69455, 0, 0, 0, 0, 0, 47536, 0, 0, 0, 'Zandalari Water-Binder', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 11000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,0),
(@RAID_DIFF_25N + 69465, 0, 0, 0, 0, 0, 47552, 0, 0, 0, 'Jin\'rokh the Breaker', '', '', 0, 93, 93, 4, 14, 14, 0, 1, 1.14286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900000, 3000000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 180, 1, 667893759, 1, 'boss_jinrokh', 17614,0),
(@RAID_DIFF_25N + 70230, 0, 0, 0, 0, 0, 47941, 47942, 47943, 47944, 'Zandalari Blade Initiate', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 184, 1, 0, 0, '', 17614,70230),
(@RAID_DIFF_25N + 70236, 0, 0, 0, 0, 0, 47528, 0, 0, 0, 'Zandalari Storm-Caller', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 270532680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,70236),

(@RAID_DIFF_10H + 69388, 0, 0, 0, 0, 0, 47507, 0, 0, 0, 'Zandalari Spear-Shaper', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 184, 1, 0, 0, '', 17614,69388),
(@RAID_DIFF_10H + 69390, 0, 0, 0, 0, 0, 47528, 0, 0, 0, 'Zandalari Storm-Caller', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 270532680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 11000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,69390),
(@RAID_DIFF_10H + 69455, 0, 0, 0, 0, 0, 47536, 0, 0, 0, 'Zandalari Water-Binder', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 11000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,0),
(@RAID_DIFF_10H + 69465, 0, 0, 0, 0, 0, 47552, 0, 0, 0, 'Jin\'rokh the Breaker', '', '', 0, 93, 93, 4, 14, 14, 0, 1, 1.14286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900000, 3000000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 180, 1, 667893759, 1, 'boss_jinrokh', 17614,0),
(@RAID_DIFF_10H + 70230, 0, 0, 0, 0, 0, 47941, 47942, 47943, 47944, 'Zandalari Blade Initiate', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 184, 1, 0, 0, '', 17614,70230),
(@RAID_DIFF_10H + 70236, 0, 0, 0, 0, 0, 47528, 0, 0, 0, 'Zandalari Storm-Caller', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 270532680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,70236),

(@RAID_DIFF_25H + 69388, 0, 0, 0, 0, 0, 47507, 0, 0, 0, 'Zandalari Spear-Shaper', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 184, 1, 0, 0, '', 17614,69388),
(@RAID_DIFF_25H + 69390, 0, 0, 0, 0, 0, 47528, 0, 0, 0, 'Zandalari Storm-Caller', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 270532680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 11000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,69390),
(@RAID_DIFF_25H + 69455, 0, 0, 0, 0, 0, 47536, 0, 0, 0, 'Zandalari Water-Binder', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 11000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,0),
(@RAID_DIFF_25H + 69465, 0, 0, 0, 0, 0, 47552, 0, 0, 0, 'Jin\'rokh the Breaker', '', '', 0, 93, 93, 4, 14, 14, 0, 1, 1.14286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900000, 3000000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 180, 1, 667893759, 1, 'boss_jinrokh', 17614,0),
(@RAID_DIFF_25H + 70230, 0, 0, 0, 0, 0, 47941, 47942, 47943, 47944, 'Zandalari Blade Initiate', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 184, 1, 0, 0, '', 17614,70230),
(@RAID_DIFF_25H + 70236, 0, 0, 0, 0, 0, 47528, 0, 0, 0, 'Zandalari Storm-Caller', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 270532680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,70236),

(@RAID_DIFF_25R + 69388, 0, 0, 0, 0, 0, 47507, 0, 0, 0, 'Zandalari Spear-Shaper', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 184, 1, 0, 0, '', 17614,69388),
(@RAID_DIFF_25R + 69390, 0, 0, 0, 0, 0, 47528, 0, 0, 0, 'Zandalari Storm-Caller', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 270532680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 11000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,69390),
(@RAID_DIFF_25R + 69455, 0, 0, 0, 0, 0, 47536, 0, 0, 0, 'Zandalari Water-Binder', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 11000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,0),
(@RAID_DIFF_25R + 69465, 0, 0, 0, 0, 0, 47552, 0, 0, 0, 'Jin\'rokh the Breaker', '', '', 0, 93, 93, 4, 14, 14, 0, 1, 1.14286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900000, 3000000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 180, 1, 667893759, 1, 'boss_jinrokh', 17614,0),
(@RAID_DIFF_25R + 70230, 0, 0, 0, 0, 0, 47941, 47942, 47943, 47944, 'Zandalari Blade Initiate', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 184, 1, 0, 0, '', 17614,70230),
(@RAID_DIFF_25R + 70236, 0, 0, 0, 0, 0, 47528, 0, 0, 0, 'Zandalari Storm-Caller', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 270532680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, '', 17614,70236);
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Updates
-- Creature Trash Mobs Damage, HP, LootId
-- Base HP Gamepedia Raid 25N
-- 25R -10%
-- 25H +25%
-- 10N (BASE HP: 25 = X : 10)
-- 10H=(10N+25%)

-- Script Names
UPDATE creature_template SET ScriptName = 'npc_lightning_fissure' WHERE entry = 69609;
UPDATE creature_template SET ScriptName = 'npc_focused_lightning', HoverHeight = 5 WHERE entry = 69593;

-- Immunity and bind bosses
UPDATE creature_template SET flags_extra = flags_extra | 1, mechanic_immune_mask = 667893759 WHERE entry = 69465;

-- Difficulty entries bosses and Trash Mobs
UPDATE creature_template SET difficulty_entry_3 = @RAID_DIFF_10N + entry, difficulty_entry_4 = @RAID_DIFF_25N + entry, difficulty_entry_5 = @RAID_DIFF_10H + entry, difficulty_entry_6 = @RAID_DIFF_25H + entry, difficulty_entry_7 = @RAID_DIFF_25R + entry WHERE entry IN 
(69388,69390,69455,69465,70230,70236);

-- Zandalari Spear-Shaper
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69388, dmg_multiplier = 5, Health_Mod = 14165200 / @HP_MOD_92 WHERE entry = @RAID_DIFF_10N + 69388;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69388, dmg_multiplier = 6, Health_Mod = 17706500 / @HP_MOD_92 WHERE entry = @RAID_DIFF_10H + 69388;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69388, dmg_multiplier = 8, Health_Mod = 35413000 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25N + 69388;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69388, dmg_multiplier = 9, Health_Mod = 44266250 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25H + 69388;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69388, dmg_multiplier = 7, Health_Mod = 31871700 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25R + 69388;

-- Zandalari Storm-Caller
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69390, dmg_multiplier = 5, Health_Mod = 9308400  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10N + 69390;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69390, dmg_multiplier = 6, Health_Mod = 11635500 / @HP_MOD_92 WHERE entry = @RAID_DIFF_10H + 69390;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69390, dmg_multiplier = 8, Health_Mod = 23271000 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25N + 69390;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69390, dmg_multiplier = 9, Health_Mod = 29088750 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25H + 69390;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69390, dmg_multiplier = 7, Health_Mod = 20943900 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25R + 69390;

-- Zandalari Water-Binder
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69455, dmg_multiplier = 5, Health_Mod = 7446958  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10N + 69455;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69455, dmg_multiplier = 6, Health_Mod = 9308698  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10H + 69455;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69455, dmg_multiplier = 8, Health_Mod = 18617396 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25N + 69455;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69455, dmg_multiplier = 9, Health_Mod = 23271745 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25H + 69455;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69455, dmg_multiplier = 7, Health_Mod = 16755656 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25R + 69455;

-- Zandalari Blade Initiate
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 70230, dmg_multiplier = 3, Health_Mod = 6070800  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10N + 70230;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 70230, dmg_multiplier = 4, Health_Mod = 7588500  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10H + 70230;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 70230, dmg_multiplier = 6, Health_Mod = 15177000 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25N + 70230;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 70230, dmg_multiplier = 7, Health_Mod = 18971250 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25H + 70230;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 70230, dmg_multiplier = 5, Health_Mod = 13659300 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25R + 70230;

-- Zandalari Storm-Caller (Door's Guard)
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 70236, dmg_multiplier = 5, Health_Mod = 11196000 / @HP_MOD_92 WHERE entry = @RAID_DIFF_10N + 70236;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 70236, dmg_multiplier = 6, Health_Mod = 13995000 / @HP_MOD_92 WHERE entry = @RAID_DIFF_10H + 70236;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 70236, dmg_multiplier = 8, Health_Mod = 27990000 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25N + 70236;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 70236, dmg_multiplier = 9, Health_Mod = 34987500 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25H + 70236;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 70236, dmg_multiplier = 7, Health_Mod = 25191000 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25R + 70236;

-- Jin'rokh the Breaker
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69465, dmg_multiplier = 6, Health_Mod = 207601216 / @HP_MOD_93 WHERE entry = @RAID_DIFF_10N + 69465;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69465, dmg_multiplier = 7, Health_Mod = 317507744 / @HP_MOD_93 WHERE entry = @RAID_DIFF_10H + 69465;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69465, dmg_multiplier = 9, Health_Mod = 622803648 / @HP_MOD_93 WHERE entry = @RAID_DIFF_25N + 69465;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69465, dmg_multiplier = 10,Health_Mod = 952523200 / @HP_MOD_93 WHERE entry = @RAID_DIFF_25H + 69465;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69465, dmg_multiplier = 8, Health_Mod = 545171264 / @HP_MOD_93 WHERE entry = @RAID_DIFF_25R + 69465;
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Trash Mobs SAI
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (69455,70230);
DELETE FROM `smart_scripts` WHERE `entryorguid`IN (69455,70230) AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(69455, 0, 0, 0, 0, 0, 100, 0, 3000, 4000, 7000, 10000, 11, 136952, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Zandalari Water-Binder - Cast Frostbolt"),
(69455, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 13000, 18000, 11, 137099, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Zandalari Water-Binder - Cast Bind Water"),
(70230, 0, 0, 0, 0, 0, 100, 0, 12000, 13000, 15000, 16000, 11, 140049, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Zandalari Blade Initiate - Cast Wounding Strike");
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Creature Equip
REPLACE INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES 
(69388, 82006, 0, 0),
(69390, 95867, 0, 0),
(70230, 95803, 0, 0);
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Creature Spawns
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`,`protec_anti_doublet`) VALUES
(@CGUID+1,  69388, 1098, 0, 0, 248, 1, 0, 69388, 5917.69, 6525.49, 112.228, 5.97571, 86400, 0, 0, 16863680, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+2,  69388, 1098, 0, 0, 248, 1, 0, 69388, 5860.51, 6522.21, 112.261, 4.64341, 86400, 0, 0, 16863680, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+3,  69388, 1098, 0, 0, 248, 1, 0, 69388, 5873.17, 6494.15, 118.106, 1.42956, 86400, 0, 0, 16863680, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+4,  69388, 1098, 0, 0, 248, 1, 0, 69388, 5840.67, 6482.09, 117.996, 3.21006, 86400, 0, 0, 16863680, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+5,  69388, 1098, 0, 0, 248, 1, 0, 69388, 5946.51, 6475.25, 118.107, 0.0849757, 86400, 0, 0, 16863680, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+6,  69390, 1098, 0, 0, 248, 1, 0, 69390, 5909.45, 6555.49, 112.261, 2.07639, 86400, 0, 0, 13912536, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+7,  69390, 1098, 0, 0, 248, 1, 0, 69390, 5882.01, 6554.81, 112.261, 3.69621, 86400, 0, 0, 13912536, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+8,  69390, 1098, 0, 0, 248, 1, 0, 69390, 5943.90, 6491.32, 118.107, 6.25192, 86400, 0, 0, 13912536, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+9,  69455, 1098, 0, 0, 248, 1, 0, 0, 5905.52, 6556.86, 112.260, 0.51738, 86400, 0, 0, 9696616, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+10, 69455, 1098, 0, 0, 248, 1, 0, 0, 5875.67, 6550.89, 112.261, 1.04235, 86400, 0, 0, 9696616, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+11, 69455, 1098, 0, 0, 248, 1, 0, 0, 5867.4, 6490.76, 118.106, 0.868784, 86400, 0, 0, 9696616, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+12, 69455, 1098, 0, 0, 248, 1, 0, 0, 5947.27, 6494.46, 118.107, 5.41233, 86400, 0, 0, 9696616, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+13, 69465, 1098, 0, 0, 248, 1, 0, 0, 5891.82, 6263.38, 124.034, 1.56886, 86400, 0, 0, 207601216, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(@CGUID+14, 69467, 1098, 0, 0, 248, 1, 0, 0, 5834.94, 6320.38, 158.822, 5.49425, 86400, 0, 0, 84, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(@CGUID+15, 69467, 1098, 0, 0, 248, 1, 0, 0, 5949.51, 6322.59, 158.822, 3.93524, 86400, 0, 0, 84, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(@CGUID+16, 69467, 1098, 0, 0, 248, 1, 0, 0, 5950.26, 6206.49, 158.822, 2.43905, 86400, 0, 0, 84, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(@CGUID+17, 69467, 1098, 0, 0, 248, 1, 0, 0, 5835.62, 6206.6, 158.822, 0.821134, 86400, 0, 0, 84, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(@CGUID+18, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5915.01, 6555.70, 112.262, 2.41254, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+19, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5929.73, 6543.16, 112.261, 3.72292, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+20, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5931.22, 6538.27, 112.261, 3.38913, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+21, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5930.63, 6529.92, 112.253, 3.03963, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+22, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5918.55, 6518.21, 112.259, 2.18511, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+23, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5925.01, 6518.61, 112.259, 2.50555, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+24, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5926.01, 6523.48, 112.258, 2.75531, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+25, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5873.91, 6558.49, 112.737, 1.24184, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+26, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5853.16, 6520.82, 112.261, 4.89002, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+27, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5878.06, 6489.66, 118.107, 1.66440, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+28, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5830.94, 6476.99, 118.107, 3.21948, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+29, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5830.65, 6493.49, 118.107, 3.17707, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+30, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5831.48, 6469.27, 118.107, 3.11220, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+31, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5830.66, 6486.52, 118.107, 3.22608, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+32, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5955.64, 6492.72, 118.107, 3.26741, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+33, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5953.43, 6489.91, 118.107, 2.62966, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+34, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5953.10, 6485.33, 118.107, 2.42625, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+35, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5948.62, 6483.84, 118.107, 2.19141, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+36, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5955.83, 6479.02, 118.107, 3.51874, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+37, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5955.42, 6472.66, 118.107, 2.79224, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+38, 70230, 1098, 0, 0, 248, 1, 0, 70230, 5951.30, 6468.36, 118.107, 2.33750, 86400, 0, 0, 5059104, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+39, 70236, 1098, 0, 0, 248, 1, 0, 70236, 5892.01, 6436.98, 118.106, 1.61915, 86400, 0, 0, 21079600, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+40, 70245, 1098, 0, 0, 248, 1, 0, 0, 5859.92, 6515.6, 112.261, 1.54454, 86400, 0, 0, 144628, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+41, 70245, 1098, 0, 0, 248, 1, 0, 0, 5852.87, 6515.65, 112.261, 1.58539, 86400, 0, 0, 144628, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+42, 70245, 1098, 0, 0, 248, 1, 0, 0, 5824.56, 6493.54, 118.107, 0.0295164, 86400, 0, 0, 144628, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+43, 70245, 1098, 0, 0, 248, 1, 0, 0, 5824.91, 6486.64, 118.107, 0.0295164, 86400, 0, 0, 144628, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+44, 70245, 1098, 0, 0, 248, 1, 0, 0, 5824.89, 6477.12, 118.107, 6.26951, 86400, 0, 0, 144628, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(@CGUID+45, 70245, 1098, 0, 0, 248, 1, 0, 0, 5825.11, 6469.8, 118.107, 6.26558, 86400, 0, 0, 144628, 0, 0, 0, 0, 0, 2048, 0, 0, NULL);
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Creature Emote
DELETE FROM `creature_emote` WHERE `guid` IN (@CGUID+2,@CGUID+19,@CGUID+20,@CGUID+21,@CGUID+22,@CGUID+23,@CGUID+24,@CGUID+26,@CGUID+28,@CGUID+29,@CGUID+30,@CGUID+31,@CGUID+32,@CGUID+33,@CGUID+34,@CGUID+35,@CGUID+36,@CGUID+37,@CGUID+38);
INSERT INTO `creature_emote` VALUES
(@CGUID+2,36),
(@CGUID+19,333),
(@CGUID+20,333),
(@CGUID+21,333),
(@CGUID+22,333),
(@CGUID+23,333),
(@CGUID+24,333),
(@CGUID+26,37),
(@CGUID+28,37),
(@CGUID+29,36),
(@CGUID+30,36),
(@CGUID+31,37),
(@CGUID+32,333),
(@CGUID+33,333),
(@CGUID+34,333),
(@CGUID+35,333),
(@CGUID+36,333),
(@CGUID+37,333),
(@CGUID+38,333);

DELETE FROM `creature_bytes` WHERE `guid` IN (@CGUID+18);
INSERT INTO `creature_bytes` VALUES
(@CGUID+18,0,8);
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Creature Speeches
DELETE FROM `creature_text` WHERE `entry` IN (69465, 69593);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(69465, 0,  0, 'Da Thunder King give me power! Come, I show you!', 14, 0, 100, 0, 0, 35550,'Jin''rokh the Breaker - Intro'),
(69465, 1,  0, 'I must break you.', 14, 0, 100, 0, 0, 35547,  'Jin''rokh the Breaker - Aggro'),
(69465, 2,  0, 'Smash!', 14, 0, 100, 0, 0, 35553,  'Jin''rokh the Breaker - Static Burst'),
(69465, 3,  0, 'Crush your bones!', 14, 0, 100, 0, 0, 35554,  'Jin''rokh the Breaker - Thundering Throw'),
(69465, 4,  0, 'I call da storm!', 14, 0, 100, 0, 0, 35555,  'Jin''rokh the Breaker - Lightning Storm'),
(69465, 5,  0, 'Zap!', 14, 0, 100, 0, 0, 35556,  'Jin''rokh the Breaker - Focused Lightning'),
(69465, 6,  0, '|TInterface\\Icons\\ability_warrior_throwdown:20|t%s grabs $n and readies his |cFFFF0000|Hspell:137175|h[Thundering Throw]|h|r!', 41, 0, 100, 0, 0, 0,  'Jin''rokh the Breaker'),
(69465, 7,  0, '|TInterface\\Icons\\spell_shaman_thunderstorm:20|t%s begins to channel an intense |cFFFF0000|Hspell:137313|h[Lightning Storm]|h|r!', 41, 0, 100, 0, 0, 0,  'Jin''rokh the Breaker'),
(69465, 8,  0, '|TInterface\\Icons\\spell_shaman_thunderstorm:20|t%s begins to channel an intense |cFFFF0000|Hspell:137313|h[Lightning Storm]|h|r!', 41, 0, 100, 0, 0, 0,  'Jin''rokh the Breaker'),
(69465, 9,  0, 'Weak.', 14, 0, 100, 0, 0, 35551,  'Jin''rokh the Breaker - Kill01'),
(69465, 9,  1, 'So easy to break.', 14, 0, 100, 0, 0, 35552,  'Jin''rokh the Breaker - Kill02'),
(69465, 10, 0, 'Bored. You die now.', 14, 0, 100, 0, 0, 35552,  'Jin''rokh the Breaker - Berserk'),
(69465, 11, 0, 'How you beat me?', 14, 0, 100, 0, 0, 35549,  'Jin''rokh the Breaker Death'),
(69593, 12, 0, 'Jin''rokh the Breaker''s |cFFFF0000|Hspell:137422|h[Focused Lightning]|h|r fixates on you. Run!', 41, 0, 100, 0, 0, 0, 'Focused Lightning emote');
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Gameobjects templates
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
(214539, 31, 11469, 'Instance Portal (Raid 4 Difficulties)', '', '', '', 0, 16, 2.5, 0, 0, 0, 0, 0, 0, 2, 216, 217, 216, 217, 11471, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 17658),
(218664, 0, 13679, 'Wrought Iron Door', '', '', '', 1375, 48, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 17658),
(218665, 0, 13679, 'Wrought Iron Door', '', '', '', 0, 0, 0.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 17658),
(218667, 0, 13679, 'Wrought Iron Door', '', '', '', 0, 48, 0.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 17658),
(218675, 0, 13615, 'Mogu Fountain', '', '', '', 1375, 48, 12.5537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 17658),
(218676, 0, 13615, 'Mogu Fountain', '', '', '', 1375, 48, 12.5537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 17658),
(218677, 0, 13615, 'Mogu Fountain', '', '', '', 1375, 48, 12.55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 17658),
(218678, 0, 13615, 'Mogu Fountain', '', '', '', 1375, 48, 12.55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 17658);
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Gameobjects spawns
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+1, 214539, 1098, 760, 1, 5892.22, 6630.41, 106.427, 4.64664, 0, 0, 0, 1, 86400, 255, 1),
(@OGUID+2, 218664, 1098, 760, 1, 5891.77, 6349, 124.068, 4.71239, 0, 0, 1, -4.37114E-8, 86400, 255, 0),
(@OGUID+3, 218665, 1098, 760, 1, 5891.77, 6410.01, 124.068, 4.71239, 0, 0, 1, -0.0000000437114, 86400, 255, 1),
(@OGUID+4, 218667, 1098, 760, 1, 5806.350, 6263.49, 124.021, 3.13417, 0, 0, 0.999993, 0.00371344, 86400, 255, 1),
(@OGUID+5, 218675, 1098, 760, 1, 5840.52, 6315.62, 125.112, 5.49779, 0, 0, 1, -4.37114E-8, 86400, 255, 1),
(@OGUID+6, 218676, 1098, 760, 1, 5839.67, 6212.19, 125.112, 0.785397, 0, 0, 1, -4.37114E-8, 86400, 255, 1),
(@OGUID+7, 218677, 1098, 760, 1, 5943.1, 6211.33, 125.112, 2.35619, 0, 0, 1, -4.37114E-8, 86400, 255, 1),
(@OGUID+8, 218678, 1098, 760, 1, 5945.27, 6316.69, 125.194, 3.92699, 0, 0, 1, -4.37114E-8, 86400, 255, 1);
/*---------------------------------------------------------------------------------------------------------------*/
/* END Jin'rokh the Breaker */





/* BEGIN Council of Elders */
/*---------------------------------------------------------------------------------------------------------------*/
-- Spell Scripts
REPLACE INTO spell_script_names VALUES
  (136442, "spell_garajal_possessed"),
  (136903, "spell_malakk_frigid_assault"),
  (136917, "spell_malakk_biting_cold"),
  (136922, "spell_malakk_frostbite_periodic"),
  (136990, "spell_malakk_frostbite"),
  (136937, "spell_malakk_frostbite_allies"),
  (137084, "spell_malakk_body_heat"),
  (137117, "spell_kazrajin_reckless_charge"),
  (137149, "spell_kazrajin_overload"),
  (137166, "spell_kazrajin_discharge"),
  (136860, "spell_quicksand_periodic"),
  (136857, "spell_quicksand_entrapped"),
  (136894, "spell_sul_sandstorm"),
  (137203, "spell_marli_summon_blessed_loa_spirit"),
  (137350, "spell_marli_summon_shadowed_loa_spirit"),
  (137891, "spell_marli_twisted_fate_first"),
  (137962, "spell_marli_twisted_fate_second"),
  (137986, "spell_marli_twisted_fate_damages");
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Templates
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`,`equipment_id`) VALUES
(69078, 0, 0, 0, 0, 0, 47505, 0, 0, 0, 'Sul the Sandcrawler', '', '', 0, 93, 93, 4, 16, 16, 0, 2, 1.714286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2670, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69078),
(69131, 0, 0, 0, 0, 0, 47506, 0, 0, 0, 'Frost King Malakk', '', '', 0, 93, 93, 4, 16, 16, 0, 2, 1.714286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2665, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69131),
(69132, 0, 0, 0, 0, 0, 47730, 0, 0, 0, 'High Priestess Mar\'li', '', '', 0, 93, 93, 4, 16, 16, 0, 1, 1.14286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000000, 3100000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69132),
(69134, 0, 0, 0, 0, 0, 47229, 0, 0, 0, 'Kazra\'jin', '', '', 0, 93, 93, 4, 16, 16, 0, 5.6, 2, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2669, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 912, 1, 0, 0, '', 17614,0),
(69135, 0, 0, 0, 0, 0, 47230, 0, 0, 0, 'Gara\'jal the Spiritbinder', '', '', 0, 90, 90, 4, 16, 16, 0, 5.6, 2, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 33587456, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 912, 1, 0, 0, '', 17614,0),
(69899, 0, 0, 0, 0, 0, 47775, 47782, 47783, 47784, 'Farraki Sand Conjurer', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69899),
(69905, 0, 0, 0, 0, 0, 47766, 47767, 0, 0, 'Gurubashi Berserker', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69905),
(69906, 0, 0, 0, 0, 0, 47761, 47762, 0, 0, 'Zandalari High Priest', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69906),
(69909, 0, 0, 0, 0, 0, 22307, 22308, 47335, 47336, 'Amani\'shi Flame Chanter', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69909),
(69910, 0, 0, 0, 0, 0, 47769, 47780, 47781, 0, 'Drakkari Frost Warden', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69910),
(69911, 0, 0, 0, 0, 0, 47760, 0, 0, 0, 'Zandalari Warlord', '', '', 0, 92, 92, 0, 14, 14, 0, 1, 1.14286, 1, 1, 30000, 55000, 0, 42000, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 69911, 0, 0, 0, 0, 0, 0, 0, 0, 140414, 140422, 134856, 0, 0, 0, 0, 0, 0, 0, 11401, 11401, 'SmartAI', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 109125471, 0, '', 1,0),
(69916, 0, 0, 0, 0, 0, 48181, 0, 0, 0, 'Gurubashi Berserker', '', '', 0, 92, 92, 0, 14, 14, 0, 1, 1.14286, 1, 1, 30000, 55000, 0, 42000, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 69916, 0, 0, 0, 0, 0, 0, 0, 0, 138540, 138427, 138693, 0, 0, 0, 0, 0, 0, 0, 11408, 11408, 'SmartAI', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 109133791, 0, '', 1,0),
(69927, 0, 0, 0, 0, 0, 47885, 0, 0, 0, 'Zandalari Prelate', '', '', 0, 92, 92, 4, 16, 16, 0, 2.8, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 1000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 171, 1, 0, 0, '', 17614,69927),
(70056, 0, 0, 0, 0, 0, 47230, 0, 0, 0, 'Gara\'jal the Spiritbinder', '', '', 0, 93, 93, 4, 16, 16, 0, 5.6, 2, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 33587456, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 912, 1, 0, 0, '', 17614,0),
(70137, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Gara\'jal\'s Trash Soul', '', '', 0, 90, 90, 4, 14, 14, 0, 1, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 17826816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2664, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 17614,0),
(70557, 0, 0, 0, 0, 0, 48121, 0, 0, 0, 'Zandalari Prophet', '', '', 0, 92, 92, 4, 16, 16, 0, 2.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 171, 1, 0, 0, '', 17614,70557),

(@RAID_DIFF_10N + 69078, 0, 0, 0, 0, 0, 47505, 0, 0, 0, 'Sul the Sandcrawler', '', '', 0, 93, 93, 4, 16, 16, 0, 2, 1.714286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2670, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69078),
(@RAID_DIFF_10N + 69131, 0, 0, 0, 0, 0, 47506, 0, 0, 0, 'Frost King Malakk', '', '', 0, 93, 93, 4, 16, 16, 0, 2, 1.714286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2665, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69131),
(@RAID_DIFF_10N + 69132, 0, 0, 0, 0, 0, 47730, 0, 0, 0, 'High Priestess Mar\'li', '', '', 0, 93, 93, 4, 16, 16, 0, 1, 1.14286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000000, 3100000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69132),
(@RAID_DIFF_10N + 69134, 0, 0, 0, 0, 0, 47229, 0, 0, 0, 'Kazra\'jin', '', '', 0, 93, 93, 4, 16, 16, 0, 5.6, 2, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2669, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 912, 1, 0, 0, '', 17614,0),
(@RAID_DIFF_10N + 69899, 0, 0, 0, 0, 0, 47775, 47782, 47783, 47784, 'Farraki Sand Conjurer', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69899),
(@RAID_DIFF_10N + 69905, 0, 0, 0, 0, 0, 47766, 47767, 0, 0, 'Gurubashi Berserker', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69905),
(@RAID_DIFF_10N + 69906, 0, 0, 0, 0, 0, 47761, 47762, 0, 0, 'Zandalari High Priest', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69906),
(@RAID_DIFF_10N + 69909, 0, 0, 0, 0, 0, 22307, 22308, 47335, 47336, 'Amani\'shi Flame Chanter', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69909),
(@RAID_DIFF_10N + 69910, 0, 0, 0, 0, 0, 47769, 47780, 47781, 0, 'Drakkari Frost Warden', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69910),
(@RAID_DIFF_10N + 69911, 0, 0, 0, 0, 0, 47760, 0, 0, 0, 'Zandalari Warlord', '', '', 0, 92, 92, 0, 14, 14, 0, 1, 1.14286, 1, 1, 30000, 55000, 0, 42000, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 69911, 0, 0, 0, 0, 0, 0, 0, 0, 140414, 140422, 134856, 0, 0, 0, 0, 0, 0, 0, 11401, 11401, 'SmartAI', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 109125471, 0, '', 1,0),
(@RAID_DIFF_10N + 69916, 0, 0, 0, 0, 0, 48181, 0, 0, 0, 'Gurubashi Berserker', '', '', 0, 92, 92, 0, 14, 14, 0, 1, 1.14286, 1, 1, 30000, 55000, 0, 42000, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 69916, 0, 0, 0, 0, 0, 0, 0, 0, 138540, 138427, 138693, 0, 0, 0, 0, 0, 0, 0, 11408, 11408, 'SmartAI', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 109133791, 0, '', 1,0),
(@RAID_DIFF_10N + 69927, 0, 0, 0, 0, 0, 47885, 0, 0, 0, 'Zandalari Prelate', '', '', 0, 92, 92, 4, 16, 16, 0, 2.8, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 1000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 171, 1, 0, 0, '', 17614,69927),
(@RAID_DIFF_10N + 70557, 0, 0, 0, 0, 0, 48121, 0, 0, 0, 'Zandalari Prophet', '', '', 0, 92, 92, 4, 16, 16, 0, 2.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 171, 1, 0, 0, '', 17614,70557),

(@RAID_DIFF_25N + 69078, 0, 0, 0, 0, 0, 47505, 0, 0, 0, 'Sul the Sandcrawler', '', '', 0, 93, 93, 4, 16, 16, 0, 2, 1.714286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2670, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69078),
(@RAID_DIFF_25N + 69131, 0, 0, 0, 0, 0, 47506, 0, 0, 0, 'Frost King Malakk', '', '', 0, 93, 93, 4, 16, 16, 0, 2, 1.714286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2665, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69131),
(@RAID_DIFF_25N + 69132, 0, 0, 0, 0, 0, 47730, 0, 0, 0, 'High Priestess Mar\'li', '', '', 0, 93, 93, 4, 16, 16, 0, 1, 1.14286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000000, 3100000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69132),
(@RAID_DIFF_25N + 69134, 0, 0, 0, 0, 0, 47229, 0, 0, 0, 'Kazra\'jin', '', '', 0, 93, 93, 4, 16, 16, 0, 5.6, 2, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2669, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 912, 1, 0, 0, '', 17614,0),
(@RAID_DIFF_25N + 69899, 0, 0, 0, 0, 0, 47775, 47782, 47783, 47784, 'Farraki Sand Conjurer', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69899),
(@RAID_DIFF_25N + 69905, 0, 0, 0, 0, 0, 47766, 47767, 0, 0, 'Gurubashi Berserker', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69905),
(@RAID_DIFF_25N + 69906, 0, 0, 0, 0, 0, 47761, 47762, 0, 0, 'Zandalari High Priest', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69906),
(@RAID_DIFF_25N + 69909, 0, 0, 0, 0, 0, 22307, 22308, 47335, 47336, 'Amani\'shi Flame Chanter', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69909),
(@RAID_DIFF_25N + 69910, 0, 0, 0, 0, 0, 47769, 47780, 47781, 0, 'Drakkari Frost Warden', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69910),
(@RAID_DIFF_25N + 69911, 0, 0, 0, 0, 0, 47760, 0, 0, 0, 'Zandalari Warlord', '', '', 0, 92, 92, 0, 14, 14, 0, 1, 1.14286, 1, 1, 30000, 55000, 0, 42000, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 69911, 0, 0, 0, 0, 0, 0, 0, 0, 140414, 140422, 134856, 0, 0, 0, 0, 0, 0, 0, 11401, 11401, 'SmartAI', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 109125471, 0, '', 1,0),
(@RAID_DIFF_25N + 69916, 0, 0, 0, 0, 0, 48181, 0, 0, 0, 'Gurubashi Berserker', '', '', 0, 92, 92, 0, 14, 14, 0, 1, 1.14286, 1, 1, 30000, 55000, 0, 42000, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 69916, 0, 0, 0, 0, 0, 0, 0, 0, 138540, 138427, 138693, 0, 0, 0, 0, 0, 0, 0, 11408, 11408, 'SmartAI', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 109133791, 0, '', 1,0),
(@RAID_DIFF_25N + 69927, 0, 0, 0, 0, 0, 47885, 0, 0, 0, 'Zandalari Prelate', '', '', 0, 92, 92, 4, 16, 16, 0, 2.8, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 1000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 171, 1, 0, 0, '', 17614,69927),
(@RAID_DIFF_25N + 70557, 0, 0, 0, 0, 0, 48121, 0, 0, 0, 'Zandalari Prophet', '', '', 0, 92, 92, 4, 16, 16, 0, 2.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 171, 1, 0, 0, '', 17614,70557),

(@RAID_DIFF_10H + 69078, 0, 0, 0, 0, 0, 47505, 0, 0, 0, 'Sul the Sandcrawler', '', '', 0, 93, 93, 4, 16, 16, 0, 2, 1.714286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2670, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69078),
(@RAID_DIFF_10H + 69131, 0, 0, 0, 0, 0, 47506, 0, 0, 0, 'Frost King Malakk', '', '', 0, 93, 93, 4, 16, 16, 0, 2, 1.714286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2665, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69131),
(@RAID_DIFF_10H + 69132, 0, 0, 0, 0, 0, 47730, 0, 0, 0, 'High Priestess Mar\'li', '', '', 0, 93, 93, 4, 16, 16, 0, 1, 1.14286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000000, 3100000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69132),
(@RAID_DIFF_10H + 69134, 0, 0, 0, 0, 0, 47229, 0, 0, 0, 'Kazra\'jin', '', '', 0, 93, 93, 4, 16, 16, 0, 5.6, 2, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2669, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 912, 1, 0, 0, '', 17614,0),
(@RAID_DIFF_10H + 69899, 0, 0, 0, 0, 0, 47775, 47782, 47783, 47784, 'Farraki Sand Conjurer', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69899),
(@RAID_DIFF_10H + 69905, 0, 0, 0, 0, 0, 47766, 47767, 0, 0, 'Gurubashi Berserker', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69905),
(@RAID_DIFF_10H + 69906, 0, 0, 0, 0, 0, 47761, 47762, 0, 0, 'Zandalari High Priest', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69906),
(@RAID_DIFF_10H + 69909, 0, 0, 0, 0, 0, 22307, 22308, 47335, 47336, 'Amani\'shi Flame Chanter', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69909),
(@RAID_DIFF_10H + 69910, 0, 0, 0, 0, 0, 47769, 47780, 47781, 0, 'Drakkari Frost Warden', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69910),
(@RAID_DIFF_10H + 69911, 0, 0, 0, 0, 0, 47760, 0, 0, 0, 'Zandalari Warlord', '', '', 0, 92, 92, 0, 14, 14, 0, 1, 1.14286, 1, 1, 30000, 55000, 0, 42000, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 69911, 0, 0, 0, 0, 0, 0, 0, 0, 140414, 140422, 134856, 0, 0, 0, 0, 0, 0, 0, 11401, 11401, 'SmartAI', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 109125471, 0, '', 1,0),
(@RAID_DIFF_10H + 69916, 0, 0, 0, 0, 0, 48181, 0, 0, 0, 'Gurubashi Berserker', '', '', 0, 92, 92, 0, 14, 14, 0, 1, 1.14286, 1, 1, 30000, 55000, 0, 42000, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 69916, 0, 0, 0, 0, 0, 0, 0, 0, 138540, 138427, 138693, 0, 0, 0, 0, 0, 0, 0, 11408, 11408, 'SmartAI', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 109133791, 0, '', 1,0),
(@RAID_DIFF_10H + 69927, 0, 0, 0, 0, 0, 47885, 0, 0, 0, 'Zandalari Prelate', '', '', 0, 92, 92, 4, 16, 16, 0, 2.8, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 1000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 171, 1, 0, 0, '', 17614,69927),
(@RAID_DIFF_10H + 70557, 0, 0, 0, 0, 0, 48121, 0, 0, 0, 'Zandalari Prophet', '', '', 0, 92, 92, 4, 16, 16, 0, 2.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 171, 1, 0, 0, '', 17614,70557),

(@RAID_DIFF_25H + 69078, 0, 0, 0, 0, 0, 47505, 0, 0, 0, 'Sul the Sandcrawler', '', '', 0, 93, 93, 4, 16, 16, 0, 2, 1.714286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2670, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69078),
(@RAID_DIFF_25H + 69131, 0, 0, 0, 0, 0, 47506, 0, 0, 0, 'Frost King Malakk', '', '', 0, 93, 93, 4, 16, 16, 0, 2, 1.714286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2665, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69131),
(@RAID_DIFF_25H + 69132, 0, 0, 0, 0, 0, 47730, 0, 0, 0, 'High Priestess Mar\'li', '', '', 0, 93, 93, 4, 16, 16, 0, 1, 1.14286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000000, 3100000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69132),
(@RAID_DIFF_25H + 69134, 0, 0, 0, 0, 0, 47229, 0, 0, 0, 'Kazra\'jin', '', '', 0, 93, 93, 4, 16, 16, 0, 5.6, 2, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2669, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 912, 1, 0, 0, '', 17614,0),
(@RAID_DIFF_25H + 69899, 0, 0, 0, 0, 0, 47775, 47782, 47783, 47784, 'Farraki Sand Conjurer', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69899),
(@RAID_DIFF_25H + 69905, 0, 0, 0, 0, 0, 47766, 47767, 0, 0, 'Gurubashi Berserker', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69905),
(@RAID_DIFF_25H + 69906, 0, 0, 0, 0, 0, 47761, 47762, 0, 0, 'Zandalari High Priest', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69906),
(@RAID_DIFF_25H + 69909, 0, 0, 0, 0, 0, 22307, 22308, 47335, 47336, 'Amani\'shi Flame Chanter', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69909),
(@RAID_DIFF_25H + 69910, 0, 0, 0, 0, 0, 47769, 47780, 47781, 0, 'Drakkari Frost Warden', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69910),
(@RAID_DIFF_25H + 69911, 0, 0, 0, 0, 0, 47760, 0, 0, 0, 'Zandalari Warlord', '', '', 0, 92, 92, 0, 14, 14, 0, 1, 1.14286, 1, 1, 30000, 55000, 0, 42000, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 69911, 0, 0, 0, 0, 0, 0, 0, 0, 140414, 140422, 134856, 0, 0, 0, 0, 0, 0, 0, 11401, 11401, 'SmartAI', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 109125471, 0, '', 1,0),
(@RAID_DIFF_25H + 69916, 0, 0, 0, 0, 0, 48181, 0, 0, 0, 'Gurubashi Berserker', '', '', 0, 92, 92, 0, 14, 14, 0, 1, 1.14286, 1, 1, 30000, 55000, 0, 42000, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 69916, 0, 0, 0, 0, 0, 0, 0, 0, 138540, 138427, 138693, 0, 0, 0, 0, 0, 0, 0, 11408, 11408, 'SmartAI', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 109133791, 0, '', 1,0),
(@RAID_DIFF_25H + 69927, 0, 0, 0, 0, 0, 47885, 0, 0, 0, 'Zandalari Prelate', '', '', 0, 92, 92, 4, 16, 16, 0, 2.8, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 1000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 171, 1, 0, 0, '', 17614,69927),
(@RAID_DIFF_25H + 70557, 0, 0, 0, 0, 0, 48121, 0, 0, 0, 'Zandalari Prophet', '', '', 0, 92, 92, 4, 16, 16, 0, 2.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 171, 1, 0, 0, '', 17614,70557),

(@RAID_DIFF_25R + 69078, 0, 0, 0, 0, 0, 47505, 0, 0, 0, 'Sul the Sandcrawler', '', '', 0, 93, 93, 4, 16, 16, 0, 2, 1.714286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2670, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69078),
(@RAID_DIFF_25R + 69131, 0, 0, 0, 0, 0, 47506, 0, 0, 0, 'Frost King Malakk', '', '', 0, 93, 93, 4, 16, 16, 0, 2, 1.714286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2665, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69131),
(@RAID_DIFF_25R + 69132, 0, 0, 0, 0, 0, 47730, 0, 0, 0, 'High Priestess Mar\'li', '', '', 0, 93, 93, 4, 16, 16, 0, 1, 1.14286, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000000, 3100000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, '', 17614,69132),
(@RAID_DIFF_25R + 69134, 0, 0, 0, 0, 0, 47229, 0, 0, 0, 'Kazra\'jin', '', '', 0, 93, 93, 4, 16, 16, 0, 5.6, 2, 1, 3, 17839, 24339, 0, 51299, 1, 2000, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2669, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 912, 1, 0, 0, '', 17614,0),
(@RAID_DIFF_25R + 69899, 0, 0, 0, 0, 0, 47775, 47782, 47783, 47784, 'Farraki Sand Conjurer', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69899),
(@RAID_DIFF_25R + 69905, 0, 0, 0, 0, 0, 47766, 47767, 0, 0, 'Gurubashi Berserker', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 1, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69905),
(@RAID_DIFF_25R + 69906, 0, 0, 0, 0, 0, 47761, 47762, 0, 0, 'Zandalari High Priest', '', '', 0, 92, 92, 4, 16, 16, 0, 4.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69906),
(@RAID_DIFF_25R + 69909, 0, 0, 0, 0, 0, 22307, 22308, 47335, 47336, 'Amani\'shi Flame Chanter', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69909),
(@RAID_DIFF_25R + 69910, 0, 0, 0, 0, 0, 47769, 47780, 47781, 0, 'Drakkari Frost Warden', '', '', 0, 92, 92, 4, 16, 16, 0, 1, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 174, 1, 0, 0, '', 17614,69910),
(@RAID_DIFF_25R + 69911, 0, 0, 0, 0, 0, 47760, 0, 0, 0, 'Zandalari Warlord', '', '', 0, 92, 92, 0, 14, 14, 0, 1, 1.14286, 1, 1, 30000, 55000, 0, 42000, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 69911, 0, 0, 0, 0, 0, 0, 0, 0, 140414, 140422, 134856, 0, 0, 0, 0, 0, 0, 0, 11401, 11401, 'SmartAI', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 109125471, 0, '', 1,0),
(@RAID_DIFF_25R + 69916, 0, 0, 0, 0, 0, 48181, 0, 0, 0, 'Gurubashi Berserker', '', '', 0, 92, 92, 0, 14, 14, 0, 1, 1.14286, 1, 1, 30000, 55000, 0, 42000, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 69916, 0, 0, 0, 0, 0, 0, 0, 0, 138540, 138427, 138693, 0, 0, 0, 0, 0, 0, 0, 11408, 11408, 'SmartAI', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 109133791, 0, '', 1,0),
(@RAID_DIFF_25R + 69927, 0, 0, 0, 0, 0, 47885, 0, 0, 0, 'Zandalari Prelate', '', '', 0, 92, 92, 4, 16, 16, 0, 2.8, 1.14286, 1, 1, 11839, 17339, 0, 45299, 1, 1000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 171, 1, 0, 0, '', 17614,69927),
(@RAID_DIFF_25R + 70557, 0, 0, 0, 0, 0, 48121, 0, 0, 0, 'Zandalari Prophet', '', '', 0, 92, 92, 4, 16, 16, 0, 2.8, 1.71429, 1, 1, 11839, 17339, 0, 45299, 1, 2000, 2000, 8, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 171, 1, 0, 0, '', 17614,70557);
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Updates
-- Creature Trash Mobs Damage, HP, LootId
-- Base HP Gamepedia Raid 25N
-- 25R -10%
-- 25H +25%
-- 10N (BASE HP: 25 = X : 10)
-- 10H=(10N+25%)

-- Script Names
-- UPDATE creature_template SET ScriptName = "npc_council_event_helper" WHERE entry = 662203;
UPDATE creature_template SET ScriptName = "boss_frost_king_malakk" WHERE entry = 69131;
UPDATE creature_template SET ScriptName = "boss_kazrajin" WHERE entry = 69134;
UPDATE creature_template SET ScriptName = "boss_sul_the_sandcrawler" WHERE entry = 69078;
UPDATE creature_template SET ScriptName = "boss_high_priestess_marli" WHERE entry = 69132;
UPDATE creature_template SET ScriptName = "mob_garajals_soul" WHERE entry = 69182;
UPDATE creature_template SET ScriptName = "mob_quicksand_stalker" WHERE entry = 662205;
UPDATE creature_template SET ScriptName = "mob_living_sand" WHERE entry = 69153;
UPDATE creature_template SET ScriptName = "mob_blessed_loa_spirit" WHERE entry = 69480;
UPDATE creature_template SET ScriptName = "mob_shadowed_loa_spirit" WHERE entry = 69548;
-- UPDATE creature_template SET ScriptName = "mob_twisted_fate_helper" WHERE entry = 662204;
UPDATE creature_template SET ScriptName = "mob_twisted_fate" WHERE entry IN (69740, 69746);

-- Immunity and bind bosses
UPDATE creature_template SET flags_extra = flags_extra | 1, mechanic_immune_mask = 667893759 WHERE entry IN 
(69078,69131,69132,69134);

-- Difficulty entries bosses and Trash Mobs
UPDATE creature_template SET difficulty_entry_3 = @RAID_DIFF_10N + entry, difficulty_entry_4 = @RAID_DIFF_25N + entry, difficulty_entry_5 = @RAID_DIFF_10H + entry, difficulty_entry_6 = @RAID_DIFF_25H + entry, difficulty_entry_7 = @RAID_DIFF_25R + entry WHERE entry IN 
(69078,69131,69132,69134,69899,69905,69906,69909,69910,69911,69916,69927,70557);

-- Farraki Sand Conjurer
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69899, dmg_multiplier = 5, Health_Mod = 3237830  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10N + 69899;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69899, dmg_multiplier = 6, Health_Mod = 4047287  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10H + 69899;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69899, dmg_multiplier = 8, Health_Mod = 8094576  / @HP_MOD_92 WHERE entry = @RAID_DIFF_25N + 69899;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69899, dmg_multiplier = 9, Health_Mod = 10118220 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25H + 69899;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69899, dmg_multiplier = 7, Health_Mod = 7285118  / @HP_MOD_92 WHERE entry = @RAID_DIFF_25R + 69899;

-- Gurubashi Berserker
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69905, dmg_multiplier = 5, Health_Mod = 5059103  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10N + 69905;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69905, dmg_multiplier = 6, Health_Mod = 6323879  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10H + 69905;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69905, dmg_multiplier = 8, Health_Mod = 12647759 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25N + 69905;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69905, dmg_multiplier = 9, Health_Mod = 15809698 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25H + 69905;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69905, dmg_multiplier = 7, Health_Mod = 11382983 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25R + 69905;

-- Zandalari High Priest
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69906, dmg_multiplier = 5, Health_Mod = 5059110  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10N + 69906;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69906, dmg_multiplier = 6, Health_Mod = 6323887  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10H + 69906;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69906, dmg_multiplier = 8, Health_Mod = 12647775 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25N + 69906;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69906, dmg_multiplier = 9, Health_Mod = 15809718 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25H + 69906;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69906, dmg_multiplier = 7, Health_Mod = 11382997 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25R + 69906;

-- Amani'shi Flame Chanter
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69909, dmg_multiplier = 3, Health_Mod = 4047288  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10N + 69909;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69909, dmg_multiplier = 4, Health_Mod = 5059110  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10H + 69909;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69909, dmg_multiplier = 6, Health_Mod = 10118220 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25N + 69909;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69909, dmg_multiplier = 7, Health_Mod = 12647775 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25H + 69909;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69909, dmg_multiplier = 5, Health_Mod = 9106398  / @HP_MOD_92 WHERE entry = @RAID_DIFF_25R + 69909;

-- Drakkari Frost Warden
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69910, dmg_multiplier = 5, Health_Mod = 3237830  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10N + 69910;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69910, dmg_multiplier = 6, Health_Mod = 4047288  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10H + 69910;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69910, dmg_multiplier = 8, Health_Mod = 8094576  / @HP_MOD_92 WHERE entry = @RAID_DIFF_25N + 69910;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69910, dmg_multiplier = 9, Health_Mod = 10118220 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25H + 69910;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69910, dmg_multiplier = 7, Health_Mod = 7285118  / @HP_MOD_92 WHERE entry = @RAID_DIFF_25R + 69910;

-- Zandalari Warlord
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69911, dmg_multiplier = 5, Health_Mod = 11804400 / @HP_MOD_92 WHERE entry = @RAID_DIFF_10N + 69911;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69911, dmg_multiplier = 6, Health_Mod = 14755500 / @HP_MOD_92 WHERE entry = @RAID_DIFF_10H + 69911;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69911, dmg_multiplier = 8, Health_Mod = 29511000 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25N + 69911;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69911, dmg_multiplier = 9, Health_Mod = 36888750 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25H + 69911;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69911, dmg_multiplier = 7, Health_Mod = 26559900 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25R + 69911;

-- Gurubashi Berserker
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69916, dmg_multiplier = 5, Health_Mod = 6268939  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10N + 69916;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69916, dmg_multiplier = 6, Health_Mod = 7836174  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10H + 69916;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69916, dmg_multiplier = 8, Health_Mod = 15672349 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25N + 69916;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69916, dmg_multiplier = 9, Health_Mod = 19590436 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25H + 69916;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69916, dmg_multiplier = 7, Health_Mod = 14105114 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25R + 69916;

-- Zandalari Prelate
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69927, dmg_multiplier = 5, Health_Mod = 6745471  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10N + 69927;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69927, dmg_multiplier = 6, Health_Mod = 8431839  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10H + 69927;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69927, dmg_multiplier = 8, Health_Mod = 16863678 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25N + 69927;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69927, dmg_multiplier = 9, Health_Mod = 21079597 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25H + 69927;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69927, dmg_multiplier = 7, Health_Mod = 15177310 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25R + 69927;

-- Zandalari Prophet
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 70557, dmg_multiplier = 5, Health_Mod = 4856745  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10N + 70557;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 70557, dmg_multiplier = 6, Health_Mod = 6070931  / @HP_MOD_92 WHERE entry = @RAID_DIFF_10H + 70557;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 70557, dmg_multiplier = 8, Health_Mod = 12141863 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25N + 70557;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 70557, dmg_multiplier = 9, Health_Mod = 15177328 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25H + 70557;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 70557, dmg_multiplier = 7, Health_Mod = 10927676 / @HP_MOD_92 WHERE entry = @RAID_DIFF_25R + 70557;

-- Sul the Sandcrawler
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69078, dmg_multiplier = 6, Health_Mod = 89844224  / @HP_MOD_93 WHERE entry = @RAID_DIFF_10N + 69078;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69078, dmg_multiplier = 7, Health_Mod = 112305280 / @HP_MOD_93 WHERE entry = @RAID_DIFF_10H + 69078;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69078, dmg_multiplier = 9, Health_Mod = 224610560 / @HP_MOD_93 WHERE entry = @RAID_DIFF_25N + 69078;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69078, dmg_multiplier = 10,Health_Mod = 280763200 / @HP_MOD_93 WHERE entry = @RAID_DIFF_25H + 69078;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69078, dmg_multiplier = 8, Health_Mod = 202149504 / @HP_MOD_93 WHERE entry = @RAID_DIFF_25R + 69078;

-- Frost King Malakk
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69131, dmg_multiplier = 6, Health_Mod = 89844224  / @HP_MOD_93 WHERE entry = @RAID_DIFF_10N + 69131;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69131, dmg_multiplier = 7, Health_Mod = 112305280 / @HP_MOD_93 WHERE entry = @RAID_DIFF_10H + 69131;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69131, dmg_multiplier = 9, Health_Mod = 224610560 / @HP_MOD_93 WHERE entry = @RAID_DIFF_25N + 69131;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69131, dmg_multiplier = 10,Health_Mod = 280763200 / @HP_MOD_93 WHERE entry = @RAID_DIFF_25H + 69131;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69131, dmg_multiplier = 8, Health_Mod = 202149504 / @HP_MOD_93 WHERE entry = @RAID_DIFF_25R + 69131;

-- High Priestess Mar'li
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69132, dmg_multiplier = 6, Health_Mod = 89844224  / @HP_MOD_93 WHERE entry = @RAID_DIFF_10N + 69132;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69132, dmg_multiplier = 7, Health_Mod = 112305280 / @HP_MOD_93 WHERE entry = @RAID_DIFF_10H + 69132;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69132, dmg_multiplier = 9, Health_Mod = 224610560 / @HP_MOD_93 WHERE entry = @RAID_DIFF_25N + 69132;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69132, dmg_multiplier = 10,Health_Mod = 280763200 / @HP_MOD_93 WHERE entry = @RAID_DIFF_25H + 69132;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69132, dmg_multiplier = 8, Health_Mod = 202149504 / @HP_MOD_93 WHERE entry = @RAID_DIFF_25R + 69132;

-- Kazra'jin
UPDATE creature_template SET LootId = @RAID_DIFF_10N + 69134, dmg_multiplier = 6, Health_Mod = 89844224  / @HP_MOD_93 WHERE entry = @RAID_DIFF_10N + 69134;
UPDATE creature_template SET LootId = @RAID_DIFF_10H + 69134, dmg_multiplier = 7, Health_Mod = 112305280 / @HP_MOD_93 WHERE entry = @RAID_DIFF_10H + 69134;
UPDATE creature_template SET LootId = @RAID_DIFF_25N + 69134, dmg_multiplier = 9, Health_Mod = 224610560 / @HP_MOD_93 WHERE entry = @RAID_DIFF_25N + 69134;
UPDATE creature_template SET LootId = @RAID_DIFF_25H + 69134, dmg_multiplier = 10,Health_Mod = 280763200 / @HP_MOD_93 WHERE entry = @RAID_DIFF_25H + 69134;
UPDATE creature_template SET LootId = @RAID_DIFF_25R + 69134, dmg_multiplier = 8, Health_Mod = 202149504 / @HP_MOD_93 WHERE entry = @RAID_DIFF_25R + 69134;
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Creature Equip
REPLACE INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES 
(69078, 93238, 0, 0),
(69131, 93798, 93798, 0),
(69132, 94313, 0, 0),
(69899, 93238, 0, 0),
(69905, 90001, 90007, 0),
(69906, 94134, 0, 0),
(69909, 93241, 0, 0),
(69910, 94118, 94194, 0),
(69927, 94122, 94193, 0),
(70557, 94248, 0, 0);
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Creature Spawn
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`,`protec_anti_doublet`) VALUES
(@CGUID+46, 69078, 1098, 0, 0, 248, 1, 0, 69078, 6068.75, 5396.01, 136.171, 2.32446, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+47, 69131, 1098, 0, 0, 248, 1, 0, 69131, 6025.24, 5393.14, 136.171, 0.699817, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+48, 69132, 1098, 0, 0, 248, 1, 0, 69132, 6035.9, 5385.33, 136.171, 1.17586, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+49, 69134, 1098, 0, 0, 248, 1, 0, 0, 6056.48, 5386.44, 136.171, 2.11191, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+50, 69899, 1098, 0, 0, 248, 1, 0, 69899, 6017.28, 5743.1, 123.242, 0.152315, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+51, 69899, 1098, 0, 0, 248, 1, 0, 69899, 5873.9, 5754.04, 129.03, 3.14486, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+52, 69899, 1098, 0, 0, 248, 1, 0, 69899, 5762.38, 5738.08, 124.047, 2.81813, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+53, 69899, 1098, 0, 0, 248, 1, 0, 0, 5663.36, 5768.88, 124.073, 3.64997, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+54, 69899, 1098, 0, 0, 248, 1, 0, 0, 5663.44, 5738.31, 124.072, 2.81813, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+55, 69899, 1098, 0, 0, 248, 1, 0, 0, 5762.89, 5769.07, 124.047, 3.53284, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+56, 69905, 1098, 0, 0, 248, 1, 0, 0, 5584.47, 5753.58, 124.096, 3.13424, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+57, 69905, 1098, 0, 0, 248, 1, 0, 0, 5651.97, 5753.4, 124.096, 3.1587, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+58, 69906, 1098, 0, 0, 248, 1, 0, 69906, 5857.67, 5741.87, 124.302, 3.20745, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+59, 69906, 1098, 0, 0, 248, 1, 0, 69906, 5857.61, 5765.46, 124.046, 3.20745, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+60, 69906, 1098, 0, 0, 248, 1, 0, 69906, 6039.14, 5765.86, 123.242, 4.64115, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+61, 69906, 1098, 0, 0, 248, 1, 0, 0, 5753.83, 5753.79, 123.953, 3.10666, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+62, 69909, 1098, 0, 0, 248, 1, 0, 69909, 5869.17, 5760.24, 126.903, 3.20745, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+63, 69909, 1098, 0, 0, 248, 1, 0, 69909, 6057.98, 5745.58, 123.242, 3.13719, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+64, 69909, 1098, 0, 0, 248, 1, 0, 0, 5592.1, 5763.32, 124.096, 3.30104, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+65, 69909, 1098, 0, 0, 248, 1, 0, 0, 5655.54, 5761.32, 124.096, 3.53003, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+66, 69909, 1098, 0, 0, 248, 1, 0, 0, 5753.12, 5763.39, 123.953, 3.53003, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+67, 69910, 1098, 0, 0, 248, 1, 0, 69910, 5869.4, 5746.92, 126.927, 3.12549, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+68, 69910, 1098, 0, 0, 248, 1, 0, 69910, 6034.67, 5724.74, 123.242, 1.44532, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+69, 69910, 1098, 0, 0, 248, 1, 0, 0, 5592.06, 5743.87, 124.096, 3.05921, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+70, 69910, 1098, 0, 0, 248, 1, 0, 0, 5655.31, 5745.27, 124.096, 2.84562, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+71, 69910, 1098, 0, 0, 248, 1, 0, 0, 5752.58, 5744.31, 123.953, 2.84562, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+72, 69911, 1098, 0, 0, 248, 1, 0, 0, 6037.76, 5744.68, 123.84, 3.94453, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+73, 69916, 1098, 0, 0, 248, 1, 0, 0, 5849.38, 5753.12, 123.385, 3.14292, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+74, 69916, 1098, 0, 0, 248, 1, 0, 0, 5716.64, 5754.24, 123.099, 3.12866, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+75, 69927, 1098, 0, 0, 248, 1, 0, 69927, 6049.02, 5549.85, 123.907, 1.57388, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+76, 69927, 1098, 0, 0, 248, 1, 0, 69927, 5990.56, 5492.3, 131.652, 1.58347, 86400, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+77, 69927, 1098, 0, 0, 248, 1, 0, 69927, 6076.57, 5539.53, 123.908, 3.11403, 86400, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+78, 69927, 1098, 0, 0, 248, 1, 0, 0, 5990.88, 5532.83, 123.907, 4.69265, 86400, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+79, 69927, 1098, 0, 0, 248, 1, 0, 0, 6102.31, 5506.21, 124.686, 1.5339, 86400, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+80, 70557, 1098, 0, 0, 248, 1, 0, 70557, 5971.24, 5763.1, 123.997, 6.27124, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+81, 70557, 1098, 0, 0, 248, 1, 0, 70557, 5971.68, 5744.31, 123.993, 0.0670589, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+82, 70557, 1098, 0, 0, 248, 1, 0, 70557, 5985, 5481.58, 136.092, 1.58054, 86400, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+83, 70557, 1098, 0, 0, 248, 1, 0, 70557, 6033.63, 5677.82, 124.087, 1.55757, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+84, 70557, 1098, 0, 0, 248, 1, 0, 70557, 6042.95, 5557.03, 123.907, 1.55951, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+85, 70557, 1098, 0, 0, 248, 1, 0, 70557, 6025.1, 5536.17, 123.907, 0.069091, 86400, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+86, 70557, 1098, 0, 0, 248, 1, 0, 70557, 6058.24, 5678.03, 124.074, 1.58991, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+87, 70557, 1098, 0, 0, 248, 1, 0, 70557, 6079.19, 5533.8, 123.908, 3.11403, 86400, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+88, 70557, 1098, 0, 0, 248, 1, 0, 0, 5987.32, 5538.04, 123.907, 4.02757, 86400, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+89, 70557, 1098, 0, 0, 248, 1, 0, 0, 5996.28, 5486.42, 134.6, 1.58102, 86400, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+90, 70557, 1098, 0, 0, 248, 1, 0, 0, 6096.42, 5500.65, 127.673, 1.54294, 86400, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(@CGUID+91, 70557, 1098, 0, 0, 248, 1, 0, 0, 6103.13, 5539.81, 123.907, 2.33145, 86400, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL);
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Creature Speeches
DELETE FROM `creature_text` WHERE `entry` IN (69078,69131,69132,69134,70056);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(69078, 0,  0, 'Da sands will consume everyting!', 14, 0, 100, 0, 0, 35812, 'Sul the Sandcrawler - Aggro'),
(69078, 1,  0, 'I will bury ya all!', 14, 0, 100, 0, 0, 35813, 'Sul the Sandcrawler - On Possess'),
(69078, 2,  0, 'Da storm approaches!', 14, 0, 100, 0, 0, 35818, 'Sul the Sandcrawler - Sandstorm'),
(69078, 3,  0, 'Watch yer step!', 14, 0, 100, 0, 0, 35817, 'Sul the Sandcrawler - Quicksand'),
(69078, 4,  0, 'Da sands are endless.', 14, 0, 100, 0, 0, '35815', 'Sul the Sandcrawler - Kill01'),
(69078, 4,  1, 'Da first of many!', 14, 0, 100, 0, 0, '35816', 'Sul the Sandcrawler - Kill02'),
(69078, 5,  0, 'I return... to... da... sands...', 14, 0, 100, 0, 0, '36454', 'Sul the Sandcrawler - On Death'),

(69131, 0,  0, 'Ya have met your match, fools!', 14, 0, 100, 0, 0, 35387, 'Frost King Malakk - Aggro'),
(69131, 1,  0, 'Winter is coming...', 14, 0, 100, 0, 0, 35389, 'Frost King Malakk - On Possess'),
(69131, 2,  0, 'Getting cold?', 14, 0, 100, 0, 0, 35393, 'Frost King Malakk - Frostbite'),
(69131, 2,  1, 'Freeze!', 14, 0, 100, 0, 0, 35394, 'Frost King Malakk - Frostbite'),
(69131, 3,  0, 'Death\'s cold embrace.', 14, 0, 100, 0, 0, 35391, 'Frost King Malakk - Kill01'),
(69131, 3,  1, 'Witness da Drakkari\'s might.', 14, 0, 100, 0, 0, 35392, 'Frost King Malakk - Kill02'),
(69131, 4,  0, 'Da... empire... can\'t... fall...', 14, 0, 100, 0, 0, 35388, 'Frost King Malakk - On Death'),

(69132, 0,  0, 'Death ta all who appose da empire!', 14, 0, 100, 0, 0, 35432, 'High Priestess Marli - On Aggro'),
(69132, 1,  0, 'Da spiritbinder reveals yer soul ta me!', 14, 0, 100, 0, 0, 35434, 'High Priestess Marli - On Possess'),
(69132, 2,  0, 'Succumb ta her venom!', 14, 0, 100, 0, 0, 35438, 'High Priestess Marli - Shadowed Loa Spirit'),
(69132, 2,  1, 'Yer soul belongs ta me!', 14, 0, 100, 0, 0, 35439, 'High Priestess Marli - Shadowed Loa Spirit'),
(69132, 2,  2, 'Embrace yer demise!', 14, 0, 100, 0, 0, 35440, 'High Priestess Marli - Shadowed Loa Spirit'),
(69132, 3,  0, 'Another offering to da loa!', 14, 0, 100, 0, 0, 35436, 'High Priestess Marli - Kill01'),
(69132, 3,  1, 'She will feast on yer soul!', 14, 0, 100, 0, 0, 35437, 'High Priestess Marli - Kill02'),
(69132, 4,  0, 'Shadra... save... me...', 14, 0, 100, 0, 0, 35433, 'High Priestess Marli - On Death'),

(69134, 0,  0, 'Dis is gonna hurt!', 14, 0, 100, 0, 0, 35566, 'Kazrajin - Aggro'),
(69134, 1,  0, 'Lei Shen! Give us strenght!', 14, 0, 100, 0, 0, 35568, 'Kazrajin - On Possess'),
(69134, 2,  0, 'Incoming!', 14, 0, 100, 0, 0, 35574, 'Kazrajin - Reckless Charge'),
(69134, 2,  1, 'Out da way!', 14, 0, 100, 0, 0, 35573, 'Kazrajin - Reckless Charge'),
(69134, 3,  0, 'Shocking!', 14, 0, 100, 0, 0, 35576, 'Kazrajin - Overload /Discharge'),
(69134, 4,  0, 'Ya shouldn\'t be messin\' wit da Zandalari!', 14, 0, 100, 0, 0, 35571, 'Kazrajin - Kill01'),
(69134, 4,  1, 'On ya knees!', 14, 0, 100, 0, 0, '35572', 'Kazrajin - Kill02'),
(69134, 5,  0, 'Da thunder king... promised...', 14, 0, 100, 0, 0, 35567, 'Kazrajin - On Death'),

(70056, 0,  0, 'Let me share dis gift with ya!', 14, 0, 100, 11, 0, 35395, 'Gara\'jal the Spiritbinder- Event01'),
(70056, 1,  0, 'Ya\' spirit is mine', 14, 0, 100, 11, 0, 35396, 'Gara\'jal the Spiritbinder- Event02'),
(70056, 2,  0, 'De Thunder King will reward us for stoppin\' ya!', 14, 0, 100, 11, 0, 35397, 'Gara\'jal the Spiritbinder- Event03'),
(70056, 3,  0, 'Witness the power of da spiritbinder!', 14, 0, 100, 11, 0, '35398', 'Gara\'jal the Spiritbinder- Event04'),
(70056, 4,  0, 'Time to die!', 14, 0, 100, 0, 0, '35399', 'Gara\'jal the Spiritbinder- Event05'),
(70056, 5,  0, 'Da Zandalari cannot be stopped!', 14, 0, 100, 53, 0, 35400, 'Gara\'jal the Spiritbinder- Event06'),
(70056, 6,  0, 'Wit de Thunder King\'s power de Zandalari will be reborn!', 14, 0, 100, 53, 0, 35401, 'Gara\'jal the Spiritbinder- Event07'),
(70056, 7,  0, 'Lei Shen\'s power makes us stronger', 14, 0, 100, 53, 0, 35402, 'Gara\'jal the Spiritbinder- Event08'),
(70056, 8,  0, 'Ya\' soul will pay da price', 14, 0, 100, 0, 0, 35403, 'Gara\'jal the Spiritbinder- Event09'),
(70056, 9,  0, 'Des fools thought they beat me once before. Dey only make me stronger. Now we show dem da true power of the Zandalari!', 14, 0, 100, 11, 0, 35404,  'Gara\'jal the Spiritbinder- Event10'),
(70056, 10, 0, 'Lei Shen let us prove ta ya the might of the Zandalari. We will crush des intruders where dey stand!', 14, 0, 100, 0, 0, 35405, 'Gara\'jal the Spiritbinder- Event11'),
(70056, 11, 0, 'We will never fail ya!', 14, 0, 100, 0, 0, 35406, 'Gara\'jal the Spiritbinder- Event12');
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Gameobjects templates
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
(218657, 0, 13679, 'Zandalari Council Exit - Inner', '', '', '', 1375, 48, 0.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 17658),
(218658, 0, 13679, 'Zandalari Council Door', '', '', '', 1375, 32, 0.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 17658),
(218659, 0, 13679, 'Zandalari Council Trash Door One - Outer', '', '', '', 1375, 48, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 17658),
(218660, 0, 13679, 'Zandalari Council Door', '', '', '', 1375, 32, 0.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 17658),
(218661, 0, 13679, 'Zandalari Council Trash Door Two - Outer', '', '', '', 1375, 48, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 17658),
(218668, 0, 13679, 'Wrought Iron Door', '', '', '', 1375, 48, 0.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 17658);
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Gameobjects spawns
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+9, 218657, 1098, 760, 1, 6045.99, 5331.18, 141.935, 4.71239, 0, 0, 1, -4.37114E-8, 86400, 255, 1),
(@OGUID+10, 218658, 1098, 760, 1, 5883.67, 5753.58, 130.073, 3.14159, 0, 0, 1, -4.37114E-8, 86400, 255, 1),
(@OGUID+11, 218659, 1098, 760, 1, 5944.73, 5753.58, 130.073, 3.14159, 0, 0, 1, -4.37114E-8, 86400, 255, 0),
(@OGUID+12, 218660, 1098, 760, 1, 6046.06, 5652.13, 130.073, 4.71239, 0, 0, 1, -4.37114E-8, 86400, 255, 1),
(@OGUID+13, 218661, 1098, 760, 1, 6046.1, 5591.22, 130.073, 4.71239, 0, 0, 1, -4.37114E-8, 86400, 255, 0),
(@OGUID+14, 218668, 1098, 760, 1, 5627.85, 5753.58, 124.029, 3.14159, 0, 0, 1, -4.37114E-8, 86400, 255, 0);
/*---------------------------------------------------------------------------------------------------------------*/
/* END Council of Elders */





/* Other Stuff */
/*---------------------------------------------------------------------------------------------------------------*/
-- Creature Model
REPLACE INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`) VALUES
(169, 0.903, 2, 2),
(958, 1.122, 0.9, 2),
(1126, 2, 2, 2),
(11686, 0.5, 1, 2),
(15963, 1.5, 2.5, 2),
(22263, 0.625, 2.7, 0),
(22307, 0.5902774, 2.55, 0),
(22308, 0.5902774, 2.55, 0),
(23767, 0.39, 1, 2),
(27056, 0.465, 1.5, 0),
(27510, 0.75, 2.5, 2),
(28118, 0.3672, 1.8, 1),
(28120, 0.306, 1.5, 0),
(28133, 1.75, 5.25, 2),
(32832, 5, 10, 2),
(39633, 0.5, 1, 2),
(42055, 1.95, 5, 2),
(42413, 2, 5, 0),
(44690, 2.0175, 2.25, 2),
(44691, 2.69, 3, 2),
(45735, 0.45, 2.25, 0),
(46559, 20, 30, 0),
(46675, 4.5, 13.5, 2),
(46683, 1.5, 5, 2),
(46710, 0.5, 1, 2),
(46803, 0.383, 1.5, 1),
(47189, 6, 29, 2),
(47229, 3, 4.5, 0),
(47230, 1.041666, 4.5, 0),
(47325, 3.5, 24.5, 2),
(47331, 0.868055, 3.75, 0),
(47332, 0.868055, 3.75, 0),
(47333, 0.868055, 3.75, 0),
(47334, 0.868055, 3.75, 0),
(47335, 0.5902774, 2.55, 0),
(47336, 0.5902774, 2.55, 0),
(47338, 0.6249996, 2.7, 0),
(47341, 2.5, 1.5, 0),
(47378, 0.765, 3.75, 1),
(47414, 0, 0, 2),
(47442, 0.612, 3, 0),
(47443, 0.612, 3, 0),
(47446, 0.465, 1.5, 0),
(47475, 0.765, 3.75, 0),
(47494, 2.088, 6, 2),
(47495, 2.088, 6, 2),
(47499, 0.93, 6, 2),
(47502, 2.61, 7.5, 2),
(47505, 3, 4.5, 0),
(47506, 3, 4.5, 0),
(47507, 1.566, 4.5, 2),
(47527, 40, 16, 2),
(47528, 1.305, 3.75, 2),
(47536, 1.305, 3.75, 2),
(47552, 1.8, 18, 0),
(47556, 0.62, 2, 0),
(47557, 0.62, 2, 0),
(47558, 0.465, 1.5, 0),
(47559, 0.459, 2.25, 1),
(47561, 0.459, 2.25, 1),
(47693, 1.5, 1.5, 2),
(47698, 0.5, 1, 2),
(47730, 2.5, 3.75, 1),
(47760, 1.827, 10.5, 0),
(47761, 1.305, 3.75, 0),
(47766, 0.868055, 3.75, 0),
(47767, 0.868055, 3.75, 0),
(47769, 0.5902774, 2.55, 0),
(47775, 0.5202, 2.55, 0),
(47781, 0.5902774, 2.55, 0),
(47782, 0.5202, 2.55, 0),
(47783, 0.4896, 2.4, 1),
(47785, 10.5, 17.5, 2),
(47786, 10.5, 17.5, 2),
(47787, 0, 0, 2),
(47788, 10.5, 17.5, 2),
(47853, 0.520833, 2.25, 0),
(47885, 1.566, 4.5, 0),
(47941, 1.044, 3, 2),
(47951, 1.224, 6, 0),
(47984, 0.0465, 0.15, 0),
(47985, 0.0465, 0.15, 0),
(47986, 0.0465, 0.15, 0),
(47987, 0.0465, 0.15, 0),
(47998, 1.86, 12, 2),
(48048, 4, 1.5, 2),
(48049, 2.088, 6, 2),
(48052, 1.75, 7.5, 2),
(48121, 1.566, 4.5, 0),
(48160, 2, 2.5, 2),
(48177, 0.93, 9, 2),
(48181, 4.5, 4.5, 0),
(48183, 0.5, 1.2931, 2),
(48242, 1.52778, 25, 2),
(48245, 0, 0, 2);

DELETE FROM `creature_template_bytes` WHERE `entry` IN (54020,69135,69182,69184,69185,70056,70060,70137,70246,70341,70441,73400);
INSERT INTO `creature_template_bytes` (`entry`, `index`, `bytes`) VALUES
(54020,0,0x3000000),
(69135,0,0x2000000),
(69182,0,0x3000000),
(69184,0,0x1),
(69185,0,0x1),
(70056,0,0x3000000),
(70060,0,0x3000000),
(70137,0,0x3000000),
(70246,0,0x3000000),
(70341,0,0x3000000),
(70441,0,0x3000000),
(73400,0,0x3000000);
/*---------------------------------------------------------------------------------------------------------------*/
SET FOREIGN_KEY_CHECKS = 1;