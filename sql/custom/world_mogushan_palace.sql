DELETE FROM `creature_equip_template` WHERE `entry` IN (61239, 61240, 61242, 61243, 61389, 61392, 61398, 61946, 61947, 61399, 65402, 61431, 61442, 61444, 61445, 61884, 61337, 61338, 61339, 61340, 61216, 64243);
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(61239, 69858, 0, 0), -- 61239
(61240, 77075, 77075, 0), -- 61240
(61242, 75252, 77402, 0), -- 61242
(61243, 72484, 0, 0), -- 61243
(61389, 82785, 77401, 0), -- 61389
(61392, 76364, 0, 0), -- 61392
(61398, 67153, 0, 0), -- 61398
(61946, 80288, 0, 0), -- 61946
(61947, 82785, 82785, 0), -- 61947
(61399, 1906, 0, 0), -- 61399
(65402, 88494, 88494, 0), -- 65402
(61431, 1906, 0, 0), -- 61431
(61442, 82349, 82349, 0), -- 61442
(61444, 82788, 0, 0), -- 61444
(61445, 82789, 0, 0), -- 61445
(61884, 67153, 0, 0), -- 61884
(61337, 75252, 77402, 0), -- 61337
(61338, 77075, 77075, 0), -- 61338
(61339, 69858, 0, 0), -- 61339
(61340, 81711, 0, 0), -- 61340
(61216, 81711, 0, 0), -- 61216
(64243, 1906, 0, 0); -- 64243

/*
DELETE FROM `creature_template_addon` WHERE `entry` IN (61432, 61945, 61415, 61947, 61946, 61431, 73400, 61442, 61445, 61884, 64547, 64432, 64548, 61447, 61450, 61449, 61549, 61247, 61392, 65402, 61243, 64243, 64250, 61550, 61399, 61242, 45979, 63739, 61240, 59394, 61339, 61338, 61216, 61337, 61389, 59481, 61340, 61433, 61451, 61679, 63808, 38463, 61239, 61444, 61387, 61398);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(61945, 0, 0x0, 0x1, '120379 18950'), -- 61945 - 120379, 18950
(61415, 0, 0x3000000, 0x1, '119319'), -- 61415 - 119319
(61946, 0, 0x0, 0x1, '120374'), -- 61946 - 120374
(61431, 0, 0x0, 0x1, '118967 18950'), -- 61431 - 118967, 18950
(61947, 0, 0x0, 0x1, '120375'), -- 61947 - 120375
(73400, 0, 0x3000000, 0x1, '147490'), -- 73400 - 147490
(61432, 0, 0x0, 0x1, '118967'), -- 61432 - 118967
(61442, 0, 0x0, 0x1, ''), -- 61442
(61445, 0, 0x0, 0x1, '124311'), -- 61445 - 124311
(61884, 0, 0x0, 0x1, '120915'), -- 61884 - 120915
(64547, 0, 0x0, 0x1, '120375'), -- 64547 - 120375
(64432, 0, 0x0, 0x1, '124416'), -- 64432 - 124416
(64548, 0, 0x0, 0x1, '120375'), -- 64548 - 120375
(61447, 0, 0x0, 0x1, '121746 120379'), -- 61447 - 121746, 120379
(61450, 0, 0x0, 0x1, '121746 120374'), -- 61450 - 121746, 120374
(61449, 0, 0x0, 0x1, '121746'), -- 61449 - 121746
(61549, 0, 0x0, 0x1, '121746 120375'), -- 61549 - 121746, 120375
(61247, 0, 0x0, 0x0, '118967'), -- 61247 - 118967
(61392, 0, 0x0, 0x1, ''), -- 61392
(65402, 0, 0x0, 0x1, ''), -- 65402
(61243, 0, 0x0, 0x1, '118967'), -- 61243 - 118967
(64243, 0, 0x0, 0x1, '18950'), -- 64243 - 18950
(64250, 0, 0x3000000, 0x1, '125313'), -- 64250 - 125313
(61399, 0, 0x0, 0x1, '118967 18950'), -- 61399 - 118967, 18950
(61242, 0, 0x0, 0x1, '118967 118958'), -- 61242 - 118967, 118958
(45979, 0, 0x0, 0x1, ''), -- 45979
(61240, 0, 0x20000, 0x1, '118967 118969'), -- 61240 - 118967, 118969
(59394, 0, 0x0, 0x1, '128571'), -- 59394 - 128571
(61339, 0, 0x0, 0x1, '118967'), -- 61339 - 118967
(61338, 0, 0x0, 0x1, '118967'), -- 61338 - 118967
(61216, 0, 0x0, 0x1, '118967'), -- 61216 - 118967
(61337, 0, 0x0, 0x1, '118967 118958'), -- 61337 - 118967, 118958
(61389, 0, 0x0, 0x1, ''), -- 61389
(63739, 0, 0x0, 0x1, '127634 94214'), -- 63739 - 127634, 94214
(59481, 0, 0x3000000, 0x1, ''), -- 59481
(61340, 0, 0x0, 0x1, '118967'), -- 61340 - 118967
(61433, 0, 0x0, 0x1, '29266'), -- 61433 - 29266
(61451, 0, 0x0, 0x1, '119373'), -- 61451 - 119373
(61679, 0, 0x0, 0x1, '120143'), -- 61679 - 120143
(63808, 0, 0x3000000, 0x1, '124524'), -- 63808 - 124524
(38463, 0, 0x0, 0x1, '72100'), -- 38463 - 72100
(61239, 0, 0x0, 0x0, '118967'), -- 61239 - 118967
(61444, 0, 0x0, 0x1, ''), -- 61444
(61387, 0, 0x1, 0x1, ''), -- 61387
(61398, 0, 0x0, 0x1, ''); -- 61398
*/

