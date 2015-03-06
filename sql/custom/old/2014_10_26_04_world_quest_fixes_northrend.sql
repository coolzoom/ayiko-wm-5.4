-- Bury Those Cockroaches!
UPDATE `creature_template` SET `minlevel`='70', `maxlevel`='70', `faction_A`='7', `faction_H`='7', `unit_flags`='4', `flags_extra`='128' WHERE `entry` IN('25402', '25403', '25404', '25405');

-- Monitoring the Rift: Sundered Chasm and Monitoring the Rift: Cleftcliff Anomaly
UPDATE `creature_template` SET `AIName`='SmartAI', `minlevel`='60', `maxlevel`='60', `faction_A`='35', `faction_H`='35', `InhabitType`='7' WHERE `entry` IN(25308, 25310, 25309);

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` IN(25308, 25310, 25309);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('25308', '0', '0', '0', '8', '0', '100', '0', '45414', '0', '15000', '15000', '33', '25308', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Nepenthe-Borean - Westrift Chasm Anomaly - On Spellhit - Quest Credit'),
('25310', '0', '0', '0', '8', '0', '100', '0', '45414', '0', '15000', '15000', '33', '25310', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Nepenthe-Borean - Westrift Cleftcliff Anomaly - On Spellhit - Quest Credit'),
('25309', '0', '0', '0', '8', '0', '100', '0', '45414', '0', '15000', '15000', '33', '25309', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Nepenthe-Borean - Westrift Cavern Anomaly - On Spellhit - Quest Credit');

-- Burn in Effigy
UPDATE `quest_template` SET `RequiredSpellCast4`='0' WHERE (`Id`='11656');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` BETWEEN '25510' AND '25513';

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` BETWEEN '25510' AND '25513';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('25510', '0', '0', '1', '8', '0', '100', '0', '45692', '0', '0', '0', '33', '25510', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '1st Kvaldir Vessel (The Serpent\'s Maw) - On Spellhit \'Use Tuskarr Torch\' - Quest Credit \'Burn in Effigy\''),
('25510', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1st Kvaldir Vessel (The Serpent\'s Maw) - On Spellhit \'Use Tuskarr Torch\' - Say'),
('25511', '0', '0', '1', '8', '0', '100', '0', '45692', '0', '0', '0', '33', '25511', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '2nd Kvaldir Vessel (The Kur Drakkar) - On Spellhit \'Use Tuskarr Torch\' - Quest Credit \'Burn in Effigy\''),
('25511', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '2nd Kvaldir Vessel (The Kur Drakkar) - On Spellhit \'Use Tuskarr Torch\' - Say'),
('25512', '0', '0', '1', '8', '0', '100', '0', '45692', '0', '0', '0', '33', '25512', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '3rd Kvaldir Vessel (Bor\'s Hammer) - On Spellhit \'Use Tuskarr Torch\' - Quest Credit \'Burn in Effigy\''),
('25512', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '3rd Kvaldir Vessel (Bor\'s Hammer) - On Spellhit \'Use Tuskarr Torch\' - Say'),
('25513', '0', '0', '1', '8', '0', '100', '0', '45692', '0', '0', '0', '33', '25513', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '4th Kvaldir Vessel (Bor\'s Anvil) - On Spellhit \'Use Tuskarr Torch\' - Quest Credit \'Burn in Effigy\''),
('25513', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '4th Kvaldir Vessel (Bor\'s Anvil) - On Spellhit \'Use Tuskarr Torch\' - Say');

DELETE FROM `creature_text` WHERE `entry` BETWEEN '25510' AND '25513';
INSERT INTO `creature_text` (`entry`, `text`, `type`, `probability`, `comment`) VALUES
('25510', 'The Serpent\'s Maw is engulfed in tuskarr fire!', '41', '100', '1st Kvaldir Vessel (The Serpent\'s Maw)'),
('25511', 'The Kur Drakkar is engulfed in tuskarr fire!', '41', '100', '2nd Kvaldir Vessel (The Kur Drakkar)'),
('25512', 'Bor\'s Hammer is engulfed in tuskarr fire!', '41', '100', '3rd Kvaldir Vessel (Bor\'s Hammer)'),
('25513', 'Bor\'s Anvil is engulfed in tuskarr fire!', '41', '100', '4th Kvaldir Vessel (Bor\'s Anvil)');

-- Argent Crusade, We Are Leaving!
DELETE FROM `smart_scripts` WHERE (`entryorguid`='28041') AND (`source_type`='0');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('28041', '0', '0', '0', '0', '0', '100', '0', '8000', '10000', '8000', '12000', '11', '50370', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'IC - Cast Sunder Armor - Victim'),
('28041', '0', '1', '2', '62', '0', '100', '0', '9640', '0', '0', '0', '72', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'On gossip select - Close Gossip - Invoker'),
('28041', '0', '2', '3', '61', '0', '100', '0', '0', '0', '0', '0', '11', '50289', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'On link - Cast credit spell - Invoker'),
('28041', '0', '3', '4', '61', '0', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'On link - Whisper - Invoker'),
('28041', '0', '4', '0', '61', '0', '100', '0', '0', '0', '0', '0', '41', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On link - Despawn - Self');

-- Blood in The Water
UPDATE `creature_template` SET `KillCredit2`='0' WHERE (`entry`='29392');

DELETE FROM `smart_scripts` WHERE (`entryorguid`='29392') AND (`source_type`='0');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('29392', '0', '0', '0', '0', '0', '100', '0', '5000', '8000', '11300', '13400', '11', '3391', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Nepenthe-Ravenous Jaws - IC - Cast Thrash'),
('29392', '0', '1', '0', '6', '0', '100', '0', '0', '0', '0', '0', '11', '47172', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Nepenthe-Ravenous Jaws - On Death - Cast Underwater Blood'),
('29392', '0', '2', '3', '8', '0', '100', '0', '6509', '0', '0', '0', '33', '29391', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Nepenthe-Ravenous Jaws - On Spellhit - KC'),
('29392', '0', '3', '0', '61', '0', '100', '0', '0', '0', '0', '0', '41', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Nepenthe-Ravenous Jaws - On Spellhit - Despawn');

DELETE FROM `spell_scripts` WHERE (`id`='6509') AND (`effIndex`='0') AND (`delay`='0') AND (`command`='8') AND (`datalong`='29391');
