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

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0 WHERE `entry` IN (61485,61567,61634,361567,361634,362205);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0 WHERE `groupid` IN (1,2) AND `entry` IN (62205,361485);

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

-- Protectors missing Loot in 10 Normal --
DELETE FROM `creature_loot_template` WHERE (`entry`=3160583);
INSERT INTO `creature_loot_template` VALUES 
(3160583, 71716, 100, 2, 0, 1, 1),
(3160583, 86238, 0, 2, 1, 1, 1),
(3160583, 86272, 0, 2, 1, 1, 1),
(3160583, 86279, 0, 2, 1, 1, 1),
(3160583, 86280, 0, 2, 1, 1, 1),
(3160583, 86281, 0, 2, 1, 1, 1),
(3160583, 86283, 0, 2, 1, 1, 1),
(3160583, 86284, 0, 2, 1, 1, 1),
(3160583, 86297, 0, 2, 1, 1, 1),
(3160583, 86379, 0, 2, 1, 1, 1),
(3160583, 86380, 0, 2, 1, 1, 1),
(3160583, 86381, 0, 2, 1, 1, 1),
(3160583, 86382, 0, 2, 1, 1, 1),
(3160583, 87408, 0, 2, 1, 1, 1),
(3160583, 87409, 0, 2, 1, 1, 1),
(3160583, 87410, 0, 2, 1, 1, 1),
(3160583, 87411, 0, 2, 1, 1, 1),
(3160583, 87412, 0, 2, 1, 1, 1),
(3160583, 87413, 0, 2, 1, 1, 1),
(3160583, 86230, 0, 4, 2, 1, 1),
(3160583, 86318, 0, 4, 2, 1, 1),
(3160583, 86320, 0, 4, 2, 1, 1),
(3160583, 86232, 0, 4, 2, 1, 1),
(3160583, 86317, 0, 4, 2, 1, 1),
(3160583, 86319, 0, 4, 2, 1, 1),
(3160583, 89841, 0, 4, 2, 1, 1),
(3160583, 89885, 0, 4, 2, 1, 1),
(3160583, 90520, 0, 8, 2, 1, 1),
(3160583, 90528, 0, 8, 2, 1, 1),
(3160583, 90530, 0, 8, 2, 1, 1),
(3160583, 90521, 0, 8, 2, 1, 1),
(3160583, 90524, 0, 8, 2, 1, 1),
(3160583, 90518, 0, 8, 2, 1, 1),
(3160583, 90529, 0, 8, 2, 1, 1),
(3160583, 90519, 0, 8, 2, 1, 1),
(3160583, 86316, 0, 4, 3, 1, 1),
(3160583, 86234, 0, 4, 3, 1, 1),
(3160583, 86231, 0, 4, 3, 1, 1),
(3160583, 86233, 0, 4, 3, 1, 1),
(3160583, 86390, 0, 4, 3, 1, 1),
(3160583, 86315, 0, 4, 3, 1, 1),
(3160583, 90526, 0, 8, 3, 1, 1),
(3160583, 90523, 0, 8, 3, 1, 1),
(3160583, 90517, 0, 8, 3, 1, 1),
(3160583, 90522, 0, 8, 3, 1, 1),
(3160583, 90527, 0, 8, 3, 1, 1),
(3160583, 90525, 0, 8, 3, 1, 1);


