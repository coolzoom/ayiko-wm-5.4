alter table spell_proc add column spellFamilyMask3 int unsigned not null default 0 after spellFamilyMask2;
alter table spell_proc_event add column SpellFamilyMask3 int unsigned not null default 0 after SpellFamilyMask2;
