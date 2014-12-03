-- [SQL] [Internal] Items - Corrected some QA Two-handed weapon being considered one-handed
UPDATE `item_template` SET `InventoryType` = 17 WHERE `entry` IN (97871, 97870, 97868);