DELETE FROM `creature_model_info` WHERE `modelid` IN (42059, 41922, 42197, 42060, 41923, 42061, 42062, 42063, 31379, 42065, 18657, 11686, 43202, 41982, 35408, 41984, 41987, 4735, 43544, 42448, 43546, 15880, 42053, 41917, 42054, 41233, 41919, 41920, 42195, 41921, 42058);
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`) VALUES
(42059, 0.9, 4.5, 0), -- 42059
(41922, 1.41225, 3.85, 0), -- 41922
(42197, 3, 6, 2), -- 42197
(42060, 0.9, 4.5, 0), -- 42060
(41923, 0.807, 2.2, 0), -- 41923
(42061, 0.6, 3, 0), -- 42061
(42062, 0.6, 3, 0), -- 42062
(42063, 0.6, 3, 0), -- 42063
(31379, 0.5, 1, 2), -- 31379
(42065, 2.25, 5.625, 0), -- 42065
(18657, 2, 4, 2), -- 18657
(11686, 0.5, 1, 2), -- 11686
(43202, 4, 10, 0), -- 43202
(41982, 0.9, 4.5, 0), -- 41982
(35408, 2, 8, 2), -- 35408
(41984, 0.6, 3, 0), -- 41984
(41987, 1.2, 6, 0), -- 41987
(4735, 0.2205, 0.945, 2), -- 4735
(43544, 0.3819442, 1.65, 1), -- 43544
(42448, 2.25, 5.625, 0), -- 42448
(43546, 0.9684, 2.64, 0), -- 43546
(15880, 1.5, 3, 2), -- 15880
(42053, 1.2105, 3.3, 0), -- 42053
(41917, 1.2105, 3.3, 0), -- 41917
(42054, 1.2105, 3.3, 0), -- 42054
(41233, 3, 7.5, 0), -- 41233
(41919, 1.2912, 3.52, 0), -- 41919
(41920, 1.81575, 4.95, 0), -- 41920
(42195, 1.56, 4, 2), -- 42195
(41921, 1.33155, 3.63, 0), -- 41921
(42058, 0.9, 4.5, 0); -- 42058

DELETE FROM creature WHERE `map` = 994;

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4650.3, -2625.07, 21.8928, 1.77774, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4649.07, -2625.83, 21.8924, 1.86728, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4647.22, -2626.52, 21.8921, 2.10604, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61884, 994, 6182, 6473, 2, 1, 0, 0, -4229.96, -2613.52, 16.4796, 6.27789, 300, 0, 0, 14713470, 2151920, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4656.91, -2618.51, 21.8995, 5.73135, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4647.36, -2621.29, 21.8995, 3.01287, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4646.29, -2623.01, 21.8934, 2.78589, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4664.62, -2628.88, 21.8919, 2.68536, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4636.7, -2610.25, 21.8995, 4.89887, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4656.38, -2614.01, 21.8995, 3.29732, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6473, 2, 1, 0, 0, -4600.63, -2619.4, 21.8995, 0.484894, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4597.39, -2622.53, 21.9, 1.7678, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 64432, 994, 6182, 6474, 2, 1, 0, 0, -4684.38, -2600.23, 28.4832, 6.00872, 7200, 0, 0, 1, 0, 0, 3, 0, 536904448, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6473, 2, 1, 0, 0, -4594.37, -2614.71, 22.1126, 1.96101, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6473, 2, 1, 0, 0, -4730.46, -2613.66, 27.5187, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4520.04, -2613.41, 22.3253, 0.835095, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6473, 2, 1, 0, 0, -4520.04, -2613.41, 22.3253, 0.835095, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61398, 994, 6182, 6472, 2, 1, 0, 0, -4704.74, -2613.61, 28.7661, 6.25904, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4515, -2609.47, 22.3253, 3.56278, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61451, 994, 6182, 6472, 2, 1, 0, 0, -4673.39, -2587.11, 22.4088, 4.78401, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61433, 994, 6182, 6472, 2, 1, 0, 0, -4674.87, -2585.5, 22.4091, 4.91361, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61679, 994, 6182, 6472, 2, 1, 0, 0, -4673.22, -2642.08, 36.5631, 3.14162, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61451, 994, 6182, 6473, 2, 1, 0, 0, -4673.12, -2587.67, 22.5612, 4.64353, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61433, 994, 6182, 6473, 2, 1, 0, 0, -4674.18, -2641.21, 22.4091, 1.50647, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6472, 2, 1, 0, 0, -4674.61, -2585.68, 22.4091, 4.77633, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61451, 994, 6182, 6472, 2, 1, 0, 0, -4673.12, -2587.67, 22.5612, 4.64353, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61451, 994, 6182, 6473, 2, 1, 0, 0, -4673.12, -2587.67, 22.5612, 4.64353, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61451, 994, 6182, 6472, 2, 1, 0, 0, -4673.24, -2640.43, 22.6601, 1.51001, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61387, 994, 6182, 6472, 2, 1, 0, 0, -4676.73, -2605.9, 22.5565, 6.06047, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61387, 994, 6182, 6472, 2, 1, 0, 0, -4685.58, -2600.52, 27.4195, 6.25411, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61387, 994, 6182, 6473, 2, 1, 0, 0, -4676.72, -2621.47, 22.5565, 6.1445, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61387, 994, 6182, 6476, 2, 1, 0, 0, -4684.67, -2626.9, 27.4195, 6.25411, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61451, 994, 6182, 6476, 2, 1, 0, 0, -4672.93, -2640.8, 22.4091, 1.61414, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6476, 2, 1, 0, 0, -4671.35, -2642.43, 25.9317, 1.39821, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61451, 994, 6182, 6476, 2, 1, 0, 0, -4673.24, -2640.19, 22.4086, 1.51001, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61679, 994, 6182, 6472, 2, 1, 0, 0, -4672.61, -2585.25, 35.9115, 3.14162, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61433, 994, 6182, 6472, 2, 1, 0, 0, -4674.87, -2585.5, 22.4091, 4.91361, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6476, 2, 1, 0, 0, -4653.14, -2656.52, 22.3245, 1.59556, 300, 0, 0, 156000, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6476, 2, 1, 0, 0, -4612.63, -2656.52, 22.3256, 1.5071, 300, 0, 0, 156000, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6182, 2, 1, 0, 0, -4653.61, -2570.55, 22.3251, 4.67664, 300, 0, 0, 156000, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 38463, 994, 6182, 6473, 2, 1, 0, 0, -4509.62, -2541.45, 32.1355, 4.69971, 7200, 0, 0, 1, 0, 0, 0, 0, 33554432, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6472, 2, 1, 0, 0, -4630.53, -2584.46, 25.2458, 4.67871, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6473, 2, 1, 0, 0, -4633.06, -2585.55, 22.4091, 4.77633, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6472, 2, 1, 0, 0, -4612.88, -2570.9, 23.3258, 4.73785, 300, 0, 0, 156000, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61679, 994, 6182, 6472, 2, 1, 0, 0, -4633.12, -2642.22, 35.6843, 3.09045, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61451, 994, 6182, 6472, 2, 1, 0, 0, -4632.83, -2638.54, 22.5589, 1.62049, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61679, 994, 6182, 6472, 2, 1, 0, 0, -4632.73, -2585.37, 35.7729, 3.14162, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6474, 2, 65535, 0, 0, -4630.09, -2639.01, 22.3257, 4.34757, 300, 0, 0, 1422711, 62356, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61451, 994, 6182, 6472, 2, 1, 0, 0, -4633.15, -2586.05, 22.4091, 4.70768, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6472, 2, 1, 0, 0, -4635.08, -2642.43, 25.9195, 1.6184, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61433, 994, 6182, 6473, 2, 1, 0, 0, -4633.33, -2585.22, 22.8598, 4.91361, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61433, 994, 6182, 6472, 2, 1, 0, 0, -4633.71, -2641.15, 22.4091, 1.55605, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61433, 994, 6182, 6473, 2, 1, 0, 0, -4633.71, -2641.15, 22.4091, 1.55605, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 38463, 994, 6182, 6473, 2, 1, 0, 0, -4509.67, -2687, 32.0526, 1.56791, 7200, 0, 0, 1, 0, 0, 0, 0, 33554432, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61338, 994, 6182, 6472, 2, 1, 0, 0, -4421.11, -2599.6, -54.5437, 4.62418, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 12, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4422.85, -2601.02, -54.539, 6.2731, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 65402, 994, 6182, 6472, 2, 1, 0, 0, -4601.27, -2606.32, 21.8995, 3.12814, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 65402, 994, 6182, 6472, 2, 1, 0, 0, -4601.43, -2622.32, 21.9001, 3.12806, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4421.6, -2604.56, -54.5515, 0.396754, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4421.33, -2605.21, -54.5526, 0.955958, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61389, 994, 6182, 6472, 2, 1, 0, 0, -4602.95, -2614.3, 21.8995, 6.26971, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61679, 994, 6182, 6472, 2, 1, 0, 0, -4592.61, -2642.51, 35.9949, 3.14162, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61679, 994, 6182, 6473, 2, 1, 0, 0, -4592.4, -2585.39, 36.0995, 3.14162, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61451, 994, 6182, 6472, 2, 1, 0, 0, -4592.29, -2586.87, 22.4086, 4.78401, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61451, 994, 6182, 6472, 2, 1, 0, 0, -4592.26, -2586.59, 22.4091, 4.78401, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61433, 994, 6182, 6473, 2, 1, 0, 0, -4592.33, -2585.4, 22.4091, 4.71504, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61433, 994, 6182, 6472, 2, 1, 0, 0, -4592.33, -2585.4, 22.4091, 4.71504, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6473, 2, 1, 0, 0, -4592.44, -2585.47, 22.4091, 4.77633, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4409.88, -2607.57, -54.8518, 0.90578, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4405.42, -2610.53, -54.8518, 1.10134, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4347.45, -2687.36, -29.6728, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4349.83, -2683.71, -30.0874, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4347.53, -2687.38, -29.6197, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.74, -2670.78, -28.8477, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61433, 994, 6182, 6472, 2, 1, 0, 0, -4592.6, -2641.95, 22.437, 1.55888, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61451, 994, 6182, 6472, 2, 1, 0, 0, -4593.6, -2639.44, 22.5605, 1.62049, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6476, 2, 1, 0, 0, -4592.46, -2642.06, 22.5668, 1.534, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61451, 994, 6182, 6476, 2, 1, 0, 0, -4593.28, -2640.41, 22.4086, 1.62736, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6476, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6476, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6476, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6476, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6476, 2, 1, 0, 0, -4350.33, -2674.95, -29.3516, 0.242102, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6476, 2, 1, 0, 0, -4350.54, -2679.31, -29.6348, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6476, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4350.77, -2670.79, -28.8458, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4350.29, -2674.94, -29.3619, 0.242027, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.54, -2679.31, -29.6353, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4398.2, -2664.25, -43.6581, 4.81375, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4349.78, -2683.69, -30.0953, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6473, 2, 1, 0, 0, -4398.2, -2664.25, -43.6581, 4.57979, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4349.73, -2683.68, -30.1017, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4347.42, -2687.36, -29.6923, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6476, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4373.09, -2691.71, -28.7873, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4371.98, -2686.43, -28.1714, 3.69155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4372.23, -2669.16, -29.1374, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4347.46, -2687.37, -29.6685, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.71, -2670.77, -28.8492, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.44, -2674.98, -29.3312, 0.242102, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.49, -2674.99, -29.3221, 0.242102, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4369.9, -2669.89, -28.773, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4371.8, -2676.96, -29.4222, 2.92745, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 63739, 994, 6182, 6473, 2, 1, 0, 0, -4532.72, -2732.51, 31.8956, 1.70955, 7200, 0, 0, 1, 0, 0, 0, 0, 33587264, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6473, 2, 1, 0, 0, -4513.65, -2734.52, 41.1242, 3.07351, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 63739, 994, 6182, 6473, 2, 1, 0, 0, -4518.53, -2739.84, 31.8956, 1.54269, 7200, 0, 0, 1, 0, 0, 0, 0, 33587264, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 63739, 994, 6182, 6473, 2, 1, 0, 0, -4509.67, -2740.62, 32.3937, 1.54269, 7200, 0, 0, 1, 0, 0, 0, 0, 33587264, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.75, -2670.78, -28.8469, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 63739, 994, 6182, 6473, 2, 1, 0, 0, -4486.72, -2733.5, 31.8956, 1.52448, 7200, 0, 0, 1, 0, 0, 0, 0, 33587264, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 63739, 994, 6182, 6473, 2, 1, 0, 0, -4500.95, -2739.11, 31.8956, 1.54269, 7200, 0, 0, 1, 0, 0, 0, 0, 33587264, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.15, -2669.17, -28.9942, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.67, -2679.35, -29.6145, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.69, -2691.52, -28.0474, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4369.82, -2669.87, -28.6859, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4370.36, -2677.27, -26.1988, 2.92745, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4371.4, -2681.13, -28.9294, 3.67696, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6182, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6182, 2, 1, 0, 0, -4358.5, -2582.1, -28.4105, 1.78818, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6182, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6182, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6182, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6182, 2, 1, 0, 0, -4349.76, -2683.69, -30.0972, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61239, 994, 6182, 6472, 2, 1, 0, 0, -4402.68, -2668.48, -43.3379, 0.534062, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61239, 994, 6182, 6472, 2, 1, 0, 0, -4392.88, -2668.28, -43.3382, 2.67403, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4359.16, -2575.58, -28.4094, 0.839113, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4371.94, -2686.4, -28.0497, 3.69155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.6, -2679.33, -29.6257, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4349.94, -2683.74, -30.0712, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.19, -2669.17, -29.0799, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4373.04, -2691.69, -28.6905, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4371.77, -2676.96, -29.3312, 2.92745, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4369.96, -2669.9, -28.8485, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4347.42, -2687.36, -29.6988, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.31, -2674.95, -29.3554, 0.242102, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6471, 2, 1, 0, 0, -4397.14, -2558.22, -28.4064, 4.69137, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.46, -2674.99, -29.3281, 0.242102, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4347.46, -2687.37, -29.6664, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4350.79, -2670.8, -28.845, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4373.13, -2691.73, -28.8693, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.3, -2669.15, -29.2684, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4397.14, -2558.22, -28.4064, 4.69137, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4371.58, -2681.24, -29.3192, 3.67696, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.69, -2670.76, -28.8501, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.07, -2686.48, -28.3888, 3.69155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4349.64, -2683.66, -30.1156, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4370.1, -2669.92, -29.0015, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4397.16, -2559.24, -28.4065, 4.69137, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4370.36, -2677.27, -26.1988, 2.92745, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4373.24, -2691.78, -29.1053, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61392, 994, 6182, 6472, 2, 1, 0, 0, -4514.88, -2687.35, 32.0526, 0.384449, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61392, 994, 6182, 6473, 2, 1, 0, 0, -4503.96, -2686.99, 32.0526, 2.59595, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 65402, 994, 6182, 6472, 2, 1, 0, 0, -4509.42, -2695.5, 32.0502, 1.56791, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61389, 994, 6182, 6471, 2, 1, 0, 0, -4502.89, -2706.01, 31.9668, 3.14813, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4351.31, -2679.55, -29.5174, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61389, 994, 6182, 6472, 2, 1, 0, 0, -4525.04, -2604.98, 22.4086, 6.15983, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61389, 994, 6182, 6472, 2, 1, 0, 0, -4525.34, -2622.52, 22.4086, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6472, 2, 1, 0, 0, -4534.8, -2590.26, 25.5362, 2.98839, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61340, 994, 6182, 6472, 2, 1, 0, 0, -4421.37, -2595.37, -54.4701, 5.5211, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4349.75, -2683.69, -30.0987, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.22, -2669.16, -29.123, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4347.41, -2687.35, -29.701, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4373.26, -2691.79, -29.1398, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4371.54, -2681.22, -29.2427, 3.67696, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.56, -2679.31, -29.6327, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.03, -2686.46, -28.295, 3.69155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.26, -2674.94, -29.3733, 0.242027, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4369.55, -2669.83, -28.3942, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.26, -2674.94, -29.3733, 0.242027, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4347.53, -2687.38, -29.6218, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.65, -2670.75, -28.8521, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4372.29, -2669.15, -29.2537, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4371.88, -2676.94, -29.6373, 2.92745, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4349.67, -2683.66, -30.1112, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.84, -2691.59, -28.3058, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4345.96, -2518.41, -28.3952, 0.050972, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61337, 994, 6182, 6472, 2, 1, 0, 0, -4393.96, -2596.49, -54.8475, 6.1275, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4350.69, -2670.76, -28.85, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4349.92, -2683.73, -30.0748, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 63739, 994, 6182, 6472, 2, 1, 0, 0, -4519.25, -2486.84, 31.8956, 4.70446, 7200, 0, 0, 1, 0, 0, 0, 0, 33587264, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 63739, 994, 6182, 6472, 2, 1, 0, 0, -4509.59, -2485.16, 31.8956, 4.70446, 7200, 0, 0, 1, 0, 0, 0, 0, 33587264, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61389, 994, 6182, 6472, 2, 1, 0, 0, -4521.66, -2529.25, 31.9668, 4.05816, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 59481, 994, 6182, 6472, 2, 1, 0, 0, -4503.63, -2491.1, 41.8918, 4.07824, 7200, 0, 0, 1, 0, 0, 0, 0, 33554496, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61392, 994, 6182, 6472, 2, 1, 0, 0, -4503.44, -2542.66, 32.1355, 3.51624, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61392, 994, 6182, 6472, 2, 1, 0, 0, -4516.52, -2541.96, 32.1355, 5.72775, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 65402, 994, 6182, 6473, 2, 1, 0, 0, -4510.18, -2536.16, 32.1355, 4.69971, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 63739, 994, 6182, 6473, 2, 1, 0, 0, -4500.08, -2485.75, 31.8956, 4.70446, 7200, 0, 0, 1, 0, 0, 0, 0, 33587264, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 63739, 994, 6182, 6472, 2, 1, 0, 0, -4533.08, -2494.65, 31.8956, 4.69656, 7200, 0, 0, 1, 0, 0, 0, 0, 33587264, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 45979, 994, 6182, 6472, 2, 1, 0, 0, -4398.04, -2570.01, -54.4629, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33554432, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61339, 994, 6182, 6471, 2, 1, 0, 0, -4374.46, -2596.99, -54.4638, 3.88481, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61216, 994, 6182, 6473, 2, 1, 0, 0, -4401.39, -2562.24, -28.3259, 4.78, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4370.03, -2669.91, -28.9246, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.32, -2669.15, -29.2977, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4372.07, -2686.48, -28.3888, 3.69155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4371.53, -2681.21, -29.2124, 3.67696, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4373.15, -2691.74, -28.9191, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4347.39, -2687.35, -29.7161, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.5, -2679.3, -29.6413, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4371.84, -2676.95, -29.5293, 2.92745, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61216, 994, 6182, 6472, 2, 1, 0, 0, -4395, -2562.29, -28.3258, 4.74882, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.29, -2674.95, -29.3586, 0.242027, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.31, -2674.95, -29.3554, 0.242102, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 63739, 994, 6182, 6472, 2, 1, 0, 0, -4486.25, -2494.09, 31.8956, 4.80727, 7200, 0, 0, 1, 0, 0, 0, 0, 33587264, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4372.19, -2669.17, -29.0799, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4349.78, -2683.69, -30.0953, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4348.25, -2687.56, -29.1467, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4373.01, -2691.67, -28.6269, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4369.72, -2669.85, -28.5752, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6182, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4350.8, -2670.8, -28.8444, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4373.2, -2691.58, -20.8126, 0.312083, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6182, 2, 1, 0, 0, -4299.15, -2519.67, -39.0854, 3.19178, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.66, -2679.35, -29.6166, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4440.88, -2624.58, -28.4102, 1.7734, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4450.58, -2596.26, -28.3233, 3.50211, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4451.93, -2618.8, -28.3269, 2.64729, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4451.73, -2600.08, -28.3239, 2.60168, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4452.53, -2615.08, -28.3264, 3.76831, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4371.84, -2686.34, -27.8263, 3.69155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4434.61, -2566.59, -28.3245, 3.23699, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4437.93, -2570.29, -28.3255, 2.20004, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61240, 994, 6182, 6472, 2, 1, 0, 0, -4338.38, -2513.41, -28.3238, 5.08766, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61242, 994, 6182, 6473, 2, 1, 0, 0, -4326.41, -2519.75, -28.3938, 0.0200474, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61240, 994, 6182, 6472, 2, 1, 0, 0, -4338.48, -2525.82, -28.3238, 1.25468, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4349.84, -2683.71, -30.0856, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4363.88, -2648.29, -38.4251, 0.780741, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4370.2, -2642.77, -38.8876, 0.70153, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4229.78, -2500.91, -21.0259, 4.7492, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4232.71, -2539.38, -21.0259, 1.74921, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4233.38, -2500.8, -21.0259, 4.87356, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4230.88, -2537.69, -21.0259, 1.48083, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4231.93, -2501.69, -21.0259, 4.80595, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4228.88, -2539.46, -21.0259, 1.6381, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61399, 994, 6182, 6472, 2, 1, 0, 0, -4275.44, -2519.7, -39.0021, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4350.78, -2670.79, -28.8455, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4347.42, -2687.36, -29.6988, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4369.88, -2669.88, -28.7605, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4351.33, -2675.2, -29.1645, 0.242102, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4351.33, -2675.2, -29.1645, 0.242102, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4373.03, -2691.68, -28.6745, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6182, 2, 1, 0, 0, -4349.72, -2683.68, -30.1042, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6182, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4371.99, -2686.43, -28.1868, 3.69155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4372.24, -2669.16, -29.1519, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.52, -2679.3, -29.639, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 64243, 994, 6182, 6473, 2, 1, 0, 0, -4218.61, -2667, 17.5659, 0.004081, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4347.58, -2687.4, -29.5872, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4371.22, -2681.03, -28.5587, 3.67696, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6475, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6475, 2, 1, 0, 0, -4371.7, -2676.98, -29.1663, 2.92745, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6475, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6475, 2, 1, 0, 0, -4350.75, -2670.78, -28.8468, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4349.9, -2683.73, -30.0766, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.84, -2691.59, -28.3058, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4369.58, -2669.83, -28.4301, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4371.97, -2669.2, -28.701, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4350.79, -2679.39, -29.5966, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4220.27, -2621.31, 16.4877, 5.78796, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4371.86, -2686.35, -27.8557, 3.69155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4350.8, -2670.8, -28.8441, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4347.52, -2687.38, -29.6295, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4372.87, -2691.61, -28.3653, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4220.27, -2621.31, 16.4877, 5.78796, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4349.83, -2683.71, -30.0877, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4350.38, -2674.97, -29.3425, 0.242102, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.36, -2674.96, -29.3456, 0.242102, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6473, 2, 1, 0, 0, -4371.66, -2676.99, -29.0478, 2.92745, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4371.3, -2681.07, -28.7132, 3.67696, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4369.61, -2669.84, -28.4661, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4372.04, -2669.19, -28.8254, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6471, 2, 1, 0, 0, -4220.27, -2621.31, 16.4877, 5.78796, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4373.01, -2691.67, -28.6269, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6182, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4349.83, -2683.71, -30.0868, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6475, 2, 1, 0, 0, -4347.48, -2687.37, -29.6583, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6473, 2, 1, 0, 0, -4350.53, -2679.31, -29.6366, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6475, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.69, -2670.76, -28.8501, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6475, 2, 1, 0, 0, -4371.92, -2686.39, -28.0195, 3.69155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6473, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4372.19, -2669.17, -29.0799, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4373.05, -2691.69, -28.7065, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4369.76, -2669.86, -28.6242, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6182, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4370.36, -2677.27, -26.1988, 2.92745, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4349.84, -2683.71, -30.0864, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4347.44, -2687.36, -29.6793, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4371.46, -2681.17, -29.0473, 3.67696, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6471, 2, 1, 0, 0, -4211.51, -2605.51, 16.4907, 3.00368, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4351.33, -2675.2, -29.1645, 0.242102, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4350.74, -2670.78, -28.8474, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4350.26, -2674.94, -29.3733, 0.242027, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4372.25, -2669.16, -29.1809, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4373.21, -2691.76, -29.0369, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4351.31, -2679.55, -29.5174, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6182, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4212.9, -2604.6, 16.4913, 3.34284, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.09, -2686.5, -28.452, 3.69155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4213.77, -2604.7, 16.4915, 3.46327, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4349.66, -2683.66, -30.1131, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4370.27, -2669.95, -29.1966, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4347.31, -2687.33, -29.77, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4224.89, -2607.08, 16.4935, 0.307494, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4371.03, -2690.75, -26.1988, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.11, -2676.89, -30.2892, 2.92745, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.52, -2670.7, -28.8593, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.34, -2669.14, -29.3271, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4350.35, -2679.25, -29.6635, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4371.84, -2681.39, -29.923, 3.67696, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6471, 2, 1, 0, 0, -4220.28, -2608.2, 16.492, 0.258014, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4349.49, -2683.61, -30.1372, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4373.63, -2691.96, -29.9858, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4347.21, -2687.3, -29.8374, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4372.36, -2686.66, -29.1765, 3.69155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4350.1, -2674.9, -29.4437, 0.242027, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4370.45, -2669.98, -29.4095, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4350.12, -2674.9, -29.4388, 0.242027, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4372.56, -2669.1, -29.7338, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6471, 2, 1, 0, 0, -4218.31, -2600.36, 16.494, 0.838161, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4350.6, -2670.73, -28.8553, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4372.12, -2676.89, -30.3055, 2.92745, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4373.48, -2691.89, -29.6241, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4349.59, -2683.64, -30.1233, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4350.49, -2679.29, -29.6427, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4371.62, -2681.26, -29.4273, 3.67696, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4347.43, -2687.36, -29.6888, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4370.13, -2669.93, -29.0401, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4371.98, -2669.2, -28.7285, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.1, -2686.5, -28.4678, 3.69155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.61, -2670.73, -28.8545, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4349.62, -2683.65, -30.1181, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4373.29, -2691.8, -29.2093, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4237.38, -2612.85, 16.4797, 6.2796, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6182, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4237.38, -2612.85, 16.4797, 6.2796, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6182, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6470, 2, 1, 0, 0, -4350.43, -2679.28, -29.6512, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4347.27, -2687.32, -29.7962, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.03, -2676.91, -30.0469, 2.92745, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6470, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.15, -2674.91, -29.4224, 0.242027, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.11, -2674.9, -29.442, 0.242027, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4372.62, -2669.09, -29.842, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4373.56, -2691.92, -29.8123, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6471, 2, 1, 0, 0, -4237.38, -2612.85, 16.4797, 6.2796, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4370.67, -2670.02, -29.6687, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4349.56, -2683.64, -30.1269, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 65402, 994, 6182, 6472, 2, 1, 0, 0, -4424.41, -2655.76, 22.3253, 5.88498, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61392, 994, 6182, 6472, 2, 1, 0, 0, -4420.19, -2647.4, 22.3253, 0.185518, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 65402, 994, 6182, 6472, 2, 1, 0, 0, -4427.6, -2647.15, 22.3253, 6.2496, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61392, 994, 6182, 6472, 2, 1, 0, 0, -4431.13, -2656.23, 22.3253, 5.3397, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.38, -2686.67, -29.245, 3.69155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4371.94, -2681.45, -30.1726, 3.67696, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4375.29, -2683.81, -39.9593, 0.519951, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6471, 2, 1, 0, 0, -4350.53, -2670.7, -28.8587, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4373.44, -2691.87, -29.5317, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4349.34, -2683.57, -30.1606, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6471, 2, 1, 0, 0, -4373.01, -2669.03, -30.5816, 2.9755, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6471, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4347.28, -2687.32, -29.7882, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.16, -2676.88, -30.4202, 2.92745, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.32, -2670.62, -28.8701, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4371.05, -2670.08, -30.1499, 3.31155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.25, -2679.22, -29.6801, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6182, 2, 1, 0, 0, -4373.73, -2692, -30.2233, 3.57438, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6470, 2, 1, 0, 0, -4348.17, -2623.2, -28.408, 1.27268, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61243, 994, 6182, 6472, 2, 1, 0, 0, -4397.87, -2581.22, -54.4735, 4.77042, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61550, 994, 6182, 6472, 2, 1, 0, 0, -4286.43, -2652.22, 22.6657, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61550, 994, 6182, 6472, 2, 1, 0, 0, -4286.75, -2646.36, 22.673, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61550, 994, 6182, 6472, 2, 1, 0, 0, -4282.85, -2646.36, 22.673, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61550, 994, 6182, 6472, 2, 1, 0, 0, -4282.37, -2652.22, 22.6657, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61550, 994, 6182, 6472, 2, 1, 0, 0, -4286.93, -2574.56, 22.666, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61550, 994, 6182, 6472, 2, 1, 0, 0, -4287.04, -2580.42, 22.6724, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61550, 994, 6182, 6472, 2, 1, 0, 0, -4283.31, -2574.56, 22.666, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61550, 994, 6182, 6472, 2, 1, 0, 0, -4282.83, -2580.42, 22.6724, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4347.05, -2687.27, -29.9413, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4372.61, -2686.81, -29.9192, 3.69155, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4349.87, -2674.84, -29.5484, 0.242027, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4368.41, -2562.13, -28.323, 0.419346, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4364.73, -2564.43, -28.3237, 1.62157, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61392, 994, 6182, 6472, 2, 1, 0, 0, -4373.31, -2624.52, 22.3253, 4.66414, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4359.15, -2566.75, -28.4082, 0.868153, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61389, 994, 6182, 6470, 2, 1, 0, 0, -4366.9, -2638.42, 22.3253, 1.52256, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4331.48, -2516.5, -28.3238, 6.06011, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4354.94, -2574.27, -28.3266, 6.23481, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6470, 2, 1, 0, 0, -4331.23, -2523.22, -28.3238, 0.376011, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6470, 2, 1, 0, 0, -4352.69, -2577.56, -28.3272, 1.16232, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61392, 994, 6182, 6470, 2, 1, 0, 0, -4359.19, -2625.2, 22.3253, 4.66413, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6470, 2, 1, 0, 0, -4343.12, -2596.92, -28.4067, 0.174326, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4343, -2605.2, -28.3247, 5.68859, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61247, 994, 6182, 6472, 2, 1, 0, 0, -4343.13, -2608.91, -28.3253, 0.710397, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61550, 994, 6182, 6472, 2, 1, 0, 0, -4280.16, -2622.03, 22.2148, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61550, 994, 6182, 6472, 2, 1, 0, 0, -4279.97, -2605.03, 22.1117, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61550, 994, 6182, 6472, 2, 1, 0, 0, -4280.17, -2610.87, 22.6191, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61550, 994, 6182, 6472, 2, 1, 0, 0, -4280.01, -2616.51, 22.6305, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6472, 2, 1, 0, 0, -4276.58, -2604.59, 19.7813, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6472, 2, 1, 0, 0, -4276.26, -2623.08, 19.3317, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6472, 2, 1, 0, 0, -4275.33, -2609.64, 20.3583, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6472, 2, 1, 0, 0, -4275.01, -2618.08, 19.7999, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6472, 2, 1, 0, 0, -4272.01, -2603.61, 17.5542, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6472, 2, 1, 0, 0, -4271.04, -2624.28, 17.5542, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6472, 2, 1, 0, 0, -4270.99, -2618.99, 17.5542, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6472, 2, 1, 0, 0, -4270.84, -2608.55, 17.5542, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6472, 2, 1, 0, 0, -4266.49, -2602.52, 17.5542, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6472, 2, 1, 0, 0, -4266.08, -2624.69, 17.5542, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6472, 2, 1, 0, 0, -4266.45, -2608, 17.5542, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6472, 2, 1, 0, 0, -4266.15, -2618.82, 17.5542, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6470, 2, 1, 0, 0, -4261.53, -2624.69, 17.5542, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6470, 2, 1, 0, 0, -4261.53, -2602.52, 17.5542, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6470, 2, 1, 0, 0, -4261.53, -2608, 17.5542, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61449, 994, 6182, 6470, 2, 1, 0, 0, -4261.53, -2618.82, 17.5542, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61551, 994, 6182, 6470, 2, 1, 0, 0, -4239.13, -2660.12, 17.5542, 1.62932, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61549, 994, 6182, 6470, 2, 1, 0, 0, -4238.74, -2566.94, 17.5542, 4.75975, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 6182, 6472, 2, 1, 0, 0, -4238.25, -2655.47, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 6182, 6472, 2, 1, 0, 0, -4238.29, -2571.99, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61549, 994, 6182, 6472, 2, 1, 0, 0, -4233.86, -2567.03, 17.5542, 4.75975, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61551, 994, 6182, 6472, 2, 1, 0, 0, -4233.13, -2660.39, 17.5542, 1.62932, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 6182, 6472, 2, 1, 0, 0, -4238.19, -2649.71, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 6182, 6472, 2, 1, 0, 0, -4238.31, -2577.61, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6470, 2, 1, 0, 0, -4349.9, -2674.85, -29.5353, 0.242027, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6470, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4350.19, -2679.2, -29.6889, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4349.35, -2683.57, -30.1593, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6470, 2, 1, 0, 0, -4143.49, -2613.02, 22.3253, 6.13317, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6470, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6470, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6470, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6470, 2, 1, 0, 0, -4349.17, -2683.52, -30.1847, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4143.49, -2613.02, 22.3253, 0.0133476, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4351.56, -2671.09, -28.8036, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 6182, 6472, 2, 1, 0, 0, -4232.49, -2649.71, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 6182, 6472, 2, 1, 0, 0, -4232.55, -2655.47, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61551, 994, 6182, 6472, 2, 1, 0, 0, -4227.44, -2660.45, 17.5542, 1.62932, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 6182, 6472, 2, 1, 0, 0, -4232.63, -2571.99, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 6182, 6470, 2, 1, 0, 0, -4232.65, -2577.61, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6470, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 6182, 6472, 2, 1, 0, 0, -4138.19, -2611.22, 22.3253, 4.38832, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61549, 994, 6182, 6472, 2, 1, 0, 0, -4227.46, -2567.03, 17.5542, 4.75975, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 6182, 6472, 2, 1, 0, 0, -4226.84, -2655.47, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 6182, 6472, 2, 1, 0, 0, -4227.21, -2572.03, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61551, 994, 6182, 6472, 2, 1, 0, 0, -4221.58, -2660.52, 17.5542, 1.62932, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 6182, 6472, 2, 1, 0, 0, -4226.78, -2649.71, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 6182, 6472, 2, 1, 0, 0, -4227.23, -2577.65, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61549, 994, 6182, 6472, 2, 1, 0, 0, -4221.81, -2566.79, 17.5542, 4.75975, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 6182, 6472, 2, 1, 0, 0, -4221.5, -2655.47, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 6182, 6472, 2, 1, 0, 0, -4221.69, -2571.99, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61551, 994, 6182, 6472, 2, 1, 0, 0, -4215.91, -2660.52, 17.5542, 1.62932, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 6182, 6472, 2, 1, 0, 0, -4221.44, -2649.71, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 6182, 6470, 2, 1, 0, 0, -4221.72, -2577.61, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61549, 994, 6182, 6470, 2, 1, 0, 0, -4215.79, -2567.03, 17.5542, 4.75975, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61551, 994, 6182, 6470, 2, 1, 0, 0, -4210.51, -2660.52, 17.5542, 1.62932, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61549, 994, 6182, 6472, 2, 1, 0, 0, -4210.42, -2567.03, 17.5542, 4.75975, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 6182, 6472, 2, 1, 0, 0, -4210.47, -2655.47, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61551, 994, 6182, 6470, 2, 1, 0, 0, -4204.86, -2660.52, 17.5542, 1.62932, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 6182, 6470, 2, 1, 0, 0, -4210.26, -2572.12, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 6182, 6472, 2, 1, 0, 0, -4210.41, -2649.71, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61549, 994, 6182, 6472, 2, 1, 0, 0, -4204.52, -2567.03, 17.5542, 4.75975, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 6182, 6470, 2, 1, 0, 0, -4210.28, -2577.74, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 6182, 6470, 2, 1, 0, 0, -4204.81, -2655.47, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61551, 994, 6182, 6472, 2, 1, 0, 0, -4199, -2660.74, 17.5542, 1.62932, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 6182, 6472, 2, 1, 0, 0, -4204.59, -2571.99, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 6182, 6472, 2, 1, 0, 0, -4204.75, -2649.71, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61549, 994, 6182, 6472, 2, 1, 0, 0, -4198.83, -2567.03, 17.5542, 4.75975, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 6182, 6472, 2, 1, 0, 0, -4199.18, -2655.47, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 6182, 6472, 2, 1, 0, 0, -4204.62, -2577.61, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61551, 994, 5976, 5976, 2, 1, 0, 0, -4193.42, -2660.52, 17.5542, 1.62932, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 5976, 5976, 2, 1, 0, 0, -4199.3, -2571.99, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 5976, 5976, 2, 1, 0, 0, -4199.12, -2649.71, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61549, 994, 5976, 5976, 2, 1, 0, 0, -4193.86, -2567.03, 17.5542, 4.71844, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 5976, 5976, 2, 1, 0, 0, -4193.69, -2655.47, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 5976, 5976, 2, 1, 0, 0, -4199.32, -2577.61, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 5976, 5976, 2, 1, 0, 0, -4194.12, -2571.99, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61447, 994, 5976, 5976, 2, 1, 0, 0, -4194.14, -2577.61, 17.5542, 4.69898, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4347.15, -2687.29, -29.8756, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4350.44, -2670.67, -28.8638, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61450, 994, 5976, 5976, 2, 1, 0, 0, -4193.63, -2649.71, 17.5542, 1.64865, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4349.99, -2674.87, -29.4944, 0.242027, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4347.14, -2687.29, -29.8807, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4350.01, -2674.88, -29.4862, 0.242027, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 5976, 5976, 2, 1, 0, 0, -4072.72, -2620.28, 22.3469, 1.43178, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4349.48, -2683.61, -30.1401, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 5976, 5976, 2, 1, 0, 0, -4069.59, -2616.38, 22.3469, 1.61857, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4350.22, -2679.21, -29.684, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61444, 994, 5976, 5976, 2, 1, 0, 0, -4257.59, -2613.57, 17.5542, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 33088, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61551, 994, 5976, 5976, 2, 1, 0, 0, -4149.53, -2647.04, 22.672, 3.1838, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61551, 994, 5976, 5976, 2, 1, 0, 0, -4149.49, -2652.47, 22.6655, 3.14338, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 64548, 994, 5976, 5976, 2, 1, 0, 0, -4141.92, -2658.39, 22.4086, 1.66539, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 64548, 994, 5976, 5976, 2, 1, 0, 0, -4138.24, -2658.29, 22.4086, 1.66539, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61549, 994, 5976, 5976, 2, 1, 0, 0, -4149.43, -2574.39, 22.6652, 3.1636, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61549, 994, 5976, 5976, 2, 1, 0, 0, -4149.27, -2580.14, 22.6719, 3.12871, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 64547, 994, 5976, 5976, 2, 1, 0, 0, -4137.59, -2569.68, 22.4086, 4.79689, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 64547, 994, 5976, 5976, 2, 1, 0, 0, -4141.5, -2569.78, 22.4086, 4.79689, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4349.25, -2683.55, -30.1727, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4350.17, -2679.19, -29.6918, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61945, 994, 5976, 5976, 2, 1, 0, 0, -4131.49, -2609.17, 22.3253, 4.16653, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61947, 994, 5976, 5976, 2, 1, 0, 0, -4144.61, -2606.43, 22.4086, 5.88009, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61947, 994, 5976, 5976, 2, 1, 0, 0, -4145.11, -2621.18, 22.4086, 0.216423, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61946, 994, 5976, 5976, 2, 1, 0, 0, -4145.82, -2613.66, 22.4086, 0.0121579, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61945, 994, 5976, 5976, 2, 1, 0, 0, -4139.4, -2613.65, 22.3253, 1.54908, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 64548, 994, 5976, 5976, 2, 1, 0, 0, -4134.31, -2658.2, 22.4086, 1.66539, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 64547, 994, 5976, 5976, 2, 1, 0, 0, -4133.88, -2569.67, 22.4086, 4.79689, 7200, 0, 0, 1, 0, 0, 0, 0, 33024, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61445, 994, 5976, 5976, 2, 1, 0, 0, -4215.88, -2644.21, 17.5542, 1.57698, 7200, 0, 0, 1, 0, 0, 0, 0, 33088, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61442, 994, 5976, 5976, 2, 1, 0, 0, -4215.97, -2583.26, 17.5542, 4.67699, 7200, 0, 0, 1, 0, 0, 0, 0, 33088, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4350.38, -2670.64, -28.8671, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4347.1, -2687.28, -29.906, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4350.43, -2670.66, -28.864, 0.363867, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4347.03, -2687.26, -29.9522, 0.235484, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4351.33, -2675.2, -29.1645, 0.242102, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4349.84, -2674.83, -29.5614, 0.242027, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4349.29, -2683.56, -30.1676, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61945, 994, 5976, 5976, 2, 1, 0, 0, -3971.95, -2704.66, 26.8819, 0.0211497, 7200, 0, 0, 1, 0, 0, 0, 0, 559168, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4349.29, -2683.56, -30.1682, 0.273034, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 43499, 994, 5976, 5976, 2, 1, 0, 0, -3995.62, -2601.29, 22.3469, 4.82016, 7200, 0, 0, 1, 0, 0, 16777216, 0, 33554440, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4351.31, -2679.55, -29.5174, 0.303887, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4339.09, -2674.84, -37.6256, 0.391244, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61947, 994, 5976, 5976, 2, 1, 0, 0, -4074.59, -2604.17, 22.6369, 5.88009, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61947, 994, 5976, 5976, 2, 1, 0, 0, -4073.94, -2624, 22.6369, 0.452323, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61946, 994, 5976, 5976, 2, 1, 0, 0, -4075.58, -2613.77, 22.4302, 0.0121579, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61945, 994, 5976, 5976, 2, 1, 0, 0, -4063.41, -2609.02, 22.3469, 2.72501, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4335.07, -2664.92, -40.361, 0.341059, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4331.08, -2663.5, -41.8853, 0.341074, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4339, -2684.4, -35.9127, 0.363828, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4320.95, -2681.46, -46.9296, 6.16344, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61431, 994, 5976, 5976, 2, 1, 0, 0, -4319.26, -2736.48, -58.1847, 0.513749, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4334.14, -2668.75, -40.9702, 0.316771, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4330.37, -2676.61, -42.8392, 0.358478, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4331.12, -2667.76, -42.253, 0.316624, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61945, 994, 5976, 5976, 2, 1, 0, 0, -3952.23, -2668.05, 25.1033, 1.40371, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61945, 994, 5976, 5976, 2, 1, 0, 0, -3975.82, -2676.73, 26.7735, 3.16539, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61946, 994, 5976, 5976, 2, 1, 0, 0, -3976.52, -2678.58, 26.9148, 6.258, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61947, 994, 5976, 5976, 2, 1, 0, 0, -3962.67, -2676.02, 26.9585, 3.47349, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61947, 994, 5976, 5976, 2, 1, 0, 0, -3976.56, -2685.25, 27.0563, 5.05174, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61946, 994, 5976, 5976, 2, 1, 0, 0, -3961.93, -2684.34, 27.0553, 4.08949, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 5976, 5976, 2, 1, 0, 0, -4336.45, -2678.89, -39.1353, 0.358503, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61946, 994, 5976, 5976, 2, 1, 0, 0, -3986.16, -2647.5, 22.4302, 0.652029, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61946, 994, 5976, 5976, 2, 1, 0, 0, -3946.4, -2647.43, 22.4302, 2.46016, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 5976, 5976, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 64432, 994, 6182, 6182, 2, 1, 0, 0, -3964.37, -2539.99, 27.8862, 4.6467, 7200, 0, 0, 1, 0, 0, 3, 0, 536904448, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61945, 994, 6182, 6470, 2, 1, 0, 0, -3965.78, -2616.86, 22.6369, 4.37129, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61947, 994, 6182, 6470, 2, 1, 0, 0, -3970.34, -2617.73, 22.5625, 4.74532, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61945, 994, 6182, 6470, 2, 1, 0, 0, -3925.55, -2609.69, 22.4302, 4.4625, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61947, 994, 6182, 6470, 2, 1, 0, 0, -3948.94, -2628.95, 22.4302, 3.9263, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.76547, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.37, -2462.37, -15.5002, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61431, 994, 6182, 6472, 2, 1, 0, 0, -4235.52, -2756.72, -70.7082, 4.13845, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.26, -2465.59, -22.8589, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4283.83, -2462.02, -23.7013, 4.6427, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4338.4, -2674.56, -38.1637, 0.391244, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4337.23, -2669.76, -38.8733, 0.316575, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4337.6, -2679.32, -38.1861, 0.358503, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61947, 994, 6182, 6470, 2, 1, 0, 0, -3957.89, -2641.95, 22.4302, 0.613943, 7200, 0, 0, 1, 0, 0, 0, 0, 559168, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61945, 994, 6182, 6470, 2, 1, 0, 0, -3989.64, -2636.5, 22.3469, 3.12259, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4337.54, -2665.79, -38.4215, 0.341059, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4336.92, -2665.57, -38.9086, 0.341059, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.11, -2464.14, -22.4309, 4.59973, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4339.7, -2680.1, -36.738, 0.358487, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4339.81, -2670.85, -36.8512, 0.404212, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4278.88, -2465.6, -15.956, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.09, -2464.47, -21.0368, 4.91095, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4323.34, -2681.17, -45.7208, 6.16344, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4321.44, -2681.4, -46.6808, 6.16344, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4286.85, -2463.01, -24.3661, 4.77675, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.77, -2462.02, -24.819, 4.63281, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61946, 994, 6182, 6470, 2, 1, 0, 0, -3945.3, -2594.22, 22.4302, 2.69662, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61946, 994, 6182, 6470, 2, 1, 0, 0, -3997.01, -2608.52, 22.4302, 5.70961, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61947, 994, 6182, 6470, 2, 1, 0, 0, -3996.4, -2618.64, 22.4302, 0.265104, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4287.08, -2464.93, -18.6504, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61432, 994, 6182, 6472, 2, 1, 0, 0, -4339.36, -2674.96, -37.4131, 0.391244, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61945, 994, 6182, 6470, 2, 1, 0, 0, -3925.44, -2616.66, 22.4302, 1.4415, 7200, 0, 0, 1, 0, 0, 0, 0, 559168, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61945, 994, 6182, 6470, 2, 1, 0, 0, -3943.5, -2579.48, 22.4302, 3.15468, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4281.17, -2462.02, -20.5909, 4.55777, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.3, -2462.02, -16.0358, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61946, 994, 6182, 6470, 2, 1, 0, 0, -3935.99, -2617.13, 22.4302, 2.75983, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61947, 994, 6182, 6470, 2, 1, 0, 0, -3935.85, -2609.39, 22.4302, 3.15135, 7200, 0, 0, 1, 0, 0, 0, 0, 32832, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4282.88, -2466.77, -17.3519, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4279.57, -2462.03, -23.0858, 4.71402, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61431, 994, 6182, 6472, 2, 1, 0, 0, -4313.13, -2644.75, -47.7776, 5.10602, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4285.62, -2464.62, -17.4872, 4.96099, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61431, 994, 6182, 6472, 2, 1, 0, 0, -4315.35, -2689.23, -42.0546, 0.957337, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 61415, 994, 6182, 6472, 2, 1, 0, 0, -4280.47, -2462.02, -19.0204, 4.71882, 7200, 0, 0, 1, 0, 0, 0, 0, 32768, 0, 0);
   
INSERT INTO creature
   (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`)
