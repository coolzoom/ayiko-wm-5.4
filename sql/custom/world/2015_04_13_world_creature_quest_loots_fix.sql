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

/* */
UPDATE `gameobject_template` SET `type` = 1, `data0` = 0 WHERE `entry` = 188173;

DELETE FROM `spell_target_position` WHERE `id` = 46841;
INSERT INTO `spell_target_position` VALUES
(46841, 0, 530, 12888,-6876, 9, 0.3);

/* Escape to the Isle of Quel'Danas now work */
UPDATE `gameobject_template` SET `type` = 1, `data0` = 0 WHERE `entry` = 188173;
DELETE FROM `spell_target_position` WHERE `id` = 46841;
INSERT INTO `spell_target_position` VALUES
(46841, 0, 530, 12888,-6876, 9, 0.3);
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 188173;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=188173 AND `source_type`=1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(188173, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 12888, -6876, 9, 0.3, "Escape to the Isle of Quel'Danas - Teleport");

/* Quest: The Exorcism of Colonel Jules fixed */
DELETE FROM `creature_text` WHERE `entry` IN (22431,22432);
DELETE FROM `creature_template_aura` WHERE `entry` IN (22506,22507);
DELETE FROM `smart_scripts` WHERE `entryorguid`= 22507 AND `source_type`= 0;

UPDATE `creature_template` SET `npcflag` = 3, `speed_walk` = 0.4, `speed_run` = 0.4,`unit_flags` = 163840, `ScriptName`= 'npc_barada' WHERE `entry`= 22431;
UPDATE `creature_template` SET `npcflag` = 0, `speed_fly` = 0.2, `ScriptName`= 'npc_colonel_jules' WHERE `entry`= 22432;
UPDATE `creature_template` SET `speed_walk` = 0.4, `speed_run` = 0.4 WHERE `entry` = 22506;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `unit_flags` = 131072, `speed_fly` = 0.5, `InhabitType` = 4, `flags_extra` = 66 WHERE `entry` = 22507;

