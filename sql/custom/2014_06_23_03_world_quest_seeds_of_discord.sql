-- [SQL] Quests - Seeds of Discord fixed (feedback #1691)
UPDATE `creature_template` SET `minlevel` = 81, `maxlevel` = 81, `exp` = 3, `mindmg` = 436, `maxdmg` = 654, `attackpower` = 163, `baseattacktime` = 2000, `WDBVerified` = 15595 WHERE `entry` = 40489;
DELETE FROM `gameobject_template` WHERE `entry` = 301052;
DELETE FROM `gameobject` WHERE `id` IN (203091, 301052);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(178905, 203091, 1, 1, 1, 4834.76, -4217.13, 894.153, -2.28638, 0, 0, -0.909961, 0.414694, 60, 255, 1);