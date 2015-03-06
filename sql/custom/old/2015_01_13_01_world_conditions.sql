-- [SQL] Exploits - Traces of Silithyst no longer activates for characters above level 69 (Feedback #11473)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 29534;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`,`ScriptName`, `Comment`) VALUES
(17, 0, 29534, 0, 27, 69, 4, 0, "", "Traces of Silithyst no longer activates for characters above level 69");