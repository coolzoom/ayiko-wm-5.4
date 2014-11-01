-- The Focus on the Beach
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='26773');

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND entryorguid` = '26773';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES ('26773', '0', '0', '0', '8', '0', '100', '0', '47374', '0', '1000', '1000', '11', '47390', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Nepenthe-The Focus on the Beach Kill Credit Bunny - On Spellhit - KC q12065,q12066');

DELETE FROM `creature` WHERE `id` = '26773';
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`) VALUES ('47280', '26773', '571', '1', '11686', '3133.55', '2141.55', '25.032', '3.593', '30', '42');

-- Hampering Their Escape
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN('25441', '25442', '25443');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` IN('25441', '25442', '25443');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `link`, `event_param1`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
('25441', '0', '8', '1', '45583', '33', '25441', '7', 'Raufen - On Spell Hit - Give KC'),
('25442', '0', '8', '1', '45583', '33', '25442', '7', 'Raufen - On Spell Hit - Give KC'),
('25443', '0', '8', '1', '45583', '33', '25443', '7', 'Raufen - On Spell Hit - Give KC'),
('25441', '1', '61', '0', '45583', '11', '60080', '1', 'Raufen - On Spell Hit - Cast Visual'),
('25442', '1', '61', '0', '45583', '11', '60080', '1', 'Raufen - On Spell Hit - Cast Visual'),
('25443', '1', '61', '0', '45583', '11', '60080', '1', 'Raufen - On Spell Hit - Cast Visual');

-- This Just In: Fire Still Hot!
UPDATE `smart_scripts` SET `link`='2' WHERE (`entryorguid`='29692') AND (`source_type`='0') AND (`id`='1') AND (`link`='0');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='29692') AND (`source_type`='0') AND (`id`='2') AND (`link`='0');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES ('29692', '2', '61', '33', '29692', '7', 'Raufen - On Link - Give KC');

-- Torture the Torturer
UPDATE `creature_template` SET `ScriptName`='npc_torturer_lecraft' WHERE (`entry`='27209');

DELETE FROM `creature_text` WHERE `entry` = '27209';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (27209, 0, 0, 'Come to play?', 12, 0, 100, 0, 0, 0, 'combat Say'),
(27209, 1, 0, 'Ow! I\'ll tell you NOTHING, filthy $R', 15, 0, 100, 0, 0, 0, 'Torturer LeCraft SAY_1'),
(27209, 2, 0, 'Wait... WAIT! What is it that you want to know? I know you\'re the $C named $N', 15, 0, 100, 0, 0, 0, 'Torturer LeCraft SAY_2'),
(27209, 3, 0, 'OW...NO! We know that you\'ve been stealing our armor and weapons and horses!', 15, 0, 100, 0, 0, 0, 'Torturer LeCraft SAY_3'),
(27209, 4, 0, 'We know... that you don\'t... know why we\'re immune... to your so-called blight. Grand Admiral Westwind somehow gave the high abbot that prayer. I beg you... no more... please?', 15, 0, 100, 0, 0, 0, 'Torturer LeCraft SAY_4'),
(27209, 5, 0, 'AHHHHHHHHH! Please... we know... that you... have a spy... disguised as... one of us! There... that\'s all that I know. Please... mercy... STOP!', 15, 0, 100, 0, 0, 0, 'Torturer LeCraft SAY_5'),
(27209, 6, 0, 'I TOLD YOU... I don\'t know... anything... else!', 15, 0, 100, 0, 0, 0, 'Torturer LeCraft_SAY_6'),
(27209, 7, 0, 'Just... end it.', 15, 0, 100, 0, 0, 0, 'Torturer LeCraft_SAY_7'),
(27209, 7, 1, 'THIS IS TORTURE!', 15, 0, 100, 0, 0, 0, 'Torturer LeCraft SAY_7'),
(27209, 7, 2, 'They all... begged... for their... lives!', 15, 0, 100, 0, 0, 0, 'Torturer LeCraft SAY_7'),
(27209, 7, 3, 'Please... stop. I\'ll do... anything....', 15, 0, 100, 0, 0, 0, 'Torturer LeCraft SAY_7');

-- Bombard the Ballistae
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='27331');

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '27331';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('27331', '0', '0', '1', '8', '0', '100', '0', '48345', '0', '0', '0', '33', '27331', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Bombard the Ballistae Kill Credit Bunny - On Spellhit \'Siegesmith Bombs\' - Quest Credit \'Bombard the Ballistae\''),
('27331', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '41', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Bombard the Ballistae Kill Credit Bunny - On Spellhit \'Siegesmith Bombs\' - Despawn Instant');

-- Latent Power
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='13') AND (`SourceGroup`='7') AND (`SourceEntry`='47542');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN('26855', '26856', '26857');

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` IN('26855', '26856', '26857');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('26855', '0', '0', '0', '8', '0', '100', '0', '47542', '0', '0', '0', '33', '26855', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'East Stone - On Spell Hit - Give Quest Credit'),
('26856', '0', '0', '0', '8', '0', '100', '0', '47542', '0', '0', '0', '33', '26856', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'North Stone - On Spell Hit - Give Quest Credit'),
('26857', '0', '0', '0', '8', '0', '100', '0', '47542', '0', '0', '0', '33', '26857', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'South Stone - On Spell Hit - Give Quest Credit');

-- A Lesson in Fear
DELETE FROM `smart_scripts` WHERE (`entryorguid`='24016') AND (`source_type`='0') AND (`id`='1') AND (`link`='0');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='24161') AND (`source_type`='0') AND (`id`='2') AND (`link`='0');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='24162') AND (`source_type`='0') AND (`id`='1') AND (`link`='0');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('24016', '0', '1', '0', '8', '0', '100', '0', '43178', '0', '0', '0', '33', '24165', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Give KC'),
('24161', '0', '2', '0', '8', '0', '100', '0', '43178', '0', '0', '0', '33', '24166', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Give KC'),
('24162', '0', '1', '0', '8', '0', '100', '0', '43178', '0', '0', '0', '33', '24167', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Give KC');

-- Scouting the Sinkholes
UPDATE `creature` SET `position_z`='-18' WHERE `id` IN('25664', '25665', '25666');

-- Orabus the Helmsman
UPDATE `gameobject_template` SET `data1`='15' WHERE (`entry`='300174');
