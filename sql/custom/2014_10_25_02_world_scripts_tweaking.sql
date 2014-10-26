-- [SQL] [Internal] Added primary keys to *_scripts tables in order to forbid any possibility of duplicates, Summon timers have been mass-tweaked in all *_scripts tables
-- event_scripts
ALTER TABLE `event_scripts`
  ADD PRIMARY KEY (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`);
  
UPDATE
  `event_scripts` AS `t1`,
  `creature_template` AS `t2`
SET
  `t1`.`datalong2` = LEAST((SELECT CASE `t2`.`rank`
                            WHEN 0 THEN 120000
                            WHEN 1 THEN 180000
                            WHEN 3 THEN 900000
                            END),
                           `t1`.`datalong2`)
WHERE
  `t1`.`command` = 10
  AND `t1`.`datalong` = `t2`.`entry`
  AND `t1`.`datalong2` > 90000
  AND `t2`.`rank` IN (0, 1, 3);

-- waypoint_scripts
ALTER TABLE `waypoint_scripts`
  ADD PRIMARY KEY (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`);

UPDATE
  `waypoint_scripts` AS `t1`,
  `creature_template` AS `t2`
SET
  `t1`.`datalong2` = LEAST((SELECT CASE `t2`.`rank`
                            WHEN 0 THEN 120000
                            WHEN 1 THEN 180000
                            WHEN 3 THEN 900000
                            END),
                           `t1`.`datalong2`)
WHERE
  `t1`.`command` = 10
  AND `t1`.`datalong` = `t2`.`entry`
  AND `t1`.`datalong2` > 90000
  AND `t2`.`rank` IN (0, 1, 3);

-- gameobject_scripts
ALTER TABLE `gameobject_scripts`
  ADD PRIMARY KEY (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`);

UPDATE
  `gameobject_scripts` AS `t1`,
  `creature_template` AS `t2`
SET
  `t1`.`datalong2` = LEAST((SELECT CASE `t2`.`rank`
                            WHEN 0 THEN 120000
                            WHEN 1 THEN 180000
                            WHEN 3 THEN 900000
                            END),
                           `t1`.`datalong2`)
WHERE
  `t1`.`command` = 10
  AND `t1`.`datalong` = `t2`.`entry`
  AND `t1`.`datalong2` > 90000
  AND `t2`.`rank` IN (0, 1, 3);

-- quest_start_scripts
ALTER TABLE `quest_start_scripts`
  ADD PRIMARY KEY (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`);

UPDATE
  `quest_start_scripts` AS `t1`,
  `creature_template` AS `t2`
SET
  `t1`.`datalong2` = LEAST((SELECT CASE `t2`.`rank`
                            WHEN 0 THEN 120000
                            WHEN 1 THEN 180000
                            WHEN 3 THEN 900000
                            END),
                           `t1`.`datalong2`)
WHERE
  `t1`.`command` = 10
  AND `t1`.`datalong` = `t2`.`entry`
  AND `t1`.`datalong2` > 90000
  AND `t2`.`rank` IN (0, 1, 3);

-- quest_end_scripts
ALTER TABLE `quest_end_scripts`
  ADD PRIMARY KEY (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`);

UPDATE
  `quest_end_scripts` AS `t1`,
  `creature_template` AS `t2`
SET
  `t1`.`datalong2` = LEAST((SELECT CASE `t2`.`rank`
                            WHEN 0 THEN 120000
                            WHEN 1 THEN 180000
                            WHEN 3 THEN 900000
                            END),
                           `t1`.`datalong2`)
WHERE
  `t1`.`command` = 10
  AND `t1`.`datalong` = `t2`.`entry`
  AND `t1`.`datalong2` > 90000
  AND `t2`.`rank` IN (0, 1, 3);

-- gossip_scripts
ALTER TABLE `gossip_scripts`
  ADD PRIMARY KEY (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`);

UPDATE
  `gossip_scripts` AS `t1`,
  `creature_template` AS `t2`
SET
  `t1`.`datalong2` = LEAST((SELECT CASE `t2`.`rank`
                            WHEN 0 THEN 120000
                            WHEN 1 THEN 180000
                            WHEN 3 THEN 900000
                            END),
                           `t1`.`datalong2`)
WHERE
  `t1`.`command` = 10
  AND `t1`.`datalong` = `t2`.`entry`
  AND `t1`.`datalong2` > 90000
  AND `t2`.`rank` IN (0, 1, 3);

