-- [SQL] Npcs - Drakkari Invader will no longer award loot or experience on kill (Fixes #7193)
DELETE FROM `creature_loot_template` WHERE `entry` = 27753;
DELETE FROM `creature_loot_template` WHERE `item` = 34052 AND `mincountOrRef` >= 0;
UPDATE `creature_template` SET `lootid` = 0, `flags_extra` = 64 WHERE `entry` = 27753;