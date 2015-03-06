DROP TABLE IF EXISTS `character_arena_data`;
CREATE TABLE `character_arena_data` (
  `guid` int unsigned NOT NULL,
  `slot` tinyint unsigned NOT NULL,
  `rating` int unsigned NOT NULL,
  `bestRatingOfWeek` int unsigned NOT NULL,
  `bestRatingOfSeason` int unsigned NOT NULL,
  `matchMakerRating` int unsigned NOT NULL,
  `weekGames` int unsigned NOT NULL,
  `weekWins` int unsigned NOT NULL,
  `prevWeekWins` int unsigned NOT NULL,
  `seasonGames` int unsigned NOT NULL,
  `seasonWins` int unsigned NOT NULL,
  PRIMARY KEY (`guid`, `slot`),
  CONSTRAINT `fk__character_arena_data__characters`
    FOREIGN KEY (`guid`) REFERENCES `characters`(`guid`)
    ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
