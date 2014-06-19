DELETE FROM `creature` WHERE `id` = '55685';

UPDATE `creature_template` SET `ScriptName`='mob_master_shang_xi_temple' WHERE (`entry`='54786');

DELETE FROM `script_waypoint` WHERE `entry` = '55685';
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES
('55685', '0', '926', '3610', '203', 'Raufen - Morning Breeze Village'),
('55685', '1', '947', '3620', '207', 'Raufen - Morning Breeze Village'),
('55685', '2', '961', '3603', '211', 'Raufen - Morning Breeze Village'),
('55685', '3', '950', '3595', '217', 'Raufen - Morning Breeze Village'),
('55685', '4', '946', '3594', '228', 'Raufen - Morning Breeze Village'),
('55685', '5', '942', '3580', '228', 'Raufen - Morning Breeze Village'),
('55685', '6', '925', '3590', '228', 'Raufen - Morning Breeze Village'),
('55685', '7', '917', '3605', '226', 'Raufen - Morning Breeze Village');
