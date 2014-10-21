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
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='13') AND (`SourceGroup`='3') AND (`SourceEntry`='44320');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES ('13', '3', '44320', '0', '0', '31', '0', '3', '24723', '0', '0', '0', '0', '', '');
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

-- --------------------  --
--  Halls of Lightning   --
-- --------------------  --
-- Enable Instance
DELETE FROM `disables` WHERE (`sourceType`='2') AND (`entry`='602');
-- Heat - target Molten Golem
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='13') AND (`SourceGroup`='1') AND (`SourceEntry`='52387') AND (`SourceId`='0') AND (`ElseGroup`='0') AND (`ConditionTypeOrReference`='31') AND (`ConditionTarget`='0') AND (`ConditionValue1`='3') AND (`ConditionValue2`='28695') AND (`ConditionValue3`='0');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES ('13', '1', '52387', '0', '0', '31', '0', '3', '28695', '0', '0', '0', '0', '', 'Volkhan - target Heat on Molten Golem');
-- Spark of Ionar
UPDATE `creature_template` SET `speed_run`='0.571429' WHERE (`entry`='28926');
-- Loken's (heroic) immunities
UPDATE `creature_template` SET `mechanic_immune_mask`='617299935' WHERE (`entry`='31538');

-- -----------  --
--  AHN KAHET   --
-- -----------  --
-- Enable Instance
DELETE FROM `disables` WHERE (`sourceType`='2') AND (`entry`='619');
UPDATE `creature_template` SET `ScriptName`='mob_nadox_eggs' WHERE `entry` IN('30172', '30173');
UPDATE `creature_template` SET `mechanic_immune_mask`='617299935', `ScriptName`='boss_elder_nadox' WHERE (`entry`='29309');
UPDATE `creature_template` SET `mechanic_immune_mask`='617299935' WHERE (`entry`='31456');
UPDATE `creature_template` SET `mechanic_immune_mask`='650854399', `ScriptName`='boss_jedoga_shadowseeker' WHERE (`entry`='29310');
UPDATE `creature_template` SET `mechanic_immune_mask`='650854399' WHERE (`entry`='31465');
UPDATE `creature_template` SET `flags_extra`='64', `ScriptName`='mob_jedoga_initiand' WHERE (`entry`='30114');
UPDATE `creature_template` SET `mechanic_immune_mask`='617299935', `ScriptName`='boss_volazj' WHERE (`entry`='29311');
UPDATE `creature_template` SET `flags_extra`='64' WHERE `entry` IN('30625', '31480');
UPDATE `creature_template` SET `mechanic_immune_mask`='617299935' WHERE (`entry`='31464');
UPDATE `creature_template` SET `flags_extra`='0' WHERE `entry` IN('31686', '31687', '30106');

-- -----------------  --
--  The Violet Hold   --
-- -----------------  --
-- Enable Instance
DELETE FROM `disables` WHERE (`sourceType`='2') AND (`entry`='608');
UPDATE `creature_template` SET `mechanic_immune_mask`='617299803' WHERE `entry` IN('31134', '31506', '29314', '31512', '29312', '31509', '29266', '31511', '29313', '31508', '29316', '31510', '29315', '31507');


