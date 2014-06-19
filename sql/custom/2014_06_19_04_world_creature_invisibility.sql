ALTER TABLE `creature_template` MODIFY COLUMN entry INT UNSIGNED NOT NULL;

DROP TABLE IF EXISTS `creature_template_invisibility`;
CREATE TABLE `creature_template_invisibility` (
  `entry` int(10) unsigned NOT NULL COMMENT 'entry from creature_template',
  `type` tinyint(3) unsigned NOT NULL COMMENT 'invisibility type',
  `amount` int(11) NOT NULL COMMENT 'detection threshold',
  `comments` tinytext,
  PRIMARY KEY (`entry`),
  CONSTRAINT `fk__creature_template_invisibility__creature_template` FOREIGN KEY (`entry`) REFERENCES `creature_template` (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `creature_invisibility`;
CREATE TABLE `creature_invisibility` (
  `guid` int(10) unsigned NOT NULL COMMENT 'guid from creature',
  `type` tinyint(3) unsigned NOT NULL COMMENT 'invisibility type',
  `amount` int(11) NOT NULL COMMENT 'detection threshold',
  `comments` tinytext,
  PRIMARY KEY (`guid`),
  CONSTRAINT `fk__creature_invisibility__creature` FOREIGN KEY (`guid`) REFERENCES `creature` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
