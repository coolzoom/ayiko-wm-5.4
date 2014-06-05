-- -----------------------------------------------------------------------------
-- item_instance
-- -----------------------------------------------------------------------------

ALTER TABLE
  `item_instance`
MODIFY COLUMN
  `owner_guid` INT UNSIGNED,
MODIFY COLUMN
  `creatorGuid` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `giftCreatorGuid` INT UNSIGNED DEFAULT NULL;

UPDATE
  `item_instance`
SET
  `owner_guid` = NULL
WHERE
  `owner_guid` = 0;

UPDATE
  `item_instance`
SET
  `creatorGuid` = NULL
WHERE
  `creatorGuid` = 0;

UPDATE
  `item_instance`
SET
  `giftCreatorGuid` = NULL
WHERE
  `giftCreatorGuid` = 0;

DELETE
  `t1`
FROM
  `item_instance` AS `t1`
  LEFT JOIN `characters` AS `t2`
    ON `t1`.`owner_guid` = `t2`.`guid`
WHERE
  `t1`.`owner_guid` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `item_instance` AS `t1`
  LEFT JOIN `characters` AS `t2`
    ON `t1`.`creatorGuid` = `t2`.`guid`
SET
  `t1`.`creatorGuid` = NULL
WHERE
  `t1`.`creatorGuid` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `item_instance` AS `t1`
  LEFT JOIN `characters` AS `t2`
    ON `t1`.`giftCreatorGuid` = `t2`.`guid`
SET
  `t1`.`giftCreatorGuid` = NULL
WHERE
  `t1`.`giftCreatorGuid` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `item_instance` AS `t1`
  JOIN `mail_items` AS `t2`
    ON `t1`.`guid` = `t2`.`item_guid`
SET
  `t1`.`owner_guid` = NULL;

UPDATE
  `item_instance` AS `t1`
  JOIN `auctionhouse` AS `t2`
    ON `t1`.`guid` = `t2`.`itemguid`
SET
  `t1`.`owner_guid` = NULL;

UPDATE
  `item_instance` AS `t1`
  JOIN `guild_bank_item` AS `t2`
    ON `t1`.`guid` = `t2`.`item_guid`
SET
  `t1`.`owner_guid` = NULL;

DELETE
  `t1`
FROM
  `item_instance` AS `t1`
  LEFT JOIN `mail_items` AS `t2`
    ON `t1`.`guid` = `t2`.`item_guid`
  LEFT JOIN `auctionhouse` AS `t3`
    ON `t1`.`guid` = `t3`.`itemguid`
  LEFT JOIN `guild_bank_item` AS `t4`
    ON `t1`.`guid` = `t4`.`item_guid`
WHERE
  `t1`.`owner_guid` IS NULL
  AND `t2`.`item_guid` IS NULL
  AND `t3`.`itemguid` IS NULL
  AND `t4`.`item_guid` IS NULL;

ALTER TABLE
  `item_instance`
ADD CONSTRAINT
  `fk__item_instance_owner_guid__characters`
    FOREIGN KEY (`owner_guid`) REFERENCES `characters`(`guid`)
    ON DELETE CASCADE,
ADD CONSTRAINT
  `fk__item_instance_creatorGuid__characters`
    FOREIGN KEY (`creatorGuid`) REFERENCES `characters`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__item_instance_giftCreatorGuid__characters`
    FOREIGN KEY (`giftCreatorGuid`) REFERENCES `characters`(`guid`)
    ON DELETE SET NULL;

-- -----------------------------------------------------------------------------
-- auctionhouse
-- -----------------------------------------------------------------------------

DELETE
  `t1`
FROM
  `auctionhouse` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`itemguid` = `t2`.`guid`
WHERE
  `t2`.`guid` IS NULL;

ALTER TABLE
  `auctionhouse`
ADD CONSTRAINT
  `fk__auctionhouse__item_instance`
    FOREIGN KEY (`itemguid`) REFERENCES `item_instance`(`guid`)
    ON DELETE CASCADE;

-- -----------------------------------------------------------------------------
-- character_equipmentsets
-- -----------------------------------------------------------------------------

ALTER TABLE
  `character_equipmentsets`
MODIFY COLUMN
  `item0` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item1` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item2` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item3` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item4` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item5` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item6` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item7` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item8` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item9` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item10` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item11` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item12` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item13` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item14` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item15` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item16` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item17` INT UNSIGNED DEFAULT NULL,
MODIFY COLUMN
  `item18` INT UNSIGNED DEFAULT NULL,
ADD INDEX
  `idx_item0` (`item0`),
ADD INDEX
  `idx_item1` (`item1`),
ADD INDEX
  `idx_item2` (`item2`),
ADD INDEX
  `idx_item3` (`item3`),
ADD INDEX
  `idx_item4` (`item4`),
ADD INDEX
  `idx_item5` (`item5`),
ADD INDEX
  `idx_item6` (`item6`),
ADD INDEX
  `idx_item7` (`item7`),
