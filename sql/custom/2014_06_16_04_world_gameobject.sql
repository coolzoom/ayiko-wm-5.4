delete from gameobject where id = 209375;
insert into gameobject (guid, id, `map`, zoneId, areaId, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, `state`)
values
  (521395, 209375, 860, 5736, 5849, 1, 1024, 1372, 3932.93, 108.053, 4.24, 0, 0, 0, 1, 60, 100, 1),
  (521394, 209375, 860, 5736, 5825, 1, 1032, 1374.1, 3966.57, 117.933, 5.88, 0, 0, 0, 1, 60, 100, 1),
  (521393, 209375, 860, 5736, 5825, 1, 1024, 1368.99, 3924.17, 108.917, 0.96, 0, 0, 0, 1, 60, 100, 1),
  (521392, 209375, 860, 5736, 5849, 1, 1032, 1309.33, 3954.52, 124.807, 1.64, 0, 0, 0, 1, 60, 100, 1);

delete from spell_area where spell in (59087, 67789) and area = 5849;
insert into spell_area (spell, area, quest_start, quest_end, aura_spell, racemask, gender, autocast, quest_start_status, quest_end_status)
values
  -- phase for fire walls on top and right sides
  (59087, 5849, 29421, 29421, 0, 0, 2, 1, 35, 72),
  (59087, 5849,     0, 29421, 0, 0, 2, 1, 11, 72),
  -- phase for fire walls on bottom side
  (67789, 5849, 29421, 29421, 0, 0, 2, 1,  8, 35),
  (67789, 5849,     0, 29421, 0, 0, 2, 1, 11, 35);

-- blessing dummies should be present in arena phase only
update creature set phaseMask = 1024 where id in (54900, 54901, 54902);

-- and provide bonuses to players
update creature_template_addon set auras = '102508' where entry = 54900;
update creature_template_addon set auras = '102509' where entry = 54902;
update creature_template_addon set auras = '102510' where entry = 54901;

update quest_template set `Method` = 2 where Id = 29421;