-- Protectors Loot 10 Heroic (2 items at loot fix) --
DELETE FROM `creature_loot_template` WHERE (`entry`=3260583);
INSERT INTO `creature_loot_template` VALUES 
(3260583, 71716, 100, 2, 0, 1, 1),
(3260583, 86238, 0, 2, 1, 1, 1),
(3260583, 86272, 0, 2, 1, 1, 1),
(3260583, 86279, 0, 2, 1, 1, 1),
(3260583, 86280, 0, 2, 1, 1, 1),
(3260583, 86281, 0, 2, 1, 1, 1),
(3260583, 86283, 0, 2, 1, 1, 1),
(3260583, 86284, 0, 2, 1, 1, 1),
(3260583, 86297, 0, 2, 1, 1, 1),
(3260583, 86379, 0, 2, 1, 1, 1),
(3260583, 86380, 0, 2, 1, 1, 1),
(3260583, 86381, 0, 2, 1, 1, 1),
(3260583, 86382, 0, 2, 1, 1, 1),
(3260583, 87408, 0, 2, 1, 1, 1),
(3260583, 87409, 0, 2, 1, 1, 1),
(3260583, 87410, 0, 2, 1, 1, 1),
(3260583, 87411, 0, 2, 1, 1, 1),
(3260583, 87412, 0, 2, 1, 1, 1),
(3260583, 87413, 0, 2, 1, 1, 1),
(3260583, 87144, 0, 4, 3, 1, 1),
(3260583, 87145, 0, 4, 2, 1, 1),
(3260583, 87146, 0, 4, 2, 1, 1),
(3260583, 87147, 0, 4, 3, 1, 1),
(3260583, 87148, 0, 4, 3, 1, 1),
(3260583, 87149, 0, 4, 2, 1, 1),
(3260583, 87150, 0, 4, 3, 1, 1),
(3260583, 87151, 0, 4, 3, 1, 1),
(3260583, 87152, 0, 4, 3, 1, 1),
(3260583, 87153, 0, 4, 2, 1, 1),
(3260583, 87154, 0, 4, 2, 1, 1),
(3260583, 87155, 0, 4, 2, 1, 1),
(3260583, 89943, 0, 4, 2, 1, 1),
(3260583, 89944, 0, 4, 2, 1, 1),
(3260583, 90503, 0, 8, 3, 1, 1),
(3260583, 90504, 0, 8, 2, 1, 1),
(3260583, 90505, 0, 8, 2, 1, 1),
(3260583, 90506, 0, 8, 2, 1, 1),
(3260583, 90507, 0, 8, 2, 1, 1),
(3260583, 90508, 0, 8, 3, 1, 1),
(3260583, 90509, 0, 8, 3, 1, 1),
(3260583, 90510, 0, 8, 2, 1, 1),
(3260583, 90511, 0, 8, 3, 1, 1),
(3260583, 90512, 0, 8, 3, 1, 1),
(3260583, 90513, 0, 8, 3, 1, 1),
(3260583, 90514, 0, 8, 2, 1, 1),
(3260583, 90515, 0, 8, 2, 1, 1),
(3260583, 90516, 0, 8, 2, 1, 1);

-- Protectors Loot 25 Normal loot fix --
DELETE FROM `creature_loot_template` WHERE (`entry`=3360583);
INSERT INTO `creature_loot_template` VALUES 
(3360583,71716,100,2,0,1,1),
(3360583,86230,0,4,2,1,1),
(3360583,86231,0,4,5,1,1),
(3360583,86232,0,4,3,1,1),
(3360583,86233,0,4,5,1,1),
(3360583,86234,0,4,4,1,1),
(3360583,86238,0,2,1,1,1),
(3360583,86272,0,2,1,1,1),
(3360583,86279,0,2,1,1,1),
(3360583,86280,0,2,1,1,1),
(3360583,86281,0,2,1,1,1),
(3360583,86283,0,2,1,1,1),
(3360583,86284,0,2,1,1,1),
(3360583,86297,0,2,1,1,1),
(3360583,86315,0,4,6,1,1),
(3360583,86316,0,4,3,1,1),
(3360583,86317,0,4,3,1,1),
(3360583,86318,0,4,2,1,1),
(3360583,86319,0,4,4,1,1),
(3360583,86320,0,4,2,1,1),
(3360583,86379,0,2,1,1,1),
(3360583,86380,0,2,1,1,1),
(3360583,86381,0,2,1,1,1),
(3360583,86382,0,2,1,1,1),
(3360583,86390,0,4,5,1,1),
(3360583,87408,0,2,1,1,1),
(3360583,87409,0,2,1,1,1),
(3360583,87410,0,2,1,1,1),
(3360583,87411,0,2,1,1,1),
(3360583,87412,0,2,1,1,1),
(3360583,87413,0,2,1,1,1),
(3360583,89841,0,4,4,1,1),
(3360583,89885,0,4,6,1,1),
(3360583,90517,0,8,5,1,1),
(3360583,90518,0,8,4,1,1),
(3360583,90519,0,8,6,1,1),
(3360583,90520,0,8,2,1,1),
(3360583,90521,0,8,3,1,1),
(3360583,90522,0,8,5,1,1),
(3360583,90523,0,8,4,1,1),
(3360583,90524,0,8,3,1,1),
(3360583,90525,0,8,6,1,1),
(3360583,90526,0,8,3,1,1),
(3360583,90527,0,8,5,1,1),
(3360583,90528,0,8,2,1,1),
(3360583,90529,0,8,4,1,1),
(3360583,90530,0,8,2,1,1);

-- Loot random fixed for all the bosses in ToES --
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0 WHERE `entry` IN (3160999,3260999,3360999,3460999,3560999);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 0 WHERE `entry` IN (3162442,3162983,3262442,3262983,3362442,3362983,3462442,3462983,3562442,3562983);

/* Zhing missing loot fixed */
UPDATE `creature_template` SET `lootid` = 66464 WHERE `entry` = 66464;
DELETE FROM `creature_loot_template` WHERE (`entry`=66464);
INSERT INTO `creature_loot_template` VALUES 
(66464, 89697, 99, 1, 0, 1, 1);