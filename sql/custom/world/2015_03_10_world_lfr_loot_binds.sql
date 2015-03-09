DROP TABLE IF EXISTS `lfr_loot_binds`;
CREATE TABLE `lfr_loot_binds` (
  `id` int(11) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `linkGroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`type`,`entry`,`id`),
  UNIQUE KEY `id` (`id`)
);

-- Terrace of Endless Spring
INSERT INTO `lfr_loot_binds` (`id`, `type`, `entry`, `linkGroup`) VALUES
	(3, 3, 60583, 1),
	(4, 3, 60585, 1),
	(5, 3, 60586, 1),
	(6, 3, 60999, 0),
	(1, 5, 212926, 0),
	(2, 5, 213077, 0);