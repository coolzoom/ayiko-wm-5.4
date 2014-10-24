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

-- [SQL] [Ramires' report] Quests - Still Good!: Quest objects will now sparkle when on quest
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` IN (209639, 209641, 209642);
UPDATE `gameobject_template` SET `castBarCaption` = 'Recovering', `flags` = 4, `data1` = 209639 WHERE `entry` = 209640;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 209639;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(209639, 74295, -100, 1, 0, 1, 1);

-- [SQL] [Kysio's report] Npcs - Deviate Viper will no longer be mistakenly spawned by Supervisor Fizsprocket (fixes #788)
DELETE FROM `creature` WHERE `guid` = 158447 AND `id` = 3051;
UPDATE `smart_scripts` SET `action_param1` = 79733 WHERE `entryorguid` = 3051 AND `source_type` = 0 AND `id` = 0;

-- [SQL] [Blue's report] Npcs - Master Li Fei quest giver version should never be attackable (fixes #984)
UPDATE `creature_template` SET `KillCredit2` = 0, `faction_A` = 35, `faction_H` = 35, `unit_flags` = 33536 WHERE `entry` = 54135;

-- [SQL] Quests - Only The Worthy Shall Pass: Master Li Fei will now respawn faster (fixes #1399)
UPDATE `creature` SET `spawntimesecs` = 30 WHERE `id` = 54734;

-- [SQL] Npcs - Added all Spirit Healers for Wandering Isle (fixes #534)
UPDATE `creature_template` SET `npcflag` = 16384 WHERE `entry` IN (72676, 65183);
DELETE FROM `creature` WHERE `id` = 6491 AND `map` = 860;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`,`dynamicflags`) VALUES
(941440, 6491, 860, 1, 65536, 5233, 0, 945.076, 4067.9, 199.638, 2.25147, 120, 0, 0, 8240, 0, 0, 0, 0, 0),
(941532, 6491, 860, 1, 65536, 5233, 0, 903.941, 4335.09, 243.798, 2.1293, 120, 0, 0, 8240, 0, 0, 0, 0, 0),
(941735, 6491, 860, 1, 65536, 5233, 0, 407.503, 3565.25, 78.078, 4.46804, 120, 0, 0, 8240, 0, 0, 0, 0, 0),
(5035373, 6491, 860, 1, 65536, 5233, 0, 1236.16, 3560.25, 102.572, 4.72354, 120, 0, 0, 8240, 0, 0, 0, 0, 0),
(5036607, 6491, 860, 1, 65536, 5233, 0, 648.916, 3041.11, 77.3114, 3.0282, 120, 0, 0, 8240, 0, 0, 0, 0, 0),
(7343920, 6491, 860, 1, 65535, 5233, 0, 1068.58, 3267.88, 129.841, 2.93034, 120, 0, 0, 8240, 0, 0, 0, 0, 0),
(941532, 6491, 860, 1, 65535, 5233, 0, 903.941, 4335.09, 243.798, 2.1293, 120, 0, 0, 8240, 0, 0, 0, 0, 0);
INSERT IGNORE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES
(4143, 5834, 0),
(3295, 5825, 0),
(3295, 5843, 0),
(3295, 5848, 0),
(3295, 5846, 0),
(3295, 5835, 0),
(3295, 5847, 0),
(3295, 5820, 0),
(3297, 5826, 0),
(3297, 5860, 0),
(3297, 5862, 0),
(3299, 5827, 0),
(3299, 5882, 0),
(3299, 5881, 0),
(3299, 5884, 0),
(3301, 5828, 0),
(3307, 5945, 0),
(3307, 5737, 0),
(3307, 5944, 0),
(3307, 5833, 0),
(3303, 5829, 0),
(3303, 5830, 0),
(3303, 5946, 0),
(3303, 5831, 0),
(3305, 5859, 0),
(3305, 5832, 0),
(4143, 5736, 0),
(4143, 5941, 0),
(3295, 5947, 0),
(4143, 5849, 0),
(3303, 5837, 0),
(3299, 5883, 0),
(3299, 5885, 0),
(3303, 5886, 0);

DELETE t1 FROM creature t1 JOIN creature t2 ON t1.id = t2.id WHERE t1.guid < t2.guid AND t1.id IN (SELECT entry FROM creature_template WHERE NAME LIKE '%spirit healer%') AND t1.map = t2.map AND (POW(t1.position_x - t2.position_x, 2) + POW(t1.position_y - t2.position_y, 2) + POW(t1.position_z - t2.position_z, 2) <= 25);

-- [SQL] Quests - Pandaren Quests: Joining the Alliance/Horde will now have correct race requirements (Refs #1372)
UPDATE `quest_template` SET `RequiredRaces` = 25165824 WHERE `Id` = 30987;
UPDATE `quest_template` SET `RequiredRaces` = 41943040 WHERE `Id` = 31012;

-- [SQL] Quests - The King's Command and The Art of War will always be automatically accepted (Feedback #3549)
UPDATE `quest_template` SET `SpecialFlags` = 4 WHERE `Id` IN (29547, 29611, 29612);