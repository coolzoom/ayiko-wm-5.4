DROP TABLE IF EXISTS character_currency;
CREATE TABLE character_currency (
  guid int(10) UNSIGNED NOT NULL,
  currency smallint(5) UNSIGNED NOT NULL,
  season_count int(10) UNSIGNED NOT NULL DEFAULT 0,
  week_count int(10) UNSIGNED NOT NULL,
  current_count int(10) UNSIGNED NOT NULL DEFAULT 0,
  flags tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (guid, currency),
  CONSTRAINT fk__character_currency__characters
    FOREIGN KEY (guid) REFERENCES characters (guid)
    ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = INNODB DEFAULT CHARSET = utf8 ROW_FORMAT = DYNAMIC;

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
