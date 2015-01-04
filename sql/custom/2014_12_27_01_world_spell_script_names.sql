UPDATE `spell_script_names` SET `ScriptName`='spell_pri_power_word_shield' WHERE (`spell_id`='123258') AND (`ScriptName`='spell_mastery_shield_discipline');

DELETE FROM `spell_script_names` WHERE (`spell_id`='123258') AND (`ScriptName`='spell_pri_body_and_soul');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('123258', 'spell_pri_body_and_soul');
