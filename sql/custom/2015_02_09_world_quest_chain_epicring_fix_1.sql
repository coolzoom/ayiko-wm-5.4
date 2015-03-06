/* Quest-Dread Wastes - The Wrath of Shek'zeer */
SET @GUID = (SELECT MAX(guid) FROM `creature`);
DELETE FROM `creature` WHERE `id` IN (66783,66788,66789,66790);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES
(@GUID + 1, 66783, 870, 1, 65535, 0, 0, 184.677, 3750.62, 244.197, 2.08218, 300, 0, 0, 5909115, 0, 0, 0, 0, 0, 0),
(@GUID + 2, 66788, 870, 1, 65535, 0, 0, 446.372, 3811.84, 218.686, 5.46504, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 3, 66788, 870, 1, 65535, 0, 0, 444.778, 3805.88, 218.484, 5.48074, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 4, 66788, 870, 1, 65535, 0, 0, 432.019, 3794.08, 217.701, 5.49645, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 5, 66788, 870, 1, 65535, 0, 0, 427.784, 3793.19, 216.536, 5.49645, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 66788, 870, 1, 65535, 0, 0, 374.242, 3911.51, 217.232, 3.14576, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 7, 66788, 870, 1, 65535, 0, 0, 374.266, 3905.73, 217.912, 3.14576, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 8, 66788, 870, 1, 65535, 0, 0, 374.289, 3900.09, 218.352, 3.14576, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 9, 66788, 870, 1, 65535, 0, 0, 374.315, 3893.93, 218.596, 3.14576, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 10, 66788, 870, 1, 65535, 0, 0, 367.203, 3893.9, 218.282, 3.14576, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 11, 66788, 870, 1, 65535, 0, 0, 367.177, 3900.1, 218.341, 3.14576, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 12, 66788, 870, 1, 65535, 0, 0, 367.154, 3905.66, 218.102, 3.14576, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 13, 66788, 870, 1, 65535, 0, 0, 367.128, 3911.72, 217.556, 3.14576, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 14, 66788, 870, 1, 65535, 0, 0, 359.413, 3912.06, 218.085, 3.14576, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 15, 66788, 870, 1, 65535, 0, 0, 359.44, 3905.51, 218.774, 3.14576, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 16, 66788, 870, 1, 65535, 0, 0, 359.464, 3899.87, 218.865, 3.14576, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 17, 66788, 870, 1, 65535, 0, 0, 359.493, 3892.8, 218.264, 3.14576, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 18, 66788, 870, 1, 65535, 0, 0, 321.843, 3831.2, 224.823, 3.18503, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 19, 66788, 870, 1, 65535, 0, 0, 357.174, 3743.86, 233.234, 3.24236, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 20, 66788, 870, 1, 65535, 0, 0, 286.389, 3774.27, 231.561, 2.22684, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 21, 66788, 870, 1, 65535, 0, 0, 297.889, 3905.46, 219.182, 2.95569, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 66789, 870, 1, 65535, 0, 0, 142.446, 3899.59, 215.43, 3.0036, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 23, 66789, 870, 1, 65535, 0, 0, 140.734, 3891.33, 215.279, 3.0036, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 24, 66789, 870, 1, 65535, 0, 0, 139.27, 3880.8, 215.271, 3.0036, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 25, 66789, 870, 1, 65535, 0, 0, 130.417, 3882.59, 214.613, 3.0036, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 26, 66789, 870, 1, 65535, 0, 0, 131.645, 3891.43, 215.125, 3.0036, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 27, 66789, 870, 1, 65535, 0, 0, 132.907, 3900.51, 215.144, 3.0036, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 28, 66789, 870, 1, 65535, 0, 0, 120.016, 3903.25, 212.05, 3.0036, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 29, 66789, 870, 1, 65535, 0, 0, 118.575, 3892.88, 212.344, 3.0036, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 30, 66789, 870, 1, 65535, 0, 0, 117.314, 3883.79, 212.599, 3.0036, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 31, 66789, 870, 1, 65535, 0, 0, 2.0355, 3876.18, 192.682, 2.66195, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 32, 66789, 870, 1, 65535, 0, 0, 7.99832, 3887.75, 196.483, 2.66588, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 33, 66789, 870, 1, 65535, 0, 0, 14.1084, 3883.54, 197.652, 2.57948, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 34, 66789, 870, 1, 65535, 0, 0, 9.74332, 3876.61, 193.995, 2.57948, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 35, 66790, 870, 1, 65535, 0, 0, 164.532, 3741.17, 243.99, 2.07996, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 36, 66790, 870, 1, 65535, 0, 0, 166.724, 3753.29, 243.984, 2.0886, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 37, 66790, 870, 1, 65535, 0, 0, 173.937, 3738.91, 244.075, 1.84591, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 38, 66790, 870, 1, 65535, 0, 0, 201.129, 3751.13, 244.614, 1.83413, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 39, 66790, 870, 1, 65535, 0, 0, 203.012, 3762.19, 245.934, 1.83413, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 40, 66790, 870, 1, 65535, 0, 0, 193.625, 3764.17, 245.421, 1.83413, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 41, 66790, 870, 1, 65535, 0, 0, 231.612, 3792.59, 230.97, 2.18441, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 42, 66790, 870, 1, 65535, 0, 0, 237.106, 3796.46, 230.009, 2.18441, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 43, 66790, 870, 1, 65535, 0, 0, 244.329, 3801.54, 229.887, 2.18441, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 44, 66790, 870, 1, 65535, 0, 0, 248.967, 3794.69, 229.51, 2.19934, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 45, 66790, 870, 1, 65535, 0, 0, 241.957, 3789.59, 230.781, 2.19934, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 46, 66790, 870, 1, 65535, 0, 0, 235.57, 3784.95, 231.617, 2.19934, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 47, 66790, 870, 1, 65535, 0, 0, 209.352, 3918.8, 220.673, 4.62283, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 48, 66790, 870, 1, 65535, 0, 0, 201.697, 3919.49, 221.12, 4.62283, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 49, 66790, 870, 1, 65535, 0, 0, 205.542, 3915.35, 220.221, 4.67074, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 50, 66790, 870, 1, 65535, 0, 0, 46.9301, 3787.85, 198.967, 1.97682, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 51, 66790, 870, 1, 65535, 0, 0, 37.5848, 3793.36, 198.05, 1.97682, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 52, 66790, 870, 1, 65535, 0, 0, 38.0228, 3806.72, 198.301, 1.97682, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 53, 66790, 870, 1, 65535, 0, 0, 44.5897, 3798.88, 199.112, 2.06086, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 54, 66790, 870, 1, 65535, 0, 0, 47.8453, 3805.97, 199.88, 2.06086, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0),
(@GUID + 55, 66790, 870, 1, 65535, 0, 0, 55.0014, 3793.09, 200.913, 1.53936, 90, 0, 0, 393941, 0, 0, 0, 0, 0, 0);

