-- [SQL] General - All portal factions and spawns corrected (Feedback #1551)
UPDATE `gameobject_template` SET `faction` = '1735' WHERE `faction` = '0' AND `type` = '22' AND `name` LIKE '%portal%%orgrimmar%';
UPDATE `gameobject_template` SET `faction` = '1735' WHERE `faction` = '0' AND `type` = '22' AND `name` LIKE '%portal%%undercity%';
UPDATE `gameobject_template` SET `faction` = '1735' WHERE `faction` = '0' AND `type` = '22' AND `name` LIKE '%portal%%bluff%';
UPDATE `gameobject_template` SET `faction` = '1735' WHERE `faction` = '0' AND `type` = '22' AND `name` LIKE '%portal%%silvermoon%';
UPDATE `gameobject_template` SET `faction` = '1735' WHERE `faction` = '0' AND `type` = '22' AND `name` LIKE '%horde%%portal%';
UPDATE `gameobject_template` SET `faction` = '1732' WHERE `faction` = '0' AND `type` = '22' AND `name` LIKE '%portal%%stormwind%';
UPDATE `gameobject_template` SET `faction` = '1732' WHERE `faction` = '0' AND `type` = '22' AND `name` LIKE '%portal%%darnassus%';
UPDATE `gameobject_template` SET `faction` = '1732' WHERE `faction` = '0' AND `type` = '22' AND `name` LIKE '%portal%%ironforge%';
UPDATE `gameobject_template` SET `faction` = '1732' WHERE `faction` = '0' AND `type` = '22' AND `name` LIKE '%portal%%exodar%';
UPDATE `gameobject_template` SET `faction` = '1732' WHERE `faction` = '0' AND `type` = '22' AND `name` LIKE '%alliance%%portal%';
-- Portal to Deepholm
DELETE FROM `gameobject` WHERE `id`=207689;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(259822, 207689, 1, 1, 1, 2065.89, -4389.24, 98.0624, 2.69924, 0, 0, 0.97564, 0.219379, 60, 100, 1),
(259833, 207689, 0, 1, 1, -8223.71, 451.185, 117.486, 5.38957, 0, 0, 0.432088, -0.901832, 60, 100, 1);
-- Portal to Blasted Lands
DELETE FROM `gameobject` WHERE `id`=195142;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(82318, 195142, 530, 1, 1, 9984.3, -7107.59, 47.7048, 6.21199, 0, 0, 0.293205, 0.95605, 60, 100, 1),
(73592, 195142, 1, 1, 1, 1685.18, -4123.42, 66.3376, -1.22173, 0, 0, 0, 1, 60, 100, 1),
(73531, 195142, 1, 1, 1, 1768.45, -4325.86, -8.3711, 5.567601, 0, 0, -0.3502073, 0.9366722, 60, 100, 1),
(70308, 195142, 0, 1, 1, 1768.77, 55.3698, -46.3194, 0, 0, 0, 0, 1, 60, 100, 1),
(48118, 195142, 1, 1, 1, -944.064, 274.859, 111.71, 0, 0, 0, 0, 1, 60, 100, 1),
(151162, 195142, 530, 1, 1, 3850.76, 3426.56, 94.2469, 5.84536, 0, 0, 0.217171, -0.976134, 60, 100, 1);
-- Portal to Mount Hyjal
DELETE FROM `gameobject` WHERE `id` IN (203135, 207688, 207692);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(255639, 203135, 1, 1, 1, 4013.77, -3007.88, 575.39, 2.91585, 0, 0, 0, 1, 60, 100, 1),
(50006, 207688, 1, 1, 1, 2043.38, -4395.57, 98.0548, 0.805377, 0, 0, 0.391893, 0.920011, 60, 100, 1),
(50004, 207692, 0, 1, 1, -8211.2, 400.123, 117.301, 0.96779, 0, 0, 0.46523, 0.88519, 60, 100, 1);
-- Portal to Vashj'ir
DELETE FROM `gameobject` WHERE `id` IN (207690, 207691);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(50003, 207691, 0, 1, 1, -8190.3, 450.407, 116.853, 3.90125, 0, 0, 0.928729, -0.37076, 60, 100, 1),
(50005, 207690, 1, 1, 1, 2062.98, -4362.23, 98.0595, 3.7844, 0, 0, 0.948793, -0.315898, 60, 100, 1);
DELETE FROM `spell_target_position` WHERE `id` IN (65729,76598,94565,85040,76638,76639,76640);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(65729,0,-11795.8,-3172.99,-30.0626,4.32218),
(76598,1,5532.49,-3622.48,1567.36,0), -- Mount Hyjal
(94565,1,5532.49,-3622.48,1567.36,0),
(85040,0,-5310.85,3914.42,3.224,0), -- Vashj'ir
(76638,0,-5310.85,3914.42,3.224,0), -- [PH] Vashj'ir Alliance
(76639,0,-5671.02,3720.07,1.915,0), -- [PH] Vashj'ir Horde
(76640,0,-5310.85,3914.42,3.224,0); -- [PH] Vashj'ir Alliance port
-- Portal to the Maelstrom
UPDATE `gameobject_template` SET `data0` = 84463, `faction` = 35, `WDBVerified` = 15595 WHERE `entry` = 205268;
DELETE FROM `spell_script_names` WHERE `spell_id` = 84463;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(84463, 'spell_gen_maelstrom_portal');
DELETE FROM `spell_target_position` WHERE `id` = 84464;
INSERT INTO `spell_target_position` (`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(84464, 0, 730, 854, 1084, -13, 5);
DELETE FROM `gameobject` WHERE `id` = 205268;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(211863, 205268, 1, 1, 1, 2039.47, -4382.77, 99.079, 0.546574, 0, 0, 0.269898, 0.962889, 60, 100, 1),
(211867, 205268, 530, 1, 1, 3834.54, 3430.02, 88.5304, 5.6922, 0, 0, 0.29121, -0.956659, 60, 100, 1),
(259834, 205268, 0, 1, 1, -8208.58, 428.778, 118.094, 3.23116, 0, 0, 0.998997, -0.0447675, 60, 100, 1);
-- Portal to Uldum
DELETE FROM `gameobject` WHERE `id` IN (207695, 207687, 402328, 402329, 402330);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(50010, 207687, 0, 1, 1, -8234.69, 414.93, 117.563, 0.65363, 0, 0, 0.321028, 0.94707, 60, 100, 1),
(259824, 207687, 1, 1, 1, 2039.13, -4355.87, 98.0655, 5.15492, 0, 0, 0.534684, -0.845052, 60, 100, 1);
-- Portal to Twilight Highlands
DELETE FROM `gameobject` WHERE `id` IN (207694, 207686);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(50012, 207694, 0, 1, 1, -8186.32, 414.165, 116.753, 2.34617, 0, 0, 0.921949, 0.387311, 60, 100, 1),
(259825, 207686, 1, 1, 1, 2029.41, -4379.81, 98.0534, 6.15001, 0, 0, 0.0665363, -0.997784, 60, 100, 1);
DELETE FROM `spell_target_position` WHERE `id` IN (82621,85545);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(82621,0,-4034.399902,-6313.779785,38.697399,4.973770), -- Orgrimmar Portal to Dragonmaw Port
(85545,0,-4163.930176,-4747.669922,127.842003,3.054560); -- Stormwind Portal to Victor's Point
-- Dalaran Portals
UPDATE `gameobject_template` SET `faction` = 1801 WHERE `entry` IN (191010, 191009);
UPDATE `gameobject_template` SET `faction` = 1802 WHERE `entry` = 190960;
-- Silvermoon
DELETE FROM `gameobject` WHERE `id`=191010;
-- Stormwind
DELETE FROM `gameobject` WHERE `id`=190960;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(212075, 190960, 571, 1, 1, 5719.05, 719.511, 641.727, 0.889084, 0, 0, 0.430044, 0.902808, 60, 0, 1);
DELETE FROM `gameobject` WHERE `id`=183325;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(24170, 183325, 530, 1, 1, -1792.78, 5406.54, -12.428, -0.314, 0, 0, 0.156434, -0.987688, 60, 100, 1);
DELETE FROM `gameobject` WHERE `id`=205272;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(61217, 205272, 646, 1, 1, 965.25, 577.229, -44.258, -0.873, 0, 0, -0.422618, 0.906308, 60, 100, 1),
(166717, 205272, 1, 1, 1, -9459.27, -974.283, 111.011, 0.014, 0, 0, 0.00704962, 0.999975, 60, 100, 1),
(173038, 205272, 870, 1, 65535, 828.041, 177.014, 519.936, 2.15774, 0, 0, 0.881424, 0.472325, 60, 100, 1),
(173068, 205272, 870, 1, 1, -311.655, -1776.63, 62.6705, 3.60311, 0, 0, 0, 1, 60, 100, 1),
(173071, 205272, 1, 1, 8, 4845.42, -2812.35, 1440.17, 5.88565, 0, 0, 0.197463, -0.98031, 60, 100, 1),
(524895, 205272, 1, 1, 8, 4878.77, -2795.11, 1435.34, 2.76525, 0, 0, 0.982348, 0.187064, 60, 100, 1),
(173900, 205272, 0, 1, 1, -4868.59, -4243.47, 827.763, 3.67306, 0, 0, 0.9649, -0.262619, 60, 100, 1),
(83, 205272, 638, 1, 1, -1438.39, 1409.88, 35.5562, 3.14867, 0, 0, 0.999994, -0.00353745, 60, 100, 1);
DELETE FROM `gameobject` WHERE `id`=195139;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`AreaID`) VALUES
(170, 195139, 530, 1, 1, -337.492, 962.619, 54.289, 0, 0, 0, 0, 0, 200, 0, 1, 0),
(189109, 195139, 732, 1, 1, -365.54, 1054.75, 21.952, 0.632, 0, 0, 0.31085, 0.950459, 3600, 0, 1, 0),
(189112, 195139, 571, 1, 65534, 5697.82, 744.735, 641.82, 2.598, 0, 0, 0.96332, 0.268357, 1, 0, 1, 0);
-- Orgrimmar
DELETE FROM `gameobject` WHERE `id`=191009;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(56568, 191009, 571, 1, 65535, 5925.52, 592.799, 640.594, 1.70942, 0, 0, 0.754382, 0.656435, 60, 100, 1);
DELETE FROM `gameobject` WHERE `id`=183323;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(24167, 183323, 530, 1, 1, -1934.49, 5453.48, -12.428, 0.017, 0, 0, 0.008727, 0.999962, 60, 100, 1);
UPDATE `gameobject_template` SET `data0` = 84506, `ScriptName` = '' WHERE `entry` = 205273;
UPDATE `gameobject_template` SET `data0` = 17609, `ScriptName` = '' WHERE `entry` = 209081;
UPDATE `gameobject_template` SET `data0` = 17609 WHERE `entry` = 193206; -- hack
UPDATE `gameobject_template` SET `data0` = 94724 WHERE `entry` = 205273; -- hack
DELETE FROM `gameobject` WHERE `id`=205273;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(171069, 205273, 648, 1, 65535, -8423.91, 1366.12, 104.676, 1.53938, 0, 0, 0.695912, 0.718127, 60, 100, 1),
(172129, 205273, 646, 1, 1, 991.218, 456.357, -44.2558, 4.38308, 0, 0, 0.813446, -0.581641, 60, 100, 1),
(173039, 205273, 1, 1, 8, 4846.94, -2808.91, 1440.58, 5.66966, 0, 0, 0.301973, -0.953316, 60, 100, 1),
(173069, 205273, 1, 1, 8, 4899.46, -2803.73, 1434.61, 6.05999, 0, 0, 0.111366, -0.993779, 60, 100, 1),
(173070, 205273, 0, 1, 1, -4899.74, -4258.75, 827.764, 0.535396, 0, 0, 0.264512, 0.964382, 60, 100, 1),
(173206, 205273, 1, 1, 16, 4913.83, -2734.48, 1488.43, 4.30606, 0, 0, 0.835237, -0.54989, 60, 100, 1),
(173894, 205273, 0, 1, 65535, 2066.84, 287.606, 97.0328, 1.82096, 0, 0, 0.789797, 0.613368, 60, 100, 1);
DELETE FROM `gameobject` WHERE `id`=195140;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(164, 195140, 530, 1, 1, -161.318, 965.41, 54.29, 0, 0, 0, 0, 0, 60, 100, 1),
(189108, 195140, 732, 1, 1, -601.014, 1386.42, 21.709, 3.912, 0, 0, 0.926713, -0.375771, 60, 100, 1),
(173286, 195140, 870, 1, 1, 2953.11, -519.714, 269.162, 1.85849, 0, 0, 0.801169, 0.598439, 60, 100, 1);
DELETE FROM `spell_target_position` WHERE `id` IN (17334, 121857, 17609, 121852, 84506);
INSERT INTO `spell_target_position` (`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(121857, 0, 0, -9003.46, 870.031, 29.6206, 2.28),
(121852, 0, 1, 2032.8, -4336.7, 95.8, 1.5),
(84506, 0, 1, 2049.2, -4376.8, 98.8446, 0.785398);
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_gen_tp_storm_orgri';
-- [SQL] General - Tol Barad portal will now require level 85
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` IN (88339, 88341);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 88339, 0, 0, 27, 0, 85, 3, 0, 0, 0, "", "Spell Portal Effect: Tol Barad requires level 85"),
(17, 0, 88341, 0, 0, 27, 0, 85, 3, 0, 0, 0, "", "Spell Portal Effect: Tol Barad requires level 85");

-- [SQL] General - Portal to Honeydew Village fixed (Feedback #5921)
DELETE FROM `spell_target_position` WHERE `id` IN (130696);
INSERT INTO `spell_target_position` (`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(130696, 0, 870, 2952.85, -514.627, 268.9057, 4.613788);


-- Cleanup
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);