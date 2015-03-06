-- Shuriken Toss
DELETE FROM `spell_script_names` WHERE `spell_id` = '114014';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('114014', 'spell_rog_shuriken_toss');

-- Fan of Knives
DELETE FROM `spell_script_names` WHERE `spell_id` = '51723';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('51723', 'spell_rog_fan_of_knives');
UPDATE `spell_bonus_data` SET `ap_bonus`='0.175' WHERE (`entry`='51723');