-- spell scripts
DROP TABLE IF EXISTS `spell_scripts_new`;
CREATE TABLE `spell_scripts_new` (
  `id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `effIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `delay` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `command` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `datalong` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `datalong2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `dataint` INT(11) NOT NULL DEFAULT '0',
  `x` FLOAT NOT NULL DEFAULT '0',
  `y` FLOAT NOT NULL DEFAULT '0',
  `z` FLOAT NOT NULL DEFAULT '0',
  `o` FLOAT NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`, `effIndex`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT IGNORE INTO
  `spell_scripts_new`
SELECT
  `id`, `effIndex`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`
FROM
  `spell_scripts`;

DROP TABLE IF EXISTS `spell_scripts`;
RENAME TABLE `spell_scripts_new` TO `spell_scripts`;

DELETE `t1`
FROM `spell_scripts` AS `t1`
LEFT JOIN `dbc_spell` AS `t2`
ON `t1`.`id` = `t2`.`id`
WHERE `t2`.`id` IS NULL;

ALTER TABLE `spell_scripts`
  ADD CONSTRAINT `fk__spell_scripts__dbc_spell`
    FOREIGN KEY (`id`) REFERENCES `dbc_spell`(`id`)
    ON DELETE CASCADE ON UPDATE RESTRICT;

UPDATE
  `spell_scripts` AS `t1`,
  `creature_template` AS `t2`
SET
  `t1`.`datalong2` = LEAST((SELECT CASE `t2`.`rank`
                            WHEN 0 THEN 120000
                            WHEN 1 THEN 180000
                            WHEN 3 THEN 900000
                            END),
                           `t1`.`datalong2`)
WHERE
  `t1`.`command` = 10
  AND `t1`.`datalong` = `t2`.`entry`
  AND `t1`.`datalong2` > 90000
  AND `t2`.`rank` IN (0, 1, 3);    

-- Exploits:
-- Quests - Lefty Loosey, Righty Tighty summoned enemies will now last for 90 seconds instead 10 minutes
-- Quests - Despawn timers for Ornolf the Scarred and Doctor Sabnok have been decreased
-- Quests - Finding the Phylactery encounter duration has been shortened to 60 seconds down from 15 minutes
-- Instances - Uldaman: Altar of Keepers mini bosses duplicate summons have been removed
-- Quests - Gearmaster Mechazod summon will now last for 90 seconds instead 7 minutes
-- Quests - The Archmage's Staff: Ekkorash the Inquisitor despawn timer has been optimized
-- Quests - Abjurist Belmara, Conjurer Luminrath and Cohlien Frostweaver have been fixed
-- Quests - Stop the Ascension!: Halfdan the Ice-Hearted will now have a proper AI and his summon will last 3 minutes down from 15 minutes
UPDATE `event_scripts` SET `datalong2` = 120000 WHERE `command` = 10 AND `datalong` IN (1770, 2044, 2179, 2569, 2570, 2624, 3129, 3456,
4100, 4490, 4504, 5402, 6069, 6070, 6748, 7076, 7077, 7167, 7309, 7411, 7734, 7735, 8392, 8578, 8581, 8608, 9598, 9684, 10040,
10041, 10737, 10741, 10882, 11886, 11887, 11920, 12319, 12321, 12369, 14482, 14504, 14514, 14566, 14748, 16119, 16292, 16878,
16939, 16994, 16996, 17206, 17207, 17359, 17715, 19420, 19599, 19616, 19952, 19956, 19991, 20518, 21238, 21294, 21319, 21735,
21767, 21876, 21894, 22114, 22369, 22452, 23789, 23864, 24790, 24796, 25629, 25742, 25794, 25986, 27238, 27355, 28317, 28636,
28639, 28795, 29626, 32576, 33439, 33455, 33457, 17233, 3470); -- normal summons

UPDATE `event_scripts` SET `datalong2` = 180000 WHERE `command` = 10 AND `datalong` IN (634, 2707, 2748, 2937, 7273, 7664, 8438, 8443,
9816, 10204, 10506, 10584, 11058, 11120, 11121, 14351, 14483, 14502, 14511, 14512, 14513, 14516, 14518, 14519, 14520, 14521,
15246, 15250, 15554, 15623, 16387, 17910, 17911, 17912, 17913, 17914, 18182, 18544, 18707, 19055, 19305, 19938, 19963, 21181,
21514, 22137, 22374, 22441, 22473, 22890, 22891, 22892, 22910, 23035, 23061, 23261, 23281, 23282, 24019, 24844, 26231, 26237,
27002, 29368, 29801, 29851, 30152, 30461, 30924, 31016, 32162, 32163); -- elite summons

UPDATE `event_scripts` SET `datalong2` = 900000 WHERE `command` = 10 AND `datalong` IN (14515, 14862, 15114, 15571, 17225); -- boss summons

UPDATE `event_scripts` SET `datalong2` = 90000 WHERE `command` = 10 AND `datalong` IN (19493, 19547, 19549, 19579, 19580, 26225, 25830,
25831, 25832, 25833, 25834, 30992, 35012); -- optimized summons

-- cleanup
UPDATE `event_scripts` SET `datalong2` = 60000 WHERE `command` = 10 AND `datalong` = 26224;
UPDATE `event_scripts` SET `datalong2` = 180000 WHERE `command` = 10 AND `datalong` = 23671;
UPDATE `event_scripts` SET `delay` = 0 WHERE `command` = 10 AND `datalong` IN (19547, 19549, 19579, 19580);
DELETE FROM `event_scripts` WHERE `command` = 10 AND `datalong` = 21217;
DELETE FROM `event_scripts` WHERE `id` = 2228;
UPDATE `event_scripts` SET `datalong2` = 900000 WHERE `command` = 10 AND `datalong2` = 0; -- Mothallus didn't have timer set