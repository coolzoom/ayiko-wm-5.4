-- [SQL] General - Portal from Ghostlands to Eastern Plaguelands fixed (Fixes #5123)
DELETE FROM `areatrigger_teleport` WHERE `id` IN (4386, 4409);
INSERT INTO `areatrigger_teleport` (`id`, `name`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(4386, "Eastern Plaguelands - From Ghostlands Target", 0, 3468.42, -4479.6, 137.329, 2.18166),
(4409, "Ghostlands - From Eastern Plaguelands Target", 530, 6123.23, -7006.57, 138.508, 5.75959);