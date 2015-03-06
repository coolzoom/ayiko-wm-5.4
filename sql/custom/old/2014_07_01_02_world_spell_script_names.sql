delete from spell_script_names where ScriptName = 'spell_monk_black_ox_statue';

delete from spell_script_names where spell_id in (126119, 118605, 123402, 118604);
insert into spell_script_names (spell_id, ScriptName)
values
  (126119, 'spell_monk_sanctuary_of_the_ox'),
  (118605, 'spell_monk_black_ox_guard_aoe_selector'),
  (123402, 'spell_monk_guard'),
  (118604, 'spell_monk_guard');
