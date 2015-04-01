/* Lin Tenderpaw now give the quest: The Torch of Strength */
DELETE FROM `creature_queststarter` WHERE `id` = 60981 AND `quest` = 31492;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (60981, 31492);
DELETE FROM `creature_questender` WHERE `id` = 60981 AND `quest` = 31492;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (60981, 31492);

/* Kafa'goot "Deposit" total change */
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(211456, 22, 3675, 'Kafa\'goot "Deposit"', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 116799, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 16048);

/* Reward fixed for Angler's daily quests */
UPDATE `quest_template` SET RewardCurrencyId1 = 396, RewardCurrencyCount1 = 5, RewardCurrencyId2 = 738, RewardCurrencyCount2 = 1, RewardItemId1 = 0, RewardItemCount1 = 0 WHERE Id IN (30585,30586,30588,30598,30613,30658,30678,30698,30700,30701,30753,30754,30763,31443,31444,31446);
UPDATE `quest_template` SET RewardCurrencyId1 = 396, RewardCurrencyCount1 = 5, RewardCurrencyId2 = 738, RewardCurrencyCount2 = 1, RewardItemId1 = 81175, RewardItemCount1 = 1, RewardItemId2 = 0, RewardItemCount2 = 0 WHERE Id = 30584;

/* Tired Shushen <Waterspeaker> now is spawned for start and finish the quests */
DELETE FROM `creature` WHERE `id`=58278;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(58278, 870, 0, 0, 1, 1, 0, 58278, -1331.8, 1556.96, 18.3711, 4.87478, 300, 0, 0, 184350, 0, 0, 0, 0, 0, 2048, 0, 0);

/* Both Ana Wu and her raft don't sink more to the bottom of the sea when you approach them */
UPDATE `creature_template` SET `InhabitType` = 6 WHERE `entry` = 60139;

/* Kang Bramblestaff missing spawn added */
DELETE FROM `creature` WHERE `id`=56114;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(56114, 870, 0, 0, 1, 1, 0, 56114, -1172.34, 1749.73, 19.8029, 1.14607, 120, 0, 0, 156000, 0, 0, 0, 0, 0, 0, 0, 0),
(56114, 870, 0, 0, 1, 1, 0, 56114, -1131.17, -213.763, 31.3674, 1.6071, 120, 0, 0, 156000, 0, 0, 0, 0, 0, 0, 0, 0);

