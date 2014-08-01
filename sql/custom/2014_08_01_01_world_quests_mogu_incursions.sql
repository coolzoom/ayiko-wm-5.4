-- [SQL] [Kysio's report] Quests - Mogu Incursions and Riding the Skies requirements fixed (Fixes #5354, refs #5356)
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1270, `RequiredMinRepValue` = 42000 WHERE `Id` = 31266;
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1271, `RequiredMinRepValue` = 42000, `PrevQuestId` = 30187 WHERE `Id` = 30188;