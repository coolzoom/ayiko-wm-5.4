DELETE FROM `spell_script_names` WHERE `spell_id` = '105574';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('105574', 'spell_item_zen_alchemist_stone');

DELETE FROM `creature_text` WHERE `entry` = '58228';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `comment`) VALUES
('58228', '0', '0', 'Normally, new trainees have a little more time to prepare.', '12', '100', 'Raufen - On Quest Accept - Talk'),
('58228', '1', '0', 'Unfortunately, your hatchling does not want to wait!', '12', '100', 'Raufen - On Quest Accept - Talk'),
('58228', '2', 'I hope you work hard, $n. To raise a cloud serpent is an honor bestowed upon a rare few.', '12', '100', 'Raufen - On Quest Accept - Talk'),
('58228', '3', 'It\'s starting!', '12', '100', 'Raufen - On Quest Accept - Talk');
