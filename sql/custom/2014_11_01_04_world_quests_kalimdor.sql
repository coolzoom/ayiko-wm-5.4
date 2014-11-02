-- Challenge to the Black Flight
DELETE FROM `gameobject` WHERE `id` = '300153';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `state`) VALUES ('12009', '300153', '1', '1', '-4698.88', '-3721.16', '50.891', '3.764', '0.951929', '-0.306319', '180', '1');

-- Feed of Evil
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='17') AND (`SourceGroup`='0') AND (`SourceEntry`='69228');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='13') AND (`SourceGroup`='7') AND (`SourceEntry`='69228');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('13', '7', '69228', '0', '0', '31', '0', '3', '36727', '0', '0', '0', '0', '', 'Raufen - Feed of Evil Quest'),
('13', '7', '69228', '0', '1', '31', '0', '3', '37155', '0', '0', '0', '0', '', 'Raufen - Feed of Evil Quest'),
('13', '7', '69228', '0', '2', '31', '0', '3', '37156', '0', '0', '0', '0', '', 'Raufen - Feed of Evil Quest');

-- Mountain Giant Muisek and Forces of Nature: Mountain Giants
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='17') AND (`SourceGroup`='0') AND (`SourceEntry`='11889');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('17', '0', '11889', '0', '0', '31', '1', '3', '40026', '0', '0', '0', '0', '', 'Raufen - Require Mountain Giant'),
('17', '0', '11889', '0', '0', '36', '1', '0', '0', '0', '1', '0', '0', '', 'Raufen - Require dead');

DELETE FROM `smart_scripts` WHERE (`entryorguid`='40026') AND (`source_type`='0') AND (`link`='0') AND `id` IN('2', '3', '4');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('40026', '0', '2', '0', '8', '0', '100', '0', '80995', '0', '0', '0', '33', '43347', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Give KC'),
('40026', '0', '3', '0', '8', '0', '100', '0', '80995', '0', '0', '0', '41', '1000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Force Despawn'),
('40026', '0', '4', '0', '8', '0', '100', '0', '11889', '0', '0', '0', '41', '1000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Raufen - On Spell Hit - Force Despawn');

-- King of the Foulweald
DELETE FROM `gameobject` WHERE `id` = '300131';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `rotation3`, `spawntimesecs`, `state`) VALUES ('280464', '300131', '1', '1', '2232.68', '-1550.47', '93.21', '1', '300', '1');
DELETE FROM `creature` WHERE `id` IN('12918', '12921');
DELETE FROM `event_scripts` WHERE `id` = '6721';
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
('6721', '0', '10', '3749', '120000', '0', '2231.03', '-1543.77', '90.76', '0'),
('6721', '0', '10', '3750', '120000', '0', '2231.35', '-1544.31', '91.07', '4.89'),
('6721', '5', '10', '3743', '120000', '0', '2237.97', '-1551.94', '90.23', '0'),
('6721', '5', '10', '3750', '120000', '0', '2239.35', '-1557.46', '89.81', '0'),
('6721', '25', '10', '3749', '120000', '0', '2231.03', '-1543.77', '90.76', '0'),
('6721', '30', '10', '3743', '120000', '0', '2237.97', '-1551.94', '90.23', '0'),
('6721', '30', '10', '3750', '120000', '0', '2239.35', '-1557.46', '89.81', '0'),
('6721', '60', '10', '12918', '120000', '0', '2239.35', '-1557.46', '89.81', '0'),
('6721', '60', '10', '12921', '120000', '0', '2231.03', '-1543.77', '90.76', '0'),
('6721', '60', '10', '12921', '120000', '0', '2237.97', '-1551.94', '90.23', '0');

-- Echeyakee
DELETE FROM `gameobject` WHERE `id` = '164651';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `protect_anti_doublet`) VALUES
('280465', '164651', '1', '0', '0', '1', '1', '125', '-2541', '91.668', '0.865', '0', '0', '0.419357', '0.907821', '300', '0', '1', '0', NULL);
DELETE FROM `event_scripts` WHERE (`id`='2980') AND (`delay`='0') AND (`command`='10') AND (`datalong`='3475');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES ('2980', '0', '10', '3475', '180000', '0', '116.2', '-2559', '91.6667', '1.19');

-- Parts-is-Parts
DELETE FROM `gameobject` WHERE (`id`='201904');

