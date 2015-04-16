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

UPDATE `creature_template` SET `npcflag` = 3, `speed_walk` = 0.4, `speed_run` = 0.4,`unit_flags` = 163848, `ScriptName`= 'npc_barada' WHERE `entry`= 22431;
UPDATE `creature_template` SET `npcflag` = 0, `speed_fly` = 0.2, `ScriptName`= 'npc_colonel_jules' WHERE `entry`= 22432;
UPDATE `creature_template` SET `speed_walk` = 0.4, `speed_run` = 0.4 WHERE `entry` = 22506;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `unit_flags` = 655360, `speed_fly` = 0.2, `InhabitType` = 4, `flags_extra` = 66 WHERE `entry` = 22507;

INSERT INTO `creature_template_aura` VALUES
(22506,39300),
(22507,39303);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(22507, 0, 0, 0, 1, 0, 100, 0, 500, 6000, 6000, 8000, 11, 39320, 0, 0, 0, 0, 0, 9, 22431, 0, 200, 0, 0, 0, 0, "Darkness Released - Cast Flying Skull Attack OOC"),
(22507, 0, 1, 0, 0, 0, 100, 0, 500, 6000, 6000, 8000, 11, 39320, 0, 0, 0, 0, 0, 9, 22431, 0, 200, 0, 0, 0, 0, "Darkness Released - Cast Flying Skull Attack OOC"),
(22507, 0, 2, 4, 2, 0, 100, 0, 0, 30, 500, 500, 11, 39307, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Darkness Released - Cast Flying Skull Despawn on Death");

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

/* Skeletal Flayer & Skeletal Sorcerer fixed */
UPDATE `creature_template` SET `minlevel` = 35, `maxlevel` = 36 WHERE `entry` IN (1783,1784);

/* Quests from Fleet Master Seahorn at Booty Bay fixed */
DELETE FROM `creature_queststarter` WHERE `quest` = 26617;

UPDATE `creature` SET `spawntimesecs` = 20 WHERE `id` = 43505;
UPDATE `creature_template` SET `gossip_menu_id` = 11743, `AIName` = 'SmartAI' WHERE `entry` = 2663;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (2487,43505);
UPDATE `gossip_menu_option` SET `option_id` = 1, `npc_option_npcflag` = 1 WHERE `menu_id` = 11743 AND `id` = 0;
UPDATE `gossip_menu_option` SET `option_text` = 'I want to browse your goods.' WHERE `menu_id` = 11743 AND `id` = 1;
UPDATE `gossip_menu_option` SET `option_id` = 1, `npc_option_npcflag` = 1 WHERE `menu_id` = 11741;

DELETE FROM `quest_template` WHERE `Id` = 26630;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES (26630, 2, 33, 31, 0, 5287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 59146, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Looks Like a Tauren Pirate to Me', 'Obtain a Cow Head and an Oversized Pirate Hat, then bring them back to Fleet Master Seahorn.', 'Firallon wants MY head?  Now that\'s interesting.  But it\'s nothing we can\'t work around.$b$bThis Yancey character probably doesn\'t know my face too well.  Most non-tauren find us tauren indistinguishable from one another.  In fact... most non-tauren find us indistinguishable from... a certain four-legged farm creature.$b$bRikqiz the leatherworker keeps one of these creatures here in Booty Bay, and Narkk is my chief supplier for pirate hats.  Get a replacement head and a hat, then return with both.', '', 'That should fool that Bloodsail dimwit.$B$BThis was fun, $N.', 'You should know that most tauren would find this shameful.  I find it... amusing.', 'Return to Fleet Master Seahorn at Booty Bay in the Cape of Stranglethorn.', 2487, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59148, 59147, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16048);

DELETE FROM `quest_objective` WHERE `questId` = 26630;
INSERT INTO `quest_objective` VALUES
(26630,0,0,0,2487 ,1,1,'Return both items to Fleet Master Seahorn'),
(26630,1,0,1,59148,1,0,''),	
(26630,2,0,1,59147,1,0,'');
	
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`= 15 AND `SourceGroup` IN (11741,11743,11744) AND `SourceEntry`= 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 11741, 0, 0, 0, 9, 0, 26630, 0, 0, 0, 0, "", "Bossy - Show gossip on quest"),
(15, 11743, 0, 0, 0, 9, 0, 26630, 0, 0, 0, 0, "", "Narkk - Show gossip on quest"),
(15, 11744, 0, 0, 0, 2, 0, 59147, 1, 0, 0, 0, "0", "Fleet Master Seahorn - Show gossip with item"),
(15, 11744, 0, 0, 0, 2, 0, 59148, 1, 0, 0, 0, "0", "Fleet Master Seahorn - Show gossip with item"),
(15, 11744, 0, 0, 0, 9, 0, 26630, 0, 0, 0, 0, "0", "Fleet Master Seahorn - Show gossip on quest");

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2487,2663,43505) AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(2487, 0, 0, 0, 62, 0, 100, 0, 11744, 0, 0, 0, 33, 2487, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Fleet Master Seahorn - On Gossip Select Add QI"),
(2487, 0, 1, 0, 62, 0, 100, 0, 11744, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Fleet Master Seahorn - On Gossip Select Close Gossip"),

(2663, 0, 0, 0, 62, 0, 100, 0, 11743, 0, 0, 0, 11, 81315, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Narkk - On Gossip Select Add QI"),
(2663, 0, 1, 0, 62, 0, 100, 0, 11743, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Narkk - On Gossip Select Close Gossip"),

(43505, 0, 0, 0, 62, 0, 100, 0, 11741, 0, 0, 0, 11, 81311, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Bossy - On Gossip Select Add QI"),
(43505, 0, 1, 0, 62, 0, 100, 0, 11741, 1, 0, 0, 98, 11742, 16439, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Bossy - On Gossip Select Send a new Gossip");

/* Deathstalker Commander Belmont spawn missing added */
DELETE FROM `creature` WHERE `id`= 44789;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES (44789, 0, 1, 65535, 0, 0, 1414.89, 1010.27, 52.74, 2.17415, 300, 0, 0, 4170, 0, 0, 0, 0, 0, 0);

/* Thysta fixed */
UPDATE `creature_template` SET `faction_A` = 83, `faction_H` = 83 WHERE `entry` = 53008;

/* Abyssal Flamewalker fixed */
UPDATE `creature_template` SET `modelid1` = 18139 WHERE `entry` = 25001;

/* Stranglethorn Tigress missing spawn added */
DELETE FROM `creature` WHERE `id`=772;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(772, 0, 0, 0, 1, 1, 0, 0, -13051.4, 382.305, 19.0808, 2.31315, 60, 7, 0, 1910, 0, 1, 0, 0, 0, 0, 0, 0),
(772, 0, 0, 0, 1, 1, 0, 0, -13231.8, 518.073, 1.34628, 3.38929, 60, 7, 0, 1810, 0, 1, 0, 0, 0, 0, 0, 0),
(772, 0, 0, 0, 1, 1, 0, 0, -13096.2, 431.800, 27.4083, 1.90239, 60, 7, 0, 1810, 0, 1, 0, 0, 0, 0, 0, 0),
(772, 0, 0, 0, 1, 1, 0, 0, -13139.3, 389.000, 14.3412, 2.71999, 60, 7, 0, 1910, 0, 1, 0, 0, 0, 0, 0, 0),
(772, 0, 0, 0, 1, 1, 0, 0, -13179.9, 434.768, 12.7106, 1.61336, 60, 7, 0, 1910, 0, 1, 0, 0, 0, 0, 0, 0),
(772, 0, 0, 0, 1, 1, 0, 0, -13243.4, 462.281, 4.80346, 3.67267, 60, 7, 0, 1810, 0, 1, 0, 0, 0, 0, 0, 0),
(772, 0, 0, 0, 1, 1, 0, 0, -13007.7, 416.750, 21.2354, 0.692082, 60, 7, 0, 1910, 0, 1, 0, 0, 0, 0, 0, 0),
(772, 0, 0, 0, 1, 1, 0, 0, -13037.9, 337.359, 19.9688, 4.40231, 60, 7, 0, 1810, 0, 1, 0, 0, 0, 0, 0, 0),
(772, 0, 0, 0, 1, 1, 0, 0, -13027.6, 295.343, 19.5536, 4.53818, 60, 7, 0, 1910, 0, 1, 0, 0, 0, 0, 0, 0),
(772, 0, 0, 0, 1, 1, 0, 0, -13014.0, 251.269, 18.9863, 4.9835 , 60, 7, 0, 1910, 0, 1, 0, 0, 0, 0, 0, 0),
(772, 0, 0, 0, 1, 1, 0, 0, -13067.6, 256.738, 25.9949, 4.15648, 60, 7, 0, 1810, 0, 1, 0, 0, 0, 0, 0, 0);

/* Squiddic wrong spawns fix */
DELETE FROM `creature` WHERE `id`= 14270;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES 
(14270, 0, 1, 1, 5243, 0, -9426.87, -2387.9, 53.9999, 1.00264, 28800, 25, 0, 449, 0, 1, 0, 0, 0, 0);

/* Anduin Wrynn fixed */
UPDATE `creature_template` SET `modelid2` = 0 WHERE `entry` = 1747;

/* Tarenar Sunstrike missing spawn added */
DELETE FROM `creature` WHERE `id`=45429;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(45429, 0, 139, 5446, 1, 1, 0, 45429, 1692.83, -3027.97, 79.4409, 3.15905, 120, 0, 0, 3070, 1587, 0, 0, 0, 0, 0, 0, 0),
(45429, 0, 0, 0, 1, 1, 0, 45429, 1855.27, -3705.98, 160.586, 1.2089, 120, 0, 0, 3070, 1587, 0, 0, 0, 0, 0, 0, 0),
(45429, 0, 0, 0, 1, 1, 0, 45429, 1915.99, -2649.66, 60.4346, 0.407009, 120, 0, 0, 3070, 1587, 0, 0, 0, 0, 0, 0, 0);

/* Eitrigg missing spawn added */
DELETE FROM `creature` WHERE `id`=48569;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(48569, 0, 0, 0, 1, 1, 0, 0, -7499.39, -2192.12, 165.762, 2.61999, 60, 0, 0, 1549800, 0, 0, 0, 0, 0, 0, 0, 0);

/* Ariok spawn missing fixed */
DELETE FROM `creature` WHERE `id`=48565;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(48565, 0, 0, 0, 1, 1, 0, 0, -7496.44, -2177.98, 165.574, 5.67448, 60, 0, 0, 9812, 0, 0, 0, 0, 0, 0, 0, 0);

/* Lookout Captain Lolo Longstriker spawn missing added */
DELETE FROM `creature` WHERE `id` = 14634;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(14634, 0, 1, 1, 0, 0, -6492, -1152, 309.686, 3.492, 120, 0, 0, 3997, 0, 0, 0, 0, 0);

/* Lunk spawn missing added */
DELETE FROM `creature` WHERE `id`=47269;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(47269, 0, 1, 1, 11548, 2, -6892.28, -1860.73, 251.118, 2.548, 120, 0, 0, 1990, 0, 0, 0, 0, 0);

/* Prisanne Dustcropper missing spawn fixed */
DELETE FROM `creature` WHERE `id`=47268;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(47268, 0, 1, 1, 35512, 2, -6893.49, -1856.53, 250.762, 5.271, 120, 0, 0, 2138, 0, 0, 0, 0, 0);

/* Mogh the Dead fixed */
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 51658;

/* Bullmastiff fixed */
UPDATE `creature_template` SET `VehicleId` = 0 WHERE `entry` = 44476;

/* The Direglob fixed */
UPDATE `creature_template` SET `VehicleId` = 0 WHERE `entry` = 42592;

/* Ongo'longo fixed */
UPDATE `creature_template` SET `VehicleId` = 0 WHERE `entry` = 42815;

/* Lady Sylvanas Windrunner overspawned fixed */
DELETE FROM `creature` WHERE `id` = 44365;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES (44365, 0, 1, 1, 0, 0, 500.622, 1564.54, 128.345, 4.29351, 28800, 0, 0, 1, 0, 0, 0, 0, 0, 0);

/* Muckgill now drop his QI */
DELETE FROM `creature_loot_template` WHERE `entry`= 47759 AND `item`= 63090;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(47759, 63090, 100, 1, 0, 1, 1);

/* Quest: The Forsaken Trollbane - Quest starter fix */
DELETE FROM `creature_queststarter` WHERE `quest` = 26023;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (41949, 26023);

/* Infested Bear fixed */
UPDATE `creature_template` SET `VehicleId` = 0 WHERE `entry` = 47204;

/* Nerubian Overseer fixed */
UPDATE `creature_template` SET `minlevel` = 41, `maxlevel` = 41 WHERE `entry` = 16184;

/* Carrion Scarab fixed */
UPDATE `creature_template` SET `minlevel` = 39, `maxlevel` = 40 WHERE `entry` = 10699;

/* Quest: Dark Garb & To Kill With Purpose fix */
DELETE FROM `quest_template` WHERE `Id` IN (27451,27452);
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES 
(27451, 2, 42, 39, 0, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27453, 27451, 27453, 5, 2880, 0, 0, 0, 0, 0, 0, 15454, 1, 0, 8454152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1106, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To Kill With Purpose', 'Travel to Corin\'s Crossing to the south and slaughter the Scourge that inhabit the town. Collect 7 pieces of Living Rot. Use the Mortar and Pestle to grind the Living Rot into Coagulated Rot.', 'Greetings, stranger!  You\'ve entered the heart of the Plaguelands.  I hope you brought your undead-killing gear with you.$b$bThe plague spreads more slowly these days, so the Cult of the Damned has stepped up production in order to keep the land brown and dead, as they like it.  I\'ve got a plan to stop them.  Take my mortar and pestle, and use it on living rot from the undead creatures in Corin\'s Crossing to the southeast.  We\'re going to make a little present for the cultists!', '', 'Hello!  It\'s me.  Hope you don\'t mind a little home-brewed magic to allow me to communicate with you in the field.  It\'ll save us both some time.$B$BWe\'re going to incorporate that living rot into a mixture that\'ll ruin their next batch of plague.  That\'ll show them!', 'How are things looking in Corin\'s Crossing?', 'Return to Betina Bigglezink at Light\'s Shield Tower in Eastern Plaguelands.', 0, 0, 0, 0, 0, 0, 0, 0, 15447, 0, 0, 0, 7, 0, 0, 0, 15448, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16048),
(27452, 2, 42, 39, 0, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27453, 27451, 27453, 5, 2880, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1106, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Garb', 'Obtain Death Cultist Headwear and Death Cultist Robes from cultists within Corin\'s Crossing.', 'Some of my counterparts have told me that the land wants to heal, but several high-ranking undead - along with the Cult of the Damned - are not allowing it to.  That means we have to stop them!  I\'ve got a plan, but first, you\'re going to need a cultist disguise.$b$bHead southeast into Corin\'s Crossing, and take the clothing from the human cultists that roam through the town.  I\'ll contact you when you\'ve completed this step.', '', 'You\'ve got both pieces!  Good.  These will help when trying to sneak into their death camp.', 'Everything going alright so far, $N?', 'Return to Betina Bigglezink at Light\'s Shield Tower in Eastern Plaguelands.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61280, 61281, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16048);

/* Black Ravager fixed */
UPDATE `creature_template` SET `minlevel` = 22, `maxlevel` = 23 WHERE `entry` = 628;

/* The Evalcharr fixed */
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 8660;
DELETE FROM `creature` WHERE `id` = 8660;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES (8660, 1, 1, 1, 0, 1, 3527.01, -4122.61, 106.783, 2.18153, 64800, 50, 0, 674, 0, 1, 0, 0, 0, 0);

/* Quest: "Warchief's Command: Silverpine Forest" fix */
UPDATE `quest_template` SET `ExclusiveGroup` = 26964 WHERE `Id` IN (26964,28568);
UPDATE `quest_template` SET `NextQuestIdChain` = 0 WHERE `Id` = 25012;

/* Quest: Be Raptor fixed */
DELETE FROM `quest_template` WHERE `Id` = 26775;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES 
(26775, 2, 29, 24, 0, 33, 0, 0, 0, 0, 18875469, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26774, 0, 0, 26776, 6, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 671088648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61080, 61079, 61078, 61077, 0, 0, 1, 1, 1, 1, 0, 0, 930, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Be Raptor', 'Speak with Priestess Thaalia, then help the Captured Lashtail Hatchling escape from Zul\'Gurub.', 'Mind Control, very powerful, yes.$b$bWith luck, you can help Ohgan\'aka escape from Zul\'Gurub.$b$bThen, Ohgan\'aka becomes $n\'aka again!$b$bSpeak to Priestess, yes, and help $n\'aka escape.', '', '', '', 'Return to Priestess Thaalia at Fort Livingston in Northern Stranglethorn.', 42881, 42882, 42883, 42884, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Speak with Tan\'shang', 'Help Tenjiyu', 'Speak with Chiyu', 'Escape from Zul\'Gurub', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16048);

/* Illycor fixed */
DELETE FROM `smart_scripts` WHERE (`entryorguid`=41163 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(41163, 0, 0, 0, 0, 0, 100, 0, 2000, 4500, 14000, 22000, 11, 84297, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Cast Corrosive Saliva"),
(41163, 0, 1, 0, 0, 0, 100, 0, 7000, 9000, 18000, 27000, 11, 84298, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Cast Optic Link");

/* Quest: Soothing Spirits fixed */
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=82194);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 82194, 0, 0, 29, 0, 43923, 5, 0, 0, 0, "", "Target implicit Forlorn Spirit");

/* Quest: Powering our Defenses fixed */
DELETE FROM `creature` WHERE `id` IN (16364,17086);
UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `Id` = 8490;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 16364, `RequiredNpcOrGoCount1` = 1 WHERE `Id` = 8490;
UPDATE `creature_template` SET `faction_A` = 2, `faction_H` = 2 WHERE `entry` = 16364;
UPDATE `creature_text` SET `text` = '%s releases the last of its energies into the nearby runestone, successfully reactivating it.', `type` = 16 WHERE `entry` = 16364;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 17086;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=17086 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(17086, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 11, 16364, 200, 0, 0, 0, 0, 0, "Enraged Wraith - Attack the Infused Crystal on Spawn");

/* Duskwing fixed */
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 11897;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 11897;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=11897 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(11897, 0, 0, 0, 8, 0, 100, 0, 85431, 0, 1000, 1000, 49, 0, 0, 0, 0, 0, 0, 21, 200, 0, 0, 0, 0, 0, 0, "Duskwing - Attack when called");

/* Warlord Thresh'jin now drops his QI */
DELETE FROM `creature_loot_template` WHERE (`entry`=10822) AND (`item`=61315);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(10822, 61315, -100, 1, 0, 1, 1);

/* Mistwing Cliffdweller fixed */
UPDATE `creature_template` SET `minlevel` = 12, `maxlevel` = 13, `mindmg` = 17, `maxdmg` = 22 WHERE `entry` = 36304;

/* Jor'kil the Soulripper fixed */
DELETE FROM `creature_template_aura` WHERE `entry` = 32862;

/* Grizzled Brown Bear fixed */
UPDATE `creature_template` SET `minlevel` = 12, `maxlevel` = 13, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 17347;

/* Stephanos fixed */
DELETE FROM `creature` WHERE `id`=17555;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES 
(17555, 530, 1, 1, 0, 0, -3864.677002, -11642.542969, -137.646942, 2.268079, 300, 0, 0, 14193, 2790, 0, 0, 0, 0, 0);

/* Jadefire & Jaedenar fixed */
UPDATE `creature_template` SET `minlevel` = 45, `maxlevel` = 46 WHERE `entry` IN (7106,7107,7108,7110,7111,7112,7113,7125);

/* Plains Pridemane fixed */
UPDATE `creature_template` SET `unit_flags` = 67108864, `dynamicflags` = 0 WHERE `entry` = 37207;

