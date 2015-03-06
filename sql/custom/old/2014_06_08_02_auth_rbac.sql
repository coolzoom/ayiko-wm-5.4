delete from rbac_permissions where id in (776, 1048, 1049, 1050);
insert into rbac_permissions (id, name)
values
  (776, 'Command: debug phase'),
  (1048, 'Command: reset spec'),
  (1049, 'Command: npc set flag2'),
  (1050, 'Command: selectfaction');

delete from rbac_linked_permissions where linkedId IN (776, 1048, 1049, 1050);
insert into rbac_linked_permissions (id, linkedId)
values
  (196, 776),
  (196, 1048),
  (196, 1049),
  (196, 1050);
