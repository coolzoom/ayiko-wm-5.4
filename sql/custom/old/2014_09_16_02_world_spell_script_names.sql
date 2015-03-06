DELETE FROM `spell_script_names` WHERE (`ScriptName`='spell_monk_power_strikes');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('121817', 'spell_monk_power_strikes');

DELETE FROM `spell_proc_event` WHERE (`entry`='121817');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES ('121817', '0', '53', '16908292', '2147483649', '64', '0', '81936', '0', '0', '100', '0');
