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
