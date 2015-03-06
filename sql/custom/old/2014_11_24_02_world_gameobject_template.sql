ALTER TABLE gameobject_template
  ADD COLUMN currencyId smallint(5) UNSIGNED NOT NULL DEFAULT 0 AFTER questItem6,
  ADD COLUMN currencyCnt smallint(5) UNSIGNED NOT NULL DEFAULT 0 AFTER currencyId;
