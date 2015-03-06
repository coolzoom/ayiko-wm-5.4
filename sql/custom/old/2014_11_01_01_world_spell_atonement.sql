DELETE FROM `spell_script_names` WHERE (`ScriptName`='spell_pri_atonement');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('81749', 'spell_pri_atonement');

DELETE FROM `spell_proc_event` WHERE `entry` = '81749';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`) VALUES ('81749', '6', '1048704', '32768');
