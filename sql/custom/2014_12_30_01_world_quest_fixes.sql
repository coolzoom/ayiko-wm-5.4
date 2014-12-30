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
