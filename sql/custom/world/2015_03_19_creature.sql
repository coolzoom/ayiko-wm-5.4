UPDATE `creature` SET spawnMask=1 WHERE id=6491 AND map=1064;

DELETE FROM `creature` WHERE id=50062;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `unit_flags2`, `dynamicflags`, `isActive`, `protec_anti_doublet`) VALUES 
('50062', '646', '1', '1', '0', '0', '317.643', '758.986', '261.016', '0.355575', '28800', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', NULL);
