-- [SQL] Quests - A New Fate fixed, it's now possible to change sides (fixes #217)
UPDATE `creature_template` SET `ScriptName` = 'npc_shang_xi_choose_faction' WHERE `entry` = 56013;
DELETE FROM `creature` WHERE `id` IN (60570, 60566, 60567);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES
(5014528, 60570, 1, 1, 1, 0, 0, 1357.43, -4367.95, 26.2592, 0.103465, 300, 0, 0, 396, 0, 0, 0, 0, 2048, 0),
(942035, 60566, 860, 1, 1, 41667, 0, -9061.31, 433.76, 93.0568, 0.648932, 600, 0, 0, 396, 0, 0, 3, 0, 0, 0),
(5014527, 60566, 0, 1, 1, 0, 0, -9120.77, 393.304, 91.9913, 0.60325, 300, 0, 0, 396, 0, 0, 0, 0, 2048, 0),
(5015055, 60567, 0, 1, 1, 0, 0, -9122.39, 394.996, 92.0043, 0.797986, 300, 0, 0, 396, 0, 0, 0, 0, 0, 0);

-- [SQL] Quests - The Direct Solution and Do No Evil fixed (fixes #206), also 119 creatures with 1 second respawn timer corrected
UPDATE `creature` SET `spawntimesecs` = 120 WHERE `spawntimesecs` = 1 AND `map` != 369;
UPDATE `creature_template` SET `unit_flags` = 0, `dynamicflags` = 0 WHERE `entry` = 55632;
DELETE FROM `creature_template_addon` WHERE `entry` IN (55632, 55634);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (55632, 55634));

-- [SQL] [Ramires' request] Quests - Only the worthy shall pass: Firewalls phase and faction corrected so they are present and not clickable (refs# 202)
UPDATE `gameobject_template` SET `faction` = 114 WHERE `entry` = 209375;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 106275;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 106275, 0, 0, 31, 1, 3, 54734, 0, 0, 0, "", "Trigger Master Li Fei, Fight Completion");

-- [SQL] [Ramires' report] Npcs - Master Shang Xi will now sit on a bench (ref #138)
DELETE FROM `creature_addon` WHERE `guid` = 940754;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(940754, 0, 0, 0, 0, 0, '123161'); -- Cosmetic - Sit Chair High (Lower/Upper Body - High/Low Priority) (Anim Kit)

-- [SQL] [Raufen's report] Quests - Tushui and Huojin Trainee will now respawn faster
UPDATE `creature` SET `spawntimesecs` = 10 WHERE `id` IN (SELECT `entry` FROM `creature_template` WHERE `ScriptName` IN ('mob_tushui_trainee', 'mob_huojin_trainee'));

-- [SQL] [Ed's report] Quests - The Lesson of the Sandy Fist: Training Target will now respawn faster
UPDATE `creature` SET `spawntimesecs` = 10 WHERE `id` IN (53714);