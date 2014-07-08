-- [SQL] Quests - The Rise of the Darkspear, The Basics: Hitting Things, A Rough Start, Proving Pit, The Arts of a Monk, More Than Expected (Monk questchain) fixed (fixes #328)
DELETE FROM `creature_questrelation` WHERE `quest` IN (31159, 31158, 31160, 31161, 31162, 31163);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(37951, 31159),
(63310, 31158),
(63310, 31160),
(63310, 31161),
(63310, 31163);
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (31159, 31158, 31160, 31161, 31162, 31163);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(38966, 31163),
(63310, 31158),
(63310, 31159),
(63310, 31160),
(63310, 31161),
(63310, 31162);
UPDATE `creature_template` SET `npcflag` = `npcflag`|2 WHERE `entry` IN (37951, 38966, 63310);
DELETE FROM `creature_loot_template` WHERE `item` = 50222;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(38046, 50222, -100, 1, 0, 1, 1);