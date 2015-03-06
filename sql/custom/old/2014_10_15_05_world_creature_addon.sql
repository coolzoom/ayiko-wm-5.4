DROP TABLE IF EXISTS `creature_path`;
DROP TABLE IF EXISTS `creature_mount`;
DROP TABLE IF EXISTS `creature_bytes`;
DROP TABLE IF EXISTS `creature_emote`;
DROP TABLE IF EXISTS `creature_aura`;

DELETE `t1`
  FROM `creature_addon` `t1`
  LEFT JOIN `creature` `t2`
  ON `t1`.`guid` = `t2`.`guid`
  WHERE `t2`.`guid` IS NULL;

CREATE TABLE `creature_path` (
  `guid` INT UNSIGNED NOT NULL,
  `path` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`),
  CONSTRAINT `fk__creature_path__creature`
    FOREIGN KEY (`guid`) REFERENCES `creature`(`guid`)
    ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk__creature_path__waypoint_data`
    FOREIGN KEY (`path`) REFERENCES `waypoint_data`(`id`)
    ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=INNODB ROW_FORMAT=DYNAMIC;

UPDATE `creature_addon` AS `t1`
LEFT JOIN `waypoint_data` AS `t2`
ON `t1`.`path_id` = `t2`.`id`
SET `t1`.`path_id` = 0
WHERE `t1`.`path_id` <> 0 AND `t2`.`id` IS NULL;

INSERT INTO `creature_path`
  SELECT `guid`, `path_id`
  FROM `creature_addon`
  WHERE `path_id` <> 0;

CREATE TABLE `creature_mount` (
  `guid` INT UNSIGNED NOT NULL,
  `mount` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`),
  CONSTRAINT `fk__creature_mount__creature`
    FOREIGN KEY (`guid`) REFERENCES `creature`(`guid`)
    ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk__creature_mount__dbc_creature_display_info`
    FOREIGN KEY (`mount`) REFERENCES `dbc_creature_display_info`(`id`)
    ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=INNODB ROW_FORMAT=DYNAMIC;

INSERT INTO `creature_mount`
  SELECT `guid`, `mount`
  FROM `creature_addon`
  WHERE `mount` <> 0;

CREATE TABLE `creature_bytes` (
  `guid` INT UNSIGNED NOT NULL,
  `index` TINYINT UNSIGNED NOT NULL,
  `bytes` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`, `index`),
  CONSTRAINT `fk__creature_bytes__creature`
    FOREIGN KEY (`guid`) REFERENCES `creature`(`guid`)
    ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=INNODB ROW_FORMAT=DYNAMIC;

INSERT INTO `creature_bytes`
  SELECT `guid`, 0, `bytes1`
  FROM `creature_addon`
  WHERE `bytes1` <> 0;

INSERT INTO `creature_bytes`
  SELECT `guid`, 1, `bytes2`
  FROM `creature_addon`
  WHERE `bytes2` <> 0;

CREATE TABLE `creature_emote` (
  `guid` INT UNSIGNED NOT NULL,
  `emote` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`),
  CONSTRAINT `fk__creature_emote__creature`
    FOREIGN KEY (`guid`) REFERENCES `creature`(`guid`)
    ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk__creature_emote__dbc_emotes`
    FOREIGN KEY (`emote`) REFERENCES `dbc_emotes`(`id`)
    ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=INNODB ROW_FORMAT=DYNAMIC;

INSERT INTO `creature_emote`
  SELECT `guid`, `emote`
  FROM `creature_addon`
  WHERE `emote` <> 0;

CREATE TABLE `creature_aura` (
  `guid` INT UNSIGNED NOT NULL,
  `aura` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`, `aura`),
  CONSTRAINT `fk__creature_aura__creature`
    FOREIGN KEY (`guid`) REFERENCES `creature`(`guid`)
    ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk__creature_aura__dbc_spell`
    FOREIGN KEY (`aura`) REFERENCES `dbc_spell`(`id`)
    ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=INNODB ROW_FORMAT=DYNAMIC;

DROP PROCEDURE IF EXISTS `temp_auras_fetcher`;

DELIMITER ;;

CREATE PROCEDURE `temp_auras_fetcher` ()
SQL SECURITY INVOKER
BEGIN
  DECLARE `done` BOOLEAN DEFAULT FALSE;
  DECLARE `creatureGuid` MEDIUMINT UNSIGNED;
  DECLARE `aurasString` TEXT;
  DECLARE `countOfTokens` MEDIUMINT;
  DECLARE `aura` INT UNSIGNED;
  DECLARE `auraIsValid` INT UNSIGNED;
  DECLARE `cur` CURSOR FOR
    SELECT `guid`, RTRIM(`auras`), LENGTH(RTRIM(`auras`)) - LENGTH(REPLACE(RTRIM(`auras`), ' ', '')) + 1
    FROM `creature_addon`
    WHERE `auras` <> '' AND `auras` IS NOT NULL;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET `done` = TRUE;

  OPEN `cur`;

  read_loop: LOOP
    FETCH `cur` INTO `creatureGuid`, `aurasString`, `countOfTokens`;
    IF `done` THEN
      LEAVE read_loop;
    END IF;
    WHILE `countOfTokens` > 0 DO
      SET `aura` = REPLACE(SUBSTRING(SUBSTRING_INDEX(`aurasString`, ' ', `countOfTokens`), LENGTH(SUBSTRING_INDEX(`aurasString`, ' ', `countOfTokens` - 1)) + 1), ' ', '');
      SELECT COUNT(`id`) INTO `auraIsValid` FROM `dbc_spell` WHERE `id` = `aura`;
      IF `auraIsValid` > 0 THEN
        INSERT IGNORE INTO `creature_aura` VALUES (`creatureGuid`, `aura`);
      END IF;
      SET `countOfTokens` = `countOfTokens` - 1;
    END WHILE;
  END LOOP;

  CLOSE `cur`;
END;;

DELIMITER ;

CALL `temp_auras_fetcher`();
DROP PROCEDURE `temp_auras_fetcher`;

DROP TABLE `creature_addon`;
