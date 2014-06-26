delete from spell_proc_event where entry = 12292;
insert into spell_proc_event (entry, procFlags, procEx)
values
  (12292, 0x10, 0x3);

delete from spell_script_names where spell_id in (12292, 113344);
insert into spell_script_names (spell_id, ScriptName)
values
  (12292, 'spell_warr_bloodbath'),
  (113344, 'spell_warr_bloodbath_bleed');
