DELETE FROM `spell_proc_event` WHERE `entry` = '58386';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask2`, `procFlags`, `CustomChance`) VALUES ('58386', '4', '4', '32', '16', '100');

DELETE FROM `spell_script_names` WHERE `spell_id` = '58386';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('58386', 'spell_warr_glyph_of_die_by_the_sword');
