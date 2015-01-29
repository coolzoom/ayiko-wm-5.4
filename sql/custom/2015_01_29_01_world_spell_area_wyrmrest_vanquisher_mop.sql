-- [SQL] Quest - On Ruby Wings: Wyrmrest Vanquisher vehicle limitations implemented
DELETE FROM `spell_area` WHERE `spell` = 50426;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(50426, 4161, 0, 0, 0, 0, 2, 0),
(50426, 4254, 0, 0, 0, 0, 2, 0),
(50426, 4173, 0, 0, 0, 0, 2, 0),
(50426, 4174, 0, 0, 0, 0, 2, 0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 16 AND `SourceEntry` = 27996;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 50426;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ScriptName`, `Comment`) VALUES
(16, 0, 27996, 0, 23, 4161, 0, 0, "", "Nepenthe-Wyrmrest Vanquisher allowed in Wyrmrest Temple"),
(16, 0, 27996, 1, 23, 4254, 0, 0, "", "Nepenthe-Wyrmrest Vanquisher allowed in The Dragon Wastes"),
(16, 0, 27996, 2, 23, 4173, 0, 0, "", "Nepenthe-Wyrmrest Vanquisher allowed in Galakrond's Rest"),
(16, 0, 27996, 3, 23, 4174, 0, 0, "", "Nepenthe-Wyrmrest Vanquisher allowed in The Wicked Coil"),
(16, 0, 27996, 4, 23, 4184, 0, 0, "", "Nepenthe-Wyrmrest Vanquisher allowed in Path of the Titans"),
(17, 0, 50426, 0, 23, 4161, 0, 0, "", "Nepenthe-Wyrmrest Vanquisher can be summoned in Wyrmrest Temple"),
(17, 0, 50426, 1, 23, 4254, 0, 0, "", "Nepenthe-Wyrmrest Vanquisher can be summoned in The Dragon Wastes"),
(17, 0, 50426, 2, 23, 4173, 0, 0, "", "Nepenthe-Wyrmrest Vanquisher can be summoned in Galakrond's Rest"),
(17, 0, 50426, 3, 23, 4174, 0, 0, "", "Nepenthe-Wyrmrest Vanquisher can be summoned in The Wicked Coil");
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (50348, 50430);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ScriptName`, `Comment`) VALUES
(13, 1, 50348, 0, 31, 3, 28005, 0, "", "Nepenthe-Flame Fury can only Hit Wastes Scavenger"),
(13, 1, 50430, 0, 31, 3, 28005, 0, "", "Nepenthe-Devour Ghoul targets Wastes Scavenger");