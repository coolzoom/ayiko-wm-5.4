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