-- [SQL] [Internal] Client Crashes - Death Knight creation, Totems and Spirit Healer client crashes fixed
UPDATE `creature_template` SET `speed_run` = 1 WHERE `speed_run` = 0;
UPDATE `creature_template` SET `speed_walk` = 1.14286 WHERE `speed_walk` = 0;

-- [SQL] General - All Spirit Healers in Isle of Thunder and Timeless Isle spawned (refs #2043, #4463)
UPDATE `creature` SET `phaseMask` = 3 WHERE `guid` = 971372;
DELETE FROM `creature` WHERE `guid` IN (7219005, 7257697, 7259315, 7259565, 7259741, 7259862, 7261202) AND `id` IN (72676, 6491);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(7257697, 72676, 870, 1, 65535, 0, 0, -920.229, -4679.01, 3.62866, 5.387, 120, 0, 0, 6722, 0, 0, 0, 0, 0),
(7259315, 6491, 1064, 1, 65535, 0, 0, 6871.87, 5795.76, 13.8524, 1.10415, 120, 0, 0, 8240, 0, 0, 0, 0, 0),
(7259565, 6491, 1064, 1, 65535, 0, 0, 6545.88, 5987, 4.89972, 4.61094, 120, 0, 0, 8240, 0, 0, 0, 0, 0),
(7259741, 6491, 1064, 1, 65535, 0, 0, 6255.88, 5629.52, 11.5899, 6.18959, 120, 0, 0, 8240, 0, 0, 0, 0, 0),
(7259862, 6491, 1064, 1, 65535, 0, 0, 6516.09, 5246.23, 19.0577, 2.3859, 120, 0, 0, 8240, 0, 0, 0, 0, 0),
(7219005, 6491, 1064, 1, 65535, 0, 0, 6980.52, 5184.25, 67.3838, 2.34665, 120, 0, 0, 8240, 0, 0, 0, 0, 0),
(7261202, 6491, 1064, 1, 65535, 0, 0, 7342.03, 5247.27, 68.2273, 2.25712, 120, 0, 0, 8240, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `gossip_menu_id` = 83, `npcflag` = `npcflag` | 0x1 WHERE `entry` = 72676;
UPDATE `creature` SET `npcflag` = 0 WHERE `id` = 72676;