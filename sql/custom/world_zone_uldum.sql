-- Easy Money
UPDATE `creature_template` SET  `npcflag`='1', `ScriptName`='npc_lady_hump_tanaris' WHERE (`entry`='46517');
UPDATE `creature_template` SET `ScriptName`='npc_adarrah_easy_money' WHERE (`entry`='46873');
DELETE FROM `quest_start_scripts` WHERE (`id`='27003') AND (`delay`='10') AND (`command`='8') AND (`datalong`='44833');

-- Smoke in Their Eyes
-- DELETE FROM `quest_template_addon` WHERE `Id` = '27923';
-- INSERT INTO `quest_template_addon` (`Id`, `RequiredNpcOrGo1`, `RequiredNpcOrGoCount1`, `Comment`) VALUES ('27923', '-206684', '5', 'Smoke in Their Eyes');

-- Traitors!
UPDATE `creature_template` SET `VehicleId`='1267' WHERE (`entry`='47473');

-- Camera Trigger
DELETE FROM `creature` WHERE `id` = '47473';
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `AreaID`) VALUES ('5032', '47473', '1', '1', '1', '0', '0', '-10962.554', '-1378.438', '35.528', '5.437', '300', '0', '0', '42', '0', '0', '0', '0', '0', '0');
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35', `unit_flags`='0', `flags_extra`='0', `ScriptName`='npc_uldum_camera_traitors_q' WHERE (`entry`='47473');

-- Neferset Frond gameobject
DELETE FROM `gameobject` WHERE `id` = '206579';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `AreaID`) VALUES ('28800', '206579', '1', '1', '1', '-10965.3', '-1381.42', '35.5283', '0', '0', '0', '0.737277', '0.675591', '300', '255', '1', '0');
UPDATE `gameobject_template` SET `data2`='0', `ScriptName`='go_neferset_frond' WHERE (`entry`='206579');
DELETE FROM `event_scripts` WHERE (`id`='206579') AND (`delay`='1') AND (`command`='8') AND (`datalong`='47466');

-- Siamat
DELETE FROM `creature` WHERE `id` IN('47285', '47451');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `AreaID`) VALUES ('5033', '47451', '1', '1', '1', '0', '0', '-10948.484', '-1400.069', '35.49', '3.856', '300', '0', '0', '820', '420', '0', '0', '0', '0', '0');

UPDATE `creature_template` SET `unit_flags`='295360', `flags_extra`='2' WHERE (`entry`='47451');

DELETE FROM `creature_text` WHERE `entry` = '47451';
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `comment`) VALUES
('47451', '0', 'You\'re the last of your tribe with any sense left. As a reward for giving us Prince Nadun, I grant you the gift that is your birthright and more!', '12', '100', 'Raufen - Traitors quest'),
('47451', '1', 'Your makers failed you... your flawed race succumbed to the curse of flesh! Lord Deathwing\'s gift makes you perfect again!', '12', '100', 'Raufen - Traitors quest');
