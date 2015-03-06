-- [SQL] Quests - A Dish Best Served Huge scripted (Fixes #4475)
SET @GO_RUINED_LIFEBOAT := 2289;
SET @GO_BARBEQUED_BUZZARD_WINGS := 2332;
SET @GOSSIP := 11728;
SET @ITEM_GIANT_CRATE_OF_GIANT_FOOD := 59054;
SET @NPC_NEGOLASH := 1494;
SET @SPELL_KNOCKDOWN := 5164;
SET @QUEST_A_DISH_BEST_SERVED_HUGE := 26602;
SET @OGUID := 41707;
DELETE FROM `gameobject` WHERE `id` IN (@GO_RUINED_LIFEBOAT, @GO_BARBEQUED_BUZZARD_WINGS);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(211415, @GO_RUINED_LIFEBOAT, 0, 1, 1, -14656.4, 148, 3.29978, 2.74015, 0.221724, 0.471258, 0.848064, 0.0976788, 120, 255, 1),
(@OGUID+0, @GO_BARBEQUED_BUZZARD_WINGS, 0, 1, 1, -14656.2, 147.096, 2.38777, 0.174532, 0, 0, 0.0871553, 0.996195, -120, 255, 1),
(@OGUID+1, @GO_BARBEQUED_BUZZARD_WINGS, 0, 1, 1, -14654.5, 147.324, 2.45636, 1.81514, 0, 0, 0.788011, 0.615662, -120, 255, 1),
(@OGUID+2, @GO_BARBEQUED_BUZZARD_WINGS, 0, 1, 1, -14653, 146.524, 2.35559, 6.00393, 0, 0, -0.139173, 0.990268, -120, 255, 1),
(@OGUID+3, @GO_BARBEQUED_BUZZARD_WINGS, 0, 1, 1, -14654, 147.306, 2.46731, 0.942477, 0, 0, 0.45399, 0.891007, -120, 255, 1),
(@OGUID+4, @GO_BARBEQUED_BUZZARD_WINGS, 0, 1, 1, -14654.9, 147.278, 2.42524, 5.88176, 0, 0, -0.199367, 0.979925, -120, 255, 1),
(@OGUID+5, @GO_BARBEQUED_BUZZARD_WINGS, 0, 1, 1, -14653, 145.138, 2.65327, 5.84685, 0, 0, -0.216439, 0.976296, -120, 255, 1),
(@OGUID+6, @GO_BARBEQUED_BUZZARD_WINGS, 0, 1, 1, -14655.1, 146.671, 2.23095, 2.65289, 0, 0, 0.970295, 0.241925, -120, 255, 1),
(@OGUID+7, @GO_BARBEQUED_BUZZARD_WINGS, 0, 1, 1, -14656.8, 148.893, 3.28866, 5.09636, 0, 0, -0.559193, 0.829038, -120, 255, 1),
(@OGUID+8, @GO_BARBEQUED_BUZZARD_WINGS, 0, 1, 1, -14655.3, 147.802, 2.63972, 6.16101, 0, 0, -0.0610485, 0.998135, -120, 255, 1),
(@OGUID+9, @GO_BARBEQUED_BUZZARD_WINGS, 0, 1, 1, -14652.9, 146.867, 2.50691, 2.94959, 0, 0, 0.995396, 0.0958513, -120, 255, 1),
(@OGUID+10, @GO_BARBEQUED_BUZZARD_WINGS, 0, 1, 1, -14654.7, 146.142, 2.08906, 2.37364, 0, 0, 0.927183, 0.374608, -120, 255, 1),
(@OGUID+11, @GO_BARBEQUED_BUZZARD_WINGS, 0, 1, 1, -14652.4, 146.512, 3.50118, 0.349065, 0, 0, 0.173648, 0.984808, -120, 255, 1);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES
(@GOSSIP, 0, 0, "<Place the food and drink inside the lifeboat.>", 1, 0);
UPDATE `gameobject_template` SET `AIName` = "SmartGameObjectAI", `ScriptName` = "" WHERE `entry` = @GO_RUINED_LIFEBOAT;
UPDATE `gameobject_template` SET `WDBVerified` = 15595 WHERE `entry` = @GO_BARBEQUED_BUZZARD_WINGS;
UPDATE `creature_template` SET `minlevel` = 33, `faction_A` = 778, `faction_H` = 778, `speed_walk` = 1, `mindmg` = 42, `maxdmg` = 64, `attackpower` = 16, `dmg_multiplier` = 0.7, `baseattacktime` = 2000, `unit_flags` = 16384, `mingold` = 0, `maxgold` = 0, `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = 1494;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @GO_RUINED_LIFEBOAT AND `source_type` = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_NEGOLASH AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@GO_RUINED_LIFEBOAT, 1, 0, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 12, @NPC_NEGOLASH, 1, 180000, 0, 1, 0, 8, 0, 0, 0, -14671.664062, 108.294991, -10.270661, 1.151004, "Nepenthe-Ruined Lifeboat - On Gossip Select - Spawn Negolash"),
(@GO_RUINED_LIFEBOAT, 1, 1, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Ruined Lifeboat - On Gossip Select - Close Gossip"),
(@GO_RUINED_LIFEBOAT, 1, 2, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 57, @ITEM_GIANT_CRATE_OF_GIANT_FOOD, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Ruined Lifeboat - On Gossip Select - Remove Item"),
(@GO_RUINED_LIFEBOAT, 1, 3, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 14, @OGUID+0, @GO_BARBEQUED_BUZZARD_WINGS, 0, 0, 0, 0, 0, "Nepenthe-Ruined Lifeboat - On Gossip Select - Respawn Barbequed Buzzard Wings"),
(@GO_RUINED_LIFEBOAT, 1, 4, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 14, @OGUID+1, @GO_BARBEQUED_BUZZARD_WINGS, 0, 0, 0, 0, 0, "Nepenthe-Ruined Lifeboat - On Gossip Select - Respawn Barbequed Buzzard Wings"),
(@GO_RUINED_LIFEBOAT, 1, 5, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 14, @OGUID+2, @GO_BARBEQUED_BUZZARD_WINGS, 0, 0, 0, 0, 0, "Nepenthe-Ruined Lifeboat - On Gossip Select - Respawn Barbequed Buzzard Wings"),
(@GO_RUINED_LIFEBOAT, 1, 6, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 14, @OGUID+3, @GO_BARBEQUED_BUZZARD_WINGS, 0, 0, 0, 0, 0, "Nepenthe-Ruined Lifeboat - On Gossip Select - Respawn Barbequed Buzzard Wings"),
(@GO_RUINED_LIFEBOAT, 1, 7, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 14, @OGUID+4, @GO_BARBEQUED_BUZZARD_WINGS, 0, 0, 0, 0, 0, "Nepenthe-Ruined Lifeboat - On Gossip Select - Respawn Barbequed Buzzard Wings"),
(@GO_RUINED_LIFEBOAT, 1, 8, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 14, @OGUID+5, @GO_BARBEQUED_BUZZARD_WINGS, 0, 0, 0, 0, 0, "Nepenthe-Ruined Lifeboat - On Gossip Select - Respawn Barbequed Buzzard Wings"),
(@GO_RUINED_LIFEBOAT, 1, 9, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 14, @OGUID+6, @GO_BARBEQUED_BUZZARD_WINGS, 0, 0, 0, 0, 0, "Nepenthe-Ruined Lifeboat - On Gossip Select - Respawn Barbequed Buzzard Wings"),
(@GO_RUINED_LIFEBOAT, 1, 10, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 14, @OGUID+7, @GO_BARBEQUED_BUZZARD_WINGS, 0, 0, 0, 0, 0, "Nepenthe-Ruined Lifeboat - On Gossip Select - Respawn Barbequed Buzzard Wings"),
(@GO_RUINED_LIFEBOAT, 1, 11, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 14, @OGUID+8, @GO_BARBEQUED_BUZZARD_WINGS, 0, 0, 0, 0, 0, "Nepenthe-Ruined Lifeboat - On Gossip Select - Respawn Barbequed Buzzard Wings"),
(@GO_RUINED_LIFEBOAT, 1, 12, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 14, @OGUID+9, @GO_BARBEQUED_BUZZARD_WINGS, 0, 0, 0, 0, 0, "Nepenthe-Ruined Lifeboat - On Gossip Select - Respawn Barbequed Buzzard Wings"),
(@GO_RUINED_LIFEBOAT, 1, 13, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 14, @OGUID+10, @GO_BARBEQUED_BUZZARD_WINGS, 0, 0, 0, 0, 0, "Nepenthe-Ruined Lifeboat - On Gossip Select - Respawn Barbequed Buzzard Wings"),
(@GO_RUINED_LIFEBOAT, 1, 14, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 14, @OGUID+11, @GO_BARBEQUED_BUZZARD_WINGS, 0, 0, 0, 0, 0, "Nepenthe-Ruined Lifeboat - On Gossip Select - Respawn Barbequed Buzzard Wings"),
(@NPC_NEGOLASH, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Negolash - On Reset - Yell Line 0"),
(@NPC_NEGOLASH, 0, 1, 0, 0, 0, 100, 1, 6000, 6000, 180000, 180000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Negolash - IC - Say Line 1"),
(@NPC_NEGOLASH, 0, 2, 0, 0, 0, 100, 0, 5000, 9000, 15000, 18000, 11, @SPELL_KNOCKDOWN, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Negolash - IC - Cast Knockdown"),
(@NPC_NEGOLASH, 0, 3, 0, 1, 0, 100, 1, 90000, 90000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Negolash - OOC - Despawn");
DELETE FROM `creature_text` WHERE `entry` = @NPC_NEGOLASH;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_NEGOLASH, 0, 0, "Mmmh...I SMELL FOOD!", 14, 0, 100, 0, 0, 0, "Negolash"),
(@NPC_NEGOLASH, 1, 0, "AH, A FEAST! WHO LEFT THIS HERE...?", 12, 0, 100, 0, 0, 0, "Negolash");
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = @GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, @GOSSIP, 0, 0, 9, @QUEST_A_DISH_BEST_SERVED_HUGE, 0, 0, 0, "", "Only show gossip menu if player is on quest"),
(15, @GOSSIP, 0, 0, 2, @ITEM_GIANT_CRATE_OF_GIANT_FOOD, 1, 0, 0, "", "Only show gossip menu if player has item in inventory");