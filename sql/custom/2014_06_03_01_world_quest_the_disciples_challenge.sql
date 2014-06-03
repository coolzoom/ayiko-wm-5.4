-- [SQL] [Ed's report] Quests - The Disciple's Challenge: Jaomin Ro duplicate spawn removed
DELETE FROM `creature` WHERE `id` = 54611;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`) VALUES
(940662, 54611, 860, 5736, 5843, 1, 1, 39755, 0, 1380.61, 3168.98, 137.107, 1.48353, 120, 0, 0, 497, 0, 0, 0, 0, 0, 0, 0);