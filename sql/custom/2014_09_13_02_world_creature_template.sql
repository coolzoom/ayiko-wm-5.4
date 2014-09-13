UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35', `unit_flags`='33555200', `ScriptName`='npc_transcendence_spirit' WHERE (`entry`='54569');

DELETE FROM `spell_script_names` WHERE `spell_Id` = '119996';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('119996', 'spell_monk_transcendence_transfer');