ADD INDEX
  `idx_item8` (`item8`),
ADD INDEX
  `idx_item9` (`item9`),
ADD INDEX
  `idx_item10` (`item10`),
ADD INDEX
  `idx_item11` (`item11`),
ADD INDEX
  `idx_item12` (`item12`),
ADD INDEX
  `idx_item13` (`item13`),
ADD INDEX
  `idx_item14` (`item14`),
ADD INDEX
  `idx_item15` (`item15`),
ADD INDEX
  `idx_item16` (`item16`),
ADD INDEX
  `idx_item17` (`item17`),
ADD INDEX
  `idx_item18` (`item18`);

UPDATE
  `character_equipmentsets`
SET
  `item0` = NULL
WHERE
  `item0` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item1` = NULL
WHERE
  `item1` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item2` = NULL
WHERE
  `item2` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item3` = NULL
WHERE
  `item3` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item4` = NULL
WHERE
  `item4` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item5` = NULL
WHERE
  `item5` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item6` = NULL
WHERE
  `item6` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item7` = NULL
WHERE
  `item7` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item8` = NULL
WHERE
  `item8` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item9` = NULL
WHERE
  `item9` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item10` = NULL
WHERE
  `item10` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item11` = NULL
WHERE
  `item11` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item12` = NULL
WHERE
  `item12` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item13` = NULL
WHERE
  `item13` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item14` = NULL
WHERE
  `item14` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item15` = NULL
WHERE
  `item15` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item16` = NULL
WHERE
  `item16` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item17` = NULL
WHERE
  `item17` = 0;

UPDATE
  `character_equipmentsets`
SET
  `item18` = NULL
WHERE
  `item18` = 0;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item0` = `t2`.`guid`
SET
  `t1`.`item0` = NULL
WHERE
  `t1`.`item0` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item1` = `t2`.`guid`
SET
  `t1`.`item1` = NULL
WHERE
  `t1`.`item1` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item2` = `t2`.`guid`
SET
  `t1`.`item2` = NULL
WHERE
  `t1`.`item2` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item3` = `t2`.`guid`
SET
  `t1`.`item3` = NULL
WHERE
  `t1`.`item3` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item4` = `t2`.`guid`
SET
  `t1`.`item4` = NULL
WHERE
  `t1`.`item4` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item5` = `t2`.`guid`
SET
  `t1`.`item5` = NULL
WHERE
  `t1`.`item5` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item6` = `t2`.`guid`
SET
  `t1`.`item6` = NULL
WHERE
  `t1`.`item6` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item7` = `t2`.`guid`
SET
  `t1`.`item7` = NULL
WHERE
  `t1`.`item7` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item8` = `t2`.`guid`
SET
  `t1`.`item8` = NULL
WHERE
  `t1`.`item8` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item9` = `t2`.`guid`
SET
  `t1`.`item9` = NULL
WHERE
  `t1`.`item9` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item10` = `t2`.`guid`
SET
  `t1`.`item10` = NULL
WHERE
  `t1`.`item10` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item11` = `t2`.`guid`
SET
  `t1`.`item11` = NULL
WHERE
  `t1`.`item11` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item12` = `t2`.`guid`
SET
  `t1`.`item12` = NULL
WHERE
  `t1`.`item12` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item13` = `t2`.`guid`
SET
  `t1`.`item13` = NULL
WHERE
  `t1`.`item13` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item14` = `t2`.`guid`
SET
  `t1`.`item14` = NULL
WHERE
  `t1`.`item14` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item15` = `t2`.`guid`
SET
  `t1`.`item15` = NULL
WHERE
  `t1`.`item15` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item16` = `t2`.`guid`
SET
  `t1`.`item16` = NULL
WHERE
  `t1`.`item16` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item17` = `t2`.`guid`
SET
  `t1`.`item17` = NULL
WHERE
  `t1`.`item17` IS NOT NULL
  AND `t2`.`guid` IS NULL;

UPDATE
  `character_equipmentsets` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item18` = `t2`.`guid`
SET
  `t1`.`item18` = NULL
WHERE
  `t1`.`item18` IS NOT NULL
  AND `t2`.`guid` IS NULL;

DELETE FROM
  `character_equipmentsets`
WHERE
  `item0` IS NULL
  AND `item1` IS NULL
  AND `item2` IS NULL
  AND `item3` IS NULL
  AND `item4` IS NULL
  AND `item5` IS NULL
  AND `item6` IS NULL
  AND `item7` IS NULL
  AND `item8` IS NULL
  AND `item9` IS NULL
  AND `item10` IS NULL
  AND `item11` IS NULL
  AND `item12` IS NULL
  AND `item13` IS NULL
  AND `item14` IS NULL
  AND `item15` IS NULL
  AND `item16` IS NULL
  AND `item17` IS NULL
  AND `item18` IS NULL;

ALTER TABLE
  `character_equipmentsets`
