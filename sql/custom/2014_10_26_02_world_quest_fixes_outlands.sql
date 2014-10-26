-- Mission: Gateways Murketh and Shaadraz
UPDATE `creature_template` SET `AIName`='SmartAI', `flags_extra`='128' WHERE `entry` IN('19291', '19292');

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` IN('19291', '19292');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('19291', '0', '0', '0', '8', '0', '100', '0', '33655', '0', '0', '0', '33', '19291', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Give KC'),
('19292', '0', '0', '0', '8', '0', '100', '0', '33655', '0', '0', '0', '33', '19292', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Give KC');

-- Zeth'Gor Must Burn!
UPDATE `quest_template` SET `SpecialFlags`='0', `RequiredSpellCast4`='0' WHERE (`Id`='10792');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` BETWEEN '20813' AND '20816';
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` BETWEEN '20813' AND '20816';

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('20813', '0', '0', '0', '8', '0', '100', '0', '35724', '0', '0', '0', '33', '20813', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - give KC on spellhit'),
('20814', '0', '0', '0', '8', '0', '100', '0', '35724', '0', '0', '0', '33', '20814', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - give KC on spellhit'),
('20815', '0', '0', '0', '8', '0', '100', '0', '35724', '0', '0', '0', '33', '20815', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - give KC on spellhit'),
('20816', '0', '0', '0', '8', '0', '100', '0', '35724', '0', '0', '0', '33', '20816', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - give KC on spellhit');

-- The Eyes of Grillok
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='22177');

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid`  = '22177';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES ('22177', '0', '0', '0', '8', '0', '100', '0', '38530', '0', '0', '0', '33', '22177', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Give KC');
