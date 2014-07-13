-- [SQL] Quests - Planting the Seed of Fear fixed (Feedback #3559)
SET @NPC_VILE_FIN_TADPOLE := 38937;
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = '' WHERE `entry` = @NPC_VILE_FIN_TADPOLE;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_VILE_FIN_TADPOLE AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_VILE_FIN_TADPOLE*100 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_VILE_FIN_TADPOLE, 0, 0, 0, 10, 0, 100, 0, 1, 15, 15000, 15000, 80, @NPC_VILE_FIN_TADPOLE*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Vile Fin Tadpole - On Friendly LoS - Run Script"),
(@NPC_VILE_FIN_TADPOLE*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 86, 73133, 0, 21, 15, 0, 0, 21, 0, 15, 0, 0, 0, 0, 0, "Nepenthe-Vile Fin Tadpole - On Script - Crosscast(player) Fear on Tadpole"),
(@NPC_VILE_FIN_TADPOLE*100, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 11, 85751, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Vile Fin Tadpole - On Script - Cast Stun"),
(@NPC_VILE_FIN_TADPOLE*100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, @NPC_VILE_FIN_TADPOLE, 0, 0, 0, 0, 0, 17, 0, 40, 0, 0, 0, 0, 0, "Nepenthe-Vile Fin Tadpole - On Script - KC"),
(@NPC_VILE_FIN_TADPOLE*100, 9, 3, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Vile Fin Tadpole - On Script - Despawn");