-- [SQL] Quests - Cry For The Moon scripted (Feedback #1817)
SET @NPC_OLIVER_HARRIS := 43730;
SET @NPC_JITTERS := 43859;
SET @NPC_LURKING_WORGEN_CAPTURED := 43950;
SET @NPC_SVEN_YORGEN := 43861;
SET @SPELL_HARRIS_AMPULE = 82058;
SET @SPELL_STUNNING_POUNCE := 81957;
SET @KILL_CREDIT := 43969;
SET @QUEST := 26760;
UPDATE `creature_template` SET `AIName` = "SmartAI", `AIName` = "" WHERE `entry` IN (@NPC_LURKING_WORGEN_CAPTURED, @NPC_OLIVER_HARRIS, @NPC_JITTERS);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_LURKING_WORGEN_CAPTURED, @NPC_OLIVER_HARRIS, @NPC_JITTERS) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_LURKING_WORGEN_CAPTURED, 0, 0, 0, 1, 0, 100, 0, 2000, 2000, 60000, 60000, 48, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Lurking Worgen captured - OOC - Set Active"),
(@NPC_LURKING_WORGEN_CAPTURED, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 11, @SPELL_STUNNING_POUNCE, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Lurking Worgen captured - On Aggro - Cast Stunning Pounce"),
(@NPC_LURKING_WORGEN_CAPTURED, 0, 2, 4, 2, 0, 100, 1, 1, 20, 60000, 60000, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Lurking Worgen captured - On Low Health - Boss Emote 0"),
(@NPC_LURKING_WORGEN_CAPTURED, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Lurking Worgen captured - On Low Health - Stop Autoattack"),
(@NPC_LURKING_WORGEN_CAPTURED, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Lurking Worgen captured - On Low Health - Stop Combat Movement"),
(@NPC_LURKING_WORGEN_CAPTURED, 0, 6, 7, 8, 0, 100, 0, @SPELL_HARRIS_AMPULE, 0, 60000, 60000, 33, @KILL_CREDIT, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Lurking Worgen captured - On Spellhit - KC"),
(@NPC_LURKING_WORGEN_CAPTURED, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Lurking Worgen captured - On Spellhit - Delayed Despawn");
DELETE FROM `creature_text` WHERE `entry` IN (@NPC_LURKING_WORGEN_CAPTURED, @NPC_OLIVER_HARRIS, @NPC_JITTERS);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_OLIVER_HARRIS, 0, 0, "Here we go...", 12, 0, 100, 0, 0, 0, "Oliver Harris"),
(@NPC_OLIVER_HARRIS, 1, 0, "It's working. Hold him still, Jitters.", 12, 0, 100, 0, 0, 0, "Oliver Harris"),
(@NPC_JITTERS, 0, 0, "I... I can't...", 12, 0, 100, 0, 0, 0, "Jitters"),
(@NPC_OLIVER_HARRIS, 2, 0, "Damn it, Jitters, I said HOLD!", 12, 0, 100, 0, 0, 0, "Oliver Harris"),
(@NPC_LURKING_WORGEN_CAPTURED, 0, 0, "JITTERS!", 14, 0, 100, 0, 0, 0, "Lurking Worgen captured"),
(@NPC_LURKING_WORGEN_CAPTURED, 1, 0, "I remember now... it's all your fault!", 12, 0, 100, 0, 0, 0, "Lurking Worgen captured"),
(@NPC_LURKING_WORGEN_CAPTURED, 2, 0, "You brought the worgen to Duskwood! You led the Dark Riders to my farm, and hid while they murdered my family!", 12, 0, 100, 0, 0, 0, "Lurking Worgen captured"),
(@NPC_LURKING_WORGEN_CAPTURED, 3, 0, "Every speck of suffering in my life is YOUR PATHETIC FAULT! I SHOULD KILL YOU!!", 14, 0, 100, 0, 0, 0, "Lurking Worgen captured"),
(@NPC_OLIVER_HARRIS, 3, 0, "Letting him go is the only thing thats going to separate you from the beasts now, my friend.", 12, 0, 100, 0, 0, 0, "Oliver Harris"),
(@NPC_LURKING_WORGEN_CAPTURED, 4, 0, "You've got a lot ot make up for, Jitters. I won't give you the easy way out.", 12, 0, 100, 0, 0, 0, "Lurking Worgen captured-Sven Yorgen");
-- [SQL] Quests - The Cries of the Dead will now require Cry For The Moon
UPDATE `quest_template` SET `PrevQuestId` = @QUEST WHERE `Id` = 26778;