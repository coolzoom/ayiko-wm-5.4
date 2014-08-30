-- [SQL] Quests - Gorat's Vengeance scripted (Feedback #390)
SET @NPC_GORAT := 33294;
SET @NPC_GORAT_SPIRIT := 33304;
SET @NPC_ELENDILAD := 33302;
UPDATE `creature_template` SET `gossip_menu_id` = 10328, `faction_A` = 85, `faction_H` = 85, `unit_flags` = 768, `flags_extra` = 2, `RegenHealth` = 0, `AIName` = "", `ScriptName` = "" WHERE `entry` = @NPC_GORAT;
UPDATE `creature_template` SET `minlevel` = 20, `maxlevel` = 20, `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @NPC_GORAT_SPIRIT;
UPDATE `creature_template` SET `faction_A` = 124, `faction_H` = 124, `mindmg` = 24, `maxdmg` = 36, `attackpower` = 9, `dmg_multiplier` = 1.1, `baseattacktime` = 2000, `unit_class` = 2, `unit_flags` = 32768, `mingold` = 49, `maxgold` = 49, `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @NPC_ELENDILAD;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(10328,14336);
DELETE FROM `gameobject` WHERE `id` = 301003;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(49920, 301003, 1, 1, 1, 1424.23, -1998.74, 96.4527, 2.11261, 0, 0, 0.870542, 0.492094, 90, 100, 1);
DELETE FROM `creature` WHERE `id` = @NPC_GORAT;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(177373, @NPC_GORAT, 1, 1, 1, 0, 0, 1424.91, -1999.62, 96.4123, 4.83456, 90, 0, 0, 48, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = @NPC_GORAT);
DELETE FROM `creature_template_addon` WHERE `entry` = @NPC_GORAT;
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES
(@NPC_GORAT, 3);
DELETE FROM `creature` WHERE `id` = @NPC_ELENDILAD;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(403025, @NPC_ELENDILAD, 1, 1, 1, 0, 0, 1514.92, -2144.73, 88.6033, 1.55125, 120, 5, 0, 1042, 490, 1);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_ELENDILAD, @NPC_GORAT_SPIRIT) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_GORAT_SPIRIT, 0, 0, 0, 1, 0, 100, 0, 20000, 20000, 60000, 60000, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Spirit of Gorat - Despawn timer"),
(@NPC_ELENDILAD, 0, 0, 0, 9, 0, 100, 0, 0, 5, 13600, 14500, 11, 78828, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Captain Elendilad - Cast Bladestorm"),
(@NPC_ELENDILAD, 0, 1, 0, 0, 0, 100, 0, 8000, 9000, 120000, 120000, 11, 78823, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Captain Elendilad - Cast Commanding Shout"),
(@NPC_ELENDILAD, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Captain Elendilad - On Aggro - Say Line 0"),
(@NPC_ELENDILAD, 0, 3, 0, 0, 0, 100, 0, 16000, 32000, 120000, 120000, 1, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Captain Elendilad - IC - Say Line 1");
DELETE FROM `creature_text` WHERE `entry` = @NPC_ELENDILAD;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC_ELENDILAD, 0, 0, "How many times must I have you killed, orc?!", 14, 0, 100, 0, 0, 0, "Captain Elendilad"),
(@NPC_ELENDILAD, 1, 0, "Curse you, $r vermin! This forest belongs to the Kaldorei...", 12, 0, 100, 0, 0, 0, "Captain Elendilad");