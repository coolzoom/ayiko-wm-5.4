DELETE FROM spell_script_names WHERE spell_id = 111397;
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(111397, 'spell_warl_blood_horror');

DELETE FROM spell_proc_event WHERE entry = 111397;
INSERT INTO spell_proc_event (entry, SchoolMask, SpellFamilyName, SpellFamilyMask0, SpellFamilyMask1, SpellFamilyMask2, SpellFamilyMask3, procFlags, procEx, ppmRate, CustomChance, Cooldown) VALUES
(111397, 0, 0, 0, 0, 0, 0, 0x8 | 0x20, 0x1 | 0x2, 0, 100, 0);