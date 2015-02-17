/* Siege of Niuzao Temple and MSP loot fix */
UPDATE `creature_loot_template` SET `groupid` = 3 WHERE `entry` = 109019 AND `item` = 87542;
UPDATE `creature_template` SET `lootid` = 361567 WHERE `entry` = 61567;
UPDATE `creature_template` SET `lootid` = 61567 WHERE `entry` = 361567;
UPDATE `creature_template` SET `lootid` = 361634 WHERE `entry` = 61634;
UPDATE `creature_template` SET `lootid` = 61634 WHERE `entry` = 361634;
UPDATE `creature_template` SET `lootid` = 361485 WHERE `entry` = 61485;
UPDATE `creature_template` SET `lootid` = 61485 WHERE `entry` = 361485;
UPDATE `creature_template` SET `lootid` = 362205 WHERE `entry` = 62205;
UPDATE `creature_template` SET `lootid` = 62205 WHERE `entry` = 362205;
DELETE FROM `creature_loot_template` WHERE `entry`=362205 AND `item`=87547;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (62205, 87547, 0.5, 1, 3, 1, 1);