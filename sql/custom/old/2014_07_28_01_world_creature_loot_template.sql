-- [SQL] Quests - Paint it Black (27945) fixed (Fixes #5119)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 62796;