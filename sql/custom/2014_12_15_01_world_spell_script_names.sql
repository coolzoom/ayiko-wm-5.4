DELETE FROM spell_script_names WHERE spell_id = 101805;
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(101805, 'spell_gen_tome_of_discovery');

DELETE FROM `spell_loot_template` WHERE `entry` = 101805;
DELETE FROM `skill_discovery_template` WHERE `reqSpell` = 101805;