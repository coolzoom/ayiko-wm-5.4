-- [SQL] Quests - Corrected some improper quest completion text
UPDATE `quest_template` SET `EndText` = "" WHERE `Id` IN (30011, 30015, 30019, 30020, 30021);
UPDATE `quest_template` SET `OfferRewardText` = "" WHERE `Id` IN (30019, 30020, 30021);