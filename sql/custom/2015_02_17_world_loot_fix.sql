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
DELETE FROM `creature_loot_template` WHERE `entry`=62205 AND `item`=87547;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(62205, 87547, 0.5, 1, 3, 1, 1);

/* Stormstout Brewery - Quest Family Secrets fix */
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 213795;
DELETE FROM `gameobject_loot_template` WHERE `entry`= 42921;
INSERT INTO `gameobject_loot_template` VALUES 
(42921, 86431, -100, 1, 0, 1, 1);

/* Gobj loot bug on MSP */
UPDATE `gameobject` SET `spawnMask` = 2 WHERE `id` = 214520;
UPDATE `gameobject` SET `spawnMask` = 4 WHERE `id` = 214795;
UPDATE `gameobject_template` SET `data11` = 1, `data12` = 0 WHERE `entry` = 214521;
DELETE FROM `gameobject` WHERE `id`=214521;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`isActive`,`protect_anti_doublet`) VALUES
(6609198, 214521, 994, 0, 0, 4, 1, -4214.33, -2667.09, 17.5654, 1.57987, 0, 0, 0, 1, -1, 255, 1, 0, null);
DELETE FROM `gameobject` WHERE `id`=214794;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`isActive`,`protect_anti_doublet`) VALUES
(6609398, 214794, 994, 0, 0, 2, 1, -4397.85, -2563.38, -50.9884, 4.91242, 0, 0, 0, 1, 7200, 255, 1, 0, null);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=42826);
INSERT INTO `gameobject_loot_template` VALUES 
(42826, 81242, 0, 1, 1, 1, 1),
(42826, 81243, 0, 1, 1, 1, 1),
(42826, 81244, 0, 1, 1, 1, 1),
(42826, 81245, 0, 1, 1, 1, 1),
(42826, 81246, 0, 1, 1, 1, 1);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=43237);
INSERT INTO `gameobject_loot_template` VALUES 
(43237, 85180, 0, 1, 1, 1, 1),
(43237, 85181, 0, 1, 1, 1, 1),
(43237, 85182, 0, 1, 1, 1, 1),
(43237, 85183, 0, 1, 1, 1, 1),
(43237, 85184, 0, 1, 1, 1, 1);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=42825);
INSERT INTO `gameobject_loot_template` VALUES 
(42825, 85175, 0, 1, 1, 1, 1),
(42825, 85176, 0, 1, 1, 1, 1),
(42825, 85177, 0, 1, 1, 1, 1),
(42825, 85178, 0, 1, 1, 1, 1),
(42825, 85179, 0, 1, 1, 1, 1);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=43236);
INSERT INTO `gameobject_loot_template` VALUES 
(43236, 81237, 0, 1, 1, 1, 1),
(43236, 81238, 0, 1, 1, 1, 1),
(43236, 81239, 0, 1, 1, 1, 1),
(43236, 81240, 0, 1, 1, 1, 1),
(43236, 81241, 0, 1, 1, 1, 1);

/* Fix Justice Points MSP - SNT */
DELETE FROM `creature_template_currency` WHERE `entry` IN (109010,109019,361485,361567,361634,362205);
INSERT INTO `creature_template_currency` VALUES
(109010, 395, 100),
(109019, 395, 100),
(361485, 395, 100),
(361567, 395, 100),
(361634, 395, 100),
(362205, 395, 100);