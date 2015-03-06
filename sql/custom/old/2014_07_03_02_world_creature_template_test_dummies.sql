-- [SQL] [Internal] Corrected all Test Dummies for QA use, they can be found with .lookup creature test dummy (fixes #3130)
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `Armor_mod` = 0, `ScriptName` = 'npc_training_dummy' WHERE `entry` IN (28950, 27590, 27591);
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `faction_A` = 7, `faction_H` = 7, `Armor_mod` = 0, `ScriptName` = 'npc_training_dummy' WHERE `entry` = 67232;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `Armor_mod` = 1, `ScriptName` = 'npc_training_dummy' WHERE `entry` IN (27592, 27599, 27601, 27609, 28310, 28311);
DELETE FROM `creature_template_addon` WHERE `entry` = 28311;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
(28311, 33719);
UPDATE `creature_template` SET `npcflag` = 80 WHERE `entry` = 28245;
UPDATE `creature_template` SET `exp` = 0, `faction_A` = 7, `faction_H` = 7, `ScriptName` = 'npc_training_dummy' WHERE `entry` = 70057;
UPDATE `creature` SET `id` = 70057 WHERE `id` = 67232;
UPDATE `creature_template` SET `minlevel` = 20, `maxlevel` = 20, `faction_A` = 7, `faction_H` = 7 WHERE `entry` IN (9659, 10156);
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `faction_A` = 7, `faction_H` = 7, `mindmg` = 200, `maxdmg` = 200, `attackpower` = 0, `dmg_multiplier` = 1 WHERE `entry` = 16078;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `exp` = 2, `faction_A` = 14, `faction_H` = 14, `mindmg` = 245, `maxdmg` = 473, `attackpower` = 754, `dmg_multiplier` = 2, `ScriptName` = 'npc_training_dummy' WHERE `entry` = 30888;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `unit_class` = 2 WHERE `entry` = 28949;
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `exp` = 1, `faction_A` = 7, `faction_H` = 7, `Armor_mod` = 5, `flags_extra` = 0, `ScriptName` = 'npc_training_dummy' WHERE `entry` = 21003;
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `exp` = 1, `faction_A` = 7, `faction_H` = 7, `Armor_mod` = 1, `flags_extra` = 0, `ScriptName` = 'npc_training_dummy' WHERE `entry` = 29075;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `exp` = 2, `faction_A` = 7, `faction_H` = 7, `Armor_mod` = 5, `ScriptName` = 'npc_training_dummy' WHERE `entry` = 32853;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `exp` = 2, `faction_A` = 7, `faction_H` = 7, `ScriptName` = 'npc_training_dummy' WHERE `entry` IN (32556, 32557, 32558, 32559, 32560, 32561);
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `faction_A` = 7, `faction_H` = 7, `ScriptName` = 'npc_training_dummy' WHERE `entry` = 32794;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `faction_A` = 7, `faction_H` = 7, `ScriptName` = 'npc_training_dummy' WHERE `entry` = 42176;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `resistance1` = 90, `resistance2` = 90, `resistance3` = 90, `resistance4` = 90, `resistance5` = 90, `resistance6` = 90, `ScriptName` = 'npc_training_dummy' WHERE `entry` IN (27595, 27596);
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `exp` = 2, `faction_A` = 7, `faction_H` = 7, `mindmg` = 850, `maxdmg` = 1242, `attackpower` = 1452, `dmg_multiplier` = 13, `ScriptName` = 'npc_training_dummy' WHERE `entry` = 28280;
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82, `exp` = 2, `faction_A` = 7, `faction_H` = 7, `mindmg` = 650, `maxdmg` = 942, `attackpower` = 1223, `dmg_multiplier` = 13, `ScriptName` = 'npc_training_dummy' WHERE `entry` = 28282;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `exp` = 2, `faction_A` = 7, `faction_H` = 7, `ScriptName` = 'npc_training_dummy' WHERE `entry` = 27586;
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `exp` = 1, `faction_A` = 7, `faction_H` = 7, `unit_class` = 4 WHERE `entry` = 27239;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `unit_class` = 4 WHERE `entry` = 38863;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `unit_class` = 8 WHERE `entry` = 32848;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `exp` = 3, `faction_A` = 7, `faction_H` = 7 WHERE `entry` IN (42770, 43227);
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` IN (32848, 32849);
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 7, `faction_H` = 7, `ScriptName` = 'npc_training_dummy' WHERE `name` LIKE '%test dummy%' AND `entry` > 70056;
DELETE FROM `creature_model_info` WHERE `modelid` = 22232;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(22232, 1, 1.5, 2, 0);
UPDATE `creature_template` SET `npcflag` = 1048576 WHERE `entry` IN (29381, 29383, 29385, 29386, 29387);
DELETE FROM `battlemaster_entry` WHERE `entry` IN (29381, 29383, 29385, 29386, 29387);
INSERT INTO `battlemaster_entry` (`entry`, `bg_template`) VALUES
(29381, 5),
(29383, 4),
(29385, 8),
(29386, 11),
(29387, 10);
UPDATE creature_template SET `ScriptName` = 'npc_training_dummy' WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%unkillable%';
UPDATE creature_template SET `faction_A` = 7, `faction_H` = 7, `ScriptName` = '' WHERE `name` LIKE '%test dummy%' AND `name` NOT LIKE '%unkillable%' AND `name` LIKE '%killable%';
UPDATE creature_template SET `minlevel` = 10, `maxlevel` = 10, `exp` = 0 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%10%';
UPDATE creature_template SET `minlevel` = 20, `maxlevel` = 20, `exp` = 0 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%20%';
UPDATE creature_template SET `minlevel` = 50, `maxlevel` = 50, `exp` = 0 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%50%';
UPDATE creature_template SET `minlevel` = 54, `maxlevel` = 54, `exp` = 0 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%54%';
UPDATE creature_template SET `minlevel` = 60, `maxlevel` = 60, `exp` = 0 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%60%';
UPDATE creature_template SET `minlevel` = 63, `maxlevel` = 63, `exp` = 0 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%63%';
UPDATE creature_template SET `minlevel` = 70, `maxlevel` = 70, `exp` = 1 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%70%';
UPDATE creature_template SET `minlevel` = 72, `maxlevel` = 72, `exp` = 1 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%72%';
UPDATE creature_template SET `minlevel` = 73, `maxlevel` = 73, `exp` = 1 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%73%';
UPDATE creature_template SET `minlevel` = 80, `maxlevel` = 80, `exp` = 2 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%80%';
UPDATE creature_template SET `minlevel` = 83, `maxlevel` = 83, `exp` = 3 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%83%';
UPDATE creature_template SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%85%';
UPDATE creature_template SET `minlevel` = 87, `maxlevel` = 87, `exp` = 3 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%87%';
UPDATE creature_template SET `minlevel` = 88, `maxlevel` = 88, `exp` = 3 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%88%';
UPDATE creature_template SET `minlevel` = 90, `maxlevel` = 90, `exp` = 4 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%90%';
UPDATE creature_template SET `minlevel` = 92, `maxlevel` = 92, `exp` = 4 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%92%';
UPDATE creature_template SET `minlevel` = 93, `maxlevel` = 93, `exp` = 4 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%93%';
UPDATE creature_template SET `Armor_mod` = 1 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%Low Armor%';
UPDATE creature_template SET `Armor_mod` = 0 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%No Armor%';
UPDATE creature_template SET `Armor_mod` = 5 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%High Armor%';
UPDATE creature_template SET `Armor_mod` = 5 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%Bonus Armor%';
UPDATE creature_template SET `faction_A` = 7, `faction_H` = 7, `mindmg` = 200, `maxdmg` = 200, `attackpower` = 0, `dmg_multiplier` = 1 WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%Fixed Damage%';
UPDATE creature_template SET `faction_A` = 7, `faction_H` = 7, `resistance1` = 90, `resistance2` = 90, `resistance3` = 90, `resistance4` = 90, `resistance5` = 90, `resistance6` = 90, `ScriptName` = 'npc_training_dummy' WHERE `name` LIKE '%test dummy%' AND `name` LIKE '%High Magic Resist%';