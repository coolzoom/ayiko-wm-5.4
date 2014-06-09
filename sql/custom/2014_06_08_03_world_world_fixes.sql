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
