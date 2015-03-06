-- Synapse Springs
DELETE FROM `spell_script_names` WHERE `spell_id` IN('82174', '126734');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('82174', 'spell_gen_synapse_springs'),
('126734', 'spell_gen_synapse_springs');

-- Binding Heal
DELETE FROM `spell_script_names` WHERE `spell_id` = '32546';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('32546', 'spell_pri_binding_heal');
