delete from spell_script_names where spell_id = 5176 and ScriptName = 'spell_dru_wrath_dream_of_cenarius';
insert into spell_script_names (spell_id, ScriptName)
values
  (5176, 'spell_dru_wrath_dream_of_cenarius');

delete from spell_bonus_data where entry = 145153;
insert into spell_bonus_data (entry, direct_bonus, comments)
values
  (145153, -1, 'Dream of Cenarius - Restoration healing');

delete from spell_script_names where spell_id = 145153;
insert into spell_script_names (spell_id, ScriptName)
values
  (145153, 'spell_dru_dream_of_cenarius_restoration');
