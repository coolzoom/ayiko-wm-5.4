UPDATE `creature_template` SET `ScriptName`='npc_jojo_ironbrow' WHERE (`entry`='55940');
UPDATE `creature_template` SET `faction_A`='16', `faction_H`='16', `ScriptName`='boss_vordraka' WHERE (`entry`='56009');
DELETE FROM `creature` WHERE `id` = '56009';
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `dynamicflags`) VALUES (943197, 56009, 860, 1, 65535, 0, 0, 259.592, 3938.63, 68.4739, 1.99203, 300, 0, 0, 12, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_text` WHERE `entry` = '56416';
INSERT INTO `creature_text` (`entry`, `text`, `type`, `probability`, `comment`) VALUES ('56416', 'It\'s calling allies! I\'ll keep him busy while you handle them.', '12', '100', 'Raufen - Vordraka encounter');
