-- [SQL] Items - 65 more items will now have a real time duration
UPDATE `item_template` SET `duration` = 600, `flagsCustom` = 1 WHERE `entry` = 15447;
UPDATE `item_template` SET `duration` = 1800, `flagsCustom` = 1 WHERE `entry` = 34494;
UPDATE `item_template` SET `duration` = 3600, `flagsCustom` = 1 WHERE `entry` IN (28110, 28131);
UPDATE `item_template` SET `duration` = 86400, `flagsCustom` = 1 WHERE `entry` IN (21711, 33226);
UPDATE `item_template` SET `duration` = 172800, `flagsCustom` = 1 WHERE `entry` IN (34412, 46710);
UPDATE `item_template` SET `duration` = 604800, `flagsCustom` = 1 WHERE `entry` IN (20561, 20562, 20563, 20564, 20565, 20566, 20567, 20568, 20569, 20570, 20571, 20392, 20573, 20574, 20391, 46887, 46797, 31880, 31881, 18598, 34000, 34001, 34002, 34003, 46796, 20572, 18597, 46793, 46784, 46397, 46396, 44855, 44812, 44835, 44836, 44837, 44838, 44839, 44840, 44844, 44853, 44854, 46888);
UPDATE `item_template` SET `duration` = 864000, `flagsCustom` = 1 WHERE `entry` IN (21325, 21328, 21812, 22261, 34191, 34684);
UPDATE `item_template` SET `duration` = 1209600, `flagsCustom` = 1 WHERE `entry` IN (10790, 10791, 18904, 44834, 37583, 37584, 37585, 37582);
-- [SQL] Items - Foam Sword Rack and Dragon Kite 2-Pack will now be linked to Children's Week (Feedback #1519)
UPDATE `item_template` SET `HolidayId` = 201 WHERE `entry` IN (68890, 69231, 69057);