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
('56686', '5', 'You\'ve come far, my young student. I see within you a great hero. I leave the fate of this land to you.', '12', '100', 'Raufen - Passing Wisdom quest'),

-- The Missing Driver
DELETE FROM `creature_text` WHERE `entry` = '54855';
INSERT INTO `creature_text` (`entry`, `text`, `type`, `probability`, `comment`) VALUES ('54855', 'Master Shang has trained you well. Thank you, friend!', '12', '100', 'Raufen - The Missing Driver');
UPDATE `creature_template` SET `faction_A`='7', `faction_H`='7' WHERE (`entry`='54130');

-- Deleted wrong spawns
DELETE FROM `creature` WHERE (`guid`='941482');
DELETE FROM `creature` WHERE `map` = '860' AND `position_x` = '0' AND `position_y` = '0';
