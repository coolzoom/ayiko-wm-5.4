-- [SQL] Exploits - Items: Singing Crystal has been limited to creatures of Timeless Isle (Fixes #3138)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (147055, 147170);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 147055, 0, 0, 31, 1, 4, 0, 0, 1, 0, "", "Singing Crystal should not proc on players"),
(13, 1, 147170, 0, 0, 31, 1, 4, 0, 0, 1, 0, "", "Singing Crystal should not hit players");
DELETE FROM `spell_area` WHERE `spell` = 147170;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(147170, 6757, 0, 0, 0, 0, 2, 0);
DELETE FROM `spell_proc_event` WHERE `entry` = 147055;
INSERT INTO `spell_proc_event` (`entry`, `ppmRate`) VALUES
(147055, 5);