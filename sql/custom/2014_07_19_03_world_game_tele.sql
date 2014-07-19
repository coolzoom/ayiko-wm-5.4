-- [SQL] [Internal] Added 10 new game_tele teleport locations of Pandaria zones
INSERT IGNORE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES
(1668, 7199.61, 6287.21, 12.4713, 0.121714, 1064, "IsleOfThunder"),
(1669, 489.954, 197.869, 40.5158, 0.296831, 1101, "dota"),
(1670, 3712.32, 548.354, 639.691, 3.02929, 1031, "TempleOfTheWhiteTiger"),
(1671, 1784.27, 1077.63, 400, 0, 998, "TempleOfKotmogu"),
(1672, 2030.31, -4752.98, 86.7756, 6.24477, 1043, "ArenaOfAnnihilation"),
(1673, 3932.07, 1862.18, 904.335, 1.26292, 1014, "PeakOfSerenity"),
(1674, -3759.41, -4342.51, 10.9338, 1.95962, 1019, "RuinsOfTheramore"),
(1675, 2486.41, -1596.76, 400.869, 4.73655, 1028, "MogushanPalace"),
(1676, 1674.88, 1363.53, 453.591, 3.129, 1029, "CryptOfForgottenKings"),
(1677, -519.774, -5010.2, 2.05773, 4.70425, 870, "TimelessIsle");