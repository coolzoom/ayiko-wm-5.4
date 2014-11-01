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