INSERT INTO `creature_template_aura` VALUES
(22506,39300),
(22507,39303);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(22507, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 42, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Darkness Released - Set Invincibility"),
(22507, 0, 1, 0, 1, 0, 100, 0, 500, 6000, 6000, 8000, 11, 39320, 0, 0, 0, 0, 0, 9, 22431, 0, 200, 0, 0, 0, 0, "Darkness Released - Cast Flying Skull Attack OOC"),
(22507, 0, 2, 0, 0, 0, 100, 0, 500, 6000, 6000, 8000, 11, 39320, 0, 0, 0, 0, 0, 9, 22431, 0, 200, 0, 0, 0, 0, "Darkness Released - Cast Flying Skull Attack OOC"),
(22507, 0, 3, 4, 2, 0, 100, 1, 0, 3, 0, 0, 11, 39307, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Darkness Released - Cast Flying Skull Despawn on Death"),
(22507, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Darkness Released - Cast Despawn on death");

INSERT INTO `creature_text` VALUES 
-- Barada
(22431, 0, 0, 'It is time. The rite of exorcism will now commence...', 12, 0, 100, 0, 0, 0, 'Barada'),
(22431, 1, 0, 'Prepare yourself. Do not allow the ritual to be interrupted or we may lose our patient...', 12, 0, 100, 0, 0, 0, 'Barada'),
(22431, 2, 0, 'Back foul beings of darkness! You have no power here!', 12, 0, 100, 0, 0, 0, 'Barada'),
(22431, 3, 0, 'I... must not... falter', 12, 0, 100, 0, 0, 0, 'Barada'),
(22431, 4, 0, 'The Light is my guide... it is my sustenance!', 12, 0, 100, 0, 0, 0, 'Barada'),
(22431, 5, 0, 'The power of light compells you! Back to your pit!', 12, 0, 100, 0, 0, 0, 'Barada'),
(22431, 6, 0, 'Be cleansed with Light, human! Let not the demonic corruption overwhelm you.', 12, 0, 100, 0, 0, 0, 'Barada'),
(22431, 7, 0, 'Back! I cast you back... corruptor of faith! Author of pain! Do not return, or suffer the same fate as you did here today!', 12, 0, 100, 0, 0, 0, 'Barada'),

-- Colonel Jules
(22432, 0, 0, 'Keep away. The fool is mine.', 12, 0, 100, 0, 0, 0, 'Colonel Jules'),
(22432, 1, 0, 'Ah! Cease the incantations, Anchorite! Cease, or I will show you such pain that your pathetic people have never imagined!', 12, 0, 100, 0, 0, 0, 'Colonel Jules'),
(22432, 2, 0, 'This is fruitless, draenei! You and your little helper cannot wrest control of this pathetic human. He is mine!', 12, 0, 100, 0, 0, 0, 'Colonel Jules'),
(22432, 3, 0, 'I see your ancestors, Anchorite! They writhe and scream in the darkness... they are with us!', 12, 0, 100, 0, 0, 0, 'Colonel Jules'),
(22432, 4, 0, 'I will tear your soul into morsels and slow roast them over demon fire.', 12, 0, 100, 0, 0, 0, 'Colonel Jules');

/* Vizier Jin'bak Normal & HC Loots fixed */
DELETE FROM `creature_loot_template` WHERE `entry` IN (61567,361567);
INSERT INTO `creature_loot_template` VALUES 
(61567, 81262, 0, 1, 1, 1, 1),
(61567, 81263, 0, 1, 1, 1, 1),
(61567, 81270, 0, 1, 1, 1, 1),
(61567, 81271, 0, 1, 1, 1, 1),
(61567, 81272, 0, 1, 1, 1, 1),

(361567, 100950, 0, 1, 1, 1, 1),
(361567, 100951, 0, 1, 1, 1, 1),
(361567, 100952, 0, 1, 1, 1, 1),
(361567, 100953, 0, 1, 1, 1, 1),
(361567, 100954, 0, 1, 1, 1, 1);

/* The Botanica - Backdoor dungeon exit fixed */
DELETE FROM `areatrigger_teleport` WHERE `id` IN (4459,4612);
INSERT INTO `areatrigger_teleport` VALUES
(4612,'The Botanica (Exit)',530,3413.65,1483.32,182.838,2.54432);

/* Lakka SAI fixed */
DELETE FROM `smart_scripts` WHERE (`entryorguid`=1895600 AND `source_type`=9);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=18956 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(18956, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Lakka -  Close Gossip"),
(18956, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Lakka - Say Text 0 on gossip"),
(18956, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 33, 18956, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Lakka - Give Quest Credit on gossip"),
(18956, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 13, 183051, 0, 40, 0, 0, 0, 0, "Lakka - Open Cage on gossip"),
(18956, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lakka - Despawn after the gossip");

/* Prince Taldaram fixed */
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854399 WHERE `entry` IN (29308,31469);
UPDATE `creature_template` SET `modelid2` = 0 WHERE `entry` = 31686;

/* Ingvar the Plunderer now drop the QI in HC */
DELETE FROM `creature_loot_template` WHERE (`entry`=31674) AND (`item`=33330);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (31674, 33330, -100, 1, 0, 1, 1);

/* Utgarde Keep Normal trashes & bosses wrong level fixed */
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 71 WHERE `entry` IN (23956,23960,23961,24069,24071,24078,24079,24080,24082,24083,24084,24085,24849,28410,28419,29735);
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72 WHERE `entry` IN (23953,24200,24201,23954);

/* Mari Stonehand now sells Plans: Eternium Rod */
DELETE FROM `npc_vendor` WHERE `entry` = 19373 AND `item`= 25847;
INSERT INTO `npc_vendor` VALUES 
(19373, 0, 25847, 0, 0, 0, 1);

/* Unstable Mana Crystals now can be looted */
UPDATE `gameobject_template` SET `data7` = 0 WHERE `entry` = 180600;
UPDATE `gameobject_template` SET `data5` = 300 WHERE `entry` = 181584;

/* Infected Mossflayer fixed */
UPDATE `creature_template` SET `minlevel` = 42, `maxlevel` = 43 WHERE `entry` = 12261;