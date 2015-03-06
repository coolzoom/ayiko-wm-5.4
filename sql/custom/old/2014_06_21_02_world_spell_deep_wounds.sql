DELETE FROM `spell_proc_event` WHERE `entry` = '115768';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `SpellFamilyMask0`, `procFlags`, `CustomChance`) VALUES ('115768', '4', '1088', '33554432', '16', '100');

DELETE FROM `spell_script_names` WHERE (`ScriptName`='spell_warr_deep_wounds');-- AND `spell_id` <> '6343';

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('115768', 'spell_warr_deep_wounds');
