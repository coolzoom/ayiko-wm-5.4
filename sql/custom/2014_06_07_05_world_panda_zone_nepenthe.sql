-- [SQL] Quests - A New Fate fixed, it's now possible to change sides (fixes #217)
UPDATE `creature_template` SET `ScriptName` = 'npc_shang_xi_choose_faction' WHERE `entry` = 56013;
DELETE FROM `creature` WHERE `id` IN (60570, 60566, 60567);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES
(5014528, 60570, 1, 1, 1, 0, 0, 1357.43, -4367.95, 26.2592, 0.103465, 300, 0, 0, 396, 0, 0, 0, 0, 2048, 0),
(942035, 60566, 860, 1, 1, 41667, 0, -9061.31, 433.76, 93.0568, 0.648932, 600, 0, 0, 396, 0, 0, 3, 0, 0, 0),
(5014527, 60566, 0, 1, 1, 0, 0, -9120.77, 393.304, 91.9913, 0.60325, 300, 0, 0, 396, 0, 0, 0, 0, 2048, 0),
(5015055, 60567, 0, 1, 1, 0, 0, -9122.39, 394.996, 92.0043, 0.797986, 300, 0, 0, 396, 0, 0, 0, 0, 0, 0);