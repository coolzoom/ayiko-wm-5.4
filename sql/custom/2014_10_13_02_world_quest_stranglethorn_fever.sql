-- [SQL] Quests - Stranglethorn Fever fixed, and is no longer repeatable but now awards more reputation (Feedback #4340)
DELETE FROM `creature_questrelation` WHERE `quest` IN (348, 349);
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (348, 349);
UPDATE `quest_template` SET `RewardMoneyMaxLevel` = 26100, `RewardFactionValueId1` = 500, `RewardFactionValueId2` = -500 WHERE `Id` = 26597;
UPDATE `quest_template` SET `PrevQuestId` = -26597, `Flags` = 8192, `SpecialFlags` = 1 WHERE `Id` = 26598;