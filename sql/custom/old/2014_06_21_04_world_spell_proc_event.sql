delete from spell_proc_event where entry = 56636;
insert into spell_proc_event (entry, procFlags, procEx)
values
  (56636, 0x14, 0x13);

delete from spell_proc_event where entry = 60503;
insert into spell_proc_event (entry, SpellFamilyName, SpellFamilyMask0, procEx)
values
  (60503, 4, 0x4, 0x3);

delete from spell_script_names where spell_id in (56636, 60503);
insert into spell_script_names (spell_id, ScriptName)
values
  (56636, 'spell_warr_taste_for_blood_talent'),
  (60503, 'spell_warr_taste_for_blood_effect');
