alter table character_account_data
  add constraint fk__character_account_data__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_achievement
  add constraint fk__character_achievement__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_achievement_progress
  add constraint fk__character_achievement_progress__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_action
  add constraint fk__character_action__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_archaeology
  add constraint fk__character_archaeology__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_aura
  add constraint fk__character_aura__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_aura_effect
  add constraint fk__character_aura_effect__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_banned
  add constraint fk__character_banned__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_battleground_data
  add constraint fk__character_battleground_data__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_battleground_random
  add constraint fk__character_battleground_random__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_currency
  add constraint fk__character_currency__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_declinedname
  add constraint fk__character_declinedname__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_equipmentsets
  modify column
    guid int unsigned not null,
  add constraint fk__character_equipmentsets__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_gifts
  add constraint fk__character_gifts__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_glyphs
  add constraint fk__character_glyphs__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_homebind
  add constraint fk__character_homebind__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_instance
  add constraint fk__character_instance__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_inventory
  add constraint fk__character_inventory__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_queststatus
  add constraint fk__character_queststatus__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_queststatus_daily
  add constraint fk__character_queststatus_daily__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_queststatus_monthly
  add constraint fk__character_queststatus_monthly__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_queststatus_rewarded
  add constraint fk__character_queststatus_rewarded__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_queststatus_seasonal
  add constraint fk__character_queststatus_seasonal__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_queststatus_weekly
  add constraint fk__character_queststatus_weekly__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_reputation
  add constraint fk__character_reputation__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_skills
  add constraint fk__character_skills__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_social
  add constraint fk__character_social_guid__characters
    foreign key (guid) references characters (guid)
    on delete cascade,
  add constraint fk__character_social_friend__characters
    foreign key (friend) references characters (guid)
    on delete cascade;

alter table character_spell
  add constraint fk__character_spell__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_stats
  add constraint fk__character_stats__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_talent
  add constraint fk__character_talent__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table character_void_storage
  add constraint fk__character_void_storage__characters
    foreign key (playerGuid) references characters (guid)
    on delete cascade;

alter table corpse
  add constraint fk__corpse__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table gm_subsurveys
  add constraint fk__gm_subsurveys__gm_surveys
    foreign key (surveyid) references gm_surveys (surveyId)
    on delete cascade;

alter table gm_surveys
  add constraint fk__gm_surveys__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table gm_tickets
  add constraint fk__gm_tickets__characters
    foreign key (guid) references characters (guid)
    on delete cascade;

alter table group_instance
  add constraint fk__group_instance__groups
    foreign key (guid) references groups (guid)
    on delete cascade;

alter table group_member
  add constraint fk__group_member__characters
    foreign key (memberGuid) references characters (guid)
    on delete cascade,
  add constraint fk__group_member__groups
    foreign key (guid) references groups (guid)
    on delete cascade;

alter table groups
  add constraint fk__groups__characters
    foreign key (leaderGuid) references characters (guid)
    on delete cascade;

alter table guild
  add constraint fk__guild__characters
    foreign key (leaderguid) references characters (guid)
    on delete cascade;

alter table guild_achievement
  add constraint fk__guild_achievement__guild
    foreign key (guildId) references guild (guildid)
    on delete cascade;

alter table guild_achievement_progress
  add constraint fk__guild_achievement_progress__guild
    foreign key (guildId) references guild (guildid)
    on delete cascade;

alter table guild_bank_eventlog
  add constraint fk__guild_bank_eventlog__characters
    foreign key (PlayerGuid) references characters (guid)
    on delete cascade,
  add constraint fk__guild_bank_eventlog__guild
    foreign key (guildid) references guild (guildid)
    on delete cascade;

alter table guild_bank_item
  add constraint fk__guild_bank_item__guild
    foreign key (guildId) references guild (guildid)
    on delete cascade;

alter table guild_bank_tab
  add constraint fk__guild_bank_tab__guild
    foreign key (guildId) references guild (guildid)
    on delete cascade;

alter table guild_eventlog
  modify column
    PlayerGuid1 int unsigned default null comment 'Player 1',
  modify column
    PlayerGuid2 int unsigned default null comment 'Player 2',
  add constraint fk__guild_eventlog_Player1__characters
    foreign key (PlayerGuid1) references characters (guid)
    on delete cascade,
  add constraint fk__guild_eventlog_Player2__characters
    foreign key (PlayerGuid2) references characters (guid)
    on delete cascade,
  add constraint fk__guild_eventlog__guild
    foreign key (guildid) references guild (guildid)
    on delete cascade;

alter table guild_finder_applicant
  add constraint fk__guild_finder_applicant__characters
    foreign key (playerGuid) references characters (guid)
    on delete cascade,
  add constraint fk__guild_finder_applicant__guild
    foreign key (guildId) references guild (guildid)
    on delete cascade;

alter table guild_finder_guild_settings
  add constraint fk__guild_finder_guild_settings__guild
    foreign key (guildId) references guild (guildid)
    on delete cascade;

alter table guild_member
  add constraint fk__guild_member__characters
    foreign key (guid) references characters (guid)
    on delete cascade,
  add constraint fk__guild_member__guild
    foreign key (guildid) references guild (guildid)
    on delete cascade;

alter table guild_news_log
  modify column
    playerGuid int unsigned default null,
  add constraint fk__guild_news_log__characters
    foreign key (playerGuid) references characters (guid)
    on delete cascade,
  add constraint fk__guild_news_log__guild
    foreign key (guild) references guild (guildid)
    on delete cascade;

alter table guild_rank
  add constraint fk__guild_rank__guild
    foreign key (guildid) references guild (guildid)
    on delete cascade;

alter table mail
  add constraint fk__mail__characters
    foreign key (receiver) references characters (guid)
    on delete cascade;

alter table mail_items
  drop column receiver,
  add constraint fk__mail_items__mail
    foreign key (mail_id) references mail (id)
    on delete cascade;
