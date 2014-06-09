UPDATE quest_template SET Method = 2, StartScript = 0 WHERE Id = 29414; -- The way of the Tushui
DELETE FROM quest_start_scripts WHERE id = 29414;

DELETE FROM creature_text WHERE entry IN (566661, 54567, 54856);
INSERT INTO creature_text (entry, groupid, id, text, type, language, probability, emote, duration, sound, comment) VALUES
(56661, 0, 0, 'Meet me up in the cave if you would, friend.', 12, 0, 100, 1, 0, 27397, ''),

(54567, 0, 0, 'Keep those creatures at bay while I meditate. We''ll soon have the answers we seek.', 12, 0, 100, 1, 0, 27398, ''),
(54567, 1, 0, 'And so our path lays before us. Speak to Master Shang Xi, he will tell you what comes next.', 12, 0, 100, 1, 0, 27399, ''),

(54856, 0, 0, '%s\'s voice echoes, \"The way of the Tushui... enlightenment through patience and mediation... the principled life\"', 16, 0, 100, 1, 0, 0, ''),
(54856, 1, 0, '%s\'s voice echoes, \"It is good to see you again, Aysa. You''ve come with respect, and so I shall give you the answers you seek.\"', 16, 0, 100, 1, 0, 0, ''),
(54856, 2, 0, '%s\'s voice echoes, \"Huo, the spirit of fire, is known for his hunger. He wants for tinder to eat. He needs the caress of the wind to rouse him.\"', 16, 0, 100, 1, 0, 0, ''),
(54856, 3, 0, '%s\'s voice echoes, \"If you find these things and bring them back to his cave, on the far side of Wu-Song Village, you will face a challenge within.\"', 16, 0, 100, 1, 0, 0, ''),
(54856, 4, 0, '%s\'s voice echoes, \"Overcome that challenge, and you shall be graced by Huo''s presence. Rekindle his flame, and if your spirit is pure, he shall follow you.\"', 16, 0, 100, 1, 0, 0, ''),
(54856, 5, 0, '%s\'s voice echoes, \"Go, child. We shall meet again very soon.', 16, 0, 100, 1, 0, 0, ''),
(54856, 6, 0, '%s fades away.', 16, 0, 100, 0, 0, 0, '');