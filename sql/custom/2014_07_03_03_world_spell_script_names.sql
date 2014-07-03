DELETE FROM spell_script_names WHERE ScriptName = 'spell_warl_burning_embers';
DELETE FROM spell_script_names WHERE ScriptName = 'spell_warl_rain_of_fire_damage';

DELETE FROM spell_script_names WHERE spell_id = 108647;
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(108647, 'spell_warl_burning_embers');