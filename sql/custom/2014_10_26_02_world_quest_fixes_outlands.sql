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

-- Surveying the Ruins
UPDATE `creature_template` SET `AIName`='SmartAI', `flags_extra`='130' WHERE `entry` IN('20473', '20475', '20476');

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` IN('20473', '20475', '20476');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('20473', '0', '0', '0', '8', '0', '100', '0', '35246', '0', '0', '0', '33', '20473', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Give KC'),
('20475', '0', '0', '0', '8', '0', '100', '0', '35246', '0', '0', '0', '33', '20475', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Give KC'),
('20476', '0', '0', '0', '8', '0', '100', '0', '35246', '0', '0', '0', '33', '20476', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Give KC');

-- Torching Sunfury Hold
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19723,19724) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(19723, 0, 0, 1, 8, 0, 100, 1, 34526, 0, 0, 0, 80, 1972300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis BE Ballista - On Spellhit - Run Script'),
(19723, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 19723, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invis BE Ballista - On Spellhit (Link) - Quest Credit'),
(19724, 0, 0, 1, 8, 0, 100, 1, 34526, 0, 0, 0, 80, 1972400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis BE Tent - On Spellhit - Run Script'),
(19724, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 19724, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invis BE Tent - On Spellhit (Link) - Quest Credit');

UPDATE `smart_scripts` SET `action_param2`='30000' WHERE (`entryorguid`='1972300') AND (`source_type`='9') AND (`id`='0') AND (`link`='0');
UPDATE `smart_scripts` SET `action_param2`='30000' WHERE (`entryorguid`='1972400') AND (`source_type`='9') AND (`id`='0') AND (`link`='0');

UPDATE `creature` SET `spawntimesecs` = '30' WHERE `id` IN(19723, 19724);

-- Administering the Salve
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='16847');

DELETE FROM `smart_scripts` WHERE `source_type`='0' AND `entryorguid` ='16847';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('16847', '0', '0', '0', '8', '0', '100', '1', '29314', '0', '0', '0', '33', '16847', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Use Healing Salve, Gives Quest Credit'),
('16847', '0', '0', '1', '8', '0', '100', '1', '29314', '0', '0', '0', '90', '7', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Mag\'har Grunt stands up'),
('16847', '0', '0', '2', '8', '0', '100', '1', '29314', '0', '0', '0', '1', '1', '5000', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Say Text'),
('16847', '0', '0', '3', '8', '0', '100', '1', '29314', '0', '0', '0', '41', '20000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Despawn after 20 seconds');

DELETE FROM `creature_text` WHERE `entry` = '16847';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('16847', '1', '0', 'My strength.... is... returning!', '12', '0', '100', '0', '0', '0', 'Debilitated Mag\'har Grunt'),
('16847', '1', '1', 'You\'ve found a cure! We will crush our enemies!', '12', '0', '100', '0', '0', '0', 'Debilitated Mag\'har Grunt'),
('16847', '1', '2', 'You\'ve restored my health! I\'m in your debt, $N.', '12', '0', '100', '0', '0', '0', 'Debilitated Mag\'har Grunt');

-- Boiling Blood
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE (`item`='30425');

-- Laying Waste to the Unwanted
DELETE FROM `disables` WHERE `SourceType` = '0' AND `entry` = '32979';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `comment`) VALUES ('0', '32979', '64', 'Ignore LOS on Ignite Horde Siege Engine');

UPDATE `creature_template` SET `flags_extra`='130', `AIName` = 'SmartAI' WHERE `entry` IN(19009, 21236, 21237, 18818);

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` IN(19009, 21236, 21237, 18818);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(18818, 0, 0, 1, 8, 0, 100, 0, 32979, 0, 60000, 60000, 11, 34386, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis Horde Siege Engine - East 02 - On Spellhit - Cast Create Hellfire Fire'),
(18818, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 18818, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invis Horde Siege Engine - East 02 - On Spellhit - Quest Credit'),
(19009, 0, 0, 1, 8, 0, 100, 0, 32979, 0, 60000, 60000, 11, 34386, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis Horde Siege Engine - West - On Spellhit - Cast Create Hellfire Fire'),
(19009, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 19009, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invis Horde Siege Engine - West - On Spellhit - Quest Credit'),
(21236, 0, 0, 1, 8, 0, 100, 0, 32979, 0, 60000, 60000, 11, 34386, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis Horde Siege Engine - West 02 - On Spellhit - Cast Create Hellfire Fire'),
(21236, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 21236, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invis Horde Siege Engine - West 02 - On Spellhit - Quest Credit'),
(21237, 0, 0, 1, 8, 0, 100, 0, 32979, 0, 60000, 60000, 11, 34386, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis Horde Siege Engine - East - On Spellhit - Cast Create Hellfire Fire'),
(21237, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 21237, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invis Horde Siege Engine - East - On Spellhit - Quest Credit');

UPDATE `gameobject_template` SET `displayId`='299' WHERE (`entry`='183123');
UPDATE `quest_template` SET `RequiredSpellCast1`='0', `RequiredSpellCast2`='0', `RequiredSpellCast3`='0', `RequiredSpellCast4`='0' WHERE (`Id`='10078');

-- Burn It Up... For the Horde!
UPDATE `creature_template` SET `flags_extra`='130' WHERE `entry` IN('19008', '18849');

-- Bury Those Cockroaches!
UPDATE `creature_template` SET `minlevel`='70', `maxlevel`='70', `faction_A`='7', `faction_H`='7', `unit_flags`='4', `flags_extra`='128' WHERE `entry` IN('25402', '25403', '25404', '25405');
