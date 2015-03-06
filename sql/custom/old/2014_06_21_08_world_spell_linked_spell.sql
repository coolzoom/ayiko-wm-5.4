delete from spell_linked_spell where spell_effect in (36032, -36032);

delete from spell_proc where spellId = 36032;
insert into spell_proc (spellId, charges)
values
  (36032, 0);
