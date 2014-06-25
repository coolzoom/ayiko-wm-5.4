-- [SQL] Exploits - Fixed a freeze problem
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (139287, 139290);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 139287, 0, 0, 31, 0, 5, 176357, 0, 0, 0, "", "TEMP-Spell Trigger Sunreaver Captive targets a wrong GO entry"),
(13, 2, 139287, 0, 0, 31, 0, 3, 70217, 0, 0, 0, "", "Spell Trigger Sunreaver Captive targets Sunreaver Captive"),
(13, 1, 139290, 0, 0, 31, 0, 5, 176357, 0, 0, 0, "", "TEMP-Spell Trigger Kirin Tor Captive targets a wrong GO entry"),
(13, 2, 139290, 0, 0, 31, 0, 3, 70220, 0, 0, 0, "", "Spell Trigger Kirin Tor Captive targets Kirin Tor Captive");