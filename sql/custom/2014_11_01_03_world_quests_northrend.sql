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
