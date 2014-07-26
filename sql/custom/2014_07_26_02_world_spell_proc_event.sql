-- [SQL] Items - Darkmoon Card: Blue Dragon no longer activates for characters above level 69 (Feedback #5025)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 23688;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`,`ScriptName`, `Comment`) VALUES
(17, 0, 23688, 0, 27, 69, 4, 0, "", "Darkmoon Card: Blue Dragon no longer activates for characters above level 69");