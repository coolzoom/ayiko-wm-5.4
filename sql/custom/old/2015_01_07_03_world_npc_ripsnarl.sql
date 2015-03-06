-- [SQL] Npcs - Ripsnarl scripted (Fixes #11445)
SET @NPC_RIPSNARL := 42635;
SET @SPELL_IN_STOCKS := 69196;
DELETE FROM `creature_template_aura` WHERE `entry` IN (@NPC_RIPSNARL);
INSERT INTO `creature_template_aura` (`entry`, `aura`) VALUES
(@NPC_RIPSNARL, @SPELL_IN_STOCKS);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33536, `ScriptName` = "", `AIName` = "SmartAI", `flags_extra` = 2 WHERE `entry` = @NPC_RIPSNARL;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` = @NPC_RIPSNARL;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_RIPSNARL,0,0,0,1,0,100,0,30000,40000,60000,120000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Ripsnarl - OOC Say Random Line 0");
DELETE FROM `creature_text` WHERE `entry` = @NPC_RIPSNARL;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_RIPSNARL,0,0,"The dawning comes, Stoutmantle, and with it comes your end.",12,0,100,0,0,0,"Ripsnarl"),
(@NPC_RIPSNARL,0,1,"When I break out of these stocks I'm going to rip out your heart and devour it whole!",12,0,100,0,0,0,"Ripsnarl");