-- Fel Reavers, No Thanks!
UPDATE `creature_template` SET `unit_flags`='262912', `flags_extra`='2', `AIName`='SmartAI' WHERE (`entry`='22293');
UPDATE `quest_template` SET `CompleteScript`='0' WHERE (`Id`='10850');
DELETE FROM `disables` WHERE (`sourceType`='1') AND (`entry`='10850');
DELETE FROM `quest_end_scripts` WHERE (`id`='10850') AND (`delay`='2') AND (`command`='7') AND (`datalong`='10855');
DELETE FROM `smart_scripts` WHERE `entryorguid` = '22293' AND `source_type` = '0';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('22293', '0', '0', '0', '20', '0', '100', '0', '10850', '0', '0', '0', '33', '22293', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Inactive Fel Reaver - On Quest \'Nether Gas In a Fel Fire Engine\' Finished - Quest Credit \'Fel Reavers, No Thanks!\''),
('22293', '0', '1', '0', '20', '0', '100', '0', '10850', '0', '0', '0', '37', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Inactive Fel Reaver - On Quest \'Nether Gas In a Fel Fire Engine\' Finished - Quest Credit \'Fel Reavers, No Thanks!\'');

-- Frankly, It Makes No Sense...
UPDATE `gameobject_template` SET `ScriptName`='go_arcano_control_unit' WHERE `entry` IN('185008', '185009', '185010');
DELETE FROM `spell_script_names` WHERE `spell_id` = '37851';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('37851', 'spell_gen_tag_greater_felfire_diemetradon');

-- The Thunderspike
SET @GO_THUNDERSPIKE := 184729;
SET @EVENT_SCRIPTS_ID := 13685;
SET @NPC_GOR_GRIMGUT := 21319;

