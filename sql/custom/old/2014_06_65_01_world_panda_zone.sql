DELETE FROM `creature_text` WHERE `entry` = '54611';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `comment`) VALUES ('54611', '0', '0', 'A challenger approaches.', '12', '100', 'Raufen - Talk on approach'),
('54611', '1', '0', 'Amazing! You\'re much stronger than you look.', '12', '100', 'Raufen - Talk on combat end'),
('54611', '1', '1', 'I bow to your skill. You bested me fairly.', '12', '100', 'Raufen - Talk on combat end'),
('54611', '1', '2', 'It seems I have more training to do. Thank you for the lesson.', '12', '100', 'Raufen - Talk on combat end'),
('54611', '1', '3', 'It was an honor to be defeated by you.', '12', '100', 'Raufen - Talk on combat end'),
('54611', '1', '4', 'Well fought. Master Shang will be pleased.', '12', '100', 'Raufen - Talk on combat end'),
('54611', '1', '5', 'You\'ve been trained well.', '12', '100', 'Raufen - Talk on combat end');

-- The Lesson of the Sandy Fist
UPDATE `quest_template` SET `SuggestedPlayers`='0' WHERE (`Id`='29406');

-- Trainee texts for The Lesson of Stifled Pride
DELETE FROM `creature_text` WHERE entry IN('54586', '65470', '65471', '54587');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('54586', '0', '0', 'I have never seen a trainee with skills such as yours. I must tell the others.', '12', '0', '100', '0', '0', '0', ''),
('54586', '0', '1', 'My skills are no match for yours. I admit defeat.', '12', '0', '100', '0', '0', '0', ''),
('54586', '0', '2', 'Thank you for reminding me that I must train more diligently.', '12', '0', '100', '0', '0', '0', ''),
('54586', '0', '3', 'That was a good match. Thank you.', '12', '0', '100', '0', '0', '0', ''),
('54586', '0', '4', 'You are an honorable opponent.', '12', '0', '100', '0', '0', '0', ''),
('54586', '0', '5', 'You fight honorably, friend.', '12', '0', '100', '0', '0', '0', ''),
('54586', '0', '6', 'You fought well. I must learn more from you in the future.', '12', '0', '100', '0', '0', '0', ''),
('54586', '0', '7', 'Your skills are too great. I yield.', '12', '0', '100', '0', '0', '0', ''),
('65470', '0', '0', 'I have never seen a trainee with skills such as yours. I must tell the others.', '12', '0', '100', '0', '0', '0', ''),
('65470', '0', '1', 'My skills are no match for yours. I admit defeat.', '12', '0', '100', '0', '0', '0', ''),
('65470', '0', '2', 'Thank you for reminding me that I must train more diligently.', '12', '0', '100', '0', '0', '0', ''),
('65470', '0', '3', 'That was a good match. Thank you.', '12', '0', '100', '0', '0', '0', ''),
('65470', '0', '4', 'You are an honorable opponent.', '12', '0', '100', '0', '0', '0', ''),
('65470', '0', '5', 'You fight honorably, friend.', '12', '0', '100', '0', '0', '0', ''),
('65470', '0', '6', 'You fought well. I must learn more from you in the future.', '12', '0', '100', '0', '0', '0', ''),
('65470', '0', '7', 'Your skills are too great. I yield.', '12', '0', '100', '0', '0', '0', ''),
('65471', '0', '0', 'I have never seen a trainee with skills such as yours. I must tell the others.', '12', '0', '100', '0', '0', '0', ''),
('65471', '0', '1', 'My skills are no match for yours. I admit defeat.', '12', '0', '100', '0', '0', '0', ''),
('65471', '0', '2', 'Thank you for reminding me that I must train more diligently.', '12', '0', '100', '0', '0', '0', ''),
('65471', '0', '3', 'That was a good match. Thank you.', '12', '0', '100', '0', '0', '0', ''),
('65471', '0', '4', 'You are an honorable opponent.', '12', '0', '100', '0', '0', '0', ''),
('65471', '0', '5', 'You fight honorably, friend.', '12', '0', '100', '0', '0', '0', ''),
('65471', '0', '6', 'You fought well. I must learn more from you in the future.', '12', '0', '100', '0', '0', '0', ''),
('65471', '0', '7', 'Your skills are too great. I yield.', '12', '0', '100', '0', '0', '0', ''),
('54587', '0', '0', 'I have never seen a trainee with skills such as yours. I must tell the others.', '12', '0', '100', '0', '0', '0', ''),
('54587', '0', '1', 'My skills are no match for yours. I admit defeat.', '12', '0', '100', '0', '0', '0', ''),
('54587', '0', '2', 'Thank you for reminding me that I must train more diligently.', '12', '0', '100', '0', '0', '0', ''),
('54587', '0', '3', 'That was a good match. Thank you.', '12', '0', '100', '0', '0', '0', ''),
('54587', '0', '4', 'You are an honorable opponent.', '12', '0', '100', '0', '0', '0', ''),
('54587', '0', '5', 'You fight honorably, friend.', '12', '0', '100', '0', '0', '0', ''),
('54587', '0', '6', 'You fought well. I must learn more from you in the future.', '12', '0', '100', '0', '0', '0', ''),
('54587', '0', '7', 'Your skills are too great. I yield.', '12', '0', '100', '0', '0', '0', '');

-- Merchant Lorvo
UPDATE `creature_template` SET `ScriptName`='mob_merchant_lorvo' WHERE (`entry`='54943');

DELETE FROM `creature_text` WHERE `entry` = '54943';
INSERT INTO `creature_text` (`entry`, `text`, `type`, `probability`, `comment`) VALUES ('54943', 'Shhhh! Come quietly. She\'s practicing.', '12', '100', 'Raufen - Merchant Lorvo - Talk on approach');
