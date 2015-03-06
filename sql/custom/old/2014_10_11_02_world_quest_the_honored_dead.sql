-- [SQL] Quests - The Honored Dead scripted (Feedback #4221)
SET @NPC_GUARD := 25342;
SET @NPC_WORKER := 25343;
SET @GOSSIP_GUARD := 9155;
SET @GOSSIP_WORKER := 9156;
SET @SPELL_RAGEFIST_TORCH := 45474;
SET @SPELL_FLAMES := 39199;
SET @SPELL_SPIRIT_PARTICLES_GREEN := 43167;
SET @SPELL_FEIGN_DEATH := 29266;
SET @ITEM_WARSONG_OUTFIT := 34842;
UPDATE `creature_template` SET `unit_flags` = 537166592, `unit_flags2` = 34816, `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @NPC_GUARD;
UPDATE `creature_template` SET `minlevel` = 65, `unit_flags` = 537166592, `unit_flags2` = 34816, `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @NPC_WORKER;
UPDATE `creature` SET `spawntimesecs` = 120 WHERE `id` IN (@NPC_GUARD, @NPC_WORKER);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_GUARD, @NPC_WORKER) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC_GUARD, 0, 0, 1, 62, 0, 100, 0, @GOSSIP_GUARD, 0, 0, 0, 56, @ITEM_WARSONG_OUTFIT, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dead Caravan Guard - On Gossip Select - Add Item Warsong Outfit"),
(@NPC_GUARD, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dead Caravan Guard - On Gossip Select - Forced Despawn"),
(@NPC_GUARD, 0, 2, 3, 8, 0, 100, 1, @SPELL_RAGEFIST_TORCH, 0, 0, 0, 33, @NPC_GUARD, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dead Caravan Guard - On Spellhit - Give Quest Credit"),
(@NPC_GUARD, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 11, @SPELL_FLAMES, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dead Caravan Guard - On Spellhit - Cast Flames"),
(@NPC_GUARD, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 15000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dead Caravan Guard - On Spellhit - Despawn"),
(@NPC_WORKER, 0, 0, 1, 62, 0, 100, 0, @GOSSIP_WORKER, 0, 0, 0, 56, @ITEM_WARSONG_OUTFIT, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dead Caravan Worker - On Gossip Select - Add Item Warsong Outfit"),
(@NPC_WORKER, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dead Caravan Worker - On Gossip Select - Forced Despawn"),
(@NPC_WORKER, 0, 2, 3, 8, 0, 100, 1, @SPELL_RAGEFIST_TORCH, 0, 0, 0, 33, @NPC_GUARD, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dead Caravan Worker - On Spellhit - Give Quest Credit"),
(@NPC_WORKER, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 11, @SPELL_FLAMES, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dead Caravan Worker - On Spellhit - Cast Flames"),
(@NPC_WORKER, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 15000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dead Caravan Worker - On Spellhit - Despawn");
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = @SPELL_RAGEFIST_TORCH;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ScriptName`, `Comment`) VALUES
(13, 1, @SPELL_RAGEFIST_TORCH, 0, 31, 3, @NPC_GUARD, 0, "", "Ragefist Torch targets Dead Caravan Guard"),
(13, 1, @SPELL_RAGEFIST_TORCH, 1, 31, 3, @NPC_WORKER, 0, "", "Ragefist Torch targets Dead Caravan Worker");
DELETE FROM `creature_template_addon` WHERE `entry` IN (@NPC_GUARD, @NPC_WORKER);
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
(@NPC_GUARD, '43167 29266'),
(@NPC_WORKER, '43167 29266');