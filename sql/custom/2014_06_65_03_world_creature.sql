UPDATE creature SET spawndist = 10 WHERE id = 31099; -- Patchwerk
UPDATE spell_area SET quest_end_status = 64 WHERE spell = 58361 AND area = 4281; -- The Might of Mograine - Battle for ebon hold

DELETE FROM gameobject WHERE id = 192786 AND guid = 173899; -- Portal to Shattrath
DELETE FROM gameobject WHERE id IN (193053, 193052);
INSERT INTO gameobject (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(193053, 0, 1, 256, 2324.41, -5659.86, 382.241, 0.645772, 0, 0, 0, 0, 300, 0, 1), -- Portal to Stormwind
(193052, 0, 1, 256, 2348.38, -5696.09, 382.241, 0.830182, 0, 0, 0.403273, 0.91508, 300, 0, 1); -- Portal to Orgrimmar

-- An end to all things - autocomplete
UPDATE quest_template SET Method = 0 WHERE id = 12779;