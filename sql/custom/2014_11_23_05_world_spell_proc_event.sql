UPDATE `spell_proc_event` SET `procFlags`='0', `ppmRate`='0', `CustomChance`='25', `Cooldown`='60' WHERE `entry` IN('75171 ', '125484');
DELETE FROM `spell_proc_event` WHERE `entry` = '142172';
INSERT INTO `spell_proc_event` (`entry`, `CustomChance`, `Cooldown`) VALUES ('142172', '25', '60');
