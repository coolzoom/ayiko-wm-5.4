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

-- Blessing of Incineratus
UPDATE `quest_template` SET `RequiredSpellCast4`='0' WHERE (`Id`='9805');

UPDATE `smart_scripts` SET `link`='1' WHERE (`source_type`='0') AND (`id`='0') AND (`link`='0') AND `entryorguid` IN('18110','18142','18143','18144');

DELETE FROM `smart_scripts` WHERE (`source_type`='0') AND (`id`='1') AND (`link`='0') AND `entryorguid` IN('18110','18142','18143','18144');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('18110', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '33', '18110', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Windyreed Quest Credit - On Spellhit (Link) - Quest Credit'),
('18142', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '33', '18142', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Windyreed Quest Credit - On Spellhit (Link) - Quest Credit'),
('18143', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '33', '18143', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Windyreed Quest Credit - On Spellhit (Link) - Quest Credit'),
('18144', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '33', '18144', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Windyreed Quest Credit - On Spellhit (Link) - Quest Credit');

-- Drain Schematics
DELETE FROM `creature_queststarter` WHERE (`id`='17841') AND (`quest`='9731');

-- Balance Must Be Preserved
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN('17998', '17999', '18000', '18002');
UPDATE `quest_template` SET `RequiredSpellCast4`='0' WHERE (`Id`='9720');

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` IN('17998', '17999', '18000', '18002');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('17998', '0', '0', '0', '8', '0', '100', '0', '31736', '0', '0', '0', '33', '17998', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - give KC on spellhit'),
('17999', '0', '0', '0', '8', '0', '100', '0', '31736', '0', '0', '0', '33', '17999', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - give KC on spellhit'),
('18002', '0', '0', '0', '8', '0', '100', '0', '31736', '0', '0', '0', '33', '18002', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - give KC on spellhit'),
('18000', '0', '0', '0', '8', '0', '100', '0', '31736', '0', '0', '0', '33', '18000', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - give KC on spellhit');

-- Felblood Sample
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-39' WHERE (`entry`='16951') AND (`item`='23269');

-- The Demoniac Scryer
UPDATE `creature_template` SET `gossip_menu_id`='8524', `faction_A`='495', `faction_H`='495', `ScriptName`='npc_demoniac_scryer' WHERE (`entry`='22258');
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='8524') AND (`id`='0');
DELETE FROM `creature` WHERE (`id`='22258');

DELETE FROM `creature_text` WHERE `entry` = '22259';
INSERT INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`) VALUES
('22259', '0', 'An intruder! Begone!', '12', '100'),
('22259', '1', 'Die!', '12', '100'),
('22259', '2', 'You will burn!', '12', '100'),
('22259', '3', 'Your end has come!', '12', '100');

-- Forge Camp: Annihilated
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN('19067', '19210');

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` IN('19067', '19210');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('19067', '0', '0', '0', '8', '0', '100', '0', '33531', '0', '0', '0', '33', '19067', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Give KC'),
('19067', '0', '1', '0', '8', '0', '100', '0', '33531', '0', '0', '0', '37', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Die'),
('19210', '0', '0', '0', '8', '0', '100', '0', '33532', '0', '0', '0', '33', '19210', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Give KC'),
('19210', '0', '1', '0', '8', '0', '100', '0', '33532', '0', '0', '0', '37', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Die');

-- Finding the Survivors
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-75' WHERE (`item`='25604');

-- Not on My Watch!
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '18351';
DELETE FROM `smart_scripts` WHERE `source_type` = '9' AND `entryorguid` = '1835100';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(18351, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 11, 42648, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lump - Out Of Combat - Cast Sleeping Sleep'),
(18351, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lump - On Aggro - Say Line (random)'),
(18351, 0, 2, 0, 62, 0, 100, 0, 21293, 3, 0, 0, 33, 18354, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lump - On Gossip Select - Give Quest Credit'),
(18351, 0, 3, 0, 2, 0, 100, 1, 0, 30, 0, 0, 80, 1835100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lump - On 30% HP - Run Script'),
(18351, 0, 4, 0, 9, 0, 100, 0, 8, 25, 1500, 2000, 11, 31994, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Lump - On Player Range - Cast Shoulder Charge'),
(18351, 0, 5, 0, 9, 0, 100, 0, 5, 40, 1500, 2000, 11, 32248, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Lump - On Player Range - Cast Spear Throw'),
(1835100, 9, 0, 0, 2, 0, 100, 1, 0, 0, 0, 0, 2, 1080, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lump - On Script - Set Faction Friendly'),
(1835100, 9, 1, 0, 2, 0, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lump - On Script - Say Line 1'),
(1835100, 9, 2, 0, 2, 0, 100, 1, 1000, 1000, 0, 0, 5, 447, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lump - On Script - Emote ONESHOT_FLY_SIT_GROUND_DOWN'),
(1835100, 9, 3, 0, 2, 0, 100, 1, 0, 0, 0, 0, 20, 9, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lump - On Script - Stop auto-attack'),
(1835100, 9, 4, 0, 2, 0, 100, 1, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lump - On Script - Evade'),
(1835100, 9, 5, 0, 2, 0, 100, 1, 0, 0, 0, 0, 28, 42648, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lump - On Script - Remove Aura Sleeping Sleep');
