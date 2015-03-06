-- [SQL] General - Timeless Isle will stay closed until ready for release
ALTER TABLE `spell_area` MODIFY `racemask` int(10) unsigned NOT NULL DEFAULT '0';

DELETE FROM `spell_area` WHERE `spell` IN (3561, 123072, 3567, 123074);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(123072, 6675, 0, 0, 0, 18875469, 2, 1),  --  Alliance - Stormwind - Isle of Thunder
(123072, 6677, 0, 0, 0, 18875469, 2, 1),
(123072, 6507, 0, 0, 0, 18875469, 2, 1),
(123072, 6729, 0, 0, 0, 18875469, 2, 1),
(123072, 6757, 0, 0, 0, 18875469, 2, 1),  -- Timeless Isle
(123072, 6832, 0, 0, 0, 18875469, 2, 1),  -- The Timeless Shore
(123074, 6675, 0, 0, 0, 33555378, 2, 1),  --  Horde - Orgrimmar - Isle of Thunder
(123074, 6677, 0, 0, 0, 33555378, 2, 1),
(123074, 6507, 0, 0, 0, 33555378, 2, 1),
(123074, 6729, 0, 0, 0, 33555378, 2, 1),
(123074, 6757, 0, 0, 0, 33555378, 2, 1),  -- Timeless Isle
(123074, 6832, 0, 0, 0, 33555378, 2, 1);  -- The Timeless Shore