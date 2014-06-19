DELETE FROM `creature` WHERE `id` = '55685';

UPDATE `creature_template` SET `ScriptName`='mob_master_shang_xi_temple' WHERE (`entry`='54786');

DELETE FROM `script_waypoint` WHERE `entry` = '55685';
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES
('55685', '0', '938', '3618', '207', 'Raufen - Morning Breeze Village'),
('55685', '1', '955', '3609', '219', 'Raufen - Morning Breeze Village'),
('55685', '2', '951', '3593', '233', 'Raufen - Morning Breeze Village'),
('55685', '3', '938', '3596', '244', 'Raufen - Morning Breeze Village'),
('55685', '4', '935', '3613', '254', 'Raufen - Morning Breeze Village'),
('55685', '5', '945', '3620', '254', 'Raufen - Morning Breeze Village'),
('55685', '6', '960', '3605', '253', 'Raufen - Morning Breeze Village'),
('55685', '7', '944', '3586', '253', 'Raufen - Morning Breeze Village');
