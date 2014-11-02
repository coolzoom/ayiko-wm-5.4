-- Murder Was The Case That They Gave Me and Feeding the Hungry and the Hopeless
UPDATE `creature_template` SET `npcflag`='1', `ScriptName`='npc_homeless_stormwind_citizen' WHERE `entry` IN('42384', '42386');

DELETE FROM `creature_text` WHERE `entry` IN ('42384', '42386');

INSERT INTO `creature_text` (`entry`, `text`, `type`, `probability`) VALUES ('42386', 'Listen, pal. I don\'t want any trouble, ok? I didn\'t see who murdered \'em, but I sure heard it! Lots of yelling. Human voices... you dig? Now get out of here before I change my mind about beating you up and takin\' your shoes.', '12', '100');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`) VALUES
('42386', '1', 'I didn\'t see who killed \'m, bub/sis, but I got a whiff. Smelled rich, kinda like you. Damn shame too. Furlbrows were a fixture around here. Nice people, always willin\' to share a meal or a patch of dirt.', '12', '100'),
('42386', '2', 'Who killed the Furlbrows? I\'ll tell you who killed the Furlbrows: KING VARIAN WRYNN. THAT\'S WHO! And he\'s killin\' the rest of us too. One bum at a time. The only thing I can tell you is that I saw some gnolls leavin\' the place a few hours before the law arrived.', '12', '100'),
('42386', '3', 'Between you, me, and the tree, murlocs killed the Furlbrows. Yep, saw \'em with my own two eyes. Think they\'d been casin\' the joint for days, maybe months. They left in a hurry once they got wind of \"Johnny Law\" and the idiot brigade over there...', '12', '100');

INSERT INTO `creature_text` (`entry`, `text`, `type`, `probability`) VALUES ('42384', 'Listen, pal. I don\'t want any trouble, ok? I didn\'t see who murdered \'em, but I sure heard it! Lots of yelling. Human voices... you dig? Now get out of here before I change my mind about beating you up and takin\' your shoes.', '12', '100');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`) VALUES
('42384', '1', 'I didn\'t see who killed \'m, bub/sis, but I got a whiff. Smelled rich, kinda like you. Damn shame too. Furlbrows were a fixture around here. Nice people, always willin\' to share a meal or a patch of dirt.', '12', '100'),
('42384', '2', 'Who killed the Furlbrows? I\'ll tell you who killed the Furlbrows: KING VARIAN WRYNN. THAT\'S WHO! And he\'s killin\' the rest of us too. One bum at a time. The only thing I can tell you is that I saw some gnolls leavin\' the place a few hours before the law arrived.', '12', '100'),
('42384', '3', 'Between you, me, and the tree, murlocs killed the Furlbrows. Yep, saw \'em with my own two eyes. Think they\'d been casin\' the joint for days, maybe months. They left in a hurry once they got wind of \"Johnny Law\" and the idiot brigade over there...', '12', '100');

UPDATE `creature_template` SET `KillCredit1`='0', `KillCredit2`='0' WHERE `entry`='IN('42383', '42384', '42385', '42386', '42390', '42391', '42400', '48840');

-- The Source of the Madness
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-26' WHERE (`entry`='939') AND (`item`='60263');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-24' WHERE (`entry`='941') AND (`item`='60263');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE (`entry`='942') AND (`item`='60263');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-22' WHERE (`entry`='978') AND (`item`='60263');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-23' WHERE (`entry`='979') AND (`item`='60263');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-53' WHERE (`entry`='43910') AND (`item`='60263');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-36' WHERE (`entry`='43911') AND (`item`='60263');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE (`entry`='43912') AND (`item`='60263');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-44' WHERE (`entry`='43913') AND (`item`='60263');

-- 'All That Skitters
UPDATE `npc_spellclick_spells` SET `cast_flags`='11' WHERE (`npc_entry`='42689') AND (`spell_id`='79591');
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '42689';
UPDATE creature_template SET AIName = '' WHERE `entry` = '42689';

-- Arcane Disturbances
DELETE FROM `gameobject` WHERE `id` = '300078';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`) VALUES
('6000051', '300078', '0', '1', '1', '-11369.6', '-2163.95', '24.3', '0', '0', '0', '0', '1', '180', '0', '1', '0'),
('6000052', '300078', '0', '1', '1', '-11170.3', '-1900.21', '-17.78', '0', '0', '0', '0', '1', '180', '0', '1', '0');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN('18161', '18162');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN('18161', '18162') AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `event_param1`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
('18161', '8', '32042', '33', '18161', '7', 'Raufen - give KC on spellhit'),
('18162', '8', '32042', '33', '18162', '7', 'Raufen - give KC on spellhit');