VALUES
   (0, 64250, 994, 6182, 6471, 3, 128, 0, 0, -4214.22, -2667.32, 21.0838, 1.53953, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);


UPDATE creature SET `spawnMask` = 3 WHERE `map` = 994;
DELETE FROM creature WHERE id = 61415; -- Get rid of cave bats

REPLACE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`)
    VALUES
(61884, 0, 0, "Useless, all of you! Even the guards you give me in tribute can't keep these lesser beings from my palace.", 14, 0, 0, 15, 0, 28353, "Trial of the King intro #1"),
(61884, 1, 0, "Redeem, nay, PROVE yourselves now. Deal with these intruders. The clan who brings me their heads will have my favor!", 14, 0, 0, 14, 0, 28354, "Trial of the King intro #2"),
(61442, 0, 0, "Clan Gurthan will show our King and the rest of you power-hungry imposters why we are the rightful ones at his side!", 14, 0, 0, 15, 0, 27932, "Kuai the Brute intro"),
(61442, 1, 0, "We will never surrender our right to rule the destiny of our people!", 14, 0, 0, 0, 0, 27933, "Kuai retire"),
(61442, 2, 0, "The glory of Gurthan!", 14, 0, 0, 0, 0, 27942, "Kuai kill target"),
(61442, 3, 0, "Who allowed these outsiders inside our halls? Only Clan Harthak or Clan Kargesh would stoop to such treachery!", 14, 0, 0, 0, 0, 27940, "Kuai postcombat #1"),
(61442, 4, 0, "A well-scripted exchange; but we are not fooled. Your clans are clearly in league with one another. For the glory of our king, our empire, we will put you all down!", 14, 0, 0, 0, 0, 27941, "Kuai postcombat #2"),
(61442, 5, 0, "We are the greatest!", 14, 0, 50, 0, 0, 27934, "Kuai idle #1"),
(61442, 5, 1, "These other clans are nothing!", 14, 0, 50, 0, 0, 27935, "Kuai idle #2"),
(61444, 0, 0, "Clan Harthak will show all why they are the truest of mogu!", 14, 0, 0, 15, 0, 27947, "Ming the Cunning intro"),
(61444, 1, 0, "Our clan is the true clan! No interloper can change that!", 14, 0, 0, 0, 0, 27948, "Ming retire"),
(61444, 2, 0, "This is the might of Harthak.", 14, 0, 0, 0, 0, 27957, "Ming kill target"),
(61444, 3, 0, "Only the dogs of Clan Gurthan would point fingers at others for their own failures! Your clan is the most desperate. It must've been you!", 14, 0, 0, 0, 0, 27955, "Ming postcombat #1"),
(61444, 4, 0, "Our clan holds true to the ways set forth by the ancients. We deserve the king's favor above all others!", 14, 0, 50, 0, 0, 27950, "Ming idle #1"),
(61444, 4, 1, "These other clans aren't worthy of your time, great king!", 14, 0, 50, 0, 0, 27949, "Ming idle #2"),
(61445, 0, 0, "Clan Kargesh will demonstrate why only the strong deserve to stand at our King's side!", 14, 0, 0, 15, 0, 28246, "Haiyan the Unstoppable intro"),
(61445, 1, 0, "Impossible! Our might is the greatest in all the empire!", 14, 0, 0, 0, 0, 28247, "Haiyan retire"),
(61445, 2, 0, "For Kargesh!", 14, 0, 0, 0, 0, 28256, "Haiyan kill target"),
(61445, 3, 0, "Clan Gurthan is right! Only the honorless Clan Harthak could bring in a lesser race to do their bidding. You must be traitors!", 14, 0, 0, 0, 0, 28254, "Haiyan postcombat #1"),
(61445, 4, 0, "The mogu cannot reclaim our rightful glory without our clan's strength!", 14, 0, 50, 0, 0, 28248, "Haiyan idle #1"),
(61445, 4, 1, "These pathetic clans are beneath you, my king. They sully the great legacy of our people!", 14, 0, 50, 0, 0, 28249, "Haiyan idle #2"),
(64243, 0, 0, "A Saurok runs down a hidden set of stairs with some of the treasure!", 41, 0, 0, 0, 0, 0, "Glintrok emote"),
(61447, 0, 0, 'The fight is THAT way, $r.', 12, 0, 35, 0, 0, 0, "Grunt poke"),
(61449, 0, 0, 'The fight is THAT way, $r.', 12, 0, 35, 0, 0, 0, "Grunt poke"),
(61450, 0, 0, 'The fight is THAT way, $r.', 12, 0, 35, 0, 0, 0, "Grunt poke"),
(61551, 0, 0, 'The fight is THAT way, $r.', 12, 0, 35, 0, 0, 0, "Grunt poke"),
(61550, 0, 0, 'The fight is THAT way, $r.', 12, 0, 35, 0, 0, 0, "Grunt poke"),
(61549, 0, 0, 'The fight is THAT way, $r.', 12, 0, 35, 0, 0, 0, "Grunt poke"),
(61399, 0, 0, "The Glintrok Scout shouts a warning!", 41, 0, 0, 0, 0, 0, "Glintrok scout warning"),
(61243, 0, 0, "I hear something...", 14, 0, 0, 0, 0, 32495, "Gekkan intro"),
(61243, 1, 0, "Search his corpse!", 14, 0, 0, 0, 0, 32496, "Gekkan kill target"),
(61243, 2, 0, "Slay them!", 14, 0, 0, 0, 0, 32497, "Gekkan spell cast"),
(61243, 3, 0, "Stop them!", 14, 0, 0, 0, 0, 32488, "Gekkan aggro"),
(61243, 4, 0, "Such a waste...", 14, 0, 0, 0, 0, 32494, "Gekkan death"),
(61445, 5, 0, '|TInterface\\Icons\\spell_fire_fireball.blp:20|tHaiyan the Unstoppable begins casting |cFFFF0000|Hspell:120167|h[Conflagrate]|h|r!', 41, 0, 100, 15, 0, 0,  'Haiyan the Unstoppable'),
(61445, 6, 0, '|TInterface\\Icons\\spell_fire_meteorstorm.blp:20|tHaiyan the Unstoppable targets |cFFFF0000%t|r with a |cFFFF0000|Hspell:120195|h[Meteor]|h|r!', 41, 0, 100, 15, 0, 0, 'Haiyan the Unstoppable to Player'),
(61442, 6, 0, '|TInterface\\Icons\\spell_shaman_earthquake.blp:20|tKuai the Brute uses his |cFFFF0000|Hspell:119922|h[Shockwave]|h|r ability!', 41, 0, 100, 15, 0, 0,'Kuai the Brute'),
(61444, 5, 0, '|TInterface\\Icons\\inv_elemental_primal_air.blp:20|tMing the Cunning summons a |cFFFF0000|Hspell:119981|h[Whirling Dervish]|h|r!', 41, 0, 100, 15, 0, 0, 'Ming the Cunning'),
(61444, 6, 0, '|TInterface\\Icons\\spell_druid_ursolsvortex.blp:20|tMing the Cunning creates a |cFFFF0000|Hspell:120100|h[Magnetic Field]|h|r!', 41, 0, 100, 15, 0, 0, 'Ming the cunning magnetic field'),
(61398, 0, 0, 'What is this, more have come to claim my crown? They are small and weak.', 14, 0, 100, 0, 0, 28355, 'Xin the Weaponmaster'),
(61398, 1, 0, 'You are not the first to challenge me, peons. You will not be the last.', 14, 0, 100, 0, 0, 28349, 'Xin the Weaponmaster'),
(61398, 2, 0, 'Face the might of my arsenal, weaklings!', 14, 0, 100, 0, 0, 28350, 'Xin the Weaponmaster'),
(61398, 3, 0, '%s activates his |cFFFF0404|Hspell:119374|h[Whirlwinding Axe]|h|r trap!', 41, 0, 100, 0, 0, 28350, 'Xin the Weaponmaster'),
(61398, 4, 0, '%s activates his |cFFFF0404|Hspell:119311|h[Stream of Blades]|h|r trap!', 41, 0, 100, 0, 0, 28351, 'Xin the Weaponmaster'),
(61398, 5, 0, 'MY MIGHT IS ENDLESS!', 14, 0, 100, 0, 0, 28351, 'Xin the Weaponmaster'),
(61398, 6, 0, 'ENOUGH OF THIS FARCE! You will feel PAIN, cowards!', 14, 0, 100, 0, 0, 28360, 'Xin the Weaponmaster'),
(61398, 7, 0, '%s activates his |cFFFF0404|Hspell:120142|h[Crossbow]|h|r trap!', 41, 0, 100, 0, 0, 28360,'Xin the Weaponmaster'),
(61398, 8, 0, 'You call that... a fight...?', 14, 0, 100, 0, 0, 28352,  'Xin the Weaponmaster to Player'),
(61398, 9, 0, '%s spits blood in your face.', 16, 0, 100, 0, 0, 28352,'Xin the Weaponmaster to Player'),
(61398, 10, 0, "See how effortlessly I crush your bones!", 14, 0, 50, 0, 0, 28357, 'Xin slay #1'),
(61398, 10, 1, "Fall to your knees, coward!", 14, 0, 50, 0, 0, 28358, 'Xin slay #2'),
(61398, 11, 0, "Hahaha! I... AM... UNDEFEATED!", 14, 0, 100, 0, 0, 28356, 'Xin reset'),
(63808, 0, 0, 'You see a brief glimmer along the east wall...', 16, 0, 100, 0, 0, 0,'Faintly Glowing Gem'),
(63808, 1, 0, 'You hear a faint clicking noise coming from the west...', 16, 0, 100, 0, 0, 0,'Faintly Glowing Gem');

REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`)
    VALUES
