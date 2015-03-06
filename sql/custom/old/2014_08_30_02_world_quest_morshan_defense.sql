-- [SQL] Quests - Mor'shan Defense scripted (Feedback #388)
SET @NPC_ASHENVALE_SKIRMISHER := 33193;
SET @NPC_ASHENVALE_BOWMAN := 33195;
UPDATE `creature_template` SET `unit_flags` = 32768,  `dynamicflags` = 0,  `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` IN (@NPC_ASHENVALE_SKIRMISHER, @NPC_ASHENVALE_BOWMAN);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (@NPC_ASHENVALE_SKIRMISHER, @NPC_ASHENVALE_BOWMAN));
DELETE FROM `creature_template_addon` WHERE `entry` IN (@NPC_ASHENVALE_SKIRMISHER, @NPC_ASHENVALE_BOWMAN);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_ASHENVALE_SKIRMISHER, @NPC_ASHENVALE_BOWMAN) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_ASHENVALE_SKIRMISHER, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 11, 78894, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Ashenvale Skirmisher - On Aggro - Cast Leaping Cleave"),
(@NPC_ASHENVALE_SKIRMISHER, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 17000, 22000, 11, 17207, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Ashenvale Skirmisher - IC - Cast Whirlwind"),
(@NPC_ASHENVALE_BOWMAN, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Ashenvale Bowman - On Aggro - Set Phase 1"),
(@NPC_ASHENVALE_BOWMAN, 0, 1, 0, 4, 1, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Ashenvale Bowman - On Aggro - Stop Moving"),
(@NPC_ASHENVALE_BOWMAN, 0, 2, 0, 4, 1, 100, 0, 0, 0, 0, 0, 11, 6660, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Ashenvale Bowman - On Aggro - Cast Shoot"),
(@NPC_ASHENVALE_BOWMAN, 0, 3, 0, 9, 1, 100, 0, 5, 30, 3500, 4100, 11, 6660, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Ashenvale Bowman - On Close Range - Cast Shoot"),
(@NPC_ASHENVALE_BOWMAN, 0, 4, 0, 9, 1, 100, 0, 30, 100, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Ashenvale Bowman - On Distant Range - Start Moving"),
(@NPC_ASHENVALE_BOWMAN, 0, 5, 0, 9, 1, 100, 0, 9, 15, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Ashenvale Bowman - On Close Range - Stop Moving"),
(@NPC_ASHENVALE_BOWMAN, 0, 6, 0, 9, 1, 100, 0, 0, 5, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Ashenvale Bowman - On Too Close Range - Start Moving"),
(@NPC_ASHENVALE_BOWMAN, 0, 7, 0, 9, 1, 100, 0, 5, 30, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Ashenvale Bowman - On Close Range - Stop Moving"),
(@NPC_ASHENVALE_BOWMAN, 0, 8, 0, 0, 1, 100, 0, 13000, 18000, 24000, 29000, 11, 78841, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Ashenvale Bowman - IC - Cast Aimed Shot"),
(@NPC_ASHENVALE_BOWMAN, 0, 9, 0, 0, 1, 100, 0, 7000, 9000, 9000, 13000, 11, 78754, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Ashenvale Bowman - IC - Cast Arcane Shot");