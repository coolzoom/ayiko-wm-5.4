DELETE FROM `spell_proc_event` WHERE `entry` = '104561';
INSERT INTO `spell_proc_event` (`entry`, `ppmRate`) VALUES ('104561', '2');
DELETE FROM `spell_script_names` WHERE `spell_id` = '104561';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('104561', 'spell_gen_ench_windsong');
