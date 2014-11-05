-- [SQL] Npcs - Prophet of Sseratus, Rokmar the Crackler and Magmothregar should no longer be pickpocketable (Refs #8826)
UPDATE `creature_template` SET `pickpocketloot` = 0 WHERE `entry` IN (17991, 25430, 28068);
DELETE FROM `pickpocketing_loot_template` WHERE `entry` IN (17991, 25430, 28068);