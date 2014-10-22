delete from spell_area where spell in (59087, 67789) and area = 5849;
insert into spell_area (spell, area, quest_start, quest_end, aura_spell, racemask, gender, autocast, quest_start_status, quest_end_status)
values
  (59087, 5849, 29421, 29421, 0, 0, 2, 1, 35, 72),
  (67789, 5849, 29421, 29421, 0, 0, 2, 1,  8, 35);
