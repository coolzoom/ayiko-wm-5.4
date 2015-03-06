update creature_template set AIName = 'SmartAI' where entry = 57769;
delete from smart_scripts WHERE `entryorguid` = 57769 and source_type = 0;
insert into smart_scripts (
  entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2,
  event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5,
  action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, `comment`)
values 
  (57769, 0, 0, 0, 0, 0, 100, 1, 500, 500, 0, 0, 48, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe-Shen-zin Su - OOC - Set Active');

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry = 104571;
insert into conditions (
  SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget,
  ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorTextId, ScriptName, `Comment`)
values
  (13, 1, 104571, 0, 0, 31, 0, 3, 52067, 0, 0, 0, '', 'Spell Summon Aysa targets General Purpose Bunny (All Phases)');

update creature_template set flags_extra = 0 where entry = 52067;

delete from creature where id = 52067;
insert into creature (
  guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation,
  spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType)
values
  (5029477, 52067, 860, 1, 65535, 11686, 0, 665.60, 4220.66, 201.93, 1.93, 25, 0, 0, 42, 0, 0);
