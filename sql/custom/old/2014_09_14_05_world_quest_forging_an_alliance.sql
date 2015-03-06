-- [SQL] Quests - Forging An Alliance completion will change to the proper phase (Feedback #1718)
DELETE FROM `spell_area` WHERE `area` = 4437;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(55858, 4437, 12924, 0, 0, 0, 2, 1, 74, 11),
(55012, 4437, 12921, 13063, 0, 0, 2, 1, 74, 11),
(72914, 4437, 12921, 13063, 0, 0, 2, 1, 74, 11);