UPDATE `spell_script_names` SET `ScriptName`='spell_hun_steady_cobra_shot' WHERE (`spell_id`='56641') AND (`ScriptName`='spell_hun_steady_shot');

DELETE FROM `spell_script_names` WHERE (`spell_id`='77767') AND (`ScriptName`='spell_hun_steady_cobra_shot');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('77767', 'spell_hun_steady_cobra_shot');
