DELETE FROM spell_proc_event WHERE entry = 56218;
INSERT INTO spell_proc_event (entry, SchoolMask, SpellFamilyName, SpellFamilyMask0, SpellFamilyMask1, SpellFamilyMask2, SpellFamilyMask3, procFlags, procEx, ppmRate, CustomChance, Cooldown) VALUES
(56218, 0, 5, 0x00000006, 0x00000000, 0x00000000, 0x00400000, 0x00040000, 0, 0, 0, 0);

DELETE FROM spell_script_names WHERE spell_id = 63106;
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(63106, 'spell_warl_glyph_of_siphon_life');