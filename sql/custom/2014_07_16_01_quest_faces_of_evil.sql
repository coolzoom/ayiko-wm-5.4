-- [SQL] [Cata port] Quests - Faces of Evil (A,H) scripted (Feedback #870)
UPDATE `quest_template` SET `Method` = 2, `Flags` = 8 WHERE `Id` IN (26521, 26357);
UPDATE `creature` SET `modelid` = 11686 WHERE `id` = 42704;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = 42704;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` = 42704;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(42704, 0, 0, 0, 8, 0, 100, 0, 79513, 0, 0, 0, 33, 42704, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Raufen - On Spell Hit - Give KC'),
(42704, 0, 1, 0, 8, 0, 100, 0, 79513, 0, 0, 0, 50, 181915, 180000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Raufen - On Spell Hit - Summon Blaze (Fire)'),
(42704, 0, 2, 0, 8, 0, 100, 0, 79513, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Raufen - On Spell Hit - Force Despawn');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 79513;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(13, 1, 79513, 31, 3, 42704, 'Raufen - Tiki Torch - Require Tiki Mask bunny');