UPDATE `gameobject_template` SET `AIName` = "", `ScriptName` = "", `data2` = @EVENT_SCRIPTS_ID, `data3` = 60000, `WDBVerified` = 15050 WHERE `entry` = @GO_THUNDERSPIKE;
UPDATE `gameobject` SET `spawntimesecs` = 60 WHERE `id` = @GO_THUNDERSPIKE;
UPDATE `creature_template` SET `exp`='2', `faction_A`='16', `faction_H`='16', `AIName` = "SmartAI", `minlevel` = 67 WHERE `entry` = @NPC_GOR_GRIMGUT;
DELETE FROM `event_scripts` WHERE `id` = @EVENT_SCRIPTS_ID;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(@EVENT_SCRIPTS_ID, 1, 10, @NPC_GOR_GRIMGUT, 120000, 0, 1326.51, 6691.53, -20.3344, 3.29793);

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_GOR_GRIMGUT AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @GO_THUNDERSPIKE AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC_GOR_GRIMGUT, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Gor Grimgut - On Spawn - Attack Start"),
(@NPC_GOR_GRIMGUT, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Gor Grimgut - On Spawn - Say Line 0"),
(@NPC_GOR_GRIMGUT, 0, 2, 0, 0, 0, 100, 0, 15000, 16000, 35000, 40000, 11, 35492, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Gor Grimgut - IC - Cast Exhaustion"),
(@NPC_GOR_GRIMGUT, 0, 3, 4, 2, 0, 100, 1, 30, 0, 0, 0, 11, 35491, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Gor Grimgut - At 30% HP - Cast Furious Rage"),
(@NPC_GOR_GRIMGUT, 0, 4, 0, 61, 0, 100, 0, 30, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Gor Grimgut - At 30% HP - Say Line 1");

DELETE FROM `creature_text` WHERE `entry` = @NPC_GOR_GRIMGUT;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_GOR_GRIMGUT, 0, 0, "Hah! The Thunderspike is mine. Die!", 12, 0, 100, 0, 0, 0, "Gor Grimgut"),
(@NPC_GOR_GRIMGUT, 1, 0, "%s goes into a frenzy!", 16, 0, 100, 0, 0, 0, "Gor Grimgut");

-- On the Crab
UPDATE `gameobject_template` SET `data3`='0', `ScriptName`='go_full_crab_pot' WHERE (`entry`='213508');
DELETE FROM `gameobject` WHERE `id` = '213508' AND `guid` > '401308';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `protect_anti_doublet`) VALUES
(401408, 213508, 870, 0, 0, 1, 1, -1226.74, 3769.18, -48.0838, 3.48074, 0, 0, 0.985657, -0.168761, 120, 255, 1, 0, NULL),
(401409, 213508, 870, 0, 0, 1, 1, -1400.51, 3789.07, -48.2446, 2.86812, 0, 0, 0.990666, 0.136309, 120, 255, 1, 0, NULL),
(401410, 213508, 870, 0, 0, 1, 1, -1382.54, 3940.71, -48.0702, 0.4216, 0, 0, 0.209242, 0.977864, 120, 255, 1, 0, NULL),
(401411, 213508, 870, 0, 0, 1, 1, -1343.29, 3868, -45.2067, 4.80255, 0, 0, 0.674523, -0.738254, 120, 255, 1, 0, NULL),
(401412, 213508, 870, 0, 0, 1, 1, -1394.18, 3650.59, -59.7899, 2.60794, 0, 0, 0.964613, 0.26367, 120, 255, 1, 0, NULL);

-- Living Amber
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='13') AND (`SourceGroup`='3') AND (`SourceEntry`='123498');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
('13', '3', '123498', '0', '31', '3', '62180', 'Raufen - Select proper target'),
('13', '3', '123498', '1', '31', '3', '62232', 'Raufen - Select proper target');

DELETE FROM `spell_script_names` WHERE `spell_id` = '123498';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('123498', 'spell_item_living_amber');

DELETE FROM `creature_text` WHERE `entry` IN('62180', '62232');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `comment`) VALUES
('62180', '0', 'Ah yes. One does not forget the taste of amber.', '12', '100', 'Raufen - Living Amber quest talk'),
('62180', '1', 'Back when the world was still young, the first kypari trees bloomed.', '12', '100', 'Raufen - Living Amber quest talk'),
('62180', '2', 'From the trees, the amber flowed and nurtured us. Kyparite, we called it, the lifeblood of the earth.', '12', '100', 'Raufen - Living Amber quest talk'),
('62180', '3', 'It healed our wounds and made us bold. It tasted like sweetness and fire, and gave us strength to conquer all the lesser races.', '12', '100', 'Raufen - Living Amber quest talk'),
('62180', '4', 'Many were the threats to our race after the usurpers remade the world. Narrow was the path ahead.', '12', '100', 'Raufen - Living Amber quest'),
('62180', '5', 'It was I who suggested our greatest warriors be cast in amber to sleep, to be awakened at the swarm\'s greatest times of need.', '12', '100', 'Raufen - Living Amber quest talk'),
('62180', '6', 'It was the sleep from which one could never awake. A great risk. A great sacrifice. But necessary.', '12', '100', 'Raufen - Living Amber quest talk'),
('62180', '7', 'Thus, I was the first Paragon. This is why, I am the Prime.', '12', '100', 'Raufen - Living Amber quest talk'),
('62180', '8', 'And now, the Klaxxi call us to battle. Now, I am awakened.', '12', '100', 'Raufen - Living Amber quest talk'),

('62232', '0', 'Ah yes. One does not forget the taste of amber.', '12', '100', 'Raufen - Living Amber quest talk'),
('62232', '1', 'Back when the world was still young, the first kypari trees bloomed.', '12', '100', 'Raufen - Living Amber quest talk'),
('62232', '2', 'From the trees, the amber flowed and nurtured us. Kyparite, we called it, the lifeblood of the earth.', '12', '100', 'Raufen - Living Amber quest talk'),
('62232', '3', 'It healed our wounds and made us bold. It tasted like sweetness and fire, and gave us strength to conquer all the lesser races.', '12', '100', 'Raufen - Living Amber quest talk'),
('62232', '4', 'Many were the threats to our race after the usurpers remade the world. Narrow was the path ahead.', '12', '100', 'Raufen - Living Amber quest'),
('62232', '5', 'It was I who suggested our greatest warriors be cast in amber to sleep, to be awakened at the swarm\'s greatest times of need.', '12', '100', 'Raufen - Living Amber quest talk'),
('62232', '6', 'It was the sleep from which one could never awake. A great risk. A great sacrifice. But necessary.', '12', '100', 'Raufen - Living Amber quest talk'),
('62232', '7', 'Thus, I was the first Paragon. This is why, I am the Prime.', '12', '100', 'Raufen - Living Amber quest talk'),
('62232', '8', 'And now, the Klaxxi call us to battle. Now, I am awakened.', '12', '100', 'Raufen - Living Amber quest talk');

