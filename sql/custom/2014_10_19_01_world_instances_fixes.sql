-- ----------- --
--  THE NEXUS  --
-- ----------- --

-- Enable Nexus Instance
DELETE FROM `disables` WHERE (`sourceType`='2') AND (`entry`='576');

-- Grand Magus Telestra
DELETE FROM `creature_text` WHERE `entry` = '26731';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('26731', '0', '0', 'You know what they say about curiosity.', '14', '0', '100', '0', '0', '13319', 'grand magus telestra SAY_AGGRO'),
('26731', '1', '0', 'Death becomes you!', '14', '0', '100', '0', '0', '13324', 'grand magus telestra SAY_KILL'),
('26731', '2', '0', 'Damn the... luck.', '14', '0', '100', '0', '0', '13320', 'grand magus telestra SAY_DEATH'),
('26731', '3', '0', 'Now to finish the job!', '14', '0', '100', '0', '0', '13323', 'grand magus telestra SAY_MERGE'),
('26731', '4', '0', 'There\'s plenty of me to go around.', '14', '0', '100', '0', '0', '13321', 'grand magus telestra SAY_SPLIT_1'),
('26731', '4', '1', 'I\'ll give you more than you can handle.', '14', '0', '100', '0', '0', '13322', 'grand magus telestra SAY_SPLIT_2');

UPDATE `creature_template` SET `ScriptName`='boss_magus_telestra' WHERE (`entry`='26731');

-- Anomalus
DELETE FROM `creature_text` WHERE `entry` = '26763';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('26763', '0', '0', 'Chaos beckons.', '14', '0', '100', '0', '0', '13186', 'anomalus SAY_AGGRO'),
('26763', '1', '0', 'Of course.', '14', '0', '100', '0', '0', '13187', 'anomalus SAY_DEATH'),
('26763', '2', '0', 'Reality... unwoven.', '14', '0', '100', '0', '0', '13188', 'anomalus SAY_RIFT'),
('26763', '3', '0', 'Indestructible.', '14', '0', '100', '0', '0', '13189', 'anomalus SAY_SHIELD'),
('26763', '4', '0', '%s opens a Chaotic Rift!', '41', '0', '100', '0', '0', '0', 'Anomalus'),
('26763', '5', '0', '%s shields himself and diverts his power to the rifts!', '41', '0', '100', '0', '0', '0', 'Anomalus');

UPDATE `creature_template` SET `ScriptName`='boss_anomalus' WHERE (`entry`='26763');
-- Chaotic Rift template corrected
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='2048', `flags_extra`='0', `ScriptName`='mob_chaotic_rift' WHERE (`entry`='26918');
-- Remove spawned Chaotic Rift (They are spawned in encounter)
DELETE FROM `creature` WHERE `id` = '26918';
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='2048', `flags_extra`='0' WHERE (`entry`='30522');

-- Ormorok the Tree-Shaper
DELETE FROM `creature_text` WHERE `entry` = '26794';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES ('26794', '1', '0', 'Noo!', '14', '0', '0', '0', '0', '13328', 'ormorok SAY_AGGRO'),
('26794', '2', '0', 'Aaggh!', '14', '0', '0', '0', '0', '13330', 'ormorok SAY_DEATH'),
('26794', '3', '0', 'Back!', '14', '0', '0', '0', '0', '13331', 'ormorok SAY_REFLECT'),
('26794', '4', '0', 'Bleed!', '14', '0', '0', '0', '0', '13332', 'ormorok SAY_CRYSTAL_SPIKES'),
('26794', '5', '0', 'Aaggh! Kill!', '14', '0', '0', '0', '0', '13329', 'ormorok SAY_KILL');

UPDATE `creature_template` SET `ScriptName`='boss_ormorok' WHERE (`entry`='26794');

-- Keristrasha
UPDATE `creature_template` SET `ScriptName`='boss_keristrasza' WHERE (`entry`='26723');
UPDATE `gameobject_template` SET `ScriptName`='go_containment_sphere' WHERE `entry` IN('188526', '188527', '188528');

-- Correct Commander Stoutbeard text-type
UPDATE `creature_text` SET `type`='14' WHERE (`entry`='26796');


-- -------------- --
--  UTGARDE KEEP  --
-- -------------- --
DELETE FROM `disables` WHERE (`sourceType`='2') AND (`entry`='574');
-- Annhylde the Caller text
DELETE FROM `creature_text` WHERE `entry` = '24068';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES ('24068', '0', '0', 'Ingvar! Your pathetic failure will serve as a warning to all... you are damned! Arise and carry out the master\'s will!', '14', '0', '100', '0', '0', '13754', 'Annhylde the Caller to Ingvar the Plunderer');