-- --------------  --
--  The Botanica   --
-- --------------  --
-- Enable Instance
DELETE FROM `disables` WHERE (`sourceType`='2') AND (`entry`='553');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='18405');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '18405';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('18405', '0', '0', '0', '0', '0', '90', '6', '0', '0', '17800', '21200', '11', '34785', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Tempest-Forge Peacekeeper - In Combat - Cast \'Arcane Volley\' (No Repeat)'),
('18405', '0', '1', '0', '0', '0', '100', '6', '5000', '7100', '7600', '14500', '11', '34791', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Tempest-Forge Peacekeeper - In Combat - Cast \'Arcane Explosion\' (No Repeat)');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='17993');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '17993';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('17993', '0', '0', '0', '0', '0', '100', '7', '0', '1000', '0', '0', '11', '34784', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Protector - In Combat - Cast \'Intervene\' (No Repeat) (Dungeon)'),
('17993', '0', '1', '0', '0', '0', '80', '6', '6900', '14700', '18000', '25000', '11', '35399', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Protector - In Combat - Cast \'Spell Reflection\' (No Repeat) (Dungeon)'),
('17993', '0', '2', '0', '0', '0', '80', '6', '2000', '9000', '6000', '12000', '11', '29765', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Protector - In Combat - Cast \'Crystal Strike\' (No Repeat) (Dungeon)'),
('17993', '0', '3', '0', '2', '0', '100', '7', '0', '10', '0', '0', '11', '7', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Protector - Between 0-10% Health - Cast \'Suicide\' (No Repeat) (Dungeon)');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='18419');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '18419';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('18419', '0', '0', '0', '0', '0', '80', '6', '5000', '5000', '6000', '10000', '11', '34800', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Greenkeeper - In Combat - Cast \'Impending Coma\' (No Repeat)'),
('18419', '0', '1', '0', '0', '0', '80', '2', '1000', '1000', '5000', '8000', '11', '34798', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Greenkeeper - In Combat - Cast \'Greenkeeper\'s Fury\' (No Repeat)'),
('18419', '0', '2', '0', '0', '0', '80', '4', '1000', '1000', '5000', '8000', '11', '39121', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Greenkeeper - In Combat - Cast \'Greenkeeper\'s Fury\' (No Repeat)'),
('18419', '0', '3', '0', '0', '0', '70', '2', '8000', '8000', '6000', '10000', '11', '34797', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Greenkeeper - In Combat - Cast \'Nature Shock\' (No Repeat)'),
('18419', '0', '4', '0', '0', '0', '70', '4', '8000', '8000', '6000', '10000', '11', '39120', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Greenkeeper - In Combat - Cast \'Nature Shock\' (No Repeat)');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='19633');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '19633';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('19633', '0', '0', '0', '1', '0', '100', '6', '1000', '1000', '180000', '180000', '11', '34809', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Mender - Out of Combat - Cast \'Holy Fury\' (Dungeon)'),
('19633', '0', '1', '0', '0', '0', '80', '2', '5000', '8000', '10000', '14000', '11', '17194', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Mender - In Combat - Cast \'Mind Blast\' (Dungeon)'),
('19633', '0', '2', '0', '0', '0', '80', '4', '5000', '8000', '10000', '14000', '11', '17287', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Mender - In Combat - Cast \'Mind Blast\' (Dungeon)'),
('19633', '0', '3', '0', '2', '0', '100', '7', '0', '30', '0', '0', '11', '35096', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Mender - Between 0-30% Health - Cast \'Greater Heal\' (Dungeon)');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='18155');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '18155';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('18155', '0', '0', '0', '4', '0', '100', '7', '0', '0', '0', '0', '11', '32323', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Bloodfalcon - On Aggro - Cast \'Charge\''),
('18155', '0', '1', '0', '0', '0', '100', '6', '7900', '7900', '12500', '12500', '11', '34856', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Bloodfalcon - In Combat - Cast \'Bloodburn\''),
('18155', '0', '2', '0', '0', '0', '100', '7', '16700', '20100', '0', '0', '11', '18144', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Bloodfalcon - In Combat - Cast \'Swoop\'');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='17994');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '17994';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES ('17994', '0', '0', '0', '0', '0', '100', '6', '3200', '3200', '20000', '25000', '11', '34852', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Falconer - In Combat - Cast \'Call of the Falcon\' (No Repeat) (Dungeon)');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='18404');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '18404';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES ('18404', '0', '0', '0', '0', '0', '80', '6', '10000', '10000', '15000', '20000', '11', '34821', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Steward - In Combat - Cast \'Arcane Flurry\' (No Repeat)');

