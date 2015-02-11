/* Portals Bug */
UPDATE `gameobject` SET `id` = 207695 WHERE `id` = 207687 AND `guid`= 50010;
UPDATE `gameobject_template` SET `data0` = 84464 WHERE `entry` = 205268;
UPDATE `creature_template` SET `modelid1` = 11686, `modelid2` = 0 WHERE `entry` IN (48157,48202);
UPDATE `creature_template` SET `modelid1` = 21342, `modelid2` = 0 WHERE `entry` = 50088;
UPDATE `creature_template` SET `npcflag` = 1, `AIName` = 'SmartAI' WHERE `entry` = 45005;
UPDATE `gameobject_template` SET `data0` = 84464 WHERE `entry` = 205268;
UPDATE `gameobject_template` SET `data0` = 132622 WHERE `entry` = 216058;
UPDATE `gameobject_template` SET `data0` = 132624 WHERE `entry` = 216057;
UPDATE `spell_target_position` SET `target_position_x` = -306.12, `target_position_y`=-1778.88, `target_position_z`=62.0337, `target_orientation`= 0.361209 WHERE `id` = 130702;
UPDATE `gameobject_template` SET `data0` = 17609 WHERE `entry` = 215127;
DELETE FROM `gameobject` WHERE `guid`=189108 AND `id`=195140;
DELETE FROM `gameobject` WHERE `guid`=521055 AND `id`=192768;
DELETE FROM `gameobject` WHERE `guid`=521054 AND `id`=201797;
DELETE FROM `gameobject` WHERE `guid`=173901 AND `id`=183321;
DELETE FROM `gameobject` WHERE `guid`=173902 AND `id`=183322;
DELETE FROM `gameobject` WHERE `guid`=173903 AND `id`=183317;
DELETE FROM `smart_scripts` WHERE `entryorguid`=45005 AND `source_type`=0;
INSERT INTO `smart_scripts` VALUES 
(45005, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 85, 84513, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Wyvern Teleport On Click");
UPDATE `gameobject_template` SET `type` = 10, `data0` = 0, `data5` = 0, `AIName` = 'SmartGameObjectAI' WHERE `entry` = 207690;
DELETE FROM `smart_scripts` WHERE `entryorguid`=207690 AND `source_type`=1;
INSERT INTO `smart_scripts` VALUES 
(207690, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -5669.65, 3720.58, 1.933, 1.36354, "Teleport to Vashj'ir");
SET @GUID = (SELECT MAX(guid) FROM `gameobject`);
INSERT INTO `gameobject` VALUES 
(@GUID +1, '205273', '1', '0', '0', '1', '1', '-9458.97', '-986.434', '111.012', '0.00343681', '0', '0', '0.0017184', '0.999999', '300', '0', '1', '0', null),
(@GUID +2, '195139', '870', '0', '0', '1', '1', '3809.32', '1776.05', '950.993', '1.1187', '0', '0', '0.530637', '0.847599', '300', '0', '1', '0', null),
(@GUID +3, '195140', '870', '0', '0', '1', '1', '3801.04', '1802.19', '950.993', '5.84601', '0', '0', '0.216851', '-0.976205', '300', '0', '1', '0', null);
DELETE FROM `npc_trainer` WHERE `entry`=200200 AND `spell`=33690;
INSERT INTO `npc_trainer` VALUES 
(200200, 33690, 76950, 0, 0, 62)