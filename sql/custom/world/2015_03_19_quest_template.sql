ALTER TABLE `quest_template`
MODIFY COLUMN `RewardCurrencyCount1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `RewardCurrencyId4`,
MODIFY COLUMN `RewardCurrencyCount2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `RewardCurrencyCount1`,
MODIFY COLUMN `RewardCurrencyCount3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `RewardCurrencyCount2`,
MODIFY COLUMN `RewardCurrencyCount4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `RewardCurrencyCount3`;