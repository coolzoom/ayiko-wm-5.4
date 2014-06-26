delete from spell_script_names where spell_id = 85288;
insert into spell_script_names (spell_id, ScriptName)
values
  (85288, 'spell_warr_raging_blow');

delete from spell_script_names where spell_id in (12880, 18499);
insert into spell_script_names (spell_id, ScriptName)
values
  (12880, 'spell_warr_enrage_raging_blow'),
  (18499, 'spell_warr_enrage_raging_blow');
