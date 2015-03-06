DELETE FROM `spell_bonus_data` WHERE `entry` = '145109';
INSERT INTO `spell_bonus_data` (`entry`, `comments`) VALUES ('145109', 'Ysera\'s Gift Heal');

-- Zen Sphere damages and healing
UPDATE `spell_bonus_data` SET `ap_bonus`='0.09' WHERE (`entry`='124098');
UPDATE `spell_bonus_data` SET `ap_bonus`='0.234' WHERE (`entry`='124101');
UPDATE `spell_bonus_data` SET `ap_bonus`='0.368' WHERE (`entry`='125033');
