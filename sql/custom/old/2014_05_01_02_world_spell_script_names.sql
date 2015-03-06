delete from spell_script_names where spell_id = 5185 and ScriptName = 'spell_dru_healing_touch_dream_of_cenarius';
insert into spell_script_names (spell_id, ScriptName)
values
  (5185, 'spell_dru_healing_touch_dream_of_cenarius');

delete from spell_proc where spellId in (145151, 145152);
insert into spell_proc (spellId, charges)
values
  (145151, 1),
  (145152, 2);
