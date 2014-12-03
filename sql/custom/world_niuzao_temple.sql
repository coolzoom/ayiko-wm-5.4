
-- GUID RANGES
-- Gameobjects - 35 GUIDs
SET @OGUID := 900000;
-- Creatures - 334 GUIDs
SET @CGUID := 900000;
DELETE FROM creature WHERE map = 1011;
DELETE FROM gameobject WHERE map = 1011;

/*
Niuzao Temple (Map 1011)
*/


/*
*******************************
******** TRASH MOBS ***********
*******************************
*/

-- First boss area

-- AMBER WEAVER
UPDATE creature_template SET ScriptName = 'npc_sikthik_amber_weaver' WHERE entry = 61929;
UPDATE creature_template SET faction_A = 16, faction_H = 16, flags_extra = 128 WHERE entry = 62208; -- Resin Shell

DELETE FROM creature_template_aura WHERE entry = 62208;
INSERT INTO creature_template_aura (entry, aura) VALUES
(62208, 121095); -- Resin Shell damage reduction trigger

UPDATE creature_template SET flags_extra = 128 WHERE entry = 61967;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` = 120596;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 120596, 0, 0, 31, 0, 3, 61967, 0, 0, 0, 0, '', 'Resin Weave Visual - Target stalker');

-- GUARDIAN
UPDATE creature_template SET ScriptName = 'npc_sikthik_guardian' WHERE entry = 61928;
-- RESIN FLAKE
UPDATE creature_template SET ScriptName = 'npc_resin_flake' WHERE entry = 61910;

/*
*******************************
***** VIZIER JIN'BAK **********
*******************************
*/

UPDATE creature_template SET ScriptName = 'boss_vizier_jinbak' WHERE entry = 61567;
DELETE FROM creature_template_aura WHERE entry = 61613;
INSERT INTO creature_template_aura (entry, aura) VALUES
(61613, 119939); -- Sap Stalker - Sap Residue

DELETE FROM spell_script_names WHERE spell_id IN(120001,120070, 119941);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(120001, 'spell_jinbak_detonate'),
(119941, 'spell_sap_residue'),
(120070, 'spell_sap_residue');

UPDATE creature_template SET ScriptName = 'npc_sap_globule' WHERE entry = 61623;
UPDATE creature_template SET flags_extra = 128 WHERE entry = 61629; -- Globule summon dest
UPDATE creature_template SET modelid1 = 38497, flags_extra = 128, ScriptName = 'npc_sap_puddle' WHERE entry = 61613;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (120071, 120070, 120001, 120095);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 120001, 0, 0, 31, 0, 3, 61613, 0, 0, 0, 0, '', 'Detonate - Target Sap Puddle'),
(13, 1, 120071, 0, 0, 31, 0, 3, 61613, 0, 0, 0, 0, '', 'Summon Sappling reverse - target Sap Puddle'),
(13, 1, 120070, 0, 0, 31, 0, 3, 61623, 0, 0, 0, 0, '', 'Sap Residue - Target Sappling'),
(13, 1, 120095, 0, 0, 31, 0, 3, 61613, 0, 0, 0, 0, '', 'Detonate Visual - Target Sap Puddle');

DELETE FROM creature_text WHERE entry = 61567;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(61567, 0, 0, 'I hope they make it this far. Then my strength and skill will be clear to all!', 14, 0, 100, 0, 0, 29392, 'Vizier Jin''bak - SAY_INTRO'),
(61567, 1, 0, 'Ah-hah! The lot of you will soon wish you hadn''t come this way...', 14, 0, 100, 0, 0, 29390, 'Vizier Jin''bak - SAY_AGGRO'),
(61567, 2, 0, 'But... I was... who will...?!', 14, 0, 100, 0, 0, 29392, 'Vizier Jin''bak - SAY_SAY_DEATH'),
(61567, 3, 0, 'Did you think you stood a chance?!', 14, 0, 100, 0, 0, 29394, 'Vizier Jin''bak - SAY_SLAY'),
(61567, 4, 0, 'Allow me to show you the power of amber alchemy...', 14, 0, 100, 0, 0, 29395, 'Vizier Jin''bak - SAY_DETONATE'),
(61567, 5, 0, '|cFFFE9A2ESap Globules|r begin to sprout from the tree!', 41, 0, 100, 0, 0, 0, 'Vizier Jin''bak - EMOTE_GLOBULE');


/*
*******************************
***** GENERAL / MISC **********
*******************************
*/


-- GAMEOBJECTS 

-- Gameobject template updates

UPDATE `gameobject_template` SET `faction`=114, `flags`=32 WHERE `entry`=213935; -- Mantid Cage
UPDATE `gameobject_template` SET `faction`=1375 WHERE `entry`=214548; -- Wind Wall
UPDATE `gameobject_template` SET `faction`=35 WHERE `entry`=214513; -- Instance Portal (Party + Heroic + Challenge)
UPDATE `gameobject_template` SET `flags`=48 WHERE `entry`=213174; -- Hardened Resin
UPDATE `gameobject_template` SET `flags`=48 WHERE `entry`=212921; -- Door
UPDATE `gameobject_template` SET `faction`=1375, `flags`=32 WHERE `entry`=212120; -- Mantid Siege Tank

-- Gameobject spawns

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+34;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 213935, 1011, 3, 1, 1583.483, 5437.167, 143.1189, 5.703949, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+1, 213935, 1011, 3, 1, 1756.479, 5200.947, 123.1955, 2.767587, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+2, 213935, 1011, 3, 1, 1675.59, 5374.961, 140.7971, 3.416165, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+3, 213174, 1011, 3, 1, 1528.8, 5246.287, 188.2148, 1.539751, 0, 0, 0.9890159, -0.1478094, 86400, 255, 1), -- Hardened Resin (Area: Hollowed Out Tree)
(@OGUID+4, 213935, 1011, 3, 1, 1465.009, 5387.101, 139.4203, 1.000308, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+5, 213935, 1011, 3, 1, 1681.611, 5280.933, 123.9144, 1.14108, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+6, 213935, 1011, 3, 1, 1668.681, 5228.431, 123.6285, 1.251256, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+7, 213935, 1011, 3, 1, 1531.226, 5442.71, 144.3723, 5.703949, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+8, 210097, 1011, 3, 1, 1551.637, 5360.46, 161.1658, 4.758403, 0, 0, 0, 1, 86400, 255, 1), -- Invisible Fire Wall - CoT Well of Eternity (Area: Hollowed Out Tree)
(@OGUID+9, 213935, 1011, 3, 1, 1673.993, 5203.558, 123.4393, 2.355199, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+10, 214513, 1011, 3, 1, 1447.434, 5093.14, 144.047, 0.7117478, 0, 0, 0, 1, 86400, 255, 1), -- Instance Portal (Party + Heroic + Challenge) (Area: Hollowed Out Tree)
(@OGUID+11, 213935, 1011, 3, 1, 1590.988, 5378.098, 140.005, 3.106543, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+12, 213935, 1011, 3, 1, 1765.839, 5306.599, 125.1556, 5.065248, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+13, 213935, 1011, 3, 1, 1782.691, 5239.21, 123.841, 3.820127, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+14, 212921, 1011, 3, 1, 1624.56, 5404.088, 139.6353, 3.029754, 0, 0, 0.9890159, -0.1478094, 86400, 255, 1), -- Door (Area: Hollowed Out Tree)
(@OGUID+15, 213935, 1011, 3, 1, 1734.337, 5151.901, 125.9915, 3.10351, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+16, 213935, 1011, 3, 1, 1828.345, 5361.768, 143.4061, 5.842029, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+17, 213935, 1011, 3, 1, 1771.665, 5409.702, 143.434, 5.44748, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+18, 213935, 1011, 3, 1, 1806.845, 5376.136, 143.5419, 4.587243, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+19, 213935, 1011, 3, 1, 1879.842, 5389.659, 141.5332, 5.030997, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+20, 209349, 1011, 3, 1, 1584.507, 5375.933, 140.3052, 3.783303, 0, 0, 0, 1, 86400, 255, 1), -- Green Tea Leaf (Area: Rear Staging Area)
(@OGUID+21, 212120, 1011, 3, 1, 1799.483, 5404.793, 144.0797, 4.348457, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Siege Tank (Area: Rear Staging Area)
(@OGUID+22, 212120, 1011, 3, 1, 1789.002, 5400.736, 143.1999, 4.337808, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Siege Tank (Area: Rear Staging Area)
(@OGUID+23, 213195, 1011, 3, 1, 1747.13, 5156.974, 127.2678, 5.926991, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Catapult (Area: Rear Staging Area)
(@OGUID+24, 212120, 1011, 3, 1, 1785.257, 5412.567, 144.1459, 4.544066, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Siege Tank (Area: Rear Staging Area)
(@OGUID+25, 213195, 1011, 3, 1, 1773.432, 5199.183, 123.1181, 5.685188, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Catapult (Area: Rear Staging Area)
(@OGUID+26, 212120, 1011, 3, 1, 1790.307, 5287.202, 124.7136, 5.277507, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Siege Tank (Area: Rear Staging Area)
(@OGUID+27, 212120, 1011, 3, 1, 1776.754, 5295.937, 123.7456, 5.277507, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Siege Tank (Area: Rear Staging Area)
(@OGUID+28, 209312, 1011, 3, 1, 1518.177, 5440.594, 145.7943, 0, 0, 0, 0, 1, 86400, 255, 1), -- Kyparite Deposit (Area: Rear Staging Area)
(@OGUID+29, 209349, 1011, 3, 1, 1818.156, 5378.471, 146.8779, 3.783303, 0, 0, 0, 1, 86400, 255, 1), -- Green Tea Leaf (Area: Forward Assault Camp)
(@OGUID+30, 213251, 1011, 3, 1, 1797.872, 5275.665, 123.769, 5.542965, 0, 0, 0, 1, 86400, 255, 1), -- Tiger Temple Invisible Wall (Area: Forward Assault Camp)
(@OGUID+31, 214548, 1011, 3, 1, 1790.667, 5266.955, 121.4965, 2.394133, 0, 0, 0, 1, 86400, 255, 1), -- Wind Wall (Area: Forward Assault Camp)
(@OGUID+32, 213251, 1011, 3, 1, 1785.111, 5262.324, 121.7521, 5.511616, 0, 0, 0, 1, 86400, 255, 1), -- Tiger Temple Invisible Wall (Area: Forward Assault Camp)
(@OGUID+33, 214838, 1011, 3, 1, 1896.844, 5174.136, 129.1, 0.002508164, 0, 0, 0, 1, 86400, 255, 1), -- Ner'onok Extra Collision (Area: Forward Assault Camp)
(@OGUID+34, 214838, 1011, 3, 1, 1891.465, 5168.78, 129.1, 4.820331, 0, 0, 0, 1, 86400, 255, 1); -- Ner'onok Extra Collision (Area: Forward Assault Camp)

-- CREATURES

-- Equipment Sets

DELETE FROM `creature_equip_template` WHERE `entry` IN (61634, 64517, 62348, 67093, 61701, 62632, 61485, 63106, 61928, 61929, 61434, 61436);
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(61634, 84769, 84767, 0), -- Commander Vo'jak
(64517, 83020, 0, 0), -- Shado-Master Chum Kiu
(62348, 84767, 0, 0), -- Sik'thik Soldier
(67093, 85947, 0, 0), -- Sik'thik Battle-Mender
(61701, 85401, 0, 0), -- Sik'thik Warrior
(62632, 84767, 0, 0), -- Sik'thik Engineer
(61485, 85401, 0, 0), -- General Pa'valak
(63106, 85399, 0, 0), -- Sik'thik Swarmer
(61928, 85401, 0, 0), -- Sik'thik Guardian
(61929, 85947, 0, 0), -- Sik'thik Amber-Weaver
(61434, 85576, 0, 0), -- Sik'thik Vanguard
(61436, 85399, 85399, 0); -- Sik'thik Bladedancer

UPDATE `creature_template` SET `equipment_id` = `entry` WHERE `entry` IN (61634, 64517, 62348, 67093, 61701, 62632, 61485, 63106, 61928, 61929, 61434, 61436);

-- Auras

DELETE FROM `creature_template_aura` WHERE `entry` IN (61964, 61965, 62091, 64517, 61613, 62794, 61812, 61817, 61670, 66699, 63106, 61634, 64520, 62348, 61483, 62205);
INSERT INTO `creature_template_aura` (`entry`, `aura`) VALUES
(61964, 120586), -- Sap Spray - Sap Spray
-- (61965, 120591), -- Sap Puddle - Sap Puddle
(62091, 126320), -- Sik'thik Flyer - Mantid Wings
(62091, 132441), -- Sik'thik Flyer - Mantid Wings
(64517, 86603), -- Shado-Master Chum Kiu - Stealth
(61613, 131628), -- Sap Puddle - Cosmetic Shield
-- (61613, 119939), -- Sap Puddle - Sap Puddle
(62794, 122347), -- Lo Chu - Barrel Assignment
(61812, 122347), -- Li Chu - Barrel Assignment
(61817, 123218), -- Mantid Tar Keg - Mantid Barrel Inactive
(61670, 121986), -- Sik'thik Demolisher - Carrying Explosives
(66699, 131049), -- Generic Invisible Stalker Controller NonImmune - IH - Gongable
(63106, 120270), -- Sik'thik Swarmer - Slowed
(61634, 120757), -- Commander Vo'jak - Frantic Fighter
(64520, 86603), -- Shado-Pan Prisoner - Stealth
-- (62348, 124067), -- Sik'thik Soldier - Catapult Channel
-- (61483, 119781), -- Reinforcements Summoner - Summon Mantid Soldier
(62205, 126303); -- Wing Leader Ner'onok - Mantid Wings

-- Model Corrections

UPDATE `creature_model_info` SET `bounding_radius`=1.25, `combat_reach`=1.25, `gender`=0 WHERE `modelid`=45766; -- Sik'thik Battle-Mender
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=42665; -- Mantid Tar Keg
UPDATE `creature_model_info` SET `bounding_radius`=1.5, `gender`=0 WHERE `modelid`=43118; -- Sik'thik Bladedancer
UPDATE `creature_model_info` SET `bounding_radius`=2, `combat_reach`=2, `gender`=0 WHERE `modelid`=43119; -- Sik'thik Vanguard
UPDATE `creature_model_info` SET `bounding_radius`=4, `combat_reach`=4, `gender`=0 WHERE `modelid`=43120; -- General Pa'valak
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=1, `gender`=0 WHERE `modelid`=43121; -- Sik'thik Soldier
UPDATE `creature_model_info` SET `bounding_radius`=0.347222, `gender`=0 WHERE `modelid`=44773; -- Shado-Pan Prisoner
UPDATE `creature_model_info` SET `bounding_radius`=0.3645831, `combat_reach`=1.575, `gender`=0 WHERE `modelid`=44774; -- Shado-Pan Prisoner 2
UPDATE `creature_model_info` SET `bounding_radius`=0.3819442, `combat_reach`=1.65, `gender`=0 WHERE `modelid`=44775; -- Shado-Pan Prisoner 3
UPDATE `creature_model_info` SET `bounding_radius`=0.347222, `gender`=1 WHERE `modelid`=44776; -- Shado-Pan Prisoner 4
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE `modelid`=43149; -- Sik'thik Builder
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=43150; -- Sik'thik Engineer
UPDATE `creature_model_info` SET `bounding_radius`=2, `combat_reach`=2 WHERE `modelid`=43151; -- Wing Leader Ner'onok

-- Creature template Corrections

UPDATE `creature_template` SET `minlevel`=89, `maxlevel`=89, `faction_A`=2137, `faction_H`=2137, `speed_run`=0.9920629, `VehicleId`=2087 WHERE `entry`=59836; -- Panda Seat
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=14, `faction_H`=14, `speed_run`=1.428571 WHERE `entry`=62348; -- Sik'thik Soldier
UPDATE `creature_template` SET `faction_A`=2028, `faction_H`=2028, `speed_run`=1 WHERE `entry`=59304; -- Bone Pile
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_run`=1.428571 WHERE `entry`=62632; -- Sik'thik Engineer
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_run`=1.428571 WHERE `entry`=62633; -- Sik'thik Builder
UPDATE `creature_template` SET `unit_class`=8, `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16 WHERE `entry`=58757; -- Scholomance Acolyte
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=6, `speed_run`=2.142857, `HoverHeight`=6 WHERE `entry`=66240; -- Antonidas' Self Help Guide to Standing in Fire
UPDATE `creature_template` SET `minlevel`=92, `maxlevel`=92, `faction_A`=14, `faction_H`=14, `speed_walk`=2, `speed_run`=1.714286 WHERE `entry`=59316; -- Soulflame
UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `faction_A`=16, `faction_H`=16 WHERE `entry`=56824; -- Boss 2 South Stalker
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=91, `maxlevel`=91, `faction_A`=14, `faction_H`=14, `speed_run`=1.428571 WHERE `entry`=59613; -- Professor Slate
UPDATE `creature_template` SET `unit_class`=8, `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_run`=1.428571 WHERE `entry`=67093; -- Sik'thik Battle-Mender
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16 WHERE `entry`=59614; -- Bored Student
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=92, `maxlevel`=92, `faction_A`=21, `faction_H`=21 WHERE `entry`=59080; -- Darkmaster Gandling
UPDATE `creature_template` SET `minlevel`=91, `maxlevel`=91, `faction_A`=16, `faction_H`=16, `speed_walk`=1.2, `speed_run`=0.4285714, `BaseAttackTime`=4000, `VehicleId`=2098 WHERE `entry`=59359; -- Flesh Horror
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16 WHERE `entry`=59360; -- Meat Graft
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=21, `faction_H`=21, `BaseAttackTime`=1905 WHERE `entry`=59368; -- Krastinovian Carver
UPDATE `creature_template` SET `minlevel`=90 WHERE `entry`=61311; -- Niuzao Sentinel
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=6, `speed_run`=2.142857 WHERE `entry`=59929; -- Ice Steps
UPDATE `creature_template` SET `minlevel`=91, `maxlevel`=91, `speed_run`=1 WHERE `entry`=59375; -- Cosmetic Meat Pile
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90 WHERE `entry`=59099; -- Fresh Test Subject
UPDATE `creature_template` SET `minlevel`=91, `maxlevel`=91, `faction_A`=16, `faction_H`=16 WHERE `entry`=58822; -- Risen Guard
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_run`=0.3571429 WHERE `entry`=59100; -- Expired Test Subject
UPDATE `creature_template` SET `unit_class`=8, `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16 WHERE `entry`=58823; -- Scholomance Neophyte
UPDATE `creature_template` SET `faction_A`=2102, `faction_H`=2102 WHERE `entry`=56890; -- Krik'thik Infiltrator
UPDATE `creature_template` SET `minlevel`=92, `maxlevel`=92, `faction_A`=2137, `faction_H`=2137, `speed_run`=0.9920629 WHERE `entry`=56895; -- Weak Spot
UPDATE `creature_template` SET `faction_A`=2244, `faction_H`=2244 WHERE `entry`=60502; -- Pandaren Disciple
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=1771, `faction_H`=1771, `speed_run`=0.9920629, `VehicleId`=2093 WHERE `entry`=59954; -- Krik'thik Glider
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=1771, `faction_H`=1771, `speed_run`=0.9920629, `VehicleId`=2095 WHERE `entry`=59955; -- Krik'thik Glider
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=5.2, `speed_run`=1.857143 WHERE `entry`=62731; -- Ice Wall
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=14, `faction_H`=14, `speed_walk`=2.8, `speed_run`=2 WHERE `entry`=63565; -- Mantid Catapult
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16 WHERE `entry`=59980; -- Meat Graft
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16 WHERE `entry`=59982; -- Meat Graft
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=92, `maxlevel`=92, `faction_A`=14, `faction_H`=14, `VehicleId`=2024 WHERE `entry`=58875; -- Darkmaster Gandling
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=6, `speed_run`=2.142857, `HoverHeight`=6 WHERE `entry`=59707; -- The Anarchist Arcanist
UPDATE `creature_template` SET `minlevel`=92, `maxlevel`=92, `faction_A`=233, `faction_H`=233, `speed_run`=1.190476 WHERE `entry`=59153; -- Rattlegore
UPDATE `creature_template` SET `minlevel`=92, `maxlevel`=92, `faction_A`=16, `faction_H`=16, `speed_walk`=1.6, `speed_run`=1.714286 WHERE `entry`=62205; -- Wing Leader Ner'onok
UPDATE `creature_template` SET `minlevel`=91, `faction_A`=16, `faction_H`=16, `speed_walk`=1.2, `speed_run`=1.428571 WHERE `entry`=61928; -- Sik'thik Guardian
UPDATE `creature_template` SET `faction_A`=2482, `faction_H`=2482 WHERE `entry`=65537; -- Serpent's Spine Cannoneer
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90 WHERE `entry`=59167; -- Teleport Location
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=92, `maxlevel`=92, `faction_A`=233, `faction_H`=233 WHERE `entry`=59184; -- Jandice Barov
UPDATE `creature_template` SET `unit_class`=8, `minlevel`=92, `maxlevel`=92, `faction_A`=974, `faction_H`=974, `speed_walk`=2.8, `speed_run`=1.428571 WHERE `entry`=58633; -- Instructor Chillheart
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=6, `speed_run`=2.142857, `VehicleId`=2456 WHERE `entry`=58635; -- Antonidas' Self Help Guide to Standing in Fire
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16 WHERE `entry`=59467; -- Candlestick Mage
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=91, `maxlevel`=91, `faction_A`=2245, `faction_H`=2245 WHERE `entry`=59193; -- Boneweaver
UPDATE `creature_template` SET `speed_walk`=0.5, `speed_run`=0.4960314 WHERE `entry`=62795; -- Sik'thik Warden
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `speed_walk`=6, `speed_run`=2.142857 WHERE `entry`=58917; -- Book Spawn Target
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=92, `maxlevel`=92, `faction_A`=2036, `faction_H`=2036, `BaseAttackTime`=1500 WHERE `entry`=59200; -- Lilian Voss
UPDATE `creature_template` SET `speed_walk`=0.4 WHERE `entry`=59481; -- World Trigger
UPDATE `creature_template` SET `unit_class`=8, `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=2.8, `speed_run`=1.428571, `VehicleId`=2020 WHERE `entry`=58662; -- Instructor Chillheart's Phylactery Vehicle
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_run`=1.428571 WHERE `entry`=61434; -- Sik'thik Vanguard
UPDATE `creature_template` SET `unit_class`=8, `minlevel`=92, `maxlevel`=92, `faction_A`=974, `faction_H`=974, `speed_walk`=2.8, `speed_run`=1.428571 WHERE `entry`=58664; -- Instructor Chillheart's Phylactery
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=66421; -- Painted Stag
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_run`=1.428571 WHERE `entry`=61436; -- Sik'thik Bladedancer
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=92, `maxlevel`=92, `faction_A`=233, `faction_H`=233 WHERE `entry`=59220; -- Jandice Barov
UPDATE `creature_template` SET `minlevel`=89, `maxlevel`=89 WHERE `entry`=59778; -- Krik'thik Striker
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=233, `faction_H`=233, `speed_run`=0.4285714 WHERE `entry`=59501; -- Reanimated Corpse
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=1.2, `speed_run`=1 WHERE `entry`=59503; -- Brittle Skeleton
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=6, `speed_run`=2.142857, `HoverHeight`=6 WHERE `entry`=59227; -- Wander's Colossal Book of Shadow Puppets
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=6, `speed_run`=2.142857, `HoverHeight`=6 WHERE `entry`=59230; -- The Anarchist Arcanist
UPDATE `creature_template` SET `minlevel`=91, `maxlevel`=91, `faction_A`=1771, `faction_H`=1771, `speed_run`=1.714286, `BaseAttackTime`=1500, `VehicleId`=2303 WHERE `entry`=61177; -- Raigonn
UPDATE `creature_template` SET `minlevel`=89, `maxlevel`=89 WHERE `entry`=59794; -- Krik'thik Disruptor
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=66448; -- Veiled Basilisk
UPDATE `creature_template` SET `faction_A`=2482, `faction_H`=2482 WHERE `entry`=58146; -- Serpent's Spine Defender
UPDATE `creature_template` SET `minlevel`=89, `maxlevel`=90, `faction_A`=2482, `faction_H`=2482 WHERE `entry`=64520; -- Shado-Pan Prisoner
UPDATE `creature_template` SET `minlevel`=93, `maxlevel`=93, `faction_A`=16, `faction_H`=16, `speed_run`=1.428571 WHERE `entry`=61483; -- Reinforcements Summoner
UPDATE `creature_template` SET `minlevel`=92, `maxlevel`=92, `faction_A`=16, `faction_H`=16, `speed_walk`=1.6, `speed_run`=1.571429 WHERE `entry`=61485; -- General Pa'valak
UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `faction_A`=16, `faction_H`=16 WHERE `entry`=56502; -- Panda Archer Target Gate Stalker
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=92, `maxlevel`=92, `BaseAttackTime`=1500 WHERE `entry`=58722; -- Lilian Voss

-- Creature Spawns

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+333;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 61629, 1011, 3, 1, 1541.785, 5132.401, 160.9948, 2.142226, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree)
(@CGUID+1, 61964, 1011, 3, 1, 1590.842, 5185.528, 199.5095, 3.574211, 86400, 0, 0), -- Sap Spray (Area: Hollowed Out Tree) (Auras: 120586 - Sap Spray)
(@CGUID+2, 61965, 1011, 3, 1, 1583.597, 5180.966, 189.9551, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+3, 62091, 1011, 3, 1, 1657.585, 5129.724, 267.6022, 3.536149, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+4, 61929, 1011, 3, 1, 1580.627, 5154.274, 190.3467, 3.427818, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree) (Auras: )
(@CGUID+5, 61910, 1011, 3, 1, 1576.402, 5193.693, 165.293, 5.095363, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+6, 61910, 1011, 3, 1, 1582.012, 5194.777, 166.0599, 2.064949, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+7, 61928, 1011, 3, 1, 1577.3, 5157.663, 190.851, 3.427818, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree) (Auras: )
(@CGUID+8, 61929, 1011, 3, 1, 1477.186, 5164.74, 190.3575, 0.08493939, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree)
(@CGUID+9, 61964, 1011, 3, 1, 1594.766, 5166.387, 172.3738, 3.283061, 86400, 0, 0), -- Sap Spray (Area: Hollowed Out Tree) (Auras: 120586 - Sap Spray)
(@CGUID+10, 61965, 1011, 3, 1, 1583.967, 5164.794, 164.4705, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+11, 61910, 1011, 3, 1, 1537.435, 5218.764, 189.4687, 5.645671, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+12, 62091, 1011, 3, 1, 1406.535, 5133.189, 237.4753, 1.93953, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+13, 61910, 1011, 3, 1, 1577.936, 5189.912, 164.347, 4.312555, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+14, 61967, 1011, 3, 1, 1470.747, 5176.208, 175.269, 6.242372, 86400, 0, 0), -- Resin Stalker (Area: Hollowed Out Tree) (Auras: )
(@CGUID+15, 61910, 1011, 3, 1, 1511.792, 5210.055, 162.9239, 5.605045, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+16, 62091, 1011, 3, 1, 1292.184, 5431.733, 300.6628, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+17, 61910, 1011, 3, 1, 1506.255, 5220.88, 165.4223, 2.950086, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+18, 61928, 1011, 3, 1, 1475.017, 5180.245, 165.9343, 3.062821, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree) (Auras: )
(@CGUID+19, 61910, 1011, 3, 1, 1583.375, 5184.591, 164.6805, 1.715442, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+20, 64517, 1011, 3, 1, 1480.415, 5117.146, 162.3875, 6.094553, 86400, 0, 0), -- Shado-Master Chum Kiu (Area: Hollowed Out Tree) (Auras: 86603 - Stealth)
(@CGUID+21, 61910, 1011, 3, 1, 1511.101, 5215.863, 164.2287, 5.196079, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+22, 61929, 1011, 3, 1, 1479.743, 5175.138, 167.4923, 3.083169, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree) (Auras: )
(@CGUID+23, 61928, 1011, 3, 1, 1475.384, 5171.843, 166.7396, 3.014761, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree) (Auras: )
(@CGUID+24, 62091, 1011, 3, 1, 1291.042, 5426.557, 300.6628, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+25, 61928, 1011, 3, 1, 1523.188, 5099.538, 167.5285, 3.715953, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree) (Auras: )
(@CGUID+26, 61967, 1011, 3, 1, 1567.613, 5157.995, 163.8649, 5.081972, 86400, 5, 1), -- Resin Stalker (Area: Hollowed Out Tree) (Auras: ) (possible waypoints or random movement)
(@CGUID+27, 61928, 1011, 3, 1, 1580.55, 5159.572, 163.5762, 3.449627, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree) (Auras: )
(@CGUID+28, 61929, 1011, 3, 1, 1578.385, 5152.376, 163.5289, 3.009625, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree) (Auras: )
(@CGUID+29, 61629, 1011, 3, 1, 1566.535, 5161.233, 163.4195, 3.313412, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree) (Auras: )
(@CGUID+30, 61910, 1011, 3, 1, 1538.557, 5227.184, 191.3179, 2.777005, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+31, 61965, 1011, 3, 1, 1565.486, 5199.29, 163.5688, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+32, 61964, 1011, 3, 1, 1557.613, 5195.345, 171.6966, 0.4105375, 86400, 0, 0), -- Sap Spray (Area: Hollowed Out Tree) (Auras: 120586 - Sap Spray)
(@CGUID+33, 61967, 1011, 3, 1, 1485.085, 5160.173, 188.7158, 1.637569, 86400, 0, 0), -- Resin Stalker (Area: Hollowed Out Tree) (Auras: )
(@CGUID+34, 61928, 1011, 3, 1, 1537.745, 5219.493, 165.1272, 0.9512784, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree)
(@CGUID+35, 61910, 1011, 3, 1, 1511.019, 5107.194, 189.311, 3.390801, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+36, 61910, 1011, 3, 1, 1580.753, 5184.203, 164.1129, 0.1874918, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+37, 61910, 1011, 3, 1, 1506.968, 5213.081, 163.6612, 1.326928, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+38, 61964, 1011, 3, 1, 1557.823, 5134.93, 198.0181, 4.964426, 86400, 0, 0), -- Sap Spray (Area: Hollowed Out Tree) (Auras: 120586 - Sap Spray)
(@CGUID+39, 61629, 1011, 3, 1, 1497.694, 5150.883, 161.6102, 0.1376801, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree)
(@CGUID+40, 61629, 1011, 3, 1, 1532.514, 5131.036, 161.5569, 1.780349, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree)
(@CGUID+41, 62091, 1011, 3, 1, 1652.451, 5121.956, 267.5221, 3.536149, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+42, 61965, 1011, 3, 1, 1560.189, 5125.899, 190.0589, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+43, 61910, 1011, 3, 1, 1508.33, 5112.922, 190.1414, 6.195593, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+44, 62091, 1011, 3, 1, 1654.139, 5126.962, 267.4041, 3.536149, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+45, 61910, 1011, 3, 1, 1537.672, 5225.24, 190.4103, 0.0148912, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+46, 61928, 1011, 3, 1, 1482.13, 5158.048, 189.7782, 0.1252213, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree)
(@CGUID+47, 61929, 1011, 3, 1, 1543.804, 5215.181, 164.5201, 1.523942, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree)
(@CGUID+48, 62091, 1011, 3, 1, 1287.898, 5423.46, 300.6628, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+49, 61910, 1011, 3, 1, 1585.51, 5193.44, 166.686, 2.142022, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+50, 61965, 1011, 3, 1, 1546.009, 5107.363, 165.2967, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+51, 61910, 1011, 3, 1, 1578.507, 5194.595, 165.7998, 3.998037, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+52, 61928, 1011, 3, 1, 1577.498, 5171.416, 190.7564, 3.733839, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree) (Auras: )
(@CGUID+53, 61910, 1011, 3, 1, 1509.819, 5110.651, 189.6304, 0.04830607, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+54, 61910, 1011, 3, 1, 1581.068, 5197.875, 167.3518, 2.306045, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+55, 61967, 1011, 3, 1, 1550.279, 5225.31, 170.7824, 1.588259, 86400, 5, 1), -- Resin Stalker (Area: Hollowed Out Tree) (Auras: ) (possible waypoints or random movement)
(@CGUID+56, 62091, 1011, 3, 1, 1265.012, 5425.224, 285.1802, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+57, 61629, 1011, 3, 1, 1563.635, 5176.804, 162.6476, 3.703456, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree)
(@CGUID+58, 61910, 1011, 3, 1, 1539.269, 5218.788, 189.4313, 3.666449, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+59, 61910, 1011, 3, 1, 1503.497, 5214.693, 165.0022, 0.8117864, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+60, 61910, 1011, 3, 1, 1586.823, 5186.526, 164.5241, 5.665604, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+61, 61910, 1011, 3, 1, 1542.312, 5223.708, 189.7088, 2.914401, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+62, 61910, 1011, 3, 1, 1517.316, 5211.196, 164.1759, 0.1004038, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+63, 62091, 1011, 3, 1, 1287.549, 5434.254, 300.6629, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+64, 61964, 1011, 3, 1, 1478.786, 5166.871, 174.2093, 3.637309, 86400, 0, 0), -- Sap Spray (Area: Hollowed Out Tree) (Auras: 120586 - Sap Spray)
(@CGUID+65, 61965, 1011, 3, 1, 1473.811, 5164.245, 168.5975, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+66, 61929, 1011, 3, 1, 1580.755, 5165.064, 190.1994, 3.253177, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree) (Auras: )
(@CGUID+67, 61929, 1011, 3, 1, 1517.326, 5104.866, 166.2057, 4.569722, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree) (Auras: )
(@CGUID+68, 61964, 1011, 3, 1, 1518.286, 5235.495, 175.7941, 4.684835, 86400, 0, 0), -- Sap Spray (Area: Hollowed Out Tree) (Auras: 120586 - Sap Spray)
(@CGUID+69, 61965, 1011, 3, 1, 1518.038, 5220.66, 165.6627, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+70, 62091, 1011, 3, 1, 1661.163, 5119.049, 266.7091, 3.536149, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+71, 61910, 1011, 3, 1, 1500.949, 5219.859, 166.3064, 2.681546, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+72, 62091, 1011, 3, 1, 1283.214, 5433.679, 300.6628, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+73, 61629, 1011, 3, 1, 1526.068, 5128.825, 164.7615, 1.541885, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree)
(@CGUID+74, 62091, 1011, 3, 1, 1268.151, 5428.321, 285.1802, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+75, 61929, 1011, 3, 1, 1557.085, 5223.059, 168.9098, 2.737649, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree)
(@CGUID+76, 61613, 1011, 3, 1, 1529.516, 5163.241, 159.5706, 0.1484158, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 131628 - Cosmetic Shield, 119939 - Sap Puddle)
(@CGUID+77, 61910, 1011, 3, 1, 1507.528, 5106.713, 189.2532, 2.795341, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+78, 61928, 1011, 3, 1, 1578.066, 5143.945, 163.5755, 2.261489, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree) (Auras: )
(@CGUID+79, 61965, 1011, 3, 1, 1558.306, 5207.479, 191.2494, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+80, 61910, 1011, 3, 1, 1531.994, 5224.419, 189.3918, 2.815315, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+81, 61910, 1011, 3, 1, 1504.246, 5206.777, 163.8606, 4.203589, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+82, 61629, 1011, 3, 1, 1496.66, 5176.999, 162.6893, 5.763525, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree) (Auras: )
(@CGUID+83, 61967, 1011, 3, 1, 1574.27, 5164.378, 189.0957, 4.376728, 86400, 5, 1), -- Resin Stalker (Area: Hollowed Out Tree) (Auras: ) (possible waypoints or random movement)
(@CGUID+84, 61928, 1011, 3, 1, 1548.868, 5217.926, 166.0724, 1.981884, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree)
(@CGUID+85, 62091, 1011, 3, 1, 1269.3, 5433.493, 285.1802, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+86, 61910, 1011, 3, 1, 1581.427, 5189.427, 164.9745, 1.954792, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+87, 61964, 1011, 3, 1, 1550.123, 5199.423, 198.7832, 0.7684988, 86400, 0, 0), -- Sap Spray (Area: Hollowed Out Tree) (Auras: 120586 - Sap Spray)
(@CGUID+88, 61629, 1011, 3, 1, 1566.191, 5150.156, 163.3379, 2.850755, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree)
(@CGUID+89, 62091, 1011, 3, 1, 1656.781, 5118.94, 267.2306, 3.536149, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+90, 61929, 1011, 3, 1, 1583.227, 5150.394, 164.3747, 2.819652, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree) (Auras: )
(@CGUID+91, 61629, 1011, 3, 1, 1550.901, 5194.542, 163.9263, 3.97958, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree)
(@CGUID+92, 61910, 1011, 3, 1, 1504.243, 5110.438, 188.4517, 5.370271, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+93, 61928, 1011, 3, 1, 1482.774, 5170.92, 189.5723, 6.103102, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree)
(@CGUID+94, 61965, 1011, 3, 1, 1564.91, 5128.379, 163.8963, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+95, 61620, 1011, 3, 1, 1527.068, 5299.913, 184.732, 4.629167, 86400, 0, 0), -- Yang Ironclaw (Area: Hollowed Out Tree)
(@CGUID+96, 62091, 1011, 3, 1, 1267.252, 5387.328, 262.5672, 0.07127205, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+97, 62091, 1011, 3, 1, 1279.24, 5378.591, 261.8154, 6.232801, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+98, 62091, 1011, 3, 1, 1270.046, 5391.732, 262.5672, 0.1346823, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+99, 62794, 1011, 3, 1, 1530.561, 5301.554, 184.732, 4.306245, 86400, 0, 0), -- Lo Chu (Area: Hollowed Out Tree) (Auras: 122347 - Barrel Assignment)
(@CGUID+100, 62091, 1011, 3, 1, 1269.657, 5379.705, 262.5657, 0.08976541, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+101, 62795, 1011, 3, 1, 1526.672, 5303.604, 184.732, 4.762897, 86400, 0, 0), -- Sik'thik Warden (Area: Hollowed Out Tree) (Auras: )
(@CGUID+102, 61812, 1011, 3, 1, 1523.502, 5301.018, 184.732, 5.100008, 86400, 0, 0), -- Li Chu (Area: Hollowed Out Tree) (Auras: 122347 - Barrel Assignment)
(@CGUID+103, 62091, 1011, 3, 1, 1276.071, 5395.638, 262.568, 0.133399, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+104, 62091, 1011, 3, 1, 1858.046, 5209.193, 225.9135, 5.418137, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+105, 62091, 1011, 3, 1, 1724.696, 5035.572, 239.3066, 2.940485, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+106, 62091, 1011, 3, 1, 1822.981, 4921.66, 205.8196, 3.216643, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+107, 62091, 1011, 3, 1, 1832.428, 4932.162, 205.8196, 3.228093, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+108, 62091, 1011, 3, 1, 1829.125, 4939.059, 205.8205, 3.224343, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+109, 62091, 1011, 3, 1, 1829.879, 4924.955, 205.8196, 3.22484, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+110, 62091, 1011, 3, 1, 1823.255, 4931.143, 204.7348, 3.187474, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+111, 61817, 1011, 3, 1, 1545.939, 5284.752, 184.8529, 1.224235, 86400, 5, 1), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive) (possible waypoints or random movement)
(@CGUID+112, 61670, 1011, 3, 1, 1486.661, 5399.953, 142.1343, 5.106897, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+113, 61670, 1011, 3, 1, 1522.108, 5394.429, 139.1991, 4.594025, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+114, 61670, 1011, 3, 1, 1534.96, 5390.47, 139.256, 4.47834, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+115, 63106, 1011, 3, 1, 1496.01, 5397.633, 140.1892, 5.038696, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+116, 61817, 1011, 3, 1, 1545.234, 5285.461, 184.8475, 0.9035403, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+117, 57478, 1011, 3, 1, 1488.946, 5298.888, 184.732, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+118, 61817, 1011, 3, 1, 1486.068, 5296.542, 184.732, 0.9035403, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+119, 61817, 1011, 3, 1, 1549.337, 5285.652, 184.8485, 1.840594, 86400, 5, 1), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive) (possible waypoints or random movement)
(@CGUID+120, 61670, 1011, 3, 1, 1517.696, 5406.799, 140.2151, 4.672641, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+121, 57478, 1011, 3, 1, 1548.208, 5287.304, 184.8364, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+122, 61817, 1011, 3, 1, 1488.127, 5295.745, 184.732, 1.338254, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+123, 61817, 1011, 3, 1, 1549.302, 5284.602, 184.8558, 1.839002, 86400, 5, 1), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive) (possible waypoints or random movement)
(@CGUID+124, 63106, 1011, 3, 1, 1518.575, 5386.583, 138.8989, 4.968798, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+125, 61817, 1011, 3, 1, 1488.03, 5296.766, 184.7319, 1.41797, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+126, 61670, 1011, 3, 1, 1499.731, 5404.56, 141.805, 5.038696, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+127, 61670, 1011, 3, 1, 1538.089, 5404.21, 139.4298, 4.436366, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+128, 61817, 1011, 3, 1, 1488.974, 5297.19, 184.732, 1.633882, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+129, 61817, 1011, 3, 1, 1550.3, 5286.034, 184.8464, 2.183713, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+130, 61670, 1011, 3, 1, 1499.564, 5390.675, 139.0927, 5.081068, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+131, 61817, 1011, 3, 1, 1551.036, 5286.886, 184.8302, 2.637528, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+132, 66699, 1011, 3, 1, 1520.595, 5299.436, 184.732, 0, 86400, 0, 0), -- Generic Invisible Stalker Controller NonImmune - IH (Area: Hollowed Out Tree) (Auras: 131049 - Gongable)
(@CGUID+133, 61817, 1011, 3, 1, 1491.639, 5297.969, 184.732, 2.896305, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+134, 63106, 1011, 3, 1, 1501.611, 5398.63, 139.6116, 4.947556, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+135, 61670, 1011, 3, 1, 1490.201, 5388.306, 139.5014, 5.076171, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+136, 63106, 1011, 3, 1, 1529.825, 5384.917, 139.9994, 4.539132, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+137, 61817, 1011, 3, 1, 1551.78, 5287.646, 184.8268, 2.586187, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+138, 61817, 1011, 3, 1, 1485.082, 5297.073, 184.732, 0.7451652, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+139, 61817, 1011, 3, 1, 1486.22, 5297.557, 184.732, 0.5643228, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+140, 61817, 1011, 3, 1, 1546.224, 5285.853, 184.849, 0.8928322, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+141, 61670, 1011, 3, 1, 1517.418, 5394.661, 139.1885, 4.503658, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+142, 61817, 1011, 3, 1, 1489.109, 5296.089, 184.7319, 1.654358, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+143, 63106, 1011, 3, 1, 1497.944, 5382.987, 139.5169, 5.081068, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+144, 63106, 1011, 3, 1, 1526.403, 5400.53, 139.5637, 4.527507, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+145, 61817, 1011, 3, 1, 1490.168, 5296.729, 184.732, 1.840594, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+146, 61817, 1011, 3, 1, 1547.24, 5285.669, 184.8413, 1.41797, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+147, 61670, 1011, 3, 1, 1504.146, 5404.806, 140.7919, 4.947556, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+148, 61817, 1011, 3, 1, 1548.307, 5284.96, 184.8413, 1.654358, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+149, 61817, 1011, 3, 1, 1493.016, 5296.44, 184.732, 2.79816, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+150, 61817, 1011, 3, 1, 1551.351, 5284.819, 184.8554, 2.79816, 86400, 5, 1), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive) (possible waypoints or random movement)
(@CGUID+151, 61670, 1011, 3, 1, 1495.177, 5403.714, 142.5123, 5.175195, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+152, 61670, 1011, 3, 1, 1531.144, 5392.999, 139.1139, 4.569481, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+153, 63106, 1011, 3, 1, 1490.227, 5395.728, 140.1251, 5.175195, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: 120270 - Slowed)
(@CGUID+154, 61670, 1011, 3, 1, 1526.45, 5393.729, 139.1876, 4.70598, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+155, 61817, 1011, 3, 1, 1491.134, 5297.112, 184.732, 2.183713, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+156, 61817, 1011, 3, 1, 1490.134, 5295.682, 184.732, 1.839002, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+157, 61817, 1011, 3, 1, 1551.319, 5285.856, 184.8482, 2.34951, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+158, 61817, 1011, 3, 1, 1485.352, 5298.081, 184.732, 0.4674295, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+159, 61817, 1011, 3, 1, 1544.189, 5284.963, 184.8504, 0.6648944, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+160, 61817, 1011, 3, 1, 1492.96, 5297.708, 184.732, 2.79816, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+161, 61817, 1011, 3, 1, 1485.023, 5296.042, 184.732, 0.6648944, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+162, 61817, 1011, 3, 1, 1545.389, 5286.476, 184.8406, 0.5643228, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+163, 61817, 1011, 3, 1, 1544.521, 5287.002, 184.8364, 0.4674295, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+164, 61817, 1011, 3, 1, 1487.021, 5296.897, 184.7319, 1.107405, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+165, 61817, 1011, 3, 1, 1548.142, 5286.113, 184.8446, 1.633882, 86400, 5, 1), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive) (possible waypoints or random movement)
(@CGUID+166, 63106, 1011, 3, 1, 1534.09, 5398.921, 139.1302, 4.436366, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+167, 61670, 1011, 3, 1, 1485.809, 5387.146, 139.5372, 5.133074, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+168, 61817, 1011, 3, 1, 1547.295, 5284.664, 184.8542, 1.338254, 86400, 5, 1), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive) (possible waypoints or random movement)
(@CGUID+169, 63106, 1011, 3, 1, 1524.627, 5385.994, 139.7608, 4.630273, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+170, 63106, 1011, 3, 1, 1519.444, 5400.557, 139.5995, 4.664006, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+171, 61817, 1011, 3, 1, 1486.793, 5295.687, 184.7319, 1.224235, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+172, 63106, 1011, 3, 1, 1503.623, 5384.272, 138.9869, 4.989927, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+173, 61817, 1011, 3, 1, 1550.325, 5284.965, 184.8538, 2.179494, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+174, 61670, 1011, 3, 1, 1504.102, 5391.895, 138.7024, 4.989927, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+175, 61817, 1011, 3, 1, 1491.158, 5296.043, 184.732, 2.179494, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+176, 63106, 1011, 3, 1, 1492.309, 5381.318, 139.5228, 5.217566, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+177, 61817, 1011, 3, 1, 1492.396, 5298.732, 184.732, 2.586187, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+178, 61670, 1011, 3, 1, 1494.62, 5389.788, 139.3728, 5.217566, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+179, 61817, 1011, 3, 1, 1552.309, 5285.424, 184.8399, 2.79816, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+180, 61817, 1011, 3, 1, 1492.151, 5296.934, 184.732, 2.34951, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+181, 61817, 1011, 3, 1, 1552.092, 5286.59, 184.8318, 2.79816, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+182, 61817, 1011, 3, 1, 1492.182, 5295.901, 184.732, 2.79816, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+183, 61817, 1011, 3, 1, 1544.25, 5285.992, 184.8433, 0.7451652, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+184, 61670, 1011, 3, 1, 1490.585, 5401.871, 142.3527, 5.056201, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+185, 62684, 1011, 3, 1, 1554.757, 5315.414, 184.7319, 1.584624, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+186, 62684, 1011, 3, 1, 1541.611, 5313.682, 185.2183, 1.732267, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+187, 62684, 1011, 3, 1, 1557.802, 5315.508, 184.7323, 1.732267, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+188, 61670, 1011, 3, 1, 1527.97, 5406.993, 140.1349, 4.664006, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+189, 62684, 1011, 3, 1, 1539.743, 5314.566, 185.2183, 1.732267, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+190, 57478, 1011, 3, 1, 1555.927, 5312.65, 184.7319, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+191, 62684, 1011, 3, 1, 1556.059, 5316.244, 184.7319, 1.732267, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+192, 62684, 1011, 3, 1, 1514.825, 5311.887, 184.7319, 1.732267, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+193, 61670, 1011, 3, 1, 1522.759, 5407.417, 140.269, 4.719938, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+194, 57478, 1011, 3, 1, 1513.189, 5309.396, 184.7319, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+195, 61670, 1011, 3, 1, 1533.313, 5406.377, 139.8538, 4.527507, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+196, 57478, 1011, 3, 1, 1540.203, 5310.736, 184.7319, 1.687166, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+197, 62684, 1011, 3, 1, 1538.194, 5313.143, 184.7319, 1.732267, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+198, 61701, 1011, 3, 1, 1523.967, 5414.13, 141.6149, 4.911316, 86400, 0, 0), -- Sik'thik Warrior (Area: Hollowed Out Tree) (Auras: )
(@CGUID+199, 62684, 1011, 3, 1, 1511.602, 5311.742, 184.7319, 1.584624, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+200, 62684, 1011, 3, 1, 1513.047, 5312.829, 184.7319, 1.732267, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+201, 57478, 1011, 3, 1, 1474.995, 5320.785, 171.3446, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+202, 62684, 1011, 3, 1, 1489.153, 5310.26, 184.7319, 2.284082, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+203, 62684, 1011, 3, 1, 1486.073, 5308.665, 184.7319, 2.284082, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+204, 57478, 1011, 3, 1, 1516.536, 5327.429, 159.2417, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+205, 57478, 1011, 3, 1, 1488.722, 5307.814, 184.7319, 2.23898, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+206, 62684, 1011, 3, 1, 1486.688, 5310.722, 184.7319, 2.284082, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+207, 57478, 1011, 3, 1, 1535.618, 5330.213, 159.2021, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+208, 61701, 1011, 3, 1, 1498.524, 5411.147, 144.3895, 4.911316, 86400, 0, 0), -- Sik'thik Warrior (Area: Hollowed Out Tree) (Auras: )
(@CGUID+209, 61634, 1011, 3, 1, 1509.667, 5424.979, 145.6868, 5.072042, 86400, 5, 1), -- Commander Vo'jak (Area: Hollowed Out Tree) (Auras: 120757 - Frantic Fighter) (possible waypoints or random movement)
(@CGUID+210, 61965, 1011, 3, 1, 1482.089, 5113.253, 164.0075, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Rear Staging Area) (Auras: 120591 - Sap Puddle)
(@CGUID+211, 64520, 1011, 3, 1, 1465.009, 5387.101, 139.5037, 6.08302, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Rear Staging Area)
(@CGUID+212, 61929, 1011, 3, 1, 1566.805, 5120.628, 164.8253, 0.1010236, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Rear Staging Area)
(@CGUID+213, 61964, 1011, 3, 1, 1489.998, 5111.353, 193.5215, 0.6708721, 86400, 0, 0), -- Sap Spray (Area: Rear Staging Area) (Auras: 120586 - Sap Spray)
(@CGUID+214, 61965, 1011, 3, 1, 1546.865, 5107.95, 189.3376, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Rear Staging Area) (Auras: 120591 - Sap Puddle)
(@CGUID+215, 64520, 1011, 3, 1, 1590.988, 5378.098, 140.0883, 1.906065, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Rear Staging Area) (Auras: 86603 - Stealth)
(@CGUID+216, 61964, 1011, 3, 1, 1481.726, 5121.479, 168.9901, 4.837616, 86400, 0, 0), -- Sap Spray (Area: Rear Staging Area) (Auras: 120586 - Sap Spray)
(@CGUID+217, 61965, 1011, 3, 1, 1496.72, 5117.418, 186.3669, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Rear Staging Area) (Auras: 120591 - Sap Puddle)
(@CGUID+218, 61629, 1011, 3, 1, 1508.649, 5130.711, 163.8047, 0.5960336, 86400, 0, 0), -- Sappling Summon Dest (Area: Rear Staging Area)
(@CGUID+219, 61964, 1011, 3, 1, 1489.592, 5131.908, 187.3059, 3.832379, 86400, 0, 0), -- Sap Spray (Area: Rear Staging Area) (Auras: 120586 - Sap Spray)
(@CGUID+220, 61965, 1011, 3, 1, 1483.769, 5127.194, 181.4369, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Rear Staging Area) (Auras: 120591 - Sap Puddle)
(@CGUID+221, 61964, 1011, 3, 1, 1472.498, 5131.902, 186.7208, 0.01176478, 86400, 0, 0), -- Sap Spray (Area: Rear Staging Area) (Auras: 120586 - Sap Spray)
(@CGUID+222, 61965, 1011, 3, 1, 1481.847, 5132.757, 178.5269, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Rear Staging Area) (Auras: 120591 - Sap Puddle)
(@CGUID+223, 61964, 1011, 3, 1, 1559.74, 5135.105, 170.9384, 5.362343, 86400, 0, 0), -- Sap Spray (Area: Rear Staging Area) (Auras: 120586 - Sap Spray)
(@CGUID+224, 61964, 1011, 3, 1, 1459.59, 5096.502, 156.2926, 2.28609, 86400, 0, 0), -- Sap Spray (Area: Rear Staging Area) (Auras: 120586 - Sap Spray)
(@CGUID+225, 61965, 1011, 3, 1, 1454.252, 5104.469, 152.1752, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Rear Staging Area) (Auras: 120591 - Sap Puddle)
(@CGUID+226, 61967, 1011, 3, 1, 1510.792, 5096.888, 174.7912, 5.64291, 86400, 5, 1), -- Resin Stalker (Area: Rear Staging Area) (possible waypoints or random movement)
(@CGUID+227, 61434, 1011, 3, 1, 1648.167, 5395.331, 139.891, 2.81814, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area)
(@CGUID+228, 62348, 1011, 3, 1, 1862.05, 5375.257, 142.7279, 5.48722, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+229, 62348, 1011, 3, 1, 1845.25, 5361.701, 143.3349, 5.48722, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+230, 61436, 1011, 3, 1, 1725.672, 5262.024, 123.9214, 5.680123, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area) (Auras: )
(@CGUID+231, 61434, 1011, 3, 1, 1669.852, 5388.716, 140.2972, 0, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area)
(@CGUID+232, 63565, 1011, 3, 1, 1865.066, 5348.137, 143.7178, 5.250711, 86400, 0, 0), -- Mantid Catapult (Area: Rear Staging Area)
(@CGUID+233, 61434, 1011, 3, 1, 1735.917, 5267.554, 123.9037, 5.680123, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area) (Auras: )
(@CGUID+234, 62348, 1011, 3, 1, 1811.497, 5338.332, 142.776, 5.313229, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+235, 62348, 1011, 3, 1, 1787.179, 5391.234, 142.5597, 1.284048, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: )
(@CGUID+236, 62348, 1011, 3, 1, 1821.589, 5343.059, 143.6199, 5.399011, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+237, 61436, 1011, 3, 1, 1650.066, 5389.146, 140.218, 2.81814, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area)
(@CGUID+238, 62348, 1011, 3, 1, 1778.668, 5405.807, 143.9633, 0.6300213, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: )
(@CGUID+239, 61434, 1011, 3, 1, 1669.734, 5382.697, 140.4579, 0.009320531, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area)
(@CGUID+240, 61434, 1011, 3, 1, 1739.957, 5327.307, 133.689, 0.8704404, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area)
(@CGUID+241, 61436, 1011, 3, 1, 1708.776, 5237.167, 123.5699, 5.727167, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area) (Auras: )
(@CGUID+242, 63565, 1011, 3, 1, 1831.269, 5317.601, 143.8597, 5.349746, 86400, 0, 0), -- Mantid Catapult (Area: Rear Staging Area)
(@CGUID+243, 62348, 1011, 3, 1, 1853.25, 5363.932, 143.1946, 5.48722, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+244, 67093, 1011, 3, 1, 1666.387, 5385.948, 140.2907, 6.188958, 86400, 0, 0), -- Sik'thik Battle-Mender (Area: Rear Staging Area)
(@CGUID+245, 61436, 1011, 3, 1, 1744.373, 5322.861, 132.7465, 1.479413, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area)
(@CGUID+246, 61434, 1011, 3, 1, 1764.691, 5402.311, 143.1676, 5.228849, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area) (Auras: )
(@CGUID+247, 61434, 1011, 3, 1, 1732.153, 5262.547, 123.7983, 5.680123, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area) (Auras: )
(@CGUID+248, 61436, 1011, 3, 1, 1701.129, 5224.331, 123.5459, 5.727167, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area) (Auras: )
(@CGUID+249, 61434, 1011, 3, 1, 1707.578, 5225.161, 123.5454, 5.727167, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area) (Auras: )
(@CGUID+250, 62348, 1011, 3, 1, 1861.601, 5370.603, 142.9213, 5.48722, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+251, 62348, 1011, 3, 1, 1822.148, 5347.208, 143.6979, 5.313229, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+252, 62348, 1011, 3, 1, 1797.379, 5395.991, 143.5745, 1.434195, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: )
(@CGUID+253, 62348, 1011, 3, 1, 1810.936, 5334.183, 142.7378, 5.399011, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+254, 62348, 1011, 3, 1, 1849.502, 5360.788, 143.3372, 5.48722, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+255, 61436, 1011, 3, 1, 1653.972, 5397.647, 140.157, 2.631867, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area)
(@CGUID+256, 67093, 1011, 3, 1, 1703.47, 5231.663, 123.5454, 5.681051, 86400, 0, 0), -- Sik'thik Battle-Mender (Area: Rear Staging Area) (Auras: )
(@CGUID+257, 62348, 1011, 3, 1, 1780.995, 5396.361, 142.8933, 0.6300213, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: )
(@CGUID+258, 67093, 1011, 3, 1, 1729.036, 5269.343, 123.9216, 5.574384, 86400, 0, 0), -- Sik'thik Battle-Mender (Area: Rear Staging Area) (Auras: )
(@CGUID+259, 67093, 1011, 3, 1, 1739.767, 5320.819, 132.3067, 1.532546, 86400, 0, 0), -- Sik'thik Battle-Mender (Area: Rear Staging Area)
(@CGUID+260, 61434, 1011, 3, 1, 1848.759, 5352.676, 143.7162, 0.6739157, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area)
(@CGUID+261, 67093, 1011, 3, 1, 1656.161, 5392.095, 140.2121, 2.724786, 86400, 0, 0), -- Sik'thik Battle-Mender (Area: Rear Staging Area)
(@CGUID+262, 62348, 1011, 3, 1, 1814.644, 5337.078, 143.0559, 5.313229, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+263, 63565, 1011, 3, 1, 1858.318, 5332.479, 143.5772, 5.360932, 86400, 0, 0), -- Mantid Catapult (Area: Rear Staging Area)
(@CGUID+264, 61436, 1011, 3, 1, 1733.724, 5275.04, 124.4426, 5.680123, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area) (Auras: )
(@CGUID+265, 61434, 1011, 3, 1, 1811.011, 5325.847, 143.0768, 0.598884, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area)
(@CGUID+266, 61436, 1011, 3, 1, 1735.009, 5322.977, 132.7677, 1.665685, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area)
(@CGUID+267, 62348, 1011, 3, 1, 1818.352, 5336.21, 143.3461, 5.399011, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+268, 63565, 1011, 3, 1, 1880.852, 5356.366, 143.6199, 5.250711, 86400, 0, 0), -- Mantid Catapult (Area: Rear Staging Area)
(@CGUID+269, 61434, 1011, 3, 1, 1711.104, 5230.338, 123.5454, 5.727167, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area) (Auras: )
(@CGUID+270, 62348, 1011, 3, 1, 1857.599, 5367.074, 143.0467, 5.399011, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+271, 62348, 1011, 3, 1, 1857.656, 5371.529, 142.8995, 5.48722, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+272, 61485, 1011, 3, 1, 1748.84, 5223.259, 123.5454, 5.733763, 86400, 0, 0), -- General Pa'valak (Area: Rear Staging Area) (Auras: )
(@CGUID+273, 61436, 1011, 3, 1, 1724.385, 5289.037, 126.6667, 4.256379, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area) (Auras: )
(@CGUID+274, 61434, 1011, 3, 1, 1717.942, 5287.909, 126.4641, 4.078951, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area) (Auras: )
(@CGUID+275, 62348, 1011, 3, 1, 1818.913, 5340.358, 143.4334, 5.313229, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+276, 62348, 1011, 3, 1, 1817.88, 5343.927, 143.4826, 5.313229, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+277, 61436, 1011, 3, 1, 1716.462, 5294.037, 128.0504, 4.070107, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area) (Auras: )
(@CGUID+278, 63565, 1011, 3, 1, 1849.373, 5314.985, 146.8725, 5.360932, 86400, 0, 0), -- Mantid Catapult (Area: Rear Staging Area)
(@CGUID+279, 62348, 1011, 3, 1, 1807.227, 5335.051, 142.3715, 5.313229, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+280, 62348, 1011, 3, 1, 1856.911, 5363.561, 143.1962, 5.399011, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+281, 63565, 1011, 3, 1, 1819.571, 5311.237, 143.7199, 5.406985, 86400, 0, 0), -- Mantid Catapult (Area: Rear Staging Area)
(@CGUID+282, 62348, 1011, 3, 1, 1849.538, 5365.566, 143.1815, 5.48722, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+283, 64520, 1011, 3, 1, 1583.483, 5437.167, 143.2022, 4.621813, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Rear Staging Area) (Auras: 86603 - Stealth)
(@CGUID+284, 64520, 1011, 3, 1, 1531.226, 5442.71, 145.1007, 4.621813, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Rear Staging Area) (Auras: 86603 - Stealth)
(@CGUID+285, 64520, 1011, 3, 1, 1674.882, 5376.411, 141.0183, 2.443623, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Rear Staging Area)
(@CGUID+286, 61629, 1011, 3, 1, 1513.88, 5198.814, 161.8364, 5.081458, 86400, 0, 0), -- Sappling Summon Dest (Area: Rear Staging Area)
(@CGUID+287, 57478, 1011, 3, 1, 1560.411, 5337.561, 159.2115, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Rear Staging Area)
(@CGUID+288, 64520, 1011, 3, 1, 1771.802, 5409.267, 143.8401, 4.324012, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+289, 62091, 1011, 3, 1, 1403.234, 5227.937, 235.7819, 1.845831, 86400, 5, 1), -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+290, 64520, 1011, 3, 1, 1806.845, 5376.136, 143.8239, 3.456405, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+291, 62091, 1011, 3, 1, 1399.468, 5231.281, 235.8724, 1.825816, 86400, 5, 1), -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+292, 64520, 1011, 3, 1, 1828.345, 5361.768, 143.67, 5.173313, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+293, 64520, 1011, 3, 1, 1765.005, 5305.857, 125.3433, 3.833319, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+294, 64520, 1011, 3, 1, 1682.667, 5281.125, 124.1915, 6.262496, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+295, 64520, 1011, 3, 1, 1670.729, 5229.104, 123.5747, 6.261765, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+296, 64520, 1011, 3, 1, 1674.924, 5204.922, 123.5747, 1.198878, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+297, 61567, 1011, 3, 1, 1539.254, 5174.492, 158.8932, 2.64298, 86400, 0, 0), -- Vizier Jin'bak (Area: Forward Assault Camp)
(@CGUID+298, 61629, 1011, 3, 1, 1557.563, 5142.438, 162.5173, 2.411743, 86400, 0, 0), -- Sappling Summon Dest (Area: Forward Assault Camp)
(@CGUID+299, 64520, 1011, 3, 1, 1782.691, 5239.21, 124.2925, 2.646523, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+300, 62633, 1011, 3, 1, 1811.41, 5256.103, 131.2533, 2.355699, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+301, 64520, 1011, 3, 1, 1755.915, 5203.043, 123.5473, 1.494914, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+302, 62632, 1011, 3, 1, 1806.547, 5253.688, 131.2533, 2.370481, 86400, 0, 0), -- Sik'thik Engineer (Area: Forward Assault Camp) (Auras: )
(@CGUID+303, 62633, 1011, 3, 1, 1804.401, 5249.022, 131.2533, 2.399399, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+304, 61629, 1011, 3, 1, 1506.866, 5190.82, 163.5395, 5.493496, 86400, 0, 0), -- Sappling Summon Dest (Area: Forward Assault Camp)
(@CGUID+305, 64520, 1011, 3, 1, 1733.726, 5153.439, 126.8906, 2.054837, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+306, 61483, 1011, 3, 1, 1733.038, 5332.926, 136.088, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
(@CGUID+307, 61964, 1011, 3, 1, 1554.024, 5095.485, 172.2365, 2.150814, 86400, 0, 0), -- Sap Spray (Area: Forward Assault Camp)
(@CGUID+308, 61483, 1011, 3, 1, 1727.012, 5342.524, 138.5872, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
(@CGUID+309, 61483, 1011, 3, 1, 1750.8, 5332.092, 134.8477, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
(@CGUID+310, 61483, 1011, 3, 1, 1741.793, 5338.747, 136.2742, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
(@CGUID+311, 62632, 1011, 3, 1, 1832.487, 5226.255, 131.1689, 4.004762, 86400, 5, 1), -- Sik'thik Engineer (Area: Forward Assault Camp) (Auras: ) (possible waypoints or random movement)
(@CGUID+312, 62633, 1011, 3, 1, 1822.342, 5243.702, 131.2533, 0.7771349, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+313, 61483, 1011, 3, 1, 1741.793, 5338.747, 136.2742, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
(@CGUID+314, 61483, 1011, 3, 1, 1727.012, 5342.524, 138.5872, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
(@CGUID+315, 61483, 1011, 3, 1, 1733.038, 5332.926, 136.088, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
(@CGUID+316, 61483, 1011, 3, 1, 1750.8, 5332.092, 134.8477, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
(@CGUID+317, 62205, 1011, 3, 1, 1888.998, 5177.15, 131.3173, 2.377002, 86400, 0, 0), -- Wing Leader Ner'onok (Area: Forward Assault Camp) (Auras: 126303 - Mantid Wings)
(@CGUID+318, 62633, 1011, 3, 1, 1836.439, 5213.16, 131.2518, 5.565708, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+319, 62633, 1011, 3, 1, 1839.641, 5215.642, 131.2518, 5.426046, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+320, 62633, 1011, 3, 1, 1843.891, 5202.702, 131.357, 2.396386, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+321, 62633, 1011, 3, 1, 1845.681, 5227.818, 131.2518, 1.737486, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+322, 62633, 1011, 3, 1, 1839.653, 5235.627, 131.2523, 5.706776, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+323, 62633, 1011, 3, 1, 1855.436, 5192.911, 131.3173, 5.328451, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+324, 62632, 1011, 3, 1, 1861.968, 5215.536, 131.1691, 2.446112, 86400, 0, 0), -- Sik'thik Engineer (Area: Forward Assault Camp) (Auras: )
(@CGUID+325, 62633, 1011, 3, 1, 1858.786, 5194.549, 131.3173, 5.260591, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+326, 62633, 1011, 3, 1, 1863.51, 5202.266, 131.3173, 0.647153, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+327, 62091, 1011, 3, 1, 1494.332, 5385.366, 216.0854, 0.139821, 86400, 5, 1), -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+328, 62091, 1011, 3, 1, 1693.081, 5298.844, 204.2646, 5.149067, 86400, 5, 1), -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+329, 62091, 1011, 3, 1, 1636.828, 5344.137, 213.9351, 5.827858, 86400, 5, 1), -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+330, 62091, 1011, 3, 1, 1647.284, 5343.329, 210.7402, 5.735339, 86400, 5, 1), -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+331, 62091, 1011, 3, 1, 1634.786, 5337.195, 213.935, 5.813205, 86400, 5, 1), -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+332, 62091, 1011, 3, 1, 1643.158, 5347.613, 213.9361, 5.784093, 86400, 5, 1), -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+333, 64517, 1011, 3, 1, 1851.226, 5214.163, 131.2519, 4.03415, 86400, 0, 0); -- Shado-Master Chum Kiu (Area: Forward Assault Camp)