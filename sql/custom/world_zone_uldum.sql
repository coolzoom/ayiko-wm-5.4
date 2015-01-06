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

-- Smoke in Their Eyes
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='13') AND (`SourceGroup`='3') AND (`SourceEntry`='88646');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES ('13', '3', '88646', '0', '0', '31', '0', '5', '206684', '0', '0', '0', '0', '', 'Burn Hay');

-- Escape From the Lost City
UPDATE `creature_template` SET `ScriptName`='npc_prince_nadun_lost_city' WHERE (`entry`='46872');

-- Impending Retribution
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN('47715', '46603', '47930');
UPDATE `creature_template` SET `gossip_menu_id`='12356' WHERE (`entry`='46603');

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN('12358', '12356', '12361');
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
('12356', '0', '0', 'King Phaoris sent me to ask you about Neferset activity', '1', '1', '12357', '0', '0', '0', ''),
('12358', '0', '0', 'I might be able to help. Were the Neferset behind this?', '1', '1', '12359', '0', '0', '0', ''),
('12361', '0', '0', 'The king wishes to be informed about recent Neferset activity.', '1', '1', '12360', '0', '0', '0', '');

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` IN('47715', '46603', '47930');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
('46603', '0', '62', '12356', '33', '47932', '7', 'Raufen - On Gossip Select - Give KC'),
('47715', '0', '62', '12358', '33', '47933', '7', 'Raufen - On Gossip Select - Give KC'),
('47930', '0', '62', '12361', '33', '47936', '7', 'Raufen - On Gossip Select - Give KC');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND `SourceGroup` IN('12358', '12356', '12361');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `Comment`) VALUES
('15', '12358', '9', '28134', 'Raufen - Show gossip menu with quest'),
('15', '12356', '9', '28134', 'Raufen - Show gossip menu with quest'),
('15', '12361', '9', '28134', 'Raufen - Show gossip menu with quest');

-- Under the Choking Sands
UPDATE `quest_template` SET `Method`='2' WHERE (`Id`='27519');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='18') AND (`SourceGroup`='45715') AND (`SourceEntry`='85372');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `Comment`) VALUES ('18', '45715', '85372', '9', '27519', 'Raufen - require quest for spellclick');

UPDATE `smart_scripts` SET `event_type`='8', `event_param1`='85372' WHERE (`entryorguid`='45715') AND (`source_type`='0') AND (`id`='0') AND (`link`='1');

-- Return to the Lost City
UPDATE `quest_template` SET `PrevQuestId`='28520' WHERE (`Id`='28870');

-- The High Commander's Vote
-- The Vizier's Vote
UPDATE `quest_template` SET `PrevQuestId`='27628' WHERE (`Id`='27631');
UPDATE `quest_template` SET `PrevQuestId`='27628' WHERE (`Id`='27629');
DELETE FROM `creature_template_aura` WHERE (`entry`='47959') AND (`aura`='49414');

-- Venomblood Antidote
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='17') AND (`SourceGroup`='0') AND (`SourceEntry`='88882');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('17', '0', '88882', '0', '0', '31', '1', '3', '45859', '0', '0', '0', '0', '', 'Draining Venom - target Venomblood Scorpid'),
('17', '0', '88882', '0', '0', '36', '1', '0', '0', '0', '1', '0', '0', '', 'Drain Venom - target corpse');

-- Ploughshares to Swords
DELETE FROM `smart_scripts` WHERE `entryorguid` = '46333' AND `source_type` = '0';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('46333', '0', '0', '1', '64', '0', '100', '0', '0', '0', '0', '0', '33', '46333', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Nepenthe-Ramkahen Laborer - On gossip hello credit for quest 28201'),
('46333', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '41', '500', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Nepenthe-Ramkahen Laborer - Despawn'),
('46333', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Link (Gossip) - Talk');

DELETE FROM `creature_text` WHERE `entry` = '46333';
INSERT INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`, `comment`) VALUES
('46333', '0', 'I heard of what you did in Orsis. I will be honored to fight along your side.', '12', '100', 'Raufen - On Gossip - Talk'),
('46333', '1', 'I will defend Ramkahen with my bare hands if I have to!', '12', '100', 'Raufen - On Gossip - Talk'),
('46333', '2', 'If the rumors about you are true, stranger, I will gladly join you in the fight against the Neferset!', '12', '100', 'Raufen - On Gossip - Talk'),
('46333', '3', 'It\'s about time we started doing something.', '12', '100', 'Raufen - On Gossip - Talk'),
('46333', '4', 'We will defend our lands!', '12', '100', 'Raufen - On Gossip - Talk'),
('46333', '5', 'The $R that rescued Prince Nadun is the only worgen that I\'ll ever take orders from.', '12', '100', 'Raufen - On Gossip - Talk');

-- Salhet for Salhet's Secret
DELETE FROM `creature` WHERE `id` = '48022';
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES ('5039', '48022', '1', '1', '-10357.5', '-817.342', '131.607', '4.496');

-- Take it to 'Em!
UPDATE `creature_template` SET `ScriptName`='npc_harrison_jones_uldum' WHERE (`entry`='44860');
-- Premature Explosionation
UPDATE `gameobject_template` SET `ScriptName`='go_powder_keg' WHERE (`entry`='205394');

-- On to Something
UPDATE `creature_template` SET `ScriptName`='npc_harrison_jones_obelisk' WHERE (`entry`='45180');

UPDATE `creature_template` SET `speed_run`='0.90', `ScriptName`='npc_harrison_jones_on_to_something' WHERE (`entry`='45238');
DELETE FROM `creature_text` WHERE `entry` = '45238';
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `comment`) VALUES
('45238', '0', 'Let\'s go, $N. Stay close.', '12', '100', 'Raufen - Harrison Jones talk'),
('45238', '1', 'Stay alert, now. There\'s no telling what we might run into down here...', '12', '100', 'Raufen - Harrison Jones talk'),
('45238', '2', 'Watch your step!', '12', '100', 'Raufen - Harrison Jones talk');

-- The Thrill of Discovery
DELETE FROM `areatrigger_scripts` WHERE `entry` IN('6284', '6288', '6289');
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
('6284', 'at_chambers_of_the_star'),
('6288', 'at_chambers_of_the_star'),
('6289', 'at_chambers_of_the_star');

-- Lessons From the Past
UPDATE `creature_template` SET `ScriptName`='npc_schnottz_scout' WHERE (`entry`='45874');
