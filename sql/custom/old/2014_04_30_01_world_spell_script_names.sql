delete from spell_script_names where spell_id in (145108, 145110);
insert into spell_script_names (spell_id, ScriptName)
values
  (145108, 'spell_dru_yseras_gift'),
  (145110, 'spell_dru_yseras_gift_heal_ally');
