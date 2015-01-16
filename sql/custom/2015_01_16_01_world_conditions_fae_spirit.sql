-- [SQL] Npcs - Darkwoods Faerie: Fae Spirit will now target the right creature (Feedback #11686)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (13, 17) AND `SourceEntry` = 122567;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 122567, 0, 0, 31, 0, 3, 62753, 0, 0, 0, "", "Fae Spirit targets Fae Spirit");