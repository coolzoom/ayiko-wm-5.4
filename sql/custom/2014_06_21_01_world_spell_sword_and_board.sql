DELETE FROM `spell_proc_event` WHERE `entry` = '46953';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `CustomChance`) VALUES ('46953', '4', '64', '16', '30');

UPDATE `spell_script_names` SET `spell_id`='46953' WHERE (`spell_id`='20243') AND (`ScriptName`='spell_warr_sword_and_board');
