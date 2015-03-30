UPDATE creature_template SET ScriptName="npc_wild_mushroom", AIName="", unit_flags=131084 WHERE entry = 47649;

INSERT INTO `spell_proc_event` VALUES ('138611', '0', '0', '16', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_script_names` VALUES ('102792', 'spell_dru_wild_mushroom_heal');
DELETE FROM spell_script_names WHERE spell_id=145205;