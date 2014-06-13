DELETE FROM `quest_start_scripts` WHERE (`id`='12842');
UPDATE `quest_template` SET `StartScript`='0' WHERE (`Id`='12842');

DELETE FROM `creature` WHERE (`guid`='129452');

DELETE FROM `creature` WHERE (`guid`='921003');

-- Wrong suggested players
UPDATE quest_template SET SuggestedPlayers = 0 WHERE SuggestedPlayers > 40;

-- None Left Behind
UPDATE `quest_template` SET `Method`='2' WHERE (`Id`='29794');

DELETE FROM `creature_text` WHERE `entry` = '55999';
INSERT INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`, `comment`) VALUES
('55999', '0', 'I can... I can barely breathe. I\'m alive thanks to you.', '12', '100', 'Raufen - Injured Soldier - Talk'),
('55999', '1', 'I owe you my life.', '12', '100', 'Raufen - Injured Soldier - Talk'),
('55999', '2', 'I thought that was it... I thought I was going to die. Thank you, stranger.', '12', '100', 'Raufen - Injured Soldier - Talk'),
('55999', '3', 'I\'m alive thanks only to you... I won\'t forget this.', '12', '100', 'Raufen - Injured Soldier - Talk'),
('55999', '4', 'I\'m... alive? Thank you... thank you so much!', '12', '100', 'Raufen - Injured Soldier - Talk'),
('55999', '5', 'I... I am in your debt.', '12', '100', 'Raufen - Injured Soldier - Talk'),
('55999', '6', 'Thank you for the timely rescue, hero.', '12', '100', 'Raufen - Injured Soldier - Talk');

-- Passing Wisdom
UPDATE `quest_template` SET `Method`='2', `StartScript`='0' WHERE (`Id`='29790');

DELETE FROM `creature_text` WHERE `entry` = '56686';
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `comment`) VALUES
('56686', '0', 'For 3,000 years, we have passed the knowledge of our people down. Elder to youth. Master to student.', '12', '100', 'Raufen - Passing Wisdom quest'),
('56686', '1', 'Every elder reaches the day where he must pass on and plant his stave with the staves of his ancestors. Today is the day when my staff joins these woods.', '12', '100', 'Raufen - Passing Wisdom quest'),
('56686', '2', '$n, our people have lived the wholes of their lives on this great turtle, Shen-zin Su, but not in hundreds of years has anyone spoken to him.', '12', '100', 'Raufen - Passing Wisdom quest'),
('56686', '3', 'Now Shen-zin Su is ill, and we are all in danger. With the help of the elements, you will break the silence. You will speak to him.', '12', '100', 'Raufen - Passing Wisdom quest'),
('56686', '4', 'Aysa and Ji have retrieved the spirits and brought them here. You are to go with them, speak to the great Shen-zin Su, and do what must be done to save our people.', '12', '100', 'Raufen - Passing Wisdom quest'),
('56686', '5', 'You\'ve come far, my young student. I see within you a great hero. I leave the fate of this land to you.', '12', '100', 'Raufen - Passing Wisdom quest');

-- The Missing Driver
DELETE FROM `creature_text` WHERE `entry` = '54855';
INSERT INTO `creature_text` (`entry`, `text`, `type`, `probability`, `comment`) VALUES ('54855', 'Master Shang has trained you well. Thank you, friend!', '12', '100', 'Raufen - The Missing Driver');
UPDATE `creature_template` SET `faction_A`='7', `faction_H`='7' WHERE (`entry`='54130');

-- Deleted wrong spawns
DELETE FROM `creature` WHERE (`guid`='941482');
DELETE FROM `creature` WHERE `map` = '860' AND `position_x` = '0' AND `position_y` = '0';

-- The Suffering of Shen-zin Su
UPDATE `creature_template` SET `speed_fly`='1.5' WHERE (`entry`='55649');

DELETE FROM `script_waypoint` WHERE `entry` = '55649';
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
('55649', '0', '920', '4569', '237', '0', 'Raufen - Hot Balloon'),
('55649', '1', '936', '4635', '226', '0', 'Raufen - Hot Balloon'),
('55649', '2', '942', '4913', '56', '30000', 'Raufen - Hot Balloon'),
('55649', '3', '797', '4928', '95', '15000', 'Raufen - Hot Balloon'),
('55649', '4', '517', '4763', '113', '0', 'Raufen - Hot Balloon'),
('55649', '5', '300', '4514', '75', '0', 'Raufen - Hot Balloon'),
('55649', '6', '222', '4248', '108', '0', 'Raufen - Hot Balloon'),
('55649', '7', '194', '4076', '138', '0', 'Raufen - Hot Balloon'),
('55649', '8', '155', '4008', '130', '0', 'Raufen - Hot Balloon'),
('55649', '9', '224', '3888', '161', '0', 'Raufen - Hot Balloon'),
('55649', '10', '341', '3777', '169', '0', 'Raufen - Hot Balloon'),
('55649', '11', '573', '3706', '205', '0', 'Raufen - Hot Balloon'),
('55649', '12', '745', '3664', '190', '0', 'Raufen - Hot Balloon');

DELETE FROM `creature_text` WHERE `entry` IN('56660', '56662');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `comment`) VALUES
('56660', '0', '0', '$n, where\'s Master Shang?', '12', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56662', '0', '0', '...Ji, they were in the Wood of Staves. You know where Master Shang is now.', '12', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56660', '1', '0', 'Bah, let a pandaren hope, would you? I\'m going to miss the old man.', '12', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56662', '1', '0', 'Ji, be respectful when we speak to Shen-zin Su.', '12', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56660', '2', '0', 'When am I not respectful? You hurt me, Aysa.', '12', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56662', '2', '0', 'I might if you embarrass us.', '12', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56662', '3', '0', 'Shen-zin Su, we are the descendants of Liu Lang. We\'ve sensed your pain, and we want to help.', '14', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56662', '4', '0', 'What ails you Shen-zin Su? What can we do?', '14', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56662', '5', '0', 'Of course, Shen-zin Su! But your shell is large, and I do not know where this thorn could be.', '14', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56662', '6', '0', 'We will find it, and we will remove it. You have our word!', '14', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56660', '3', '0', 'A thorn? And I left my tweezers at home.', '12', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56660', '4', '0', 'How could such a thing cause pain to something so large?', '12', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56662', '7', '0', 'We\'ll know soon enough.', '12', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56660', '5', '0', 'Are you seeing what I\'m seeing? Is that a boat?', '12', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56662', '8', '0', 'It is a boat... a whole airship! That\'s a bigger thorn than I was expecting.', '12', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56660', '6', '0', 'And those aren\'t pandaren down there. They\'ve got no fur.', '12', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56662', '9', '0', 'Someone has crashed into our island. Removing this thorn may be more complicated than we thought.', '12', '100', 'Raufen - The Suffering of Shen-zin Su'),
('56662', '10', '0', 'We should let Elder Shaopai know and then plan our next move.', '12', '100', 'Raufen - The Suffering of Shen-zin Su');

-- Bidden to Greatness
UPDATE `quest_template` SET `Method`='2' WHERE (`Id`='29792');

DELETE FROM `script_waypoint` WHERE `entry` IN('59986', '59988', '59989');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES
('59986', '0', '675', '3600', '146.6', 'Raufen - Bidden to Greatness'),
('59986', '1', '658', '3603', '146.8', 'Raufen - Bidden to Greatness'),
('59986', '2', '643', '3619', '140', 'Raufen - Bidden to Greatness'),
('59986', '3', '626', '3628', '132.6', 'Raufen - Bidden to Greatness'),
('59986', '4', '609', '3624', '122.5', 'Raufen - Bidden to Greatness'),
('59986', '5', '595', '3587', '100', 'Raufen - Bidden to Greatness'),
('59986', '6', '585', '3581', '95.6', 'Raufen - Bidden to Greatness'),
('59986', '7', '570', '3582', '94.9', 'Raufen - Bidden to Greatness'),
('59986', '8', '516', '3598', '89.5', 'Raufen - Bidden to Greatness'),


('59988', '0', '675', '3602', '146.6', 'Raufen - Bidden to Greatness'),
('59988', '1', '658', '3605', '146.8', 'Raufen - Bidden to Greatness'),
('59988', '2', '643', '3621', '140', 'Raufen - Bidden to Greatness'),
('59988', '3', '626', '3630', '132.6', 'Raufen - Bidden to Greatness'),
('59988', '4', '609', '3626', '122.5', 'Raufen - Bidden to Greatness'),
('59988', '5', '595', '3589', '100', 'Raufen - Bidden to Greatness'),
('59988', '6', '585', '3583', '95.6', 'Raufen - Bidden to Greatness'),
('59988', '7', '570', '3584', '94.9', 'Raufen - Bidden to Greatness'),
('59988', '8', '516', '3600', '89.5', 'Raufen - Bidden to Greatness'),

('59989', '0', '675', '3598', '146.6', 'Raufen - Bidden to Greatness'),
('59989', '1', '658', '3601', '146.8', 'Raufen - Bidden to Greatness'),
('59989', '2', '643', '3617', '140', 'Raufen - Bidden to Greatness'),
('59989', '3', '626', '3626', '132.6', 'Raufen - Bidden to Greatness'),
('59989', '4', '609', '3622', '122.5', 'Raufen - Bidden to Greatness'),
('59989', '5', '595', '3586', '100', 'Raufen - Bidden to Greatness'),
('59989', '6', '585', '3579', '95.6', 'Raufen - Bidden to Greatness'),
('59989', '7', '575', '3579', '94.9', 'Raufen - Bidden to Greatness'),
('59989', '8', '516', '3596', '89.5', 'Raufen - Bidden to Greatness');

DELETE FROM `creature_text` WHERE `entry` IN('59986', '59988');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `comment`) VALUES ('59986', '0', '0', '$n\'s here. Let\'s go.', '12', '100', 'Raufen - Bidden to Greatness'),
('59986', '1', '0', 'Wha...', '12', '100', 'Raufen - Bidden to Greatness'),
('59986', '2', '0', 'The gate is jammed.', '12', '100', 'Raufen - Bidden to Greatness'),
('59988', '0', '0', 'Let me try.', '12', '100', 'Raufen - Bidden to Greatness'),
('59988', '1', '0', 'Did they prop this door up against a boulder? It won\'t budge!', '12', '100', 'Raufen - Bidden to Greatness'),
('59986', '3', '0', 'Well done. Jojo!', '12', '100', 'Raufen - Bidden to Greatness');

-- The Horde Way

DELETE FROM `creature_text` WHERE `entry` = '62087';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(62087, 0, 0, 'You\'ve made a wise decision to join my Horde.', 12, 0, 100, 0, 0, 30746, 'Raufen - The Horde Way'),
(62087, 1, 0, 'There are some that would call us barbarians... the \"mongrel races\" of Azeroth.', 12, 0, 100, 0, 0, 30747, 'Raufen - The Horde Way'),
(62087, 2, 0, 'They are ignorant, and blind to reality. Look around you, pandaren.', 12, 0, 100, 0, 0, 30748, 'Raufen - The Horde Way'),
(62087, 3, 0, 'You will find no better partner in battle than an orc.', 12, 0, 100, 0, 0, 30749, 'Raufen - The Horde Way'),
(62087, 4, 0, 'The tauren have made themselves useful. Look - this one is a shaman.', 12, 0, 100, 0, 0, 30750, 'Raufen - The Horde Way'),
(62087, 5, 0, 'Even a blood elf can hold a sword.', 12, 0, 100, 0, 0, 30751, 'Raufen - The Horde Way'),
(62087, 6, 0, 'Do you see it? Everyone in my Horde earns their keep. You and your friends will be no exception.', 12, 0, 100, 0, 0, 30752, 'Raufen - The Horde Way'),
(62087, 7, 0, 'Do you understand this, pandaren?', 12, 0, 100, 0, 0, 30753, 'Raufen - The Horde Way'),
(62087, 8, 0, 'Hm. Good.', 12, 0, 100, 0, 0, 30754, 'Raufen - The Horde Way'),
(62087, 9, 0, 'Moving on. I know that you are not the only pandaren to escape from that island.', 12, 0, 100, 0, 0, 30755, 'Raufen - The Horde Way'),
(62087, 10, 0, 'Some of your kind chose to join the Alliance.', 12, 0, 100, 0, 0, 30756, 'Raufen - The Horde Way'),
(62087, 11, 0, 'They are now your enemies.', 12, 0, 100, 0, 0, 30757, 'Raufen - The Horde Way'),
(62087, 12, 0, 'You may have had friends and kin who chose to cast their lot with the enemies of the Horde. They are no longer your friends... no longer your family.', 12, 0, 100, 0, 0, 30758, 'Raufen - The Horde Way'),
(62087, 13, 0, 'The minute they put on that Alliance tabard, they died. I will NOT tolerate any lingering ties across enemy lines. Traitors to the Horde will die a traitor\'s death!', 12, 0, 100, 0, 0, 30759, 'Raufen - The Horde Way'),
(62087, 14, 0, 'Do I make myself clear?', 12, 0, 100, 0, 0, 30760, 'Raufen - The Horde Way'),
(62087, 15, 0, 'Good.', 12, 0, 100, 0, 0, 30761, 'Raufen - The Horde Way'),
('62087', '16', '0', 'Meet me in the Valley of Honor. I have a gift for you.', '12', '0', '100', '0', '0', '30762', 'Raufen - The Horde Way');

UPDATE `creature_template` SET `ScriptName`='npc_garrosh_the_horde_way' WHERE (`entry`='62087');
UPDATE `creature_template` SET `ScriptName`='npc_garrosh_quest' WHERE (`entry`='39605');

-- New Allies
DELETE FROM `script_waypoint` WHERE `entry` = '57743';
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES
('57743', '0', '282', '3882', '75', 'Raufen - New Allies'),
('57743', '1', '375', '3883', '79', 'Raufen - New Allies'),
('57743', '2', '414', '3888', '79.3', 'Raufen - New Allies'),
 ('57743', '3', '439', '3882', '79.4', 'Raufen - New Allies'),
('57743', '4', '461', '3855', '79.7', 'Raufen - New Allies'),
('57743', '5', '465', '3833', '80.5', 'Raufen - New Allies'),
('57743', '6', '466', '3822', '85.6', 'Raufen - New Allies'),
('57743', '7', '466', '3811', '81.5', 'Raufen - New Allies'),
('57743', '8', '466', '3776', '81.8', 'Raufen - New Allies'),
('57743', '9', '459', '3742', '82.2', 'Raufen - New Allies'),
('57743', '10', '440', '3715', '82.6', 'Raufen - New Allies'),
('57743', '11', '425', '3696', '81.4', 'Raufen - New Allies'),
('57743', '12', '429', '3679', '78.8', 'Raufen - New Allies'),
('57743', '13', '474', '3642', '79.2', 'Raufen - New Allies'),
('57743', '14', '506', '3645', '83.1', 'Raufen - New Allies'),
('57743', '15', '533', '3608', '91.4', 'Raufen - New Allies'),
('57743', '16', '565', '3584', '94.5', 'Raufen - New Allies'),
('57743', '17', '589', '3584', '97.6', 'Raufen - New Allies'),
('57743', '18', '608', '3623', '121.5', 'Raufen - New Allies'),
('57743', '19', '628', '3629', '133.6', 'Raufen - New Allies'),
('57743', '20', '660', '3602', '146.9', 'Raufen - New Allies'),
('57743', '21', '689', '3601', '144.3', 'Raufen - New Allies'),
('57743', '22', '736', '3604', '140.6', 'Raufen - New Allies');

-- The Alliance Way
DELETE FROM `creature_text` WHERE `entry` = '61796';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
('61796', '0', '0', 'Walk with me. All three of you.', '12', '100', '29574', 'Raufen - The Alliance Way'),
('61796', '1', '0', 'I understand you want to join the Alliance.', '12', '100', '29575', 'Raufen - The Alliance Way'),
('61796', '2', '0', 'We always have need of allies. I\'d be a fool to turn you away, especially at a time of war.', '12', '100', '29576', 'Raufen - The Allianec Way'),
('61796', '3', '0', 'But there are a number of things I need to make clear to you.', '12', '100', '29577', 'Raufen - The Allianec Way'),
('61796', '4', '0', 'First: the races of the Alliance look out for one another.', '12', '100', '29578', 'Raufen - The Allianec Way'),
('61796', '5', '0', 'You are expected to provide aid to Alliance members in need, whether they be human, gnome, draenei... or pandaren like yourselves.', '12', '100', '29579', 'Raufen - The Allianec Way'),
('61796', '6', '0', 'It is a simple guideline, but a meaningful one. Do you understand?', '12', '100', '29580', 'Raufen - The Allianec Way'),
('61796', '7', '0', 'Good. Because that brings me to my second point.', '12', '100', '29581', 'Raufen - The Allianec Way'),
('61796', '8', '0', 'Not all pandaren have chosen the same path as you three.', '12', '100', '29582', 'Raufen - The Allianec Way'),
('61796', '9', '0', 'Some have sided with the Horde.', '12', '100', '29583', 'Raufen - The Allianec Way'),
('61796', '10', '0', 'They, along with the other barbarian clans of the Horde, are your new enemies.', '12', '100', '29584', 'Raufen - The Allianec Way'),
('61796', '11', '0', 'Those who you once considered friends, or even those you might have loved, are now your sworn adversaries.', '12', '100', '29585', 'Raufen - The Allianec Way'),
('61796', '12', '0', 'I am deeply sorry, but the battle lines have been drawn. I will not tolerate any fraternizing with the enemy, as you could expose our Alliance to danger.', '12', '100', '29586', 'Raufen - The Allianec Way'),
('61796', '13', '0', 'Do I make myself clear?', '12', '100', '29587', 'Raufen - The Alliance Way'),
('61796', '14', '0', 'Very well. We are nearly finished, $n.', '12', '100', '29588', 'Raufen - The Alliance Way'),
('61796', '15', '0', 'Few people know this, but I was once a pit fighter myself. A gladiator for the Horde\'s amusement. So I know a thing or two about martial combat.', '12', '100', '29568', 'Raufen - An Old Pit Fighter'),
('61796', '16', '0', 'Now, pandaren... let me see what you\'ve got!', '12', '100', '29569', 'Raufen - An Old Pit Fighter'),
('61796', '17', '0', 'Don\'t hold back now! Let\'s have it!', '12', '100', '29570', 'Raufen - An Old Pit Fighter'),
('61796', '18', '0', 'What\'s the matter? You\'ll have to do better than that.', '12', '100', '29571', 'Raufen - An Old Pit Fighter'),
('61796', '19', '0', 'Come on, pandaren! HIT ME!', '14', '100', '29572', 'Raufen - An Old Pit Fighter'),
('61796', '20', '0', 'Ha ha ha haaa! I haven\'t felt like this in YEARS! Don\'t worry, $n... I\'ve been in worse scraps than this. A fighting spirit like yours is welcome in the Alliance. Now, let\'s get back to business.', '12', '100', '29573', 'Raufen - An Old Pit Fighter');

UPDATE `creature_template` SET `ScriptName`='npc_king_varian_wrynn_quest' WHERE (`entry`='29611');
UPDATE `creature_template` SET `ScriptName`='npc_king_varian_wrynn_the_alliance_way' WHERE (`entry`='61796');