-- Corruption Runs Deep
UPDATE `creature_template` SET `ScriptName`='npc_hisek_the_swarmkeeper' WHERE (`entry`='64672');
UPDATE `creature_template` SET `ScriptName`='npc_hisek_the_swarmkeeper_summon' WHERE (`entry`='64705');
UPDATE `creature_template` SET `faction_A`='16', `faction_H`='16' WHERE (`entry`='64583');
UPDATE `creature_template` SET `minlevel`='90', `maxlevel`='90' WHERE (`entry`='64813');
UPDATE `quest_template` SET `PrevQuestId`='31441' WHERE (`Id`='31458');

DELETE FROM `creature_text` WHERE `entry` IN('64705', '64813');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `comment`) VALUES
('64705', '0', 'Now you will see. Traitors hide within our ranks.', '12', '100', 'Raufen - Corruption Runs Deep'),
('64705', '1', 'Kor\'ik! How long have you worked for the empress?!', '12', '100', 'Raufen - Corruption Runs Deep'),
('64705', '2', 'The only madness here is your own, Kor\'ik! Did you really think you would go unnoticed forever?', '12', '100', 'Raufen - Corruption Runs Deep'),
('64705', '3', 'You will not deceive us. We see you for who you truly are!', '12', '100', 'Raufen - Corruption Runs Deep');

INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `comment`) VALUES
('64813', '0', 'I see the paragon has been awakened.', '12', '100', 'Raufen - Corruption Runs Deep'),
('64813', '1', 'The paragon does not speak truth, Wakener. His mind did not survive encasement.', '12', '100', 'Raufen - Corruption Runs Deep'),
('64813', '2', 'He cannot allow him to live in this madness. The Klaxxi will want him put down.', '12', '100', 'Raufen - Corruption Runs Deep'),
('64813', '3', 'You and the Klaxxi are fools! Your arrogance will be your end!', '12', '100', 'Raufen - Corruption Runs Deep'),
('64813', '4', 'Empress She\'zeer knows your plans. Your treachery will be punished...', '14', '100', 'Raufen - Corruption Runs Deep');

-- Dead Zone
DELETE FROM `disables` WHERE (`sourceType`='0') AND (`entry`='121833');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='13') AND (`SourceGroup`='2') AND (`SourceEntry`='121833');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES ('13', '2', '121833', '31', '5', '213973', 'Raufen - Target Klaxxi Sonic Relay');

-- Unbound
UPDATE `creature` SET `spawndist`='0' WHERE `id` IN('54990', '61472');
DELETE FROM `creature_template_aura` WHERE (`entry`='61472') AND (`aura`='102723');
INSERT INTO `creature_template_aura` (`entry`, `aura`) VALUES ('61472', '102723');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN('54990', '61472');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN('54990', '61472');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES
('54990', '104080', '1'),
('61472', '104080', '1');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = '18' AND `SourceGroup` IN('54990', '61472');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `Comment`) VALUES
('18', '54990', '104080', '9', '29587', 'Raufen - Require quest for spellclick'),
('18', '61472', '104080', '9', '29587', 'Raufen - Require quest for spellclick');

