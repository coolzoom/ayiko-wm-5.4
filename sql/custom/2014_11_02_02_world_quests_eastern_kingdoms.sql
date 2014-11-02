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