(120444, "spell_xin_mogu_jump_targeting"),
(120100, "spell_magnetic_field"),
(120102, "spell_magnetic_pull"),
(120118, "spell_magnetic_pull"),
(120119, "spell_magnetic_pull"),
(119922, "spell_shockwave_kuai"),
(120499, "spell_shockwave_targeting"),
(119982, "spell_whirling_dervish"),
(119994, "spell_whirling_dervish_knock"),
(120167, "spell_haiyan_conflagrate_targeting"),
(120165, "spell_haiyan_conflagrate_aura"),
(120194, "spell_haiyan_meteor_targeting"),
(119076, "spell_saurok_help_call"),
(124531, "spell_activate_blades"),
(124534, "spell_activate_blades"),
(124540, "spell_turn_off_blades"),
(119311, "spell_dart_damage"),
(119684, "spell_groundslam_xin"),
(120124, "spell_crossbow_xin");


UPDATE `spell_script_names` SET `ScriptName` = 'spell_dart' WHERE `spell_id` IN ( 119314, 119337, 123127, 123128, 124320, 124321);
UPDATE `spell_script_names` SET `ScriptName` = '' WHERE `spell_id` IN(119315, 123126);

UPDATE `creature_template` SET `ScriptName` = "npc_glintrok_scout" WHERE `entry` = 64243;
UPDATE `creature_template` SET `ScriptName` = "mob_whirling_dervish", faction_a = 14, faction_h = 14, speed_run = 1.5 WHERE `entry` = 61626;
UPDATE `creature_template` SET `ScriptName` = "npc_glintrok_scout_2" WHERE `entry` = 61399;
UPDATE `creature_template` SET `ScriptName` = "npc_fire_ring_trigger", speed_walk = 0.75, speed_run = 0.75, speed_fly = 0.75 WHERE `entry` = 61499;
UPDATE `creature_template` SET `ScriptName` = "npc_animated_axe" WHERE `entry` = 61451;


