-- [SQL and c++ 434 port] Quests - Portals of the Legion scripted (Feedback #810)
SET @NPC_DEMON_SPIRIT	:= 11876; -- Demon Spirit
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @NPC_DEMON_SPIRIT;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_DEMON_SPIRIT AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC_DEMON_SPIRIT, 0, 0, 0, 54, 0, 100, 1, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 100, 0, 0, 0, 0, 0, 0, 'Demon Spirit - Just Summoned - Attack Closest Player');
UPDATE `gameobject_template` SET `ScriptName` = 'go_demon_portal', `data3` = '30000' WHERE `name` = 'Demon Portal';