DELETE FROM `spell_proc_event` WHERE `entry` = '29725';
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `CustomChance`) VALUES ('29725', '20', '100');

DELETE FROM `spell_script_names` WHERE `spell_id` = '29725';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('29725', 'spell_warr_sudden_death');