UPDATE `creature_template` SET `ScriptName` = "mob_adepts" WHERE `entry` IN (61551, 61550, 61549);
UPDATE `creature_template` SET `faction_h` = 1339, `faction_a` = 1339 WHERE entry IN (61550, 61449);
UPDATE `creature_template` SET `faction_h` = 1338, `faction_a` = 1338 WHERE entry IN (61549, 61447);
UPDATE `creature_template` SET `faction_h` = 1340, `faction_a` = 1340 WHERE entry IN (61551, 61450);

-- This fucks up the visual massively. Handled in script instead
DELETE FROM `creature_template_aura` WHERE `entry` IN (61242, 61451, 61679, 61433);
DELETE FROM `creature_template_bytes` WHERE `entry` IN (61242, 61451, 61679, 61433);
DELETE FROM `creature_template_emote` WHERE `entry` IN (61242, 61451, 61679, 61433);
DELETE FROM `creature_template_mount` WHERE `entry` IN (61242, 61451, 61679, 61433);
DELETE FROM `creature_template_path` WHERE `entry` IN (61242, 61451, 61679, 61433);

DELETE FROM `gameobject_template` WHERE `entry` IN (214520);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `size`, `unkInt32`, `WDBVerified`) VALUES
(214520, 3, 10314, 'Legacy of the Clan Leaders', '', '', '', 1634, 42825, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 89, 0, 0, 0, 0, 1442, 0, 0, 0, 0, 0, 0, 2, 0, 18291); -- 214520

