update
  quest_template
set
  PrevQuestId = 28715
where
  Id in (3116, 3117, 3118, 3119, 3120, 26841);

DELETE FROM `creature_questrelation` WHERE `quest` = 3120;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(2077, 3120),
(2079, 3120);