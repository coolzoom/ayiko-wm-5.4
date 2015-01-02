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

-- Apply Directly to the Forehead
UPDATE `creature_template` SET `ScriptName`='npc_despondent_warden_of_zhu' WHERE (`entry`='57457');

DELETE FROM `creature_text` WHERE `entry` = '57457';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `comment`) VALUES
('57457', '0', '0', 'A little rain never hurt anybody... yet.', '12', '100', 'Raufen  - Apply Directly to the Forehead quest'),
('57457', '0', '1', 'Don\'t bother me.', '12', '100', 'Raufen  - Apply Directly to the Forehead quest'),
('57457', '0', '2', 'Go away.', '12', '100', 'Raufen  - Apply Directly to the Forehead quest'),
('57457', '0', '3', 'How could this happen to me? I\'m sick of this life.', '12', '100', 'Raufen  - Apply Directly to the Forehead quest'),
('57457', '0', '4', 'It\'s raining still. And freezing. At least we haven\'t had a typhoon lately.', '12', '100', 'Raufen  - Apply Directly to the Forehead quest'),
('57457', '0', '5', 'Leave me alone.', '12', '100', 'Raufen  - Apply Directly to the Forehead quest'),
('57457', '0', '6', 'What\'s the point anymore?', '12', '100', 'Raufen  - Apply Directly to the Forehead quest'),
('57457', '0', '7', 'Oh, great. An adventurer. Just what I needed.', '12', '100', 'Raufen  - Apply Directly to the Forehead quest'),
('57457', '0', '8', 'Stop crowding me, everybody\'s always crowding around in this village. There\'s no space.', '12', '100', 'Raufen  - Apply Directly to the Forehead quest'),
('57457', '0', '9', 'What do you want?', '12', '100', 'Raufen  - Apply Directly to the Forehead quest'),

('57457', '1', '0', 'Everything suddenly seems... brighter.', '12', '100', 'Raufen  - Apply Directly to the Forehead quest'),
('57457', '1', '1', 'I... I feel... happy!', '12', '100', 'Raufen  - Apply Directly to the Forehead quest'),
('57457', '1', '2', 'Ugh... what was that stuff? It went through me like bad tea.', '12', '100', 'Raufen  - Apply Directly to the Forehead quest'),
('57457', '1', '3', 'Ugh... where am I?', '12', '100', 'Raufen  - Apply Directly to the Forehead quest'),
('57457', '1', '4', 'What am I doing out here? I\'ve got work to do!', '12', '100', 'Raufen  - Apply Directly to the Forehead quest');

