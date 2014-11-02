-- Challenge to the Black Flight
DELETE FROM `gameobject` WHERE `id` = '300153';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `state`) VALUES ('12009', '300153', '1', '1', '-4698.88', '-3721.16', '50.891', '3.764', '0.951929', '-0.306319', '180', '1');

-- Feed of Evil
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='17') AND (`SourceGroup`='0') AND (`SourceEntry`='69228');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='13') AND (`SourceGroup`='7') AND (`SourceEntry`='69228');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('13', '7', '69228', '0', '0', '31', '0', '3', '36727', '0', '0', '0', '0', '', 'Raufen - Feed of Evil Quest'),
('13', '7', '69228', '0', '1', '31', '0', '3', '37155', '0', '0', '0', '0', '', 'Raufen - Feed of Evil Quest'),
('13', '7', '69228', '0', '2', '31', '0', '3', '37156', '0', '0', '0', '0', '', 'Raufen - Feed of Evil Quest');

-- Mountain Giant Muisek and Forces of Nature: Mountain Giants
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='17') AND (`SourceGroup`='0') AND (`SourceEntry`='11889');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('17', '0', '11889', '0', '0', '31', '1', '3', '40026', '0', '0', '0', '0', '', 'Raufen - Require Mountain Giant'),
('17', '0', '11889', '0', '0', '36', '1', '0', '0', '0', '1', '0', '0', '', 'Raufen - Require dead');

DELETE FROM `smart_scripts` WHERE (`entryorguid`='40026') AND (`source_type`='0') AND (`link`='0') AND `id` IN('2', '3', '4');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('40026', '0', '2', '0', '8', '0', '100', '0', '80995', '0', '0', '0', '33', '43347', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Give KC'),
('40026', '0', '3', '0', '8', '0', '100', '0', '80995', '0', '0', '0', '41', '1000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Force Despawn'),
('40026', '0', '4', '0', '8', '0', '100', '0', '11889', '0', '0', '0', '41', '1000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Force Despawn');

-- King of the Foulweald
DELETE FROM `gameobject` WHERE `id` = '300131';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `rotation3`, `spawntimesecs`, `state`) VALUES ('280464', '300131', '1', '1', '2232.68', '-1550.47', '93.21', '1', '300', '1');
DELETE FROM `creature` WHERE `id` IN('12918', '12921');
DELETE FROM `event_scripts` WHERE `id` = '6721';
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
('6721', '0', '10', '3749', '120000', '0', '2231.03', '-1543.77', '90.76', '0'),
('6721', '0', '10', '3750', '120000', '0', '2231.35', '-1544.31', '91.07', '4.89'),
('6721', '5', '10', '3743', '120000', '0', '2237.97', '-1551.94', '90.23', '0'),
('6721', '5', '10', '3750', '120000', '0', '2239.35', '-1557.46', '89.81', '0'),
('6721', '25', '10', '3749', '120000', '0', '2231.03', '-1543.77', '90.76', '0'),
('6721', '30', '10', '3743', '120000', '0', '2237.97', '-1551.94', '90.23', '0'),
('6721', '30', '10', '3750', '120000', '0', '2239.35', '-1557.46', '89.81', '0'),
('6721', '60', '10', '12918', '120000', '0', '2239.35', '-1557.46', '89.81', '0'),
('6721', '60', '10', '12921', '120000', '0', '2231.03', '-1543.77', '90.76', '0'),
('6721', '60', '10', '12921', '120000', '0', '2237.97', '-1551.94', '90.23', '0');

-- Echeyakee
DELETE FROM `gameobject` WHERE `id` = '164651';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `protect_anti_doublet`) VALUES
('280465', '164651', '1', '0', '0', '1', '1', '125', '-2541', '91.668', '0.865', '0', '0', '0.419357', '0.907821', '300', '0', '1', '0', NULL);
DELETE FROM `event_scripts` WHERE (`id`='2980') AND (`delay`='0') AND (`command`='10') AND (`datalong`='3475');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES ('2980', '0', '10', '3475', '180000', '0', '116.2', '-2559', '91.6667', '1.19');

-- Parts-is-Parts
DELETE FROM `gameobject` WHERE (`id`='201904');

DELETE FROM `smart_scripts` WHERE (`entryorguid`='37923') AND (`source_type`='0') AND `id` IN('2', '3');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `event_param1`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
('37923', '2', '3', '8', '70813', '11', '70828', '1', 'Raufen - On Spell Hit - Cast Summon Object');
('37923', '3', '0', '61', '0', '41', '0', '1', 'Raufen - On Link - Despawn');

DELETE FROM `creature_loot_template` WHERE (`entry`='37923') AND (`item`='49945');
DELETE FROM `gameobject_loot_template` WHERE `entry` = '201904';
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('201904', '49945', '-100', '1', '0', '1', '3');

-- Competition Schmompetition
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-29' WHERE (`entry`='3282') AND (`item`='68820');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry`='3285') AND (`item`='68820');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE (`entry`='52356') AND (`item`='68820');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-55' WHERE (`entry`='52357') AND (`item`='68820');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE (`entry`='3284') AND (`item`='68820');

-- By Hook Or By Crook
UPDATE `creature_template` SET `KillCredit2`='0', `gossip_menu_id`='10521', `ScriptName`='npc_captured_razormane' WHERE (`entry`='34523');

DELETE FROM `creature_text` WHERE `entry` = '34523';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('34523', '0', '0', 'That all you got?', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane Talk 0'),
('34523', '0', '1', 'Unf. You learn nothing from me!', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane talk 0'),
('34523', '0', '2', 'I not scared of you!', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane talk 0'),
('34523', '0', '3', 'Unf - Not the face!', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane - Talk 0'),
('34523', '0', '4', 'I say nothing! <snort>', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane talk 0'),
('34523', '1', '0', 'Mnn, <snort> why you cook this meat? Tortusk tells us meat taste best when stolen and raw.', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane Talk 1'),
('34523', '2', '0', 'Haha - <snort> ha - heee! <snort> Haha no stop haha <SNORT> <wheeze> Hee hee! Battlemaster Tortusk never prepared us for this!', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane Talk 2'),
('34523', '3', '0', 'You waste your strength! Tortusk train us warriors never to talk.', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane Talk 0'),
('34523', '4', '0', 'Oh - I\'ve said too much!', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane talk 4');
