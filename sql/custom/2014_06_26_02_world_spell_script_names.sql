delete from spell_script_names where spell_id in (114157, 114916, 114917);
insert into spell_script_names (spell_id, ScriptName)
values
  (114157, 'spell_pal_execution_sentence'),
  (114916, 'spell_pal_execution_sentence_damage'),
  (114917, 'spell_pal_execution_sentence_heal');

delete from spell_bonus_data where entry in (114916, 114917, 146585, 146586);
insert into spell_bonus_data (entry, ap_bonus, ap_dot_bonus, direct_bonus, dot_bonus, comments)
values
  (114916, 0, 0, 0, 0, 'Execution Sentence - DoT - no bonus'),
  (114917, 0, 0, 0, 0, 'Execution Sentence - HoT - no bonus'),
  (146585, 0, 0, 0, 0, 'Execution Sentence - dispel damage - no bonus'),
  (146586, 0, 0, 0, 0, 'Execution Sentence - dispel heal - no bonus');
