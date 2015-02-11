-- [SQL] [Internal] TEMP HACK - Lord Darius Crowley's Snap Kick disabled until it won't get the npc stuck anymore
DELETE FROM `disables` WHERE `sourceType` = 0 AND `entry` = 67827; 
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(0, 67827, 8, '', '', "Lord Darius Crowley's Snap Kick spell disabled");