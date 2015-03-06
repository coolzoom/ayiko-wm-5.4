-- [SQL] Npcs - Aeonaxx and Blood Seeker added with 13 dynamic spawn points (Feedback #4743)
SET @ENTRY_AEONAXX := 50062;
SET @ENTRY_BLOOD_SEEKER := 3868;
SET @CGUID := 40743;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `rank` = 4, `mindmg` = 500, `maxdmg` = 750, `attackpower` = 187, `dmg_multiplier` = 35, `baseattacktime` = 2000, `unit_flags` = 32768, `InhabitType` = 5, `mechanic_immune_mask` = 617299807, `WDBVerified` = 15595 WHERE `entry` = @ENTRY_AEONAXX;
UPDATE `creature_template` SET `PetSpellDataId` = 12814, `InhabitType` = 7, `AIName` = "SmartAI" WHERE `entry` = @ENTRY_BLOOD_SEEKER;
DELETE FROM `creature_loot_template` WHERE  `entry` = @ENTRY_AEONAXX;
INSERT INTO `creature_loot_template` (`entry`,  `item`,  `ChanceOrQuestChance`,  `lootmode`,  `groupid`,  `mincountOrRef`,  `maxcount`) VALUES
(@ENTRY_AEONAXX, 63042, 100, 1, 0, 1, 1);
DELETE FROM `creature` WHERE `id` IN (@ENTRY_AEONAXX, @ENTRY_BLOOD_SEEKER);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@CGUID+0, @ENTRY_BLOOD_SEEKER, 646, 1, 1, 0, 0, 718.974, 390.648, 309.853, 6.14633, 28800, 30, 0, 656, 1, 0, 0, 0, 0),
(@CGUID+1, @ENTRY_BLOOD_SEEKER, 646, 1, 1, 0, 0, 522.346, 552.552, 238.576, 2.77305, 28800, 30, 0, 656, 1, 0, 0, 0, 0),
(@CGUID+2, @ENTRY_BLOOD_SEEKER, 646, 1, 1, 0, 0, 354.092, 474.919, 176.999, 2.23897, 28800, 30, 0, 656, 1, 0, 0, 0, 0),
(@CGUID+3, @ENTRY_AEONAXX, 646, 1, 1, 0, 0, 285.007, 739.05, 260.502, 1.77952, 28800, 30, 0, 774900, 1, 0, 0, 0, 0),
(@CGUID+4, @ENTRY_BLOOD_SEEKER, 646, 1, 1, 0, 0, 941.6, 671.056, 132.985, 1.61065, 28800, 30, 0, 656, 1, 0, 0, 0, 0),
(@CGUID+5, @ENTRY_BLOOD_SEEKER, 646, 1, 1, 0, 0, 1638, 904.464, 338.772, 5.49446, 28800, 30, 0, 656, 1, 0, 0, 0, 0),
(@CGUID+6, @ENTRY_BLOOD_SEEKER, 646, 1, 1, 0, 0, 1803.03, 667.469, 313.092, 4.13573, 28800, 30, 0, 656, 1, 0, 0, 0, 0),
(@CGUID+7, @ENTRY_BLOOD_SEEKER, 646, 1, 1, 0, 0, 1389.43, 183.32, 244.161, 2.97334, 28800, 30, 0, 656, 1, 0, 0, 0, 0),
(@CGUID+8, @ENTRY_BLOOD_SEEKER, 646, 1, 1, 0, 0, 959.305, 247.589, 304.674, 3.05581, 28800, 30, 0, 656, 1, 0, 0, 0, 0),
(@CGUID+9, @ENTRY_BLOOD_SEEKER, 646, 1, 1, 0, 0, 650.722, -65.9394, 317.677, 4.37292, 28800, 30, 0, 656, 1, 0, 0, 0, 0),
(@CGUID+10, @ENTRY_BLOOD_SEEKER, 646, 1, 1, 0, 0, 1354.38, 1665.82, 335.057, 6.19817, 28800, 30, 0, 656, 1, 0, 0, 0, 0),
(@CGUID+11, @ENTRY_BLOOD_SEEKER, 646, 1, 1, 0, 0, 970.793, 656.082, 646.89, 5.99788, 28800, 30, 0, 656, 1, 0, 0, 0, 0),
(@CGUID+12, @ENTRY_BLOOD_SEEKER, 646, 1, 1, 0, 0, 1134.82, 810.561, 539.256, 5.22034, 28800, 30, 0, 656, 1, 0, 0, 0, 0);
DELETE FROM `pool_creature` WHERE `pool_entry` IN (@ENTRY_AEONAXX, @ENTRY_BLOOD_SEEKER);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@CGUID+0, @ENTRY_AEONAXX, 7.5, "Blood Seeker(3868) - spawn 1"),
(@CGUID+1, @ENTRY_AEONAXX, 7.5, "Blood Seeker(3868) - spawn 2"),
(@CGUID+2, @ENTRY_AEONAXX, 7.5, "Blood Seeker(3868) - spawn 3"),
(@CGUID+3, @ENTRY_AEONAXX, 10, "Aeonaxx(50062) - spawn 4"),
(@CGUID+4, @ENTRY_AEONAXX, 7.5, "Blood Seeker(3868) - spawn 5"),
(@CGUID+5, @ENTRY_AEONAXX, 7.5, "Blood Seeker(3868) - spawn 6"),
(@CGUID+6, @ENTRY_AEONAXX, 7.5, "Blood Seeker(3868) - spawn 7"),
(@CGUID+7, @ENTRY_AEONAXX, 7.5, "Blood Seeker(3868) - spawn 8"),
(@CGUID+8, @ENTRY_AEONAXX, 7.5, "Blood Seeker(3868) - spawn 9"),
(@CGUID+9, @ENTRY_AEONAXX, 7.5, "Blood Seeker(3868) - spawn 10"),
(@CGUID+10, @ENTRY_AEONAXX, 7.5, "Blood Seeker(3868) - spawn 11"),
(@CGUID+11, @ENTRY_AEONAXX, 7.5, "Blood Seeker(3868) - spawn 12"),
(@CGUID+12, @ENTRY_AEONAXX, 7.5, "Blood Seeker(3868) - spawn 13");
DELETE FROM `pool_template` WHERE `entry` IN (@ENTRY_AEONAXX, @ENTRY_BLOOD_SEEKER);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@ENTRY_AEONAXX, 1, "Aeonaxx(50062) and Blood Seeker(3868)");
DELETE FROM `smart_scripts` WHERE `entryorguid` = @ENTRY_BLOOD_SEEKER AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY_BLOOD_SEEKER, 0, 0, 0, 0, 0, 100, 2, 5700, 5900, 2000, 12100, 11, 7140, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Blood Seeker - IC - Cast Expose Weakness");