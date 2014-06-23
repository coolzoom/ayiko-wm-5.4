-- [SQL] Npcs - Dire Wolves will now have an AI and be attackable (Feedback #1698)
UPDATE `creature_template` SET `maxlevel` = 21, `speed_walk` = 1, `speed_run` = 1.14286, `unit_flags` = 67108888, `AIName` = 'SmartAI', `ScriptName` = '', `WDBVerified` = 15595 WHERE `entry` = 43704;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 43704 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(43704, 0, 0, 0, 2, 0, 100, 1, 0, 30, 0, 0, 11, 18501, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dire Wolf - Cast Enrage at 30% HP"),
(43704, 0, 1, 0, 2, 0, 100, 1, 0, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dire Wolf - Say Text at 30% HP"),
(43704, 0, 2, 0, 0, 0, 100, 0, 3000, 6000, 22000, 26000, 11, 3150, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dire Wolf - Cast Rabies");
DELETE FROM `creature_text` WHERE `entry` = 43704;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(43704, 0, 0, "%s becomes enraged!", 16, 0, 100, 0, 0, 0, "Dire Wolf");