-- [SQL] Quests - Norgannon's Shell scripted (Feedback #7100)
SET @NPC_ARCHIVIST_MECHATON := 29775;
SET @ITEM_NORGANNONS_SHELL := 41258;
SET @OGUID := 65145;
SET @EVENT_SCRIPTS_ID := 19410;
SET @SPELL_SCAN := 55224;
DELETE FROM `creature_loot_template` WHERE `item` = @ITEM_NORGANNONS_SHELL;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@NPC_ARCHIVIST_MECHATON, @ITEM_NORGANNONS_SHELL, -100, 1, 0, 1, 1);
DELETE FROM `gameobject` WHERE `id` IN (191762, 191763);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@OGUID+0, 191762, 571, 1, 1, 7991.89, -827.66, 968.156, -2.33874, 0, 0, 0, 1, -160, 255, 1),
(@OGUID+1, 191763, 571, 1, 1, 7991.8, -827.639, 968.16, 0.90757, 0, 0, 0, 1, -160, 255, 1);
DELETE FROM `creature` WHERE `id` = @NPC_ARCHIVIST_MECHATON;
DELETE FROM `event_scripts` WHERE `id` = @EVENT_SCRIPTS_ID;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(@EVENT_SCRIPTS_ID, 0, 10, @NPC_ARCHIVIST_MECHATON, 160000, 0, 7991.11, -827.799, 968.155, 2.94),
(@EVENT_SCRIPTS_ID, 0, 9, @OGUID+0, 160000, 0, 0, 0, 0, 0),
(@EVENT_SCRIPTS_ID, 0, 9, @OGUID+1, 160000, 0, 0, 0, 0, 0);
DELETE FROM `creature_equip_template` WHERE `entry` = @NPC_ARCHIVIST_MECHATON;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(@NPC_ARCHIVIST_MECHATON, 28489, 0, 0);
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @NPC_ARCHIVIST_MECHATON;
DELETE FROM `creature` WHERE `id` = @NPC_ARCHIVIST_MECHATON;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_ARCHIVIST_MECHATON AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_ARCHIVIST_MECHATON, 0, 0, 0, 1, 0, 100, 1, 2000, 2000, 120000, 120000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Archivist Mechaton - OOC - Say Line 0"),
(@NPC_ARCHIVIST_MECHATON, 0, 1, 2, 1, 0, 100, 1, 8000, 8000, 120000, 120000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Archivist Mechaton - OOC - Say Line 1"),
(@NPC_ARCHIVIST_MECHATON, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 5, 133, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Archivist Mechaton - OOC - Emote State UseStanding NoSheathe"),
(@NPC_ARCHIVIST_MECHATON, 0, 3, 0, 1, 0, 100, 1, 16000, 16000, 120000, 120000, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Archivist Mechaton - OOC - Emote Default"),
(@NPC_ARCHIVIST_MECHATON, 0, 4, 0, 1, 0, 100, 1, 19000, 19000, 120000, 120000, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Archivist Mechaton - OOC - Say Line 2"),
(@NPC_ARCHIVIST_MECHATON, 0, 5, 0, 1, 0, 100, 1, 27000, 27000, 120000, 120000, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Archivist Mechaton - OOC - Say Line 3"),
(@NPC_ARCHIVIST_MECHATON, 0, 6, 0, 1, 0, 100, 1, 29000, 29000, 120000, 120000, 11, @SPELL_SCAN, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Archivist Mechaton - OOC - Cast Archivist's Scan"),
(@NPC_ARCHIVIST_MECHATON, 0, 7, 0, 1, 0, 100, 1, 38000, 38000, 120000, 120000, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Archivist Mechaton - OOC - Say Line 4"),
(@NPC_ARCHIVIST_MECHATON, 0, 8, 9, 1, 0, 100, 1, 45000, 45000, 120000, 120000, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Archivist Mechaton - OOC - Say Line 5"),
(@NPC_ARCHIVIST_MECHATON, 0, 9, 0, 61, 0, 100, 1, 0, 0, 0, 0, 5, 333, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Archivist Mechaton - OOC - Emote State Ready 1H"),
(@NPC_ARCHIVIST_MECHATON, 0, 10, 0, 1, 0, 100, 1, 52000, 52000, 120000, 120000, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Archivist Mechaton - OOC - Say Line 6"),
(@NPC_ARCHIVIST_MECHATON, 0, 11, 0, 1, 0, 100, 1, 54000, 54000, 120000, 120000, 19, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Archivist Mechaton - OOC - Make Attackable"),
(@NPC_ARCHIVIST_MECHATON, 0, 12, 0, 7, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Archivist Mechaton - On Evade - Make Unattackable"),
(@NPC_ARCHIVIST_MECHATON, 0, 13, 14, 1, 0, 100, 1, 55000, 55000, 120000, 120000, 49, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Archivist Mechaton - OOC - Attack Start"),
(@NPC_ARCHIVIST_MECHATON, 0, 14, 0, 61, 0, 100, 1, 0, 0, 0, 0, 46, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Archivist Mechaton - OOC - Move Forward 2 yards");
DELETE FROM `creature_text` WHERE `entry` = @NPC_ARCHIVIST_MECHATON;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_ARCHIVIST_MECHATON, 0, 0, "Use of the Inventor's Disk detected. Emergency protocol gamma activated.", 12, 0, 100, 0, 0, 0, 'Archivist Mechaton'),
(@NPC_ARCHIVIST_MECHATON, 1, 0, "Verifying status of Norgannon's shell.", 12, 0, 100, 0, 0, 0, 'Archivist Mechaton'),
(@NPC_ARCHIVIST_MECHATON, 2, 0, "Norgannon's shell accounted for and secure. It will be available for transfer once user's identity has been verified.", 12, 0, 100, 0, 0, 0, 'Archivist Mechaton'),
(@NPC_ARCHIVIST_MECHATON, 3, 0, "Standby to verify identity as Keeper Mimir.", 12, 0, 100, 0, 0, 0, 'Archivist Mechaton'),
(@NPC_ARCHIVIST_MECHATON, 4, 0, "Identity verification failed. User is not Keeper Mimir.", 12, 0, 100, 25, 0, 0, 'Archivist Mechaton'),
(@NPC_ARCHIVIST_MECHATON, 5, 0, "The Inventor's Disk has fallen into the hands of an unauthorized user. Activating defense protocol.", 12, 0, 100, 333, 0, 0, 'Archivist Mechaton'),
(@NPC_ARCHIVIST_MECHATON, 6, 0, "Impostor must be dealt with. The Inventor's Disk must be recovered.", 12, 0, 100, 53, 0, 0, 'Archivist Mechaton');