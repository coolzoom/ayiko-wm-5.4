CREATE TABLE IF NOT EXISTS `character_lfr_loot_bound` (
	`guid` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY (`guid`, `id`),
	CONSTRAINT `FK_lfr_loot_lock_characters` FOREIGN KEY (`guid`) REFERENCES `characters` (`guid`)
);
