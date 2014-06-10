UPDATE quest_template SET Method = 2, StartScript = 0 WHERE Id = 30767;

DELETE FROM script_waypoint WHERE entry = 60729;
INSERT INTO script_waypoint (entry, pointid, location_x, location_y, location_z, point_comment) VALUES
(60729, 1, 282.108, 4004.813, 73.13213, ''),
(60729, 2, 277.946, 4005.084, 71.36774, ''),
(60729, 3, 271.084, 4005.886, 68.33376, ''),
(60729, 4, 253.658, 4008.245, 78.27106, ''),
(60729, 5, 246.508, 4009.368, 77.71168, ''),
(60729, 6, 238.076, 4010.279, 77.07869, ''),
(60729, 7, 234.847, 4007.558, 76.68843, ''),
(60729, 8, 233.773, 4003.955, 76.39205, ''),
(60729, 9, 235.724, 3999.008, 76.20834, ''),
(60729, 10, 239.360, 3997.576, 76.63306, ''),
(60729, 11, 259.288, 3993.348, 89.05962, ''),
(60729, 12, 263.303, 3994.708, 88.88000, ''),
(60729, 13, 263.985, 3997.710, 89.08080, ''),
(60729, 14, 262.675, 4000.731, 89.51206, ''),
(60729, 15, 260.973, 4002.549, 89.13453, ''),
(60729, 16, 255.467, 4006.989, 89.01056, ''),
(60729, 17, 247.941, 4008.997, 88.64015, ''),
(60729, 18, 233.987, 4007.439, 87.59078, ''),
(60729, 19, 233.987, 4007.439, 87.59078, '');

DELETE FROM creature_text WHERE entry IN(60729, 60741);
INSERT INTO creature_text (entry, groupid, id, text, type, language, probability, emote, duration, sound, comment) VALUES
(60729, 0, 0, 'Ji may kill Shen-zin Su if we let him go through with this! Come with me, $n, quickly!', 12, 0, 100, 0, 0, 27412, ''),
(60729, 1, 0, 'Ji, stop! This is reckless and stupid.', 12, 0, 100, 0, 0, 27413, ''),
(60729, 2, 0, 'If you stop this, then maybe we can come up with one.', 12, 0, 100, 0, 0, 27414, ''),
(60729, 3, 0, 'Doing THIS risks everything!', 12, 0, 100, 0, 0, 27415, ''),
(60729, 4, 0, 'Ji... if this is what you must do, I won''t stop you, but you''re giving up everything for this. I hope you''re right.', 12, 0, 100, 0, 0, 27416, ''),
(60729, 5, 0, '%s sighs.', 16, 0, 100, 0, 0, 0, ''),
(60741, 1, 0, 'Aysa, this is our only option. We blow the ship free, then we heal his wound. We have no other solution.', 12, 0, 100, 0, 0, 27329, ''),
(60741, 2, 0, 'So we just wait until we think of something? Shen-zin Su is dying! Doing nothing risks everything!', 12, 0, 100, 0, 0, 27330, ''),
(60741, 3, 0, 'I''d rather die knowing that we at least tried.', 12, 0, 100, 0, 0, 27331, '');