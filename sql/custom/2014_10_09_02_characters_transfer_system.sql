DROP TABLE IF EXISTS `transfer_incoming_queue`;
CREATE TABLE `transfer_incoming_queue` (
  `id` int(10) unsigned NOT NULL,
  `acc_guid` int(10) unsigned NOT NULL,
  `comp_char_dump` mediumblob NOT NULL,
  `orig_dump_size` int(10) unsigned NOT NULL,
  `new_char_guid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `transfer_outcoming_queue`;
CREATE TABLE `transfer_outcoming_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `char_guid` int(10) unsigned NOT NULL,
  `comp_char_dump` mediumblob NOT NULL,
  `orig_dump_size` int(10) unsigned NOT NULL,
  `processed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `transfer_requests`;
CREATE TABLE `transfer_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `char_guid` int(10) unsigned NOT NULL,
  `processed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
