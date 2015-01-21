-- [c++ and SQL] Quests - The Hunter and the Prince [A, H] scripted (Feedback #11795)
SET @NPC_MATHIAS_LEHNER := 32497;
SET @NPC_ILLIDAN_1 := 32588;
SET @NPC_ILLIDAN_2 := 32587;
SET @NPC_ILLIDAN_3 := 31395;
SET @NPC_PRINCE_ARTHAS_MENETHIL := 32326;
SET @SPELL_ARTHAS_1_FORCECAST := 61083;
SET @SPELL_ARTHAS_2_FORCECAST := 61626;
SET @SPELL_ARTHAS_3_FORCECAST := 61627;
SET @SPELL_ARTHAS_1 := 60602; -- Summons
SET @SPELL_ARTHAS_2 := 61622;
SET @SPELL_ARTHAS_3 := 61625;
SET @SPELL_ECHOES_FROM_THE_PAST_1 := 58902; -- Phase 2 and Control Vehicle
SET @SPELL_ECHOES_FROM_THE_PAST_2 := 61623; -- Phase 4 and Control Vehicle
SET @SPELL_ECHOES_FROM_THE_PAST_3 := 61624; -- Phase 8 and Control Vehicle
SET @SPELL_IMMOLATE := 60744;
SET @SPELL_HEART_RIP := 61101;
SET @SPELL_SHEAR := 60742;
SET @SPELL_ILLIDAN_KILL_CREDIT := 61748;
SET @GO_BLOODSTAINED_STONE_1 := 193980;
SET @GO_BLOODSTAINED_STONE_2 := 194023;
SET @GO_BLOODSTAINED_STONE_3 := 194024;
SET @EVENT_SCRIPT_ID := 20722;
SET @AREA_COURT_OF_BONES := 4519;
SET @QUEST_THE_HUNTER_AND_THE_PRINCE_A := 13400;
SET @QUEST_THE_HUNTER_AND_THE_PRINCE_H := 13361;
DELETE FROM `spell_script_names` WHERE `spell_id` = @SPELL_ILLIDAN_KILL_CREDIT;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(@SPELL_ILLIDAN_KILL_CREDIT, "spell_q13400_illidan_kill_master");
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = @SPELL_ARTHAS_1;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(@SPELL_ARTHAS_1, @SPELL_ECHOES_FROM_THE_PAST_1, 1, "Arthas 1 casts Echoes From The Past");
DELETE FROM `creature` WHERE `id` IN (@NPC_MATHIAS_LEHNER, @NPC_PRINCE_ARTHAS_MENETHIL, @NPC_ILLIDAN_1, @NPC_ILLIDAN_2, @NPC_ILLIDAN_3);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(404277, @NPC_MATHIAS_LEHNER, 571, 1, 1, 0, 0, 6369.59, 2360.84, 471.656, 1.22173, 120, 0, 0, 12600, 0, 0, 0, 0, 0);
DELETE FROM `gameobject` WHERE `id` IN (@GO_BLOODSTAINED_STONE_1, @GO_BLOODSTAINED_STONE_2, @GO_BLOODSTAINED_STONE_3);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(73236, @GO_BLOODSTAINED_STONE_1, 571, 1, 1, 6381.9, 2411.87, 475.026, 0.087266, 0, 0, 0, 0, 10, 100, 1),
(73234, @GO_BLOODSTAINED_STONE_2, 571, 1, 1, 6356.6, 2327.43, 473.636, -0.785397, 0, 0, 0, 0, 10, 100, 1),
(73235, @GO_BLOODSTAINED_STONE_3, 571, 1, 1, 6336.14, 2360.25, 477.015, -2.67035, 0, 0, 0, 0, 10, 100, 1);
DELETE FROM `event_scripts` WHERE `id` IN (@EVENT_SCRIPT_ID+0, @EVENT_SCRIPT_ID+1, @EVENT_SCRIPT_ID+2);
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(@EVENT_SCRIPT_ID+0, 0, 10, @NPC_ILLIDAN_1, 180000, 0, 6373.69, 2414.54, 476.91, 5.214342),
(@EVENT_SCRIPT_ID+1, 0, 10, @NPC_ILLIDAN_2, 180000, 0, 6349.27, 2318.11, 474.73, 0.469756),
(@EVENT_SCRIPT_ID+2, 0, 10, @NPC_ILLIDAN_3, 180000, 0, 6325.51, 2353.31, 477.64, 5.759015);
DELETE FROM `spell_area` WHERE `spell` IN (@SPELL_ECHOES_FROM_THE_PAST_1, @SPELL_ECHOES_FROM_THE_PAST_2, @SPELL_ECHOES_FROM_THE_PAST_3);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES 
(@SPELL_ECHOES_FROM_THE_PAST_1, @AREA_COURT_OF_BONES, 0, 0, 0, 0, 2, 0),
(@SPELL_ECHOES_FROM_THE_PAST_2, @AREA_COURT_OF_BONES, 0, 0, 0, 0, 2, 0),
(@SPELL_ECHOES_FROM_THE_PAST_3, @AREA_COURT_OF_BONES, 0, 0, 0, 0, 2, 0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 16 AND `ConditionTypeOrReference` = 23 AND `SourceEntry` = @NPC_PRINCE_ARTHAS_MENETHIL;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(16, 0, @NPC_PRINCE_ARTHAS_MENETHIL, 0, 23, @AREA_COURT_OF_BONES, 0, 0, 0, "", "Nepenthe-Dismount player from Prince Arthas Menethil when not in The Court of Bones area");
UPDATE `creature_template` SET `Health_mod` = 44.59, `Mana_mod` = 1, `exp` = 2, `rank` = 3, `KillCredit1` = 0, `KillCredit2` = 0, `minlevel` = 82, `maxlevel` = 82, `type_flags` = 0, `dynamicflags` = 8, `faction_A` = 14, `faction_H` = 14, `mindmg`= 422, `maxdmg` = 586, `attackpower` = 608, `baseattacktime` = 1800, `minrangedmg` = 295, `maxrangedmg` = 438, `dmg_multiplier` = 15, `unit_flags` = 256, `spell1` = 60744, `spell2` = 60742, `spell3` = 0, `spell6` = 61101, `unit_class` = 1, `AIName` = "SmartAI", `ScriptName` = "", `mechanic_immune_mask` = 12584977 WHERE `entry` IN (@NPC_ILLIDAN_1, @NPC_ILLIDAN_2, @NPC_ILLIDAN_3);
UPDATE `creature_template` SET `Health_mod` = 14, `Mana_mod` = 12, `exp` = 2, `rank` = 3, `minlevel` = 82, `maxlevel` = 82, `minrangedmg` = 295, `maxrangedmg` = 438, `dmg_multiplier` = 15, `vehicleId` = 300, `attackpower` = 608, `mindmg` = 422, `maxdmg` = 586, `type_flags` = 4, `spell1` = 60617, `spell2` = 60644, `spell3` = 60672, `spell4` = 60642, `unit_class` = 2, `AIName` = "SmartAI", `ScriptName` = "", `mechanic_immune_mask` = 0 WHERE `entry` = @NPC_PRINCE_ARTHAS_MENETHIL;
-- vehicle id mop 2086
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (@NPC_PRINCE_ARTHAS_MENETHIL, @NPC_ILLIDAN_1, @NPC_ILLIDAN_2, @NPC_ILLIDAN_3);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_PRINCE_ARTHAS_MENETHIL, @NPC_ILLIDAN_1, @NPC_ILLIDAN_2, @NPC_ILLIDAN_3) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC_ILLIDAN_1, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - Just Summoned - Disable autoattack"),
(@NPC_ILLIDAN_1, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - Just Summoned - Disable combat movement"),
(@NPC_ILLIDAN_1, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - Just Summoned - Say Line 0"),
(@NPC_ILLIDAN_1, 0, 3, 4, 1, 0, 100, 0, 5000, 5000, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - OOC - Enable autoattack"),
(@NPC_ILLIDAN_1, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - OOC - Start combat movement"),
(@NPC_ILLIDAN_1, 0, 5, 1, 61, 0, 100, 0, 0, 0, 0, 0, 5, 26, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - OOC - Emote Stand"),
(@NPC_ILLIDAN_1, 0, 6, 0, 0, 0, 100, 0, 15000, 16000, 15000, 16000, 11, @SPELL_IMMOLATE, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - IC - Cast Immolate"),
(@NPC_ILLIDAN_1, 0, 7, 0, 0, 0, 100, 0, 6000, 7000, 6000, 7000, 11, @SPELL_HEART_RIP, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - IC - Cast Heart Rip"),
(@NPC_ILLIDAN_1, 0, 8, 0, 0, 0, 100, 0, 19000, 19000, 19000, 19000, 11, @SPELL_SHEAR, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - IC - Cast Shear"),
(@NPC_ILLIDAN_1, 0, 9, 10, 6, 0, 100, 0, 0, 0, 0, 0, 33, 61752, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - On death - KC"),
(@NPC_ILLIDAN_1, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 58902, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - On death - remove Echoes from the Past from player"),
(@NPC_ILLIDAN_2, 0, 0, 1, 61, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - Just Summoned - Disable autoattack"),
(@NPC_ILLIDAN_2, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - Just Summoned - Disable combat movement"),
(@NPC_ILLIDAN_2, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - Just Summoned - Say Line 0"),
(@NPC_ILLIDAN_2, 0, 3, 4, 1, 0, 100, 0, 5000, 5000, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - OOC - Enable autoattack"),
(@NPC_ILLIDAN_2, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - OOC - Start combat movement"),
(@NPC_ILLIDAN_2, 0, 5, 1, 61, 0, 100, 0, 0, 0, 0, 0, 5, 26, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - OOC - Emote Stand"),
(@NPC_ILLIDAN_2, 0, 6, 0, 0, 0, 100, 0, 15000, 16000, 15000, 16000, 11, @SPELL_IMMOLATE, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - IC - Cast Immolate"),
(@NPC_ILLIDAN_2, 0, 7, 0, 0, 0, 100, 0, 6000, 7000, 6000, 7000, 11, @SPELL_HEART_RIP, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - IC - Cast Heart Rip"),
(@NPC_ILLIDAN_2, 0, 8, 0, 0, 0, 100, 0, 19000, 19000, 19000, 19000, 11, @SPELL_SHEAR, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - IC - Cast Shear"),
(@NPC_ILLIDAN_2, 0, 9, 10, 6, 0, 100, 0, 0, 0, 0, 0, 33, 61752, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - On death - KC"),
(@NPC_ILLIDAN_2, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 58902, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - On death - remove Echoes from the Past from player"),
(@NPC_ILLIDAN_3, 0, 0, 1, 61, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - Just Summoned - Disable autoattack"),
(@NPC_ILLIDAN_3, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - Just Summoned - Disable combat movement"),
(@NPC_ILLIDAN_3, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - Just Summoned - Say Line 0"),
(@NPC_ILLIDAN_3, 0, 3, 4, 1, 0, 100, 0, 5000, 5000, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - OOC - Enable autoattack"),
(@NPC_ILLIDAN_3, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - OOC - Start combat movement"),
(@NPC_ILLIDAN_3, 0, 5, 1, 61, 0, 100, 0, 0, 0, 0, 0, 5, 26, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - OOC - Emote Stand"),
(@NPC_ILLIDAN_3, 0, 6, 0, 0, 0, 100, 0, 15000, 16000, 15000, 16000, 11, @SPELL_IMMOLATE, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - IC - Cast Immolate"),
(@NPC_ILLIDAN_3, 0, 7, 0, 0, 0, 100, 0, 6000, 7000, 6000, 7000, 11, @SPELL_HEART_RIP, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - IC - Cast Heart Rip"),
(@NPC_ILLIDAN_3, 0, 8, 0, 0, 0, 100, 0, 19000, 19000, 19000, 19000, 11, @SPELL_SHEAR, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - IC - Cast Shear"),
(@NPC_ILLIDAN_3, 0, 9, 10, 6, 0, 100, 0, 0, 0, 0, 0, 33, 61752, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - On death - KC"),
(@NPC_ILLIDAN_3, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 58902, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Illidan Stormrage - On death - remove Echoes from the Past from player"),
(@NPC_PRINCE_ARTHAS_MENETHIL, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Prince Arthas Menethil - Just Summoned - Set Aggressive");
DELETE FROM `creature_text` WHERE `entry` IN (@NPC_ILLIDAN_1, @NPC_ILLIDAN_2, @NPC_ILLIDAN_3);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_ILLIDAN_1, 0, 0, "Prepare to die!", 14, 0, 100, 0, 0, 0, "Illidan Stormrage"),
(@NPC_ILLIDAN_2, 0, 0, "Prepare to die!", 14, 0, 100, 0, 0, 0, "Illidan Stormrage"),
(@NPC_ILLIDAN_3, 0, 0, "Prepare to die!", 14, 0, 100, 0, 0, 0, "Illidan Stormrage");
DELETE FROM `creature_template_emote` WHERE `entry` IN (@NPC_ILLIDAN_1, @NPC_ILLIDAN_2, @NPC_ILLIDAN_3);
INSERT INTO `creature_template_emote` (`entry`, `emote`) VALUES
(@NPC_ILLIDAN_1, 68), -- State Kneel
(@NPC_ILLIDAN_2, 68),
(@NPC_ILLIDAN_3, 68);
-- wotlk equip entry 4321
DELETE FROM `creature_equip_template` WHERE `entry` IN (@NPC_ILLIDAN_1, @NPC_ILLIDAN_2, @NPC_ILLIDAN_3, @NPC_PRINCE_ARTHAS_MENETHIL);
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(@NPC_ILLIDAN_1, 32632, 32633, 0),
(@NPC_ILLIDAN_2, 32632, 32633, 0),
(@NPC_ILLIDAN_3, 32632, 32633, 0),
(@NPC_PRINCE_ARTHAS_MENETHIL, 33475, 0, 0);