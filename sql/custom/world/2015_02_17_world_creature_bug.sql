/* Kor'thik didn't react fix */
UPDATE `creature` SET `unit_flags` = 0, `dynamicflags` = 0 WHERE `id` IN (62756,62757,62758);
DELETE FROM `creature_template_aura` WHERE `entry` IN (62756,62757,62758) AND `aura` = 119073;

/* Kyparite now are targetable */
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 63007;

/* Spawn missing Muckscale Shallows fix */
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` = 63348;
DELETE FROM `creature` WHERE `id`=63348;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`,`protec_anti_doublet`) VALUES
(63348, 870, 0, 0, 1, 65535, 0, 0, -819.776, 4843.25, -24.0192, 6.24262, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -796.22, 4818.11, -22.4807, 5.21532, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -770.732, 4761.6, -20.2804, 5.20119, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -776.32, 4696.58, -20.1493, 5.18862, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -730.128, 4702.05, -20.4341, 0.0654696, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -696.724, 4696.09, -18.3265, 6.07141, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -642.092, 4693.42, -18.562, 0.354497, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -647.724, 4743.43, -20.0651, 1.64412, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -653.076, 4822.56, -33.573, 1.64412, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -668.467, 4863.66, -41.7445, 1.42971, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -595.763, 4833.3, -35.4726, 5.95517, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -569.362, 4836.79, -36.6969, 2.19076, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -594.636, 4722.37, -20.1599, 5.02448, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -848.522, 4664.14, -25.2159, 3.28796, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -935.116, 4730.4, -23.4279, 0.879928, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -870.753, 4766.26, -22.7404, 1.57265, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -899.549, 4858.04, -20.3656, 0.156576, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -817.762, 4766.57, -20.2201, 2.69184, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -685.528, 4723.32, -10.6336, 1.14696, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -572.218, 4779.38, -50.7408, 3.01857, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63348, 870, 0, 0, 1, 65535, 0, 0, -536.45, 4835.04, -39.8338, 6.05727, 300, 5, 0, 393941, 0, 1, 0, 0, 0, 0, 0, 0, null);

