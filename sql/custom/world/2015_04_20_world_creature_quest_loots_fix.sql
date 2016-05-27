/* Enormous Gyreworm fix */
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 48533;

/* Hyjal Warden fix */
UPDATE `creature_template` SET `unit_flags` = 33280 WHERE `entry` = 38915;

/* Seething Pyrelord fix */
UPDATE `creature_template` SET `unit_flags` = 32768, `dynamicflags` = 0 WHERE `entry` = 52300;

/* Crusader Kevin Frost (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -27528 WHERE `Id` IN (27528,27529,27539);

/* John J. Keeshan (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -28177 WHERE `Id` IN (28177,28178,28179);

/* Crazy Larry (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -27598 WHERE `Id` IN (27598,27599);

/* Evonice Sootsmoker now start only the correct quest */
DELETE FROM `creature_queststarter` WHERE `id` = 14628;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (14628, 28057);

/* Mountain-Lord Rendan (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -28054 WHERE `Id` IN (28054,28055,28056);
UPDATE `quest_template` SET `ExclusiveGroup` = -28028 WHERE `Id` IN (28028,28029,28030);

/* Trade Baron Silversnap (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -27536 WHERE `Id` IN (27536,27656);

/* Snickerfang Hyena fix */
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 56 WHERE `entry` = 5985;
DELETE FROM `creature` WHERE `id`=5985;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(5985, 0, 4, 1437, 1, 1, 0, 0, -11107.7, -2753.87, 16.2946, 2.58879, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 4, 1, 1, 0, 0, -11511.5, -3092.17, -2.30904, 1.83242, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 4, 1, 1, 0, 0, -11431.7, -3114.84, 7.65389, 1.70828, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 4, 1, 1, 0, 0, -11518.3, -2987.62, 16.9157, 1.95493, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 4, 1, 1, 0, 0, -11479.2, -3042.92, -0.778356, 6.04488, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 4, 1, 1, 0, 0, -11422, -3038.36, 0.373095, 1.24905, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 4, 1, 1, 0, 0, -11372.6, -3057.26, -4.3352, 3.28373, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 4, 1, 1, 0, 0, -11375, -3022.31, -4.34054, 0.0579093, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 4, 1, 1, 0, 0, -11387.7, -2937.54, 3.73129, 4.46654, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 4, 1, 1, 0, 0, -11424.5, -2979.54, 1.22853, 5.42248, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 2517, 1, 1, 0, 0, -11315.7, -2995.48, 4.71664, 3.34483, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 4, 1, 1, 0, 0, -11375.7, -2880.11, 1.69599, 4.18403, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 1437, 1, 1, 0, 0, -11029.2, -2889.57, 9.48615, 4.8092, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 1437, 1, 1, 0, 0, -10921.3, -2895.53, 12.2305, 2.71028, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 2517, 1, 1, 0, 0, -11202.6, -2988.8, 3.98279, 0.0795479, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 4, 1, 1, 0, 0, -11381.4, -3118.25, 4.42488, 1.41192, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 2517, 1, 1, 0, 0, -11316.5, -2997.13, 5.25436, 5.93675, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 4, 1, 1, 0, 0, -11517.3, -3180.7, 8.99966, 5.76845, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 4, 1, 1, 0, 0, -11539, -3254.43, 7.03158, 5.99203, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(5985, 0, 4, 4, 1, 1, 0, 0, -12289.2, -3264.46, 27.7359, 1.80633, 120, 7.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0);

/* Pamela Redpath (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -27384 WHERE `Id` IN (27384,27392);

/* Mataus the Wrathcaster missing spawn fix */
DELETE FROM `creature` WHERE `id`=46093;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES 
(46093, 0, 1, 65535, 0, 0, 1600.22, -5304.44, 91.1046, 5.71157, 300, 0, 0, 6604, 0, 0, 0, 0, 0, 0);

/* Westreach Summit (Thousand Needles) overspawns fix */
DELETE FROM `creature` WHERE `id` IN (39895,39947,39951,39963,44399);
UPDATE `creature` SET `spawndist` = 0 WHERE `id` = 39951;
UPDATE `creature_template` SET `mindmg` = 250, `maxdmg` = 280 WHERE `entry` = 39963;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES 
(39895, 1, 1, 1, 0, 0, -4295.64, -923.259, 80.401, 0.268792, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(39963, 1, 1, 1, 31643, 0, -4216.22, -897.434, 0.34595, 3.62123, 20, 0, 0, 1532, 0, 0, 0, 0, 0, 0),
(44399, 1, 1, 1, 0, 0, -4306.39, -926.283, 81.2548, 0.837758, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(39947, 1, 0, 0, 1, 1, 0, 0, -4245.54, -981.279, 75.2667, 2.26487, 120, 3.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4236.54, -917.049, 5.14062, 1.87546, 120, 3.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4244.02, -955.653, 15.9991, 4.81431, 120, 3.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4219.37, -899.073, 0.541186, 0.479634, 120, 3.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4200.42, -954.597, 42.5379, 3.16163, 120, 3.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4150.15, -944.01, 74.3254, 1.67599, 120, 3.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4178.83, -957.057, 58.1114, 1.59744, 120, 3.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4134.85, -951.582, 79.9358, 0.849939, 120, 3.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4134.4, -1015.57, 86.4316, 5.09543, 120, 3.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4165.63, -1030.8, 86.447, 4.58482, 120, 3.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4109.9, -1007.72, 90.3874, 1.37655, 120, 3.786, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4126.28, -1039.66, 86.2162, 3.1894, 120, 0, 0, 1532, 0, 0, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4117.67, -986.986, 90.8856, 5.60251, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4171.4, -987.33, 71.4096, 4.55437, 120, 0, 0, 1532, 0, 0, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4137.86, -1006.98, 86.4954, 3.44307, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4132.35, -1026.18, 86.2167, 1.2244, 120, 0, 0, 1532, 0, 0, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4150.92, -1042.17, 86.2254, 4.17983, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4205.19, -981.851, 54.4313, 4.13726, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4196.38, -1008.91, 71.1744, 3.20043, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4111.79, -996.918, 90.8989, -1.23509, 120, 0, 0, 1532, 0, 0, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4257.41, -919.401, 8.50788, 1.04333, 120, 0, 0, 1532, 0, 0, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4208.11, -1028.37, 84.41, 2.55304, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4172.97, -1038.64, 86.5386, 0.566592, 120, 0, 0, 1532, 0, 0, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4210.88, -1049.34, 87.3079, 5.12343, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4225.6, -1003.37, 77.9375, 2.97328, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0),
(39947, 1, 0, 0, 1, 1, 0, 0, -4248.24, -901.684, 5.20139, 0.852266, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0),

(39951, 1, 0, 0, 1, 1, 0, 0, -4297.79, -925.276, 80.6146, 0.256063, 120, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4302.92, -919.373, 81.0382, 5.11381, 120, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4268.17, -953.417, 75.7627, 1.43117, 120, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4228.81, -886.154, -0.261425, 2.89725, 120, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4205.96, -953.587, 38.3614, 5.28835, 120, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4178.92, -953.356, 58.1726, 4.73903, 120, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4207.49, -985.404, 55.0829, 6.22989, 120, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4149.73, -982.503, 74.5638, 0.417636, 120, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4136.16, -978.887, 86.532, 3.61086, 120, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4199.74, -1009.11, 70.6736, 5.71682, 120, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4109.23, -1004.28, 90.4525, 4.51814, 120, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4131.83, -1031.8, 86.2861, 5.48033, 120, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4256.07, -917.109, 8.55958, 4.18492, 120, 0, 0, 1532, 0, 0, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4214.67, -899.665, 0.639091, 3.71377, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4153.12, -1000.23, 79.9338, 5.49779, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4205.96, -953.587, 38.3614, 5.28835, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4133.03, -949.507, 80.2708, 3.92699, 120, 0, 0, 1532, 0, 0, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4128.97, -1039.79, 86.2324, 0.0478078, 120, 0, 0, 1532, 0, 0, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4209.54, -1052.39, 87.8188, 0.35985, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4108.21, -979.721, 90.7141, 1.43117, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4228.81, -886.154, -0.261425, 2.89725, 120, 0, 0, 1532, 0, 0, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4296.35, -919.34, 80.7587, 1.43117, 120, 0, 0, 1532, 0, 0, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4228, -1002.96, 77.6713, 6.11487, 120, 0, 0, 1532, 0, 0, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4153.43, -1046.42, 86.2707, 1.03824, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0),
(39951, 1, 0, 0, 1, 1, 0, 0, -4190.79, -1040.08, 86.2447, 6.12611, 120, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0);

/* Chromie (quest order) fix */
UPDATE `quest_template` SET `PrevQuestId` = 27386, `NextQuestId` = 27390, `ExclusiveGroup` = -27387, `NextQuestIdChain` = 27390 WHERE `Id` IN (27387,27388,27389);

/* Koltira Deathweaver (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -27084 WHERE `Id` IN (27084,27086);

/* Darla Drilldozer now start the correct quests */
DELETE FROM `creature_queststarter` WHERE `quest` = 28372;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (48469, 28372);

/* Stonetalon Ram now is skinnable */
UPDATE `creature_template` SET `unit_flags` = 67108864 WHERE `entry` = 34894;

/* (Eastern Plaguelands) Spirit Healer wrong spawns fix */
DELETE FROM `creature` WHERE `Id`=6491 AND `zoneId` = 139 AND `areaId` = 2624 AND `phaseMask` = 65535;
DELETE FROM `creature` WHERE `Id`=6491 AND `spawntimesecs` = 125;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES 
(6491, 0, 1, 1, 0, 0, 2212.6, -2928.3, 109.514, 2.01627, 125, 0, 0, 8240, 0, 0, 0, 0, 0, 0),
(6491, 0, 1, 1, 0, 0, 3121.74, -4806.76, 100.913, 2.5142, 125, 0, 0, 8240, 0, 0, 0, 0, 0, 0);

/* (Hillsbrad Foothills) Spirit Healer missing spawn fix */
DELETE FROM `creature` WHERE `Id`=6491 AND `spawntimesecs` = 126;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES 
(6491, 0, 1, 1, 0, 0, -900.509, -1479.77, 58.3502, 0.983067, 126, 0, 0, 8240, 0, 0, 0, 0, 0, 0);

/* (Wetlands) Spirit Healer missing spawn fix */
DELETE FROM `creature` WHERE `Id`=6491 AND `spawntimesecs` = 127;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES 
(6491, 0, 1, 1, 0, 0, -2838.49, -2570.2, 51.8853, 0.890946, 127, 0, 0, 8240, 0, 0, 0, 0, 0, 0);

/* Patrannache template and spawn fix */
UPDATE `creature_template` SET `exp` = 4, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 50885;
DELETE FROM `creature` WHERE `id`=50885;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES 
(50885, 870, 1, 1, 0, 0, 82.1964, 680.074, 154.476, 3.26354, 14400, 100, 0, 921750, 0, 1, 0, 0, 0, 0);

/* Quest: Warchief's Command: Ashenvale! (quest giver) fix */
DELETE FROM `creature_queststarter` WHERE `quest` = 28493;

/* Zandalari Warbringer missing spawn fix */
DELETE FROM `creature` WHERE `id`=69769;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES 
(69769, 870, 1, 1, 0, 69769, -783.707, 3611.73, 2.81462, 0.169036, 28800, 15, 0, 21079600, 0, 1, 0, 0, 2048, 0),
(69769, 870, 1, 1, 0, 69769, 2749.03, -2231.84, 173.989, 5.66096, 28800, 15, 0, 21079600, 0, 1, 0, 0, 2048, 0);

/* Furien don't give more wrong quests */
DELETE FROM `creature_queststarter` WHERE `quest` IN (26134,28548);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (42039, 26134);

/* Rutgar Glyphshaper don't give more wrong quests */
DELETE FROM `creature_queststarter` WHERE `quest` = 8308;

/* Rattlebore & Jormungar worms fix */
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` = 26360;
UPDATE `creature` SET `modelid` = 0 WHERE `id` IN (26358,26359,26360);

/* Dormus the Camel-Hoarder Event fixed */
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 50409;
UPDATE `creature_template` SET `npcflag` = 16777216, `unit_flags2` = 67110912, `AIName` = 'SmartAI' WHERE `entry` = 50410;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `AIName` = 'SmartAI' WHERE `entry` = 50245;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 50409;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (50409,50410,50245) AND `source_type`= 0;
DELETE FROM `creature` WHERE `id` IN (50409,50410);

INSERT INTO `npc_spellclick_spells` VALUES
(50409,94799,2,0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(50409, 0, 0, 1, 73, 0, 100, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mysterious Camel Figurine - On Spellclick - Die"),
(50409, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mysterious Camel Figurine - On Spellclick - Despawn in 5 secs"),
(50409, 0, 2, 0, 73, 0, 15, 0, 0, 0, 0, 0, 56, 67444, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Mysterious Camel Figurine - On Spellclick - Add item 40% chance"),
(50410, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 18, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mysterious Camel Figurine - on respawn become targetable"),
(50410, 0, 1, 2, 73, 0, 100, 0, 0, 0, 0, 0, 12, 50245, 3, 1200000, 1, 0, 0, 8, 0, 0, 0, -5741.3, 596.406, 167.558, 1.43396, "Mysterious Camel Figurine - On Spellclick - Summon Creature 'Dormus the Camel-Hoarder'"),
(50410, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mysterious Camel Figurine - On Spellclick - become unselectable"),
(50410, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 11, 93473, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Mysterious Camel Figurine - On Spellclick - Cast Sandstorm on Invoker"),
(50410, 0, 4, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 6000, 6000, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Mysterious Camel Figurine - On Spellclick - Create Timed Event"),
(50410, 0, 5, 6, 59, 0, 100, 0, 1, 0, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -5729.01, 674.183, 163.294, 4.66744, "Mysterious Camel Figurine - On Timed Event trigger - Teleport the invoker"),
(50410, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mysterious Camel Figurine - On Spellclick - Despawn Instant"),
(50245, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 3000, 5000, 11, 93252, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Dormus the Camel-Hoarder - Cast Camel Smash"),
(50245, 0, 1, 0, 0, 0, 100, 0, 8000, 10000, 8000, 10000, 11, 93568, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Dormus the Camel-Hoarder - Cast Spit");
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(50409, 1, 0, 0, 1, 1, 0, 0, -9550.94, -928.668, 102.407, 4.42161, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -9559.91, -988.05, 128.673, 6.2728, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -9474.47, -1029.92, 110.421, 1.5714, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -8895.42, -598.282, 158.908, 6.2665, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -8769.7, -401.897, 191.372, 3.47284, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -8978.82, -92.5212, 142.496, 6.08036, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -8872.33, 168.242, 148.843, 0.97371, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -9286, 349.547, 273.852, 5.7568, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -9604.12, -36.5049, 100.326, 2.49739, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -9894.22, -35.8791, 56.0803, 1.18577, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -10567.6, 361.077, 35.6934, 4.63289, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -10253.5, -353.537, 258.692, 6.13928, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -10509.9, -1579.65, 417.236, 1.49443, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -10636.5, -2347.39, 144.759, 2.44791, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -10697.9, -2494.81, 100.358, 0.0673604, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -10442.2, -2797.22, 25.0017, 4.48992, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -10489.6, -765.45, 451.66, 1.52366, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -10487, -623.028, 434.345, 4.73987, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -8947.32, -1542.28, 94.4537, 4.65112, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -9300.68, -1458.82, -168.606, 6.09548, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -9970.39, -786.105, 105.624, 1.4467, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -10717.1, -1292.72, 15.3535, 3.48026, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -11262.8, -773.951, 126.489, 1.56467, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -11569.7, -563.405, 108.929, 5.21206, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -11474.8, -875.69, 213.226, 4.86728, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50409, 1, 0, 0, 1, 1, 0, 0, -11262.1, 441.622, 754.224, 6.19355, 21600, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50410, 1, 0, 0, 1, 1, 0, 0, -9007.16, 255.11, -19.2634, 5.68453, 64800, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50410, 1, 0, 0, 1, 1, 0, 0, -10508.5, -1437.9, 434.62, 4.68803, 64800, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(50410, 1, 0, 0, 1, 1, 0, 0, -10806.6, -1350.27, 21.1136, 3.40077, 64800, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

/* Thisalee Crow (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -25655 WHERE `Id` IN (25655,25656);

/* Helcular (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -28331 WHERE `Id` IN (28331,28332);

/* Torren Squarejaw fix */
DELETE FROM `creature_questender` WHERE `quest` = 13661;

/* Chain Quest: Thunderdrome fix */
DELETE FROM `creature` WHERE `id` IN (39075,39148,39149,40547);
DELETE FROM `creature_queststarter` WHERE `quest` = 26896;
DELETE FROM `quest_objective` WHERE `questId`IN (25067,25094,25095,25513,25591);
DELETE FROM `quest_start_scripts` WHERE `id` IN (25067,25094,25095,25513,25591);

UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` IN (39075,39148,39149,40542,40547);
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` = 40542;
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `Id` IN (25067,26895,26896);
UPDATE `quest_template` SET `PrevQuestId` = 25094 WHERE `Id` = 25095;
UPDATE `quest_template` SET `PrevQuestId` = 25095 WHERE `Id` IN (25513,25591);
UPDATE `quest_template` SET `StartScript` = 25067,`SpecialFlags` = 0 WHERE `Id` = 25067;
UPDATE `quest_template` SET `StartScript` = 25094,`SpecialFlags` = 0 WHERE `Id` = 25094;
UPDATE `quest_template` SET `StartScript` = 25095,`SpecialFlags` = 0 WHERE `Id` = 25095;
UPDATE `quest_template` SET `StartScript` = 25513,`SpecialFlags` = 0 WHERE `Id` = 25513;
UPDATE `quest_template` SET `StartScript` = 25591,`SpecialFlags` = 0 WHERE `Id` = 25591;

INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (44374, 26896);
INSERT INTO `quest_objective` VALUES
(25067,250671,0,0,39075,1,0,'Ginormus Defeated'),
(25094,250941,0,0,39148,1,0,'Zumonga Defeated'),
(25095,250951,0,0,39149,1,0,'Sarinexx Defeated'),
(25513,255131,0,0,40542,1,0,'Megs Dreadshredder Defeated'),
(25591,255911,0,0,40547,1,0,'Kelsey Steelspark Defeated');

INSERT INTO `quest_start_scripts` VALUES
(25067, 0, 10, 39075, 600000, 0, -7140.67, -3787.64, 8.94238, 5.99558),
(25094, 0, 10, 39148, 600000, 0, -7140.67, -3787.64, 8.94238, 5.99558),
(25095, 0, 10, 39149, 600000, 0, -7140.67, -3787.64, 8.94238, 5.99558),
(25513, 0, 10, 40542, 600000, 0, -7140.67, -3787.64, 8.94238, 5.99558),
(25591, 0, 10, 40547, 600000, 0, -7140.67, -3787.64, 8.94238, 5.99558);

/* Rimblat Earthshatter now is visible for players */
DELETE FROM `creature_template_aura` WHERE `entry` = 16134;

/* Quest: Marsh Frog Legs now is available for alliance too */
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `Id` = 27183;

/* Kelsey Steelspark fix */
DELETE FROM `creature_template_aura` WHERE `entry` = 38535;
UPDATE `creature_template` SET `unit_flags` = 164098 WHERE `entry` = 38535;

/* Jitters now is visible for players */
DELETE FROM `creature_template_aura` WHERE `entry` = 288;

/* Kerr Ironsight & Elder Torntusk (Quest Order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -26267 WHERE `Id` IN (26267,26268);
UPDATE `quest_template` SET `ExclusiveGroup` = -26491 WHERE `Id` IN (26491,26492);

/* Examiner Andoren Dawnrise (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -25019 WHERE `Id` IN (25019,25020);

/* Chain Quest: Easy Money fix */
UPDATE `quest_template` SET `ExclusiveGroup` = 0 WHERE `Id` IN (27004,27005,27040,27041,27058,27059,27952,27953,28292,28293);
UPDATE `quest_template` SET `ExclusiveGroup` = 28295 WHERE `Id` IN (28295,28558);
UPDATE `quest_template` SET `ExclusiveGroup` = 28296 WHERE `Id` IN (28296,28557);
UPDATE `quest_template` SET `Flags` = 8388736 WHERE `Id` IN (27058,27059);
UPDATE `quest_template` SET `PrevQuestId` = 27952 WHERE `Id` = 27004;
UPDATE `quest_template` SET `PrevQuestId` = 27953 WHERE `Id` = 27005;
UPDATE `quest_template` SET `PrevQuestId` = 27004 WHERE `Id` = 27040;
UPDATE `quest_template` SET `PrevQuestId` = 27005 WHERE `Id` = 27041;
UPDATE `quest_template` SET `PrevQuestId` = 27040 WHERE `Id` = 27058;
UPDATE `quest_template` SET `PrevQuestId` = 27041 WHERE `Id` = 27059;
UPDATE `quest_template` SET `PrevQuestId` = 27058 WHERE `Id` = 28292;
UPDATE `quest_template` SET `PrevQuestId` = 27059 WHERE `Id` = 28293;
UPDATE `quest_template` SET `PrevQuestId` = 28292 WHERE `Id` IN (28295,28558);
UPDATE `quest_template` SET `PrevQuestId` = 28293 WHERE `Id` IN (28296,28557);

/* Twilight's Hammer Corpse fix */
UPDATE `creature_template` SET `unit_flags` = 570557190 WHERE `entry` = 45364;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` = 45364;

/* Stormcaller Mylra (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -26766 WHERE `Id` IN (26766,26768);

/* Degu spawn missing fix */
DELETE FROM `creature` WHERE `id` = 69947;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES 
(69947, 870, 1, 1, 0, 0, -930.294, 529.205, 35.3072, 2.63287, 720, 0, 0, 3939410, 0, 0, 0, 0, 2048, 0);

/* Gumi missing spawn fixed */
DELETE FROM `creature` WHERE `id` = 69943;
UPDATE `creature_template` SET `faction_A` = 190, `faction_H` = 190, `unit_flags` = 32768 WHERE `entry` = 69943;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES 
(69943, 870, 1, 1, 0, 0, 3225.35, 1439.32, 846.21, 1.90861, 720, 20, 0, 3939410, 0, 1, 0, 0, 2048, 0);

/* Initiate Goldmine (quest order) and flags fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -26410 WHERE `Id` IN (26410,27135);
UPDATE `quest_template` SET `PrevQuestId` = 26410 WHERE `Id` = 26411;
UPDATE `creature_template` SET `unit_flags` = 33536 WHERE `entry` = 42574;

/* Slate (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -27932 WHERE `Id` IN (27932,27933);
UPDATE `quest_template` SET `PrevQuestId` = 27932 WHERE `Id` = 27934;

/* Slate Quicksand (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -26791 WHERE `Id` IN (26791,26792);
UPDATE `quest_template` SET `PrevQuestId` = 26791 WHERE `Id` = 26835;

/* Terrath the Steady (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -26657 WHERE `Id` IN (26657,26658);
UPDATE `quest_template` SET `PrevQuestId` = 26657, `ExclusiveGroup` = -26659 WHERE `Id` IN (26659,26584);
UPDATE `quest_template` SET `PrevQuestId` = 26659 WHERE `Id` = 26750;

/* Patch (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -28090 WHERE `Id` IN (28090,28091); 
UPDATE `quest_template` SET `PrevQuestId` = 28090 WHERE `Id` = 28097;
DELETE FROM `creature_queststarter` WHERE `quest` = 27576;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (45528, 27576);

/* Tai Ho (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -30921 WHERE `Id` IN (30921,30923);
UPDATE `quest_template` SET `PrevQuestId` = 30921 WHERE `Id` = 30924;

/* Kor'ik (quest order) fix */
UPDATE `quest_template` SET `ExclusiveGroup` = -31088 WHERE `Id` IN (31088,31090);

/* Hutia missing spawn fixed */
UPDATE `creature_template` SET `faction_A` = 190, `faction_H` = 190, `unit_flags` = 32768 WHERE `entry` = 69946;
DELETE FROM `creature` WHERE `id`=69946;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES (69946, 870, 1, 1, 0, 0, 2359.83, -1909.37, 218.712, 3.96794, 720, 0, 0, 3939410, 0, 0, 0, 0, 2048, 0);

/* Coilskar Defender fix */
UPDATE `creature_template` SET `unit_flags` = 32768, `flags_extra` = 0 WHERE `entry` = 19762;

/* Coilskar Cobra fix */
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` = 19784;

/* Zan'thik Resonator fix */
UPDATE `creature_template` SET `speed_run` = 1.12, `unit_flags` = 32768 WHERE `entry` = 65787;

/* Adjunct Tzikzi & Enslaved Harvester missing SAIs fix */
UPDATE `creature_template` SET `mindmg` = 1400, `maxdmg` = 2600, `attackpower` = 24000, `dmg_multiplier` = 2, `exp` = 4, `AIName` = 'SmartAI' WHERE `entry` = 5409;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 62076;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (5409,62076) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5409, 0, 0, 0, 1, 0, 100, 0, 1, 1, 1000, 1000, 49, 0, 0, 0, 0, 0, 0, 21, 200, 0, 0, 0, 0, 0, 0, 'Enslaved Harvester - Cast Insect Swarm'),
(62076, 0, 0, 0, 0, 0, 100, 0, 2000, 3000, 15000, 19000, 11, 125010, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Adjunct Tzikzi - Cast Insect Swarm'),
(62076, 0, 1, 0, 0, 0, 100, 0, 20000, 20000, 60000, 60000, 11, 125002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'Adjunct Tzikzi - Cast Summon Enslaved Harvesters');

/* Azsh'ir Soldier fix */
UPDATE `creature_template` SET `unit_flags` = 32768, `dynamicflags` = 0 WHERE `entry` = 41249;

