drop table if exists gameobject_invisibility;
create table gameobject_invisibility (
  guid int unsigned not null comment 'guid from gameobject',
  type tinyint unsigned not null comment 'invisibility type',
  amount int not null comment 'detection threshold',
  comments tinytext,
  primary key (guid),
  constraint fk__gameobject_invisibility__gameobject
    foreign key (guid) references gameobject (guid)
) engine = innodb default charset = utf8 row_format = dynamic;

alter table gameobject_template modify column entry int unsigned not null;

drop table if exists gameobject_template_invisibility;
create table gameobject_template_invisibility (
  entry int unsigned not null comment 'entry from gameobject_template',
  type tinyint unsigned not null comment 'invisibility type',
  amount int not null comment 'detection threshold',
  comments tinytext,
  primary key (entry),
  constraint fk__gameobject_template_invisibility__gameobject_template
    foreign key (entry) references gameobject_template (entry)
) engine = innodb default charset = utf8 row_format = dynamic;

insert into gameobject_template_invisibility (entry, type, amount, comments)
values
  (209801, 24, 1, 'Brazier of the Red Flame (unlit), aura 105160 to see'),
  (209802, 25, 1, 'Brazier of the Blue Flame (unlit), aura 105161 to see'),
  (209803, 26, 1, 'Brazier of the Violet Flame (unlit), aura 105162 to see'),
  (209372, 23, 1, 'Brazier of the Violet Flame (lit), aura 105158 to see'),
  (209373, 22, 1, 'Brazier of the Blue Flame (lit), aura 105157 to see'),
  (209374, 21, 1, 'Brazier of the Red Flame (lit), aura 105156 to see');

-- phasemask is no longer required for these GOs, switched to visibility system
update gameobject set phaseMask = 1 where id in (209801, 209802, 209803, 209372, 209373, 209374);

-- lit braziers are not clickable
update gameobject_template set faction = 114 where entry in (209372, 209373, 209374);

alter table spell_area
  drop primary key,
  add primary key (spell, area, quest_start, quest_end, aura_spell, racemask, gender);

delete from spell_area where spell in (105160, 105161, 105162, 105156, 105157, 105158);
insert into spell_area (spell, area, quest_start, quest_end, aura_spell, racemask, gender, autocast, quest_start_status, quest_end_status)
values
  (105156, 5849, 0, 0, 0, 0, 2, 1, 0, 0),
  (105157, 5849, 0, 0, 0, 0, 2, 1, 0, 0),
  (105158, 5849, 0, 0, 0, 0, 2, 1, 0, 0),
  (105160, 5849, 0, 0, -105156, 0, 2, 1, 0, 0),
  (105161, 5849, 0, 0, -105157, 0, 2, 1, 0, 0),
  (105162, 5849, 0, 0, -105158, 0, 2, 1, 0, 0),
  (105156, 5849, 0, 29664, 0, 0, 2, 1, 0, 1),
  (105157, 5849, 0, 29664, 0, 0, 2, 1, 0, 1),
  (105158, 5849, 0, 29664, 0, 0, 2, 1, 0, 1);

delete from spell_script_names where spell_id in (105156, 105157, 105158);
insert into spell_script_names (spell_id, ScriptName)
values
  (105156, 'spell_lit_brazier_of_flame'),
  (105157, 'spell_lit_brazier_of_flame'),
  (105158, 'spell_lit_brazier_of_flame');