/* Sapfly wrong HP and AI missing Fix */
UPDATE `creature_template` SET `Health_mod` = 0.05, `AIName` = 'SmartAI' WHERE `entry` = 62386;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=62386 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(62386, 0, 0, 0, 0, 0, 100, 0, 100, 100, 1000, 2000, 11, 121602, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Sapfly - Cast Sapfly Bite");

/* Dreadspinner Tender wrong flags fix */
UPDATE `creature_template` SET `unit_flags` = 67141632, `dynamicflags` = 0, `type_flags` = 1 WHERE `entry` = 61981;
UPDATE `creature` SET `unit_flags` = 67141632, `dynamicflags` = 4 WHERE `id` = 61981;

/* Longfin Thresher spawn missing and spawntime fixing */
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` = 63944;
DELETE FROM `creature` WHERE `id`=63944;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`,`protec_anti_doublet`) VALUES
(63944, 870, 0, 0, 1, 1, 0, 0, -1102.31, 3776.33, -7.07545, 5.67528, 90, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63944, 870, 0, 0, 1, 1, 0, 0, -1162.3, 3746.03, -2.57644, 2.25258, 90, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63944, 870, 0, 0, 1, 1, 0, 0, -1114.65, 3651.8, -12.4936, 4.34472, 90, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63944, 870, 0, 0, 1, 1, 0, 0, -1031.25, 3659.42, -4.6112, 3.75999, 90, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63944, 870, 0, 0, 1, 1, 0, 0, -1110.59, 3561.75, -2.86008, 4.30298, 90, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, null),
(63944, 870, 6138, 6401, 1, 1, 0, 0, -1140.55, 3809.99, -2.57644, 0.24123, 90, 5, 0, 1, 0, 1, 0, 0, 32768, 0, 0, 0, null),
(63944, 870, 0, 0, 1, 65535, 0, 0, -1227.84, 3675.5, -33.1669, 4.30439, 90, 5, 0, 393941, 0, 1, 0, 0, 0, 2048, 0, 0, null),
(63944, 870, 0, 0, 1, 65535, 0, 0, -1287.05, 3774.9, -29.1228, 2.56081, 90, 5, 0, 393941, 0, 1, 0, 0, 0, 2048, 0, 0, null),
(63944, 870, 0, 0, 1, 65535, 0, 0, -1262.62, 3872.82, -30.611, 1.51623, 90, 5, 0, 393941, 0, 1, 0, 0, 0, 2048, 0, 0, null),
(63944, 870, 0, 0, 1, 65535, 0, 0, -1391.36, 3933.61, -27.1228, 2.30948, 90, 5, 0, 393941, 0, 1, 0, 0, 0, 2048, 0, 0, null),
(63944, 870, 0, 0, 1, 65535, 0, 0, -1414.68, 4055.88, -24.116, 1.78405, 90, 5, 0, 393941, 0, 1, 0, 0, 0, 2048, 0, 0, null),
(63944, 870, 0, 0, 1, 65535, 0, 0, -1420.29, 3783.22, -37.0683, 5.73146, 90, 5, 0, 393941, 0, 1, 0, 0, 0, 2048, 0, 0, null),
(63944, 870, 0, 0, 1, 65535, 0, 0, -1327.81, 3721.33, -26.664, 4.87224, 90, 5, 0, 393941, 0, 1, 0, 0, 0, 2048, 0, 0, null),
(63944, 870, 0, 0, 1, 65535, 0, 0, -1391.74, 3610.54, -36.6107, 4.33817, 90, 5, 0, 393941, 0, 1, 0, 0, 0, 2048, 0, 0, null),
(63944, 870, 0, 0, 1, 65535, 0, 0, -1270.16, 3585.67, -33.7722, 0.575325, 90, 5, 0, 393941, 0, 1, 0, 0, 0, 2048, 0, 0, null),
(63944, 870, 0, 0, 1, 65535, 0, 0, -1168.95, 3604.91, -15.1146, 1.83746, 90, 5, 0, 393941, 0, 1, 0, 0, 0, 2048, 0, 0, null);

/* Vor'thik Fear-Shaper wrong auras and flags fix */
UPDATE `creature` SET `unit_flags` = 32768 WHERE `id` = 62814;
DELETE FROM `creature_template_aura` WHERE `entry` = 62814 AND `aura` = 96733;

/* Krol the Blade spawntime offylike-arrangement */
DELETE FROM `creature` WHERE (`guid`=628177);
UPDATE `creature` SET `spawntimesecs` = 14400 WHERE `guid` = 624715;

/* Wrong Model_ID */
UPDATE `creature_template` SET `modelid1` = 47698, `modelid2` = 0 WHERE `entry` = 69593;

/* Wrong Respawntime - Wrong Spawn */
DELETE FROM `creature` WHERE `guid`=991877;
UPDATE `creature` SET `spawntimesecs` = 600 WHERE `id` IN (57389,60546,62522,62559,62844,63684,63685,63686,63693,63694,69946);
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `id` IN (35189,50051,54318,54319,54320);
UPDATE `creature` SET `spawntimesecs` = 36000 WHERE `id` = 38453;
UPDATE `creature` SET `spawntimesecs` = 21600 WHERE `id` = 50138;

/* Delete duplicate spawn */
DELETE FROM `creature` WHERE `guid` = 997503;

/* Leyara Attackable on Molten Front */
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` = 53366;

/* Adherent Hanjun missing spawn in Stormwind */
DELETE FROM `creature` WHERE `id`=69334;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`,`protec_anti_doublet`) VALUES
(69334, 0, 0, 0, 1, 65535, 0, 0, -8192.51, 541.891, 117.647, 4.8336, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0, null);