UPDATE `creature_template` SET `ScriptName`='boss_commander_sarannis' WHERE (`entry`='17976');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='18422');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '18422';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('18422', '0', '0', '0', '2', '0', '100', '2', '0', '60', '21000', '21000', '11', '27637', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Botanist - Between 0-60% Health - Cast \'Regrowth\' (No Repeat)'),
('18422', '0', '1', '0', '2', '0', '100', '4', '0', '60', '21000', '21000', '11', '39125', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Botanist - Between 0-60% Health - Cast \'Regrowth\' (No Repeat)');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='18421');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '18421';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('18421', '0', '0', '0', '1', '0', '100', '6', '1000', '1000', '60000', '60000', '11', '34355', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Researcher - Out of Combat - Cast \'Poison Shield\' (No Repeat)'),
('18421', '0', '1', '0', '0', '0', '70', '6', '2000', '2000', '10000', '14000', '11', '34352', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Researcher - In Combat - Cast \'Mind Shock\' (No Repeat)'),
('18421', '0', '2', '0', '0', '0', '70', '6', '5000', '5000', '10000', '14000', '11', '34353', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Researcher - In Combat - Cast \'Frost Shock\' (No Repeat)'),
('18421', '0', '3', '0', '0', '0', '70', '6', '8000', '8000', '10000', '14000', '11', '34354', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Researcher - In Combat - Cast \'Flame Shock\' (No Repeat)');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='19486');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '19486';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('19486', '0', '0', '0', '0', '0', '80', '2', '10000', '10000', '20000', '25000', '11', '34358', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Chemist - In Combat - Cast \'Vial of Poison\''),
('19486', '0', '1', '0', '0', '0', '80', '4', '12700', '20500', '20000', '25000', '11', '39127', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Chemist - In Combat - Cast \'Vial of Poison\''),
('19486', '0', '2', '0', '0', '0', '80', '2', '5000', '5000', '10000', '15000', '11', '34359', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Chemist - In Combat - Cast \'Fire Breath Potion\''),
('19486', '0', '3', '0', '0', '0', '80', '4', '9600', '15600', '10000', '15000', '11', '39128', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Chemist - In Combat - Cast \'Fire Breath Potion\'');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='18420');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '18420';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('18420', '0', '0', '0', '0', '0', '100', '6', '5000', '5000', '5000', '8000', '11', '35124', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Geomancer - In Combat - Cast \'Arcane Explosion\' (No Repeat)'),
('18420', '0', '1', '0', '1', '0', '100', '6', '1000', '1000', '12000', '12000', '11', '35265', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Geomancer - Out of Combat - Cast \'Fire Shield\' (No Repeat)');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='19511');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '19511';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('19511', '0', '0', '0', '0', '0', '60', '6', '5000', '5000', '5000', '10000', '11', '34615', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Nethervine Inciter - In Combat - Cast \'Mind-numbing Poison\' (No Repeat) (Dungeon)'),
('19511', '0', '1', '0', '0', '0', '100', '6', '3000', '3000', '10000', '15000', '11', '34616', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Nethervine Inciter - In Combat - Cast \'Deadly Poison\' (No Repeat) (Dungeon)');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='19505');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '19505';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('19505', '0', '0', '0', '1', '0', '100', '6', '1000', '1000', '30000', '30000', '11', '34173', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Channeler - Out of Combat - Cast \'Sunseeker Blessing\''),
('19505', '0', '1', '0', '0', '0', '70', '6', '4000', '4000', '10000', '15000', '11', '34637', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Channeler - In Combat - Cast \'Soul Channel\''),
('19505', '0', '2', '0', '0', '0', '40', '6', '14000', '14000', '10000', '15000', '11', '34634', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Channeler - In Combat - Cast \'Sunseeker Aura\'');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='19512');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '19512';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('19512', '0', '0', '0', '0', '0', '80', '6', '5000', '5000', '4000', '8000', '11', '15284', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Nethervine Reaper - In Combat - Cast \'Cleave\' (No Repeat) (Dungeon)'),
('19512', '0', '1', '0', '0', '0', '100', '6', '1000', '1000', '12000', '16000', '11', '34626', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', 'Nethervine Reaper - In Combat - Cast \'Pale Death\' (No Repeat) (Dungeon)');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='19843');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '19843';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('19843', '0', '0', '0', '1', '0', '100', '7', '1000', '1000', '0', '0', '11', '30831', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Nethervine Trickster - Out of Combat - Cast \'Stealth\' (Phase 1) (No Repeat)'),
('19843', '0', '1', '0', '0', '0', '50', '6', '7000', '7000', '7000', '10000', '11', '34614', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Nethervine Trickster - In Combat - Cast \'Backstab\' (Phase 1) (No Repeat)');