UPDATE `creature` SET `spawntimesecs` = 300 WHERE `id` IN (66784,66785);

UPDATE `creature_template` SET `dmg_multiplier` = 40, `mechanic_immune_mask` = 2096, `AIName` = 'SmartAI' WHERE `entry` = 66783;
UPDATE `creature_template` SET `dmg_multiplier` = 8, `mechanic_immune_mask` = 2096 WHERE `entry` IN (66784,66785);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `dmg_multiplier` = 1 WHERE `entry` IN (66788,66789,66790);

DELETE FROM `smart_scripts` WHERE (`entryorguid`= 66783 AND `source_type` = 0 );
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(66783, 0, 0, 0, 0, 0, 100, 0, 10000, 11000, 18000, 25000, 11, 128022, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Akkolon - Cast Dread Slash"),
(66783, 0, 1, 0, 0, 0, 100, 0, 3000, 5000, 15000, 18000, 11, 131386, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Akkolon - Cast Shower of Pheromones"),
(66783, 0, 2, 0, 0, 0, 100, 0, 13000, 15000, 25000, 29000, 11, 127373, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Akkolon - Cast Unstable Serum");

/* Quest-Dread Wastes - Shadow of the Empire */
DELETE FROM `waypoints` WHERE `entry`= 66800;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(66800, 1, 152.08, 3203.60, 214.761, "Kil'ruk the Wind-Reaver - Move1 on Quest: Shadow of the Empire"),
(66800, 2, 162.77, 3190.54, 215.015, "Kil'ruk the Wind-Reaver - Move2 on Quest: Shadow of the Empire"),
(66800, 3, 184.92, 3173.12, 216.022, "Kil'ruk the Wind-Reaver - Move3 on Quest: Shadow of the Empire"),
(66800, 4, 216.89, 3154.25, 215.147, "Kil'ruk the Wind-Reaver - Move4 on Quest: Shadow of the Empire"),
(66800, 5, 216.51, 3148.43, 214.610, "Kil'ruk the Wind-Reaver - Move5 on Quest: Shadow of the Empire"),
(66800, 6, 215.27, 3129.22, 213.475, "Kil'ruk the Wind-Reaver - Move6 on Quest: Shadow of the Empire"),
(66800, 7, 216.67, 3103.69, 208.252, "Kil'ruk the Wind-Reaver - Move7 on Quest: Shadow of the Empire"),
(66800, 8, 205.42, 3059.41, 181.978, "Kil'ruk the Wind-Reaver - Move8 on Quest: Shadow of the Empire"),
(66800, 9, 177.42, 3065.66, 177.898, "Kil'ruk the Wind-Reaver - Move9 on Quest: Shadow of the Empire"),
(66800, 10, 174.91, 3079.37, 174.527, "Kil'ruk the Wind-Reaver - Move10 on Quest: Shadow of the Empire"),
(66800, 11, 178.48, 3097.96, 167.903, "Kil'ruk the Wind-Reaver - Move11 on Quest: Shadow of the Empire"),
(66800, 12, 182.01, 3117.99, 159.454, "Kil'ruk the Wind-Reaver - Move12 on Quest: Shadow of the Empire"),
(66800, 13, 184.81, 3162.12, 152.712, "Kil'ruk the Wind-Reaver - Move13 on Quest: Shadow of the Empire"),
(66800, 14, 189.95, 3197.54, 151.478, "Kil'ruk the Wind-Reaver - Move14 on Quest: Shadow of the Empire"),
(66800, 15, 195.32, 3212.85, 151.264, "Kil'ruk the Wind-Reaver - Move15 on Quest: Shadow of the Empire"),
(66800, 16, 184.63, 3222.95, 151.326, "Kil'ruk the Wind-Reaver - Move16 on Quest: Shadow of the Empire"),
(66800, 17, 183.44, 3249.47, 151.637, "Kil'ruk the Wind-Reaver - Move17 on Quest: Shadow of the Empire");

DELETE FROM creature_text WHERE entry=66800;
INSERT INTO `creature_text` VALUES 
('66800', '0', '0', 'Wakener, your deeds have earned you the trust of the Klaxxi.', '12', '0', '100', '1', '0', '30312', 'Kil\'ruk the Wind-Reaver - Say 1'),
('66800', '1', '0', 'You are to be rewarded. Walk with me.', '12', '0', '100', '1', '0', '30313', 'Kil\'ruk the Wind-Reaver - Say 2'),
('66800', '2', '0', 'We mantid are an elder race. The pandaren you associate with - they are but children. They have their role to play.', '12', '0', '100', '1', '0', '30314', 'Kil\'ruk the Wind-Reaver - Say 3'),
('66800', '3', '0', 'Each cycle, our young swarm their walls. The pandaren slay the weak. The strong return.', '12', '0', '100', '1', '0', '30315', 'Kil\'ruk the Wind-Reaver - Say 4'),
('66800', '4', '0', 'With each generation, we grow ever stronger.', '12', '0', '100', '1', '0', '30316', 'Kil\'ruk the Wind-Reaver - Say 5'),
('66800', '5', '0', 'Before your history began, our empire was vast. We shared this world with our sister kingdoms, Ahn\'Qiraj and Azjol-Nerub.', '12', '0', '100', '1', '0', '30317', 'Kil\'ruk the Wind-Reaver - Say 6'),
('66800', '6', '0', 'Our Gods were many, and powerful. We mantid worshipped the seven heads of Y\'Shaarj.', '12', '0', '100', '1', '0', '30318', 'Kil\'ruk the Wind-Reaver - Say 7'),
('66800', '7', '0', 'Great was the Old One, and terrible was His wrath. He consumed hope and begat despair; He inhaled courage and breathed fear.', '12', '0', '100', '1', '0', '30319', 'Kil\'ruk the Wind-Reaver - Say 8'),
('66800', '8', '0', 'When the usurpers came - the ones you call "Titans" - Y\'Shaarj was destroyed.', '12', '0', '100', '1', '0', '30320', 'Kil\'ruk the Wind-Reaver - Say 9'),
('66800', '9', '0', 'His last terrible breath has haunted this land ever since, but the shadows he left behind are mere whispers of his former glory.', '12', '0', '100', '1', '0', '30321', 'Kil\'ruk the Wind-Reaver - Say 10'),
('66800', '10', '0', 'I tell you now, because you have earned this warning.', '12', '0', '100', '1', '0', '30322', 'Kil\'ruk the Wind-Reaver - Say 11'),
('66800', '11', '0', 'Your gods are not your gods, outsider.', '12', '0', '100', '1', '0', '30323', 'Kil\'ruk the Wind-Reaver - Say 12'),
('66800', '12', '0', 'If the Old Ones ever return, we mantid will once again stand by their side.', '12', '0', '100', '1', '0', '30324', 'Kil\'ruk the Wind-Reaver - Say 13'),
('66800', '13', '0', 'The wisest among you will do the same.', '12', '0', '100', '1', '0', '30325', 'Kil\'ruk the Wind-Reaver - Say 14'),
('66800', '14', '0', 'That is all that needs to be said. Come, take your reward, and remember what you have learned today.', '12', '0', '100', '1', '0', '30326', 'Kil\'ruk the Wind-Reaver - Say 15');

DELETE FROM `creature_queststarter` WHERE `id`= 62538 AND `quest`= 31612;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (62538, 31612);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (62538,66800);
DELETE FROM `smart_scripts` WHERE `entryorguid`IN (62538,66800) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(62538, 0, 0, 0, 19, 0, 100, 0, 31612, 0, 0, 0, 12, 66800, 3, 260000, 0, 0, 0, 7, 100, 0, 0, 0, 0, 0, 0, "Accepting the Quest: Shadow of the Empire - Summon Kil'ruk the Wind-Reaver"),
(66800, 0, 0, 0, 1, 0, 100, 1, 100, 100, 0, 0, 53, 0, 66800, 1, 31612, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - On spawn - Start WP movement"),
(66800, 0, 1, 0, 1, 0, 100, 1, 1500, 1500, 0, 0, 1, 0, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - On spawn - Say 1"),
(66800, 0, 2, 3, 40, 0, 100, 0, 1, 66800, 0, 0, 54, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 1 - pause path"),
(66800, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 5.52092, "Kil'ruk the Wind-Reaver - Reach wp 1 - turn to"),
(66800, 0, 4, 0, 40, 0, 100, 0, 1, 66800, 0, 0, 1, 1, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 1 - Speak2"),
(66800, 0, 5, 0, 40, 0, 100, 0, 2, 66800, 0, 0, 1, 2, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 2 - Speak3"),
(66800, 0, 6, 0, 40, 0, 100, 0, 3, 66800, 0, 0, 1, 3, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 3 - Speak4"),
(66800, 0, 7, 8, 40, 0, 100, 0, 4, 66800, 0, 0, 54, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 4 - pause path"),
(66800, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 4.68684, "Kil'ruk the Wind-Reaver - Reach wp 4 - turn to"),
(66800, 0, 9, 0, 40, 0, 100, 0, 5, 66800, 0, 0, 9, 0, 0, 0, 0, 0, 0, 14, 164149, 215893, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 4 - Open the door GOBJ"),
(66800, 0, 10, 0, 40, 0, 100, 0, 5, 66800, 0, 0, 1, 4, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 5 - Speak5"),
(66800, 0, 11, 0, 40, 0, 100, 0, 7, 66800, 0, 0, 1, 5, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 7 - Speak6"),
(66800, 0, 12, 0, 40, 0, 100, 0, 8, 66800, 0, 0, 1, 6, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 8 - Speak7"),
(66800, 0, 13, 0, 40, 0, 100, 0, 9, 66800, 0, 0, 1, 7, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 9 - Speak8"),
(66800, 0, 14, 0, 40, 0, 100, 0, 11, 66800, 0, 0, 1, 8, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 11 - Speak9"),
(66800, 0, 15, 0, 40, 0, 100, 0, 12, 66800, 0, 0, 1, 9, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 12 - Speak10"),
(66800, 0, 16, 0, 40, 0, 100, 0, 13, 66800, 0, 0, 1, 10, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 13 - Speak11"),
(66800, 0, 17, 0, 40, 0, 100, 0, 14, 66800, 0, 0, 1, 11, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 14 - Speak12"),
(66800, 0, 18, 0, 40, 0, 100, 0, 15, 66800, 0, 0, 1, 12, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 15 - Speak13"),
(66800, 0, 19, 0, 40, 0, 100, 0, 16, 66800, 0, 0, 1, 13, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 16 - Speak14"),
(66800, 0, 20, 21, 40, 0, 100, 0, 17, 66800, 0, 0, 1, 14, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 17 - Speak15"),
(66800, 0, 21, 0, 61, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 4.74572, "Kil'ruk the Wind-Reaver - Reach wp 17 - turn to"),
(66800, 0, 22, 23, 40, 0, 100, 0, 17, 66800, 0, 0, 54, 60000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Reach wp 17 - stop path"),
(66800, 0, 23, 0, 40, 0, 100, 0, 17, 66800, 0, 0, 33, 66800, 0, 0, 0, 0, 0, 18, 40, 0, 0, 0, 0, 0, 0, "Kil'ruk the Wind-Reaver - Quest Complete at the end of the path");

UPDATE `gameobject_template` SET `data2` = 6000 WHERE `entry` = 215893;

SET @GUID = (SELECT MAX(guid) FROM `creature`);
DELETE FROM `creature` WHERE `id` = 70387;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES 
(@GUID + 1, 70387, 870, 1, 1, 0, 0, 224.331, 3125.38, 213.933, 3.0778, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `npcflag` = 1, `AIName` = 'SmartAI' WHERE `entry` = 70387;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=70387 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(70387, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 14, 164149, 215893, 0, 0, 0, 0, 0, "Servant to the Klaxxi - Open the Door");