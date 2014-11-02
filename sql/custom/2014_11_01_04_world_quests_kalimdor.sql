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