UPDATE `creature_template` SET `ScriptName`='thorngrin_the_tender' WHERE (`entry`='17978');

UPDATE `creature_template` SET `mechanic_immune_mask`='536941137', `ScriptName`='boss_laj' WHERE (`entry`='17980');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN('19507', '19508', '19509', '19865');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` IN('19507', '19508', '19509', '19865');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(19507, 0, 0, 0, 0, 0, 100, 2, 1000, 1000, 30000, 32000, 11, 34642, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Gene-Splicer - In Combat - Cast \'Death & Decay\''),
(19507, 0, 1, 2, 0, 0, 100, 4, 1000, 1000, 30000, 32000, 11, 39347, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Gene-Splicer - In Combat - Cast \'Death & Decay\''),
(19507, 0, 2, 3, 2, 0, 100, 7, 0, 50, 0, 0, 12, 19598, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Gene-Splicer - Between 0-50% Health - Summon Creature \'Mutate Fleshlasher\' (No Repeat) (Dungeon)'),
(19507, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 19598, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Gene-Splicer - Between 0-50% Health - Summon Creature \'Mutate Fleshlasher\' (No Repeat) (Dungeon)'),
(19508, 0, 0, 0, 1, 0, 100, 7, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Herbalist - Out of Combat - Disable Combat Movement (No Repeat) (Dungeon)'),
(19508, 0, 1, 2, 4, 0, 100, 0, 0, 0, 0, 0, 11, 34641, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Herbalist - On Aggro - Cast \'Spade Toss\''),
(19508, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 23, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Herbalist - On Aggro - Increment Phase By 1'),
(19508, 0, 3, 0, 9, 0, 100, 2, 5, 30, 2200, 3800, 11, 34641, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Herbalist - Within 5-30 Range - Cast \'Spade Toss\''),
(19508, 0, 4, 5, 4, 0, 100, 0, 0, 0, 0, 0, 11, 39129, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Herbalist - On Aggro - Cast \'Spade Toss\''),
(19508, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 23, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Herbalist - On Aggro - Increment Phase By 1'),
(19508, 0, 6, 0, 9, 0, 100, 4, 5, 30, 2200, 3800, 11, 39129, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Herbalist - Within 5-30 Range - Cast \'Spade Toss\''),
(19508, 0, 7, 0, 9, 0, 100, 7, 25, 80, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Herbalist - Within 25-80 Range - Enable Combat Movement'),
(19508, 0, 8, 0, 9, 0, 100, 7, 0, 5, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Herbalist - Within 0-5 Range - Enable Combat Movement'),
(19508, 0, 9, 0, 9, 0, 100, 6, 5, 15, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Herbalist - Within 5-15 Range - Disable Combat Movement'),
(19508, 0, 10, 0, 0, 0, 100, 6, 2000, 5000, 13000, 16000, 11, 22127, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Herbalist - In Combat - Cast \'Entangling Roots\''),
(19509, 0, 0, 0, 0, 0, 100, 6, 4000, 4000, 12000, 15000, 11, 37823, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Harvester - In Combat - Cast \'Entangling Roots\''),
(19509, 0, 1, 0, 0, 0, 60, 6, 7000, 7000, 6000, 12000, 11, 34639, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Harvester - In Combat - Cast \'Polymorph\''),
(19509, 0, 2, 3, 2, 0, 100, 7, 0, 50, 0, 0, 12, 19598, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Harvester - Between 0-50% Health - Summon Creature \'Mutate Fleshlasher\' (No Repeat) (Dungeon)'),
(19509, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 19598, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Harvester - Between 0-50% Health - Summon Creature \'Mutate Fleshlasher\' (No Repeat) (Dungeon)'),
(19865, 0, 0, 0, 0, 0, 100, 6, 6000, 6000, 10000, 15000, 11, 34643, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Mutate Horror - In Combat - Cast \'Corrode Armor\' (Phase 1) (No Repeat)');