DELETE FROM `creature_text` WHERE `entry` IN('54990', '61472');
INSERT INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`, `comment`) VALUES
('54990', '0', 'Ah, much better. Those bindings were so tight.', '12', '100', 'Raufen - Unbound quest talk'),
('54990', '1', 'Free at last! I need a drink...', '12', '100', 'Raufen - Unbound quest talk'),
('54990', '2', 'I hope the orchard is still intact...', '12', '100', 'Raufen - Unbound quest talk'),
('54990', '3', 'I never thought something like this could happen to our little orchard.', '12', '100', 'Raufen - Unbound quest talk'),
('54990', '4', 'I\'ll be fine, please help the others!', '12', '100', 'Raufen - Unbound quest talk'),
('54990', '5', 'I\'m moving back to the capital after this.', '12', '100', 'Raufen - Unbound quest talk'),
('54990', '6', 'Thank you so much!', '12', '100', 'Raufen - Unbound quest talk'),
('54990', '7', 'Thank you, I don\'t even want to know what they were planning to do with us.', '12', '100', 'Raufen - Unbound quest talk'),

('61472', '0', 'Ah, much better. Those bindings were so tight.', '12', '100', 'Raufen - Unbound quest talk'),
('61472', '1', 'Free at last! I need a drink...', '12', '100', 'Raufen - Unbound quest talk'),
('61472', '2', 'I hope the orchard is still intact...', '12', '100', 'Raufen - Unbound quest talk'),
('61472', '3', 'I never thought something like this could happen to our little orchard.', '12', '100', 'Raufen - Unbound quest talk'),
('61472', '4', 'I\'ll be fine, please help the others!', '12', '100', 'Raufen - Unbound quest talk'),
('61472', '5', 'I\'m moving back to the capital after this.', '12', '100', 'Raufen - Unbound quest talk'),
('61472', '6', 'Thank you so much!', '12', '100', 'Raufen - Unbound quest talk'),
('61472', '7', 'Thank you, I don\'t even want to know what they were planning to do with us.', '12', '100', 'Raufen - Unbound quest talk');

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` IN('54990', '61472');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `event_param1`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
('54990', '0', '0', '8', '104080', '1', '0', '1', 'Raufen - Unbound quest'),
('54990', '1', '0', '8', '104080', '33', '54996', '7', 'Raufen - Unbound quest'),
('54990', '2', '0', '8', '104080', '28', '102723', '1', 'Raufen - Unbound quest'),
('54990', '3', '0', '8', '104080', '41', '3000', '1', 'Raufen - Unbound quest'),
('54990', '4', '0', '8', '104080', '83', '16777216', '1', 'Raufen - Unbound quest'),

('61472', '0', '0', '8', '104080', '1', '0', '1', 'Raufen - Unbound quest'),
('61472', '1', '0', '8', '104080', '33', '54996', '7', 'Raufen - Unbound quest'),
('61472', '2', '0', '8', '104080', '28', '102723', '1', 'Raufen - Unbound quest'),
('61472', '3', '0', '8', '104080', '41', '3000', '1', 'Raufen - Unbound quest'),
('61472', '4', '0', '8', '104080', '83', '16777216', '1', 'Raufen - Unbound quest');

-- The Pearlfin Situation
UPDATE `creature_template` SET `ScriptName`='npc_the_pearlfin_situation_q' WHERE `entry` IN(59058, 56693, 56690, 54960);
DELETE FROM `creature_text` WHERE `entry` IN(59058, 56693, 56690, 54960);
INSERT INTO `creature_text` (`entry`, `text`, `type`, `probability`, `comment`) VALUES
('59058', 'No harm? Pah! Many thousand years ago, the Pearlfin Tribe stood on the throne of all Pandaria. Now, this village is all that is left of our people, all because we trusted a tribe of outsiders... the hozen.', '12', '100', 'Raufen - The Pearlfin Situation quest'),
('56693', 'Ah, you must be the outsider. Sadly, I am making weapons for war. Once, not long ago, I made instruments for prayer and celebration. It is this war that makes everyone stand on edge.', '12', '100', 'Raufen - The Pearlfin Situation quest'),
('56690', 'Action speaks louder than intent, stranger. My warriors intend to seek retribution, but only practice will make it so. Now go away. We are busy.', '12', '100', 'Raufen - The Pearlfin Situation quest'),
('54960', 'Stranger, have you ever seen a stone fall into a calm lake? Every action creates a ripple, even accepting a pledge of friendship. I shall think upon your request.', '12', '100', 'Raufen - The Pearlfin Situation quest');

DELETE FROM `creature` WHERE `id` = '59058';
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `unit_flags2`, `dynamicflags`, `isActive`, `protec_anti_doublet`) VALUES ('3555', '59058', '870', '0', '0', '1', '1', '0', '0', '-129.583', '-2651.02', '1.22551', '2.60276', '300', '0', '0', '156000', '0', '0', '0', '0', '0', '2048', '0', '0', NULL);
