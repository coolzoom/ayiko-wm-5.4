-- [Purple's fix] Exploits - Factionchange: Stormpike/Frostwolf battle standards will now change to the opposite faction version when faction changing (Feedback #5075)
DELETE FROM `player_factionchange_items` WHERE `alliance_id` IN (18606, 19045) AND `horde_id` IN (18607, 19046);
INSERT INTO `player_factionchange_items` (`race_A`,`alliance_id`,`commentA`,`race_H`,`horde_id`,`commentH`) VALUES
(0,18606,'Alliance Battle Standard',0,18607,'Horde Battle Standard'),
(0,19045,'Stormpike Battle Standard',0,19046,'Frostwolf Battle Standard');