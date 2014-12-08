UPDATE `spell_bonus_data` SET `ap_bonus`='0.0546', `ap_dot_bonus`='0.0546' WHERE `entry`='13812';

DELETE FROM `spell_script_names` WHERE `spell_id` = '13812';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('13812', 'spell_hun_explosive_trap');
