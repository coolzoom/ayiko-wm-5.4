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