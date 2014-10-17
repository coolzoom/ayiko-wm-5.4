-- [SQL] Quests - Anatoly Will Talk scripted
SET @NPC_SASHA := 26935;
SET @NPC_ANATOLY := 26971;
SET @NPC_HORSE := 27626;
SET @NPC_TATJANA := 27627;
SET @NPC_UNCONSCIOUS_TATJANA := 27632;
SET @NPC_SLAIN_TRAPPER := 27479;
SET @SPELL_TATJANA_HORSE_EXIT := 49159;
SET @SPELL_SUMMON_UNCONSCIOUS_TATJANA := 49162;
SET @SPELL_TATJANA_DUMMY := 61484;
SET @SPELL_SHOOT := 48815;
SET @SPELL_DART := 49134;
SET @SPELL_PING := 49135;
SET @SPELL_MOUNT_TATJANAS_HORSE := 49138;
SET @SPELL_RIDE_VEHICLE := 43671;
SET @SPELL_FEIGN_DEATH := 29266;
SET @QUEST_ANATOLY_WILL_TALK := 12330;
SET @CGUID := 375625;
UPDATE `quest_template` SET `PrevQuestId` = 12329, `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `SpecialFlags` = 2, `WDBVerified` = 15595 WHERE `Id` = @QUEST_ANATOLY_WILL_TALK;
UPDATE `quest_template` SET `PrevQuestId` = 12330 WHERE `Id` = 12411;
UPDATE `quest_template` SET `PrevQuestId` = 12411 WHERE `Id` = 12164;
DELETE FROM `creature` WHERE `id` IN (@NPC_TATJANA, @NPC_HORSE, @NPC_SASHA);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@CGUID+0, @NPC_HORSE, 571, 1, 1, 25030, 0, 4033.07, -4375.17, 262.194, 4.31096, 30, 0, 0, 10282, 0, 0, 0, 0, 0),
(@CGUID+1, @NPC_SASHA, 571, 1, 1, 24705, 1, 4072.56, -4130.48, 211.73, 3.26377, 120, 0, 0, 30846, 0, 0, 0, 0, 0),
(@CGUID+2, @NPC_SASHA, 571, 1, 1, 24705, 1, 4620.66, -5685.28, 180.028, 3.82227, 120, 0, 0, 30846, 0, 0, 0, 0, 0),
(@CGUID+3, @NPC_SASHA, 571, 1, 1, 24705, 1, 4550.15, -5493.45, 2.19, 0.85, 120, 0, 0, 30846, 0, 0, 0, 0, 0);
UPDATE `creature` SET `spawntimesecs` = 30 WHERE `id` = @NPC_ANATOLY;
UPDATE `creature_template` SET `minlevel` = 74, `maxlevel` = 74, `faction_A` = 16, `faction_H` = 16, `unit_flags` = 32768, `dynamicflags` = 0, `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @NPC_TATJANA;
UPDATE `creature_template` SET `minlevel` = 74, `maxlevel` = 74, `faction_A` = 16, `faction_H` = 16, `VehicleId` = 59, `speed_run` = 1.28571, `dynamicflags` = 0, `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @NPC_HORSE;
UPDATE `creature_template` SET `minlevel` = 74, `maxlevel` = 74, `AIName` = '', `ScriptName` = '' WHERE `entry` = @NPC_UNCONSCIOUS_TATJANA;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` IN (@NPC_SASHA, @NPC_ANATOLY);
UPDATE `creature_template` SET `unit_flags` = 537133824, `unit_flags2` = 2049, `dynamicflags` = 32, `ScriptName` = '' WHERE `entry` = @NPC_SLAIN_TRAPPER;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_SASHA, @NPC_ANATOLY, @NPC_HORSE, @NPC_TATJANA, @NPC_UNCONSCIOUS_TATJANA) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_SASHA*100, @NPC_ANATOLY*100, @NPC_ANATOLY*100+1, @NPC_ANATOLY*100+2, @NPC_ANATOLY*100+3, @NPC_ANATOLY*100+4, @NPC_HORSE*100) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC_SASHA,0,0,3,38,1,100,0,0,1,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Sasha - On data set 0 1 (phase 1) - Say line"),
(@NPC_SASHA,0,1,3,38,1,100,0,0,2,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Sasha - On data set 0 2 (phase 1) - Say line"),
(@NPC_SASHA,0,2,3,38,1,100,0,0,3,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Sasha - On data set 0 3 (phase 1) - Say line"),
(@NPC_SASHA,0,3,0,61,1,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Sasha - Linked with events 0,1,2 (phase 1) - Set data 0 0"),
(@NPC_SASHA,0,4,5,38,0,100,0,0,4,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Sasha - On data set 0 4 - Set event phase 0"),
(@NPC_SASHA,0,5,0,61,0,100,0,0,0,0,0,80,@NPC_SASHA*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Sasha - On data set 0 4 - Run script"),
(@NPC_SASHA,0,6,0,25,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Sasha - On reset - Set event phase 1"),
(@NPC_ANATOLY,0,0,0,1,1,100,0,10000,20000,60000,70000,87,@NPC_ANATOLY*100+1,@NPC_ANATOLY*100+2,@NPC_ANATOLY*100+3,@NPC_ANATOLY*100+4,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On update OOC (phase 1) - Run random script"),
(@NPC_ANATOLY,0,1,2,38,0,100,0,0,1,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On data set 0 1 - Set event phase 0"),
(@NPC_ANATOLY,0,2,3,61,0,100,0,0,1,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On data set 0 1 - Set run"),
(@NPC_ANATOLY,0,3,0,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,4057.442,-4140.824,211.1911,0,"Nepenthe-Anatoly - On data set 0 1 - Move to position"),
(@NPC_ANATOLY,0,4,5,34,0,100,0,0,1,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On movement inform - Set unit_field_bytes1 (kneel)"),
(@NPC_ANATOLY,0,5,0,61,0,100,0,0,0,0,0,80,@NPC_ANATOLY*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On movement inform - Run script"),
(@NPC_ANATOLY,0,6,0,25,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On reset - Set event phase 1"),
(@NPC_HORSE,0,0,0,11,0,100,0,0,0,0,0,28,@SPELL_MOUNT_TATJANAS_HORSE,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tatjana's Horse - On spawn - Remove aura Mount Tatjana's Horse"),
(@NPC_HORSE,0,1,2,8,0,100,0,@SPELL_PING,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tatjana's Horse - On spellhit Tatjana Ping - Set faction"),
(@NPC_HORSE,0,2,3,61,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tatjana's Horse - On spellhit Tatjana Ping - Set react state passive"),
(@NPC_HORSE,0,3,4,61,0,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tatjana's Horse - On spellhit Tatjana Ping - Stop autoattack"),
(@NPC_HORSE,0,4,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tatjana's Horse - On spellhit Tatjana Ping - Set eventphase 1"),
(@NPC_HORSE,0,5,0,8,1,100,0,@SPELL_MOUNT_TATJANAS_HORSE,0,0,0,80,@NPC_HORSE*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tatjana's Horse - On spellhit Mount Tatjana's Horse (phase 1) - Run script"),
(@NPC_HORSE*100,9,0,0,0,0,100,0,1000,1000,0,0,53,1,@NPC_HORSE,0,@QUEST_ANATOLY_WILL_TALK,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tatjana's Horse - On script - Start WP movement"),
(@NPC_HORSE,0,6,7,40,0,100,0,19,0,0,0,28,@SPELL_MOUNT_TATJANAS_HORSE,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tatjana's Horse - On WP 19 reached - Remove aura Mount Tatjana's Horse"),
(@NPC_HORSE,0,7,8,61,0,100,0,0,0,0,0,15,@QUEST_ANATOLY_WILL_TALK,0,0,0,0,0,21,2,0,0,0,0,0,0,"Nepenthe-Tatjana's Horse - On WP 19 reached - Quest credit"),
(@NPC_HORSE,0,8,9,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,9,@NPC_ANATOLY,0,50,0,0,0,0,"Nepenthe-Tatjana's Horse - On WP 19 reached - Set data 0 1"),
(@NPC_HORSE,0,9,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tatjana's Horse - On WP 19 reached - Despawn"),
(@NPC_TATJANA,0,0,0,11,0,100,0,0,0,0,0,11,@SPELL_RIDE_VEHICLE,0,0,0,0,0,9,@NPC_HORSE,0,50,0,0,0,0,"Nepenthe-Tatjana - On respawn - Spellcast Ride Vehicle"),
(@NPC_TATJANA,0,1,2,8,0,100,0,@SPELL_DART,0,0,0,11,@SPELL_PING,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tatjana - On spellhit Tranquilizer Dart - Spellcast Tatjana Ping"),
(@NPC_TATJANA,0,2,3,61,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tatjana - On spellhit Tranquilizer Dart - Set faction"),
(@NPC_TATJANA,0,3,4,61,0,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tatjana - On spellhit Tranquilizer Dart - Stop autoattack"),
(@NPC_TATJANA,0,4,5,61,0,100,0,0,0,0,0,18,33024,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tatjana - On spellhit Tranquilizer Dart - Set unit_flags"),
(@NPC_TATJANA,0,5,0,61,0,100,0,0,0,0,0,41,120000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tatjana - On spellhit Tranquilizer Dart - Safety Delayed Despawn"),
(@NPC_TATJANA,0,6,0,0,0,100,0,5000,7000,9000,15000,11,32009,0,0,0,0,0,2,0,0,0,0,0,0,0,"Nepenthe-Tatjana - IC - Spellcast Cutdown"),
(@NPC_TATJANA,0,7,0,38,0,100,0,0,1,0,0,41,13000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tatjana - On data set 0 1 - Despawn after 13 seconds"),
(@NPC_SASHA*100,9,0,0,0,0,100,0,0,0,0,0,1,3,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Sasha - On script - Say line"),
(@NPC_SASHA*100,9,1,0,0,0,100,0,17000,17000,0,0,1,4,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Sasha - On script - Say line"),
(@NPC_SASHA*100,9,2,0,0,0,100,0,16700,16700,0,0,1,5,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Sasha - On script - Say line"),
(@NPC_SASHA*100,9,4,0,0,0,100,0,90000,90000,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Sasha - On script - Set event phase 1"),
(@NPC_SASHA*100,9,5,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Sasha - On script - Set data 0 0"),
(@NPC_ANATOLY*100,9,0,0,0,0,100,0,2400,2400,0,0,45,0,4,0,0,0,0,9,@NPC_SASHA,0,50,0,0,0,0,"Nepenthe-Anatoly - On script 0 - Set data 0 4"),
(@NPC_ANATOLY*100,9,1,0,0,0,100,0,5000,5000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On script 0 - Say line"),
(@NPC_ANATOLY*100,9,2,0,0,0,100,0,16800,16800,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On script 0 - Say line"),
(@NPC_ANATOLY*100,9,3,0,0,0,100,0,16800,16800,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On script 0 - Say line"),
(@NPC_ANATOLY*100,9,4,0,0,0,100,0,6000,6000,0,0,11,47457,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On script 0 - Spellcast Worgen Transform - Male"),
(@NPC_ANATOLY*100,9,5,0,0,0,100,0,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On script 0 - Reset unit_field_bytes1"),
(@NPC_ANATOLY*100,9,6,0,0,0,100,0,500,500,0,0,5,53,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On script 0 - Play emote"),
(@NPC_ANATOLY*100,9,7,0,0,0,100,0,1000,1000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On script 0 - Say line"),
(@NPC_ANATOLY*100,9,8,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,9,@NPC_TATJANA,0,500,0,0,0,0,"Nepenthe-Anatoly - On script 0 - Set data 0 1"),
(@NPC_ANATOLY*100,9,9,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,4069.991,-4130.805,211.464,0,"Nepenthe-Anatoly - On script 0 - Move to position"),
(@NPC_ANATOLY*100,9,10,0,0,0,100,0,2000,2000,0,0,45,1,1,0,0,0,0,9,@NPC_SASHA,0,50,0,0,0,0,"Nepenthe-Anatoly - On script 0 - Set data 1 1"),
(@NPC_SASHA,0,7,0,38,0,100,0,1,1,0,0,11,@SPELL_SHOOT,3,0,0,0,0,9,@NPC_ANATOLY,0,50,0,0,0,0,"Nepenthe-Sasha - On data 1 1 - Spellcast Shoot"),
(@NPC_ANATOLY,0,7,8,8,0,100,0,@SPELL_SHOOT,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On spellhit - Die"),
(@NPC_ANATOLY,0,8,0,61,0,100,0,0,0,0,0,41,15000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On spellhit - Delayed Despawn"),
(@NPC_ANATOLY*100+1,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On script 1 - Say line"),
(@NPC_ANATOLY*100+1,9,1,0,0,0,100,0,2000,2000,0,0,45,0,1,0,0,0,0,9,@NPC_SASHA,0,50,0,0,0,0,"Nepenthe-Anatoly - On script 1 - Set data 0 1"),
(@NPC_ANATOLY*100+2,9,0,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On script 2 - Say line"),
(@NPC_ANATOLY*100+2,9,1,0,0,0,100,0,3500,3500,0,0,45,0,1,0,0,0,0,9,@NPC_SASHA,0,50,0,0,0,0,"Nepenthe-Anatoly - On script 2 - Set data 0 1"),
(@NPC_ANATOLY*100+3,9,0,0,0,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On script 3 - Say line"),
(@NPC_ANATOLY*100+3,9,1,0,0,0,100,0,5000,5000,0,0,45,0,2,0,0,0,0,9,@NPC_SASHA,0,50,0,0,0,0,"Nepenthe-Anatoly - On script 3 - Set data 0 1"),
(@NPC_ANATOLY*100+4,9,0,0,0,0,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Anatoly - On script 4 - Say line"),
(@NPC_ANATOLY*100+4,9,1,0,0,0,100,0,5000,5000,0,0,45,0,3,0,0,0,0,9,@NPC_SASHA,0,50,0,0,0,0,"Nepenthe-Anatoly - On script 4 - Set data 0 1");
DELETE FROM `creature_text` WHERE `entry` IN (@NPC_SASHA, @NPC_ANATOLY);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_SASHA,0,0,'I''m old enough to shoot beasts like you right between the eyes... at twice this distance.',12,0,100,0,0,0,'Sasha'),
(@NPC_SASHA,1,0,'Don''t you dare talk about my father, monster. He was twice the man you''ll ever be.',12,0,100,0,0,0,'Sasha'),
(@NPC_SASHA,2,0,'I''d rather be dead than be one of you! You think you''re still human? You''re... animals!',12,0,100,0,0,0,'Sasha'),
(@NPC_SASHA,3,0,'Surprise, you scum! You''re going to tell me where my sister is or I''ll put a bucketful of truesilver bullets through your wife''s heart.',12,0,100,0,0,0,'Sasha'),
(@NPC_SASHA,4,0,'Where is Anya?',12,0,100,0,0,0,'Sasha'),
(@NPC_SASHA,5,0,'There is one last thing. I need to know where Arugal is.',12,0,100,0,0,0,'Sasha'),
(@NPC_ANATOLY,0,0,'How old are you, lass?',12,0,100,0,0,0,'Anatoly'),
(@NPC_ANATOLY,1,0,'You won''t get away with this, you know? You''re just a kid.',12,0,100,0,0,0,'Anatoly'),
(@NPC_ANATOLY,2,0,'Your father was weak, Sasha... he didn''t have the guts to do what had to be done.',12,0,100,0,0,0,'Anatoly'),
(@NPC_ANATOLY,3,0,'We''ll all end up serving the Lich King, kid. Better this way than becoming a rotten corpse.',12,0,100,0,0,0,'Anatoly'),
(@NPC_ANATOLY,4,0,'Stop! Do not shoot! Do not hurt Tatjana!',12,0,100,0,0,0,'Anatoly'),
(@NPC_ANATOLY,5,0,'The brat''s held prisoner in the wolf den on the other side of the mountain. She was to be taken to Arugal. Are we free to go now?',12,0,100,0,0,0,'Anatoly'),
(@NPC_ANATOLY,6,0,'Forgive me, Tatjana...',12,0,100,0,0,0,'Anatoly'),
(@NPC_ANATOLY,7,0,'Nothing you can do can compare to what Arugal can do to us! I will tear you apart myself!',12,0,100,0,0,0,'Anatoly');
DELETE FROM `waypoints` WHERE `entry` = @NPC_HORSE;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(@NPC_HORSE, 1, 4042.49, -4378.3, 261.47, "Tatjana's Horse"),
(@NPC_HORSE, 2, 4052.84, -4381.89, 260.577, "Tatjana's Horse"),
(@NPC_HORSE, 3, 4061.94, -4374.57, 260.44, "Tatjana's Horse"),
(@NPC_HORSE, 4, 4078.97, -4375.19, 260.93, "Tatjana's Horse"),
(@NPC_HORSE, 5, 4090.33, -4361.82, 261.34, "Tatjana's Horse"),
(@NPC_HORSE, 6, 4091.73, -4341.6, 261.34, "Tatjana's Horse"),
(@NPC_HORSE, 7, 4094.09, -4325.83, 260.91, "Tatjana's Horse"),
(@NPC_HORSE, 8, 4108.3, -4300.63, 252.85, "Tatjana's Horse"),
(@NPC_HORSE, 9, 4124.35, -4281.08, 251.25, "Tatjana's Horse"),
(@NPC_HORSE, 10, 4126.15, -4258.29, 251.3, "Tatjana's Horse"),
(@NPC_HORSE, 11, 4126.1, -4243.9, 248.35, "Tatjana's Horse"),
(@NPC_HORSE, 12, 4100.1, -4224.51, 237.86, "Tatjana's Horse"),
(@NPC_HORSE, 13, 4087.17, -4208.72, 230.58, "Tatjana's Horse"),
(@NPC_HORSE, 14, 4082.93, -4172.83, 218.13, "Tatjana's Horse"),
(@NPC_HORSE, 15, 4077.66, -4151.22, 211.94, "Tatjana's Horse"),
(@NPC_HORSE, 16, 4083.57, -4138.46, 212.4, "Tatjana's Horse"),
(@NPC_HORSE, 17, 4079.16, -4127.81, 212.26, "Tatjana's Horse"),
(@NPC_HORSE, 18, 4067.57, -4127.6, 211.13, "Tatjana's Horse"),
(@NPC_HORSE, 19, 4056.67, -4143.69, 211.377, "Tatjana's Horse");
DELETE FROM `vehicle_template_accessory` WHERE `entry` = @NPC_HORSE;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(@NPC_HORSE,@NPC_TATJANA,0,0,'Tatjana''s Horse',8,30000);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = @NPC_HORSE;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(@NPC_HORSE,@SPELL_MOUNT_TATJANAS_HORSE,1,0);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (@SPELL_MOUNT_TATJANAS_HORSE, @SPELL_PING);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(@SPELL_PING,@SPELL_TATJANA_DUMMY,2,'Tatjana Ping adds aura Tatjana Dummy');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (@SPELL_DART, @SPELL_PING, @SPELL_TATJANA_HORSE_EXIT);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = @SPELL_SHOOT;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ScriptName`, `Comment`) VALUES
(13, 1, @SPELL_DART, 0, 0, 31, 0, 3, @NPC_TATJANA, 0, 0, '', 'Spell Tranquilizer Dart targets Tatjana'),
(13, 1, @SPELL_PING, 0, 0, 31, 0, 3, @NPC_HORSE, 0, 0, '', 'Spell Tatjana Ping effect0 targets Tatjana''s Horse'),
(13, 1, @SPELL_TATJANA_HORSE_EXIT, 0, 0, 31, 0, 3, @NPC_TATJANA, 0, 0, '', 'Spell Tatjana Horse Exit targets Tatjana'),
(17, 0, @SPELL_SHOOT, 0, 0, 31, 1, 3, @NPC_ANATOLY, 0, 0, '', 'Spell Shoot targets Anatoly');
DELETE FROM `conditions` WHERE `SourceGroup` = @NPC_HORSE AND `SourceTypeOrReferenceId` = 18;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ScriptName`, `Comment`) VALUES
(18, @NPC_HORSE, @SPELL_MOUNT_TATJANAS_HORSE, 0, 0, 8, 0, @QUEST_ANATOLY_WILL_TALK, 0, 0, 1, "", "Forbidden rewarded quest for spellclick"),
(18, @NPC_HORSE, @SPELL_MOUNT_TATJANAS_HORSE, 0, 0, 9, 0, @QUEST_ANATOLY_WILL_TALK, 0, 0, 0, "", "Required quest active for spellclick");
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = @NPC_SLAIN_TRAPPER);
DELETE FROM `creature_template_addon` WHERE `entry` = @NPC_SLAIN_TRAPPER;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
(@NPC_SLAIN_TRAPPER, @SPELL_FEIGN_DEATH);

-- [SQL] Quests - A Sister's Pledge scripted
-- [SQL] Quests - Sasha's Hunt fixed
-- [SQL] Quests - Hour Of The Worg fixed (Feedback #5287)
SET @NPC_SASHA := 26935;
SET @NPC_ANYA := 27646;
SET @GO_CAGE := 189977;
SET @QUEST_A_SISTERS_PLEDGE := 12411;
UPDATE `creature` SET `spawntimesecs` = 30 WHERE `id` = @NPC_ANYA;
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` IN (@NPC_ANYA, @NPC_SASHA);
UPDATE `gameobject_template` SET `AIName` = "SmartGameObjectAI" WHERE `entry` = @GO_CAGE;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_ANYA AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_SASHA AND `id` IN (8, 9, 10, 11, 12, 13) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @GO_CAGE AND `source_type` = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_ANYA*100, @GO_CAGE*100, @NPC_SASHA*100+1) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC_ANYA, 0, 0, 1, 20, 0, 100, 0, @QUEST_A_SISTERS_PLEDGE, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Anya - On quest A Sister's Pledge rewarded - Say line 0"),
(@NPC_ANYA, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 13, @GO_CAGE, 0, 5, 0, 0, 0, 0, "Nepenthe-Anya - On quest A Sister's Pledge rewarded - Activate GO"),
(@NPC_ANYA, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 12, @NPC_SASHA, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4001.751, -4555.144, 196.4673, 1.719485, "Nepenthe-Anya - On quest A Sister's Pledge rewarded - Summon Sasha"),
(@NPC_ANYA, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, @NPC_ANYA*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Anya - On quest A Sister's Pledge rewarded - Run script"),
(@GO_CAGE, 1, 0, 0, 70, 0, 100, 0, 0, 0, 0, 0, 80, @GO_CAGE*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Cage - On GO activated - Run script"),
(@GO_CAGE*100, 9, 0, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 32, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Cage - On script - Reset GO"),
(@NPC_SASHA, 0, 8, 9, 38, 0, 100, 0, 1, 2, 0, 0, 53, 1, @NPC_SASHA, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Sasha - On data 1 2 - Start WP movement"),
(@NPC_SASHA, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Sasha - On data 1 2 - Remove Questgiver flag"),
(@NPC_SASHA, 0, 10, 11, 40, 0, 100, 0, 4, 0, 0, 0, 90, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Sasha - On WP 4 reached - Set unit_field_bytes1 (kneel)"),
(@NPC_SASHA, 0, 11, 12, 61, 0, 100, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Sasha - On data 1 2 - Set sheath unarmed"),
(@NPC_SASHA, 0, 12, 13, 61, 0, 100, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Sasha - On data 1 2 - Set emote none"),
(@NPC_SASHA, 0, 13, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, @NPC_SASHA*100+1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Sasha - On WP 4 reached - Run script"),
(@NPC_SASHA*100+1, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Sasha - On script - Say line 6"),
(@NPC_ANYA*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 9, @NPC_SASHA, 0, 50, 0, 0, 0, 0, "Nepenthe-Anya - On script - Set data 1 2"),
(@NPC_ANYA*100, 9, 1, 0, 0, 0, 100, 0, 1700, 1700, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3996.337, -4516.717, 196.3168, 0, "Nepenthe-Anya - On script - Move to position"),
(@NPC_ANYA*100, 9, 2, 0, 0, 0, 100, 0, 13300, 13300, 0, 0, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Anya - On script - Say line 1"),
(@NPC_SASHA*100+1, 9, 1, 0, 0, 0, 100, 0, 16800, 16800, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Sasha - On script - Say line 7"),
(@NPC_ANYA*100, 9, 3, 0, 0, 0, 100, 0, 16800, 16800, 0, 0, 1, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Anya - On script - Say line 2"),
(@NPC_SASHA*100+1, 9, 2, 0, 0, 0, 100, 0, 16900, 16900, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Sasha - On script - Say line 8"),
(@NPC_SASHA*100+1, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Sasha - On data 1 2 - Add back Questgiver flag"),
(@NPC_SASHA*100+1, 9, 4, 0, 0, 0, 100, 0, 90000, 90000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Sasha - On script - Despawn"),
(@NPC_ANYA*100, 9, 4, 0, 0, 0, 100, 0, 90000, 90000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Anya - On script - Despawn");
DELETE FROM `creature_text` WHERE `entry` = @NPC_SASHA AND `groupid` IN (6, 7, 8);
DELETE FROM `creature_text` WHERE `entry` = @NPC_ANYA;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_ANYA, 0, 0, "You won't eat me, will you?", 12, 0, 100, 0, 0, 0, "Anya"),
(@NPC_SASHA, 6, 0, "Anya!! You're all right!", 12, 0, 100, 0, 0, 0, "Sasha"),
(@NPC_ANYA, 1, 0, "Sister! The mean men were going to take me to Badmoon Isle. They wanted to turn me into one of them.", 12, 0, 100, 0, 0, 0, "Anya"),
(@NPC_SASHA, 7, 0, "Badmoon? You mean Bloodmoon?", 12, 0, 100, 0, 0, 0, "Sasha"),
(@NPC_ANYA, 2, 0, "That's what I said! Badmoon! Sasha... don't ever leave me again! First they took papa, then they took you... I don't want to be alone with them!", 12, 0, 100, 0, 0, 0, "Anya"),
(@NPC_SASHA, 8, 0, "Don't worry, sister... no one can hurt you now.", 12, 0, 100, 0, 0, 0, "Sasha");
DELETE FROM `waypoints` WHERE `entry` = @NPC_SASHA;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(@NPC_SASHA, 1, 4002.467, -4556.807, 196.4988, "Sasha"),
(@NPC_SASHA, 2, 4001.879, -4555.998, 196.4988, "Sasha"),
(@NPC_SASHA, 3, 3997.248, -4525.081, 195.3569, "Sasha"),
(@NPC_SASHA, 4, 3996.828, -4519.888, 195.6831, "Sasha");