DELETE FROM `creature` WHERE id=60491;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `unit_flags2`, `dynamicflags`, `isActive`, `protec_anti_doublet`) VALUES 
('929499', '60491', '870', '5841', '6415', '1', '1', '0', '0', '2008.11', '1212.22', '487.582', '0.693056', '86400', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
('8773022', '60491', '870', '5841', '0', '1', '1', '0', '0', '2924.01', '1476', '648.314', '3.58546', '83737', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
('8773023', '60491', '870', '5841', '0', '1', '1', '0', '0', '2361.8', '595.601', '494.394', '0.89169', '87361', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
('8773024', '60491', '870', '5841', '0', '1', '1', '0', '0', '2851.09', '583.531', '535.787', '1.32576', '79803', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
('8773025', '60491', '870', '5841', '0', '1', '1', '0', '0', '2748.07', '1704.05', '649.172', '6.0525', '86400', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', NULL),
('8773026', '60491', '870', '5841', '0', '1', '1', '0', '0', '1963.94', '1635.51', '482.144', '5.93705', '95231', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', NULL);

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('929499', '14500', '0', 'Sha of anger 1'),
('8773022', '14500', '0', 'Sha of anger 2'),
('8773023', '14500', '0', 'Sha of anger 3'),
('8773024', '14500', '0', 'Sha of anger 4'),
('8773025', '14500', '0', 'Sha of anger 5'),
('8773026', '14500', '0', 'Sha of anger 6'),
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
('14500', '1', 'Sha of anger Pool');
