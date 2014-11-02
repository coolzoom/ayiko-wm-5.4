-- [SQL] Jewelcrafting - Prospecting loot redone (#Feedback 8296)
DELETE FROM `prospecting_loot_template`;
INSERT INTO `prospecting_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2770, 1210, 10, 1, 0, 1, 1),
(2770, 774, 0, 1, 1, 1, 1),
(2770, 818, 0, 1, 1, 1, 1),
(2771, 1206, 0, 1, 1, 1, 2),
(2771, 1210, 0, 1, 1, 1, 2),
(2771, 1705, 0, 1, 1, 1, 2),
(2771, 1529, 3, 1, 2, 1, 1),
(2771, 3864, 3, 1, 2, 1, 1),
(2771, 7909, 3, 1, 2, 1, 1),
(2772, 1529, 0, 1, 1, 1, 2),
(2772, 1705, 0, 1, 1, 1, 2),
(2772, 3864, 0, 1, 1, 1, 2),
(2772, 7909, 5, 1, 2, 1, 1),
(2772, 7910, 5, 1, 2, 1, 1),
(3858, 3864, 0, 1, 1, 1, 2),
(3858, 7909, 0, 1, 1, 1, 2),
(3858, 7910, 0, 1, 1, 1, 2),
(3858, 12361, 3, 1, 2, 1, 1),
(3858, 12364, 3, 1, 2, 1, 1),
(3858, 12799, 3, 1, 2, 1, 1),
(3858, 12800, 3, 1, 2, 1, 1),
(10620, 7910, 15, 1, 1, 1, 2),
(10620, 12361, 0, 1, 1, 1, 2),
(10620, 12364, 0, 1, 1, 1, 2),
(10620, 12799, 0, 1, 1, 1, 2),
(10620, 12800, 0, 1, 1, 1, 2),
(23424, 21929, 0, 1, 1, 1, 2),
(23424, 23077, 0, 1, 1, 1, 2),
(23424, 23079, 0, 1, 1, 1, 2),
(23424, 23107, 0, 1, 1, 1, 2),
(23424, 23112, 0, 1, 1, 1, 2),
(23424, 23117, 0, 1, 1, 1, 2),
(23424, 23436, 2, 1, 2, 1, 1),
(23424, 23437, 2, 1, 2, 1, 1),
(23424, 23438, 2, 1, 2, 1, 1),
(23424, 23439, 2, 1, 2, 1, 1),
(23424, 23440, 2, 1, 2, 1, 1),
(23424, 23441, 2, 1, 2, 1, 1),
(23425, 24243, 100, 1, 0, 1, 1),
(23425, 21929, 0, 1, 1, 1, 2),
(23425, 23077, 0, 1, 1, 1, 2),
(23425, 23079, 0, 1, 1, 1, 2),
(23425, 23107, 0, 1, 1, 1, 2),
(23425, 23112, 0, 1, 1, 1, 2),
(23425, 23117, 0, 1, 1, 1, 2),
(23425, 23436, 4, 1, 2, 1, 1),
(23425, 23437, 4, 1, 2, 1, 1),
(23425, 23438, 4, 1, 2, 1, 1),
(23425, 23439, 4, 1, 2, 1, 1),
(23425, 23440, 4, 1, 2, 1, 1),
(23425, 23441, 4, 1, 2, 1, 1),
(36909, 36917, 0, 1, 1, 1, 2),
(36909, 36920, 0, 1, 1, 1, 2),
(36909, 36923, 0, 1, 1, 1, 2),
(36909, 36926, 0, 1, 1, 1, 2),
(36909, 36929, 0, 1, 1, 1, 2),
(36909, 36932, 0, 1, 1, 1, 2),
(36909, 36918, 2, 1, 2, 1, 1),
(36909, 36921, 2, 1, 2, 1, 1),
(36909, 36924, 2, 1, 2, 1, 1),
(36909, 36927, 2, 1, 2, 1, 1),
(36909, 36930, 2, 1, 2, 1, 1),
(36909, 36933, 2, 1, 2, 1, 1),
(36910, 46849, 20, 1, 0, 1, 1),
(36910, 36917, 0, 1, 1, 1, 2),
(36910, 36920, 0, 1, 1, 1, 2),
(36910, 36923, 0, 1, 1, 1, 2),
(36910, 36926, 0, 1, 1, 1, 2),
(36910, 36929, 0, 1, 1, 1, 2),
(36910, 36932, 0, 1, 1, 1, 2),
(36910, 36918, 4, 1, 2, 1, 2),
(36910, 36921, 4, 1, 2, 1, 2),
(36910, 36924, 4, 1, 2, 1, 2),
(36910, 36927, 4, 1, 2, 1, 2),
(36910, 36930, 4, 1, 2, 1, 2),
(36910, 36933, 4, 1, 2, 1, 2),
(36910, 36919, 5, 1, 3, 1, 2),
(36910, 36922, 5, 1, 3, 1, 2),
(36910, 36925, 5, 1, 3, 1, 2),
(36910, 36928, 5, 1, 3, 1, 2),
(36910, 36931, 5, 1, 3, 1, 2),
(36910, 36934, 5, 1, 3, 1, 2),
(36912, 36917, 0, 1, 1, 1, 2),
(36912, 36920, 0, 1, 1, 1, 2),
(36912, 36923, 0, 1, 1, 1, 2),
(36912, 36926, 0, 1, 1, 1, 2),
(36912, 36929, 0, 1, 1, 1, 2),
(36912, 36932, 0, 1, 1, 1, 2),
(36912, 36918, 4, 1, 2, 1, 2),
(36912, 36921, 4, 1, 2, 1, 2),
(36912, 36924, 4, 1, 2, 1, 2),
(36912, 36927, 4, 1, 2, 1, 2),
(36912, 36930, 4, 1, 2, 1, 2),
(36912, 36933, 4, 1, 2, 1, 2),
(52183, 52327, 100, 1, 0, 1, 3),
(52183, 52177, 0, 1, 1, 1, 1),
(52183, 52178, 0, 1, 1, 1, 1),
(52183, 52179, 0, 1, 1, 1, 1),
(52183, 52180, 0, 1, 1, 1, 1),
(52183, 52181, 0, 1, 1, 1, 1),
(52183, 52182, 0, 1, 1, 1, 1),
(52183, 52190, 4, 1, 2, 1, 2),
(52183, 52191, 4, 1, 2, 1, 2),
(52183, 52192, 4, 1, 2, 1, 2),
(52183, 52193, 4, 1, 2, 1, 2),
(52183, 52194, 4, 1, 2, 1, 2),
(52183, 52195, 4, 1, 2, 1, 2),
(52185, 52177, 0, 1, 1, 1, 2),
(52185, 52178, 0, 1, 1, 1, 2),
(52185, 52179, 0, 1, 1, 1, 2),
(52185, 52180, 0, 1, 1, 1, 2),
(52185, 52181, 0, 1, 1, 1, 2),
(52185, 52182, 0, 1, 1, 1, 2),
(52185, 52190, 4, 1, 2, 1, 2),
(52185, 52191, 4, 1, 2, 1, 2),
(52185, 52192, 4, 1, 2, 1, 2),
(52185, 52193, 4, 1, 2, 1, 2),
(52185, 52194, 4, 1, 2, 1, 2),
(52185, 52195, 4, 1, 2, 1, 2),
(53038, 52177, 0, 1, 1, 1, 2),
(53038, 52178, 0, 1, 1, 1, 2),
(53038, 52179, 0, 1, 1, 1, 2),
(53038, 52180, 0, 1, 1, 1, 2),
(53038, 52181, 0, 1, 1, 1, 2),
(53038, 52182, 0, 1, 1, 1, 2),
(53038, 52190, 2, 1, 2, 1, 1),
(53038, 52191, 2, 1, 2, 1, 1),
(53038, 52192, 2, 1, 2, 1, 1),
(53038, 52193, 2, 1, 2, 1, 1),
(53038, 52194, 2, 1, 2, 1, 1),
(53038, 52195, 2, 1, 2, 1, 1),
(72092, 90407, 100, 1, 0, 1, 2),
(72092, 76130, 0, 1, 1, 1, 2),
(72092, 76133, 0, 1, 1, 1, 2),
(72092, 76134, 0, 1, 1, 1, 2),
(72092, 76135, 0, 1, 1, 1, 2),
(72092, 76136, 0, 1, 1, 1, 2),
(72092, 76137, 0, 1, 1, 1, 2),
(72092, 76131, 5, 1, 2, 1, 2),
(72092, 76138, 5, 1, 2, 1, 2),
(72092, 76139, 5, 1, 2, 1, 2),
(72092, 76140, 5, 1, 2, 1, 2),
(72092, 76141, 5, 1, 2, 1, 2),
(72092, 76142, 5, 1, 2, 1, 2),
(72093, 90407, 100, 1, 0, 1, 2),
(72093, 76130, 0, 1, 1, 1, 2),
(72093, 76133, 0, 1, 1, 1, 2),
(72093, 76134, 0, 1, 1, 1, 2),
(72093, 76135, 0, 1, 1, 1, 2),
(72093, 76136, 0, 1, 1, 1, 2),
(72093, 76137, 0, 1, 1, 1, 2),
(72093, 76131, 5, 1, 2, 1, 2),
(72093, 76138, 5, 1, 2, 1, 2),
(72093, 76139, 5, 1, 2, 1, 2),
(72093, 76140, 5, 1, 2, 1, 2),
(72093, 76141, 5, 1, 2, 1, 2),
(72093, 76142, 5, 1, 2, 1, 2),
(72094, 90407, 100, 1, 0, 1, 2),
(72094, 76130, 0, 1, 1, 1, 1),
(72094, 76133, 0, 1, 1, 1, 1),
(72094, 76134, 0, 1, 1, 1, 1),
(72094, 76135, 0, 1, 1, 1, 1),
(72094, 76136, 0, 1, 1, 1, 1),
(72094, 76137, 0, 1, 1, 1, 1),
(72094, 76131, 0, 1, 2, 1, 3),
(72094, 76138, 0, 1, 2, 1, 3),
(72094, 76139, 0, 1, 2, 1, 3),
(72094, 76140, 0, 1, 2, 1, 3),
(72094, 76141, 0, 1, 2, 1, 3),
(72094, 76142, 0, 1, 2, 1, 3),
(72103, 90407, 100, 1, 0, 1, 2),
(72103, 76130, 0, 1, 1, 1, 1),
(72103, 76133, 0, 1, 1, 1, 1),
(72103, 76134, 0, 1, 1, 1, 1),
(72103, 76135, 0, 1, 1, 1, 1),
(72103, 76136, 0, 1, 1, 1, 1),
(72103, 76137, 0, 1, 1, 1, 1),
(72103, 76131, 0, 1, 2, 1, 3),
(72103, 76138, 0, 1, 2, 1, 3),
(72103, 76139, 0, 1, 2, 1, 3),
(72103, 76140, 0, 1, 2, 1, 3),
(72103, 76141, 0, 1, 2, 1, 3),
(72103, 76142, 0, 1, 2, 1, 3);