UPDATE `spell_proc_event` SET `procEx`='1712808', `CustomChance`='100' WHERE (`entry`='29838');

DELETE FROM `spell_proc_event` WHERE `entry` = '143268';
INSERT INTO `spell_proc_event` (`entry`, `procEx`, `CustomChance`) VALUES ('143268', '65536', '100');

DELETE FROM `spell_script_names` WHERE `spell_id` = '143268';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('143268', 'spell_warr_unbridled_wrath');
