-- Updatepacks received by Gackt from our iranian friend
DELETE FROM `creature_questrelation` WHERE `quest` = 31811;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 31811;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 31811;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (58564, 31811);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 58564;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 31811;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 31811;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (58564, 31811);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=58564;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 31811;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 57671;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 57673;
DELETE FROM `creature` WHERE `id`=28212;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(100735, 28212, 571, 3711, 4282, 1, 1, 25215, 0, 6124.73, 3782.15, 98.2121, 0.79544, 300, 5, 0, 226800, 0, 1, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=28103;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(114741, 28103, 571, 3711, 4282, 1, 1, 25218, 0, 6208.47, 3873.8, 132.398, 2.51327, 300, 0, 0, 252000, 3994, 0, 0, 0, 0, 0);
UPDATE `gameobject_template` SET `data0` = 93, `data1` = 12550, `data3` = 3000 WHERE `entry` = 190700;
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `faction_A` = 7, `faction_H` = 7, `type` = 7 WHERE `entry` = 22258;
DELETE FROM `creature_questrelation` WHERE `quest` = 30139;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 30139;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 30139;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (58225, 30139);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 58225;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 30139;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 30139;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (58228, 30139);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=58228;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 30139;
DELETE FROM `gameobject` WHERE `id`=202165;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`isActive`) VALUES
(401525, 202165, 1, 0, 0, 1, 1, -7808.64, -686.017, -260.081, 1.77605, 0, 0, 0.775827, 0.630945, 300, 100, 1, 0);
UPDATE `gameobject_template` SET `data3` = 0 WHERE `entry` = 202165;
DELETE FROM `creature_questrelation` WHERE `quest` = 10588;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 10588;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 10588;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (21183, 10588);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 21183;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 10588;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 10588;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (21024, 10588);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=21024;
UPDATE `quest_template` SET `RewardChoiceItemId1` = 31071, `RewardChoiceItemId2` = 31072, `RewardChoiceItemId3` = 31073, `RewardChoiceItemId4` = 31036, `RewardChoiceItemId5` = 31062, `RewardChoiceItemId6` = 31038, `RewardChoiceItemCount1` = 1, `RewardChoiceItemCount2` = 1, `RewardChoiceItemCount3` = 1, `RewardChoiceItemCount4` = 1, `RewardChoiceItemCount5` = 1, `RewardChoiceItemCount6` = 1 WHERE `Id` = 10588;
INSERT IGNORE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `unkInt32`, `WDBVerified`) VALUES
(209844, 3, 10867, 'Ang''s Giant Pink Turnip', 'LootAll', '', '', 43, 40488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 75259, 0, 0, 0, 0, 0, 0, 16357), -- 209844
(209843, 3, 10970, 'Ang''s Summer Watermelon', 'LootAll', '', '', 43, 40487, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 75258, 0, 0, 0, 0, 0, 0, 16357), -- 209843
(209842, 3, 10823, 'Pang''s Extra-Spicy Tofu', 'LootAll', '', '', 43, 40486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 75256, 0, 0, 0, 0, 0, 0, 16357); -- 209842
DELETE FROM `gameobject_loot_template` WHERE (`entry`=40486) AND (`item`=75256);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (40486, 75256, -100, 1, 0, 1, 1);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=40487) AND (`item`=75258);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (40487, 75258, -100, 1, 0, 1, 1);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=40488) AND (`item`=75259);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (40488, 75259, -100, 1, 0, 1, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(411222, 209844, 870, 1, 1, 518.5746, -630.2917, 258.8289, 0.2617982, 0, 0, 0, 1, 120, 255, 1), -- 209844 (Area: 5936)
(411223, 209844, 870, 1, 1, 524.2483, -630.8542, 258.4682, 5.602507, 0, 0, 0, 1, 120, 255, 1), -- 209844 (Area: 5936)
(411224, 209843, 870, 1, 1, 515.9184, -625.3438, 258.9437, 2.530723, 0, 0, 0, 1, 120, 255, 1), -- 209843 (Area: 5936)
(411225, 209844, 870, 1, 1, 520.8524, -628.2188, 258.5055, 0.8203033, 0, 0, 0, 1, 120, 255, 1), -- 209844 (Area: 5936)
(411226, 209843, 870, 1, 1, 522.3733, -622.1563, 258.6346, 4.694937, 0, 0, 0, 1, 120, 255, 1), -- 209843 (Area: 5936)
(411227, 209844, 870, 1, 1, 521.4184, -631.0729, 258.4264, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- 209844 (Area: 5936)
(411228, 209843, 870, 1, 1, 520.2969, -624.0521, 258.5423, 2.932139, 0, 0, 0, 1, 120, 255, 1), -- 209843 (Area: 5936)
(411229, 209842, 870, 1, 1, 519.1649, -615.6233, 258.4457, 5.550147, 0, 0, 0, 1, 120, 255, 1), -- 209842 (Area: 5936)
(411230, 209843, 870, 1, 1, 514.9462, -625.9896, 258.9675, 1.588249, 0, 0, 0, 1, 120, 255, 1), -- 209843 (Area: 5936)
(411231, 209843, 870, 1, 1, 518.2344, -624.8976, 258.4684, 0.5585039, 0, 0, 0, 1, 120, 255, 1), -- 209843 (Area: 5936)
(411232, 209843, 870, 1, 1, 518.4236, -623.2049, 258.4682, 1.117009, 0, 0, 0, 1, 120, 255, 1), -- 209843 (Area: 5936)
(411233, 209844, 870, 1, 1, 521.6805, -633.7014, 258.3015, 0.8203033, 0, 0, 0, 1, 120, 255, 1), -- 209844 (Area: 5936)
(411234, 209842, 870, 1, 1, 518.1563, -619.3993, 258.4482, 0.3141584, 0, 0, 0, 1, 120, 255, 1), -- 209842 (Area: 5936)
(411235, 209843, 870, 1, 1, 516.7274, -622.842, 258.4149, 0.1745321, 0, 0, 0, 1, 120, 255, 1), -- 209843 (Area: 5936)
(411236, 209844, 870, 1, 1, 523.4757, -628.7136, 258.572, 0.8203033, 0, 0, 0, 1, 120, 255, 1), -- 209844 (Area: 5936)
(411237, 209843, 870, 1, 1, 515.6285, -625.7708, 259.4611, 1.117009, 0, 0, 0, 1, 120, 255, 1); -- 209843 (Area: 5936)
DELETE FROM `creature_questrelation` WHERE `quest` = 29912;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 29912;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 29912;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (56204, 29912);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 56204;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 29912;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 29912;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (56205, 29912);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=56205;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGo2` = 0, `RequiredNpcOrGo3` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredNpcOrGoCount2` = 0, `RequiredNpcOrGoCount3` = 0, `RequiredItemId1` = 75256, `RequiredItemId2` = 75258, `RequiredItemId3` = 75259, `RequiredItemCount1` = 1, `RequiredItemCount2` = 1, `RequiredItemCount3` = 1 WHERE `Id` = 29912;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 57403;
DELETE FROM `creature` WHERE `id`=56113;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(408516, 56113, 870, 5805, 5972, 1, 65535, 0, 0, 374.627, 353.512, 186.013, 0.921803, 300, 0, 0, 156000, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=56113);
DELETE FROM `creature` WHERE `id`=58014;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(407461, 58014, 870, 0, 0, 1, 1, 0, 0, -754.946, 1351.14, 119.305, 4.93928, 120, 5, 0, 1, 0, 1, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=58014);
DELETE FROM `creature` WHERE `id`=58017;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(407463, 58017, 870, 0, 0, 1, 1, 0, 0, -726.781, 1157.3, 139.262, 0.349066, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=58017);
DELETE FROM `creature_questrelation` WHERE `quest` = 26775;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 26775;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 26775;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (44017, 26775);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 44017;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 26775;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 26775;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (44017, 26775);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=44017;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 26775;
DELETE FROM `creature_questrelation` WHERE `quest` = 26551;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 26551;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 26551;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (43098, 26551);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 43098;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 26551;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 26551;
UPDATE `quest_template` SET `Flags` = 65544 WHERE `Id` = 26551;
DELETE FROM `creature_questrelation` WHERE `quest` = 26551;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 26551;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 26551;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (43098, 26551);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 43098;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 26551;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 26551;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 26551;
UPDATE `creature_template` SET `questItem4` = 59143 WHERE `entry` = 43454;
DELETE FROM `creature_questrelation` WHERE `quest` = 25410;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25410;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25410;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (40078, 25410);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 40078;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25410;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25410;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (40078, 25410);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=40078;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredItemId1` = 53105, `RequiredItemCount1` = 1 WHERE `Id` = 25410;
DELETE FROM `creature` WHERE `id`=52408;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(408509, 52408, 0, 0, 0, 1, 1, 37874, 0, -9009.46, 862.241, 30.4525, 1.20428, 300, 0, 0, 30951, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=55647;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(1032234, 55647, 870, 5785, 5950, 1, 1, 0, 0, 1447.21, -547.82, 352.815, 3.9968, 300, 0, 0, 1, 0, 0, 3, 768, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=55647);
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 57673;
DELETE FROM `creature` WHERE `id`=52408;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(408509, 52408, 0, 0, 0, 1, 1, 37874, 0, -9009.46, 862.241, 30.4525, 1.20428, 300, 0, 0, 30951, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=52408);
DELETE FROM `creature` WHERE `id`=47959;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(1381228, 47959, 1, 5034, 5466, 1, 1, 35131, 0, -9434.9, -966.236, 111.095, 2.25148, 300, 0, 0, 53681, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=47959);
DELETE FROM `creature_questrelation` WHERE `quest` = 26208;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 26208;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 26208;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (42317, 26208);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 42317;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 26208;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 26208;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (42317, 26208);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=42317;
DELETE FROM `quest_start_scripts` WHERE `id`=26208;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(26208, 20, 8, 42463, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `StartScript` = 26208 WHERE `Id` = 26208;
UPDATE `gameobject_template` SET `faction` = 0 WHERE `entry` = 191840;
UPDATE `gameobject_template` SET `data0` = 43, `data3` = 0 WHERE `entry` = 184691;
DELETE FROM `gameobject` WHERE `id`=184691;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(411238, 184691, 530, 1, 1, -2506.16, 1087.25, 63.3567, 0.691934, 0, 0, 0.339106, 0.940748, 600, 100, 1),
(411239, 184691, 530, 1, 1, -2682.68, 1485.94, 23.9594, 2.9873, 0, 0, 0.997026, 0.0770677, 600, 100, 1),
(411240, 184691, 530, 1, 1, -2717.63, 1501.52, 11.6948, 4.00597, 0, 0, 0.908052, -0.418857, 600, 100, 1),
(411241, 184691, 530, 1, 1, -2650.07, 1381.24, 88.7094, 3.44519, 0, 0, 0.988501, -0.151217, 600, 100, 1),
(411242, 184691, 530, 1, 1, -2709.49, 1531.09, 22.2107, 5.4896, 0, 0, 0.386462, -0.922305, 600, 100, 1),
(411243, 184691, 530, 1, 1, -2780.45, 1536.37, 7.80505, 2.90721, 0, 0, 0.993141, 0.116923, 600, 100, 1),
(411244, 184691, 530, 1, 1, -2608.64, 1418.05, 73.4127, 3.65411, 0, 0, 0.967345, -0.253462, 600, 100, 1),
(411245, 184691, 530, 1, 1, -2796.47, 1446.46, 7.05808, 3.74444, 0, 0, 0.954914, -0.296881, 600, 100, 1),
(411246, 184691, 530, 1, 1, -2678.28, 1535.78, 7.53246, 3.70439, 0, 0, 0.960668, -0.277698, 600, 100, 1),
(411247, 184691, 530, 1, 1, -2625.17, 1321.74, 86.3524, 4.4568, 0, 0, 0.79146, -0.611221, 600, 100, 1),
(411248, 184691, 530, 1, 1, -2564.21, 1262.88, 81.8769, 4.81965, 0, 0, 0.668185, -0.743995, 600, 100, 1),
(411249, 184691, 530, 1, 1, -2561.77, 1167.14, 77.1197, 4.12379, 0, 0, 0.881815, -0.471595, 600, 100, 1),
(411250, 184691, 530, 1, 1, -2534.43, 1373.09, 81.3293, 3.08706, 0, 0, 0.999628, 0.0272609, 600, 100, 1);
DELETE FROM `gameobject` WHERE `id`=205207;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`isActive`) VALUES
(172455, 205207, 646, 5042, 5329, 1, 65534, 413.316, -373.104, 42.8002, 2.49987, 0, 0, 0.948964, 0.315383, 300, 0, 1, 0);
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `unit_flags` = 0 WHERE `entry` = 15476;
UPDATE `creature_template` SET `unit_flags` = 32768, `unit_flags2` = 2048, `dynamicflags` = 0 WHERE `entry` = 33195;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `unit_flags` = 32768 WHERE `entry` = 33266;
DELETE FROM `creature` WHERE `id`=30481;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408844, 30481, 974, 1, 1, 27052, 0, -4270.52, 6337.32, 9.82939, 0.153188, 7200, 0, 0, 2136, 5751, 0, 0, 0, 0);
DELETE FROM `gameobject` WHERE `id`=181898;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(411251, 181898, 530, 1, 1, -2106.83, -11438.2, 72.5159, 1.03437, 0, 0, 0.494433, 0.869216, 300, 100, 1),
(411252, 181898, 530, 1, 1, -2150.79, -11379.4, 59.8999, 0.341251, 0, 0, 0.169799, 0.985479, 300, 100, 1),
(411253, 181898, 530, 1, 1, -2125.48, -11349.1, 63.4257, 4.6845, 0, 0, 0.716898, -0.697179, 300, 100, 1),
(411254, 181898, 530, 1, 1, -2057.56, -11404.8, 58.6018, 2.18301, 0, 0, 0.887321, 0.461152, 300, 100, 1),
(411255, 181898, 530, 1, 1, -2023.69, -11384, 63.5383, 3.14708, 0, 0, 0.999996, -0.00274328, 300, 100, 1),
(411256, 181898, 530, 1, 1, -2070.46, -11346.7, 62.2023, 5.64464, 0, 0, 0.313875, -0.949464, 300, 100, 1),
(411257, 181898, 530, 1, 1, -2032.63, -11332.5, 65.7892, 4.73751, 0, 0, 0.698169, -0.715933, 300, 100, 1),
(411258, 181898, 530, 1, 1, -2009.07, -11298.4, 66.8914, 3.05872, 0, 0, 0.999142, 0.0414257, 300, 100, 1),
(411259, 181898, 530, 1, 1, -2018.24, -11278.9, 71.97, 3.91088, 0, 0, 0.926933, -0.375228, 300, 100, 1),
(411260, 181898, 530, 1, 1, -2043.72, -11242.1, 80.4412, 3.8991, 0, 0, 0.929126, -0.369764, 300, 100, 1),
(411261, 181898, 530, 1, 1, -2104.28, -11206.9, 79.6444, 4.74733, 0, 0, 0.694647, -0.719351, 300, 100, 1),
(411262, 181898, 530, 1, 1, -2128.63, -11236.6, 66.393, 5.73104, 0, 0, 0.272577, -0.962134, 300, 100, 1),
(411263, 181898, 530, 1, 1, -2071.8, -11280.9, 66.101, 0.0251344, 0, 0, 0.0125669, 0.999921, 300, 100, 1),
(411264, 181898, 530, 1, 1, -2111.62, -11315.4, 63.3469, 2.46969, 0, 0, 0.944097, 0.329669, 300, 100, 1);
DELETE FROM `gameobject` WHERE `id`=182532;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`isActive`) VALUES
(44724, 182532, 530, 3525, 3592, 1, 1, -2305.98, -11266, 38.6036, 3.2, 0, 0, 0.99905, 0.0435773, 180, 100, 1, 0);
UPDATE `gameobject_template` SET `data4` = 0, `data5` = 0 WHERE `entry` = 182532;
DELETE FROM `creature_questrelation` WHERE `quest` = 29761;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 29761;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 29761;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (55402, 29761);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 55402;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 29761;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 29761;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (55402, 29761);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=55402;
UPDATE `quest_template` SET `Method` = 2, `Flags` = 8, `RequiredItemId1` = 74034, `RequiredItemCount1` = 12 WHERE `Id` = 29761;
DELETE FROM `creature` WHERE `id`=7783;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(1386220, 7783, 1, 0, 0, 1, 1, 6879, 0, 3098.16, -6361.3, 8.19374, 1.90241, 500, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(408444, 7783, 0, 0, 0, 1, 1, 6879, 0, -11457, -2635.34, 4.03531, 1.64061, 300, 0, 0, 3758, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=7783);
UPDATE `creature_template` SET `unit_flags2` = 2048 WHERE `entry` = 64263;
UPDATE `creature` SET `unit_flags` = 0 WHERE `id` = 63974;
UPDATE `creature_template` SET `unit_flags` = 33280, `unit_flags2` = 2048, `dynamicflags` = 0 WHERE `entry` = 63974;
UPDATE `creature_template` SET `unit_flags2` = 2048 WHERE `entry` = 64263;
UPDATE `creature` SET `unit_flags` = 0 WHERE `id` = 64263;
DELETE FROM `creature_template_addon` WHERE (`entry`=64263);
DELETE FROM `creature` WHERE `id`=55729;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408845, 55729, 974, 1, 1, 18664, 0, -4397.91, 6340.15, 13.0043, 5.70723, 7200, 0, 0, 3484, 5751, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 29761;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 29761;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 29761;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (55402, 29761);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 55402;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 29761;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 29761;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (55402, 29761);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=55402;
UPDATE `quest_template` SET `Method` = 2, `Flags` = 8 WHERE `Id` = 29761;
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 209274;
UPDATE `creature_template` SET `unit_flags` = 768 WHERE `entry` = 54510;
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408846, 27362, 571, 1, 1, 0, 0, 4492.43, 1889.1, 164.361, 0.209181, 300, 10, 0, 10282, 0, 1, 0, 0, 0),
(408847, 27362, 571, 1, 1, 0, 0, 4523.33, 1835.82, 164.02, 3.51179, 300, 10, 0, 10282, 0, 1, 0, 0, 0),
(408848, 27362, 571, 1, 1, 0, 0, 4506.61, 1769.47, 164.736, 4.23829, 300, 10, 0, 10282, 0, 1, 0, 0, 0),
(408849, 27362, 571, 1, 1, 0, 0, 4421.61, 1786.17, 163.999, 4.36395, 300, 10, 0, 10282, 0, 1, 0, 0, 0),
(408850, 27362, 571, 1, 1, 0, 0, 4443.32, 1795.82, 164.215, 4.79986, 300, 10, 0, 10282, 0, 1, 0, 0, 0),
(408851, 27362, 571, 1, 1, 0, 0, 4428.91, 1852.85, 163.878, 3.71276, 300, 10, 0, 10282, 0, 1, 0, 0, 0),
(408852, 27362, 571, 1, 1, 0, 0, 4465.72, 1855.96, 171.303, 5.14218, 300, 0, 0, 10282, 0, 0, 0, 0, 0),
(408853, 27362, 571, 1, 1, 0, 0, 4471.85, 1826.38, 171.089, 1.50186, 300, 0, 0, 10282, 0, 0, 0, 0, 0),
(408854, 27362, 571, 1, 1, 0, 0, 4609.79, 1712.3, 171.496, 3.23445, 300, 0, 0, 10282, 0, 0, 0, 0, 0),
(408855, 27362, 571, 1, 1, 0, 0, 4573.78, 1754.68, 167.844, 3.93345, 300, 0, 0, 10282, 0, 0, 0, 0, 0),
(408856, 27362, 571, 1, 1, 0, 0, 4627, 1738.59, 182.659, 1.38641, 300, 0, 0, 10282, 0, 0, 0, 0, 0);
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408857, 27363, 571, 1, 1, 0, 0, 4521.57, 1828.01, 164.02, 0.735421, 300, 5, 0, 10282, 0, 1, 0, 0, 0),
(408858, 27363, 571, 1, 1, 0, 0, 4496.02, 1905.33, 164.27, 5.10224, 300, 5, 0, 10282, 0, 1, 0, 0, 0),
(408859, 27363, 571, 1, 1, 0, 0, 4504.41, 1897.08, 164.244, 2.19234, 300, 5, 0, 10282, 0, 1, 0, 0, 0),
(408860, 27363, 571, 1, 1, 0, 0, 4436.36, 1843.23, 166.255, 6.10274, 300, 5, 0, 10282, 0, 1, 0, 0, 0),
(408861, 27363, 571, 1, 1, 0, 0, 4402.94, 1824.8, 164.333, 1.56785, 300, 5, 0, 10282, 0, 1, 0, 0, 0),
(408862, 27363, 571, 1, 1, 0, 0, 4432.75, 1779.62, 164.419, 2.97381, 300, 5, 0, 10282, 0, 1, 0, 0, 0),
(408863, 27363, 571, 1, 1, 0, 0, 4493.39, 1762.07, 165.258, 2.98234, 300, 5, 0, 10282, 0, 1, 0, 0, 0),
(408864, 27363, 571, 1, 1, 24590, 0, 4535.43, 1682.08, 150.161, 5.46288, 300, 5, 0, 10282, 0, 1, 0, 0, 0),
(408865, 27363, 571, 1, 1, 24590, 0, 4517.38, 1633.94, 130.138, 2.05204, 300, 5, 0, 10282, 0, 1, 0, 0, 0),
(408866, 27363, 571, 1, 1, 24590, 0, 4451.85, 1621.38, 127.312, 5.97411, 300, 5, 0, 10282, 0, 1, 0, 0, 0),
(408867, 27363, 571, 1, 1, 0, 0, 4467.19, 1695.51, 146.729, 6.12506, 300, 5, 0, 10282, 0, 1, 0, 0, 0),
(408868, 27363, 571, 1, 1, 0, 0, 4592.84, 1736.78, 169.833, 1.65973, 300, 5, 0, 10282, 0, 1, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=23381;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(51871, 23381, 534, 3606, 3606, 2, 1, 0, 0, 4210.19, -4120.24, 877.038, 1.95005, 120, 0, 0, 5715, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 65883;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 65882;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 54925;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `flags_extra` = 2 WHERE `entry` = 55368;
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 25310;
DELETE FROM `gameobject` WHERE `id`=210416;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`isActive`) VALUES
(522071, 210416, 870, 6134, 6015, 1, 1, -1598.42, 1784.62, -2.3323, 0.551074, 0, 0, 0.272064, 0.962279, 300, 100, 1, 0),
(522072, 210416, 870, 6134, 6015, 1, 1, -1589.96, 1790.93, -2.38527, 0.739569, 0, 0, 0.361415, 0.932405, 300, 100, 1, 0),
(522073, 210416, 870, 6134, 6015, 1, 1, -1571.15, 1810.16, -2.6355, 2.4431, 0, 0, 0.939631, 0.34219, 300, 100, 1, 0),
(522074, 210416, 870, 6134, 6015, 1, 1, -1547.23, 1836.24, -2.32501, 0.514945, 0, 0, 0.254637, 0.967037, 300, 100, 1, 0),
(522075, 210416, 870, 6134, 6015, 1, 1, -1519.05, 1846.11, -3.22688, 5.9232, 0, 0, 0.179024, -0.983845, 300, 100, 1, 0),
(522076, 210416, 870, 6134, 6015, 1, 1, -1485.35, 1828.05, 10.1912, 5.41426, 0, 0, 0.420924, -0.907096, 300, 100, 1, 0),
(522077, 210416, 870, 6134, 6378, 1, 1, -1433.26, 1843.71, 14.3379, 6.02294, 0, 0, 0.129755, -0.991546, 300, 100, 1, 0),
(522078, 210416, 870, 6134, 6378, 1, 1, -1362.83, 1808.16, 12.8722, 5.93498, 0, 0, 0.173226, -0.984882, 300, 100, 1, 0),
(522079, 210416, 870, 6134, 6378, 1, 1, -1308.74, 1840.65, 11.9385, 5.04276, 0, 0, 0.581206, -0.813756, 300, 100, 1, 0),
(522080, 210416, 870, 6134, 6378, 1, 1, -1452.34, 1733.47, 9.92091, 3.56464, 0, 0, 0.977712, -0.209952, 300, 100, 1, 0),
(522081, 210416, 870, 6134, 6015, 1, 1, -1510.69, 1708.86, 12.572, 2.69835, 0, 0, 0.975542, 0.219812, 300, 100, 1, 0),
(522082, 210416, 870, 6134, 6015, 1, 1, -1509.67, 1776.6, 13.1137, 0.316236, 0, 0, 0.15746, 0.987525, 300, 100, 1, 0),
(522083, 210416, 870, 6134, 6015, 1, 1, -1538.11, 1809.49, 0.649982, 1.79985, 0, 0, 0.783282, 0.621667, 300, 100, 1, 0);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 60537;
UPDATE `creature_template` SET `KillCredit2` = 48290 WHERE `entry` = 48136;
UPDATE `creature_template` SET `KillCredit2` = 48290 WHERE `entry` = 48319;
DELETE FROM `creature` WHERE `id`=26405;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408869, 26405, 571, 1, 1, 0, 0, 3284.27, -5122.89, 300.461, 6.19747, 600, 0, 0, 12762, 3561, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=27075;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(408870, 27075, 571, 394, 4220, 1, 1, 24272, 0, 3303.25, -5124.71, 297.967, 1.81514, 300, 0, 0, 10635, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 0, `flags_extra` = 2 WHERE `entry` = 27075;
DELETE FROM `creature` WHERE `id`=44148;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408871, 44148, 646, 1, 1, 33404, 0, -249.83, 540.993, 266.737, 0, 300, 0, 0, 134037, 0, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=44148);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 36183;
UPDATE `creature_template` SET `KillCredit1` = 34323 WHERE `entry` = 2165;
UPDATE `creature_template` SET `KillCredit2` = 34325 WHERE `entry` = 34318;
UPDATE `creature_template` SET `KillCredit2` = 34324 WHERE `entry` = 2237;
UPDATE `gameobject_template` SET `flags` = 4, `data0` = 43, `data1` = 29625 WHERE `entry` = 203281;
UPDATE `creature_template` SET `KillCredit2` = 36228 WHERE `entry` = 35606;
UPDATE `creature_template` SET `KillCredit2` = 36230 WHERE `entry` = 90;
UPDATE `creature_template` SET `KillCredit2` = 36229 WHERE `entry` = 35605;
DELETE FROM `creature_questrelation` WHERE `quest` = 25410;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25410;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25410;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (40078, 25410);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 40078;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25410;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25410;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (40078, 25410);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=40078;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 40090, `RequiredNpcOrGoCount1` = 6, `RequiredItemId1` = 0, `RequiredItemCount1` = 0 WHERE `Id` = 25410;
UPDATE `creature_template` SET `KillCredit2` = 40090 WHERE `entry` = 7584;
DELETE FROM `creature_questrelation` WHERE `quest` = 13068;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13068;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13068;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (31044, 13068);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 31044;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13068;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13068;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (30562, 13068);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=30562;
UPDATE `quest_template` SET `Flags` = 128 WHERE `Id` = 13068;
DELETE FROM `creature_loot_template` WHERE (`entry`=17300) AND (`item`=45477);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (17300, 45477, -100, 1, 0, 1, 1);
UPDATE `creature_template` SET `questItem1` = 45477 WHERE `entry` = 17300;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `unit_flags` = 0, `unit_flags2` = 2048 WHERE `entry` = 57673;
DELETE FROM `creature_questrelation` WHERE `quest` = 29947;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 29947;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 29947;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (56138, 29947);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 56138;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 29947;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 29947;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (56138, 29947);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=56138;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 29947;
UPDATE `creature_template` SET `KillCredit2` = 56544 WHERE `entry` = 56538;
UPDATE `creature_template` SET `questItem1` = 64465 WHERE `entry` = 48765;
DELETE FROM `creature_loot_template` WHERE (`entry`=48765) AND (`item`=64465);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (48765, 64465, -100, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=7458) AND (`item`=68663);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (7458, 68663, -7, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=7460) AND (`item`=68663);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (7460, 68663, -3, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=7459) AND (`item`=68663);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (7459, 68663, -3, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=10197) AND (`item`=68663);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (7458, 10197, -1, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=7450) AND (`item`=68662);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (7450, 68662, -63, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=7451) AND (`item`=68662);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (7451, 68662, -40, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=7454) AND (`item`=68662);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (7454, 68662, -18, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=7453) AND (`item`=68662);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (7453, 68662, -17, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=7452) AND (`item`=68662);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (7452, 68662, -15, 1, 0, 1, 1);
UPDATE `creature_template` SET `KillCredit2` = 18373 WHERE `entry` = 20306;
DELETE FROM `creature_template_addon` WHERE (`entry`=42689);

-- Fix
DELETE FROM `creature` WHERE `id`=49367;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408872, 49367, 0, 1, 1, 0, 0, -2776.22, -5339.59, 174.001, 0, 500, 0, 0, 1, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=30315;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408873, 30315, 571, 1, 1, 0, 0, 7865.31, -1397.33, 1534.06, 3.24141, 600, 0, 0, 1, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=30316;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408874, 30316, 571, 1, 1, 0, 0, 7994.02, -2734.84, 1133.76, 0.331613, 300, 0, 0, 12600, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=30317;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408875, 30317, 571, 1, 1, 0, 0, 7498.68, -1899.41, 1473.61, 0.132902, 600, 0, 0, 1, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=30318;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408876, 30318, 571, 1, 1, 0, 0, 8193.98, -1963.11, 1738.48, 5.06746, 600, 0, 0, 1, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 30318;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 30317;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 30316;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 30315;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=30318 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30318, 0, 0, 0, 8, 0, 100, 0, 56523, 0, 1000, 1000, 45, 1, 4, 0, 0, 0, 0, 11, 30313, 20, 0, 0, 0, 0, 0, "Temple of Bunny - on spellhit - set data");
DELETE FROM `smart_scripts` WHERE (`entryorguid`=30317 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30317, 0, 0, 0, 8, 0, 100, 0, 56523, 0, 1000, 1000, 45, 1, 3, 0, 0, 0, 0, 11, 30313, 20, 0, 0, 0, 0, 0, "Temple of Bunny - on spellhit - set data");
DELETE FROM `smart_scripts` WHERE (`entryorguid`=30316 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30316, 0, 0, 0, 8, 0, 100, 0, 56523, 0, 1000, 1000, 45, 1, 2, 0, 0, 0, 0, 11, 30313, 20, 0, 0, 0, 0, 0, "Temple of Bunny - on spellhit - set data");
DELETE FROM `smart_scripts` WHERE (`entryorguid`=30315 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30315, 0, 0, 0, 8, 0, 100, 0, 56523, 0, 1000, 1000, 45, 1, 1, 0, 0, 0, 0, 11, 30313, 20, 0, 0, 0, 0, 0, "Temple of Bunny - on spellhit - set data");
UPDATE `creature_template` SET `KillCredit2` = 30412 WHERE `entry` = 30409;
DELETE FROM `creature` WHERE `id`=42689;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(169242, 42689, 0, 47, 354, 1, 1, 0, 0, -220.47, -4022.32, 174.182, 4.42918, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169249, 42689, 0, 47, 354, 1, 1, 0, 0, -250.694, -4009.44, 153.016, 0, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169253, 42689, 0, 47, 354, 1, 1, 0, 0, -238.569, -4038.67, 174.047, 0.617057, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169257, 42689, 0, 47, 354, 1, 1, 0, 0, -238.482, -4073.96, 153.61, 4.16767, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169448, 42689, 0, 47, 354, 1, 1, 0, 0, -311.523, -4228.96, 136.812, 1.24287, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169446, 42689, 0, 47, 354, 1, 1, 0, 0, -309.635, -4214.61, 137.156, 4.10514, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169447, 42689, 0, 47, 354, 1, 1, 0, 0, -279.783, -4221.47, 139.115, 3.37021, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169445, 42689, 0, 47, 354, 1, 1, 0, 0, -297.792, -4219.8, 136.643, 1.72827, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169411, 42689, 0, 47, 354, 1, 1, 0, 0, -293.901, -4110.94, 137.671, 0.844649, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169403, 42689, 0, 47, 354, 1, 1, 0, 0, -263.54, -4199.49, 137.445, 1.7459, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169400, 42689, 0, 47, 354, 1, 1, 0, 0, -337.159, -4210.38, 152.19, 5.59689, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169375, 42689, 0, 47, 354, 1, 1, 0, 0, -366.023, -4168.8, 166.429, 0, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169336, 42689, 0, 47, 354, 1, 1, 0, 0, -216.623, -4080.95, 152.158, 3.28418, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169337, 42689, 0, 47, 354, 1, 1, 0, 0, -212.232, -4087.79, 152.188, 2.66763, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169333, 42689, 0, 47, 354, 1, 1, 0, 0, -263.542, -4098.24, 152.305, 0.345753, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169334, 42689, 0, 47, 354, 1, 1, 0, 0, -244.178, -4089.71, 152.046, 5.87589, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169331, 42689, 0, 47, 354, 1, 1, 0, 0, -268.778, -4089.56, 152.374, 5.60491, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169328, 42689, 0, 47, 354, 1, 1, 0, 0, -363.472, -4139.66, 160.569, 0, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169325, 42689, 0, 47, 354, 1, 1, 0, 0, -356.117, -4117.52, 153.455, 4.57985, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(169269, 42689, 0, 47, 354, 1, 1, 0, 0, -325.649, -4070.12, 154.406, 0, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=42689);
DELETE FROM `creature_template_addon` WHERE (`entry`=40942);
DELETE FROM `creature` WHERE `id`=40942;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(215779, 40942, 1, 406, 461, 1, 1, 0, 0, 1357.44, -622.334, 136.567, 3.82718, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215583, 40942, 1, 406, 461, 1, 1, 0, 0, 1620.55, -535.705, 185.421, 6.04063, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215581, 40942, 1, 406, 4927, 1, 1, 0, 0, 1564.45, -559.549, 157.34, 4.29824, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215578, 40942, 1, 406, 4928, 1, 1, 0, 0, 1618.28, -433.393, 140.928, 0.631369, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215433, 40942, 1, 406, 461, 1, 1, 0, 0, 1382.56, -377.136, 119.939, 1.7007, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215428, 40942, 1, 406, 461, 1, 1, 0, 0, 1555.82, -455.694, 151.791, 5.5921, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215424, 40942, 1, 406, 4928, 1, 1, 0, 0, 1613.71, -436.892, 143.925, 5.11267, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215422, 40942, 1, 406, 461, 1, 1, 0, 0, 1438.25, -419.953, 130.298, 5.40299, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215420, 40942, 1, 406, 461, 1, 1, 0, 0, 1566.31, -450.974, 141.619, 3.59772, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215418, 40942, 1, 406, 461, 1, 1, 0, 0, 1525.46, -374.786, 142.561, 5.60144, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215415, 40942, 1, 406, 461, 1, 1, 0, 0, 1542.13, -379.8, 136.963, 3.39387, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215409, 40942, 1, 406, 461, 1, 1, 0, 0, 1450.59, -324.161, 124.796, 5.49338, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215403, 40942, 1, 406, 461, 1, 1, 0, 0, 1356.21, -332.994, 118.942, 2.51295, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215234, 40942, 1, 406, 461, 1, 1, 0, 0, 1377.72, -299.265, 147.964, 5.48734, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215231, 40942, 1, 406, 461, 1, 1, 0, 0, 1384.69, -305.537, 148.339, 3.94881, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215229, 40942, 1, 406, 461, 1, 1, 0, 0, 1516.88, -301.737, 153.361, 1.67134, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215218, 40942, 1, 406, 461, 1, 1, 0, 0, 1420.56, -279.353, 142.223, 2.41587, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215151, 40942, 1, 406, 461, 1, 1, 0, 0, 1514.9, -244.671, 163.15, 4.85656, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215146, 40942, 1, 406, 461, 1, 1, 0, 0, 1490.97, -204.418, 162.36, 0.982397, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215144, 40942, 1, 406, 461, 1, 1, 0, 0, 1490.83, -250.356, 151.21, 3.4997, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215142, 40942, 1, 406, 461, 1, 1, 0, 0, 1405.86, -189.416, 148.406, 3.93661, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215138, 40942, 1, 406, 461, 1, 1, 0, 0, 1501.48, -188.375, 140.435, 3.67004, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215134, 40942, 1, 406, 463, 1, 1, 0, 0, 1595.33, -161.831, 174.774, 5.56196, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215129, 40942, 1, 406, 461, 1, 1, 0, 0, 1490.12, -127.304, 167.574, 5.81994, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215126, 40942, 1, 406, 461, 1, 1, 0, 0, 1324.73, -182.677, 131.469, 2.5799, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215034, 40942, 1, 406, 463, 1, 1, 0, 0, 1705.81, -57.9491, 183.402, 0.828086, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215032, 40942, 1, 406, 463, 1, 1, 0, 0, 1632.85, -68.6864, 193.596, 1.42083, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215030, 40942, 1, 406, 463, 1, 1, 0, 0, 1513.23, -69.9849, 152.441, 4.65879, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215027, 40942, 1, 406, 463, 1, 1, 0, 0, 1578.7, -94.6562, 177.657, 4.2706, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(215025, 40942, 1, 406, 463, 1, 1, 0, 0, 1589.86, -57.8507, 161.095, 2.09153, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180349, 40942, 1, 406, 461, 1, 1, 0, 0, 1468.68, -361.174, 124.796, 5.43627, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180350, 40942, 1, 406, 461, 1, 1, 0, 0, 1499.09, -411.82, 130.298, 0.693297, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180351, 40942, 1, 406, 461, 1, 1, 0, 0, 1499.2, -359.259, 136.963, 2.05799, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180352, 40942, 1, 406, 461, 1, 1, 0, 0, 1500.01, -301.2, 151.21, 0.0829486, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180353, 40942, 1, 406, 461, 1, 1, 0, 0, 1503.48, -198.896, 162.36, 2.42792, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180354, 40942, 1, 406, 461, 1, 1, 0, 0, 1503.63, -260.988, 163.15, 0.88677, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180355, 40942, 1, 406, 461, 1, 1, 0, 0, 1510.56, -421.463, 142.561, 3.36147, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180356, 40942, 1, 406, 461, 1, 1, 0, 0, 1520.61, -443.716, 151.791, 6.18006, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180357, 40942, 1, 406, 461, 1, 1, 0, 0, 1535.4, -147.132, 151.574, 5.50864, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180358, 40942, 1, 406, 461, 1, 1, 0, 0, 1539.05, -157.497, 166.669, 0.0961203, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180359, 40942, 1, 406, 463, 1, 1, 0, 0, 1542.64, -119.588, 174.774, 3.94065, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180360, 40942, 1, 406, 4927, 1, 1, 0, 0, 1555.82, -473.835, 141.619, 1.38665, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180361, 40942, 1, 406, 463, 1, 1, 0, 0, 1570.69, -40.8142, 177.657, 2.08602, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180362, 40942, 1, 406, 4928, 1, 1, 0, 0, 1571.43, -441.216, 140.928, 0.801691, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180363, 40942, 1, 406, 463, 1, 1, 0, 0, 1585.9, -73.9858, 161.095, 4.81066, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180364, 40942, 1, 406, 4928, 1, 1, 0, 0, 1630.62, -426.205, 143.925, 1.39288, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180365, 40942, 1, 406, 461, 1, 1, 0, 0, 1639.02, -489.963, 156.34, 3.71301, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180366, 40942, 1, 406, 4928, 1, 1, 0, 0, 1650.37, -461.402, 185.901, 0.75243, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180367, 40942, 1, 406, 463, 1, 1, 0, 0, 1658.71, -97.4375, 183.978, 4.37, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(180368, 40942, 1, 406, 463, 1, 1, 0, 0, 1660.41, -109.553, 192.898, 0.463833, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 29577;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 29577;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 29577;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (56113, 29577);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 56113;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 29577;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 29577;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (56802, 29577);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=56802;
DELETE FROM `quest_start_scripts` WHERE `id`=29577;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(29577, 10, 8, 56113, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `Flags` = 0, `StartScript` = 29577 WHERE `Id` = 29577;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `unit_flags` = 0 WHERE `entry` = 57403;
DELETE FROM `creature_questrelation` WHERE `quest` = 30057;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 30057;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 30057;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (57408, 30057);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 57408;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 30057;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 30057;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (62385, 30057);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=62385;
DELETE FROM `quest_start_scripts` WHERE `id`=30057;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(30057, 10, 8, 57408, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `Flags` = 8, `StartScript` = 30057 WHERE `Id` = 30057;
DELETE FROM `creature_template_addon` WHERE (`entry`=40174);
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `unit_flags2` = 2048 WHERE `entry` = 40174;
DELETE FROM `creature` WHERE `id`=40161;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(1197066, 40161, 0, 5144, 5006, 1, 1, 31818, 0, -5170.67, 3976.88, -13.9153, -2.56326, 300, 3, 0, 464265, 0, 1, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 25334;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25334;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25334;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (39226, 25334);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 39226;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25334;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25334;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (40398, 25334);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=40398;
DELETE FROM `quest_start_scripts` WHERE `id`=25334;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(25334, 10, 8, 40307, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `StartScript` = 25334 WHERE `Id` = 25334;
DELETE FROM `creature` WHERE `id`=41098;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408877, 41098, 0, 1, 1, 0, 0, -5218.08, 3437.49, -136.919, 1.75409, 120, 0, 0, 44679, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` = 41098;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `unit_flags2` = 2048, `flags_extra` = 2 WHERE `entry` = 46316;
UPDATE `creature_template` SET `KillCredit2` = 46312, `minlevel` = 1, `maxlevel` = 1 WHERE `entry` = 46316;
DELETE FROM `creature` WHERE `id`=40690;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408878, 40690, 0, 1, 1, 0, 0, -4447.52, 3817.24, -90.1006, 3.43824, 300, 0, 0, 30951, 0, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=45394);
DELETE FROM `creature` WHERE `id`=45394;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(1193617, 45394, 0, 4922, 4922, 1, 1, 11686, 0, -2491.7, -4646.13, 145.839, 3.71755, 300, 3, 0, 77395, 0, 1, 0, 0, 0, 0),
(1193620, 45394, 0, 4922, 4922, 1, 1, 11686, 0, -2619.93, -4714.73, 164.038, 5.86431, 300, 3, 0, 77395, 0, 1, 0, 0, 0, 0),
(1193627, 45394, 0, 4922, 4922, 1, 1, 11686, 0, -2610.61, -4660.5, 167.551, 5.86431, 300, 3, 0, 77395, 0, 1, 0, 0, 0, 0),
(1193634, 45394, 0, 4922, 5438, 1, 1, 11686, 0, -2482.39, -4857.71, 153.211, 2.05949, 300, 3, 0, 77395, 0, 1, 0, 0, 0, 0),
(1193635, 45394, 0, 4922, 5438, 1, 1, 11686, 0, -2517.06, -4910.97, 146.096, 1.64061, 300, 3, 0, 77395, 0, 1, 0, 0, 0, 0),
(1193636, 45394, 0, 4922, 5437, 1, 1, 11686, 0, -2524.2, -4725.43, 180.624, 4.29351, 300, 3, 0, 77395, 0, 1, 0, 0, 0, 0),
(1193637, 45394, 0, 4922, 5437, 1, 1, 11686, 0, -2596.47, -4815.4, 161.027, 1.09956, 300, 3, 0, 77395, 0, 1, 0, 0, 0, 0),
(1193638, 45394, 0, 4922, 4922, 1, 1, 11686, 0, -2568.5, -4648.38, 162.791, 4.7822, 300, 3, 0, 77395, 0, 1, 0, 0, 0, 0),
(1193639, 45394, 0, 4922, 5437, 1, 1, 11686, 0, -2505.83, -4786.48, 180.535, 2.00713, 300, 3, 0, 77395, 0, 1, 0, 0, 0, 0),
(1193640, 45394, 0, 4922, 4922, 1, 1, 11686, 0, -2621.75, -4774.05, 161.281, 0.663225, 300, 3, 0, 77395, 0, 1, 0, 0, 0, 0),
(1193641, 45394, 0, 4922, 5438, 1, 1, 11686, 0, -2552.32, -4845.17, 152.98, 0.959931, 300, 3, 0, 77395, 0, 1, 0, 0, 0, 0);
UPDATE `creature_template` SET `KillCredit2` = 41533, `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 41548;
DELETE FROM `creature_questrelation` WHERE `quest` = 25824;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25824;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25824;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (41341, 25824);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 41341;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25824;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25824;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (41341, 25824);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=41341;
DELETE FROM `quest_start_scripts` WHERE `id`=25824;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(25824, 10, 8, 41340, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `StartScript` = 25824 WHERE `Id` = 25824;
UPDATE `creature_template` SET `KillCredit2` = 47467 WHERE `entry` = 47470;
UPDATE `creature_template` SET `unit_flags` = 33280 WHERE `entry` = 41249;
UPDATE `creature_template` SET `KillCredit2` = 32821 WHERE `entry` = 30475;
DELETE FROM `creature_template_addon` WHERE (`entry`=41600);
UPDATE `creature_template` SET `KillCredit2` = 42343, `unit_flags2` = 2048 WHERE `entry` = 47969;
UPDATE `creature_template` SET `KillCredit2` = 42027 WHERE `entry` = 41664;
UPDATE `creature_template` SET `KillCredit2` = 42027 WHERE `entry` = 42051;
DELETE FROM `creature` WHERE `id`=41640;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408879, 41640, 0, 1, 1, 31596, 0, -5661.91, 6089.65, -1030.98, 4.86947, 300, 0, 0, 446790, 0, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 26194;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 26194;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 26194;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (41600, 26194);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 41600;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (44540, 26194);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 44540;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 26194;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 26194;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (44540, 26194);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=44540;
DELETE FROM `quest_start_scripts` WHERE `id`=0;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(26194, 10, 7, 42565, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `Flags` = 136 WHERE `Id` = 26194;
DELETE FROM `creature_questrelation` WHERE `quest` = 26193;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 26193;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 26193;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (41600, 26193);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 41600;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 26193;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 26193;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (41600, 26193);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=41600;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (44490, 26193);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=44490;
DELETE FROM `quest_start_scripts` WHERE `id`=26193;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(26193, 10, 7, 42565, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `Flags` = 136, `StartScript` = 26193 WHERE `Id` = 26193;

-- Fix
DELETE FROM `creature` WHERE `id`=60761;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(1036679, 60761, 870, 6134, 6134, 1, 1, 0, 0, -1443.89, 2.70566, -0.271592, 2.43277, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1036683, 60761, 870, 6134, 6158, 1, 1, 0, 0, -1483.81, 108.72, -7.89563, 6.20896, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037595, 60761, 870, 6134, 6134, 1, 1, 0, 0, -1772.5, 288.835, 2.67425, 2.89584, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037597, 60761, 870, 6134, 6158, 1, 1, 0, 0, -1732.17, 210.198, -1.53664, 5.83877, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037603, 60761, 870, 6134, 6158, 1, 1, 0, 0, -1640.85, 189.523, 1.07173, 3.67866, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037611, 60761, 870, 6134, 6158, 1, 1, 0, 0, -1605.54, 104.988, -10.5493, 3.50968, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037613, 60761, 870, 6134, 6158, 1, 1, 0, 0, -1592.33, 199.908, -12.7113, 1.62944, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037618, 60761, 870, 6134, 6134, 1, 1, 0, 0, -1665.52, -7.82434, -1.38653, 3.17673, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037633, 60761, 870, 6134, 6134, 1, 1, 0, 0, -1658.88, -180.095, -3.66135, 3.22376, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037634, 60761, 870, 6134, 6106, 1, 1, 0, 0, -1553.14, -182.995, -9.04056, 1.01042, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037640, 60761, 870, 6134, 6106, 1, 1, 0, 0, -1526.02, -227.632, 3.96062, 2.30523, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037645, 60761, 870, 6134, 6106, 1, 1, 0, 0, -1478, -180.191, -6.049, 0.384131, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037656, 60761, 870, 6134, 6106, 1, 1, 0, 0, -1496.01, -244.738, 6.39334, 5.01778, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037659, 60761, 870, 6134, 6106, 1, 1, 0, 0, -1491.71, -236.087, 7.44538, 5.74571, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037662, 60761, 870, 6134, 6106, 1, 1, 0, 0, -1451.18, -210.647, 1.96845, 1.41126, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037669, 60761, 870, 6134, 6134, 1, 1, 0, 0, -1410.96, -191.947, 0.349106, 4.62547, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037675, 60761, 870, 6134, 6106, 1, 1, 0, 0, -1476.05, -291.894, -7.93949, 1.81347, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037677, 60761, 870, 6134, 6108, 1, 1, 0, 0, -1385.43, -201.622, 0.33814, 0.958647, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037678, 60761, 870, 6134, 6108, 1, 1, 0, 0, -1395.8, -211.664, 0.309875, 0.101116, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037681, 60761, 870, 6134, 6134, 1, 1, 0, 0, -1432.91, -260.437, 0.18104, 3.10915, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037690, 60761, 870, 6134, 6108, 1, 1, 0, 0, -1403.14, -352.38, -46.5852, 0.522871, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037693, 60761, 870, 6134, 6108, 1, 1, 0, 0, -1347.38, -423.289, -31.378, 4.41906, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037694, 60761, 870, 6134, 6108, 1, 1, 0, 0, -1313.81, -461.601, -79.8362, 3.69557, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037698, 60761, 870, 6134, 6108, 1, 1, 0, 0, -1308.9, -402.434, -103.244, 4.11003, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037708, 60761, 870, 6134, 6108, 1, 1, 0, 0, -1371.58, -370.012, -38.5386, 2.97795, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037711, 60761, 870, 6134, 6108, 1, 1, 0, 0, -1318.94, -381.982, -105.17, 4.90272, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037714, 60761, 870, 6134, 6108, 1, 1, 0, 0, -1268.31, -400.79, -50.8488, 5.41265, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037734, 60761, 870, 6134, 6108, 1, 1, 0, 0, -1323.83, -340.891, -105.177, 1.49058, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0),
(1037754, 60761, 870, 6134, 6108, 1, 1, 0, 0, -1240.77, -297.632, -8.86806, 2.1287, 300, 7.786, 0, 1, 0, 1, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=23381);
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 7, `faction_H` = 7, `unit_flags` = 33536 WHERE `entry` = 27688;
UPDATE `creature_template` SET `KillCredit2` = 29008 WHERE `entry` = 28862;
UPDATE `creature_template` SET `KillCredit2` = 29009 WHERE `entry` = 28858;
UPDATE `gameobject_template` SET `data0` = 43, `data3` = 0 WHERE `entry` = 190558;
DELETE FROM `gameobject` WHERE `id`=190558;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(411265, 190558, 571, 1, 1, 5540.81, 4636.12, -136.759, 4.37325, 0, 0, -0.816295, 0.577636, 300, 100, 1),
(411266, 190558, 571, 1, 1, 5859.13, 4760.01, -132.656, 6.20369, 0, 0, -0.0397348, 0.99921, 300, 100, 1);
DELETE FROM `gameobject` WHERE `id`=190560;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(411267, 190560, 571, 1, 1, 5800.18, 4566.85, -135.366, 3.94643, 0, 0, -0.920116, 0.391645, 300, 100, 1),
(411268, 190560, 571, 1, 1, 5673.1, 4481.83, -135.167, 0.397194, 0, 0, 0.197294, 0.980344, 300, 100, 1);
DELETE FROM `gameobject` WHERE `id`=190561;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(411269, 190561, 571, 1, 1, 5607.5, 4691.77, -136.465, 2.22492, 0, 0, 0.89679, 0.442457, 300, 100, 1),
(411270, 190561, 571, 1, 1, 5804.9, 4768.46, -135.202, 0.117694, 0, 0, 0.0588131, 0.998269, 300, 100, 1),
(411271, 190561, 571, 1, 1, 5833.98, 4615.57, -134.864, 4.16963, 0, 0, -0.870776, 0.49168, 300, 100, 1);
DELETE FROM `gameobject` WHERE `id`=190562;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(411272, 190562, 571, 1, 1, 5617.12, 4506.58, -136.193, 0.606565, 0, 0, 0.298655, 0.954361, 300, 100, 1),
(411273, 190562, 571, 1, 1, 5650.79, 4495.92, -136.739, 0.372987, 0, 0, 0.185414, 0.98266, 300, 100, 1),
(411274, 190562, 571, 1, 1, 5705.62, 4762.95, -136.893, 0.401555, 0, 0, 0.199431, 0.979912, 300, 100, 1);
DELETE FROM `gameobject` WHERE `id`=190563;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(411275, 190563, 571, 1, 1, 5580.08, 4700.55, -132.857, 2.82531, 0, 0, 0.987522, 0.15748, 300, 100, 1),
(411276, 190563, 571, 1, 1, 5812.08, 4485.03, -131.657, 4.28665, 0, 0, -0.840533, 0.54176, 300, 100, 1),
(411277, 190563, 571, 1, 1, 5615.51, 4504.97, -136.083, 0.835478, 0, 0, 0.405695, 0.914009, 300, 100, 1);
UPDATE `gameobject_template` SET `data0` = 43, `data2` = 0, `data3` = 0 WHERE `entry` = 190560;
UPDATE `gameobject_template` SET `data0` = 43, `data2` = 0, `data3` = 0 WHERE `entry` = 190561;
UPDATE `gameobject_template` SET `data0` = 43, `data2` = 0, `data3` = 0 WHERE `entry` = 190562;
UPDATE `gameobject_template` SET `data0` = 43, `data2` = 0, `data3` = 0 WHERE `entry` = 190563;
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33536, `flags_extra` = 2 WHERE `entry` = 29056;
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33536, `flags_extra` = 2 WHERE `entry` = 29057;
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33536, `flags_extra` = 2 WHERE `entry` = 29058;
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33536, `flags_extra` = 2 WHERE `entry` = 29069;
UPDATE `gameobject_template` SET `data1` = 20 WHERE `entry` = 300224;
DELETE FROM `gameobject` WHERE `id`=300224;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`isActive`) VALUES
(99736, 300224, 571, 3711, 4296, 1, 65535, 5539.14, 4088, 43.2073, 5.55892, 0, 0, 0.354268, -0.935144, 300, 0, 1, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 12972;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12972;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12972;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (29975, 12972);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 29975;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12972;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12972;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (29592, 12972);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=29592;
UPDATE `quest_template` SET `Flags` = 136 WHERE `Id` = 12972;
UPDATE `creature_template` SET `KillCredit2` = 41982, `unit_flags` = 64 WHERE `entry` = 42639;
UPDATE `creature_template` SET `KillCredit2` = 41982, `minlevel` = 82, `maxlevel` = 82, `speed_walk` = 0.8, `speed_run` = 0.428571, `dmg_multiplier` = 35, `unit_flags` = 0 WHERE `entry` = 42639;
DELETE FROM `creature_questrelation` WHERE `quest` = 29100;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 29100;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 29100;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (52654, 29100);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 52654;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 29100;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 29100;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (52234, 29100);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=52234;
DELETE FROM `quest_start_scripts` WHERE `id`=29100;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(29100, 10, 8, 52930, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `Flags` = 128, `StartScript` = 29100 WHERE `Id` = 29100;
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33536, `flags_extra` = 2 WHERE `entry` = 60096;
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33536, `flags_extra` = 2 WHERE `entry` = 60098;
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33536, `flags_extra` = 2 WHERE `entry` = 60099;
DELETE FROM `creature_template_addon` WHERE (`entry`=60795);
DELETE FROM `creature` WHERE `id`=60795;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(1041643, 60795, 870, 5841, 6184, 1, 1, 0, 0, 3485.98, 2100.92, 1084.13, 2.41331, 300, 0, 0, 1, 0, 0, 3, 32768, 0, 0);
UPDATE `creature_template` SET `unit_flags2` = 2048 WHERE `entry` = 60795;
DELETE FROM `creature_template_addon` WHERE (`entry`=42146);
DELETE FROM `creature` WHERE `id`=42146;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(144017, 42146, 0, 1537, 5342, 1, 1, 0, 0, -4797.24, -1003.05, 510.895, 0, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 26118;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 26118;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 26118;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (42129, 26118);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 42129;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 26118;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 26118;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (42129, 26118);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=42129;
DELETE FROM `quest_start_scripts` WHERE `id`=26118;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(26118, 10, 7, 26118, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 42146, `RequiredNpcOrGoCount1` = 1, `StartScript` = 26118 WHERE `Id` = 26118;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 21319;
DELETE FROM `creature` WHERE `id`=21319;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408880, 21319, 530, 1, 1, 0, 0, 1321.16, 6685, -19.6687, 1.53308, 300, 0, 0, 9489, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=42639;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408881, 42639, 0, 1, 1, 31882, 0, -7509.54, 4213.11, -220.105, 0.923823, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408882, 42639, 0, 1, 1, 31882, 0, -7492.75, 4151.97, -237.087, -0.350321, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408883, 42639, 0, 1, 1, 31882, 0, -7503.17, 4152.31, -221.333, -1.21474, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408884, 42639, 0, 1, 1, 31882, 0, -7370.44, 4176.11, -249.179, 2.79209, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408885, 42639, 0, 1, 1, 31882, 0, -7475.62, 4292.17, -242.976, 1.64592, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408886, 42639, 0, 1, 1, 31882, 0, -7323.18, 4002.73, -247.75, 1.68477, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408887, 42639, 0, 1, 1, 31882, 0, -7544.48, 3966.94, -215.297, -2.42097, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408888, 42639, 0, 1, 1, 31882, 0, -7578.58, 3841.15, -207.997, 2.40054, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408889, 42639, 0, 1, 1, 31882, 0, -7533.14, 3855.94, -213.128, 0.150558, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408890, 42639, 0, 1, 1, 31882, 0, -7566.2, 3990.22, -216.018, -2.85446, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408891, 42639, 0, 1, 1, 31882, 0, -7607.22, 3932.67, -197.692, -1.30218, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408892, 42639, 0, 1, 1, 31882, 0, -7634.81, 3945.54, -212.213, 0.0410033, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408893, 42639, 0, 1, 1, 31882, 0, -7621.64, 3944.76, -212.046, -3.13916, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408894, 42639, 0, 1, 1, 31882, 0, -7577.35, 3979.14, -215.467, 2.69365, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408895, 42639, 0, 1, 1, 31882, 0, -7613.77, 3819.24, -196.714, 5.00432, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408896, 42639, 0, 1, 1, 31882, 0, -7639, 3894.16, -196.598, 1.09332, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408897, 42639, 0, 1, 1, 31882, 0, -7611.15, 3880.48, -209.332, 1.78874, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408898, 42639, 0, 1, 1, 31882, 0, -7613.11, 3878.85, -209.082, 2.56565, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408899, 42639, 0, 1, 1, 31882, 0, -7640.13, 3917.16, -199.266, 1.97025, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408900, 42639, 0, 1, 1, 31882, 0, -7565.86, 3994.95, -216.204, 0.151957, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408901, 42639, 0, 1, 1, 31882, 0, -7538.86, 3966.89, -215.546, -2.81215, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408902, 42639, 0, 1, 1, 31882, 0, -7612.61, 3878.52, -195.244, 2.56551, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408903, 42639, 0, 1, 1, 31882, 0, -7651.51, 3895.68, -176.859, 1.58558, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408904, 42639, 0, 1, 1, 31882, 0, -7662.42, 3837.42, -195.174, 5.13129, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408905, 42639, 0, 1, 1, 31882, 0, -7661.78, 3921.04, -198.235, -0.00508247, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408906, 42639, 0, 1, 1, 31882, 0, -7621.44, 3944.76, -211.452, 3.14399, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408907, 42639, 0, 1, 1, 31882, 0, -7650.96, 3900.91, -198.468, 3.24554, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408908, 42639, 0, 1, 1, 31882, 0, -7372.96, 4042.47, -239.068, -0.797407, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408909, 42639, 0, 1, 1, 31882, 0, -7411.31, 4284.75, -261.886, 0.250566, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408910, 42639, 0, 1, 1, 31882, 0, -7380.62, 5180.63, -284.8, 0.593412, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408911, 42639, 0, 1, 1, 31882, 0, -7382.07, 5178.03, -284.801, 2.9053, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408912, 42639, 0, 1, 1, 31882, 0, -7243.82, 5181.35, -284.571, -0.995628, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408913, 42639, 0, 1, 1, 31882, 0, -7376.63, 5106.88, -267.594, 0.593412, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408914, 42639, 0, 1, 1, 31882, 0, -7211.89, 5146.85, -266.118, 2.32625, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408915, 42639, 0, 1, 1, 31882, 0, -7204.31, 5016.18, -284.143, 1.09846, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408916, 42639, 0, 1, 1, 31882, 0, -7250.61, 4966.08, -284.521, -0.94557, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408917, 42639, 0, 1, 1, 31882, 0, -7245.55, 4963.13, -280.125, 1.1244, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408918, 42639, 0, 1, 1, 31882, 0, -7453.09, 4984.57, -282.527, -0.558282, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408919, 42639, 0, 1, 1, 31882, 0, -7521.1, 5130.82, -284.794, 2.43243, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408920, 42639, 0, 1, 1, 31882, 0, -7454.39, 5160.8, -282.527, -2.34123, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408921, 42639, 0, 1, 1, 31882, 0, -7456.64, 5161.91, -282.527, 6.24828, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408922, 42639, 0, 1, 1, 31882, 0, -6881.67, 5054.88, -346.496, 0.0349066, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408923, 42639, 0, 1, 1, 31882, 0, -6880.63, 5111.92, -346.496, 0.964239, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408924, 42639, 0, 1, 1, 31882, 0, -6916.19, 5060.28, -287.378, 3.12545, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408925, 42639, 0, 1, 1, 31882, 0, -6914.93, 5059.71, -287.378, 1.94593, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408926, 42639, 0, 1, 1, 31882, 0, -7259.9, 5082, -268.398, 0.799954, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408927, 42639, 0, 1, 1, 31882, 0, -7253.43, 5088.35, -268.33, 4.94637, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408928, 42639, 0, 1, 1, 31882, 0, -7264.14, 5079.22, -268.281, 0.16403, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408929, 42639, 0, 1, 1, 31882, 0, -7258.4, 5077.5, -268.246, 3.76898, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408930, 42639, 0, 1, 1, 31882, 0, -7251.69, 5065.89, -268.115, 1.4676, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408931, 42639, 0, 1, 1, 31882, 0, -7247.08, 5077.4, -267.431, -0.0489766, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408932, 42639, 0, 1, 1, 31882, 0, -7251.39, 5072.89, -267.533, 0.0962593, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408933, 42639, 0, 1, 1, 31882, 0, -7255.17, 5078.4, -264.157, 0.713965, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408934, 42639, 0, 1, 1, 31882, 0, -7250.1, 5074.85, -263.88, 0.820972, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408935, 42639, 0, 1, 1, 31882, 0, -7250.35, 5080.48, -263.686, 1.56322, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408936, 42639, 0, 1, 1, 31882, 0, -7262.98, 4649.14, -283.528, 3.14309, 300, 3, 0, 89358, 0, 1, 0, 0, 0),
(408937, 42639, 0, 1, 1, 31882, 0, -7294.62, 4632.87, -278.415, 5.53698, 300, 3, 0, 89358, 0, 1, 0, 0, 0);
UPDATE `creature_template` SET `KillCredit2` = 41222, `unit_flags2` = 2048 WHERE `entry` = 41979;
UPDATE `creature` SET `phaseMask` = 65535 WHERE `guid` = 407448;
DELETE FROM `creature` WHERE `id`=54611;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(1386148, 54611, 860, 5736, 5843, 1, 65535, 0, 0, 1379.91, 3169.6, 137.018, 1.00893, 120, 0, 0, 497, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 26699;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 26699;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 26699;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2487, 26699);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 2487;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 26699;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 26699;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (2496, 26699);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=2496;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 26699;
DELETE FROM `creature_questrelation` WHERE `quest` = 26630;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 26630;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 26630;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2487, 26630);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 2487;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 26630;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 26630;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (2487, 26630);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=2487;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 26630;
DELETE FROM `creature_questrelation` WHERE `quest` = 26700;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 26700;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 26700;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2487, 26700);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 2487;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 26700;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 26700;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (2496, 26700);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=2496;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 26700;
DELETE FROM `creature_loot_template` WHERE (`entry`=2369) AND (`item`=63686);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (2369, 63686, 6, 1, 0, 1, 1);
DELETE FROM `creature_questrelation` WHERE `quest` = 28485;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28485;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28485;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2418, 28485);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 2418;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28485;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28485;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (2418, 28485);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=2418;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 28485;
DELETE FROM `creature_loot_template` WHERE (`entry`=47759) AND (`item`=63090);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (47759, 63090, 69, 1, 0, 1, 1);
DELETE FROM `creature_questrelation` WHERE `quest` = 25005;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25005;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25005;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (1500, 25005);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 1500;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25005;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25005;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (1499, 25005);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=1499;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 25005;
DELETE FROM `creature` WHERE `id`=44450;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408938, 44450, 0, 1, 1, 33908, 0, 1397.27, -1370.4, 53.834, 5.25344, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408939, 44450, 0, 1, 1, 33908, 0, 1360.59, -1418.91, 47.7604, 4.41568, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408940, 44450, 0, 1, 1, 33908, 0, 1344.69, -1419.47, 48.6362, 4.76475, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408941, 44450, 0, 1, 1, 33908, 0, 1318.82, -1385.91, 46.1433, 4.66003, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408942, 44450, 0, 1, 1, 33908, 0, 1452.99, -1425.85, 64.8294, 4.06662, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408943, 44450, 0, 1, 1, 33908, 0, 1419.92, -1392.89, 55.0793, 4.81711, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408944, 44450, 0, 1, 1, 33908, 0, 1413.1, -1394.7, 55.1362, 5.23599, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408945, 44450, 0, 1, 1, 33908, 0, 1406.45, -1383.24, 54.1256, 5.16617, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408946, 44450, 0, 1, 1, 33908, 0, 1384.08, -1365.52, 53.797, 5.32325, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408947, 44450, 0, 1, 1, 33908, 0, 1384.57, -1376.99, 55.2564, 5.60251, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408948, 44450, 0, 1, 1, 33908, 0, 1379.32, -1347.15, 53.7986, 5.48033, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408949, 44450, 0, 1, 1, 33908, 0, 1396.69, -1367.5, 53.8336, 5.09636, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408950, 44450, 0, 1, 1, 33908, 0, 1293.73, -1408.55, 49.7814, 5.79449, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408951, 44450, 0, 1, 1, 33908, 0, 1343.32, -1468.32, 55.7326, 5.18308, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408952, 44450, 0, 1, 1, 33908, 0, 1391.74, -1484.75, 55.4573, 4.93928, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408953, 44450, 0, 1, 1, 33908, 0, 1412.96, -1391.2, 54.8744, 1.88957, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408954, 44450, 0, 1, 1, 33908, 0, 1413.24, -1439.26, 55.941, 6.0912, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408955, 44450, 0, 1, 1, 33908, 0, 1430, -1464.76, 54.132, 3.60294, 300, 0, 0, 2452, 1283, 0, 0, 0, 0),
(408956, 44450, 0, 1, 1, 33908, 0, 1319.95, -1404.84, 46.2644, 4.95674, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408957, 44450, 0, 1, 1, 33908, 0, 1326.94, -1376.93, 46.2852, 4.27606, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408958, 44450, 0, 1, 1, 33908, 0, 1315.09, -1406.18, 46.5146, 5.044, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408959, 44450, 0, 1, 1, 33908, 0, 1321.66, -1428.57, 48.1665, 5.32325, 300, 3, 0, 2452, 1283, 1, 0, 0, 0),
(408960, 44450, 0, 1, 1, 33908, 0, 1324.99, -1427.14, 48.3051, 5.32325, 300, 3, 0, 2452, 1283, 1, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=49425;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408961, 49425, 0, 1, 1, 36383, 0, 1962.83, 1417.6, 67.4629, 3.56047, 300, 0, 0, 86, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 43067;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 43068;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 43069;
DELETE FROM `gameobject` WHERE `id`=180436;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(411278, 180436, 1, 1, 1, -6327.62, 1616.49, 23.1831, 0.994836, 0, 0, 0.477158, 0.878817, 300, 100, 1),
(411279, 180436, 1, 1, 1, -6355.86, 1727.92, 15.1053, -0.436331, 0, 0, -0.216439, 0.976296, 300, 100, 1),
(411280, 180436, 1, 1, 1, -6327.02, 1778.81, 4.00317, 2.07694, 0, 0, 0.861628, 0.50754, 300, 100, 1),
(411281, 180436, 1, 1, 1, -6471.72, 1850.61, 3.59942, 0.645773, 0, 0, 0.317305, 0.948324, 300, 100, 1),
(411282, 180436, 1, 1, 1, -6151.03, 1747.77, 28.9163, -1.91986, 0, 0, -0.819152, 0.573577, 300, 100, 1),
(411283, 180436, 1, 1, 1, -6264.88, 1611.38, 4.17541, 1.98967, 0, 0, 0.83867, 0.54464, 300, 100, 1),
(411284, 180436, 1, 1, 1, -6140.71, 1819.92, 39.5031, 1.65806, 0, 0, 0.737277, 0.675591, 300, 100, 1);
DELETE FROM `creature_questrelation` WHERE `quest` = 12920;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12920;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12920;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (29651, 12920);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 29651;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12920;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12920;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (29651, 12920);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=29651;
DELETE FROM `quest_start_scripts` WHERE `id`=12920;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(12920, 10, 8, 29579, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `StartScript` = 12920 WHERE `Id` = 12920;
DELETE FROM `creature_questrelation` WHERE `quest` = 13285;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13285;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13285;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (29579, 13285);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 29579;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13285;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13285;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (29651, 13285);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=29651;
DELETE FROM `quest_start_scripts` WHERE `id`=13285;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(13285, 10, 8, 31810, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `StartScript` = 13285 WHERE `Id` = 13285;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 30209;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 30211;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 30212;
DELETE FROM `creature_questrelation` WHERE `quest` = 28600;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28600;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28600;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (13817, 28600);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 13817;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28600;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28600;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (48545, 28600);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=48545;
DELETE FROM `quest_start_scripts` WHERE `id`=28600;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(28600, 10, 7, 28600, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `Flags` = 2, `StartScript` = 28600 WHERE `Id` = 28600;
DELETE FROM `creature_questrelation` WHERE `quest` = 27151;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27151;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27151;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45147, 27151);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45147;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27151;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27151;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45147, 27151);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45147;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 27151;
DELETE FROM `creature_questrelation` WHERE `quest` = 27152;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27152;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27152;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45147, 27152);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45147;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45155, 27152);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45155;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27152;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27152;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45147, 27152);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45147;
UPDATE `quest_template` SET `Flags` = 4 WHERE `Id` = 27152;
DELETE FROM `creature_questrelation` WHERE `quest` = 27153;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27153;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27153;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45147, 27153);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45147;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45148, 27153);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45148;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45149, 27153);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45149;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45150, 27153);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45150;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45151, 27153);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45151;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27153;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27153;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45147, 27153);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45147;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 27153;
DELETE FROM `creature_questrelation` WHERE `quest` = 27154;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27154;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27154;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45147, 27154);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45147;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45152, 27154);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45152;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27154;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27154;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45147, 27154);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45147;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 27154;
DELETE FROM `creature_questrelation` WHERE `quest` = 27155;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27155;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27155;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45147, 27155);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45147;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27155;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27155;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (44441, 27155);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=44441;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 27155;
DELETE FROM `creature_questrelation` WHERE `quest` = 28324;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28324;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28324;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2391, 28324);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 2391;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28324;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28324;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (2391, 28324);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=2391;
UPDATE `quest_template` SET `RequiredNpcOrGoCount1` = 25 WHERE `Id` = 28324;
UPDATE `creature_template` SET `KillCredit1` = 44838 WHERE `entry` = 44284;
DELETE FROM `creature_questrelation` WHERE `quest` = 13058;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13058;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13058;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (30381, 13058);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 30381;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13058;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13058;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (30381, 13058);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=30381;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = '-194123', `RequiredNpcOrGoCount1` = 1 WHERE `Id` = 13058;
UPDATE `creature_template` SET `KillCredit2` = 45090 WHERE `entry` = 45098;
UPDATE `creature_template` SET `KillCredit2` = 45098 WHERE `entry` = 45098;
DELETE FROM `creature` WHERE `id`=45098;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408962, 45098, 0, 1, 1, 1693, 0, 1790.57, -1251.74, 60.0958, 2.6529, 300, 0, 0, 8141, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `KillCredit2` = 45090 WHERE `entry` = 1784;
DELETE FROM `creature` WHERE `id`=1784;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(1321041, 1784, 0, 28, 199, 1, 1, 11403, 0, 1813.77, -1217.02, 60.3427, 6.02696, 315, 5, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321040, 1784, 0, 28, 199, 1, 1, 11403, 0, 1751.94, -1189.94, 59.6755, 3.29843, 315, 5, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321039, 1784, 0, 28, 199, 1, 1, 11403, 0, 1762.36, -1250.16, 60.6525, 0, 315, 0, 0, 2384, 1864, 0, 0, 0, 0, 0),
(1321038, 1784, 0, 28, 5427, 1, 1, 11403, 0, 1076.55, -1932.1, 38.6803, 5.29556, 315, 0, 0, 2384, 1864, 0, 0, 0, 0, 0),
(1321037, 1784, 0, 28, 5427, 1, 1, 11403, 0, 1048.32, -1939.69, 38.6803, 1.90925, 315, 0, 0, 2384, 1864, 0, 0, 0, 0, 0),
(1321036, 1784, 0, 28, 5427, 1, 1, 11403, 0, 1046.99, -1901.58, 48.0689, 2.37109, 315, 3, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321035, 1784, 0, 28, 5427, 1, 1, 11403, 0, 1075.29, -1938.72, 38.6803, 1.0492, 315, 0, 0, 2384, 1864, 0, 0, 0, 0, 0),
(1321034, 1784, 0, 28, 5427, 1, 1, 11403, 0, 1080.58, -1938.73, 38.6803, 1.26046, 315, 0, 0, 2384, 1864, 0, 0, 0, 0, 0),
(1321033, 1784, 0, 28, 199, 1, 1, 11403, 0, 1806.2, -1180.43, 59.8035, 0, 315, 0, 0, 2384, 1864, 0, 0, 0, 0, 0),
(1321032, 1784, 0, 28, 5427, 1, 1, 11403, 0, 1074.05, -1903.01, 62.2564, 2.19313, 315, 3, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321031, 1784, 0, 28, 5427, 1, 1, 11403, 0, 1075.62, -1936.35, 63.4374, 4.84868, 315, 10, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321030, 1784, 0, 28, 5427, 1, 1, 11403, 0, 1075.59, -1901.99, 48.0661, 2.82862, 315, 5, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321029, 1784, 0, 28, 5427, 1, 1, 11403, 0, 1068.34, -1935.53, 63.4374, 2.9588, 315, 3, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321028, 1784, 0, 28, 199, 1, 1, 11403, 0, 1721.9, -1140.79, 60.801, 2.67889, 315, 10, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321027, 1784, 0, 28, 199, 1, 1, 11403, 0, 1725.5, -1190.47, 59.7376, 5.71821, 315, 5, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321026, 1784, 0, 28, 199, 1, 1, 11403, 0, 1729.2, -1172.24, 59.3638, 4.95674, 315, 0, 0, 2384, 1864, 0, 0, 0, 0, 0),
(1321025, 1784, 0, 28, 5427, 1, 1, 11403, 0, 1063.46, -1904.11, 48.152, 1.32645, 315, 0, 0, 2384, 1864, 0, 0, 0, 0, 0),
(1321024, 1784, 0, 28, 5427, 1, 1, 11403, 0, 1090.62, -1911.5, 62.2564, 1.98389, 315, 3, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321023, 1784, 0, 28, 5427, 1, 1, 11403, 0, 1078.15, -1914.53, 63.1367, 0.760242, 315, 0, 0, 2384, 1864, 0, 0, 0, 0, 0),
(1321022, 1784, 0, 28, 199, 1, 1, 11403, 0, 1816.35, -1196.66, 59.7774, 0.99643, 315, 10, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321021, 1784, 0, 28, 199, 1, 1, 11403, 0, 1819.69, -1240.62, 59.6902, 4.29384, 315, 5, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321020, 1784, 0, 28, 199, 1, 1, 11403, 0, 1792.55, -1272.58, 60.8942, 0.48906, 315, 5, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321019, 1784, 0, 28, 199, 1, 1, 11403, 0, 1746.35, -1113.02, 63.2282, 5.12288, 315, 5, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321018, 1784, 0, 28, 199, 1, 1, 11403, 0, 1755.67, -1120.25, 62.4782, 2.97425, 315, 5, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321042, 1784, 0, 28, 28, 1, 1, 11403, 0, 1659.38, -1198.7, 61.3709, 2.96606, 315, 5, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321043, 1784, 0, 28, 199, 1, 1, 11403, 0, 1789.06, -1246.67, 59.8019, 1.97868, 315, 5, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321044, 1784, 0, 28, 199, 1, 1, 11403, 0, 1719.26, -1239.61, 60.05, 1.97318, 315, 5, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321045, 1784, 0, 28, 199, 1, 1, 11403, 0, 1802.59, -1206.49, 59.6568, 0, 315, 10, 0, 2384, 1864, 1, 0, 0, 0, 0),
(1321046, 1784, 0, 28, 199, 1, 1, 11403, 0, 1809.88, -1156.74, 60.1861, 1.4269, 315, 5, 0, 2384, 1864, 1, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 48136;
UPDATE `creature_template` SET `questItem2` = 60679 WHERE `entry` = 44473;
DELETE FROM `creature_loot_template` WHERE (`entry`=44473) AND (`item`=60679);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (44473, 60679, -100, 1, 0, 1, 1);
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 29384;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 62814;
DELETE FROM `creature_questrelation` WHERE `quest` = 28538;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28538;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28538;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2278, 28538);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 2278;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28538;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28538;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (2278, 28538);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=2278;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 28538;
DELETE FROM `creature_questrelation` WHERE `quest` = 28566;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28566;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28566;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2278, 28566);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 2278;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (48878, 28566);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 48878;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (48880, 28566);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 48880;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28566;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28566;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (2278, 28566);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=2278;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 28566;
DELETE FROM `creature_questrelation` WHERE `quest` = 28603;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28603;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28603;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2278, 28603);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 2278;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (48922, 28603);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 48922;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (48923, 28603);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 48923;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (48924, 28603);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 48924;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28603;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28603;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (2278, 28603);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=2278;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 28603;
DELETE FROM `creature_questrelation` WHERE `quest` = 27613;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27613;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27613;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (16115, 27613);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 16115;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27613;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27613;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (16115, 27613);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=16115;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 27613;

-- Fix
DELETE FROM `creature_questrelation` WHERE `quest` = 9215;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 9215;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 9215;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (16220, 9215);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 16220;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (181153, 9215);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9215;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 9215;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (16220, 9215);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=16220;
DELETE FROM `creature_questrelation` WHERE `quest` = 9156;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 9156;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 9156;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (181147, 9156);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9156;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 9156;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (16200, 9156);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=16200;
DELETE FROM `creature_questrelation` WHERE `quest` = 9167;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 9167;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 9167;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (16239, 9167);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 16239;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9167;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 9167;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (16239, 9167);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=16239;
DELETE FROM `creature_questrelation` WHERE `quest` = 9315;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 9315;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 9315;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (16601, 9315);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 16601;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9315;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 9315;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (16197, 9315);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=16197;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 46768;
DELETE FROM `creature_questrelation` WHERE `quest` = 27615;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27615;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27615;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (16112, 27615);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 16112;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27615;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27615;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (16112, 27615);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=16112;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 27615;
DELETE FROM `creature` WHERE `id`=46093;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408963, 46093, 0, 1, 1, 0, 0, 1597.88, -5308.08, 68.7318, 0.449616, 600, 5, 0, 2642, 1381, 1, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=53009;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408964, 53009, 571, 1, 65535, 0, 0, 3546.56, 5882.51, 143.915, 1.18275, 300, 0, 0, 77490, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 27450;
UPDATE `creature_template` SET `KillCredit2` = 27450 WHERE `entry` = 27355;
DELETE FROM `creature_questrelation` WHERE `quest` = 12267;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12267;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12267;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (26593, 12267);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 26593;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12267;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12267;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (26593, 12267);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=26593;
UPDATE `quest_template` SET `RequiredSpellCast1` = 0 WHERE `Id` = 12267;
DELETE FROM `creature_loot_template` WHERE (`entry`=2743) AND (`item`=62650);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (2743, 62650, -50, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (2742, 62650, -37, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (2739, 62650, -23, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (2740, 62650, -22, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=2725) AND (`item`=62390);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (2725, 62390, -58, 1, 0, 1, 1);
DELETE FROM `creature_questrelation` WHERE `quest` = 27890;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27890;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27890;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (46654, 27890);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 46654;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27890;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27890;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (47011, 27890);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=47011;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 27890;
DELETE FROM `creature` WHERE `id`=47011;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408965, 47011, 0, 1, 1, 8351, 0, -6733.3, -2481.69, 274.261, 6.16101, 300, 0, 0, 1592, 1640, 0, 0, 0, 0);
UPDATE `creature_template` SET `KillCredit2` = 46398, `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 46769;
UPDATE `creature_template` SET `KillCredit2` = 27625, `unit_flags` = 512 WHERE `entry` = 27607;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `unit_flags` = 33280 WHERE `entry` = 27588;
DELETE FROM `creature_loot_template` WHERE (`entry`=5840) AND (`item`=18960);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (5840, 18960, -25, 1, 0, 1, 1);
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `unit_flags` = 512 WHERE `entry` = 41193;
UPDATE `creature_template` SET `KillCredit2` = 47467 WHERE `entry` = 47470;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 47423;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 47424;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 47425;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 47426;
DELETE FROM `creature_questrelation` WHERE `quest` = 28047;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28047;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28047;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (47383, 28047);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 47383;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28047;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28047;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (47383, 28047);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=47383;
UPDATE `quest_template` SET `RequiredSpellCast1` = 0, `RequiredSpellCast2` = 0, `RequiredSpellCast3` = 0, `RequiredSpellCast4` = 0 WHERE `Id` = 28047;
DELETE FROM `creature` WHERE `id`=46094;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408966, 46094, 0, 1, 1, 0, 0, 1618.84, -5292.09, 99.9683, 5.86258, 600, 5, 0, 2642, 1381, 1, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=46092;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408967, 46092, 0, 1, 1, 0, 0, 1603.47, -5300.02, 91.1053, 5.75556, 600, 5, 0, 2642, 1381, 1, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 27456;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27456;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27456;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (16134, 27456);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 16134;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27456;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27456;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (16134, 27456);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=16134;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 27456;
DELETE FROM `creature_questrelation` WHERE `quest` = 27389;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27389;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27389;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (10667, 27389);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 10667;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27389;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27389;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (10667, 27389);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=10667;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 27389;
DELETE FROM `creature_questrelation` WHERE `quest` = 27452;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27452;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27452;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (11035, 27452);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 11035;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27452;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27452;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (11035, 27452);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=11035;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 27452;
DELETE FROM `creature_questrelation` WHERE `quest` = 27451;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27451;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27451;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (11035, 27451);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 11035;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27451;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27451;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (11035, 27451);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=11035;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 27451;
DELETE FROM `creature` WHERE `id`=7783;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(1386220, 7783, 1, 0, 0, 1, 1, 6879, 0, 3098.16, -6361.3, 8.19374, 1.90241, 500, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(408444, 7783, 0, 0, 0, 1, 1, 6879, 0, -11457, -2635.34, 4.03531, 1.64061, 300, 0, 0, 3758, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 28029;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28029;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28029;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (47393, 28029);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 47393;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28029;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28029;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (47393, 28029);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=47393;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 28029;
DELETE FROM `creature_questrelation` WHERE `quest` = 28030;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28030;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28030;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (47393, 28030);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 47393;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28030;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28030;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (47393, 28030);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=47393;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 28030;
DELETE FROM `gameobject` WHERE `id`=179832;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(411285, 179832, 0, 1, 1, -6537.14, -1350.39, 208.893, -0.544852, 0, 0, -0.269069, 0.963121, 300, 100, 1);
DELETE FROM `creature` WHERE `id`=14634;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408968, 14634, 0, 1, 1, 14662, 0, -6495.11, -1164.92, 309.276, 2.89725, 300, 0, 0, 3997, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=47269;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408969, 47269, 0, 1, 1, 11548, 0, -6892.28, -1860.73, 251.118, 2.54818, 300, 0, 0, 1990, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=47440;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408970, 47440, 0, 1, 1, 35623, 0, -7125.42, -1189.46, 306.458, 4.53786, 300, 0, 0, 3201, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 48133;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 48133;
DELETE FROM `creature_questrelation` WHERE `quest` = 28424;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28424;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28424;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (14437, 28424);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 14437;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28424;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28424;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (14437, 28424);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=14437;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 28424;
DELETE FROM `creature` WHERE `id`=48569;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408971, 48569, 0, 1, 1, 36191, 0, -7499.74, -2188.6, 165.741, 3.03687, 300, 0, 0, 122820, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=48565;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408972, 48565, 0, 1, 1, 36185, 0, -7501.6, -2190.92, 165.666, 1.8326, 300, 0, 0, 4906, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `minlevel` = 40, `maxlevel` = 40 WHERE `entry` = 45278;
DELETE FROM `creature_questrelation` WHERE `quest` = 27328;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27328;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27328;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45278, 27328);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45278;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27328;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27328;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45278, 27328);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45278;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 27328;
DELETE FROM `creature_questrelation` WHERE `quest` = 27328;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27328;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27328;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45278, 27328);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45278;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27328;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27328;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45278, 27328);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45278;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 27328;
DELETE FROM `creature_questrelation` WHERE `quest` = 27326;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27326;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27326;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45278, 27326);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45278;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27326;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27326;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45278, 27326);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45278;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 27326;
DELETE FROM `creature_questrelation` WHERE `quest` = 27324;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27324;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27324;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45278, 27324);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45278;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27324;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27324;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45278, 27324);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45278;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 27324;
DELETE FROM `creature_questrelation` WHERE `quest` = 27315;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27315;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27315;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45278, 27315);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45278;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27315;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27315;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45278, 27315);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45278;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 27315;
DELETE FROM `creature_questrelation` WHERE `quest` = 27319;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27319;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27319;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45278, 27319);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45278;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27319;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27319;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45278, 27319);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45278;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 27319;
DELETE FROM `creature_questrelation` WHERE `quest` = 27313;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27313;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27313;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45278, 27313);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45278;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27313;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27313;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45278, 27313);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45278;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 27313;
DELETE FROM `creature_questrelation` WHERE `quest` = 27311;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27311;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27311;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45278, 27311);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45278;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27311;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27311;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45278, 27311);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45278;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 27311;
DELETE FROM `creature_questrelation` WHERE `quest` = 27358;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27358;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27358;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45278, 27358);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45278;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27358;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27358;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45442, 27358);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45442;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 27358;
DELETE FROM `creature_questrelation` WHERE `quest` = 27321;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27321;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27321;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45278, 27321);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45278;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27321;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27321;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45278, 27321);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45278;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 27321;
DELETE FROM `creature_questrelation` WHERE `quest` = 28284;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28284;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28284;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45278, 28284);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45278;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28284;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28284;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (48208, 28284);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=48208;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 28284;
UPDATE `creature_template` SET `KillCredit2` = 47446 WHERE `entry` = 47388;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(408973, 60571, 1, 1, 1, 1348.894, -4368.415, 26.44967, 6.058849, 120, 0, 0); -- 60571 (Area: 4982)
DELETE FROM `creature` WHERE `id`=38703;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408974, 38703, 1, 1, 1, 29472, 0, -7954.87, -5245.22, 1.33514, 5.06145, 300, 0, 0, 6645, 0, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 12972;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12972;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12972;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (29975, 12972);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 29975;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12972;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12972;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (29592, 12972);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=29592;
UPDATE `quest_template` SET `Flags` = 136 WHERE `Id` = 12972;
DELETE FROM `creature_questrelation` WHERE `quest` = 29437;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 29437;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 29437;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (40289, 29437);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 40289;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (46998, 29437);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 46998;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (52793, 29437);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 52793;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 29437;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 29437;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (40289, 29437);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=40289;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 29437;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `unit_flags` = 33280, `unit_flags2` = 2048 WHERE `entry` = 54314;
DELETE FROM `creature_questrelation` WHERE `quest` = 31833;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 31833;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 31833;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (66260, 31833);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 66260;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 31833;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 31833;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (66260, 31833);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=66260;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 31833;
DELETE FROM `creature_questrelation` WHERE `quest` = 31835;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 31835;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 31835;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (66260, 31835);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 66260;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 31835;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 31835;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (66260, 31835);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=66260;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 31835;
DELETE FROM `creature_questrelation` WHERE `quest` = 31836;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 31836;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 31836;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (66260, 31836);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 66260;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 31836;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 31836;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (66260, 31836);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=66260;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 31836;
DELETE FROM `creature_questrelation` WHERE `quest` = 31837;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 31837;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 31837;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (66260, 31837);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 66260;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 31837;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 31837;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (66260, 31837);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=66260;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 31837;
DELETE FROM `creature_questrelation` WHERE `quest` = 31838;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 31838;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 31838;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (66260, 31838);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 66260;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 31838;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 31838;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (66260, 31838);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=66260;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 31838;
DELETE FROM `creature_questrelation` WHERE `quest` = 31839;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 31839;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 31839;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 31839;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 31839;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (66260, 31839);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=66260;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 31839;
DELETE FROM `creature_questrelation` WHERE `quest` = 8310;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 8310;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 8310;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (15171, 8310);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 15171;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8310;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 8310;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (15171, 8310);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=15171;
DELETE FROM `creature_questrelation` WHERE `quest` = 8304;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 8304;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 8304;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (15181, 8304);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 15181;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8304;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 8304;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (15181, 8304);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=15181;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 8304;
DELETE FROM `creature_questrelation` WHERE `quest` = 25949;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25949;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25949;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (40105, 25949);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 40105;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (41750, 25949);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 41750;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (41769, 25949);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 41769;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (41793, 25949);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 41793;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25949;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25949;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (40105, 25949);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=40105;
DELETE FROM `quest_start_scripts` WHERE `id`=25949;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(25949, 10, 8, 41759, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `Flags` = 136, `StartScript` = 25949 WHERE `Id` = 25949;
UPDATE `creature_template` SET `KillCredit2` = 38576, `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 38571;
UPDATE `creature_template` SET `KillCredit2` = 39073 WHERE `entry` = 5474;
UPDATE `creature_template` SET `KillCredit2` = 38996 WHERE `entry` = 39081;
UPDATE `creature_template` SET `KillCredit2` = 40509 WHERE `entry` = 5426;
UPDATE `creature_template` SET `KillCredit2` = 40501, `faction_A` = 7, `faction_H` = 7, `unit_flags` = 33280 WHERE `entry` = 40483;
DELETE FROM `creature` WHERE `id`=41460;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408975, 41460, 1, 1, 1, 34376, 0, -5438.34, -2423.82, 90.2828, 1.37881, 300, 0, 0, 3302, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `unit_flags` = 33280, `unit_flags2` = 2048 WHERE `entry` = 41460;
DELETE FROM `creature_questrelation` WHERE `quest` = 25046;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25046;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25046;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (13158, 25046);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 13158;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25046;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25046;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (10837, 25046);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=10837;
DELETE FROM `quest_start_scripts` WHERE `id`=25046;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(25046, 10, 8, 39098, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `Flags` = 8, `StartScript` = 25046 WHERE `Id` = 25046;
DELETE FROM `creature_loot_template` WHERE (`entry`=4667) AND (`item`=49008);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (4667, 49008, -50, 1, 0, 1, 1);
DELETE FROM `gameobject` WHERE `id`=195517;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(411286, 195517, 1, 1, 1, -345.641, 821.896, 94.9257, -0.890115, 0, 0, -0.43051, 0.902586, 300, 255, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=4676) AND (`item`=49200);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (4676, 49200, 55, 1, 0, 1, 1);
UPDATE `creature` SET `unit_flags` = 0 WHERE `id` = 58906;
UPDATE `creature_template` SET `unit_flags` = 32768, `dynamicflags` = 0 WHERE `entry` = 58906;
UPDATE `creature_template` SET `unit_flags2` = 2048 WHERE `entry` = 58906;
UPDATE `creature_template` SET `KillCredit2` = 35843, `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 35842;
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 65663;
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 65666;
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 65667;
DELETE FROM `creature_questrelation` WHERE `quest` = 6132;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 6132;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 6132;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (12277, 6132);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 12277;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 6132;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 6132;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (6019, 6132);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=6019;
DELETE FROM `quest_start_scripts` WHERE `id`=6132;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(6132, 10, 7, 6132, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `Flags` = 2, `StartScript` = 6132 WHERE `Id` = 6132;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 0 WHERE `entry` = 36183;
UPDATE `creature_template` SET `KillCredit2` = 36230 WHERE `entry` = 90;
DELETE FROM `creature_questrelation` WHERE `quest` = 14346;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 14346;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 14346;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (36034, 14346);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 36034;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 14346;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 14346;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (36034, 14346);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=36034;
DELETE FROM `quest_start_scripts` WHERE `id`=14346;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(14346, 10, 8, 36232, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `StartScript` = 14346 WHERE `Id` = 14346;
DELETE FROM `creature` WHERE `id`=35647;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(408206, 35647, 1, 0, 0, 1, 1, 4427, 0, -348.068, 1763.64, 138.371, 2.33778, 300, 0, 0, 1509, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_loot_template` WHERE (`entry`=4674) AND (`item`=48857);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (4674, 48857, -100, 1, 0, 1, 1);
DELETE FROM `creature_questrelation` WHERE `quest` = 14213;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 14213;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 14213;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (195497, 14213);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 14213;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 14213;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (195497, 14213);
DELETE FROM `quest_start_scripts` WHERE `id`=14213;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(14213, 10, 8, 35581, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `RequiredItemId1` = 48857, `RequiredItemCount1` = 10, `StartScript` = 14213 WHERE `Id` = 14213;
DELETE FROM `gameobject` WHERE `id`=195433;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(411287, 195433, 1, 1, 1, -425.443, 1117.79, 97.2411, -0.401424, 0, 0, -0.199367, 0.979925, 300, 255, 1);
DELETE FROM `creature_template_addon` WHERE (`entry`=36123);
UPDATE `creature` SET `modelid` = 0 WHERE `id` = 36123;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 36123;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 35827;
DELETE FROM `creature_questrelation` WHERE `quest` = 14260;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 14260;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 14260;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (35773, 14260);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 35773;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (35827, 14260);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 35827;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 14260;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 14260;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (35827, 14260);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=35827;
DELETE FROM `quest_start_scripts` WHERE `id`=14260;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(14260, 10, 8, 51145, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `Flags` = 8, `StartScript` = 14260 WHERE `Id` = 14260;

-- Fix
DELETE FROM `creature_questrelation` WHERE `quest` = 31853;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 31853;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 31853;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (54870, 31853);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 54870;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 31853;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 31853;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (54870, 31853);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=54870;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (55054, 31853);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=55054;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 31853;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(408976, 55054, 1, 1, 1, 1862.281, -5461.901, 443.814, 3.174382, 120, 0, 0); -- 55054 (Area: 374)
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 41671;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 42046;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 41768;
DELETE FROM `creature` WHERE `id`=41768;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408977, 41768, 0, 1, 1, 32580, 0, -5775.43, -1991.7, 399.854, 3.68265, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408978, 41768, 0, 1, 1, 32580, 0, -5715.08, -1960.67, 395.539, 5.63741, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408979, 41768, 0, 1, 1, 32580, 0, -5744.9, -1994.26, 395.539, 0.20944, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408980, 41768, 0, 1, 1, 32580, 0, -5659.23, -1885.82, 395.539, 4.18879, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408981, 41768, 0, 1, 1, 32580, 0, -5656.17, -1934.24, 395.278, 1.72788, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408982, 41768, 0, 1, 1, 32580, 0, -5687.05, -1927.1, 395.539, 5.13127, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408983, 41768, 0, 1, 1, 32580, 0, -5664.72, -1957.09, 395.337, 1.51844, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408984, 41768, 0, 1, 1, 32580, 0, -5654.29, -1995.44, 395.26, 2.70526, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408985, 41768, 0, 1, 1, 32580, 0, -5655.28, -2087.21, 399.725, 1.37881, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408986, 41768, 0, 1, 1, 32580, 0, -5736.01, -2054.17, 395.539, 1.09956, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408987, 41768, 0, 1, 1, 32580, 0, -5700.1, -1999.36, 395.539, 2.21657, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408988, 41768, 0, 1, 1, 32580, 0, -5598.48, -2018.34, 395.392, 5.2709, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408989, 41768, 0, 1, 1, 32580, 0, -5666.14, -2033.83, 395.454, 4.43314, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408990, 41768, 0, 1, 1, 32580, 0, -5618.07, -2052.23, 395.539, 0.383972, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408991, 41768, 0, 1, 1, 32580, 0, -5636.21, -2033.33, 395.365, 4.83456, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408992, 41768, 0, 1, 1, 32580, 0, -5567.8, -1975.57, 395.539, 2.44346, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408993, 41768, 0, 1, 1, 32580, 0, -5604, -1969.36, 395.292, 5.37561, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408994, 41768, 0, 1, 1, 32580, 0, -5563.93, -2025.25, 395.539, 2.23402, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408995, 41768, 0, 1, 1, 32580, 0, -5627.28, -1906.04, 395.539, 3.82227, 300, 0, 0, 59, 0, 0, 0, 0, 0),
(408996, 41768, 0, 1, 1, 32580, 0, -5614.44, -1932.03, 395.374, 5.96903, 300, 0, 0, 59, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=10081;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408997, 10081, 209, 2, 1, 0, 0, 1627.47, 1186.85, 8.87693, 0.647954, 28800, 0, 0, 16496, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 10081;
DELETE FROM `creature` WHERE `id`=40131;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408998, 40131, 1, 1, 1, 0, 0, -5279.9, 863.9, 159.462, 4.18879, 600, 0, 0, 970, 2861, 0, 0, 0, 0);
UPDATE `gameobject` SET `animprogress` = 100 WHERE `id` = 214945;
UPDATE `gameobject_template` SET `flags` = 4, `data0` = 43 WHERE `entry` = 214945;
DELETE FROM `creature_template_addon` WHERE (`entry`=41628);
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 41628;
DELETE FROM `creature_questrelation` WHERE `quest` = 24749;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 24749;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 24749;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (37120, 24749);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 37120;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24749;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 24749;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (37120, 24749);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=37120;
DELETE FROM `quest_start_scripts` WHERE `id`=24749;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(24749, 10, 7, 24749, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `Flags` = 74, `RequiredNpcOrGo1` = 38586, `RequiredNpcOrGoCount1` = 1, `StartScript` = 24749 WHERE `Id` = 24749;
DELETE FROM `creature_questrelation` WHERE `quest` = 25475;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25475;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25475;
UPDATE `item_template` SET `startquest`=25475 WHERE `entry` = 8705;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25475;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25475;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (7807, 25475);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=7807;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 0 WHERE `Id` = 25475;
UPDATE `creature_template` SET `questItem1` = 9597 WHERE `entry` = 40026;
DELETE FROM `creature_loot_template` WHERE (`entry`=40026) AND (`item`=9597);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (40026, 9597, -100, 1, 0, 1, 1);
DELETE FROM `creature` WHERE `id`=39407;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(408999, 39407, 1, 1, 1, 31436, 0, -4333.05, -225.675, 125.258, 1.72788, 300, 0, 0, 21495, 19394, 0, 0, 0, 0),
(409000, 39407, 1, 1, 1, 31436, 0, -3079.56, 2570.53, 53.7386, 4.03171, 300, 0, 0, 21495, 19394, 0, 0, 0, 0);
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3 WHERE `entry` = 39407;
DELETE FROM `creature_questrelation` WHERE `quest` = 27060;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27060;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27060;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (44807, 27060);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 44807;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27060;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27060;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (1747, 27060);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=1747;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (44293, 27060);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=44293;
UPDATE `quest_template` SET `Flags` = 136, `RequiredNpcOrGo1` = 0, `RequiredNpcOrGo2` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredNpcOrGoCount2` = 0 WHERE `Id` = 27060;
DELETE FROM `creature_questrelation` WHERE `quest` = 27064;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27064;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27064;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (1747, 27064);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 1747;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (44293, 27064);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 44293;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27064;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27064;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (1747, 27064);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=1747;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (44293, 27064);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=44293;
DELETE FROM `quest_start_scripts` WHERE `id`=27064;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(27064, 10, 8, 44921, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 136, `StartScript` = 27064 WHERE `Id` = 27064;
UPDATE `creature_template` SET `KillCredit2` = 44827, `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 29152;
DELETE FROM `creature_questrelation` WHERE `quest` = 26960;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 26960;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 26960;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (29611, 26960);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 29611;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 26960;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 26960;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (29611, 26960);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=29611;
DELETE FROM `quest_start_scripts` WHERE `id`=26960;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(26960, 10, 8, 44692, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `Flags` = 136, `StartScript` = 26960 WHERE `Id` = 26960;
UPDATE `creature` SET `modelid` = 0 WHERE `guid` = 103040;
DELETE FROM `creature_questrelation` WHERE `quest` = 28838;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28838;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28838;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (10929, 28838);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 10929;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28838;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28838;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (10929, 28838);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=10929;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 28838;
DELETE FROM `creature_loot_template` WHERE (`entry`=10738) AND (`item`=12842);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (10738, 12842, 100, 1, 0, 1, 1);
DELETE FROM `creature_questrelation` WHERE `quest` = 28640;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28640;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28640;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (49396, 28640);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 49396;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28640;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28640;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (49396, 28640);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=49396;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 28640;
DELETE FROM `creature_questrelation` WHERE `quest` = 28745;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28745;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28745;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (7456, 28745);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 7456;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (49537, 28745);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 49537;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28745;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28745;
UPDATE `quest_template` SET `Flags` = 524288 WHERE `Id` = 28745;
DELETE FROM `creature_questrelation` WHERE `quest` = 28637;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28637;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28637;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (49436, 28637);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 49436;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28637;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28637;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (49436, 28637);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=49436;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 28637;
DELETE FROM `creature_loot_template` WHERE (`entry`=35095) AND (`item`=47039);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (35095, 47039, 21, 1, 0, 1, 1);
DELETE FROM `creature` WHERE `id`=55738;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409001, 55738, 604, 6, 1, 27221, 0, 1859.93, 646.418, 176.765, 5.11381, 7200, 0, 0, 8508, 7981, 0, 0, 0, 0),
(409002, 55738, 604, 6, 1, 27221, 0, 1947.27, 665.446, 135.3, 1.51844, 7200, 0, 0, 8508, 7981, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 25947;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25947;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25947;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (41711, 25947);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 41711;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25947;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25947;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (41711, 25947);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=41711;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 136 WHERE `Id` = 25947;
DELETE FROM `creature_questrelation` WHERE `quest` = 25944;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25944;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25944;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (41711, 25944);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 41711;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25944;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25944;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (41711, 25944);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=41711;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 136 WHERE `Id` = 25944;
DELETE FROM `creature` WHERE `id`=7784;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(176030, 7784, 1, 440, 440, 1, 1, 0, 0, -8851.94, -4374.93, 44.6462, 5.89921, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(1330718, 7784, 1, 440, 440, 1, 65535, 0, 0, -8847.58, -4381.95, 47.5248, 5.73049, 300, 0, 0, 4435, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=19291;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409003, 19291, 530, 1, 1, 0, 0, -145.554, 1511.28, 34.3641, 5.23599, 180, 0, 0, 1, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=19292;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409004, 19292, 530, 1, 1, 0, 0, -304.408, 1524.45, 37.9685, 2.49582, 180, 0, 0, 1, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 19291;
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 19292;
DELETE FROM `creature_questrelation` WHERE `quest` = 10146;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 10146;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 10146;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (19310, 10146);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 19310;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 10146;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 10146;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (19310, 10146);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=19310;
UPDATE `quest_template` SET `RequiredSpellCast1` = 0, `RequiredSpellCast2` = 0 WHERE `Id` = 10146;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 20813;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 20814;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 20815;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 20816;
DELETE FROM `creature_questrelation` WHERE `quest` = 10792;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 10792;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 10792;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (22107, 10792);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 22107;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 10792;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 10792;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (22107, 10792);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=22107;
UPDATE `quest_template` SET `RequiredSpellCast1` = 0, `RequiredSpellCast2` = 0, `RequiredSpellCast3` = 0, `RequiredSpellCast4` = 0 WHERE `Id` = 10792;
DELETE FROM `creature_questrelation` WHERE `quest` = 10813;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 10813;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 10813;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (22231, 10813);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 22231;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 10813;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 10813;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (22231, 10813);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=22231;
UPDATE `quest_template` SET `RequiredSpellCast1` = 0 WHERE `Id` = 10813;
UPDATE `creature_template` SET `KillCredit2` = 22177 WHERE `entry` = 19440;
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `faction_A` = 7, `faction_H` = 7, `unit_flags` = 32768 WHERE `entry` = 19440;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 22177;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 35076;
DELETE FROM `creature` WHERE `id`=35076;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409005, 35076, 1, 1, 1, 11686, 0, 4635.67, -6784.81, 215.548, 0, 300, 3, 0, 5052, 0, 1, 0, 0, 0),
(409006, 35076, 1, 1, 1, 11686, 0, 4650.46, -6788.63, 218.397, 0, 300, 3, 0, 5052, 0, 1, 0, 0, 0),
(409007, 35076, 1, 1, 1, 11686, 0, 4619.61, -6774.81, 215.372, 0, 300, 3, 0, 5052, 0, 1, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 35076;
DELETE FROM `creature` WHERE `id`=34773;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409008, 34773, 1, 1, 1, 27823, 0, 4534.98, -5235.04, 304.29, 5.72468, 300, 3, 0, 42, 0, 1, 0, 0, 0),
(409009, 34773, 1, 1, 1, 27823, 0, 4514.17, -5232.38, 304.303, 5.72468, 300, 3, 0, 42, 0, 1, 0, 0, 0),
(409010, 34773, 1, 1, 1, 27823, 0, 4504.55, -5220.82, 304.287, 5.72468, 300, 3, 0, 42, 0, 1, 0, 0, 0),
(409011, 34773, 1, 1, 1, 27823, 0, 4526.21, -5223.18, 304.287, 5.72468, 300, 3, 0, 42, 0, 1, 0, 0, 0),
(409012, 34773, 1, 1, 1, 27823, 0, 4503.49, -5231.25, 304.29, 5.72468, 300, 3, 0, 42, 0, 1, 0, 0, 0),
(409013, 34773, 1, 1, 1, 27823, 0, 4505.58, -5210.48, 304.287, 5.72468, 300, 3, 0, 42, 0, 1, 0, 0, 0),
(409014, 34773, 1, 1, 1, 27823, 0, 4516.49, -5211.53, 304.287, 5.72468, 300, 3, 0, 42, 0, 1, 0, 0, 0),
(409015, 34773, 1, 1, 1, 27823, 0, 4536.45, -5224.38, 304.289, 5.72468, 300, 3, 0, 42, 0, 1, 0, 0, 0),
(409016, 34773, 1, 1, 1, 27823, 0, 4517.83, -5201.04, 304.288, 5.72468, 300, 3, 0, 42, 0, 1, 0, 0, 0),
(409017, 34773, 1, 1, 1, 27823, 0, 4528.85, -5202.38, 304.289, 5.72468, 300, 3, 0, 42, 0, 1, 0, 0, 0),
(409018, 34773, 1, 1, 1, 27823, 0, 4539.15, -5203.7, 304.287, 5.72468, 300, 3, 0, 42, 0, 1, 0, 0, 0),
(409019, 34773, 1, 1, 1, 27823, 0, 4524.71, -5233.67, 304.303, 5.72468, 300, 3, 0, 42, 0, 1, 0, 0, 0),
(409020, 34773, 1, 1, 1, 27823, 0, 4515.34, -5221.93, 304.287, 5.72468, 300, 3, 0, 42, 0, 1, 0, 0, 0),
(409021, 34773, 1, 1, 1, 27823, 0, 4537.77, -5213.72, 304.287, 5.72468, 300, 3, 0, 42, 0, 1, 0, 0, 0),
(409022, 34773, 1, 1, 1, 27823, 0, 4527.5, -5212.69, 304.287, 5.72468, 300, 3, 0, 42, 0, 1, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 512, `flags_extra` = 2 WHERE `entry` = 36345;
DELETE FROM `creature` WHERE `id`=36345;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(408230, 36345, 1, 0, 0, 1, 1, 27823, 0, 4330.53, -5053.82, 335.543, 5.79449, 300, 3, 0, 42, 0, 1, 0, 0, 0, 0),
(408231, 36345, 1, 0, 0, 1, 1, 27823, 0, 4331.03, -5086.92, 335.595, 0.366519, 300, 3, 0, 42, 0, 1, 0, 0, 0, 0),
(408232, 36345, 1, 0, 0, 1, 1, 27823, 0, 4386.87, -5113.11, 335.595, 1.81514, 300, 3, 0, 42, 0, 1, 0, 0, 0, 0),
(408233, 36345, 1, 0, 0, 1, 1, 27823, 0, 4366.58, -5120, 335.604, 1.62316, 300, 3, 0, 42, 0, 1, 0, 0, 0, 0),
(408234, 36345, 1, 0, 0, 1, 1, 27823, 0, 4336.19, -5102.63, 335.595, 0.715585, 300, 3, 0, 42, 0, 1, 0, 0, 0, 0),
(408235, 36345, 1, 0, 0, 1, 1, 27823, 0, 4322.61, -5069.79, 336.026, 0, 300, 3, 0, 42, 0, 1, 0, 0, 0, 0),
(408236, 36345, 1, 0, 0, 1, 1, 27823, 0, 4350.35, -5114.65, 335.758, 1.02974, 300, 3, 0, 42, 0, 1, 0, 0, 0, 0),
(408237, 36345, 1, 0, 0, 1, 1, 27823, 0, 4345, -5039.45, 335.599, 5.58505, 300, 3, 0, 42, 0, 1, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 14389;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 14389;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 14389;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (36372, 14389);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 36372;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 14389;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 14389;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (36436, 14389);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=36436;
UPDATE `quest_template` SET `Flags` = 12 WHERE `Id` = 14389;
DELETE FROM `creature` WHERE `id`=36436;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409023, 36436, 1, 1, 1, 15473, 0, 3911.53, -4912.29, 149.46, 1.11701, 300, 0, 0, 1834250, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `minlevel` = 88, `maxlevel` = 88, `exp` = 3 WHERE `entry` = 36436;
DELETE FROM `creature_questrelation` WHERE `quest` = 29310;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 29310;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 29310;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (11801, 29310);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 11801;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (53302, 29310);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 53302;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 29310;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 29310;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (11801, 29310);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=11801;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (52135, 29310);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=52135;
DELETE FROM `quest_start_scripts` WHERE `id`=29310;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(29310, 10, 8, 53302, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `StartScript` = 29310 WHERE `Id` = 29310;
UPDATE `creature_template` SET `unit_flags` = 32768, `unit_flags2` = 2048 WHERE `entry` = 59527;
UPDATE `creature` SET `unit_flags` = 0 WHERE `id` = 59527;
DELETE FROM `creature_template_addon` WHERE (`entry`=59527);
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 59527;
DELETE FROM `creature_questrelation` WHERE `quest` = 26969;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 26969;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 26969;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (17089, 26969);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 17089;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 26969;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 26969;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (17089, 26969);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=17089;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 26969;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(409024, 60008, 870, 1, 1, 2940.342, 1677.521, 663.1891, 0.6721744, 600, 0, 0); -- 60008 (Area: 6111)
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `mindmg` = 500, `maxdmg` = 950, `attackpower` = 150, `dmg_multiplier` = 20 WHERE `entry` = 60008;
DELETE FROM `creature_questrelation` WHERE `quest` = 30602;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 30602;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 30602;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (59703, 30602);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 59703;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 30602;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 30602;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (59452, 30602);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=59452;
DELETE FROM `quest_start_scripts` WHERE `id`=30602;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(30602, 10, 8, 59806, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `StartScript` = 30602 WHERE `Id` = 30602;
DELETE FROM `creature` WHERE `id`=60795;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(1041643, 60795, 870, 5841, 6184, 1, 1, 0, 0, 3485.98, 2100.92, 1084.13, 2.41331, 300, 0, 0, 1, 0, 0, 3, 32768, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=60795);
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 38661;
DELETE FROM `creature` WHERE `id`=38878;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409025, 38878, 1, 1, 1, 29360, 0, -1874.34, -3227.52, 82.834, 2.72271, 300, 0, 0, 905, 0, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 27452;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27452;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27452;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (11035, 27452);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 11035;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27452;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27452;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (11035, 27452);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=11035;
DELETE FROM `creature_questrelation` WHERE `quest` = 27451;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27451;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27451;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (11035, 27451);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 11035;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27451;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27451;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (11035, 27451);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=11035;
UPDATE `creature_template` SET `questItem1` = 30890 WHERE `entry` = 21057;
DELETE FROM `creature_loot_template` WHERE (`entry`=21057) AND (`item`=30890);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (21057, 30890, -100, 1, 0, 1, 1);
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `guid` = 86749;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 22798;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 22799;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 22800;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 22801;
DELETE FROM `creature` WHERE `id`=21446;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409026, 21446, 530, 1, 1, 0, 0, 2745.77, 6456.05, 3.11321, 6.06091, 120, 5, 0, 7645, 0, 1, 0, 0, 0),
(409027, 21446, 530, 1, 1, 0, 0, 2746.32, 6629.21, 21.5397, 0.706065, 120, 5, 0, 7645, 0, 1, 0, 0, 0),
(409028, 21446, 530, 1, 1, 0, 0, 2717.52, 6681.51, 21.365, 3.04184, 120, 5, 0, 7645, 0, 1, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 24707;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 24707;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 24707;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (38237, 24707);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 38237;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (38343, 24707);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 38343;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24707;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 24707;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (38237, 24707);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=38237;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 38708, `RequiredNpcOrGoCount1` = 1 WHERE `Id` = 24707;
UPDATE `creature_template` SET `KillCredit2` = 38708 WHERE `entry` = 38346;
DELETE FROM `creature_questrelation` WHERE `quest` = 9272;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 9272;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 9272;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2546, 9272);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 2546;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9272;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 9272;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (2546, 9272);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=2546;
DELETE FROM `creature_questrelation` WHERE `quest` = 9272;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 9272;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 9272;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2546, 9272);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 2546;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9272;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 9272;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (2546, 9272);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=2546;
DELETE FROM `creature_questrelation` WHERE `quest` = 12528;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12528;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12528;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (28095, 12528);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 28095;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12528;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12528;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (28082, 12528);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=28082;
UPDATE `quest_template` SET `Flags` = 136 WHERE `Id` = 12528;

-- Fix
DELETE FROM `creature_questrelation` WHERE `quest` = 28571;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28571;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28571;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (207324, 28571);
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (207325, 28571);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28571;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28571;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (2215, 28571);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=2215;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 28571;
DELETE FROM `creature_questrelation` WHERE `quest` = 28571;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28571;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28571;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (207324, 28571);
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (207325, 28571);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28571;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28571;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (2215, 28571);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=2215;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `Flags` = 8 WHERE `Id` = 28571;
DELETE FROM `creature_questrelation` WHERE `quest` = 26512;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 26512;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 26512;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (344, 26512);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 344;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 26512;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 26512;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (344, 26512);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=344;
UPDATE `quest_template` SET `Flags` = 4 WHERE `Id` = 26512;
DELETE FROM `creature_questrelation` WHERE `quest` = 29518;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 29518;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 29518;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (14841, 29518);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 14841;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 29518;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 29518;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (14841, 29518);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=14841;
UPDATE `quest_template` SET `RequiredSkillId` = 186, `RequiredSkillPoints` = 75 WHERE `Id` = 29518;
DELETE FROM `creature_questrelation` WHERE `quest` = 29508;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 29508;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 29508;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (14829, 29508);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 14829;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 29508;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 29508;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (14829, 29508);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=14829;
UPDATE `quest_template` SET `RequiredSkillId` = 164, `RequiredSkillPoints` = 75 WHERE `Id` = 29508;
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `exp` = 0, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 25308;
DELETE FROM `creature_questrelation` WHERE `quest` = 11582;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 11582;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 11582;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (25291, 11582);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 25291;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11582;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 11582;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (25291, 11582);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=25291;
UPDATE `quest_template` SET `RequiredSpellCast1` = 0 WHERE `Id` = 11582;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 38307;
UPDATE `creature_template` SET `speed_run` = '1.28571', `unit_flags` = 512 WHERE `entry` = 54510;
DELETE FROM `creature_questrelation` WHERE `quest` = 29761;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 29761;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 29761;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (55402, 29761);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 55402;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 29761;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 29761;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (55402, 29761);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=55402;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 29761;
DELETE FROM `creature` WHERE `id`=55729;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(408845, 55729, 974, 0, 0, 1, 1, 18664, 0, -4397.91, 6340.15, 13.0043, 5.70723, 7200, 0, 0, 3484, 5751, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7, `unit_flags` = 2147516416 WHERE `entry` = 26405;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` = 46416;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280 WHERE `entry` = 46416;
DELETE FROM `creature_questrelation` WHERE `quest` = 26693;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 26693;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 26693;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (43611, 26693);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 43611;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 26693;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 26693;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (43611, 26693);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=43611;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 26693;
DELETE FROM `creature_questrelation` WHERE `quest` = 25105;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25105;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25105;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (50480, 25105);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 50480;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25105;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25105;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (50480, 25105);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=50480;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 25105;
DELETE FROM `creature_questrelation` WHERE `quest` = 25158;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25158;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25158;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (50482, 25158);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 50482;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25158;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25158;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (50482, 25158);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=50482;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 25158;
UPDATE `creature_template` SET `questItem1` = 74755 WHERE `entry` = 27483;
DELETE FROM `creature_loot_template` WHERE (`entry`=27483) AND (`item`=74755);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (27483, 74755, -100, 1, 0, 1, 1);
DELETE FROM `creature_questrelation` WHERE `quest` = 10446;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 10446;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 10446;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (21006, 10446);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 21006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 10446;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 10446;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (18459, 10446);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=18459;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 21039, `RequiredNpcOrGo2` = -184725, `RequiredNpcOrGoCount1` = 1, `RequiredNpcOrGoCount2` = 1, `RequiredSpellCast1` = 0, `RequiredSpellCast2` = 0 WHERE `Id` = 10446;
UPDATE `creature_template` SET `KillCredit2` = 21039 WHERE `entry` = 18554;
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 184725;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 42146;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 44622;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 44623;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 44624;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 44625;
DELETE FROM `creature_template_addon` WHERE (`entry`=42689);
DELETE FROM `creature_questrelation` WHERE `quest` = 28506;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28506;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28506;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (48545, 28506);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 48545;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28506;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28506;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (48545, 28506);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=48545;
DELETE FROM `quest_start_scripts` WHERE `id`=28506;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(28506, 10, 7, 28506, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `Flags` = 2, `StartScript` = 28506 WHERE `Id` = 28506;
DELETE FROM `creature_questrelation` WHERE `quest` = 27891;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27891;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27891;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (47011, 27891);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 47011;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (47021, 27891);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 47021;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27891;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27891;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (47011, 27891);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=47011;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (47021, 27891);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=47021;
UPDATE `quest_template` SET `Flags` = 8, `RequiredNpcOrGo1` = 0, `RequiredNpcOrGo2` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredNpcOrGoCount2` = 0 WHERE `Id` = 27891;
DELETE FROM `creature` WHERE `id`=48567;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409029, 48567, 0, 1, 1, 0, 0, -7501.35, -2194.38, 167.572, 1.95169, 300, 0, 0, 7406, 0, 0, 0, 0, 0);
DELETE FROM `creature_loot_template` WHERE (`entry`=9779) AND (`item`=63423);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (9779, 63423, -75, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=9776) AND (`item`=63423);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (9776, 63423, -75, 1, 0, 1, 1);
UPDATE `creature_template` SET `KillCredit2` = 48195 WHERE `entry` = 7025;
DELETE FROM `creature_questrelation` WHERE `quest` = 28439;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28439;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28439;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (48133, 28439);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 48133;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28439;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28439;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (48133, 28439);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=48133;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 28439;
DELETE FROM `creature` WHERE `id`=48312;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409030, 48312, 0, 1, 1, 36104, 0, -7886.14, -2659.52, 220.38, 2.32129, 300, 0, 0, 5502, 3728, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=48314;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(159399, 48314, 0, 46, 5656, 1, 1, 0, 0, -7978.66, -2676.3, 157.056, 6.03884, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=48316;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(159290, 48316, 0, 46, 5655, 1, 1, 0, 0, -7836.37, -2561.36, 126.299, 2.60054, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=9318;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(1320037, 9318, 0, 51, 1443, 1, 1, 8509, 0, -6449.05, -1430.19, 145.087, 3.6814, 500, 10, 0, 2488, 0, 1, 0, 0, 0, 0),
(1320039, 9318, 0, 51, 1443, 1, 1, 8509, 0, -6417.64, -1388.79, 139.706, 6.11681, 500, 10, 0, 2488, 0, 1, 0, 0, 0, 0),
(1320041, 9318, 0, 51, 1443, 1, 1, 8509, 0, -6399.08, -1355.76, 135.391, 2.04262, 500, 10, 0, 2488, 0, 1, 0, 0, 0, 0),
(1320042, 9318, 0, 51, 1443, 1, 1, 8509, 0, -6419.64, -1330.23, 136.034, 1.37261, 500, 10, 0, 2488, 0, 1, 0, 0, 0, 0),
(1320045, 9318, 0, 51, 1443, 1, 1, 8509, 0, -6518.38, -1291.91, 136.961, 3.38934, 500, 10, 0, 2488, 0, 1, 0, 0, 0, 0),
(1320047, 9318, 0, 51, 1443, 1, 1, 8509, 0, -6485.05, -1446.41, 151.352, 6.19257, 500, 10, 0, 2488, 0, 1, 0, 0, 0, 0),
(1320048, 9318, 0, 51, 1443, 1, 1, 8509, 0, -6534.55, -1464.63, 147.686, 3.57925, 500, 10, 0, 2488, 0, 1, 0, 0, 0, 0),
(1320049, 9318, 0, 51, 1443, 1, 1, 8509, 0, -6678.41, -1438.05, 167.703, 2.03464, 500, 5, 0, 2488, 0, 1, 0, 0, 0, 0),
(1320050, 9318, 0, 51, 1443, 1, 1, 8509, 0, -6599.41, -1463.01, 166.355, 0.59699, 500, 10, 0, 2488, 0, 1, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 28096;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 28096;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 28096;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2215, 28096);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 2215;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 28096;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 28096;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (2215, 28096);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=2215;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 47433, `RequiredNpcOrGo2` = 0, `RequiredNpcOrGo3` = 0, `RequiredNpcOrGoCount1` = 3, `RequiredNpcOrGoCount2` = 0, `RequiredNpcOrGoCount3` = 0 WHERE `Id` = 28096;
DELETE FROM `creature` WHERE `id`=5853;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409031, 5853, 0, 1, 1, 5747, 0, -7107.53, -1781.73, 269.162, -2.16195, 300, 3, 0, 1919, 0, 1, 0, 0, 0),
(409032, 5853, 0, 1, 1, 5747, 0, -7094.33, -1739.77, 243.972, 0.484491, 300, 3, 0, 1919, 0, 1, 0, 0, 0),
(409033, 5853, 0, 1, 1, 5747, 0, -7097.19, -1809.05, 277.792, 4.08565, 300, 3, 0, 1919, 0, 1, 0, 0, 0),
(409034, 5853, 0, 1, 1, 5747, 0, -6953.67, -1753.7, 243.369, 0.114457, 300, 3, 0, 1919, 0, 1, 0, 0, 0),
(409035, 5853, 0, 1, 1, 5747, 0, -6963.79, -1696.01, 240.869, 5.40435, 300, 3, 0, 1919, 0, 1, 0, 0, 0),
(409036, 5853, 0, 1, 1, 5747, 0, -6940.46, -1736.91, 240.869, 0.381124, 300, 3, 0, 1919, 0, 1, 0, 0, 0),
(409037, 5853, 0, 1, 1, 5747, 0, -7114.1, -1795.7, 269.662, 1.88489, 300, 3, 0, 1919, 0, 1, 0, 0, 0),
(409038, 5853, 0, 1, 1, 5747, 0, -7006.73, -1686.59, 241.518, 3.27822, 300, 0, 0, 1919, 0, 2, 0, 0, 0),
(409039, 5853, 0, 1, 1, 5747, 0, -6940, -1707.04, 241.744, 1.87024, 300, 3, 0, 1919, 0, 1, 0, 0, 0),
(409040, 5853, 0, 1, 1, 5747, 0, -7063.12, -1717.96, 241.678, 1.71771, 300, 3, 0, 1919, 0, 1, 0, 0, 0),
(409041, 5853, 0, 1, 1, 5747, 0, -7041.29, -1688.97, 241.678, 5.88748, 300, 3, 0, 1919, 0, 1, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=35902;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409042, 35902, 1, 1, 1, 27205, 0, 209.618, 2925.55, 21.9692, 0.907571, 300, 0, 0, 18480, 1534, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=45447;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(404910, 45447, 1, 0, 0, 1, 1, 17612, 0, -5003.94, -2108.51, 86.1941, 0.977384, 300, 3, 0, 10984, 4296, 1, 0, 0, 0, 0);
DELETE FROM `gameobject` WHERE `id`=203009;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(411288, 203009, 1, 1, 1, -6129.56, -3859.14, 6.19148, 0, 0, 0, 0, 1, 300, 255, 1),
(411289, 203009, 1, 1, 1, -6133.46, -3806.41, 36.6072, 0, 0, 0, 0, 1, 300, 255, 1),
(411290, 203009, 1, 1, 1, -6130.26, -3796.88, 39.3163, 0, 0, 0, 0, 1, 300, 255, 1),
(411291, 203009, 1, 1, 1, -6131.01, -3814.64, 30.3424, 0, 0, 0, 0, 1, 300, 255, 1),
(411292, 203009, 1, 1, 1, -6158.08, -3826.49, 39.9288, 0, 0, 0, 0, 1, 300, 255, 1),
(411293, 203009, 1, 1, 1, -6172.62, -3790.69, 35.6601, 0, 0, 0, 0, 1, 300, 255, 1),
(411294, 203009, 1, 1, 1, -6127.81, -3853.07, 6.19148, 0, 0, 0, 0, 1, 300, 255, 1),
(411295, 203009, 1, 1, 1, -6124.12, -3858.02, 6.19148, 0, 0, 0, 0, 1, 300, 255, 1),
(411296, 203009, 1, 1, 1, -6161.99, -3814.19, 58.3576, 0, 0, 0, 0, 1, 300, 255, 1),
(411297, 203009, 1, 1, 1, -6096.12, -3905.89, 11.0489, 0, 0, 0, 0, 1, 300, 255, 1),
(411298, 203009, 1, 1, 1, -6167.5, -3801.2, 38.617, 0, 0, 0, 0, 1, 300, 255, 1),
(411299, 203009, 1, 1, 1, -6165.04, -3812.48, 66.4964, 0, 0, 0, 0, 1, 300, 255, 1),
(411300, 203009, 1, 1, 1, -6145.1, -3840, 24.3759, 0, 0, 0, 0, 1, 300, 255, 1),
(411301, 203009, 1, 1, 1, -6139.12, -3860.75, 18.7029, 0, 0, 0, 0, 1, 300, 255, 1),
(411302, 203009, 1, 1, 1, -6120.05, -3817.31, 38.3354, 0, 0, 0, 0, 1, 300, 255, 1),
(411303, 203009, 1, 1, 1, -6086.71, -3902.24, 10.927, 0, 0, 0, 0, 1, 300, 255, 1),
(411304, 203009, 1, 1, 1, -6142.65, -3835.58, 25.4526, 0, 0, 0, 0, 1, 300, 255, 1),
(411305, 203009, 1, 1, 1, -6120.38, -3880.47, 6.19148, 0, 0, 0, 0, 1, 300, 255, 1),
(411306, 203009, 1, 1, 1, -6141.29, -3876.94, 13.8233, 0, 0, 0, 0, 1, 300, 255, 1),
(411307, 203009, 1, 1, 1, -6088.43, -3847.59, 8.25818, 0, 0, 0, 0, 1, 300, 255, 1),
(411308, 203009, 1, 1, 1, -6179.56, -3789.4, 9.45414, 0, 0, 0, 0, 1, 300, 255, 1),
(411309, 203009, 1, 1, 1, -6149.4, -3838.43, 25.4214, 0, 0, 0, 0, 1, 300, 255, 1),
(411310, 203009, 1, 1, 1, -6175.37, -3789.2, 22.4214, 0, 0, 0, 0, 1, 300, 255, 1),
(411311, 203009, 1, 1, 1, -6121.29, -3793.27, 40.9171, 0, 0, 0, 0, 1, 300, 255, 1),
(411312, 203009, 1, 1, 1, -6114.21, -3880.36, 6.19148, 0, 0, 0, 0, 1, 300, 255, 1),
(411313, 203009, 1, 1, 1, -6150.5, -3926.79, 15.538, 0, 0, 0, 0, 1, 300, 255, 1),
(411314, 203009, 1, 1, 1, -6104.64, -3830.04, 15.6063, 0, 0, 0, 0, 1, 300, 255, 1),
(411315, 203009, 1, 1, 1, -6142.24, -3850.63, 21.9663, 0, 0, 0, 0, 1, 300, 255, 1),
(411316, 203009, 1, 1, 1, -6105.77, -3822.58, 14.2925, 0, 0, 0, 0, 1, 300, 255, 1),
(411317, 203009, 1, 1, 1, -6159.24, -3835.38, 16.8081, 0, 0, 0, 0, 1, 300, 255, 1),
(411318, 203009, 1, 1, 1, -6115.79, -3914.78, 10.7774, 0, 0, 0, 0, 1, 300, 255, 1),
(411319, 203009, 1, 1, 1, -6130.19, -3770.14, 13.6401, 0, 0, 0, 0, 1, 300, 255, 1),
(411320, 203009, 1, 1, 1, -6114.05, -3872.22, 6.19148, 0, 0, 0, 0, 1, 300, 255, 1),
(411321, 203009, 1, 1, 1, -6118.01, -3792.27, 16.1668, 0, 0, 0, 0, 1, 300, 255, 1),
(411322, 203009, 1, 1, 1, -6104.11, -3842.51, 19.5725, 0, 0, 0, 0, 1, 300, 255, 1),
(411323, 203009, 1, 1, 1, -6158.95, -3818.81, 34.454, 0, 0, 0, 0, 1, 300, 255, 1),
(411324, 203009, 1, 1, 1, -6122.67, -3912.68, 9.45994, 0, 0, 0, 0, 1, 300, 255, 1),
(411325, 203009, 1, 1, 1, -6058.96, -3849.76, 4.5579, 0, 0, 0, 0, 1, 300, 255, 1),
(411326, 203009, 1, 1, 1, -6072, -3773.25, 24.4626, 0, 0, 0, 0, 1, 300, 255, 1),
(411327, 203009, 1, 1, 1, -6092.41, -3942.88, 11.0308, 0, 0, 0, 0, 1, 300, 255, 1),
(411328, 203009, 1, 1, 1, -6152.73, -3892.67, 6.02194, 0, 0, 0, 0, 1, 300, 255, 1),
(411329, 203009, 1, 1, 1, -6108.17, -3868.15, 9.51384, 0, 0, 0, 0, 1, 300, 255, 1),
(411330, 203009, 1, 1, 1, -6136.62, -3885.14, 10.6785, 0, 0, 0, 0, 1, 300, 255, 1),
(411331, 203009, 1, 1, 1, -6102.46, -3865.99, 12.4196, 0, 0, 0, 0, 1, 300, 255, 1),
(411332, 203009, 1, 1, 1, -6122.03, -3925.82, 16.2144, 0, 0, 0, 0, 1, 300, 255, 1),
(411333, 203009, 1, 1, 1, -6151.12, -3928.45, 1.29624, 0, 0, 0, 0, 1, 300, 255, 1),
(411334, 203009, 1, 1, 1, -6139.37, -3747.75, 7.34609, 0, 0, 0, 0, 1, 300, 255, 1),
(411335, 203009, 1, 1, 1, -6165.99, -3806.05, 40.0676, 0, 0, 0, 0, 1, 300, 255, 1),
(411336, 203009, 1, 1, 1, -6128.17, -3756.95, 7.34609, 0, 0, 0, 0, 1, 300, 255, 1),
(411337, 203009, 1, 1, 1, -6178.34, -3801.52, 10.9709, 0, 0, 0, 0, 1, 300, 255, 1),
(411338, 203009, 1, 1, 1, -6062.54, -3919.58, 13.0443, 0, 0, 0, 0, 1, 300, 255, 1),
(411339, 203009, 1, 1, 1, -6172.82, -3891.84, 5.85929, 0, 0, 0, 0, 1, 300, 255, 1),
(411340, 203009, 1, 1, 1, -6092.64, -3952.64, 16.3065, 0, 0, 0, 0, 1, 300, 255, 1);
DELETE FROM `creature_questrelation` WHERE `quest` = 13628;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13628;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13628;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33284, 13628);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33284;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13628;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13628;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33421, 13628);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33421;
DELETE FROM `quest_start_scripts` WHERE `id`=13628;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(13628, 10, 8, 33374, 0, '0', 0, 0, 0, 0);
UPDATE `quest_template` SET `StartScript` = 13628 WHERE `Id` = 13628;
DELETE FROM `creature` WHERE `id`=34206;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(408255, 34206, 1, 0, 0, 1, 1, 29125, 0, 2380.18, -3521.19, 92.307, 4.77617, 300, 0, 0, 1124, 100, 2, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=23381;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`isActive`) VALUES
(51871, 23381, 534, 3606, 3606, 2, 1, 0, 0, 4210.19, -4120.24, 877.038, 1.95005, 120, 0, 0, 5715, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_loot_template` WHERE (`entry`=43454) AND (`item`=59143);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (43454, 59143, -81, 1, 0, 1, 1);
DELETE FROM `creature` WHERE `id`=41058;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409043, 41058, 1, 1, 1, 0, 0, -6281.72, -4471.08, 87.6216, 2.04421, 300, 0, 0, 5778, 0, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 27319;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27319;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27319;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45278, 27319);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45278;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27319;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27319;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45278, 27319);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45278;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 27319;
DELETE FROM `creature_questrelation` WHERE `quest` = 27358;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27358;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 27358;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (45278, 27358);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 45278;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27358;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27358;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45442, 27358);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=45442;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 27358;
DELETE FROM `creature` WHERE `id`=47013;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409044, 47013, 0, 1, 1, 8352, 0, -6730.98, -2484.46, 274.27, 1.53589, 300, 0, 0, 3980, 0, 0, 0, 0, 0);
DELETE FROM `creature_loot_template` WHERE (`entry`=7032) AND (`item`=63421);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (7032, 63421, -100, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=17300) AND (`item`=45477);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (17300, 45477, -100, 1, 0, 1, 1);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=16841) AND (`item`=18950);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (16841, 18950, 100, 0, 0, 1, 1);
DELETE FROM `creature_questrelation` WHERE `quest` = 13730;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13730;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13730;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33726, 13730);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33726;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13730;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13730;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33726, 13730);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33726;
UPDATE `quest_template` SET `Flags` = 8 WHERE `Id` = 13730;
DELETE FROM `creature` WHERE `id`=47444;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409045, 47444, 0, 1, 1, 0, 0, -581.694, 388.884, 77.1449, 0.115325, 120, 0, 0, 404, 456, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=47443;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409046, 47443, 0, 1, 1, 0, 0, -543.228, 384.367, 85.4138, 3.42578, 120, 0, 0, 5342, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=47442;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(409047, 47442, 0, 1, 1, 0, 0, -578.816, 389.46, 77.8778, 4.28579, 120, 0, 0, 484, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 47442;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 47443;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 47444;
DELETE FROM `creature_questrelation` WHERE `quest` = 10578;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 10578;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 10578;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (21293, 10578);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 21293;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 10578;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 10578;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (21293, 10578);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=21293;
UPDATE `quest_template` SET `ExclusiveGroup` = 0 WHERE `Id` = 10578;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 20427;
DELETE FROM `creature_questrelation` WHERE `quest` = 12972;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12972;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12972;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (29975, 12972);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 29975;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12972;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12972;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (29592, 12972);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=29592;
UPDATE `quest_template` SET `Flags` = 136 WHERE `Id` = 12972;
DELETE FROM `creature_loot_template` WHERE (`entry`=3816) AND (`item`=46392);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (3816, 46392, -30, 1, 0, 1, 1);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33280, `flags_extra` = 2 WHERE `entry` = 34424;
UPDATE `creature_template` SET `KillCredit1` = 34424 WHERE `entry` = 27354;


-- Rare_NPCs
update `creature` set spawntimesecs=7200 where id in (1720,2447,3872,4425,4842,5797,5798,5799,5800,5827,5912,5916,5931,5934,6228,6488,6489,6490,6646,7057,8923,9217,9218,9219,9596,9718,9736,10082,10119,10201,10263,10376,10393,10509,10558,10809,11467,12237,14506,16179,16180,5789,5790,5793,5794,5795,5796,8206,9417,10080,10081,10203,10239,11676,13977,14016,14018,14019,14346,16181,17075,22625,22631,22636,22637,22642,10810,18699,25323,25406,25410,25411,25412,25413,26791,28280,28282,31974,31998,32054,32111,32120,37293,37317,37375,37432,37443,50009,50056,50061,50063,50089,50091,59369,60491,62346,65631) and spawntimesecs<7200;
update `creature` set spawntimesecs=28800 where id in (61,79,99,100,462,471,472,503,506,507,519,520,521,534,572,573,574,584,596,599,616,763,771,947,1037,1063,1106,1112,1119,1130,1132,1137,1140,1260,1398,1399,1424,1425,1531,1533,1552,1837,1838,1839,1841,1843,1844,1847,1848,1851,1885,1910,1911,1920,1936,1944,1948,2090,2108,2162,2172,2175,2184,2186,2191,2192,2258,2283,2452,2453,2476,2541,2598,2600,2601,2602,2603,2604,2605,2606,2609,2744,2749,2751,2752,2753,2754,2779,2850,2931,3058,3068,3253,3270,3295,3398,3470,3535,3581,3652,3672,3735,3736,3773,3792,4015,4030,4066,4132,4339,4380,5343,5345,5346,5347,5349,5350,5352,5354,5356,5399,5400,5785,5786,5787,5807,5808,5809,5822,5823,5824,5826,5828,5829,5830,5831,5832,5834,5835,5836,5837,5838,5841,5842,5847,5848,5849,5851,5859,5863,5864,5865,5915,5930,5932,5933,5935,5937,6118,6581,6582,6583,6584,6585,6647,6648,6649,6650,6651,6652,7015,7016,7017,7104,7137,7846,7895,8199,8200,8201,8202,8203,8204,8205,8207,8208,8210,8211,8212,8213,8214,8215,8216,8217,8218,8219,8277,8278,8279,8280,8281,8282,8283,8296,8297,8298,8299,8300,8301,8302,8303,8304,8503,8660,8924,8976,8978,8979,8981,9602,9604,10077,10078,10196,10197,10198,10199,10200,10202,10356,10357,10358,10359,10559,10639,10640,10641,10642,10643,10644,10647,10741,10817,10821,10823,10824,10825,10826,10827,10828,11383,11447,11497,11498,11688,12037,12431,12432,12433,12902,13896,14221,14222,14223,14224,14225,14226,14227,14228,14229,14230,14231,14232,14233,14234,14235,14236,14237,14266,14267,14268,14269,14270,14271,14272,14273,14275,14276,14277,14278,14279,14280,14281,14339,14340,14342,14343,14344,14345,14424,14425,14426,14427,14428,14429,14430,14431,14432,14433,14445,14446,14447,14448,14471,14472,14473,14474,14475,14476,14477,14478,14479,14487,14488,14490,14491,14492,16379,16380,16854,16855,17144,18677,18678,18680,18681,18682,18683,18685,18686,18690,18693,18694,18696,18698,20932,21724,22060,22062,62,1849,5348,5367,5928,10236,10237,10238,10818,10819,10820,11580,14341,14697,16184,18241,18679,18684,18689,18692,18695,18697,1850,3718,32517,31086,32357,32358,32361,32377,32386,32398,32400,32409,32417,32422,32429,32435,32438,32447,32471,32475,32481,32485,32487,32491,32495,32500,32501,32630,33776,35189,38453,39019,39183,39185,39186,43488,43613,43720,44224,44225,44226,44227,44714,44722,44750,44759,44761,44767,45257,45258,45260,45262,45369,45380,45384,45398,45399,45401,45402,45404,45739,45740,45771,45785,45801,45811,46981,46992,47003,47008,47009,47010,47012,47015,47023,47386,47387,49822,49913,50005,50050,50051,50052,50053,50057,50058,50059,50060,50062,50064,50065,50085,50086,50138,50154,50159,50327,50328,50329,50330,50331,50332,50333,50334,50335,50336,50337,50338,50339,50340,50341,50342,50343,50344,50345,50346,50347,50348,50349,50350,50351,50352,50353,50354,50355,50356,50357,50358,50359,50361,50362,50363,50364,50370,50388,50724,50725,50726,50727,50728,50730,50731,50733,50734,50735,50736,50737,50738,50739,50741,50742,50743,50744,50745,50746,50747,50748,50749,50750,50752,50759,50763,50764,50765,50766,50768,50769,50770,50772,50775,50776,50777,50778,50779,50780,50782,50783,50784,50785,50786,50787,50788,50789,50790,50791,50792,50797,50803,50804,50805,50806,50807,50808,50809,50810,50811,50812,50813,50814,50815,50816,50817,50818,50819,50820,50821,50822,50823,50825,50828,50829,50830,50831,50832,50833,50836,50837,50838,50839,50840,50842,50844,50845,50846,50847,50849,50853,50855,50856,50858,50860,50861,50863,50864,50865,50867,50868,50870,50871,50872,50874,50875,50876,50877,50879,50882,50883,50884,50886,50887,50889,50890,50891,50892,50895,50897,50899,50900,50901,50903,50905,50906,50908,50909,50911,50912,50914,50915,50916,50917,50918,50919,50920,50921,50922,50925,50926,50927,50928,50929,50930,50931,50932,50933,50935,50936,50937,50938,50940,50941,50942,50943,50945,50946,50947,50948,50949,50950,50952,50953,50954,50955,50956,50957,50959,50961,50963,50964,50965,50967,50968,50969,50972,50976,50979,50981,50985,50986,50990,50992,50993,50995,50997,50999,51000,51001,51002,51004,51007,51008,51010,51012,51014,51015,51016,51017,51018,51019,51020,51021,51022,51024,51025,51026,51027,51028,51029,51030,51031,51032,51037,51040,51042,51043,51044,51045,51046,51048,51049,51050,51051,51052,51053,51054,51055,51056,51057,51058,51059,51061,51062,51063,51064,51066,51067,51069,51071,51072,51074,51076,51077,51078,51079,51267,51401,51402,51403,51404,51658,51661,51662,51663,52146,54318,54319,54320,54321,54322,54323,54324,54338,54533,56079,56080,56081,59071,64403) and spawntimesecs<28800;

-- Minerals/Herbs
UPDATE gameobject SET spawntimesecs=600, phaseMask=65535 WHERE id IN (1610,1617,1618,1619,1620,1621,1667,1731,1732,2055,2653,3724,3725,3726,3727,3729,3730,3763,3764,103711,103713,181166,1622,1623,1624,1628,1735,2040,2041,2042,2043,2044,2045,2046,2047,2054,19903,73940,206085);
UPDATE gameobject SET spawntimesecs=900, phaseMask=65535 WHERE id IN (123310,142140,150079,176645,324,1733,1734,2866,73941,123309,123848,142141,142142,142143,142144,142145,150080,150081,150082,165658,175404,176583,176584,176586,176587,176588,176636,176637);
UPDATE gameobject SET spawntimesecs=1200, phaseMask=65535 WHERE id IN (176638,176639,176640,176641,176642,176643,177388,180164,180165,180166,180167,180168,180215,181270,181271,181275,181276,181277,181278,181279,176589,181280,181281,181555,181556,181557,181569,181570,183043,183044,183045, 183046,185877,185881,189973,189979,189980,189981,190169,190170,190171,190172,202749,202748,202747,202736,202739);
UPDATE gameobject SET spawntimesecs=1800, phaseMask=65535 WHERE id IN (190173,190175,191019,191133,191303,189978,202750,202752,202751,202737,202738,202741,202740);
UPDATE gameobject SET spawntimesecs=2400, phaseMask=65535 WHERE id IN (209355,215410,209354,209349,215405,209353,215408,214510,215412,215403,215411,209350,215406,209351,215407,209311,215413,209312,215415,209328,209329,209330,209313,215418);

-- NPC_ADDON_FIX
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`difficulty_entry_1`,
`creature_template_addon`.`path_id`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`bytes1`,
`creature_template_addon`.`bytes2`,
`creature_template_addon`.`emote`,
`creature_template_addon`.`auras`
FROM
`creature_template`, `creature_template_addon`
WHERE
`creature_template_addon`.`entry`=`creature_template`.`entry`
AND `creature_template`.`difficulty_entry_1`>0;
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`difficulty_entry_2`,
`creature_template_addon`.`path_id`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`bytes1`,
`creature_template_addon`.`bytes2`,
`creature_template_addon`.`emote`,
`creature_template_addon`.`auras`
FROM
`creature_template`, `creature_template_addon`
WHERE
`creature_template_addon`.`entry`=`creature_template`.`entry`
AND `creature_template`.`difficulty_entry_2`>0;
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`difficulty_entry_3`,
`creature_template_addon`.`path_id`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`bytes1`,
`creature_template_addon`.`bytes2`,
`creature_template_addon`.`emote`,
`creature_template_addon`.`auras`
FROM
`creature_template`, `creature_template_addon`
WHERE
`creature_template_addon`.`entry`=`creature_template`.`entry`
AND `creature_template`.`difficulty_entry_3`>0;

-- NPC_FIX
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`unit_flags2`=`creature_template`.`unit_flags2`,
`copy`.`type_flags2`=`creature_template`.`type_flags2`,
`copy`.`HoverHeight`=`creature_template`.`HoverHeight`,
`copy`.`Mana_mod_extra`=`creature_template`.`Mana_mod_extra`,
`copy`.`exp_unk`=`creature_template`.`exp_unk`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_1`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`unit_flags2`=`creature_template`.`unit_flags2`,
`copy`.`type_flags2`=`creature_template`.`type_flags2`,
`copy`.`HoverHeight`=`creature_template`.`HoverHeight`,
`copy`.`Mana_mod_extra`=`creature_template`.`Mana_mod_extra`,
`copy`.`exp_unk`=`creature_template`.`exp_unk`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_2`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`unit_flags2`=`creature_template`.`unit_flags2`,
`copy`.`type_flags2`=`creature_template`.`type_flags2`,
`copy`.`HoverHeight`=`creature_template`.`HoverHeight`,
`copy`.`Mana_mod_extra`=`creature_template`.`Mana_mod_extra`,
`copy`.`exp_unk`=`creature_template`.`exp_unk`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_3`;

-- Final_FIX
UPDATE `creature` SET equipment_id=0 WHERE equipment_id=1;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE Flags=Flags|4096;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE Flags=Flags|32768;
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `linked_respawn` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `linked_respawn` WHERE `linkedGuid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
UPDATE creature_template SET unit_flags=unit_flags&~2048 WHERE unit_flags&2048=2048;
UPDATE creature_template SET unit_flags=unit_flags&~524288 WHERE unit_flags&524288=524288;
UPDATE `creature` SET `spawndist` = 5 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `gameobject` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `creature_template` SET `scale` = 1 WHERE `scale` = 0;
-- update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 0;
-- update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 3;
-- update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 10;
-- update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 25;
UPDATE `gameobject` SET `state`=1 WHERE `state`=0 AND `id` IN (SELECT entry FROM `gameobject_template` WHERE `type`=3);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_involvedrelation`);
UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
-- DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
-- DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `creature_template` SET npcflag = npcflag|1 WHERE `gossip_menu_id` > 0;
UPDATE `creature_template`, `smart_scripts` SET `creature_template`.`ainame`='SmartAI' WHERE `creature_template`.`entry`=`smart_scripts`.`entryorguid` AND `smart_scripts`.`Source_Type`=0;
UPDATE `gameobject_template`, `smart_scripts` SET `gameobject_template`.`ainame`='SmartGameObjectAI' WHERE `gameobject_template`.`entry`=`smart_scripts`.`entryorguid` AND `smart_scripts`.`Source_Type`=1;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'EventAI' AND `ScriptName` = 'generic_creature';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'SmartAI' AND `ScriptName` = 'generic_creature';

UPDATE version SET `cache_id`= '061';
UPDATE version SET `core_version`= '542_world_061';
