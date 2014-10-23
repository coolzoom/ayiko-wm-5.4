-- [SQL] General - Timeless Isle will stay closed until ready for release
ALTER TABLE `spell_area` MODIFY `racemask` int(10) unsigned NOT NULL DEFAULT '0';

DELETE FROM `spell_area` WHERE `spell` IN (3561, 3567);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(3561, 6675, 0, 0, 0, 18875469, 2, 1),  --  Alliance - Stormwind - Isle of Thunder
(3561, 6677, 0, 0, 0, 18875469, 2, 1),
(3561, 6507, 0, 0, 0, 18875469, 2, 1),
(3561, 6729, 0, 0, 0, 18875469, 2, 1),
(3561, 6757, 0, 0, 0, 18875469, 2, 1),  -- Timeless Isle
(3561, 6832, 0, 0, 0, 18875469, 2, 1),  -- The Timeless Shore
(3567, 6675, 0, 0, 0, 33555378, 2, 1),  --  Horde - Orgrimmar - Isle of Thunder
(3567, 6677, 0, 0, 0, 33555378, 2, 1),
(3567, 6507, 0, 0, 0, 33555378, 2, 1),
(3567, 6729, 0, 0, 0, 33555378, 2, 1),
(3567, 6757, 0, 0, 0, 33555378, 2, 1),  -- Timeless Isle
(3567, 6832, 0, 0, 0, 33555378, 2, 1);  -- The Timeless Shore