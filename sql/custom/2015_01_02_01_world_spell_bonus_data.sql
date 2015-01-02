-- Arcane Barrage
UPDATE `spell_bonus_data` SET `direct_bonus`='1' WHERE (`entry`='44425');

-- Combustion
DELETE FROM `spell_bonus_data` WHERE `entry` = '11129';
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES ('11129', '1', '-1', '-1', '-1', 'Mage - Combustion');
