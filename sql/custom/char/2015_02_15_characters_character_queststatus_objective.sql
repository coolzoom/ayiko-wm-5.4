CREATE TABLE IF NOT EXISTS `character_queststatus_objective` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `objectiveId` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`objectiveId`,`guid`),
  KEY `fk__character_queststatus_objective__characters` (`guid`),
  CONSTRAINT `fk__character_queststatus_objective__characters` FOREIGN KEY (`guid`) REFERENCES `characters` (`guid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
