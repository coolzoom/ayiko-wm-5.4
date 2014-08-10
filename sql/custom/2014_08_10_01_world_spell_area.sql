-- [SQL] General - Timeless Isle will stay closed until ready for release
ALTER TABLE `spell_area` MODIFY `racemask` int(10) unsigned NOT NULL DEFAULT '0';

DELETE FROM `spell_area` WHERE `spell` IN (3561, 3567);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(3561, 5841, 0, 0, 0, 18875469, 2, 1),  --  Alliance - Stormwind
(3561, 5785, 0, 0, 0, 18875469, 2, 1),
(3561, 6138, 0, 0, 0, 18875469, 2, 1),
(3561, 5842, 0, 0, 0, 18875469, 2, 1),
(3561, 5805, 0, 0, 0, 18875469, 2, 1),
(3561, 5840, 0, 0, 0, 18875469, 2, 1),
(3561, 6006, 0, 0, 0, 18875469, 2, 1),
(3561, 6074, 0, 0, 0, 18875469, 2, 1),
(3561, 6141, 0, 0, 0, 18875469, 2, 1),
(3561, 6553, 0, 0, 0, 18875469, 2, 1),
(3561, 6134, 0, 0, 0, 18875469, 2, 1),
(3561, 6757, 0, 0, 0, 18875469, 2, 1),
(3567, 5841, 0, 0, 0, 33555378, 2, 1),  --  Horde - Orgrimmar
(3567, 5785, 0, 0, 0, 33555378, 2, 1),
(3567, 6138, 0, 0, 0, 33555378, 2, 1),
(3567, 5842, 0, 0, 0, 33555378, 2, 1),
(3567, 5805, 0, 0, 0, 33555378, 2, 1),
(3567, 5840, 0, 0, 0, 33555378, 2, 1),
(3567, 6006, 0, 0, 0, 33555378, 2, 1),
(3567, 6074, 0, 0, 0, 33555378, 2, 1),
(3567, 6141, 0, 0, 0, 33555378, 2, 1),
(3567, 6553, 0, 0, 0, 33555378, 2, 1),
(3567, 6134, 0, 0, 0, 33555378, 2, 1),
(3567, 6757, 0, 0, 0, 33555378, 2, 1);