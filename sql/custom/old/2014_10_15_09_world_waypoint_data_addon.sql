DROP TABLE IF EXISTS `waypoint_data_addon`;
CREATE TABLE `waypoint_data_addon` (
  `path_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'waypoint_data id',
  `fly` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `walk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `catmullRom` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `speed` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`path_id`),
  CONSTRAINT `fk__waypoint_data__id` FOREIGN KEY (`path_id`) REFERENCES `waypoint_data` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