DELETE FROM `smart_scripts` WHERE (`entryorguid`='37923') AND (`source_type`='0') AND `id` IN('2', '3');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `event_param1`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
('37923', '2', '3', '8', '70813', '11', '70828', '1', 'Raufen - On Spell Hit - Cast Summon Object'),
('37923', '3', '0', '61', '0', '41', '0', '1', 'Raufen - On Link - Despawn');

DELETE FROM `creature_loot_template` WHERE (`entry`='37923') AND (`item`='49945');
DELETE FROM `gameobject_loot_template` WHERE `entry` = '201904';
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('201904', '49945', '-100', '1', '0', '1', '3');

-- Competition Schmompetition
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-29' WHERE (`entry`='3282') AND (`item`='68820');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry`='3285') AND (`item`='68820');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-45' WHERE (`entry`='52356') AND (`item`='68820');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-55' WHERE (`entry`='52357') AND (`item`='68820');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE (`entry`='3284') AND (`item`='68820');

-- By Hook Or By Crook
UPDATE `creature_template` SET `KillCredit2`='0', `gossip_menu_id`='10521', `ScriptName`='npc_captured_razormane' WHERE (`entry`='34523');

DELETE FROM `creature_text` WHERE `entry` = '34523';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('34523', '0', '0', 'That all you got?', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane Talk 0'),
('34523', '0', '1', 'Unf. You learn nothing from me!', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane talk 0'),
('34523', '0', '2', 'I not scared of you!', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane talk 0'),
('34523', '0', '3', 'Unf - Not the face!', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane - Talk 0'),
('34523', '0', '4', 'I say nothing! <snort>', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane talk 0'),
('34523', '1', '0', 'Mnn, <snort> why you cook this meat? Tortusk tells us meat taste best when stolen and raw.', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane Talk 1'),
('34523', '2', '0', 'Haha - <snort> ha - heee! <snort> Haha no stop haha <SNORT> <wheeze> Hee hee! Battlemaster Tortusk never prepared us for this!', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane Talk 2'),
('34523', '3', '0', 'You waste your strength! Tortusk train us warriors never to talk.', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane Talk 0'),
('34523', '4', '0', 'Oh - I\'ve said too much!', '12', '0', '100', '0', '0', '0', 'Raufen - Captured Razormane talk 4');

-- Taking Part'
UPDATE `quest_template` SET `RequiredNpcOrGo1`='-195687' WHERE (`Id`='14311');
UPDATE `gameobject_template` SET `faction`='0', `data3`='10000' WHERE (`entry`='195687');
DELETE FROM `gameobject` WHERE `id` = '195687';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`) VALUES
('175029', '195687', '1', '1', '1', '-1084.24', '1416.61', '61.771', '0', '0', '0', '0', '1', '180', '100', '1', '0'),
('175069', '195687', '1', '1', '1', '-1063.63', '1947.84', '63.501', '0', '0', '0', '0', '1', '180', '100', '1', '0'),
('175185', '195687', '1', '1', '1', '-872.094', '1828.09', '62.011', '0', '0', '0', '0', '1', '180', '100', '1', '0'),
('175238', '195687', '1', '1', '1', '-1340.85', '1389.97', '63.953', '0', '0', '0', '0', '1', '180', '100', '1', '0'),
('175293', '195687', '1', '1', '1', '-1068.2', '1887.38', '60.228', '0', '0', '0', '0', '1', '180', '100', '1', '0'),
('175296', '195687', '1', '1', '1', '-1308.6', '1384.82', '62.755', '0', '0', '0', '0', '1', '180', '100', '1', '0'),
('175393', '195687', '1', '1', '1', '-1090.97', '1385.4', '61.983', '0', '0', '0', '0', '1', '180', '100', '1', '0'),
('175448', '195687', '1', '1', '1', '-1049.99', '1358.8', '65.772', '0', '0', '0', '0', '1', '180', '100', '1', '0'),
('175509', '195687', '1', '1', '1', '-1103.98', '1303.44', '90.582', '0', '0', '0', '0', '1', '180', '100', '1', '0');

-- Cleansing Witch Hill
DELETE FROM `gameobject` WHERE `id` = '300143';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`) VALUES ('47621', '300143', '1', '1', '1', '-2967.28', '-3871.99', '33.06', '0', '0', '0', '0', '0', '180', '0', '0', '0');
UPDATE `creature_template` SET `ScriptName`='npc_zelfrax' WHERE `entry`=23864;
DELETE FROM `creature_text` WHERE `entry` = '23864';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES ('23864', '0', '0', 'This land was mine long before your wretched kind set foot here.', '14', '0', '100', '0', '0', '0', 'zelfrax SAY_ZELFRAX1');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES ('23864', '1', '0', 'All who venture here belong to me,including you!', '14', '0', '100', '0', '0', '0', 'zelfrax SAY_ZELFRAX2');

-- Sludge Investigation
DELETE FROM `creature` WHERE (`id`='52166');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='52171');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='18') AND (`SourceGroup`='52171') AND (`SourceEntry`='96982');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `Comment`) VALUES ('18', '52171', '96982', '9', '29087', 'Raufen - Require quest for Spellclick');

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '52171';
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
('52171', '0', '1', '73', '41', '0', '1', 'Raufen - On Spellclick - Force Despawn'),
('52171', '1', '0', '61', '33', '52166', '7', 'Raufen - On Spellclick - Force Despawn');

-- Butcherbot, Scavengers Scavenged, Blisterpaw Butchery
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='17') AND (`SourceGroup`='0') AND (`SourceEntry`='74175');

DELETE FROM `creature_template_aura` WHERE (`entry`='5419') AND (`aura`='29266');
DELETE caura.* FROM creature_aura caura INNER JOIN creature c ON c.guid = caura.guid WHERE c.id = 5419;

UPDATE `creature_template` SET `ScriptName`='npc_butcherbot' WHERE (`entry`='39696');

DELETE FROM `creature_text` WHERE `entry` = '39696';
INSERT INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`, `comment`) VALUES
('39696', '0', 'Butcherbot will harvest meat, tra la la la la.', '12', '100', 'Raufen - Butcherbot Random text'),
('39696', '1', 'I want the arterieeeeeeeeees!', '12', '100', 'Raufen - Butcherbot Random text'),
('39696', '2', 'VWHHHHHRRRRRRRRRRRRRRRRHHHHHHMNNNGHHHGH', '12', '100', 'Raufen - Butcherbot Random text');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '74175';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('74175', '74176', 'Raufen - Summon Butcherbot on dummy');

-- WARNING: This removes hacky stuff being in DB making some quests doable by just killing NPC
update creature_template ct SET ct.KillCredit2 = 0 WHERE ct.KillCredit1 = 0 AND ct.KillCredit2 <> 0;

-- (13031) Coaxing the Spirits
UPDATE `creature_template` SET `gossip_menu_id`='10272' WHERE (`entry`='33001');
UPDATE `creature_template` SET `gossip_menu_id`='10277' WHERE (`entry`='33033');
UPDATE `creature_template` SET `gossip_menu_id`='10278' WHERE (`entry`='33035');
UPDATE `creature_template` SET `gossip_menu_id`='10279' WHERE (`entry`='33037');

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN('10272', '10277', '10278', '10279');
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`) VALUES
('10272', '0', '0', 'Coax Thundris Windweaver\'s spirit.', '1', '1', '0', '0', '0', '0'),
('10277', '0', '0', 'Coax the spirit out of Sentinel Elissa Starbreeze\'s corpse.', '1', '1', '0', '0', '0', '0'),
('10278', '0', '0', 'Coax Taldan\'s corpse to give up its spirit.', '1', '1', '0', '0', '0', '0'),
('10279', '0', '0', 'Coax the spirit out of Caylais Moonfeather\'s still corpse.', '1', '1', '0', '0', '0', '0');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN('33001', '33033', '33035', '33037');

DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` IN('33001', '33033', '33035', '33037');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
('33001', '0', '62', '10272', '33', '33001', '7', 'Raufen - On Gossip Select - Give KC'),
('33033', '0', '62', '10277', '33', '33033', '7', 'Raufen - On Gossip Select - Give KC'),
('33035', '0', '62', '10278', '33', '33035', '7', 'Raufen - On Gossip Select - Give KC'),
('33037', '0', '62', '10279', '33', '33037', '7', 'Raufen - On Gossip Select - Give KC'),
('33001', '1', '62', '10272', '72', '0', '7', 'Raufen - On Gossip Select - Close Gossip'),
('33033', '1', '62', '10277', '72', '0', '7', 'Raufen - On Gossip Select - Close Gossip'),
('33035', '1', '62', '10278', '72', '0', '7', 'Raufen - On Gossip Select - Close Gossip'),
('33037', '1', '62', '10279', '72', '0', '7', 'Raufen - On Gossip Select - Close Gossip');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = '15' AND `SourceGroup` IN('10272', '10277', '10278', '10279');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `Comment`) VALUES
('15', '10272', '9', '13547', 'Raufen - Show Gossip on quest'),
('15', '10277', '9', '13547', 'Raufen - Show Gossip on quest'),
('15', '10278', '9', '13547', 'Raufen - Show Gossip on quest'),('15', '10279', '9', '13547', 'Raufen - Show Gossip on quest');

-- Freezing the Pipes
SET @NPC_FREEZING_PIPES_BUNNY_1 := 47423;
SET @NPC_FREEZING_PIPES_BUNNY_2 := 47424;
SET @NPC_FREEZING_PIPES_BUNNY_3 := 47425;
SET @NPC_FREEZING_PIPES_BUNNY_4 := 47426;
SET @SPELL_CRYOCANNON := 88452;
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` BETWEEN @NPC_FREEZING_PIPES_BUNNY_1 AND @NPC_FREEZING_PIPES_BUNNY_4;
DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN @NPC_FREEZING_PIPES_BUNNY_1 AND @NPC_FREEZING_PIPES_BUNNY_4;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_FREEZING_PIPES_BUNNY_1, 0, 0, 0, 8, 0, 100, 0, @SPELL_CRYOCANNON, 0, 0, 0, 33, @NPC_FREEZING_PIPES_BUNNY_1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Freezing the Pipes Bunny 1 - On Spellhit - KC"),
(@NPC_FREEZING_PIPES_BUNNY_2, 0, 0, 0, 8, 0, 100, 0, @SPELL_CRYOCANNON, 0, 0, 0, 33, @NPC_FREEZING_PIPES_BUNNY_2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Freezing the Pipes Bunny 2 - On Spellhit - KC"),
(@NPC_FREEZING_PIPES_BUNNY_3, 0, 0, 0, 8, 0, 100, 0, @SPELL_CRYOCANNON, 0, 0, 0, 33, @NPC_FREEZING_PIPES_BUNNY_3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Freezing the Pipes Bunny 3 - On Spellhit - KC"),
(@NPC_FREEZING_PIPES_BUNNY_4, 0, 0, 0, 8, 0, 100, 0, @SPELL_CRYOCANNON, 0, 0, 0, 33, @NPC_FREEZING_PIPES_BUNNY_4, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Freezing the Pipes Bunny 4 - On Spellhit - KC");
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (13, 17) AND `SourceEntry` = @SPELL_CRYOCANNON;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('17', '0', '88452', '0', '0', '29', '0', '47423', '5', '0', '0', '0', '0', '', 'I-Scream Cryocannon can be casted near Freezing the Pipes Bunny 1'),
('17', '0', '88452', '0', '1', '29', '0', '47424', '5', '0', '0', '0', '0', '', 'I-Scream Cryocannon can be casted near Freezing the Pipes Bunny 2'),
('17', '0', '88452', '0', '2', '29', '0', '47425', '5', '0', '0', '0', '0', '', 'I-Scream Cryocannon can be casted near Freezing the Pipes Bunny 3'),
('17', '0', '88452', '0', '3', '29', '0', '47426', '5', '0', '0', '0', '0', '', 'I-Scream Cryocannon can be casted near Freezing the Pipes Bunny 4');

UPDATE `quest_template` SET `RequiredSpellCast4`='0' WHERE (`Id`='28047');

UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `id` IN(@NPC_FREEZING_PIPES_BUNNY_1, @NPC_FREEZING_PIPES_BUNNY_2, @NPC_FREEZING_PIPES_BUNNY_3, @NPC_FREEZING_PIPES_BUNNY_4);

-- Slitherblade Slaughter
DELETE FROM `creature_loot_template` WHERE `item` IN('49056', '49058', '49060');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('4711', '49056', '-100', '1', '0', '1', '1'),
('4712', '49058', '-80', '1', '0', '1', '1'),
('4713', '49060', '-60', '1', '0', '1', '1');
