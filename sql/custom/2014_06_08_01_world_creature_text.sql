DELETE FROM creature_text WHERE entry = 56159;
INSERT INTO creature_text (entry, groupid, id, text, type, language, probability, emote, duration, sound, comment) VALUES
(56159, 0, 0, 'Come child. We have one final journey to take together before your training is complete.', 12, 0, 100, 0, 0, 0, ''),
(56159, 1, 0, 'Beyond the Elders'' Path is the Wood of Staves, a sacred place that only the worthy may enter.', 12, 0, 100, 0, 0, 0, ''),
(56159, 2, 0, 'Of the many ways to prove your worth, I require the simplest of you now. I must know that you will fight for our people', 12, 0, 100, 1, 0, 0, ''),
(56159, 3, 0, 'Defeat the Guardian of the Elders, and we may pass.', 12, 0, 100, 1, 0, 0, ''),
(56159, 4, 0, 'You''ve become strong indeed, child. This is good. You will need that strength soon.', 12, 0, 100, 1, 0, 0, ''),
(56159, 5, 0, 'And here we are. Help me with a couple small tasks while I prepare, if you would.', 12, 0, 100, 1, 0, 0, '');

UPDATE gameobject SET phaseMask = 2048 WHERE id = 209922; -- Gate

DELETE FROM creature WHERE id = 56274; -- Elder

DELETE FROM script_waypoint WHERE entry = 56159;
INSERT INTO script_waypoint (entry, pointid, location_x, location_y, location_z, point_comment) VALUES
(56159, 1, 723.458069, 4179.121582, 196.799316, ''),
(56159, 2, 748.149475, 4181.603516, 203.356354, ''),
(56159, 3, 786.553101, 4183.211426, 208.564850, ''),
(56159, 4, 805.530029, 4189.574219, 207.727966, ''),
(56159, 5, 816.506165, 4198.053711, 203.083557, ''),
(56159, 6, 834.109497, 4226.545898, 198.549805, ''),
(56159, 7, 845.180481, 4265.948730, 196.743668, ''),
(56159, 8, 846.159424, 4274.864746, 196.906601, ''),
(56159, 9, 844.329529, 4293.073730, 210.621078, ''),
(56159, 10, 844.055847, 4311.858398, 210.985596, ''),
(56159, 11, 843.343201, 4329.491699, 224.361435, ''),
(56159, 12, 843.668640, 4337.324707, 223.980957, ''),
(56159, 13, 832.455017, 4341.230957, 223.980957, ''),
(56159, 14, 828.233643, 4350.985840, 223.979538, ''),
(56159, 15, 828.377197, 4367.082520, 223.888092, ''),
(56159, 16, 845.520081, 4379.374023, 223.980774, ''),
(56159, 17, 845.169312, 4399.090820, 237.272949, ''),
(56159, 18, 846.132507, 4424.986328, 235.616348, ''),
(56159, 19, 859.351257, 4438.477539, 236.064774, ''),
(56159, 20, 872.636719, 4453.408203, 240.885101, ''),
(56159, 21, 874.106018, 4459.540039, 241.188004, '');