-- [SQL] Quests - Choppertunity scripted (Feedback #1701)
SET @NPC_STRONGARM_GYROCOPTER := 65843;
SET @SPELL_FIREWORKS_LAUNCHER := 129586;
UPDATE `creature_template` SET `faction_A` = 2401, `faction_H` = 2401, `unit_flags` = 131072, `AIName` = 'SmartAI', `ScriptName` = '', `Health_mod` = 10, `WDBVerified` = 16769 WHERE `entry` = @NPC_STRONGARM_GYROCOPTER;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_STRONGARM_GYROCOPTER AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_STRONGARM_GYROCOPTER, 0, 0, 0, 8, 0, 100, 0, @SPELL_FIREWORKS_LAUNCHER, 0, 0, 0, 33, @NPC_STRONGARM_GYROCOPTER, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Strongarm Gyrocopter - On Spellhit - KC"),
(@NPC_STRONGARM_GYROCOPTER, 0, 1, 0, 8, 0, 100, 0, @SPELL_FIREWORKS_LAUNCHER, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Strongarm Gyrocopter - On Spellhit - Die");
UPDATE `creature` SET `spawntimesecs` = 600, `spawndist` = 30, `curhealth` = 1355520, `MovementType` = 1 WHERE `id` = @NPC_STRONGARM_GYROCOPTER;