/* Sorcerer Mogu in MSV was not attackable */
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `ScriptName` = 'mob_sorcerer_mogu' WHERE `entry` = 61250;

/* Infernal Attack with wrong modelid now is targetable */
UPDATE `creature_template` SET `modelid2` = 0 WHERE `entry` IN (21419,21786);

/* Veneratus the Many wrong faction now is attackable */
UPDATE `creature_template` SET `faction_A` = 1813, `faction_H` = 1813 WHERE `entry` = 20427;

/* Keeper of the Cistern wrong spawntime was too high */
UPDATE `creature` SET `spawntimesecs` = 120 WHERE `id` = 20795;

/* Npc Korven the Prime (Quest Giver) wrong faction fix'd */
UPDATE `creature_template` SET `faction_A` = 2552, `faction_H` = 2552 WHERE `entry` = 62180;

/* NPCs wrong flags,models and other stuff */
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` IN (62517,62518,62519,62521,65396,65397,65398,65753,67160);
UPDATE `creature_template` SET `modelid1` = 11686, `modelid2` = 0, `InhabitType` = 4 WHERE `entry` = 65521;
UPDATE `creature_template` SET `unit_flags` = 524298, `ScriptName` = 'guard_generic' WHERE `entry` = 67160;
UPDATE `creature_template` SET `modelid1` = 11686, `modelid2` = 0 WHERE `entry` = 61982;

/* Kill Sapfly give no XP (Exploit for exping) */
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` = 62386;

/* Lon the Bull - Missing spawn added */
DELETE FROM `creature` WHERE `id`=50333;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(50333, 870, 0, 0, 1, 1, 0, 50333, 2560.92, 3260.01, 421.604, 5.89204, 64800, 0, 0, 2026194, 0, 0, 0, 0, 0, 0, 0, 0);

/* Wrong creature spawn */
DELETE FROM `creature` WHERE `id`=62248;

/* Taran Zhu missing spawn fixed */
DELETE FROM `creature` WHERE `id`=62736;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(62736, 870, 0, 0, 1, 1, 0, 0, 1365.83, 3584.46, 224.865, 4.57121, 10, 0, 0, 1680, 0, 0, 0, 0, 0, 2048, 0, 0);