DELETE FROM `creature` WHERE `id` = '57457';
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `unit_flags2`, `dynamicflags`, `isActive`, `protec_anti_doublet`) VALUES
(3556, 57457, 870, 0, 0, 1, 1, 0, 0, -386.988, -634.431, 116.767, 5.95026, 300, 0, 0, 184350, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(3557, 57457, 870, 0, 0, 1, 1, 0, 0, -355.917, -612.443, 117.586, 3.84383, 300, 0, 0, 184350, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(3558, 57457, 870, 0, 0, 1, 1, 0, 0, -388.033, -673.533, 120.364, 2.5623, 300, 0, 0, 184350, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(3559, 57457, 870, 0, 0, 1, 1, 0, 0, -362.399, -665.385, 122.1, 2.39108, 300, 0, 0, 184350, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(3560, 57457, 870, 0, 0, 1, 1, 0, 0, -370.373, -618.346, 118.105, 5.06615, 300, 0, 0, 184350, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(3561, 57457, 870, 0, 0, 1, 1, 0, 0, -388.17, -590.91, 114.597, 5.71422, 300, 0, 0, 184350, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(3562, 57457, 870, 0, 0, 1, 1, 0, 0, -359.067, -580.894, 113.685, 4.29265, 300, 0, 0, 184350, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(3563, 57457, 870, 0, 0, 1, 1, 0, 0, -390.805, -650.508, 116.841, 0.0522734, 300, 0, 0, 184350, 0, 0, 0, 0, 0, 2048, 0, 0, NULL),
(3564, 57457, 870, 0, 0, 1, 1, 0, 0, -366.992, -641.205, 118.349, 3.15224, 300, 0, 0, 184350, 0, 0, 0, 0, 0, 2048, 0, 0, NULL);

-- Re-Reclaim
UPDATE `gameobject_template` SET `castBarCaption`='Grabbing' WHERE (`entry`='210416');
UPDATE `gameobject_template` SET `data1`='210416' WHERE `entry` IN('210417', '210418');
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='-100' WHERE (`item`='79120');

-- What's Eating Zhu's Watch?
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN('57825', '57830', '57744');
UPDATE creature_template SET npcflag = npcflag | 1 WHERE entry = 57457;

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` IN('57825', '57830', '57744');
INSERT INTO `smart_scripts` (`entryorguid`, `id` `event_type`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
('57830', '0', '64', '33', '57830', '7', 'Raufen - On Gossip Hello - Give KC'),
('57825', '0', '64', '33', '57825', '7', 'Raufen - On Gossip Hello - Give KC'),
('57744', '0', '64', '33', '57744', '7', 'Raufen - On Gossip Hello - Give KC'),
('57830', '1', '64', '1', '0', '7', 'Raufen - On Gossip Hello - Talk'),
('57825', '1', '64', '1', '0', '7', 'Raufen - On Gossip Hello - Talk');

DELETE FROM `creature_text` WHERE `entry` IN('57830', '57825');
INSERT INTO `creature_text` (`entry`, `text`, `type`, `probability`, `comment`) VALUES
('57830', 'Guess I\'ll just sleep for another day...', '12', '100', 'Raufen - On Gossip - Talk'),
('57825', 'Oh great! Someone else has come to bother me.', '12', '100', 'Raufen - On Gossip - Talk');

-- The Stoneplow Convoy
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = '58955';
DELETE FROM `creature_text` WHERE `entry` = '58955';
INSERT INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`, `comment`) VALUES
('58955', '0', 'I must get to Stoneplow! The mantid will attack soon.', '12', '100', 'Raufen - The Stoneplow Convoy quest talk'),
('58955', '1', 'Thank you, hero.', '12', '100', 'Raufen - The Stoneplow Convoy quest talk'),
('58955', '2', 'Thank you, stranger.', '12', '100', 'Raufen - The Stoneplow Convoy quest talk'),
('58955', '3', 'The mogu ambushed us while we were trying to retreat from the mantid.', '12', '100', 'Raufen - The Stoneplow Convoy quest talk');

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '58955';
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
('58955', '0', '8', '111446', '5000', '5000', '33', '58955', '7', 'Raufen - On Spell Hit - Give KC'),
('58955', '1', '8', '111446', '5000', '5000', '41', '5000', '1', 'Raufen - On Spell Hit - Force Despawn'),
('58955', '2', '8', '111446', '5000', '5000', '1', '0', '1', 'Raufen - On Spell Hit - Talk'),
('58955', '3', '8', '111446', '5000', '5000', '28', '108806', '1', 'Raufen - On Spell Hit - Remove Feign Death');

DELETE FROM `spell_script_names` WHERE `spell_id` = '108806';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('108806', 'spell_creature_permanent_feign_death');

-- Into the Wilds
UPDATE creature_template SET unit_flags = unit_flags & ~256, `AIName`='SmartAI' WHERE entry = 59151;
UPDATE `creature_template` SET `ScriptName`='npc_zhus_watch_courier' WHERE (`entry`='59151');

DELETE FROM `spell_script_names` WHERE `spell_id` = '113368';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('113368', 'spell_creature_permanent_feign_death');

-- Hop Hunting
UPDATE `creature_template` SET `ScriptName`='npc_hop_hunting_q' WHERE `entry` IN('57385', '62377', '62385');

DELETE FROM `creature_text` WHERE `entry` IN('57385', '62377', '62385');
INSERT INTO `creature_text` (`entry`, `text`, `type`, `probability`, `comment`) VALUES
('62377', 'Nothing is free, $r. You want hops, you need to work.', '12', '100', 'Raufen - Hop Hunting quest talk'),
('62385', 'You\'ll have to ask Mung-Mung about that. He maintains our foodstores.', '12', '100', 'Raufen - Hop Hunting quest talk'),
('57385', 'Would that I could, $r, but I have a bit of a weed problem. Say... you wouldn\'t be willing to help out, would you?', '12', '100', 'Raufen - Hop Hunting quest talk');

-- Muddy Water
DELETE FROM `spell_script_names` WHERE `spell_id` IN('106309', '106284');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('106309', 'spell_gen_gather_muddy_water'),
('106284', 'spell_gen_gather_muddy_water_aura');

DELETE FROM `gameobject` WHERE `guid` > '170299' AND `id` = '209921';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `protect_anti_doublet`) VALUES
(6604930, 209921, 870, 0, 0, 1, 1, -548.178, 19.0223, 132.825, 6.2714, 0, 0, 0.00589311, -0.999983, 300, 0, 1, 0, NULL),
(6604931, 209921, 870, 0, 0, 1, 1, -546.916, 20.8481, 132.825, 5.67843, 0, 0, 0.297793, -0.95463, 300, 0, 1, 0, NULL),
(6604932, 209921, 870, 0, 0, 1, 1, -526.836, 22.3757, 132.787, 0.22015, 0, 0, 0.109853, 0.993948, 300, 0, 1, 0, NULL),
(6604933, 209921, 870, 0, 0, 1, 1, -520.779, 15.7625, 132.757, 5.198, 0, 0, 0.516357, -0.856374, 300, 0, 1, 0, NULL),
(6604934, 209921, 870, 0, 0, 1, 1, -518.135, -6.7907, 132.754, 5.40534, 0, 0, 0.424966, -0.905209, 300, 0, 1, 0, NULL),
(6604935, 209921, 870, 0, 0, 1, 1, -516.996, -8.24, 132.681, 0.017505, 0, 0, 0.00875241, 0.999962, 300, 0, 1, 0, NULL),
(6604936, 209921, 870, 0, 0, 1, 1, -498.453, -11.9791, 132.897, 0.110179, 0, 0, 0.0550616, 0.998483, 300, 0, 1, 0, NULL),
(6604937, 209921, 870, 0, 0, 1, 1, -492.3, -23.2376, 132.988, 4.80529, 0, 0, 0.673511, -0.739177, 300, 0, 1, 0, NULL),
(6604938, 209921, 870, 0, 0, 1, 1, -472.602, -30.7163, 133.18, 0.336374, 0, 0, 0.167395, 0.98589, 300, 0, 1, 0, NULL),
(6604939, 209921, 870, 0, 0, 1, 1, -467.189, -30.3363, 133.238, 5.20427, 0, 0, 0.51367, -0.857988, 300, 0, 1, 0, NULL),
(6604940, 209921, 870, 0, 0, 1, 1, -468.514, -43.0935, 133.27, 3.97434, 0, 0, 0.914562, -0.404445, 300, 0, 1, 0, NULL),
(6604941, 209921, 870, 0, 0, 1, 1, -475.186, -61.6545, 133.309, 5.14144, 0, 0, 0.540366, -0.84143, 300, 0, 1, 0, NULL),
(6604942, 209921, 870, 0, 0, 1, 1, -474.199, -62.9653, 133.266, 5.49251, 0, 0, 0.385118, -0.922867, 300, 0, 1, 0, NULL),
(6604943, 209921, 870, 0, 0, 1, 1, -439.054, -73.4285, 133.631, 6.19231, 0, 0, 0.0454242, -0.998968, 300, 0, 1, 0, NULL),
(6604944, 209921, 870, 0, 0, 1, 1, -436.26, -73.9846, 133.696, 5.80589, 0, 0, 0.236389, -0.971658, 300, 0, 1, 0, NULL),
(6604945, 209921, 870, 0, 0, 1, 1, -401.505, -112.356, 134.206, 5.70054, 0, 0, 0.28722, -0.957865, 300, 0, 1, 0, NULL),
(6604946, 209921, 870, 0, 0, 1, 1, -401.993, -131.273, 134.376, 4.59077, 0, 0, 0.748772, -0.662828, 300, 0, 1, 0, NULL),
(6604947, 209921, 870, 0, 0, 1, 1, -402.158, -132.623, 134.376, 4.59077, 0, 0, 0.748772, -0.662828, 300, 0, 1, 0, NULL),
(6604948, 209921, 870, 0, 0, 1, 1, -374.366, -150.502, 134.891, 1.9047, 0, 0, 0.81478, 0.57977, 300, 0, 1, 0, NULL),
(6604949, 209921, 870, 0, 0, 1, 1, -374.289, -148.541, 134.87, 1.52928, 0, 0, 0.692277, 0.721632, 300, 0, 1, 0, NULL);

-- The Fanciest Water
UPDATE `creature_template` SET `faction_A`='7', `faction_H`='7' WHERE (`entry`='57673');

-- The Ritual
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = '13' AND `SourceEntry` = '119729';
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
('13', '1', '119729', '0', '31', '3', '61655', 'Raufen - The Ritual quest'),
('13', '1', '119729', '1', '31', '3', '61656', 'Raufen - The Ritual quest'),
('13', '1', '119729', '2', '31', '3', '61648', 'Raufen - The Ritual quest');

UPDATE `creature_template` SET `ScriptName`='npc_waterspeaker_gorai' WHERE (`entry`='60973');
UPDATE `creature_template` SET `faction_A`='16', `faction_H`='16' WHERE (`entry`='61530');

DELETE FROM `creature_text` WHERE `entry` = '60973';
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `comment`) VALUES
('60973', '0', 'I\'ve never performed this ritual. I don\'t know what will happen, exactly.', '12', '100', 'Raufen - The Ritual quest talk'),
('60973', '1', 'It\'s been passed down from ancient times, but none of our people have needed to use it since then.', '12', '100', 'Raufen - The Ritual quest talk'),
('60973', '2', 'Let us see if this is sufficient to cleanse the corruption from my people\'s souls.', '12', '100', 'Raufen - The Ritual quest talk'),
('60973', '3', 'It worked! It wo-', '12', '100', 'Raufen - The Ritual quest talk'),
('60973', '4', 'Wh... what is happening? Why is the ritual affecting her?', '12', '100', 'Raufen - The Ritual quest talk'),
('60973', '5', 'What is that?', '12', '100', 'Raufen - The Ritual quest talk'),
('60973', '6', 'A beast emerged from you when I began the ritual. $n slew it!', '12', '100', 'Raufen - The Ritual quest talk'),
('60973', '7', 'That... thing must be what was controlling the villagers! I now know what we must do.', '12', '100', 'Raufen - The Ritual quest talk');

DELETE FROM `creature_text` WHERE `entry` = '59273';
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `comment`) VALUES ('59273', '0', 'I feel so much calmer. What happened?', '12', '100', 'Raufen - The Ritual - quest talk');

-- No Pack Left Behind
UPDATE `creature` SET `spawndist`='0' WHERE `id` IN('59408', '59814');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN('59408', '59814');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES
('59408', '115012', '9'),
('59814', '115012', '9');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = '18' AND `SourceGroup` IN('59408', '59814');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `Comment`) VALUES
('18', '59408', '115012', '9', '30600', 'Raufen - Require quest for spellclick'),
('18', '59814', '115012', '9', '30600', 'Raufen - Require quest for spellclick');

-- Farmhand Freedom
DELETE FROM `creature_text` WHERE `entry` = '59577';
INSERT INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`, `comment`) VALUES
('59577', '0', 'Death to the yaungol!', '12', '50', 'Raufen - Farmhand Freedom quest talk'),
('59577', '1', 'Good riddance.', '12', '50', 'Raufen - Farmhand Freedom quest talk'),
('59577', '2', 'Let\'s go to Binan Village.', '12', '50', 'Raufen - Farmhand Freedom quest talk'),
('59577', '3', 'Our hero!', '12', '50', 'Raufen - Farmhand Freedom quest talk'),
('59577', '4', 'Quick, let\'s get out of here.', '12', '50', 'Raufen - Farmhand Freedom quest talk'),
('59577', '5', 'We\'re free!', '12', '50', 'Raufen - Farmhand Freedom quest talk'),
('59577', '6', 'We\'re saved!', '12', '50', 'Raufen - Farmhand Freedom quest talk');

DELETE FROM `smart_scripts` WHERE (`entryorguid`='59580') AND (`source_type`='0');
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_ordo_overseer' WHERE (`entry`='59580');

-- Hit Medicine
UPDATE `conditions` SET `ConditionTarget`='1' WHERE (`SourceTypeOrReferenceId`='17') AND (`SourceGroup`='0') AND (`SourceEntry`='113285');
UPDATE `creature_template` SET `RegenHealth`='0' WHERE (`entry`='59143');
UPDATE `smart_scripts` SET `link`='2' WHERE (`entryorguid`='59143') AND (`source_type`='0') AND (`id`='1') AND (`link`='0');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='59143') AND (`source_type`='0') AND (`id`='2') AND (`link`='0');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES ('59143', '2', '61', '41', '4000', '1', 'Raufen - Injured Binan - Respawn');

-- Challenge Accepted
UPDATE `creature_template` SET `faction_A`='16', `faction_H`='16' WHERE (`entry`='59483');
UPDATE `gameobject_template` SET `ScriptName`='go_yaungol_banner' WHERE (`entry`='210933');
DELETE FROM `gameobject` WHERE `id` IN('210933', '211325');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `protect_anti_doublet`) VALUES ('6604967', '210933', '870', '1', '65535', '2109.76', '1197.48', '476.76', '3.90766', '0', '0', '0.927535', '-0.373736', '300', '0', '1', '0', NULL);

-- Barrels of Fun
UPDATE `creature_template` SET `ScriptName`='npc_explosives_barrel' WHERE (`entry`='60095');

-- Contending With Bullies
DELETE FROM `creature` WHERE `id` = '64757';
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `unit_flags2`, `dynamicflags`, `isActive`, `protec_anti_doublet`) VALUES ('3565', '64757', '870', '0', '0', '1', '1', '0', '0', '3292.45', '387.75', '458.355', '2.64991', '300', '0', '0', '1969705', '0', '0', '0', '0', '0', '2048', '0', '0', NULL);
