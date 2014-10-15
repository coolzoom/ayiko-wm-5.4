DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_combo_breaker';
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_monk_combo_breaker';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('137384', 'spell_monk_combo_breaker');

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_monk_muscle_memory';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('100780', 'spell_monk_muscle_memory'),
('108557', 'spell_monk_muscle_memory'),
('115687', 'spell_monk_muscle_memory'),
('115693', 'spell_monk_muscle_memory'),
('115695', 'spell_monk_muscle_memory'),
('115698', 'spell_monk_muscle_memory');