/* Tai Ho now is spawned for finish the quest */
DELETE FROM `creature` WHERE `id`=61482;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(61482, 870, 5842, 6197, 1, 1, 0, 0, 1830.62, 4251.71, 148.873, 0.947268, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(61482, 870, 0, 0, 1, 65535, 0, 0, 2353.79, 4982.77, 68.2823, 1.88813, 300, 0, 0, 326966, 0, 0, 0, 0, 0, 2048, 0, 0);

/* Fear-Stricken Sentinel spawn missing fixed */
DELETE FROM `creature` WHERE `id`=62281;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(62281, 870, 0, 0, 1, 1, 0, 62281, 2200.7, 5160.88, 88.0633, 1.17895, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2212.78, 5151.51, 86.0963, 3.48489, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2198.79, 5140.77, 89.562, 4.11007, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2180.84, 5116.52, 84.1085, 5.0227, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2202.07, 5119.99, 86.5075, 6.09084, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2203.04, 5104.41, 87.4047, 5.79553, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2243.34, 5096.43, 83.3336, 5.17664, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2250.04, 5080.64, 77.6341, 1.96671, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2255.94, 5047.14, 72.7315, 4.96694, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2246.68, 5025.89, 73.6344, 3.29561, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2211.81, 4997.16, 73.5509, 4.35432, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2199.75, 4955.56, 79.7196, 5.6361, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2214.99, 4917.43, 81.5436, 5.0926, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2261.28, 4906.52, 81.3652, 0.681019, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2271.25, 4918.92, 78.048, 3.32545, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2339.24, 5003.85, 65.3275, 1.01088, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2328.39, 5015.33, 65.3275, 0.00871468, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2325.49, 5003.65, 65.3275, 4.14305, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2357.64, 4997.22, 65.3275, 0.0299211, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0),
(62281, 870, 0, 0, 1, 1, 0, 62281, 2373.32, 5016.53, 65.3275, 1.27478, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0);

/* No spiteful spirits spawned + fixing factions,level, SAI and other datas */
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `minlevel` = 90, `maxlevel` = 91, `mindmg` = 9839, `maxdmg` = 14339, `attackpower` = 42299, `AIName` = 'SmartAI' WHERE `entry` IN (61025,63839,63840);

DELETE FROM `smart_scripts` WHERE (`entryorguid`=63840 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(63840, 0, 0, 0, 0, 0, 70, 0, 4000, 6000, 15000, 18000, 11, 124678, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Spiteful Spirit - Cast Hacking Slash"),
(63840, 0, 1, 0, 0, 0, 70, 0, 7000, 10000, 16000, 22000, 11, 86695, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Spiteful Spirit - Cast Whirlwind");

DELETE FROM `creature` WHERE `id` IN (61025,63839,63840);
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(61025, 870, 0, 0, 1, 1, 0, 0, 1714.6, 2356.29, 378.868, 5.85738, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(61025, 870, 0, 0, 1, 1, 0, 0, 1754.89, 2336.41, 377.428, 5.65553, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(61025, 870, 0, 0, 1, 1, 0, 0, 1748.75, 2305.59, 378.342, 0.151459, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(61025, 870, 0, 0, 1, 1, 0, 0, 1803.7, 2313.98, 383.435, 0.151459, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(61025, 870, 0, 0, 1, 1, 0, 0, 1770.98, 2250.15, 389.32, 2.15265, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(61025, 870, 0, 0, 1, 1, 0, 0, 1794.8, 2234.82, 389.771, 5.29738, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(61025, 870, 0, 0, 1, 1, 0, 0, 1860.76, 2330.02, 378.677, 0.738931, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(61025, 870, 0, 0, 1, 1, 0, 0, 1878.07, 2367.98, 378.179, 2.5697, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(61025, 870, 0, 0, 1, 1, 0, 0, 1796.13, 2371.83, 373.375, 3.43442, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(61025, 870, 0, 0, 1, 1, 0, 0, 1820.28, 2199.23, 391.884, 5.09082, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),

(63839, 870, 0, 0, 1, 1, 0, 0, 1719.53, 2357.27, 378.868, 4.51984, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63839, 870, 0, 0, 1, 1, 0, 0, 1755.29, 2332.81, 377.428, 0.250419, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(63839, 870, 0, 0, 1, 1, 0, 0, 1821.47, 2318.06, 383.435, 2.97497, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(63839, 870, 0, 0, 1, 1, 0, 0, 1767.95, 2258.85, 389.32, 4.93454, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(63839, 870, 0, 0, 1, 1, 0, 0, 1817.29, 2225.51, 392.393, 3.92608, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63839, 870, 0, 0, 1, 1, 0, 0, 1807.2, 2197.83, 391.884, 0.291263, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(63839, 870, 0, 0, 1, 1, 0, 0, 1851.89, 2248.3, 399.566, 3.7745, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63839, 870, 0, 0, 1, 1, 0, 0, 1709.13, 2221.45, 378.054, 1.02011, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63839, 870, 0, 0, 1, 1, 0, 0, 1637.26, 2205.72, 371.474, 1.79373, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63839, 870, 0, 0, 1, 1, 0, 0, 1618.05, 2270.3, 355.089, 1.7686, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63839, 870, 0, 0, 1, 1, 0, 0, 1569.07, 2294.37, 349.083, 3.61899, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(63839, 870, 0, 0, 1, 1, 0, 0, 1516.78, 2267.32, 350.61, 1.40417, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(63839, 870, 0, 0, 1, 1, 0, 0, 1525.41, 2337.16, 350.611, 5.9744, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(63839, 870, 0, 0, 1, 1, 0, 0, 1591.88, 2322.29, 357.138, 5.36964, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(63839, 870, 0, 0, 1, 1, 0, 0, 1724.99, 2268.24, 377.427, 1.5534, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),

(63840, 870, 0, 0, 1, 1, 0, 0, 1720.45, 2271.51, 377.427, 5.028, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1762.26, 2335.93, 377.429, 3.46977, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1726.76, 2352.84, 378.542, 2.59955, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1739.98, 2360.44, 378.911, 0.177378, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1828.47, 2365.82, 373.375, 2.28539, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1857.21, 2310.32, 378.801, 0.199369, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1911.68, 2363.53, 392.979, 2.51551, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1901.94, 2433.88, 388.969, 0.158526, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1813.23, 2298.29, 383.729, 3.36609, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1729.89, 2213.32, 378.646, 2.93884, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1696.7, 2268.08, 378.831, 2.10082, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1624.18, 2205.44, 371.495, 0.420851, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1549.2, 2290.24, 349.083, 0.199369, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1507.83, 2272.23, 350.611, 0.733437, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1502.84, 2325.07, 352.083, 0.323459, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1495.07, 2292.74, 351.996, 6.17625, 300, 0, 0, 407532, 0, 0, 0, 0, 0, 2048, 0, 0),
(63840, 870, 0, 0, 1, 1, 0, 0, 1556.74, 2394.55, 334.397, 3.41557, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 2048, 0, 0);

/* Osul Fire-Warrior wrong aura and flags fixed */
DELETE FROM `creature_template_aura` WHERE `entry` = 63576;
UPDATE `creature` SET `unit_flags` = 0 WHERE `id` = 63576;
UPDATE `creature_template` SET `unit_flags` = 0, `dynamicflags` = 0, `type_flags` = 0 WHERE `entry` = 63576;

/* Battat passive react fix */
UPDATE `creature_template` SET `VehicleId` = 0, `AIName` = 'SmartAI' WHERE `entry` = 60728;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=60728 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60728, 0, 0, 0, 0, 0, 80, 0, 7000, 9000, 11000, 12000, 11, 123851, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Battat - Cast Crushing Charge"),
(60728, 0, 1, 0, 2, 0, 100, 1, 0, 60, 0, 0, 11, 130388, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Battat - Cast Empowering Flames at 60% hp"),
(60728, 0, 2, 0, 0, 0, 100, 0, 10000, 12000, 20000, 21000, 11, 36207, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Battat - Cast Steal Weapon");

/* Needle Sprite wrong aura and missing SAI fixed */
DELETE FROM `creature_template_aura` WHERE `entry` = 55593;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 55593;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=55593 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(55593, 0, 0, 0, 0, 0, 50, 1, 1, 1, 0, 0, 11, 115358, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Needle Sprite - Cast Mischief"),
(55593, 0, 1, 0, 0, 0, 100, 0, 2, 2, 6000, 7000, 11, 120770, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Needle Sprite - Cast Needles"),
(55593, 0, 2, 0, 0, 0, 100, 0, 4000, 5000, 10000, 11000, 11, 127889, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Needle Sprite - Cast 1001 Needles");

/* Speaking with Xuen now give the credit */
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `AIName` = 'SmartAI' WHERE `entry` = 64528;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=64528 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(64528, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 33, 64528, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Xuen - Give credit on gossip"),
(64528, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Xuen - Close Gossip");

/* Oil Rig and Explosives Barrel fix */
UPDATE `creature` SET `spawndist` = 0 WHERE `id` IN (60096,60098,60099);
UPDATE `creature_template` SET `modelid1` = 11686, `modelid2` = 0, `flags_extra` = 0 WHERE `entry` IN (60096,60098,60099);
UPDATE `creature_template` SET `minlevel` = 93, `maxlevel` = 93, `unit_flags` = 33554432 WHERE `entry` = 60095;