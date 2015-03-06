DELETE FROM `disables` WHERE (`sourceType`='0') AND (`entry`='110744');
DELETE FROM `disables` WHERE (`sourceType`='0') AND (`entry`='122121');

DELETE FROM `spell_script_names` WHERE `spell_id` IN('110745', '122128', '58880', 122127);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('110745', 'spell_pri_divine_star_damage_heal'),
('122128', 'spell_pri_divine_star_damage_heal'),
('58880', 'spell_pri_divine_star_dummy'),
('122127', 'spell_pri_divine_star_dummy');

UPDATE `creature_template` SET `InhabitType`='7', `HoverHeight`='1.5', `ScriptName`='npc_pri_divine_star' WHERE (`entry`='73692');
