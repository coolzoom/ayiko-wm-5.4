-- [SQL] Quests - Rescue the Fallen scripted (Feedback #389)
UPDATE `creature_template` SET `unit_flags` = 0, `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = 33266;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 33266 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(33266, 0, 0, 0, 8, 0, 100, 1, 62644, 0, 0, 0, 33, 33266, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Edifice-Wounded Mor'shan Defender - On Spellhit - KC"),
(33266, 0, 0, 1, 8, 0, 100, 1, 62644, 0, 0, 0, 90, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Edifice-Wounded Mor'shan Defender - On Spellhit - Stands up"),
(33266, 0, 0, 2, 8, 0, 100, 1, 62644, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Edifice-Wounded Mor'shan Defender - On Spellhit - Say Line 1"),
(33266, 0, 0, 3, 8, 0, 100, 1, 62644, 0, 0, 0, 41, 20000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Edifice-Wounded Mor'shan Defender - On Spellhit - Delayed Despawn");
DELETE FROM `creature_text` WHERE `entry` = 33266;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(33266, 0, 0, "Blood and thunder, $C!", 12, 0, 100, 0, 0, 0, "Wounded Mor'shan Defender"),
(33266, 0, 1, "For the Horde!", 12, 0, 100, 0, 0, 0, "Wounded Mor'shan Defender"),
(33266, 0, 2, "Death to the Alliance!", 12, 0, 100, 0, 0, 0,"Wounded Mor'shan Defender"),
(33266, 0, 3, "Many thanks, $C!", 12, 0, 100, 0, 0, 0, "Wounded Mor'shan Defender");
DELETE FROM `conditions` WHERE `SourceEntry` = 62644 AND `SourceTypeOrReferenceId` = 17;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 62644, 0, 0, 31, 1, 3, 33266, 0, 0, 0, "", "Medication Salve targets Wounded Mor'shan Defender");