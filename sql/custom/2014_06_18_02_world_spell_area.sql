delete from spell_area where spell = 59087 and area = 5826;
insert into spell_area (spell, area, quest_start, quest_end, aura_spell, racemask, gender, autocast, quest_start_status, quest_end_status)
values
  -- aura is present if quest 29677 is not taken, is not completed or is failed
  (59087, 5826, 29677, 29677, 0, 0, 2, 1, 41, 66),
  -- aura is removed if quest 29677 is completed or rewarded
  (59087, 5826,     0, 29677, 0, 0, 2, 1, 11, 66);
