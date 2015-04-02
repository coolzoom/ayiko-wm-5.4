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

/* Portal to Shattrath Wrong spawn deleted */
DELETE FROM `gameobject` WHERE `guid`=173904;

/* Subjugated Serpent flags and InhabitType fix now appears alive and fly good */
UPDATE `creature_template` SET `unit_flags2` = 2048, `InhabitType` = 4 WHERE `entry` = 59158;

/* Fanlyr Silverthorn spawn missing fixed */
DELETE FROM `creature` WHERE `id` = 67834;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES 
(67834, 870, 1, 1, 0, 0, 1688.96, 1949.87, 475.749, 0.43826, 300, 0, 0, 393941, 0, 0, 0, 0, 2048, 0);

/* Kal'tik the Blight & Tornado fixed */
UPDATE `creature_template` SET `dmg_multiplier` = 3, `AIName` = 'SmartAI' WHERE `entry` = 50749;
UPDATE `creature_template` SET `modelid2` = 0, `minlevel` = 90, `maxlevel` = 93 WHERE `entry` = 64267;

DELETE FROM creature_template_aura WHERE entry = 64267 AND aura IN (124986,142391);
INSERT INTO creature_template_aura VALUES
(64267,124986),
(64267,142391);

DELETE FROM `smart_scripts` WHERE (`entryorguid`=50749 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(50749, 0, 0, 0, 0, 0, 100, 0, 8000, 10000, 20000, 25000, 11, 125370, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Kal'tik the Blight - Cast Blade Flurry"),
(50749, 0, 1, 0, 0, 0, 100, 0, 16000, 22000, 25000, 30000, 11, 125398, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, "Kal'tik the Blight - Cast Tornado on a random target"),
(50749, 0, 2, 0, 2, 0, 100, 0, 0, 70, 10000, 15000, 11, 125373, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kal'tik the Blight - Cast Windsong");

/* Vale of eternal blossoms rares loots and SAI Fixed */
-- Loots
UPDATE `creature_template` SET `lootid` = 50349 WHERE `entry` = 50349;
DELETE FROM `creature_loot_template` WHERE `entry` IN (50349,50359,50749,50780,50806,50822);
-- Moldo One-Eye
INSERT INTO `creature_loot_template` VALUES 
(50806, 86586, 15, 1, 0, 1, 1),
(50806, 87217, 20, 1, 0, 1, 1),
(50806, 87636, 0, 1, 1, 1, 1),
(50806, 87637, 0, 1, 1, 1, 1),
(50806, 87638, 0, 1, 1, 1, 1),
(50806, 87639, 0, 1, 1, 1, 1),
(50806, 87640, 0, 1, 1, 1, 1),
-- Kang the Soul Thief
(50349, 86571, 19.85, 1, 0, 1, 1),
(50349, 87217, 20, 1, 0, 1, 1),
(50349, 93194, 1.3, 1, 0, 1, 1),
(50349, 87637, 0, 1, 1, 1, 1),
(50349, 87639, 0, 1, 1, 1, 1),
(50349, 87636, 0, 1, 1, 1, 1),
(50349, 87638, 0, 1, 1, 1, 1),
(50349, 87640, 0, 1, 1, 1, 1),
-- Kal'tik the Blight
(50749, 86579, 19, 1, 0, 1, 1),
(50749, 87217, 20, 1, 0, 1, 1),
(50749, 87636, 0, 1, 1, 1, 1),
(50749, 87637, 0, 1, 1, 1, 1),
(50749, 87638, 0, 1, 1, 1, 1),
(50749, 87639, 0, 1, 1, 1, 1),
(50749, 87640, 0, 1, 1, 1, 1),
-- Urgolax
(50359, 86575, 20, 1, 0, 1, 1),
(50359, 87217, 19, 1, 0, 1, 1),
(50359, 87636, 0, 1, 1, 1, 1),
(50359, 87637, 0, 1, 1, 1, 1),
(50359, 87638, 0, 1, 1, 1, 1),
(50359, 87639, 0, 1, 1, 1, 1),
(50359, 87640, 0, 1, 1, 1, 1),
-- Ai-Ran the Shifting Cloud
(50822, 86590, 20, 1, 0, 1, 1),
(50822, 87217, 20, 1, 0, 1, 1),
(50822, 87636, 0, 1, 1, 1, 1),
(50822, 87637, 0, 1, 1, 1, 1),
(50822, 87638, 0, 1, 1, 1, 1),
(50822, 87639, 0, 1, 1, 1, 1),
(50822, 87640, 0, 1, 1, 1, 1),
-- Sahn Tidehunter
(50780, 86582, 10, 1, 0, 1, 1),
(50780, 87217, 20, 1, 0, 1, 1),
(50780, 87636, 0, 1, 1, 1, 1),
(50780, 87637, 0, 1, 1, 1, 1),
(50780, 87638, 0, 1, 1, 1, 1),
(50780, 87639, 0, 1, 1, 1, 1),
(50780, 87640, 0, 1, 1, 1, 1);

-- SAIs
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (50349,50359,50749,50780,50806,50822);
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = 64014;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (50349,50359,50749,50780,50806,50822,64014) AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- Moldo One-Eye
(50806, 0, 0, 0, 9, 0, 100, 0, 20, 60, 7000, 9000, 11, 125623, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Moldo One-Eye - Cast Grappling Hook"),
(50806, 0, 1, 2, 0, 0, 100, 0, 30000, 35000, 60000, 65000, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Moldo One-Eye - Remove all aura from himself"),
(50806, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 11, 125632, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Moldo One-Eye - Cast Vanish"),
(50806, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 13, 0, 1000000, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Moldo One-Eye - Change Target"),
(50806, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 13, 100, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, "Moldo One-Eye - Change Target"),
(50806, 0, 5, 0, 0, 0, 100, 0, 3000, 5000, 20000, 25000, 11, 125624, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Moldo One-Eye - Cast Vicious Rend"),
-- Kang the Soul Thief
(50349, 0, 0, 0, 0, 0, 100, 0, 15000, 18000, 15000, 18000, 11, 125241, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, "Kang the Soul Thief - Cast Voidcloud"),
(50349, 0, 1, 0, 0, 0, 100, 0, 1, 2, 5000, 6000, 11, 125212, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Kang the Soul Thief - Cast Shadowbolt"),
-- Urgolax
(50359, 0, 0, 0, 0, 0, 100, 0, 15000, 18000, 15000, 18000, 11, 124946, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Urgolax - Cast Devastating Arc"),
(50359, 0, 1, 0, 2, 0, 100, 0, 0, 80, 3000, 4000, 11, 124976, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Urgolax - Cast Titanic Strenght"),
(50359, 0, 2, 0, 0, 0, 100, 0, 28000, 30000, 60000, 65000, 11, 124980, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Urgolax - Cast Summon Quilen"),
-- Urgolax Summon Quilen
(64014, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 49, 0, 0, 0, 0, 0, 0, 17, 0, 20, 0, 0, 0, 0, 0, "Quilen Stonemaw - Cast Enter In Combat On Spawn"),
(64014, 0, 1, 0, 0, 0, 100, 0, 3000, 4000, 5000, 6000, 11, 125096, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Quilen Stonemaw - Cast Monstrous Bite"),
-- Ai-Ran the Shifting Cloud
(50822, 0, 0, 0, 9, 0, 100, 0, 15, 50, 1500, 1500, 11, 125817, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, "Ai-Ran the Shifting Cloud - Cast Chi Burst"),
(50822, 0, 1, 0, 2, 0, 100, 0, 0, 50, 35000, 40000, 11, 125802, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ai-Ran the Shifting Cloud - Cast Healing Mists"),
(50822, 0, 2, 0, 0, 0, 100, 0, 30000, 35000, 30000, 35000, 11, 125799, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Ai-Ran the Shifting Cloud - Cast Spinning Crane Kick");

/* Salyin Warscout missing Spawn added */
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `mindmg` = 43000, `maxdmg` = 51600, `attackpower` = 43000, `minrangedmg` = 0, `maxrangedmg` = 0, `Health_mod` = 15, `MovementType` = 1 WHERE `entry` = 50783;
DELETE FROM `creature` WHERE `id`=50783;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(50783, 870, 0, 0, 1, 1, 0, 0, -378.894, -78.2022, 142.363, 5.81295, 28800, 10, 0, 1493235, 0, 1, 0, 0, 0, 0, 0,0);

/* Merchant Greenfield now sell his goods */
UPDATE `creature_template` SET `npcflag` = 131 WHERE `entry` = 58718;

/* Den Den now sell his goods */
DELETE FROM `npc_vendor` WHERE `entry` = 64319;
INSERT INTO `npc_vendor` VALUES 
(64319, 0, 74636, 0, 0, 0, 1),
(64319, 0, 81406, 0, 0, 0, 1),
(64319, 0, 81407, 0, 0, 0, 1),
(64319, 0, 81414, 0, 0, 0, 1),
(64319, 0, 81415, 0, 0, 0, 1);