-- -------------- --
--  BLOOD FURNACE --
-- -------------- --
-- Enable Instance
DELETE FROM `disables` WHERE (`sourceType`='2') AND (`entry`='542');

-- Correct Laughing Skull Rogue text
UPDATE `creature_text` SET `type`='14' WHERE (`entry`='17491') AND (`groupid`='0') AND (`id`='0');
-- The Maker AI
UPDATE `creature_template` SET `ScriptName`='boss_the_maker' WHERE (`entry`='17381');
-- Broggok AI
UPDATE `creature_template` SET `ScriptName`='boss_broggok' WHERE (`entry`='17380');
-- Spawn doors
DELETE FROM `gameobject` WHERE `id` = '181819';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `position_x`, `position_y`, `position_z`, `spawntimesecs`, `animprogress`, `state`) VALUES ('22297', '181819', '542', '0', '0', '6', '456.291', '34.151', '23.832', '181', '100', '1');

-- Kelidan the Breaker AI
UPDATE `creature_template` SET `ScriptName`='boss_kelidan_the_breaker' WHERE (`entry`='17377');

-- ----------------  --
--  Razorfen Kraul   --
-- ----------------  --
-- Enable Instance
DELETE FROM `disables` WHERE (`sourceType`='2') AND (`entry`='47');
-- Correct texts
UPDATE `creature_text` SET `type`='14' WHERE (`entry`='4420');
UPDATE `creature_text` SET `type`='14' WHERE (`entry`='4421');

-- --------------------  --
--  Magister's Terrace   --
-- --------------------  --
-- Enable instance
DELETE FROM `disables` WHERE (`sourceType`='2') AND (`entry`='585');
-- Heroic mode haven't quest requirement anymore
UPDATE `access_requirement` SET `quest_done_A`='0', `quest_done_H`='0' WHERE (`mapId`='585') AND (`difficulty`='1');

UPDATE `creature_template` SET `ScriptName`='boss_priestess_delrissa' WHERE (`entry`='24560');
UPDATE `creature_template` SET `ScriptName`='boss_felblood_kaelthas' WHERE (`entry`='24664');
UPDATE `creature_template` SET `ScriptName`='mob_fel_crystal' WHERE (`entry`='24722');
UPDATE `creature_template` SET `ScriptName`='boss_selin_fireheart' WHERE (`entry`='24723');
UPDATE `creature_template` SET `ScriptName`='boss_vexallus' WHERE (`entry`='24744');

-- Selin Fireheart
UPDATE `conditions` SET `SourceGroup`='3', `SourceEntry`='44320', `ElseGroup`='1', `ConditionValue2`='24723' WHERE (`SourceTypeOrReferenceId`='13') AND (`SourceGroup`='1') AND (`SourceEntry`='44374') AND (`SourceId`='0') AND (`ElseGroup`='0') AND (`ConditionTypeOrReference`='31') AND (`ConditionTarget`='0') AND (`ConditionValue1`='3') AND (`ConditionValue2`='24722') AND (`ConditionValue3`='0');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='13') AND (`SourceGroup`='1') AND (`SourceEntry`='44374') AND (`SourceId`='0') AND (`ElseGroup`='0') AND (`ConditionTypeOrReference`='31') AND (`ConditionTarget`='0') AND (`ConditionValue1`='3') AND (`ConditionValue2`='24722');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES ('13', '1', '44374', '0', '0', '31', '0', '3', '24722', '0', '0', '0', '0', '', '');

