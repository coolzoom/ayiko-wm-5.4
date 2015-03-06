-- [SQL] Exploits - Items: Potent Murloc Pheromone targets corrected
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 82799;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 82799, 0, 0, 31, 0, 3, 44262, 0, 0, 0, 0, '', "Potent Murloc Pheromone targets Murlocs");

-- [SQL] Exploits - Items: Bag of Clams targets corrected (Refs #2270)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 123803;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 123803, 0, 0, 31, 0, 3, 63376, 0, 0, 0, 0, '', "Bag of Clams targets Coldwhisker Otter");

-- [SQL] Exploits - Items: Rancher's Lariat targets corrected (Refs #2103)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 105355;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 105355, 0, 0, 31, 0, 3, 56171, 0, 0, 0, 0, '', "Rancher's Lariat targets Great White Plainshawk");