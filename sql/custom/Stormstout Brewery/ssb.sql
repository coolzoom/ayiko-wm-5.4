UPDATE `instance_template` SET `parent` = 870, `script` = 'instance_stormstout_brewery' WHERE `map` = 961;

REPLACE INTO `areatrigger_teleport` (`id`, `name`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`)
    VALUES
(7705, 'Stormstout Brewery - Entrance', 961, -730.599, 1260.903, 116.6238, 0);

UPDATE `creature_template` SET `ScriptName` = 'boss_yanzhu', faction_a = 16, faction_h = 16, minlevel = 87, maxlevel = 87, mindmg = 43957, maxdmg = 55941, attackpower = 33400, dmg_multiplier = 1, VehicleId = 2067 WHERE `entry` = 59479;
UPDATE `creature_template` SET `ScriptName` = 'boss_hoptallus', faction_a = 16, faction_h = 16, minlevel = 87, maxlevel = 87, mindmg = 43957, maxdmg = 55941, attackpower = 33400, dmg_multiplier = 1 WHERE `entry` = 56717;
UPDATE `creature_template` SET `ScriptName` = 'boss_ook_ook', faction_a = 16, faction_h = 16, minlevel = 87, maxlevel = 87, mindmg = 43957, maxdmg = 55941, attackpower = 33400, dmg_multiplier = 1 WHERE `entry` = 56637;
UPDATE `creature_template` SET `ScriptName` = 'npc_uncle_gao', minlevel = 86, maxlevel = 86 WHERE `entry` = 59074;
UPDATE `creature_template` SET `ScriptName` = 'npc_chen_yanzhu', minlevel = 86, maxlevel = 86 WHERE `entry` = 64361;
UPDATE `creature_template` SET `ScriptName` = 'npc_wall_of_suds', InhabitType = 7, spell1 = 0, flags_extra = 128, faction_a = 16, faction_h = 16, minlevel = 86, maxlevel = 86, mechanic_immune_mask = 2048 WHERE `entry` = 59512;
UPDATE `creature_template` SET `ScriptName` = 'npc_bloated_alemental', mindmg = 27841, maxdmg = 38743, attackpower = 32493, dmg_multiplier = 1 WHERE `entry` = 59518;
UPDATE `creature_template` SET `ScriptName` = 'npc_yeasty_alemental', mindmg = 14948, maxdmg = 20013, attackpower = 20031 WHERE `entry` = 59494;
UPDATE `creature_template` SET `ScriptName` = 'npc_sudsy_alemental', mindmg = 25841, maxdmg = 35613, attackpower = 32493, dmg_multiplier = 1 WHERE `entry` = 59522;
UPDATE `creature_template` SET `ScriptName` = 'npc_bubbling_alemental', mindmg = 14948, maxdmg = 20013, attackpower = 20031 WHERE `entry` = 59521;
UPDATE `creature_template` SET `ScriptName` = 'npc_fizzy_alemental', mindmg = 25841, maxdmg = 35613, attackpower = 32493, dmg_multiplier = 1 WHERE `entry` = 59520;
UPDATE `creature_template` SET `ScriptName` = 'npc_stout_alemental', mindmg = 27841, maxdmg = 38743, attackpower = 32493, dmg_multiplier = 1 WHERE `entry` = 59519;
UPDATE `creature_template` SET `ScriptName` = 'npc_suds_trigger' WHERE `entry` = 56748;
UPDATE `creature_template` SET `ScriptName` = 'npc_carbonate_trigger' WHERE `entry` = 56746;
UPDATE `creature_template` SET `ScriptName` = 'npc_bubble_shield', InhabitType = 4 WHERE `entry` = 65522;
UPDATE `creature_template` SET `ScriptName` = 'npc_hammer', minlevel = 93, maxlevel = 93 WHERE `entry` = 59539;
UPDATE `creature_template` SET `ScriptName` = 'npc_hammer_bopper', mindmg = 8000, maxdmg = 14000, attackpower = 10414, dmg_multiplier = 1, speed_walk = 0.5 WHERE `entry` = 59426;
UPDATE `creature_template` SET `ScriptName` = 'npc_explosive_hopper', mindmg = 8000, maxdmg = 14000, attackpower = 10414, dmg_multiplier = 1, speed_walk = 0.5 WHERE `entry` = 56718;
UPDATE `creature_template` SET `ScriptName` = 'npc_carrot_breath_stalker', speed_walk = 0.6, speed_run = 0.6, speed_fly = 0.6 WHERE `entry` = 59018;
UPDATE `creature_template` SET `ScriptName` = 'npc_barrel', minlevel = 92, maxlevel = 92, speed_run = 0.8, speed_walk = 0.8 WHERE `entry` = 56682;
UPDATE `creature_template` SET `ScriptName` = 'npc_aqua_dancer', HoverHeight = 7 WHERE `entry` = 56865;
UPDATE `creature_template` SET `ScriptName` = 'npc_fiery_trickster' WHERE `entry` = 56867;
UPDATE `creature_template` SET `ScriptName` = 'npc_nibbler', VehicleId = 2086 WHERE `entry` = 65392;
UPDATE `creature_template` SET `ScriptName` = 'npc_hozen_hollerer' WHERE `entry` = 56783;
UPDATE `creature_template` SET `ScriptName` = 'npc_hozen_party_animal' WHERE `entry` IN (59684, 57097, 56927);
UPDATE `creature_template` SET `ScriptName` = 'npc_hozen_bouncer' WHERE `entry` = 56849;
UPDATE `creature_template` SET `ScriptName` = 'npc_chen_stormstout', minlevel = 85, maxlevel = 85 WHERE `entry` = 59704;
UPDATE `creature_template` SET `ScriptName` = 'npc_auntie_stormstout', minlevel = 85, maxlevel = 85 WHERE `entry` = 59822;
UPDATE `creature_template` SET mindmg = 1024, maxdmg = 1893, attackpower = 2403, dmg_multiplier = 1 WHERE `entry` IN (59458, 59459, 59460, 59461, 56631);

UPDATE `creature_template` SET `faction_a` = 16, `faction_h` = 16, minlevel = 86 WHERE `entry` IN (59522, 59520, 56746, 56748, 65522, 59482, 59426, 56718);
UPDATE `creature_template` SET `faction_a` = 16, `faction_h` = 16, minlevel = 85, maxlevel = 85 WHERE `entry` IN (59521, 59494, 56631, 59458, 59459, 59460, 59461, 45979);
UPDATE `creature_template` SET `faction_a` = 16, `faction_h` = 16, minlevel = 86, maxlevel = 86, mindmg = 29841, maxdmg = 40568, attackpower = 32493, dmg_multiplier = 1 WHERE `entry` IN (59518, 59519);
UPDATE `creature_template` SET AIName = 'SmartAI', `faction_a` = 190, `faction_h` = 190, minlevel = 85, maxlevel = 85 WHERE `entry` IN (56865, 56867, 56927, 59684, 57097);
UPDATE `creature_template` SET AIName = 'SmartAI', `faction_a` = 190, `faction_h` = 190, minlevel = 86, maxlevel = 86, mindmg = 29841, maxdmg = 40568, attackpower = 32493, dmg_multiplier = 1 WHERE `entry` IN (56863, 56862, 56849);
UPDATE `creature_template` SET ScriptName = 'npc_controlled_hozen', `faction_a` = 16, `faction_h` = 16, minlevel = 86, maxlevel = 86, mindmg = 29841, maxdmg = 40568, attackpower = 32493, dmg_multiplier = 1 WHERE `entry` IN (56924, 59605);
UPDATE `creature_template` SET minlevel = 85, maxlevel = 85, InhabitType = 7 WHERE `entry` = 60276;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` IN (54020, 59394);

UPDATE `creature_template` SET `HoverHeight` = 5, modelid1 = 44155, ScriptName = 'npc_fizzy_bubble' WHERE `entry` = 59799;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` = 59482;
UPDATE `creature_template` SET AIName = 'SmartAI', mindmg = 2504, maxdmg = 5748, attackpower = 6774, dmg_multiplier = 1 WHERE `entry` IN (59684, 57097, 56927);

UPDATE `gameobject_template` SET `name` = 'Sliding Door' WHERE `entry` = 211981;


REPLACE INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(7998, 'at_stormstout_intro'),
(8366, 'at_uncle_gao');

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(59494, 0, 0, 0x3000000, 0x1, 0, '116259'),
(59521, 0, 0, 0x3000000, 0x1, 0, '116259 114931'),
(59518, 0, 0, 0x3000000, 0x1, 0, '116259 114929'),
(59522, 0, 0, 0x3000000, 0x1, 0, '116259 119418'),
(59519, 0, 0, 0x3000000, 0x1, 0, '116259 114930'),
(59520, 0, 0, 0x3000000, 0x1, 0, '116259 114934'),
(56863, 0, 0, 0, 0x1, 0, '113351'),
(56862, 0, 0, 0, 0x1, 438, ''),
(65375, 0, 0, 0, 0x1, 0, '114370 113124'),
(59075, 0, 0, 0, 0x1, 0, '114370 114955'),
(65376, 0, 0, 0, 0x1, 0, '114370 127600'),
(65392, 0, 0, 0, 0x1, 0, '128188'),
(60276, 0, 0, 0, 0x1, 416, ''),
(56731, 0, 0, 0, 0x1, 0, '106787'),
((SELECT difficulty_entry_2 FROM creature_template WHERE entry = 59494), 0, 0, 0x3000000, 0x1, 0, '116259'),
((SELECT difficulty_entry_2 FROM creature_template WHERE entry = 59521), 0, 0, 0x3000000, 0x1, 0, '116259 114931'),
((SELECT difficulty_entry_2 FROM creature_template WHERE entry = 59518), 0, 0, 0x3000000, 0x1, 0, '116259 114929'),
((SELECT difficulty_entry_2 FROM creature_template WHERE entry = 59522), 0, 0, 0x3000000, 0x1, 0, '116259 119418'),
((SELECT difficulty_entry_2 FROM creature_template WHERE entry = 59519), 0, 0, 0x3000000, 0x1, 0, '116259 114930'),
((SELECT difficulty_entry_2 FROM creature_template WHERE entry = 59520), 0, 0, 0x3000000, 0x1, 0, '116259 114934'),
((SELECT difficulty_entry_2 FROM creature_template WHERE entry = 56863), 0, 0, 0, 0x1, 0, '113351'),
((SELECT difficulty_entry_2 FROM creature_template WHERE entry = 56862), 0, 0, 0, 0x1, 438, ''),
((SELECT difficulty_entry_2 FROM creature_template WHERE entry = 60276), 0, 0, 0, 0x1, 416, ''),
((SELECT difficulty_entry_2 FROM creature_template WHERE entry = 56731), 0, 0, 0, 0x1, 0, '106787');

REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
/*
(128254, 'spell_brew_finale'),
(128256, 'spell_brew_finale'),
(128258, 'spell_brew_finale'); */
(106851, 'spell_blackout_brew'),
(106546, 'spell_bloat_aura'),
(114386, 'spell_carbonation'),
(111666, 'spell_hammer_smash'),
(112944, 'spell_carrot_breath'),
(112945, 'spell_carrot_breath_targeting'),
(107351, 'spell_ook_ook_barrel2'),
(106784, 'spell_ook_ook_barrel'),
(106614, 'spell_ook_ook_barrel_ride'),
(106648, 'spell_barrel_hostile'),
(106807, 'spell_ground_pound'),
(107205, 'spell_spicy_explosion');


REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(59799, 114459, 3, 0),
(59539, 111662, 3, 0);

DELETE FROM `creature_model_info` WHERE `modelid` IN (6303, 39460, 39466, 43311, 41259, 40713, 45787, 39485, 24964, 35802, 39916, 43210, 43216, 40339, 27883, 43230, 43915, 43916, 43917, 2955, 43918, 2957, 42142, 42966, 42967, 42968, 42970, 40106, 42174, 42175, 40810, 40819, 40962);
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`) VALUES
(6303, 0.35, 0.5, 2), -- 6303
(39460, 0.42, 1.5, 2), -- 39460
(39466, 0.3, 1.5, 2), -- 39466
(43311, 0.24, 1.2, 2), -- 43311
(41259, 0.93, 3.3, 0), -- 41259
(40713, 1, 1.25, 2), -- 40713
(45787, 0.347222, 1.5, 0), -- 45787
(39485, 1.5, 1.5, 2), -- 39485
(24964, 1, 1.5, 2), -- 24964
(35802, 0.2625, 0.375, 2), -- 35802
(39916, 0.0775, 0.375, 2), -- 39916
(43210, 0.3366, 1.65, 0), -- 43210
(43216, 0.15, 0.75, 0), -- 43216
(40339, 0.9, 6, 2), -- 40339
(27883, 0.2, 0.2, 2), -- 27883
(43230, 0.3978, 1.95, 0), -- 43230
(43915, 0.347222, 1.5, 0), -- 43915
(43916, 0.347222, 1.5, 0), -- 43916
(43917, 0.347222, 1.5, 0), -- 43917
(2955, 0.35, 0.5, 2), -- 2955
(43918, 0.347222, 1.5, 0), -- 43918
(2957, 0.35, 0.5, 2), -- 2957
(42142, 1, 1.5, 0), -- 42142
(42966, 0.31, 1.5, 2), -- 42966
(42967, 0.465, 2.25, 2), -- 42967
(42968, 0.155, 0.75, 2), -- 42968
(42970, 0.775, 10, 2), -- 42970
(40106, 0.372, 2.4, 2), -- 40106
(42174, 0.465, 1.65, 0), -- 42174
(42175, 0.465, 1.65, 0), -- 42175
(40810, 0.7, 1.5, 2), -- 40810
(40819, 0.12, 1.5, 2), -- 40819
(40962, 0.4513886, 1.95, 0); -- 40962
