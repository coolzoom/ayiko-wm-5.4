DROP TABLE IF EXISTS `mailbox_queue`;
CREATE TABLE `mailbox_queue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `processed` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `receiver` int(11) unsigned NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `money` int(11) unsigned NOT NULL DEFAULT '0',
  `item1` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount1` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `item2` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount2` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `item3` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount3` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `item4` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount4` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `item5` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount5` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`),
  CONSTRAINT `fk__mailbox_queue__characters`
    FOREIGN KEY (`receiver`) REFERENCES `characters` (`guid`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
