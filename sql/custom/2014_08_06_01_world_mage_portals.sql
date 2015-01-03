-- [SQL] Mage - Portal Trainers redone
-- [SQL] Mage - Portal and Teleport: Vale of Eternal Blossoms fixed (Fixes #4279, #4278)
DELETE FROM `npc_trainer` WHERE `entry` IN (2485, 2489, 2492, 4165, 5957, 5958, 16654, 16755, 19340, 20791, 27703, 27705, 29156, 45139, 47253, 200200, 200201, 200202);
DELETE FROM `npc_trainer` WHERE `spell` IN (3561, 3562, 3563, 3565, 3566, 3567, 32271, 32272, 49359, 49360, 32266, 32267, 10059, 11416, 11417, 11418, 11419, 11420, 49358, 49361, 35715, 33690, 33691, 35717, 53140, 53142, 88342, 88344, 88345, 88346, 132626, 132627, 132621, 132620);
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(200200,	3561,	5100,	0,	0,	17),		-- A: Teleport: Stormwind
(200200,	3562,	5100,	0,	0,	17),		-- A: Teleport: Ironforge
(200200,	3563,	5100,	0,	0,	17),		-- H: Teleport: Undercity
(200200,	3565,	5100,	0,	0,	17),		-- A: Teleport: Darnassus
(200200,	3566,	5100,	0,	0,	17),		-- H: Teleport: Thunder Bluff
(200200,	3567,	5100,	0,	0,	17),		-- H: Teleport: Orgrimmar
(200200,	32271,	5100,	0,	0,	17),		-- A: Portal: Stormwind
(200200,	32272,	5100,	0,	0,	17),		-- A: Portal: Ironforge
(200200,	49359,	5100,	0,	0,	17),		-- H: Portal: Orgrimmar
(200200,	10059,	16500,	0,	0,	42),		-- H: Portal: Undercity
(200200,	11416,	16500,	0,	0,	42),		-- A: Portal: Darnassus
(200200,	11417,	16500,	0,	0,	42),		-- H: Portal: Thunder Bluff
(200200,	11418,	16500,	0,	0,	42),		-- A: Portal: Exodar
(200200,	11419,	16500,	0,	0,	42),		-- H: Portal: Silvermoon
(200200,	11420,	16500,	0,	0,	42),		-- A: Teleport: Exodar
(200200,	32266,	16500,	0,	0,	42),		-- H: Teleport: Silvermoon
(200200,	32267,	16500,	0,	0,	42),		-- A: Teleport: Shattrath
(200200,	49360,	16500,	0,	0,	42),		-- A: Portal: Shattrath
(200200,	49358,	22500,	0,	0,	52),		-- H: Teleport: Shattrath
(200200,	49361,	22500,	0,	0,	52),		-- H: Portal: Shattrath
(200200,	33690,	81000,	0,	0,	62),		-- H: Teleport: Stonard
(200200,	35715,	81000,	0,	0,	62),		-- A: Teleport: Theramore
(200200,	33691,	105000,	0,	0,	66),		-- A: Portal: Theramore
(200200,	35717,	105000,	0,	0,	66),		-- H: Portal: Stonard
(200200,	53140,	150000,	0,	0,	71),		-- A-H: Teleport: Dalaran
(200200,	53142,	168000,	0,	0,	74),		-- A-H: Portal: Dalaran
(200200,	88342,	282000,	0,	0,	85),		-- A: Teleport: Tol Barad
(200200,	88344,	282000,	0,	0,	85),		-- H: Teleport: Tol Barad
(200200,	88345,	282000,	0,	0,	85),		-- A: Portal: Tol Barad
(200200,	88346,	282000,	0,	0,	85),		-- H: Portal: Tol Barad
(200200,	132620,	350000,	0,	0,	90),		-- A: Portal: Vale of Eternal Blossoms
(200200,	132621,	350000,	0,	0,	90),		-- A: Teleport: Vale of Eternal Blossoms
(200200,	132626,	350000,	0,	0,	90),		-- H: Portal: Vale of Eternal Blossoms
(200200,	132627,	350000,	0,	0,	90);		-- H: Teleport: Vale of Eternal Blossoms

INSERT INTO `npc_trainer` SELECT `entry`, -200200, 0, 0, 0, 0 FROM `creature_template` WHERE `Subname` = 'Portal Trainer';
UPDATE `creature_template` SET `npcflag` = `npcflag`|48 WHERE `entry` IN (SELECT `entry` FROM `npc_trainer` WHERE `spell` = -200200);

UPDATE `gameobject_template` SET `faction` = 1802, `data0` = 132622, `data1` = 0, `data2` = 1, `data3` = 1 WHERE `entry` = 216057;  --  Alliance
UPDATE `gameobject_template` SET `faction` = 1801, `data0` = 132624, `data1` = 0, `data2` = 1, `data3` = 1 WHERE `entry` = 216058;  --  Horde
DELETE FROM `spell_target_position` WHERE `id` IN (132621, 132622, 132627, 132624, 130703, 130698);
INSERT INTO `spell_target_position` (`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(132621, 0, 870, 821.5, 253.2, 503.919, 0.719747),  --  Teleport: Vale of Eternal Blossoms Alliance
(132624, 0, 870, 821.5, 253.2, 503.919, 0.719747),  --  Portal: Vale of Eternal Blossoms Alliance
(132627, 0, 870, 1623.2, 920.8, 471.183, 3.534191),  --  Teleport: Vale of Eternal Blossoms Horde
(132622, 0, 870, 1623.2, 920.8, 471.183, 3.534191);  --  Portal: Vale of Eternal Blossoms Horde