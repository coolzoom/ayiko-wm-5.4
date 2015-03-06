-- [SQL] [Kysio's report] Quests - Mogu Incursions and Riding the Skies requirements fixed (Fixes #5354, refs #5356)
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1270, `RequiredMinRepValue` = 42000 WHERE `Id` = 31266;
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1271, `RequiredMinRepValue` = 42000, `PrevQuestId` = 30140 WHERE `Id` = 30188;
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1271, `RequiredMinRepValue` = 42000, `PrevQuestId` = 30139 WHERE `Id` = 31810;
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1271, `RequiredMinRepValue` = 42000, `PrevQuestId` = 30141 WHERE `Id` = 31811;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19, 20) AND `SourceEntry` IN (30188, 31810, 31811);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(19, 0, 30188, 0, 0, 8, 0, 30187, 0, 0, 0, 0, "", "Accepting Riding the Skies (Jade) requires Flight Training: In Due Course to be rewarded"),
(20, 0, 30188, 0, 0, 8, 0, 30187, 0, 0, 0, 0, "", "Quest mark for Riding the Skies (Jade) requires Flight Training: In Due Course to be rewarded"),
(19, 0, 31810, 0, 0, 8, 0, 30187, 0, 0, 0, 0, "", "Accepting Riding the Skies (Azure) requires Flight Training: In Due Course to be rewarded"),
(20, 0, 31810, 0, 0, 8, 0, 30187, 0, 0, 0, 0, "", "Quest mark for Riding the Skies (Azure) requires Flight Training: In Due Course to be rewarded"),
(19, 0, 31811, 0, 0, 8, 0, 30187, 0, 0, 0, 0, "", "Accepting Riding the Skies (Golden) requires Flight Training: In Due Course to be rewarded"),
(20, 0, 31811, 0, 0, 8, 0, 30187, 0, 0, 0, 0, "", "Quest mark for Riding the Skies (Golden) requires Flight Training: In Due Course to be rewarded");