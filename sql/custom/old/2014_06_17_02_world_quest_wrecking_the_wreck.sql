DELETE FROM `creature_text` WHERE `entry` = '60900';
INSERT INTO `creature_text` (`entry`, `text`, `type`, `probability`, `sound`, `comment`) VALUES ('60900', 'Let\'s go find this engineer. Maybe getting this thorn removed won\'t be as hard as we thought.', '12', '100', '27335', 'Raufen - Wrecking the Wreck');

DELETE FROM `script_waypoint` WHERE `entry` = '60900';
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES
('60900', '0', '429.6', '3690.7', '81.32', 'Raufen - Wrecking the Wreck'),
('60900', '1', '440.4', '3717.5', '82.77', 'Raufen - Wrecking the Wreck'),
('60900', '2', '458.48', '3739.88', '82.25', 'Raufen - Wrecking the Wreck'),
('60900', '3', '464.07', '3767.49', '81.97', 'Raufen - Wrecking the Wreck'),
('60900', '4', '466.68', '3810.24', '81.18', 'Raufen - Wrecking the Wreck'),
('60900', '5', '466.65', '3819.83', '85.61', 'Raufen - Wrecking the Wreck'),
('60900', '6', '466.3', '3830.18', '81.13', 'Raufen - Wrecking the Wreck'),
('60900', '7', '460.77', '3864.71', '79.45', 'Raufen - Wrecking the Wreck'),
('60900', '8', '466.98', '3910.05', '78.17', 'Raufen - Wrecking the Wreck'),
('60900', '9', '465.22', '3948.74', '79.1', 'Raufen - Wrecking the Wreck'),
('60900', '10', '491.24', '3980.13', '78.71', 'Raufen - Wrecking the Wreck'),
('60900', '11', '495.06', '4007.92', '78.28', 'Raufen - Wrecking the Wreck')
