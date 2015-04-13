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

/* Gloom'rel SAI added */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 9037;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=9037 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(9037, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 6000, 8000, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Gloom'rel - Cast Cleave"),
(9037, 0, 1, 0, 9, 0, 100, 0, 0, 4, 20000, 30000, 11, 9080, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Gloom'rel - Hamstring"),
(9037, 0, 2, 0, 0, 0, 100, 0, 5000, 8000, 10000, 13000, 11, 13737, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Gloom'rel - Cast Mortal Strike");

/* Mistress Nagmara SAI added */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 9500;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=9500 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(9500, 0, 0, 0, 62, 0, 100, 0, 2076, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 13, 170571, 0, 200, 0, 0, 0, 0, "Mistress Nagmara - Open the Bar Door on Gossip");

/* Mushgog spawn missing fixed */
DELETE FROM `creature` WHERE `id`= 11447;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES (11447, 1, 1, 1, 0, 0, -5086.65, 455.29, 14.3371, 5.99476, 21600, 40, 0, 5836, 0, 1, 0, 0, 0, 0);

/* Nascent Fel Orc fixed */
UPDATE `creature_template` SET `dmg_multiplier` = 3, `unit_flags` = 32832 WHERE `entry` = 17398;
UPDATE `creature_template` SET `dmg_multiplier` = 4, `unit_flags` = 32832 WHERE `entry` = 18612;
