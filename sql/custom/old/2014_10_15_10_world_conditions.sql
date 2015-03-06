ALTER TABLE `conditions`
  ADD COLUMN `ErrorType` mediumint unsigned NOT NULL DEFAULT 0 AFTER `NegativeCondition`;
