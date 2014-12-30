-- Fel Reavers, No Thanks!
UPDATE `creature_template` SET `unit_flags`='262912', `flags_extra`='2', `AIName`='SmartAI' WHERE (`entry`='22293');
UPDATE `quest_template` SET `CompleteScript`='0' WHERE (`Id`='10850');
DELETE FROM `disables` WHERE (`sourceType`='1') AND (`entry`='10850');
DELETE FROM `quest_end_scripts` WHERE (`id`='10850') AND (`delay`='2') AND (`command`='7') AND (`datalong`='10855');
DELETE FROM `smart_scripts` WHERE `entryorguid` = '22293' AND `source_type` = '0';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('22293', '0', '0', '0', '20', '0', '100', '0', '10850', '0', '0', '0', '33', '22293', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Inactive Fel Reaver - On Quest \'Nether Gas In a Fel Fire Engine\' Finished - Quest Credit \'Fel Reavers, No Thanks!\''),
('22293', '0', '1', '0', '20', '0', '100', '0', '10850', '0', '0', '0', '37', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Inactive Fel Reaver - On Quest \'Nether Gas In a Fel Fire Engine\' Finished - Quest Credit \'Fel Reavers, No Thanks!\'');

-- Frankly, It Makes No Sense...
UPDATE `gameobject_template` SET `ScriptName`='go_arcano_control_unit' WHERE `entry` IN('185008', '185009', '185010');
DELETE FROM `spell_script_names` WHERE `spell_id` = '37851';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('37851', 'spell_gen_tag_greater_felfire_diemetradon');

-- The Thunderspike
SET @GO_THUNDERSPIKE := 184729;
SET @EVENT_SCRIPTS_ID := 13685;
SET @NPC_GOR_GRIMGUT := 21319;

UPDATE `gameobject_template` SET `AIName` = "", `ScriptName` = "", `data2` = @EVENT_SCRIPTS_ID, `data3` = 60000, `WDBVerified` = 15050 WHERE `entry` = @GO_THUNDERSPIKE;
UPDATE `gameobject` SET `spawntimesecs` = 60 WHERE `id` = @GO_THUNDERSPIKE;
UPDATE `creature_template` SET `exp`='2', `faction_A`='16', `faction_H`='16', `AIName` = "SmartAI", `minlevel` = 67 WHERE `entry` = @NPC_GOR_GRIMGUT;
DELETE FROM `event_scripts` WHERE `id` = @EVENT_SCRIPTS_ID;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(@EVENT_SCRIPTS_ID, 1, 10, @NPC_GOR_GRIMGUT, 120000, 0, 1326.51, 6691.53, -20.3344, 3.29793);

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_GOR_GRIMGUT AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @GO_THUNDERSPIKE AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC_GOR_GRIMGUT, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Gor Grimgut - On Spawn - Attack Start"),
(@NPC_GOR_GRIMGUT, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Gor Grimgut - On Spawn - Say Line 0"),
(@NPC_GOR_GRIMGUT, 0, 2, 0, 0, 0, 100, 0, 15000, 16000, 35000, 40000, 11, 35492, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Gor Grimgut - IC - Cast Exhaustion"),
(@NPC_GOR_GRIMGUT, 0, 3, 4, 2, 0, 100, 1, 30, 0, 0, 0, 11, 35491, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Gor Grimgut - At 30% HP - Cast Furious Rage"),
(@NPC_GOR_GRIMGUT, 0, 4, 0, 61, 0, 100, 0, 30, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Gor Grimgut - At 30% HP - Say Line 1");

DELETE FROM `creature_text` WHERE `entry` = @NPC_GOR_GRIMGUT;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_GOR_GRIMGUT, 0, 0, "Hah! The Thunderspike is mine. Die!", 12, 0, 100, 0, 0, 0, "Gor Grimgut"),
(@NPC_GOR_GRIMGUT, 1, 0, "%s goes into a frenzy!", 16, 0, 100, 0, 0, 0, "Gor Grimgut");
