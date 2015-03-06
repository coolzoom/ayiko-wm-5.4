-- [SQL] Npcs - Ayla Shadowstorm vendor list will be unlocked after completing Filling the Moonwell quest (Fixes #11401)
UPDATE `creature_template` SET `gossip_menu_id` = 1120, `npcflag` = 131 WHERE `entry` = 53881;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 23 AND `SourceGroup` = 53881;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, 53881, 70109, 0, 0, 8, 0, 29279, 0, 0, 0, 0, 0, "", "Nepenthe-Molten Front - Ayla Shadowstorm Only sell item if completed Filling the Moonwell quest"),
(23, 53881, 70110, 0, 0, 8, 0, 29279, 0, 0, 0, 0, 0, "", "Nepenthe-Molten Front - Ayla Shadowstorm Only sell item if completed Filling the Moonwell quest"),
(23, 53881, 70111, 0, 0, 8, 0, 29279, 0, 0, 0, 0, 0, "", "Nepenthe-Molten Front - Ayla Shadowstorm Only sell item if completed Filling the Moonwell quest"),
(23, 53881, 70112, 0, 0, 8, 0, 29279, 0, 0, 0, 0, 0, "", "Nepenthe-Molten Front - Ayla Shadowstorm Only sell item if completed Filling the Moonwell quest"),
(23, 53881, 70113, 0, 0, 8, 0, 29279, 0, 0, 0, 0, 0, "", "Nepenthe-Molten Front - Ayla Shadowstorm Only sell item if completed Filling the Moonwell quest"),
(23, 53881, 70142, 0, 0, 8, 0, 29279, 0, 0, 0, 0, 0, "", "Nepenthe-Molten Front - Ayla Shadowstorm Only sell item if completed Filling the Moonwell quest"),
(23, 53881, 70143, 0, 0, 8, 0, 29279, 0, 0, 0, 0, 0, "", "Nepenthe-Molten Front - Ayla Shadowstorm Only sell item if completed Filling the Moonwell quest"),
(23, 53881, 70160, 0, 0, 8, 0, 29279, 0, 0, 0, 0, 0, "", "Nepenthe-Molten Front - Ayla Shadowstorm Only sell item if completed Filling the Moonwell quest"),
(23, 53881, 70161, 0, 0, 8, 0, 29279, 0, 0, 0, 0, 0, "", "Nepenthe-Molten Front - Ayla Shadowstorm Only sell item if completed Filling the Moonwell quest"),
(23, 53881, 70174, 0, 0, 8, 0, 29279, 0, 0, 0, 0, 0, "", "Nepenthe-Molten Front - Ayla Shadowstorm Only sell item if completed Filling the Moonwell quest"),
(23, 53881, 70175, 0, 0, 8, 0, 29279, 0, 0, 0, 0, 0, "", "Nepenthe-Molten Front - Ayla Shadowstorm Only sell item if completed Filling the Moonwell quest"),
(23, 53881, 70176, 0, 0, 8, 0, 29279, 0, 0, 0, 0, 0, "", "Nepenthe-Molten Front - Ayla Shadowstorm Only sell item if completed Filling the Moonwell quest");