/* Needlebeak passive react fix */
UPDATE `creature_template` SET `VehicleId` = 0, `AIName` = 'SmartAI' WHERE `entry` = 63796;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=63796 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(63796, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 15000, 20000, 11, 124515, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Needlebeak - Cast Beak Barrage"),
(63796, 0, 1, 0, 0, 0, 100, 0, 1, 2500, 15000, 30000, 11, 124517, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Needlebeak - Cast Needle Torpedo");

/* Yi-Mo Longbrow wrong visual/model fix */
DELETE FROM `creature_template_aura` WHERE `entry` = 58376;
INSERT INTO `creature_template_aura` VALUES (58376,108450);
DELETE FROM `creature_template_emote` WHERE `entry` = 58376;
INSERT INTO `creature_template_emote` VALUES (58376,455);
UPDATE `creature_template` SET `modelid1` = 46125 WHERE `entry` = 58376;

/* Tony Tuna wrong faction fix */
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `unit_flags` = 32776 WHERE `entry` = 60182;

/* Narjon the Gulper respawn time fix */
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `id` = 59689;

/* Nayeli Hammerhead & Great Grey Shark missing spawn added */
DELETE FROM `creature` WHERE `id` IN (60204,60432);
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(60204, 870, 0, 0, 1, 1, 0, 0, -2652.2, 708.505, -35.3689, 0.941022, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),
(60204, 870, 0, 0, 1, 1, 0, 0, -2583.38, 856.124, -63.6904, 1.79711, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),
(60204, 870, 0, 0, 1, 1, 0, 0, -2543.96, 805.035, -49.5132, 5.20966, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),
(60204, 870, 0, 0, 1, 1, 0, 0, -2591.16, 717.326, -90.1772, 1.01092, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),
(60204, 870, 0, 0, 1, 1, 0, 0, -2580.96, 801.291, -113.529, 1.77511, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),
(60204, 870, 0, 0, 1, 1, 0, 0, -2561.34, 795.974, -1.63705, 5.15939, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),
(60204, 870, 0, 0, 1, 1, 0, 0, -2547.85, 752.371, -35.7328, 0.0684393, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),

(60432, 870, 0, 0, 1, 1, 0, 0, -2594.13, 748.363, -46.4118, 1.0714, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),
(60432, 870, 0, 0, 1, 1, 0, 0, -2532.37, 728.656, -33.2227, 5.19395, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),
(60432, 870, 0, 0, 1, 1, 0, 0, -2537.88, 666.325, -17.5265, 4.81225, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),
(60432, 870, 0, 0, 1, 1, 0, 0, -2571.49, 657.461, -63.7607, 3.12207, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),
(60432, 870, 0, 0, 1, 1, 0, 0, -2567.85, 733.269, -113.725, 1.31801, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),
(60432, 870, 0, 0, 1, 1, 0, 0, -2630.47, 784.237, -106.613, 3.13935, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),
(60432, 870, 0, 0, 1, 1, 0, 0, -2594.77, 920.923, -14.3071, 1.80103, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),
(60432, 870, 0, 0, 1, 1, 0, 0, -2583.11, 783.291, -1.63705, 2.25342, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),
(60432, 870, 0, 0, 1, 1, 0, 0, -2581.55, 836.958, -29.7343, 5.18452, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0),
(60432, 870, 0, 0, 1, 1, 0, 0, -2573.17, 811.773, -63.1884, 1.63295, 120, 0, 0, 194109, 0, 0, 0, 0, 0, 2048, 0, 0);

/* Quest: Borderlands fixed wrong auras,flags,templates,modelId,spawn,SAI */
DELETE FROM `creature_template_aura` WHERE `entry` = 58065 AND `aura` = 82343;

UPDATE `creature` SET `spawndist` = 0 WHERE `id` IN (58161,58170,58173);
UPDATE `creature_template` SET `modelid1` = 11686, `modelid2` = 0, `unit_flags` = 33554432, `flags_extra` = 0, `InhabitType` = 4 WHERE `entry` IN (58065,58161,58170,58173);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (58161,58170,58173);

DELETE FROM `gameobject_template` WHERE (`entry`=210192);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(210192, 8, 11114, 'Memorial Flame of Po', '', '', '', 0, 0, 3, 0, 0, 0, 0, 0, 0, 1752, 10, 0, 0, 30084, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 16048);

DELETE FROM `gameobject` WHERE `id`=210192;
INSERT INTO `gameobject` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`isActive`) VALUES
(210192, 870, 0, 0, 1, 1, -636.533, -523.981, 70.9985, 3.67949, 0, 0, 0.964051, -0.265718, 300, 0, 1, 0);

DELETE FROM `creature` WHERE `id`=58170;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(58170, 870, 0, 0, 1, 1, 0, 0, -636.533, -523.981, 70.9985, 3.67949, 300, 0, 0, 156000, 0, 0, 0, 0, 0, 2048, 0, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (58161,58170,58173) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(58161, 0, 0, 1, 8, 0, 100, 0, 110027, 0, 15000, 15000, 12, 58065, 3, 15000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Red Beacon Bunny - Spawn Flames"),
(58161, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 58161, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Red Beacon Bunny - Give Credit"),

(58170, 0, 0, 1, 8, 0, 100, 0, 110027, 0, 15000, 15000, 12, 58065, 3, 15000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Blue Beacon Bunny - Spawn Flames"),
(58170, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 58170, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Blue Beacon Bunny - Give Credit"),

(58173, 0, 0, 1, 8, 0, 100, 0, 110027, 0, 15000, 15000, 12, 58065, 3, 15000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Green Beacon Bunny - Spawn Flames"),
(58173, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 58173, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Green Beacon Bunny - Give Credit");