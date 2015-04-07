-- Throne of Thunder
DELETE FROM `lfr_loot_binds` WHERE id IN(7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25);
INSERT INTO `lfr_loot_binds` (`id`, `type`, `entry`, `linkGroup`) VALUES
    -- Last Stand of the Zandalari
    (7,  3, 69134, 2),
    (8,  3, 69078, 2),
    (9,  3, 69131, 2),
    (10, 3, 69132, 2),
    (11, 3, 68476, 0),
    (12, 3, 69465, 0),
    
    -- Forgotten Depths
    (13, 3, 67977, 0),
    (14, 3, 70212, 3),
    (15, 3, 70235, 3),
    (16, 3, 70247, 3),
    (17, 3, 69712, 0),
    
    -- Halls of Flesh-Shaping
    (18, 3, 68036, 0),
    (19, 3, 69017, 0),
    (20, 3, 69427, 0),
    
    -- Pinnacle of Storms
    (21, 3, 68078, 0),
    (22, 3, 68905, 4),
    (23, 3, 68904, 4),
    (24, 3, 68397, 0),
    (25, 3, 69473, 0);
