-- Combo Breaker (137384)
DELETE FROM spell_proc_event WHERE entry = 137384;
INSERT INTO spell_proc_event (entry, SchoolMask, SpellFamilyName, SpellFamilyMask0, SpellFamilyMask1, SpellFamilyMask2, procFlags, procEx, ppmRate, CustomChance, Cooldown) VALUES
(137384, 1, 53, 0x4, 0, 0, 0x10, 0x3, 0, 100, 0);

DELETE FROM spell_script_names WHERE spell_id = 137384;
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(137384, 'spell_monk_combo_breaker');