DELETE FROM `gameobject` WHERE `map` = 994;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 214885, 994, 3, 1,  -3969.458, -2525.845, 29.84489, 1.570796, 0, 0, 0, 1, 7200, 255, 1), -- 214885 (Area: -1)
(@OGUID+33, 214651, 994, 3, 1,  -4454.702, -2597.723, -22.85888, 6.088939, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214651 (Area: 6182)
(@OGUID+34, 214653, 994, 3, 1,  -4454.697, -2617.669, -22.85705, 0.1974489, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214653 (Area: 6182)
(@OGUID+35, 214654, 994, 3, 1,  -4397.967, -2566.894, -47.56514, 4.71239, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214654 (Area: 6182)
(@OGUID+36, 214659, 994, 3, 1,  -4422.415, -2689.409, -35.79026, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 0), -- 214659 (Area: 6182)
(@OGUID+37, 214665, 994, 3, 1,  -4358.464, -2617.603, -47.56514, 2.879789, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214665 (Area: 6182)
(@OGUID+38, 214649, 994, 3, 1,  -4438.73, -2566.884, -22.85888, 5.510429, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214649 (Area: 6182)
(@OGUID+39, 214648, 994, 3, 1,  -4431.063, -2560.484, -22.85888, 5.307964, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214648 (Area: 6182)
(@OGUID+40, 214667, 994, 3, 1,  -4350.717, -2574.615, -22.88646, 3.733432, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214667 (Area: 6182)
(@OGUID+41, 213666, 994, 3, 1,  -4399.364, -2545.793, 22.43243, 3.141593, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 213666 (Area: 6182)
(@OGUID+42, 213665, 994, 3, 1,  -4399.364, -2682.025, 22.43243, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 0), -- 213665 (Area: 6182)
(@OGUID+43, 214650, 994, 3, 1,  -4445.101, -2574.653, -22.85888, 5.699661, 0, 0, 1, -4.371139E-08, 7200, 255, 0), -- 214650 (Area: 6182)
(@OGUID+44, 214656, 994, 3, 1,  -4387.971, -2568.176, -47.56514, 4.450591, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214656 (Area: 6182)
(@OGUID+45, 212162, 994, 3, 1,  -4399.338, -2751.365, 21.66621, 3.141593, 0, 0, 1, -4.371139E-08, 7200, 255, 24), -- 0 (Area: 6182)
(@OGUID+46, 214663, 994, 3, 1,  -4358.459, -2597.74, -47.56514, 3.403396, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214663 (Area: 6182)
(@OGUID+47, 214671, 994, 3, 1,  -4341.184, -2597.722, -22.85705, 3.339045, 0, 0, 1, -4.371139E-08, 7200, 255, 0), -- 214671 (Area: 6182)
(@OGUID+48, 214661, 994, 3, 1,  -4438.776, -2607.693, -47.56514, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214661 (Area: 6182)
(@OGUID+49, 214670, 994, 3, 1,  -4340.238, -2607.725, -22.85888, 3.149879, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214670 (Area: 6182)
(@OGUID+50, 213593, 994, 3, 1,  -4330.956, -2613.631, 22.43243, 4.71239, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 213593 (Area: 6182)
(@OGUID+51, 214668, 994, 3, 1,  -4364.865, -2560.571, -22.88622, 4.120571, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214668 (Area: 6182)
(@OGUID+52, 214669, 994, 3, 1,  -4341.179, -2617.668, -22.85888, 2.94734, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214669 (Area: 6182)
(@OGUID+53, 214662, 994, 3, 1,  -4437.495, -2597.697, -47.56514, 6.021387, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214662 (Area: 6182)
(@OGUID+54, 214655, 994, 3, 1,  -4407.834, -2568.171, -47.56514, 4.97419, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214655 (Area: 6182)
(@OGUID+55, 214658, 994, 3, 1,  -4422.454, -2679.412, -35.79026, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214658 (Area: 6182)
(@OGUID+56, 214666, 994, 3, 1,  -4357.111, -2566.905, -22.8862, 3.927001, 0, 0, 1, -4.371139E-08, 7200, 255, 0), -- 214666 (Area: 6182)
(@OGUID+57, 214664, 994, 3, 1,  -4357.182, -2607.607, -47.56514, 3.141593, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214664 (Area: 6182)
(@OGUID+58, 214657, 994, 3, 1,  -4422.493, -2669.415, -35.79026, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214657 (Area: 6182)
(@OGUID+59, 214660, 994, 3, 1,  -4437.5, -2617.561, -47.56514, 0.2617982, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 214660 (Area: 6182)
(@OGUID+60, 214652, 994, 3, 1,  -4455.642, -2607.667, -22.85888, 0.008218788, 0, 0, 1, -4.371139E-08, 7200, 255, 0), -- 214652 (Area: 6182)
(@OGUID+61, 213595, 994, 3, 1,  -4467.346, -2613.631, 22.43243, 4.71239, 0, 0, 1, -4.371139E-08, 7200, 255, 0), -- 213595 (Area: 6182)
(@OGUID+62, 213596, 994, 3, 1,  -4551.296, -2613.631, 22.43243, 4.71239, 0, 0, 1, -4.371139E-08, 7200, 255, 0), -- 213596 (Area: 6182)
(@OGUID+63, 214520, 994, 3, 1,  -4214.333, -2667.092, 17.56536, 1.579866, 0, 0, 0, 1, -1, 255, 1), -- 214520 (Area: 6182)
(@OGUID+64, 214813, 994, 3, 1,  -4346.944, -2572.005, -26.30972, 0, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+65, 214813, 994, 3, 1,  -4363.514, -2555.972, -26.30952, 4.503603, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+66, 214813, 994, 3, 1,  -4355.655, -2562.503, -26.30939, 0, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+67, 214824, 994, 3, 1,  -4355.29, -2565.372, -26.30947, 3.89254, 0, 0, 0, 1, 7200, 255, 1), -- 214824 (Area: 6182)
(@OGUID+68, 214813, 994, 3, 1,  -4353.514, -2594.396, -50.98844, 0, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+69, 214825, 994, 3, 1,  -4338.668, -2596.776, -26.28032, 3.669797, 0, 0, 0, 1, 7200, 255, 1), -- 214825 (Area: 6182)
(@OGUID+70, 214813, 994, 3, 1,  -4338.234, -2599.085, -26.2803, 0, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+71, 214813, 994, 3, 1,  -4335.474, -2605.899, -26.28221, 0, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+72, 214795, 994, 3, 1,  -4397.854, -2563.38, -50.98839, 4.912416, 0, 0, 0, 1, 7200, 255, 1), -- 214795 (Area: 6182)
(@OGUID+73, 214813, 994, 3, 1,  -4431.651, -2557.674, -26.28219, 3.49909, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+74, 214813, 994, 3, 1,  -4353.462, -2609.571, -50.98838, 0, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+75, 214813, 994, 3, 1,  -4335.962, -2620.462, -26.28218, 0, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+76, 214813, 994, 3, 1,  -4354.045, -2620.134, -50.98848, 2.952867, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+77, 214813, 994, 3, 1,  -4439.399, -2595.658, -50.98842, 0, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+78, 214813, 994, 3, 1,  -4457.221, -2595.406, -26.28219, 4.174795, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+79, 214813, 994, 3, 1,  -4447.696, -2575.248, -26.28222, 0, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+80, 214813, 994, 3, 1,  -4441.835, -2562.323, -26.2822, 5.195085, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+81, 214826, 994, 3, 1,  -4447.007, -2572.092, -26.2822, 5.364257, 0, 0, 0, 1, 7200, 255, 1), -- 214826 (Area: 6182)
(@OGUID+82, 214813, 994, 3, 1,  -4457.785, -2619.84, -26.28028, 5.752428, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+83, 214813, 994, 3, 1,  -4439.349, -2619.438, -50.98843, 1.462075, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+84, 214813, 994, 3, 1,  -4443.719, -2607.325, -50.98841, 5.610421, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+85, 214813, 994, 3, 1,  -4460.726, -2605.934, -26.2821, 5.546761, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+86, 214813, 994, 3, 1,  -4427.783, -2668.776, -39.21357, 0.5710833, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+87, 212095, 994, 3, 1,  -4509.806, -2541.837, 32.05217, 4.699707, 0, 0, 0, 1, 7200, 255, 1), -- 212095 (Area: 6182)
(@OGUID+88, 214813, 994, 3, 1,  -4426.816, -2680.549, -39.21353, 6.005708, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+89, 214813, 994, 3, 1,  -4424.306, -2687.247, -39.21358, 4.704598, 0, 0, 0, 1, 7200, 255, 1), -- 214813 (Area: 6182)
(@OGUID+90, 214827, 994, 3, 1,  -4425.082, -2690.228, -39.21357, 0.1699049, 0, 0, 0, 1, 7200, 255, 1), -- 214827 (Area: 6182)
(@OGUID+91, 212095, 994, 3, 1,  -4509.656, -2687.172, 31.96922, 1.567914, 0, 0, 0, 1, 7200, 255, 1); -- 212095 (Area: 6182)

