DELETE FROM `spell_proc_event` WHERE `entry` = '131665';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `CustomChance`) VALUES ('131665', '10', '1073741824', '16384', '100');

UPDATE `spell_proc_event` SET `ppmRate`='0' WHERE (`entry`='31829');

-- Item - Paladin PvP Set Retribution 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = '131633';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`) VALUES ('131633', '10', '32768');
