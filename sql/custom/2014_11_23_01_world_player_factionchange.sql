DROP TABLE IF EXISTS player_factionchange_quests;
CREATE TABLE player_factionchange_quests (
  alliance_id mediumint(8) UNSIGNED NOT NULL,
  horde_id mediumint(8) UNSIGNED NOT NULL,
  PRIMARY KEY (alliance_id, horde_id),
  UNIQUE INDEX alliance_uniq (alliance_id),
  UNIQUE INDEX horde_uniq (horde_id),
  CONSTRAINT fk__player_factionchange_quests_a__quest_template
    FOREIGN KEY (alliance_id) REFERENCES quest_template (Id)
    ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT fk__player_factionchange_quests_h__quest_template
    FOREIGN KEY (horde_id) REFERENCES quest_template (Id)
    ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = INNODB DEFAULT CHARSET = UTF8 ROW_FORMAT = DYNAMIC;

DROP TABLE IF EXISTS player_factionchange_rewarded_racials;
CREATE TABLE player_factionchange_rewarded_racials (
  race tinyint(3) UNSIGNED NOT NULL,
  spell int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (race, spell),
  CONSTRAINT fk__player_factionchange_rewarded_racials__dbc_spell
    FOREIGN KEY (spell) REFERENCES dbc_spell (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = INNODB DEFAULT CHARSET = UTF8 ROW_FORMAT = DYNAMIC;

ALTER TABLE character_queststatus_rewarded ADD `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1;
