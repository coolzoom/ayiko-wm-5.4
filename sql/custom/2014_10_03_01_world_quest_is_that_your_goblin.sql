-- [SQL] Quests - Is That Your Goblin? scripted (Feedback #7652)
SET @NPC_AGNETTA_TYRSDOTTAR := 30154;
SET @NPC_ZEEV_FIZZLESPARK := 29525;
SET @OGUID := 75529;
UPDATE `creature_template` SET `gossip_menu_id`=9874, `npcflag`=1 WHERE `entry`=@NPC_AGNETTA_TYRSDOTTAR;
DELETE FROM `gossip_menu_option` WHERE `menu_id`=9874;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`) VALUES
(9874, 0, 0, "Skip the warmup, sister... or are you too scared to face someone your own size?", 1, 1, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE  `entry` IN (@NPC_ZEEV_FIZZLESPARK, @NPC_AGNETTA_TYRSDOTTAR);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (@NPC_ZEEV_FIZZLESPARK, @NPC_AGNETTA_TYRSDOTTAR);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC_AGNETTA_TYRSDOTTAR, 0, 0, 1, 62, 0, 100, 0, 9874, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Agnetta Tyrsdottar - On Gossip Option Select - Close Gossip Window"),
(@NPC_AGNETTA_TYRSDOTTAR, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 2, 45, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Agnetta Tyrsdottar - On Gossip Option Select - Set Faction"),
(@NPC_AGNETTA_TYRSDOTTAR, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Agnetta Tyrsdottar - On Gossip Option Select - Say 0"),
(@NPC_AGNETTA_TYRSDOTTAR, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Agnetta Tyrsdottar - On Gossip Option Select - Attack Envoker"),
(@NPC_AGNETTA_TYRSDOTTAR, 0, 4, 0, 25, 0, 100, 0, 0, 0, 0, 0, 2, 2109, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Agnetta Tyrsdottar - On Reset - Set faction"),
(@NPC_AGNETTA_TYRSDOTTAR, 0, 5, 0, 6, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 103591, @NPC_ZEEV_FIZZLESPARK, 0, 0, 0, 0, 0, "Agnetta Tyrsdottar - On Death - Set Data to Zeev Fizzlespark"),
(@NPC_ZEEV_FIZZLESPARK, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Zeev Fizzlespark - On Data Set - Say Line"),
(@NPC_ZEEV_FIZZLESPARK, 0, 1, 0, 52, 0, 100, 0, 0, @NPC_ZEEV_FIZZLESPARK, 0, 0, 53, 1, @NPC_ZEEV_FIZZLESPARK, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Zeev Fizzlespark - On Data Set - Say Line"),
(@NPC_ZEEV_FIZZLESPARK, 0, 2, 0, 40, 0, 100, 0, 8, @NPC_ZEEV_FIZZLESPARK, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Zeev Fizzlespark - On Reached WP8 - Despawn");
DELETE FROM `creature_text` WHERE `entry` IN (@NPC_ZEEV_FIZZLESPARK, @NPC_AGNETTA_TYRSDOTTAR);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_AGNETTA_TYRSDOTTAR, 0, 0, "I'm not afraid of anything -- bring it on!", 12, 0, 100, 0, 0, 0, "Agnetta Tyrsdottar"),
(@NPC_ZEEV_FIZZLESPARK, 0, 0, "Thank you, thank you!  Time to get away from these crazy blue women!", 12, 0, 100, 0, 0, 0, "Zeev Fizzlespark");
DELETE FROM `waypoints` WHERE `entry` =@NPC_ZEEV_FIZZLESPARK;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(@NPC_ZEEV_FIZZLESPARK, 1,6887.515, -1586.146, 821.6108, "Zeev Fizzlespark"),
(@NPC_ZEEV_FIZZLESPARK, 2,6879.559, -1576.52, 822.1594, "Zeev Fizzlespark"),
(@NPC_ZEEV_FIZZLESPARK, 3,6864.559, -1565.27, 821.4094, "Zeev Fizzlespark"),
(@NPC_ZEEV_FIZZLESPARK, 4,6864.395, -1565.045, 821.4877, "Zeev Fizzlespark"),
(@NPC_ZEEV_FIZZLESPARK, 5,6859.145, -1561.045, 821.4877, "Zeev Fizzlespark"),
(@NPC_ZEEV_FIZZLESPARK, 6,6847.645, -1552.295, 820.9877, "Zeev Fizzlespark"),
(@NPC_ZEEV_FIZZLESPARK, 7,6844.395, -1549.795, 820.2377, "Zeev Fizzlespark"),
(@NPC_ZEEV_FIZZLESPARK, 8,6839.645, -1546.045, 819.7377, "Zeev Fizzlespark");
DELETE FROM `gameobject` WHERE `id` IN (191844,191845);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 191844, 571, 1, 1, 8535.68, -496.9023, 823.1414, 0.4014249, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+1, 191844, 571, 1, 1, 8546.7, -263.9755, 807.7084, 4.886924, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+2, 191845, 571, 1, 1, 8637.927, -217.2614, 570.3714, 0.5759573, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+3, 191844, 571, 1, 1, 8573.364, -92.22021, 673.306, 4.782203, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+4, 191845, 571, 1, 1, 8560.149, -62.62316, 702.3484, 2.740162, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+5, 191845, 571, 1, 1, 8626.088, 33.92166, 572.9097, 5.497789, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+6, 191845, 571, 1, 1, 8614.603, 88.68297, 637.397, 1.832595, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+7, 191844, 571, 1, 1, 8747.084, 9.606879, 296.9369, 2.932139, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+8, 191845, 571, 1, 1, 8579.567, 82.29688, 692.7102, 5.881761, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+9, 191845, 571, 1, 1, 8547.95, -10.12207, 741.0126, 0.06981169, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+10, 191844, 571, 1, 1, 8595.69, 112.1224, 662.7746, 1.727875, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+11, 191844, 571, 1, 1, 8607.703, 209.4077, 665.7949, 4.258607, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+12, 191844, 571, 1, 1, 8611.642, 271.6101, 615.5172, 6.248279, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+13, 191844, 571, 1, 1, 8748.884, 312.8568, 299.133, 6.073746, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+14, 191845, 571, 1, 1, 8621.576, 330.7877, 541.5576, 5.393069, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+15, 191845, 571, 1, 1, 8605.192, 312.1095, 579.5255, 2.251473, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+16, 191844, 571, 1, 1, 8684.777, 359.4482, 428.7368, 4.956738, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+17, 191844, 571, 1, 1, 8789.41, 71.40159, 293.1991, 3.787367, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+18, 191844, 571, 1, 1, 8763.857, -67.66808, 138.1753, 4.677484, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+19, 191844, 571, 1, 1, 8774.313, -173.6759, 149.9866, 1.06465, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+20, 191845, 571, 1, 1, 8789.631, -235.4283, 51.76108, 1.640607, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+21, 191844, 571, 1, 1, 8804.998, -172.7898, 84.4473, 3.47321, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+22, 191844, 571, 1, 1, 8699.403, -518.3983, 548.7347, 2.740162, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+23, 191844, 571, 1, 1, 8576.837, -359.9985, 752.7386, 5.67232, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+24, 191844, 571, 1, 1, 8814.698, 129.815, 148.0139, 3.543024, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+25, 191845, 571, 1, 1, 8843.197, 133.3464, 85.0244, 6.126106, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+26, 191844, 571, 1, 1, 8804.185, 280.4642, 290.4794, 0.4363316, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+27, 191844, 571, 1, 1, 8626.088, 33.92166, 572.9097, 5.497789, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+28, 191845, 571, 1, 1, 8670.649, -96.9744, 480.4034, 4.76475, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+29, 191844, 571, 1, 1, 8532.542, 68.41764, 725.706, 0.2094394, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+30, 191845, 571, 1, 1, 8533.337, -67.05301, 737.9224, 3.769912, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+31, 191845, 571, 1, 1, 8578.229, 145.1865, 697.3944, 0.9773831, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+32, 191844, 571, 1, 1, 8549.121, 307.6241, 663.9405, 0.5759573, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+33, 191845, 571, 1, 1, 8562.427, 317.5042, 614.5561, 6.248279, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+34, 191844, 571, 1, 1, 8518.978, 314.5187, 762.0441, 0.5061446, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+35, 191844, 571, 1, 1, 8748.884, 312.8568, 299.133, 6.073746, 0, 0, 0, 1, 120, 255, 1), -- 191844 (Area: 67)
(@OGUID+36, 191845, 571, 1, 1, 8632.458, -147.1184, 579.8124, 3.665196, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+37, 191845, 571, 1, 1, 8685.321, -255.6193, 550.6371, 4.415683, 0, 0, 0, 1, 120, 255, 1), -- 191845 (Area: 67)
(@OGUID+38, 191844, 571, 1, 1, 8558.689, -286.8528, 704.2544, 2.146753, 0, 0, 0, 1, 120, 255, 1); -- 191844 (Area: 67)