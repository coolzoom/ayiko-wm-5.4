UPDATE disables SET flags = 12 WHERE entry = 996 AND sourceType = 2;
UPDATE access_requirement SET level_min = 90 WHERE mapId = 996 AND difficulty = 7;

DELETE FROM lfg_entrances WHERE dungeonId = 526;
INSERT INTO lfg_entrances (dungeonId, name, position_x, position_y, position_z, orientation)
    VALUES (526, 'Terrace of Endless Spring', -1020.99, -3145.79, 28.3346, 1.562);