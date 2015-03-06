-- [SQL] Npcs - K3 Bruiser scripted (Fixes #3156)
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `exp` = 4, `faction_A` = 1812, `faction_H` = 1812, `speed_run` = 1.42857, `dmg_multiplier` = 45, `AIName` = 'SmartAI', `flags_extra` = 32768 WHERE `entry` = 29910;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 29910 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(29910, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Set Phase 1 on Aggro"),
(29910, 0, 1, 0, 4, 1, 100, 1, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Stop Moving on Aggro"),
(29910, 0, 2, 0, 4, 1, 100, 1, 0, 0, 0, 0, 11, 23337, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Cast Shoot on Aggro"),
(29910, 0, 3, 0, 9, 1, 100, 0, 5, 30, 3500, 4100, 11, 23337, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Cast Shoot"),
(29910, 0, 4, 0, 9, 1, 100, 0, 30, 100, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Start Moving when not in Shoot Range"),
(29910, 0, 5, 0, 9, 1, 100, 0, 9, 15, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Stop Moving at 15 Yards"),
(29910, 0, 6, 0, 9, 1, 100, 0, 0, 5, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Start Moving when not in Shoot Range"),
(29910, 0, 7, 0, 9, 1, 100, 0, 5, 30, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Stop Moving when in Shoot Range"),
(29910, 0, 8, 0, 9, 1, 100, 0, 0, 20, 7000, 9000, 11, 12024, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Cast Net on Close");