ADD CONSTRAINT
  `fk__character_equipmentsets_item0__item_instance`
    FOREIGN KEY (`item0`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item1__item_instance`
    FOREIGN KEY (`item1`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item2__item_instance`
    FOREIGN KEY (`item2`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item3__item_instance`
    FOREIGN KEY (`item3`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item4__item_instance`
    FOREIGN KEY (`item4`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item5__item_instance`
    FOREIGN KEY (`item5`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item6__item_instance`
    FOREIGN KEY (`item6`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item7__item_instance`
    FOREIGN KEY (`item7`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item8__item_instance`
    FOREIGN KEY (`item8`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item9__item_instance`
    FOREIGN KEY (`item9`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item10__item_instance`
    FOREIGN KEY (`item10`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item11__item_instance`
    FOREIGN KEY (`item11`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item12__item_instance`
    FOREIGN KEY (`item12`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item13__item_instance`
    FOREIGN KEY (`item13`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item14__item_instance`
    FOREIGN KEY (`item14`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item15__item_instance`
    FOREIGN KEY (`item15`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item16__item_instance`
    FOREIGN KEY (`item16`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item17__item_instance`
    FOREIGN KEY (`item17`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL,
ADD CONSTRAINT
  `fk__character_equipmentsets_item18__item_instance`
    FOREIGN KEY (`item18`) REFERENCES `item_instance`(`guid`)
    ON DELETE SET NULL;

-- -----------------------------------------------------------------------------
-- character_gifts
-- -----------------------------------------------------------------------------

DELETE
  `t1`
FROM
  `character_gifts` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item_guid` = `t2`.`guid`
WHERE
  `t2`.`guid` IS NULL;

ALTER TABLE
  `character_gifts`
ADD CONSTRAINT
  `fk__character_gifts__item_instance`
    FOREIGN KEY (`item_guid`) REFERENCES `item_instance`(`guid`)
    ON DELETE CASCADE;

-- -----------------------------------------------------------------------------
-- character_inventory
-- -----------------------------------------------------------------------------

DELETE
  `t1`
FROM
  `character_inventory` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item` = `t2`.`guid`
WHERE
  `t2`.`guid` IS NULL;

ALTER TABLE
  `character_inventory`
ADD CONSTRAINT
  `fk__character_inventory__item_instance`
    FOREIGN KEY (`item`) REFERENCES `item_instance`(`guid`)
    ON DELETE CASCADE;

-- -----------------------------------------------------------------------------
-- guild_bank_item
-- -----------------------------------------------------------------------------

DELETE
  `t1`
FROM
  `guild_bank_item` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item_guid` = `t2`.`guid`
WHERE
  `t2`.`guid` IS NULL;

ALTER TABLE
  `guild_bank_item`
ADD CONSTRAINT
  `fk__guild_bank_item__item_instance`
    FOREIGN KEY (`item_guid`) REFERENCES `item_instance`(`guid`)
    ON DELETE CASCADE;

-- -----------------------------------------------------------------------------
-- item_refund_instance
-- -----------------------------------------------------------------------------

DELETE
  `t1`
FROM
  `item_refund_instance` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item_guid` = `t2`.`guid`
WHERE
  `t2`.`guid` IS NULL;

DELETE
  `t1`
FROM
  `item_refund_instance` AS `t1`
  LEFT JOIN `characters` AS `t2`
    ON `t1`.`player_guid` = `t2`.`guid`
WHERE
  `t2`.`guid` IS NULL;

ALTER TABLE
  `item_refund_instance`
ADD CONSTRAINT
  `fk__item_refund_instance__item_instance`
    FOREIGN KEY (`item_guid`) REFERENCES `item_instance`(`guid`)
    ON DELETE CASCADE,
ADD CONSTRAINT
  `fk__item_refund_instance__characters`
    FOREIGN KEY (`player_guid`) REFERENCES `characters`(`guid`)
    ON DELETE CASCADE;

-- -----------------------------------------------------------------------------
-- item_soulbound_trade_data
-- -----------------------------------------------------------------------------

DELETE
  `t1`
FROM
  `item_soulbound_trade_data` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`itemGuid` = `t2`.`guid`
WHERE
  `t2`.`guid` IS NULL;

ALTER TABLE
  `item_soulbound_trade_data`
ADD CONSTRAINT
  `fk__item_soulbound_trade_data__item_instance`
    FOREIGN KEY (`itemGuid`) REFERENCES `item_instance`(`guid`)
    ON DELETE CASCADE;

-- -----------------------------------------------------------------------------
-- mail_items
-- -----------------------------------------------------------------------------

DELETE
  `t1`
FROM
  `mail_items` AS `t1`
  LEFT JOIN `item_instance` AS `t2`
    ON `t1`.`item_guid` = `t2`.`guid`
WHERE
  `t2`.`guid` IS NULL;

ALTER TABLE
  `mail_items`
ADD CONSTRAINT
  `fk__mail_items__item_instance`
    FOREIGN KEY (`item_guid`) REFERENCES `item_instance`(`guid`)
    ON DELETE CASCADE;