-- Vexallus pure energy
UPDATE `creature_template` SET `flags_extra`='0' WHERE (`entry`='24745');
DELETE FROM `creature_template_aura` WHERE `entry` = '24745';
INSERT INTO `creature_template_aura` (`entry`, `aura`) VALUES ('24745', '44326');
-- Thrash AI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN('24683', '24684', '24685', '24686', '24687', '24688', '24689', '24690', '24696', '24697', '24698', '24761', '24777', '24808', '24822', '25954', '25955', '25956', '25957', '25958', '25959', '25960');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` IN(24684, 24686, 24687, 24688, 24689, 24690);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(24684, 0, 0, 0, 4, 0, 100, 3, 0, 0, 0, 0, 11, 44480, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Blood Knight - On Aggro - Cast \'Seal of Wrath\' (No Repeat)'),
(24684, 0, 1, 0, 4, 0, 100, 5, 0, 0, 0, 0, 11, 46030, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Blood Knight - On Aggro - Cast \'Seal of Wrath\' (No Repeat)'),
(24684, 0, 2, 0, 0, 0, 100, 2, 15000, 20000, 15000, 20000, 11, 44482, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Blood Knight - In Combat - Cast \'Judgement of Wrath\' (No Repeat)'),
(24684, 0, 3, 0, 0, 0, 100, 4, 15000, 20000, 15000, 20000, 11, 46033, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Blood Knight - In Combat - Cast \'Judgement of Wrath\' (No Repeat)'),
(24684, 0, 4, 0, 74, 0, 100, 2, 0, 40, 30000, 50000, 11, 44479, 1, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Blood Knight - On Friendly Between 0-40% Health - Cast \'Holy Light\' (No Repeat)'),
(24684, 0, 5, 0, 74, 0, 100, 4, 0, 40, 30000, 50000, 11, 46029, 1, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Blood Knight - On Friendly Between 0-40% Health - Cast \'Holy Light\' (No Repeat)'),
(24686, 0, 0, 0, 1, 0, 100, 7, 1000, 1000, 0, 0, 11, 44517, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Warlock - Out of Combat - Cast \'Summon Sunblade Imp\''),
(24686, 0, 1, 0, 1, 0, 100, 7, 1, 1000, 180000, 180000, 11, 44520, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Warlock - Out of Combat - Cast \'Fel Armor\''),
(24686, 0, 2, 0, 0, 0, 100, 2, 20000, 20000, 12000, 17000, 11, 44518, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Warlock - In Combat - Cast \'Immolate\''),
(24686, 0, 3, 0, 0, 0, 100, 4, 13900, 13900, 10000, 15000, 11, 46042, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Warlock - In Combat - Cast \'Immolate\''),
(24686, 0, 4, 0, 0, 0, 100, 2, 5000, 5000, 15000, 50000, 11, 44519, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Warlock - In Combat - Cast \'Incinerate\''),
(24686, 0, 5, 0, 0, 0, 100, 4, 4000, 4000, 5000, 20000, 11, 46043, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Warlock - In Combat - Cast \'Incinerate\''),
(24687, 0, 0, 0, 4, 0, 100, 3, 0, 0, 0, 0, 11, 44599, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Physician - On Aggro - Cast \'Inject Poison\''),
(24687, 0, 1, 0, 4, 0, 100, 5, 0, 0, 0, 0, 11, 46046, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Physician - On Aggro - Cast \'Inject Poison\''),
(24687, 0, 2, 0, 0, 0, 75, 2, 14000, 14000, 12000, 19500, 11, 44599, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Physician - In Combat - Cast \'Inject Poison\''),
(24687, 0, 3, 0, 0, 0, 100, 4, 12000, 14000, 10000, 25000, 11, 46046, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Physician - In Combat - Cast \'Inject Poison\''),
(24687, 0, 4, 0, 0, 0, 75, 2, 26000, 26000, 24000, 54000, 11, 44583, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Physician - In Combat - Cast \'Prayer of Mending\''),
(24687, 0, 5, 0, 0, 0, 100, 4, 24000, 24000, 24000, 54000, 11, 46045, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sunblade Physician - In Combat - Cast \'Prayer of Mending\''),
(24688, 0, 0, 0, 2, 0, 100, 6, 0, 20, 29000, 39000, 11, 44505, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Wretched Skulker - Between 0-20% Health - Cast \'Drink Fel Infusion\''),
(24688, 0, 1, 0, 0, 0, 100, 6, 6200, 14000, 5000, 12000, 11, 44533, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Wretched Skulker - In Combat - Cast \'Wretched Stab\''),
(24689, 0, 0, 0, 2, 0, 100, 6, 0, 20, 23000, 33000, 11, 44505, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Wretched Bruiser - Between 0-20% Health - Cast \'Drink Fel Infusion\''),
(24689, 0, 1, 0, 0, 0, 100, 6, 3800, 3800, 6000, 11000, 11, 44534, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Wretched Bruiser - In Combat - Cast \'Wretched Strike\''),
(24690, 0, 0, 0, 2, 0, 100, 6, 0, 20, 29000, 39000, 11, 44505, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Wretched Husk - Between 0-20% Health - Cast \'Drink Fel Infusion\''),
(24690, 0, 1, 0, 0, 0, 50, 6, 5000, 5000, 7000, 17000, 11, 44503, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Wretched Husk - In Combat - Cast \'Wretched Fireball\''),
(24690, 0, 2, 0, 0, 0, 50, 6, 6500, 6500, 14000, 24000, 11, 44504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Wretched Husk - In Combat - Cast \'Wretched Frostbolt\'');
