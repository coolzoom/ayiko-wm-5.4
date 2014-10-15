-- [SQL] Exploits - Silithid Qiraji Battle Tanks used as Ahn'Qiraj mounts will properly dismount you when zoning out of the instance (Fixes #7383)
DELETE FROM `spell_area` WHERE `spell` IN (25953, 26054, 26055, 26056);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES 
(25953, 3428, 0, 0, 0, 0, 2, 0),
(26054, 3428, 0, 0, 0, 0, 2, 0),
(26055, 3428, 0, 0, 0, 0, 2, 0),
(26056, 3428, 0, 0, 0, 0, 2, 0);