-- [SQL] Quests - Crystals of Power fixed (Fixes #2695)
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 100, `maxcount` = 3 WHERE `ChanceOrQuestChance` = -100 AND `item` IN (11184, 11185, 11186, 11188);
DELETE FROM `creature_loot_template` WHERE `item` IN (11184, 11185, 11186, 11188);