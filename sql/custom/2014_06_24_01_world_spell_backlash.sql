DELETE FROM `spell_script_names` WHERE `spell_id` = '108563';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('108563', 'spell_warl_backlash');

DELETE FROM `spell_proc_event` WHERE `entry` = '108563';
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `CustomChance`, `Cooldown`) VALUES ('108563', '680', '25', '8');
