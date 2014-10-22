-- [SQL] Multiple changes
-- Quests - All quest related gameobjects and creatures which have a unique quest item will now respawn very quickly and their dropchance will be 100%, this will greatly help gameplay and avoid waiting
-- Gameplay - Normal, Elite, Rare and Rare Elite creatures and gameobjects related to quests respawn timers have been tweaked

-- Tweak respawn timers with mass queries in map 0, 1, 609, 648, 654, 860, 870 (eastern kingdom, kalimdor, ebon hold, kezan, gilneas, wandering isle, jade forest)

-- Normal creatures 67612 row(s) affected in mop
UPDATE `creature` SET `spawntimesecs` = 120 WHERE `spawntimesecs` BETWEEN 120 AND 600 AND `map` IN (0, 1, 609, 648, 654, 860, 870) AND `id` IN (SELECT `entry` FROM `creature_template` WHERE `rank` = 0);

-- Elites 2593 row(s) affected
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `spawntimesecs` BETWEEN 120 AND 600 AND `map` IN (0, 1, 609, 648, 654, 860, 870) AND `id` IN (SELECT `entry` FROM `creature_template` WHERE `rank` = 1);

-- Rare and Rare Elites 1 row(s) affected
UPDATE `creature` SET `spawntimesecs` = 172800 WHERE `spawntimesecs` < 601 AND `id` IN (SELECT `entry` FROM `creature_template` WHERE `rank` IN (2, 4));
-- Can't touch World Bosses because some are related to quests like Patchwerk or High Tinker Mekkatorque and they require to respawn quickly

-- Creatures respawn and loot
-- Quest related creatures which have a unique quest item 8775 row(s) affected
UPDATE `creature` SET `spawntimesecs` = 60 WHERE `spawntimesecs` BETWEEN 60 AND 600 AND `map` IN (0, 1, 609, 648, 654, 860, 870) AND `id` IN (SELECT `entry` FROM `creature_loot_template` WHERE `ChanceOrQuestChance` < 0 AND `mincountOrRef` > 0 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `class` = 12 AND `stackable` = 1)) AND `id` IN (SELECT `entry` FROM `creature_template` WHERE `rank` IN (0, 1));

-- fix creature loot to be 100% if quest item is unique 1209 row(s) affected
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -100 WHERE `ChanceOrQuestChance` < 0 AND `mincountOrRef` > 0 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `class` = 12 AND `stackable` = 1);

-- Gameobjects respawn and loot
-- Quest related gameobjects which have a unique quest item 986 row(s) affected
UPDATE `gameobject` SET `spawntimesecs` = 10 WHERE `spawntimesecs` BETWEEN 10 AND 500 AND `id` IN (SELECT `entry` FROM `gameobject_loot_template` WHERE `ChanceOrQuestChance` < 0 AND `mincountOrRef` > 0 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `class` = 12 AND `stackable` = 1));

-- Also fix gameobject loot to be 100% if quest item is unique 74 row(s) affected
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = -100 WHERE `ChanceOrQuestChance` < 0 AND `mincountOrRef` > 0 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `class` = 12 AND `stackable` = 1);

-- Quests - All quest related gameobjects which have a unique quest item will now respawn very quickly, this will greatly help gameplay and avoid waiting 49 row(s) affected
UPDATE `gameobject` SET `spawntimesecs` = 10 WHERE `spawntimesecs` > 60 AND `id` IN (SELECT `entry` FROM `gameobject_loot_template` WHERE `ChanceOrQuestChance` < 0 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `class` = 12 AND `stackable` = 1));