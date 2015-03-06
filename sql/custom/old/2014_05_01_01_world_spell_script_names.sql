delete from spell_script_names where spell_id in (134732, 134735);
insert into spell_script_names (spell_id, ScriptName)
values
  (134732, 'spell_gen_battle_fatigue');

delete from spell_proc_event where entry = 134732;
insert into spell_proc_event (entry, procFlags, CustomChance)
values
  (134732, 0x51154, 100);
