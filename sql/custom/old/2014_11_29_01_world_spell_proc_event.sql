DELETE FROM `spell_proc_event` WHERE `entry` = '115191';
INSERT INTO `spell_proc_event` (`entry`, `procFlags`) VALUES ('115191', '664232');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='115192') AND (`spell_effect`='1784') AND (`type`='2');
