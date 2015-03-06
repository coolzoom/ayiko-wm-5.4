DROP TABLE IF EXISTS `creature_template_path`;
DROP TABLE IF EXISTS `creature_template_mount`;
DROP TABLE IF EXISTS `creature_template_bytes`;
DROP TABLE IF EXISTS `creature_template_emote`;
DROP TABLE IF EXISTS `creature_template_aura`;

DROP TABLE IF EXISTS `waypoint_data_tmp`;
CREATE TABLE `waypoint_data_tmp` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Creature GUID',
  `point` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `move_flag` tinyint(1) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0',
  `action_chance` smallint(3) NOT NULL DEFAULT '100',
  `wpguid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`point`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

REPLACE INTO `waypoint_data_tmp`
  SELECT * FROM `waypoint_data`;

DROP TABLE `waypoint_data`;
RENAME TABLE `waypoint_data_tmp` TO `waypoint_data`;

DELETE `t1`
  FROM `creature_template_addon` `t1`
  LEFT JOIN `creature_template` `t2`
  ON `t1`.`entry` = `t2`.`entry`
  WHERE `t2`.`entry` IS NULL;

CREATE TABLE `creature_template_path` (
  `entry` INT UNSIGNED NOT NULL,
  `path` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`entry`),
  CONSTRAINT `fk__creature_template_path__creature_template`
    FOREIGN KEY (`entry`) REFERENCES `creature_template`(`entry`)
    ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk__creature_template_path__waypoint_data`
    FOREIGN KEY (`path`) REFERENCES `waypoint_data`(`id`)
    ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=INNODB ROW_FORMAT=DYNAMIC;

UPDATE `creature_template_addon` AS `t1`
  LEFT JOIN `waypoint_data` AS `t2`
  ON `t1`.`path_id` = `t2`.`id`
  SET `t1`.`path_id` = 0
  WHERE `t1`.`path_id` <> 0 AND `t2`.`id` IS NULL;

INSERT INTO `creature_template_path`
  SELECT `entry`, `path_id`
  FROM `creature_template_addon`
  WHERE `path_id` <> 0;

CREATE TABLE `creature_template_mount` (
  `entry` INT UNSIGNED NOT NULL,
  `mount` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`entry`),
  CONSTRAINT `fk__creature_template_mount__creature_template`
    FOREIGN KEY (`entry`) REFERENCES `creature_template`(`entry`)
    ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk__creature_template_mount__dbc_creature_display_info`
    FOREIGN KEY (`mount`) REFERENCES `dbc_creature_display_info`(`id`)
    ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=INNODB ROW_FORMAT=DYNAMIC;

INSERT INTO `creature_template_mount`
  SELECT `entry`, `mount`
  FROM `creature_template_addon`
  WHERE `mount` <> 0;

CREATE TABLE `creature_template_bytes` (
  `entry` INT UNSIGNED NOT NULL,
  `index` TINYINT UNSIGNED NOT NULL,
  `bytes` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`entry`, `index`),
  CONSTRAINT `fk__creature_template_bytes__creature_template`
    FOREIGN KEY (`entry`) REFERENCES `creature_template`(`entry`)
    ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=INNODB ROW_FORMAT=DYNAMIC;

INSERT INTO `creature_template_bytes`
  SELECT `entry`, 0, `bytes1`
  FROM `creature_template_addon`
  WHERE `bytes1` <> 0;

INSERT INTO `creature_template_bytes`
  SELECT `entry`, 1, `bytes2`
  FROM `creature_template_addon`
  WHERE `bytes2` <> 0;

CREATE TABLE `creature_template_emote` (
  `entry` INT UNSIGNED NOT NULL,
  `emote` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`entry`),
  CONSTRAINT `fk__creature_template_emote__creature_template`
    FOREIGN KEY (`entry`) REFERENCES `creature_template`(`entry`)
    ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk__creature_template_emote__dbc_emotes`
    FOREIGN KEY (`emote`) REFERENCES `dbc_emotes`(`id`)
    ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=INNODB ROW_FORMAT=DYNAMIC;

INSERT INTO `creature_template_emote`
  SELECT `entry`, `emote`
  FROM `creature_template_addon`
  WHERE `emote` <> 0;

CREATE TABLE `creature_template_aura` (
  `entry` INT UNSIGNED NOT NULL,
  `aura` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`entry`, `aura`),
  CONSTRAINT `fk__creature_template_aura__creature_template`
    FOREIGN KEY (`entry`) REFERENCES `creature_template`(`entry`)
    ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk__creature_template_aura__dbc_spell`
    FOREIGN KEY (`aura`) REFERENCES `dbc_spell`(`id`)
    ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=INNODB ROW_FORMAT=DYNAMIC;

update creature_template_addon set auras = '84512 83406' where entry = 44713;
update creature_template_addon set auras = '81940 81941' where entry = 43801;
update creature_template_addon set auras = '81646' where entry = 43650;
update creature_template_addon set auras = '82197' where entry = 43926;
update creature_template_addon set auras = '83048' where entry = 44541;
update creature_template_addon set auras = '83127' where entry = 44711;
update creature_template_addon set auras = '82671' where entry = 44924;
update creature_template_addon set auras = '84186' where entry = 45096;
update creature_template_addon set auras = '84249' where entry = 45126;
update creature_template_addon set auras = '89698' where entry = 48092;
update creature_template_addon set auras = '91179' where entry = 48904;
update creature_template_addon set auras = '91195' where entry = 48907;
update creature_template_addon set auras = '82671' where entry = 49321;

DROP PROCEDURE IF EXISTS `temp_auras_fetcher`;

DELIMITER ;;

CREATE PROCEDURE `temp_auras_fetcher` ()
SQL SECURITY INVOKER
BEGIN
  DECLARE `done` BOOLEAN DEFAULT FALSE;
  DECLARE `creatureEntry` MEDIUMINT UNSIGNED;
  DECLARE `aurasString` TEXT;
  DECLARE `countOfTokens` MEDIUMINT;
  DECLARE `aura` INT UNSIGNED;
  DECLARE `auraIsValid` INT UNSIGNED;
  DECLARE `cur` CURSOR FOR
    SELECT `entry`, RTRIM(`auras`), LENGTH(RTRIM(`auras`)) - LENGTH(REPLACE(RTRIM(`auras`), ' ', '')) + 1
    FROM `creature_template_addon`
    WHERE `auras` <> '' AND `auras` IS NOT NULL;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET `done` = TRUE;

  OPEN `cur`;

  read_loop: LOOP
    FETCH `cur` INTO `creatureEntry`, `aurasString`, `countOfTokens`;
    IF `done` THEN
      LEAVE read_loop;
    END IF;
    WHILE `countOfTokens` > 0 DO
      SET `aura` = REPLACE(SUBSTRING(SUBSTRING_INDEX(`aurasString`, ' ', `countOfTokens`), LENGTH(SUBSTRING_INDEX(`aurasString`, ' ', `countOfTokens` - 1)) + 1), ' ', '');
      SELECT COUNT(`id`) INTO `auraIsValid` FROM `dbc_spell` WHERE `id` = `aura`;
      IF `auraIsValid` > 0 THEN
        INSERT IGNORE INTO `creature_template_aura` VALUES (`creatureEntry`, `aura`);
      END IF;
      SET `countOfTokens` = `countOfTokens` - 1;
    END WHILE;
  END LOOP;

  CLOSE `cur`;
END;;

DELIMITER ;

CALL `temp_auras_fetcher`();
DROP PROCEDURE `temp_auras_fetcher`;

DROP TABLE `creature_template_addon`;
