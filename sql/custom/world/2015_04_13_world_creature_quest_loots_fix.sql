/* Quest: Rocknot's Ale fixed */
UPDATE `quest_template` SET `Flags` = 8200, `Objectives` = 'Return to Private Rocknot in Alterac Mountains.', `Details` = 'Oh, ale!  I would kill for some Dark Iron ale!!  Quick, I''m getting sober!  I know this because sobriety blurs my vision... and it''s making you look like the $r I slew last week!' WHERE `Id` = 4295;

/* Quest: Infiltrating Shadowforge City */
UPDATE `quest_template` SET `Title` = 'Infiltrating Shadowforge City', `Objectives` = 'Speak to Razal''blade.', `Details` = 'We''re fighting a losing battle right now, I''m afraid. The Dark Irons would be difficult to defeat on their own, but their elemental allies have given them new bleeding edge warriors that we simply can''t compete with.$B$BI need you to help us infiltrate their domain and kill as many of their vital leaders as possible. Hopefully that will shock their forces and turn the tide in our favor. Report to Razal''blade for further instruction. He''s stationed beyond this gate and to the right.', `EndText` = 'Return to Razal''blade in Blackrock Depths.' WHERE `Id` = 27582;

/* Item: A Crumpled Up Note removed */
DELETE FROM `creature_loot_template` WHERE `item`=11446;

/* Satchel of Helpful Goods loots fixed */
DELETE FROM `item_loot_template` WHERE `entry` IN (51999,52000,52001,52002,52003,52004,52005,67248);
INSERT INTO `item_loot_template` VALUES 
(51999, 51964, 0, 1, 1, 1, 1),
(51999, 51968, 0, 1, 1, 1, 1),
(51999, 51978, 0, 1, 1, 1, 1),
(51999, 51994, 0, 1, 1, 1, 1),

(52000, 51965, 0, 1, 1, 1, 1),
(52000, 51973, 0, 1, 1, 1, 1),
(52000, 51980, 0, 1, 1, 1, 1),
(52000, 51992, 0, 1, 1, 1, 1),
(52000, 51996, 0, 1, 1, 1, 1),

(52001, 51966, 0, 1, 1, 1, 1),
(52001, 51974, 0, 1, 1, 1, 1),
(52001, 51976, 0, 1, 1, 1, 1),
(52001, 51984, 0, 1, 1, 1, 1),
(52001, 51992, 0, 1, 1, 1, 1),

(52002, 10833, 0, 1, 1, 1, 1),
(52002, 51962, 0, 1, 1, 1, 1),
(52002, 51963, 0, 1, 1, 1, 1),
(52002, 51967, 0, 1, 1, 1, 1),
(52002, 51972, 0, 1, 1, 1, 1),
(52002, 51981, 0, 1, 1, 1, 1),
(52002, 51982, 0, 1, 1, 1, 1),
(52002, 51989, 0, 1, 1, 1, 1),
(52002, 51990, 0, 1, 1, 1, 1),

(52003, 51959, 0, 1, 1, 1, 1),
(52003, 51971, 0, 1, 1, 1, 1),
(52003, 51977, 0, 1, 1, 1, 1),
(52003, 51985, 0, 1, 1, 1, 1),
(52003, 51993, 0, 1, 1, 1, 1),

(52004, 24395, 0, 1, 1, 1, 1),
(52004, 51960, 0, 1, 1, 1, 1),
(52004, 51969, 0, 1, 1, 1, 1),
(52004, 51970, 0, 1, 1, 1, 1),
(52004, 51979, 0, 1, 1, 1, 1),
(52004, 51987, 0, 1, 1, 1, 1),
(52004, 51995, 0, 1, 1, 1, 1),

(52005, 51961, 0, 1, 1, 1, 1),
(52005, 51969, 0, 1, 1, 1, 1),
(52005, 51975, 0, 1, 1, 1, 1),
(52005, 51983, 0, 1, 1, 1, 1),
(52005, 51991, 0, 1, 1, 1, 1),

(67248, 51965, 0, 1, 1, 1, 1),
(67248, 51966, 0, 1, 1, 1, 1),
(67248, 51974, 0, 1, 1, 1, 1),
(67248, 51992, 0, 1, 1, 1, 1),
(67248, 51997, 0, 1, 1, 1, 1),
(67248, 51998, 0, 1, 1, 1, 1);