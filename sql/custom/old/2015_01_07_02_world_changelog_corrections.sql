-- http://bugtracker.molten-wow.com/issues/2375
UPDATE `creature_template` SET `faction_A`='16', `faction_H`='16', `dmg_multiplier`='10' WHERE (`entry`='58312');

-- Blue's request, Eternal Flame HoT SP scaling correction
DELETE FROM `spell_bonus_data` WHERE `entry` = '114163';
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES ('114163', '0', '-1', '-1', '-1', 'Eternal Flame - HoT Calculated in Core');
