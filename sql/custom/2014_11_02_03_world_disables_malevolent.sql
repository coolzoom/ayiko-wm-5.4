-- [SQL] [Internal] Inscription - Crafted Malevolent Gladiator's Medallion of Tenacity creation disabled as it's Dreadful Season 13 now, not Season 15
DELETE FROM `disables` WHERE `sourceType` = 0 AND `entry` = 146638; 
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(0, 146638, 8, '', '', "Crafted Malevolent Gladiator's Medallion of Tenacity spell disabled");