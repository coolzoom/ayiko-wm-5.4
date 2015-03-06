-- [c++] [Gackt's report] [11261] Quests - Walking the Dog scripted
SET @ENTRY_SPAWN_OF_SMOLDEROS := 39659;
SET @SPELL_SUMMON_SPAWN_OF_SMOLDEROS := 74138;
SET @SPELL_FEED_SPAWN_OF_SMOLDEROS := 74142;
DELETE FROM `spell_script_names` WHERE `spell_id` = @SPELL_FEED_SPAWN_OF_SMOLDEROS;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(@SPELL_FEED_SPAWN_OF_SMOLDEROS, "spell_feed_spawn_of_smolderos");
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (@SPELL_FEED_SPAWN_OF_SMOLDEROS, @SPELL_SUMMON_SPAWN_OF_SMOLDEROS);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, @SPELL_FEED_SPAWN_OF_SMOLDEROS, 0, 0, 31, 0, 3, @ENTRY_SPAWN_OF_SMOLDEROS, 0, 0, 0, "", "Feed Spawn of Smolderos targets Spawn of Smolderos");
DELETE FROM `spell_area` WHERE `spell` IN (@SPELL_FEED_SPAWN_OF_SMOLDEROS, @SPELL_SUMMON_SPAWN_OF_SMOLDEROS);
INSERT INTO `spell_area` (`spell`, `area`, `gender`) VALUES
(@SPELL_FEED_SPAWN_OF_SMOLDEROS, 4991, 2),
(@SPELL_FEED_SPAWN_OF_SMOLDEROS, 4994, 2);