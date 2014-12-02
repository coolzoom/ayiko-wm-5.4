ALTER TABLE `game_event` MODIFY `eventEntry` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_arena_seasons` MODIFY `eventEntry` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_battleground_holiday` MODIFY `eventEntry` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_condition` MODIFY `eventEntry` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_creature_quest` MODIFY `eventEntry` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_gameobject_quest` MODIFY `eventEntry` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_model_equip` MODIFY `eventEntry` MEDIUMINT(8) NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_npc_vendor` MODIFY `eventEntry` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_npcflag` MODIFY `eventEntry` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_pool` MODIFY `eventEntry` MEDIUMINT(8) NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_prerequisite` MODIFY `eventEntry` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_quest_condition` MODIFY `eventEntry` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_seasonal_questrelation` MODIFY `eventEntry` MEDIUMINT(8) UNSIGNED NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_creature` MODIFY `eventEntry` MEDIUMINT(8) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.';
ALTER TABLE `game_event_gameobject` MODIFY `eventEntry` MEDIUMINT(8) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.';