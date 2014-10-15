-- [SQL] Quests - The Earthen Oath fixed (Fixes #6697)
UPDATE `creature_template` SET `KillCredit2` = 30296 WHERE `entry` = 29984;
UPDATE `creature_template` SET `KillCredit2` = 30297 WHERE `entry` = 29978;
UPDATE `quest_template` SET `PrevQuestId` = 13057, `NextQuestId` = 13047, `ExclusiveGroup` = -13035 WHERE `Id` IN (13005, 13035);
UPDATE `quest_template` SET `PrevQuestId` = 13057, `NextQuestId` = 13047, `ExclusiveGroup` = -13035 WHERE `Id` = 13005;
UPDATE `quest_template` SET `PrevQuestId` = 12915, `RequiredNpcOrGo1` = 0, `RequiredNpcOrGo2` = 30126, `RequiredNpcOrGoCount1` = 0, `RequiredNpcOrGoCount2` = 1, `ObjectiveText1` = '', `ObjectiveText2` = 'Fjorn''s Anvil Brought to Dun Niffelem' WHERE `Id` = 12924;
UPDATE `quest_template` SET `PrevQuestId` = 13035, `EndText` = 'Witness the Reckoning' WHERE `Id` = 13047;
UPDATE `quest_template` SET `PrevQuestId` = 29863 WHERE `Id` = 29861;
UPDATE `quest_template` SET `NextQuestId` = 29861, `ExclusiveGroup` = 0 WHERE `Id` = 29863;