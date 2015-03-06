-- [SQL] Quests - Discipline corrected (Fixes #3564)
UPDATE `creature_template` SET `KillCredit2` = 0 WHERE `entry` = 30146;