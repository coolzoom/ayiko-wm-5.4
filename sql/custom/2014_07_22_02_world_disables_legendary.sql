-- [SQL] [Internal] 54 Legendary quests disabled for now
DELETE FROM `creature_questrelation` WHERE `quest` = 29801;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(55476, 29801);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 29801;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(55476, 29801);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=55476;
UPDATE `quest_template` SET `NextQuestId` = 29802 WHERE `Id` = 29801;
DELETE FROM `creature_questrelation` WHERE `quest` = 29802;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(55476, 29802);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 29802;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(55488, 29802);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=55488;
UPDATE `quest_template` SET `NextQuestId` = 29934 WHERE `Id` = 29802;
DELETE FROM `creature_questrelation` WHERE `quest` = 29934;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(55488, 29934);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 29934;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(56375, 29934);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=56375;
UPDATE `quest_template` SET `NextQuestId` = 29847 WHERE `Id` = 29934;
DELETE FROM `creature_questrelation` WHERE `quest` = 29847;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(56375, 29847);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 29847;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(57777, 29847);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=57777;
UPDATE `quest_template` SET `NextQuestId` = 30092 WHERE `Id` = 29847;
DELETE FROM `creature_questrelation` WHERE `quest` = 30092;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(57777, 30092);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 30092;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(57770, 30092);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=57770;
DELETE FROM `creature_questrelation` WHERE `quest` = 30093;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(57770, 30093);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 30093;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(57770, 30093);
DELETE FROM `creature_questrelation` WHERE `quest` = 30106;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(57770, 30106);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 30106;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(57777, 30106);
DELETE FROM `creature_questrelation` WHERE `quest` = 30118;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(57777, 30118);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 30118;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(58038, 30118);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=58038;
REPLACE INTO `disables` (`SourceType`, `entry`, `comment`)
SELECT '1', `Id`, 'Legendary Quest disabled' FROM `quest_template` WHERE `type` = '83';