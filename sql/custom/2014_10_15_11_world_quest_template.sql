alter table quest_template
  add column RewardArenaPoints smallint unsigned not null default 0 after RewardTalents,
  add column Unknown0 tinyint unsigned not null default 0 after RequiredSpellCast4;
