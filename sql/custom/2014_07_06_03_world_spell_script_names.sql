delete from spell_script_names where ScriptName = 'spell_warl_chaos_bolt';

delete from spell_script_names where spell_id in (117828, 122355);
insert into spell_script_names (spell_id, ScriptName)
values
  (117828, 'spell_warl_backdraft'),
  (122355, 'spell_warl_molten_core');
