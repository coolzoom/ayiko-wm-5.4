ALTER TABLE character_currency
  CHANGE COLUMN total_count current_count int(10) UNSIGNED NOT NULL DEFAULT 0,
  MODIFY COLUMN week_count int(10) UNSIGNED NOT NULL DEFAULT 0,
  CHANGE COLUMN season_total season_count int(10) UNSIGNED NOT NULL DEFAULT 0,
  MODIFY COLUMN flags tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  DROP COLUMN weekCap,
  DROP COLUMN needResetCap;

UPDATE character_currency SET season_count = 400000 WHERE currency IN (390, 484, 484, 692) AND season_count > 400000;

DROP TABLE IF EXISTS character_cp_weekcap;
CREATE TABLE character_cp_weekcap (
  guid int(10) UNSIGNED NOT NULL DEFAULT 0,
  max_personal_rating smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  arena_cap smallint(5) UNSIGNED NOT NULL DEFAULT 1350,
  max_rated_bg_rating smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  rated_bg_cap smallint(5) UNSIGNED NOT NULL DEFAULT 1647,
  PRIMARY KEY (guid),
  CONSTRAINT fk__character_cp_weekcap__characters
    FOREIGN KEY (guid) REFERENCES characters (guid)
    ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = INNODB DEFAULT CHARSET = utf8 ROW_FORMAT = DYNAMIC;

DROP FUNCTION IF EXISTS CP_CAP_FROM_RATING;

DELIMITER ;;
CREATE FUNCTION CP_CAP_FROM_RATING(
  rating SMALLINT UNSIGNED
)
  RETURNS smallint(5) unsigned
  DETERMINISTIC
  SQL SECURITY INVOKER
BEGIN
  IF rating <= 1500 THEN
    RETURN 1800;
  ELSEIF rating > 3000 THEN
    SET rating = 3600;
  END IF;

  RETURN 1.25875 * (1400.0 / (1 + 1650.0 / EXP(0.0041225 * rating))) + 1400.0 + 0.5;
END;;
DELIMITER ;

DROP TABLE IF EXISTS character_rated_bg_stats;
CREATE TABLE character_rated_bg_stats (
  guid int(10) UNSIGNED NOT NULL,
  personalRating int(10) UNSIGNED NOT NULL,
  matchmakerRating int(10) UNSIGNED NOT NULL,
  seasonGames int(10) UNSIGNED NOT NULL,
  weekGames int(10) UNSIGNED NOT NULL,
  thisWeekWins int(10) UNSIGNED NOT NULL,
  prevWeekWins int(10) UNSIGNED NOT NULL,
  bestWeekRating int(10) UNSIGNED NOT NULL,
  bestSeasonRating int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (guid),
  CONSTRAINT fk__character_rated_bg_stats__characters
    FOREIGN KEY (guid) REFERENCES characters (guid)
    ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = INNODB DEFAULT CHARSET = utf8 ROW_FORMAT = DYNAMIC;
