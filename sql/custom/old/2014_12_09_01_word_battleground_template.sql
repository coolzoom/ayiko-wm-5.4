-- [SQL] [Internal] Battleground template redone for mop
DELETE FROM `battleground_template`;
INSERT INTO `battleground_template` (`id`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `AllianceStartO`, `HordeStartLoc`, `HordeStartO`, `StartMaxDist`, `Weight`, `holiday`, `ScriptName`, `Comment`) VALUES
(1, 20, 40, 45, 90, 611, 3.6, 610, 1.24, 95, 1, 283, "", "Alterac Valley"),
(2, 5, 10, 10, 90, 769, 3.14159, 770, 0, 45, 2, 284, "", "Warsong Gulch"),
(3, 8, 15, 10, 90, 890, 3.40156, 889, 0.263892, 75, 2, 285, "", "Arathi Basin"),
(4, 1, 5, 10, 90, 929, 5.21, 936, 2.06, 15, 1, 0, "", "Nagrand Arena"),
(5, 1, 5, 10, 90, 939, 4, 940, 0.903205, 15, 1, 0, "", "Blades's Edge Arena"),
(6, 1, 5, 10, 90, 0, 0, 0, 0, 0, 1, 0, "", "All Arena"),
(7, 8, 15, 35, 90, 1103, 3.40156, 1104, 0.263892, 30, 2, 353, "", "Eye of The Storm"),
(8, 1, 5, 10, 90, 1258, 4.83, 1259, 1.7, 15, 1, 0, "", "Ruins of Lordaeron"),
(9, 8, 15, 65, 90, 1367, 0, 1368, 0, 75, 2, 400, "", "Strand of the Ancients"),
(10, 1, 5, 10, 90, 1362, 0, 1363, 3.14, 15, 1, 0, "", "Dalaran Sewers"),
(11, 1, 5, 10, 90, 1364, 4.72, 1365, 1.6, 15, 1, 0, "", "The Ring of Valor"),
(30, 20, 40, 75, 90, 1485, 0, 1486, 3.14159, 160, 2, 420, "", "Isle of Conquest"),
(32, 5, 40, 20, 90, 0, 0, 0, 0, 0, 1, 0, "", "Random Battleground"),
(100, 10, 10, 90, 90, 0, 0, 0, 0, 0, 1, 0, "", "Rated Battleground 10 VS 10"),
(108, 5, 10, 85, 90, 1726, 2.61799, 1727, 0, 75, 2, 436, "", "Twin Peaks"),
(120, 5, 10, 85, 90, 1740, 5.93412, 1739, 3.06305, 75, 2, 435, "", "The Battle for Gilneas"),
(699, 5, 10, 90, 90, 4059, 0, 4060, 0, 20, 2, 489, "", "Temple of Kotmogu"),
(708, 5, 10, 90, 90, 4062, 0, 4061, 0, 0, 2, 488, "", "Silvershard Mines"),
(719, 1, 5, 90, 90, 4136, 0, 4137, 0, 0, 1, 0, "", "Tol'Viron Arena"),
(754, 8, 15, 90, 90, 4486, 0, 4487, 0, 0, 2, 515, "", "Deepwind Gorge"),
(757, 1, 5, 90, 90, 4534, 0, 4535, 0, 0, 1, 0, "", "The Tiger's Peak");