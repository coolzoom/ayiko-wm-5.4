DELETE FROM`spell_proc_event` WHERE `entry` IN('29838', '143268');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('29838', '0', '0', '0', '0', '1712808', '0', '0', '0', '100', '0'),
('143268', '0', '0', '0', '0', '65536', '0', '0', '0', '100', '0');

DELETE FROM `spell_script_names` WHERE `spell_id` = '143268';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('143268', 'spell_warr_unbridled_wrath');
