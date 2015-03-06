DROP TABLE IF EXISTS creature_template_currency;
CREATE TABLE creature_template_currency (
  entry int(10) UNSIGNED NOT NULL,
  currencyId mediumint(8) UNSIGNED NOT NULL,
  currencyCount mediumint(8) UNSIGNED NOT NULL,
  PRIMARY KEY (entry, currencyId),
  CONSTRAINT fk__creature_template_currency__creature_template
    FOREIGN KEY (entry) REFERENCES creature_template (entry)
    ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = INNODB DEFAULT CHARSET = UTF8 ROW_FORMAT = DYNAMIC;

INSERT INTO
  creature_template_currency (entry, currencyId, currencyCount)
SELECT
  clc.creature_id, clc.CurrencyId1, CAST(clc.CurrencyCount1 / 100 AS UNSIGNED)
FROM
  creature_loot_currency clc
WHERE
  clc.CurrencyId1 <> 0
  AND CAST(clc.CurrencyCount1 / 100 AS UNSIGNED) <> 0;

INSERT INTO
  creature_template_currency (entry, currencyId, currencyCount)
SELECT
  clc.creature_id, clc.CurrencyId2, CAST(clc.CurrencyCount2 / 100 AS UNSIGNED)
FROM
  creature_loot_currency clc
WHERE
  clc.CurrencyId2 <> 0
  AND CAST(clc.CurrencyCount2 / 100 AS UNSIGNED) <> 0;

INSERT INTO
  creature_template_currency (entry, currencyId, currencyCount)
SELECT
  clc.creature_id, clc.CurrencyId3, CAST(clc.CurrencyCount3 / 100 AS UNSIGNED)
FROM
  creature_loot_currency clc
WHERE
  clc.CurrencyId3 <> 0
  AND CAST(clc.CurrencyCount3 / 100 AS UNSIGNED) <> 0;

DROP TABLE creature_loot_currency;
