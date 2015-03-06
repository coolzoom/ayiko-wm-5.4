-- Rally the Survivors
DELETE FROM `smart_scripts` WHERE (`entryorguid`='54763') AND (`source_type`='0');
DELETE FROM `creature_text` WHERE `entry` = '54763';
INSERT INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`, `comment`) VALUES
('54763', '0', 'I don\'t know who you are, but you have my gratitude.', '12', '100', 'Raufen - Nectarbreeze Farmer Rescue talk'),
('54763', '1', 'I never thought something like this could happen here...', '12', '100', 'Raufen - Nectarbreeze Farmer Rescue talk'),
('54763', '2', 'I thought I was done for!', '12', '100', 'Raufen - Nectarbreeze Farmer Rescue talk'),
('54763', '3', 'You don\'t have to tell me twice!', '12', '100', 'Raufen - Nectarbreeze Farmer Rescue talk');

UPDATE `creature_template` SET `npcflag`='1', `AIName`='', `ScriptName`='npc_nectarbreeze_farmer' WHERE (`entry`='54763');

-- Empty Nests
UPDATE `creature_template` SET `KillCredit2`='0', `ScriptName`='npc_windward_hatchling' WHERE `entry` IN ('58220', '58243', '58244');
UPDATE `creature_template` SET `flags_extra`='0', `ScriptName`='npc_windward_nest_trigger' WHERE (`entry`='58275');
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE (`id`='58275');
UPDATE `creature_template` SET `speed_walk`='1.5', `speed_run`='1.5' WHERE (`entry`='58248');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 110171;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 110171, 0, 0, 31, 0, 3, 58220, 0, 0, 0, 0, '', "Silken Rope targets Windward Hatchling"),
(17, 0, 110171, 0, 1, 31, 0, 3, 58243, 0, 0, 0, 0, '', "Silken Rope targets Windward Hatchling"),
(17, 0, 110171, 0, 2, 31, 0, 3, 58244, 0, 0, 0, 0, '', "Silken Rope targets Windward Hatchling");

-- Hidden Power
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN('57400', '57326', '57316');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` IN('57400', '57326', '57316');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `event_param1`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
('57400', '0', '1', '8', '108863', '11', '108865', '1', 'Raufen - On Spell Hit - Cast Summon Mantra'),
('57326', '0', '1', '8', '108863', '11', '108865', '1', 'Raufen - On Spell Hit - Cast Summon Mantra'),
('57316', '0', '1', '8', '108863', '11', '108865', '1', 'Raufen - On Spell Hit - Cast Summon Mantra');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
('57400', '1', '2', '61', '33', '57705', '7', 'Raufen - On Link - Give KC'),
('57326', '1', '2', '61', '33', '57705', '7', 'Raufen - On Link - Give KC'),
('57316', '1', '2', '61', '33', '57705', '7', 'Raufen - On Link - Give KC');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `action_type`, `target_type`, `comment`) VALUES
('57400', '2', '3', '61', '1', '1', 'Raufen - On Link - Talk'),
('57326', '2', '3', '61', '1', '1', 'Raufen - On Link - Talk'),
('57316', '2', '3', '61', '1', '1', 'Raufen - On Link - Talk');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
('57400', '3', '61', '11', '108868', '1', 'Raufen - On Link - Cast Transcendence'),
('57326', '3', '61', '11', '108868', '1', 'Raufen - On Link - Cast Transcendence'),
('57316', '3', '61', '11', '108868', '1', 'Raufen - On Link - Cast Transcendence');

DELETE FROM `creature_text` WHERE `entry` IN('57400', '57326', '57316');
INSERT INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`, `comment`) VALUES
('57400', '0', 'Begone, minions of doubt!', '12', '100', 'Raufen - Talk on SpellHit'),
('57326', '0', 'Begone, minions of doubt!', '12', '100', 'Raufen - Talk on SpellHit'),
('57316', '0', 'Begone, minions of doubt!', '12', '100', 'Raufen - Talk on SpellHit'),
('57400', '1', 'Return to the earth!', '12', '100', 'Raufen - Talk on SpellHit'),
('57326', '1', 'Return to the earth!', '12', '100', 'Raufen - Talk on SpellHit'),
('57316', '1', 'Return to the earth!', '12', '100', 'Raufen - Talk on SpellHit'),
('57400', '2', 'We shall dispel you from this land!', '12', '100', 'Raufen - Talk on SpellHit'),
('57326', '2', 'We shall dispel you from this land!', '12', '100', 'Raufen - Talk on SpellHit'),
('57316', '2', 'We shall dispel you from this land!', '12', '100', 'Raufen - Talk on SpellHit'),
('57400', '3', 'You will not break us, sha!', '12', '100', 'Raufen - Talk on SpellHit'),
('57326', '3', 'You will not break us, sha!', '12', '100', 'Raufen - Talk on SpellHit'),
('57316', '3', 'You will not break us, sha!', '12', '100', 'Raufen - Talk on SpellHit');

-- Kota Blend
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='-100' WHERE (`entry`='211480') AND (`item`='81054');
UPDATE `gameobject_template` SET `data1`='211480' WHERE (`entry`='211480');
