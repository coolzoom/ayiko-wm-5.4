
DELETE FROM creature WHERE map = 996;
DELETE FROM gameobject WHERE map = 996;
-- GUID RANGES
-- Gameobjects - 35 GUIDs
SET @OGUID := (SELECT max(guid) FROM gameobject) + 1;
-- Creatures - 334 GUIDs
SET @CGUID := (SELECT max(guid) FROM creature) + 1;

DELETE FROM instance_template WHERE map = 996;
INSERT INTO instance_template (map, parent, script, allowMount) VALUES
(996, 0, 'instance_terrace_of_endless_spring', 0);

-- PROTECTORS OF THE ENDLESS


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` = 117230;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 117230, 0, 0, 31, 0, 3, 60585, 0, 0, 0, 0, '', 'Empowered - target Boss'),
(13, 1, 117230, 0, 1, 31, 0, 3, 60586, 0, 0, 0, 0, '', 'Empowered - target Boss'),
(13, 1, 117230, 0, 2, 31, 0, 3, 60583, 0, 0, 0, 0, '', 'Empowered - target Boss');

UPDATE creature_template SET ScriptName = 'boss_ancient_regail' WHERE entry = 60585;
UPDATE creature_template SET ScriptName = 'boss_ancient_asani' WHERE entry = 60586;
UPDATE creature_template SET ScriptName = 'boss_protector_kaolan' WHERE entry = 60583;
UPDATE creature_template SET minlevel = 93, maxlevel = 93, faction_A = 14, faction_H = 14, flags_extra = 128, ScriptName = 'mob_defiled_ground' WHERE entry = 60906;
UPDATE creature_template SET minlevel = 93, maxlevel = 93, faction_A = 14, faction_H = 14, flags_extra = 128, ScriptName = 'mob_coalesced_corruption' WHERE entry = 60886;
UPDATE creature_template SET minlevel = 93, maxlevel = 93, faction_A = 16, faction_H = 16, ScriptName = 'mob_cleansing_water' WHERE entry = 60646;
UPDATE creature_template SET minlevel = 92, maxlevel = 92, faction_A = 16, faction_H = 16, ScriptName = 'mob_corrupting_waters' WHERE entry = 60621;
UPDATE creature_template SET ScriptName = 'mob_minion_of_fear' WHERE entry = 60885;
UPDATE creature_template SET ScriptName = 'mob_minion_of_fear_controller' WHERE entry = 60957;

DELETE FROM spell_script_names WHERE spell_id IN (117988, 117955, 118064, 118040, 118053, 118054, 118055, 118077, 118004, 118005, 118007, 118008, 111850, 118191, 117905, 117283);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(117988, 'spell_defiled_ground_damage'),
(117955, 'spell_expelled_corruption'),
(118064, 'spell_lightning_storm_aura'),
(118040, 'spell_lightning_storm_aura'),
(118053, 'spell_lightning_storm_aura'),
(118054, 'spell_lightning_storm_aura'),
(118055, 'spell_lightning_storm_aura'),
(118077, 'spell_lightning_storm_aura'),
(118004, 'spell_lightning_storm_damage'),
(118005, 'spell_lightning_storm_damage'),
(118007, 'spell_lightning_storm_damage'),
(118008, 'spell_lightning_storm_damage'),
(111850, 'spell_lightning_prison'),
(118191, 'spell_corrupted_essence'),
(117905, 'spell_superior_corrupted_essence'),
(117283, 'spell_cleansing_waters_regen');

-- PROTECTORS OF THE ENDLESS END

-- TSULONG
UPDATE `creature_template` SET faction_A = 16, faction_H = 16, minlevel = 92, maxlevel = 92, Health_mod = 2, flags_extra = 128 WHERE `entry` = 62962; -- Unstable Sha Target
UPDATE `creature_template` SET faction_A = 16, faction_H = 16, minlevel = 92, maxlevel = 92, Health_mod = 2.45, `Mana_mod`=2.45, ScriptName = 'npc_unstable_sha' WHERE `entry` = 62919; -- Unstable Sha
UPDATE `creature_template` SET faction_A = 16, faction_H = 16, minlevel = 92, maxlevel = 92, Health_mod = 8.8, `Mana_mod`=8.8, ScriptName = 'npc_embodied_terror' WHERE `entry` = 62969; -- Embodied Terror
UPDATE `creature_template` SET faction_A = 16, faction_H = 16, minlevel = 92, maxlevel = 92, Health_mod = 1.65, `Mana_mod`=1.65, ScriptName = 'npc_fright_spawn' WHERE `entry` = 62977; -- Fright Spawn

DELETE FROM creature_text WHERE entry IN (62849, 62442);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(62849, 0, 0, '%s fades.', 16, 0, 100, 0, 0, 0, 'Sunbeam'),
(62442, 0, 0, '|TInterface\\Icons\\spell_holy_surgeoflight.blp:20|t%s casts |cFFFF0000|Hspell:122789|h[Sunbeam]|h|r!', 41, 0, 100, 0, 0, 29365, 'Tsulong - EMOTE_SUNBEAM'),
(62442, 1, 0, '%s summons an |cFFFFFFFFEmbodied Terror|r!', 41, 0, 100, 0, 0, 0, 'Tsulong - EMOTE_TERROR'),
(62442, 2, 0, '|TInterface\\Icons\\ability_warlock_everlastingaffliction.blp:20|t%s is affected by |cFFFF0000|Hspell:123011|h[Terrorize]|h|r! Dispel %s!', 41, 0, 100, 0, 0, 0, 'Tsulong - EMOTE_TERRORIZE'),
(62442, 3, 0, 'No... the waters... I must... resist... I shall not... fear...', 14, 0, 100, 0, 0, 29359, 'Tsulong - SAY_INTRO'),
(62442, 4, 0, 'You do not belong here! The waters must be protected... I will cast you out, or slay you!', 14, 0, 100, 0, 0, 29350, 'Tsulong - SAY_AGGRO'),
(62442, 5, 0, 'Flee this place... or die!', 14, 0, 100, 0, 0, 29365, 'Tsulong - SAY_NIGHTMARES'),
(62442, 5, 1, 'Overwhelming... fear!', 14, 0, 100, 0, 0, 29364, 'Tsulong - SAY_NIGHTMARES'),
(62442, 6, 0, 'Night... becomes day!', 14, 0, 100, 0, 0, 29356, 'Tsulong - SAY_NIGHT_TO_DAY'),
(62442, 6, 1, 'The sun... shines through...', 14, 0, 100, 0, 0, 29357, 'Tsulong - SAY_NIGHT_TO_DAY'),
(62442, 6, 2, 'Once more... the dawn...', 14, 0, 100, 0, 0, 29358, 'Tsulong - SAY_NIGHT_TO_DAY'),
(62442, 7, 0, 'Darkness grows...', 14, 0, 100, 0, 0, 29354, 'Tsulong - SAY_DAY_TO_NIGHT'),
(62442, 7, 1, 'Day falls to night...', 14, 0, 100, 0, 0, 29353, 'Tsulong - SAY_DAY_TO_NIGHT'),
(62442, 7, 2, 'Light fades...', 14, 0, 100, 0, 0, 29355, 'Tsulong - SAY_DAY_TO_NIGHT'),
(62442, 8, 0, 'No...!', 14, 0, 100, 0, 0, 29362, 'Tsulong - SAY_SLAY_DAY'),
(62442, 8, 1, 'Forgive me!', 14, 0, 100, 0, 0, 29363, 'Tsulong - SAY_SLAY_DAY'),
(62442, 9, 0, 'Die in darkness.', 14, 0, 100, 0, 0, 29360, 'Tsulong - SAY_SLAY_NIGHT'),
(62442, 9, 1, 'The night surrounds you...', 14, 0, 100, 0, 0, 29361, 'Tsulong - SAY_SLAY_NIGHT'),
(62442, 10, 0, 'I thank you, strangers. I have been freed.', 14, 0, 100, 0, 0, 29352, 'Tsulong - SAY_DEATH'),
(62442, 11, 0, 'Protect... the waters...', 14, 0, 100, 0, 0, 29352, 'Tsulong - SAY_WIPE');

DELETE FROM spell_script_names WHERE spell_id IN (122438, 122453, 123018);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(122438, 'spell_tsulong_sha_regen'),
(122453, 'spell_tsulong_sha_regen'),
(123018, 'spell_terrorize_periodic_player');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (122952, 123012, 122928);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 122952, 0, 0, 31, 0, 3, 62962, 0, 0, 0, 0, '', 'Summon Unstable Sha - target Trigger'),
(13, 1, 123012, 0, 0, 31, 0, 3, 62442, 0, 0, 0, 0, '', 'Terrorize - target Tsulong'),
(13, 1, 122928, 0, 0, 31, 0, 3, 62442, 0, 0, 0, 0, '', 'Instability - target Tsulong');

UPDATE creature_template SET ScriptName = 'boss_tsulong' WHERE entry = 62442;
UPDATE creature_template SET ScriptName = 'npc_sunbeam' WHERE entry = 62849;

DELETE FROM spell_script_names WHERE spell_id IN (125843, 122768, 122789);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(125843, 'spell_dread_shadows_damage'),
(122768, 'spell_dread_shadows_malus'),
(122789, 'spell_sunbeam');

DELETE FROM creature_template_aura WHERE entry IN (62442);
INSERT INTO creature_template_aura (entry, aura) VALUES
(62442, 122452), -- Tsulong - Energy drain
(62442, 64481); -- Tsulong - Reduce Critical Strike Chance -100%

-- TSULONG END

-- LEI SHI

UPDATE creature_template SET ScriptName = 'boss_lei_shi' WHERE entry = 62983;
UPDATE creature_template SET ScriptName = 'mob_animated_protector' WHERE entry = 62995;
UPDATE creature_template SET ScriptName = 'mob_lei_shi_hidden' WHERE entry = 63099;

DELETE FROM spell_script_names WHERE spell_id IN (123461, 123244, 123233, 123705, 123712);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(123461, 'spell_get_away'),
(123244, 'spell_hide'),
(123233, 'spell_hide_stacks'),
(123705, 'spell_scary_fog_dot'),
(123712, 'spell_scary_fog_stacks');

-- LEI SHI END

-- SHA OF FEAR

UPDATE creature_template SET ScriptName = 'boss_sha_of_fear' WHERE entry = 60999;
UPDATE creature_template SET ScriptName = 'mob_pure_light_terrace' WHERE entry = 60788;
UPDATE creature_template SET ScriptName = 'mob_return_to_the_terrace' WHERE entry = 65736;
UPDATE creature_template SET ScriptName = 'mob_terror_spawn' WHERE entry = 61034;

DELETE FROM spell_script_names WHERE spell_id IN (117866, 125786, 119414, 119108, 129075);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(117866, 'spell_champion_of_light'),
(119414, 'spell_breath_of_fear'),
(125786, 'spell_breath_of_fear'),
(119108, 'spell_conjure_terror_spawn'),
(129075, 'spell_penetrating_bolt');

-- SHA OF FEAR END

-- TRASH / MISC


UPDATE creature_template SET ScriptName = 'npc_springtender_ashani' WHERE entry = 64846;
UPDATE creature_template SET ScriptName = 'npc_apparition_of_fear' WHERE entry = 64368;
UPDATE creature_template SET ScriptName = 'npc_apparition_of_terror' WHERE entry = 66100;
UPDATE creature_template SET ScriptName = 'mob_night_terrors' WHERE entry = 64390;
UPDATE creature_template SET ScriptName = 'mob_night_terror_summon' WHERE entry = 64393;

DELETE FROM spell_script_names WHERE spell_id IN (125736, 125745);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(125736, 'spell_night_terrors_missile'),
(125745, 'spell_night_terrors_periodic');

-- TRASH / MISC END

UPDATE `creature_model_info` SET `bounding_radius`=0.6076385, `combat_reach`=2.625, `gender`=0 WHERE `modelid`=41815; -- 41815
UPDATE `creature_model_info` SET `bounding_radius`=0.6076385, `combat_reach`=2.625, `gender`=0 WHERE `modelid`=41816; -- 41816
UPDATE `creature_model_info` SET `bounding_radius`=0.6, `combat_reach`=11, `gender`=0 WHERE `modelid`=42532; -- 42532
UPDATE `creature_model_info` SET `bounding_radius`=0.6, `combat_reach`=11, `gender`=0 WHERE `modelid`=42533; -- 42533
UPDATE `creature_model_info` SET `bounding_radius`=0.61112, `combat_reach`=2 WHERE `modelid`=43771; -- 43771
UPDATE `creature_model_info` SET `bounding_radius`=0.53473, `combat_reach`=1.75 WHERE `modelid`=43772; -- 43772
UPDATE `creature_model_info` SET `bounding_radius`=0.62, `combat_reach`=4.5 WHERE `modelid`=43783; -- 43783
UPDATE `creature_model_info` SET `bounding_radius`=0.62, `combat_reach`=3 WHERE `modelid`=48588; -- 48588
UPDATE `creature_model_info` SET `bounding_radius`=0.155 WHERE `modelid`=43547; -- 43547
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=2 WHERE `modelid`=44649; -- 44649
UPDATE `creature_model_info` SET `bounding_radius`=2.75, `combat_reach`=4.125, `gender`=0 WHERE `modelid`=41502; -- 41502
UPDATE `creature_model_info` SET `bounding_radius`=1.75, `combat_reach`=24.5, `gender`=0 WHERE `modelid`=45065; -- 45065
UPDATE `creature_model_info` SET `bounding_radius`=3, `combat_reach`=4.5, `gender`=0 WHERE `modelid`=41503; -- 41503
UPDATE `creature_model_info` SET `bounding_radius`=2.75, `combat_reach`=4.125, `gender`=0 WHERE `modelid`=41504; -- 41504



DELETE FROM `creature_equip_template` WHERE `entry` IN (61046, 60583, 60585, 60586, 61038);
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(61046, 0, 0, 72283), -- Jinlun Kun
(60583, 81390, 0, 0), -- Protector Kaolan
(60585, 81389, 81389, 0), -- Elder Regail
(60586, 79832, 0, 0), -- Elder Asani
(61038, 0, 0, 72283); -- Yang Guoshi

UPDATE `creature_template` SET `unit_class`=4, `minlevel`=93, `maxlevel`=93, `speed_walk`=1.444444, `speed_run`=1.571429, `BaseAttackTime`=1500, `HoverHeight`=10, `VehicleId`=2267 WHERE `entry`=63025; -- Tsulong
UPDATE `creature_template` SET `minlevel`=93, `maxlevel`=93, `faction_A`=16, `faction_H`=16, `speed_run`=1.571429, `VehicleId`=2466 WHERE `entry`=60583; -- Protector Kaolan
UPDATE `creature_template` SET `minlevel`=93, `maxlevel`=93, `faction_A`=16, `faction_H`=16, `speed_run`=1.571429, `VehicleId`=2466 WHERE `entry`=60585; -- Elder Regail
UPDATE `creature_template` SET `minlevel`=93, `maxlevel`=93, `faction_A`=16, `faction_H`=16, `speed_run`=1.571429, `VehicleId`=2466 WHERE `entry`=60586; -- Elder Asani
UPDATE `creature_template` SET `unit_class`=4, `minlevel`=93, `maxlevel`=93, `faction_A`=14, `faction_H`=14, `speed_walk`=1.6, `speed_run`=1.714286, `BaseAttackTime`=2500 WHERE `entry`=60999; -- Sha of Fear
UPDATE `creature_template` SET `speed_walk`=2, `speed_run`=0.7142857 WHERE `entry`=64443; -- Enchanted Plant
UPDATE `creature_template` SET `minlevel`=91, `maxlevel`=91, `faction_A`=16, `faction_H`=16 WHERE `entry`=66100; -- Apparition of Terror
UPDATE `creature_template` SET `minlevel`=93, `maxlevel`=93, `faction_A`=16, `faction_H`=16, `speed_walk`=1.2, `speed_run`=0.8571429 WHERE `entry`=61038; -- Yang Guoshi
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=62962; -- Unstable Sha Target
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=61046; -- Jinlun Kun
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=62983; -- Lei Shi
UPDATE `creature_template` SET `unit_class`=4, `minlevel`=93, `maxlevel`=93, `faction_A`=1965, `faction_H`=1965, `speed_walk`=1.444444, `speed_run`=1.571429, `BaseAttackTime`=1500, InhabitType = 4, `HoverHeight`=10, `VehicleId`=2270 WHERE `entry`=62442; -- Tsulong
UPDATE `creature_template` SET `speed_walk`=2, `BaseAttackTime`=1500 WHERE `entry`=62995; -- Animated Protector
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=65736; -- Return to the Terrace
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=63275; -- Corrupted Protector
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=71095; -- Reflection of Lei Shi


DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+71;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 66100, 996, 3, 1, -982.4202, -3066.155, 12.65248, 2.69789, 86400, 0, 0), -- Apparition of Terror (Auras: )
(@CGUID+1, 60999, 996, 3, 1, -1017.885, -2758.34, 38.65445, 4.713077, 86400, 0, 0), -- Sha of Fear (Auras: 72242 - Zero Energy + Zero Regen)
(@CGUID+2, 64846, 996, 3, 1, -1036.106, -3136.929, 27.33581, 5.415483, 86400, 0, 0), -- Springtender Ashani (Area: -Unknown-)
(@CGUID+3, 63025, 996, 3, 1, -1018.432, -2784.434, 49.42927, 1.507317, 86400, 0, 0), -- Tsulong (Auras: 122452 - Energy Drain & 50% HP)
(@CGUID+4, 60583, 996, 3, 1, -1017.872, -3058.726, 12.90685, 1.501029, 86400, 0, 0), -- Protector Kaolan (Auras: 118221 - Sha Mask, 93105 - Invisibility and Stealth Detection)
(@CGUID+5, 36737, 996, 3, 1, -1012.141, -3137.469, 27.18475, 4.667953, 86400, 0, 0), -- Invisible Stalker (Area: -Unknown-)
(@CGUID+6, 64368, 996, 3, 1, -1052.701, -3068.122, 12.65246, 0.5773664, 86400, 0, 0), -- Apparition of Fear (Auras: )
(@CGUID+7, 60585, 996, 3, 1, -1009.938, -3045.016, 12.90687, 3.827047, 86400, 0, 0), -- Elder Regail (Auras: 118221 - Sha Mask)
(@CGUID+8, 63420, 996, 3, 1, -1017.799, -3049.115, 12.90686, 4.695064, 86400, 0, 0), -- SLG Generic MoP (Auras: 125630 - Sha Corruption Fountain, 125666 - Sha Corruption Fountain)
(@CGUID+9, 66100, 996, 3, 1, -1053.422, -3031.821, 12.65243, 5.874397, 86400, 0, 0), -- Apparition of Terror (Auras: )
(@CGUID+10, 60586, 996, 3, 1, -1025.783, -3044.844, 12.90687, 5.698801, 86400, 0, 0), -- Elder Asani (Auras: 118221 - Sha Mask)
(@CGUID+11, 64368, 996, 3, 1, -982.1927, -3032.257, 12.65242, 3.545668, 86400, 0, 0), -- Apparition of Fear (Auras: )
(@CGUID+12, 60957, 996, 3, 1, -1017.972, -2938.677, 19.43974, 4.690664, 86400, 0, 0), -- Minion of Fear Controller (Area: -Unknown-)
-- (@CGUID+13, 32639, -1, 3, 1, 0, 0, 0, 0, 86400, 0, 0), -- Gnimo (Auras: 61424 - Traveler's Tundra Mammoth) - !!! on transport - transport template not found !!!
-- (@CGUID+13, 32638, -1, 3, 1, 0, 0, 0, 0, 86400, 0, 0), -- Hakmud of Argus (Auras: 61424 - Traveler's Tundra Mammoth) - !!! on transport - transport template not found !!!
(@CGUID+13, 62962, 996, 3, 1, -980.7986, -3090.003, 12.20953, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+14, 62962, 996, 3, 1, -1024.486, -3101.462, 12.2165, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+15, 62962, 996, 3, 1, -969.5156, -3075.156, 12.20953, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+16, 62962, 996, 3, 1, -993.757, -2999.411, 12.20953, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+17, 62962, 996, 3, 1, -1064.377, -3077.078, 12.20952, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+18, 62962, 996, 3, 1, -1018.58, -2992.519, 12.39281, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+19, 62962, 996, 3, 1, -1060.609, -3012.747, 12.20952, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+20, 62962, 996, 3, 1, -967.1077, -3021.302, 12.20953, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+21, 62962, 996, 3, 1, -1074.8, -3053.674, 12.20953, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+22, 62962, 996, 3, 1, -1018.58, -2992.519, 12.39281, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+23, 62962, 996, 3, 1, -1001.01, -3098.932, 12.20952, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+24, 62962, 996, 3, 1, -961.7952, -3041.033, 12.20953, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+25, 62962, 996, 3, 1, -963.3073, -3059.722, 12.20953, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+26, 62962, 996, 3, 1, -1070.936, -3030.722, 12.20952, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+27, 62962, 996, 3, 1, -1047.977, -3096.87, 12.20952, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+28, 62962, 996, 3, 1, -979.0972, -3006.896, 12.20953, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+29, 62962, 996, 3, 1, -1047.639, -2999.571, 12.20952, 4.655136, 86400, 0, 0), -- Unstable Sha Target (Area: -Unknown-)
(@CGUID+30, 64443, 996, 3, 1, -963.2674, -3072.51, 12.20953, 0, 86400, 0, 0), -- Enchanted Plant (Auras: )
(@CGUID+31, 62442, 996, 3, 1, -1017.281, -2826.896, 81.23129, 4.581499, 86400, 0, 0), -- Tsulong (Auras: 122452 - Energy Drain & 50% HP)
(@CGUID+32, 63275, 996, 3, 1, -1018.217, -2935.313, 19.43974, 4.706642, 86400, 0, 0), -- Corrupted Protector (Auras: )
(@CGUID+33, 62995, 996, 3, 1, -1045.229, -2925.26, 19.17827, 1.960813, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+34, 62995, 996, 3, 1, -1013.615, -2925.484, 19.70614, 1.112243, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+35, 62995, 996, 3, 1, -1011.262, -2888.345, 19.70614, 4.302896, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+36, 63275, 996, 3, 1, -1034.58, -2932.844, 19.17827, 4.60711, 86400, 0, 0), -- Corrupted Protector (Auras: )
(@CGUID+37, 63275, 996, 3, 1, -1025.069, -2898.184, 19.70614, 4.675861, 86400, 0, 0), -- Corrupted Protector (Auras: )
(@CGUID+38, 62995, 996, 3, 1, -1023.323, -2936.851, 19.43974, 3.936672, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+39, 62995, 996, 3, 1, -1035.009, -2910.316, 19.70614, 3.573017, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+40, 63275, 996, 3, 1, -1002.269, -2932.604, 19.17827, 4.759389, 86400, 0, 0), -- Corrupted Protector (Auras: )
(@CGUID+41, 63275, 996, 3, 1, -992.5938, -2895.517, 19.17827, 4.685382, 86400, 0, 0), -- Corrupted Protector (Auras: )
(@CGUID+42, 63275, 996, 3, 1, -1042.7, -2895.097, 19.17827, 4.684506, 86400, 0, 0), -- Corrupted Protector (Auras: )
(@CGUID+43, 62995, 996, 3, 1, -992.842, -2888.924, 19.17827, 2.489937, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+44, 62995, 996, 3, 1, -1012.432, -2941.378, 19.43974, 3.005274, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+45, 62995, 996, 3, 1, -1038.372, -2934.913, 19.17827, 2.312799, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+46, 62995, 996, 3, 1, -994.75, -2925.177, 19.17827, 4.801074, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+47, 63275, 996, 3, 1, -1017.519, -2923.793, 19.70614, 4.617083, 86400, 0, 0), -- Corrupted Protector (Auras: )
(@CGUID+48, 63275, 996, 3, 1, -1008.391, -2901.328, 19.70614, 4.679592, 86400, 0, 0), -- Corrupted Protector (Auras: )
(@CGUID+49, 62995, 996, 3, 1, -998.684, -2934.783, 19.17827, 5.882029, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+50, 62995, 996, 3, 1, -1042.057, -2888.434, 19.17827, 1.974275, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+51, 62995, 996, 3, 1, -1002.585, -2913.233, 19.70614, 4.014608, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+52, 62995, 996, 3, 1, -1028.252, -2923.663, 19.70614, 0, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+53, 62995, 996, 3, 1, -1023.389, -2888.509, 19.70614, 0.8620354, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+54, 62995, 996, 3, 1, -1027.068, -2899.241, 19.70614, 1.261874, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+55, 63275, 996, 3, 1, -998.4861, -2914.141, 19.70614, 4.712246, 86400, 0, 0), -- Corrupted Protector (Auras: )
(@CGUID+56, 63275, 996, 3, 1, -1038.613, -2916.74, 19.70614, 4.694122, 86400, 0, 0), -- Corrupted Protector (Auras: )
(@CGUID+57, 62983, 996, 3, 1, -1017.93, -2911.302, 19.9015, 4.70965, 86400, 5, 1), -- Lei Shi (Auras: 123620 - Clouded Reflection) (possible waypoints or random movement)
(@CGUID+58, 62995, 996, 3, 1, -1008.399, -2900.63, 19.70614, 4.643414, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+59, 62995, 996, 3, 1, -1044.986, -2901.198, 19.17827, 3.013757, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+60, 62995, 996, 3, 1, -989.3629, -2902.622, 19.17827, 0.6423108, 86400, 0, 0), -- Animated Protector (Auras: 123493 - Protect)
(@CGUID+61, 65736, 996, 3, 1, -1214.8, -2824.82, 41.24303, 3.507344, 86400, 0, 0), -- Return to the Terrace (Auras: 120216 - Pure Light Visual)
(@CGUID+62, 60788, 996, 3, 1, -1017.835, -2771.984, 38.65444, 1.578282, 86400, 0, 0), -- Pure Light Terrace (Auras: 117865 - Light Wall)
(@CGUID+63, 65736, 996, 3, 1, -832.0764, -2745.399, 31.67754, 0.1536942, 86400, 0, 0), -- Return to the Terrace (Auras: 120216 - Pure Light Visual)
(@CGUID+64, 61038, 996, 3, 1, -1214.795, -2824.823, 41.24303, 3.506719, 86400, 0, 0), -- Yang Guoshi (Auras: 120000 - Sha Corruption)
(@CGUID+65, 65736, 996, 3, 1, -1214.8, -2824.82, 41.24303, 3.507344, 86400, 0, 0), -- Return to the Terrace (Auras: 120216 - Pure Light Visual)
(@CGUID+66, 61046, 996, 3, 1, -832.0764, -2745.405, 31.67757, 0.1583484, 86400, 0, 0), -- Jinlun Kun (Auras: 120000 - Sha Corruption)
(@CGUID+67, 65736, 996, 3, 1, -832.0764, -2745.399, 31.67754, 0.1536942, 86400, 0, 0), -- Return to the Terrace (Auras: 120216 - Pure Light Visual)
(@CGUID+68, 61046, 996, 3, 1, -832.0764, -2745.405, 31.67757, 0.1583484, 86400, 0, 0), -- Jinlun Kun (Auras: 120000 - Sha Corruption)
(@CGUID+69, 65736, 996, 3, 1, -832.0764, -2745.399, 31.67754, 0.1536942, 86400, 0, 0), -- Return to the Terrace (Auras: 120216 - Pure Light Visual)
(@CGUID+70, 65736, 996, 3, 1, -1214.8, -2824.82, 41.24303, 3.507344, 86400, 0, 0), -- Return to the Terrace (Auras: 120216 - Pure Light Visual)
(@CGUID+71, 71095, 996, 3, 1, -1017.91, -2771.976, 38.65443, 4.709265, 86400, 0, 0); -- Reflection of Lei Shi (Auras: 141597 - Lei Shi Victory)


DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+8;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 214525, 996, 3, 1, -1021.247, -3157.253, 30.74737, 1.571902, 0, 0, 0, 1, 86400, 255, 1), -- Instance Portal (Raid 4 Difficulties) (Area: -Unknown-)
(@OGUID+1, 214854, 996, 3, 1, -1017.841, -3049.008, 13.82509, 4.71239, 0, 0, -0.7071068, 0.7071068, 86400, 255, 1), -- Jinyu Council Vortex Wall (Area: -Unknown-)
(@OGUID+2, 214853, 996, 3, 1, -1017.925, -3049.097, -6.989163, 4.71239, 0, 0, -0.7071068, 0.7071068, 86400, 255, 1), -- Jinyu Council Vortex (Area: -Unknown-)
(@OGUID+3, 214852, 996, 3, 1, -1017.925, -2911.348, -0.4573183, 4.71239, 0, 0, -0.7071068, 0.7071068, 86400, 255, 1), -- Lei Shi Vortex (Area: -Unknown-)
(@OGUID+4, 214851, 996, 3, 1, -1017.841, -2911.576, 20.35694, 4.71239, 0, 0, -0.7071068, 0.7071068, 86400, 255, 1), -- Lei Shi Vortex Wall (Area: -Unknown-)
(@OGUID+5, 214850, 996, 3, 1, -1017.925, -2771.996, 23.1714, 4.71239, 0, 0, -0.7071068, 0.7071068, 86400, 255, 1), -- Sha of Fear Vortex (Area: -Unknown-)
(@OGUID+6, 214849, 996, 3, 1, -1017.875, -2771.908, 39.1506, 4.71239, 0, 0, -0.7071068, 0.7071068, 86400, 255, 1), -- Sha of Fear Vortex Wall (Area: -Unknown-)
(@OGUID+7, 214498, 996, 3, 1, -1214.692, -2824.766, 33.12907, 3.508117, 0, 0, 0.9832549, -0.1822356, 86400, 255, 1), -- Gazebo Vortices (Area: -Unknown-)
(@OGUID+8, 214498, 996, 3, 1, -832.0063, -2745.444, 23.56371, 0.165805, 0, 0, 0.0828083, 0.9965655, 86400, 255, 1); -- Gazebo Vortices (Area: -Unknown-)

UPDATE creature SET spawnMask = 15 WHERE map = 996;
UPDATE gameobject SET spawnMask = 15 WHERE map = 996;