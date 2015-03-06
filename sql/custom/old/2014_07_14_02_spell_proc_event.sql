UPDATE `spell_proc_event` SET `SpellFamilyMask1`='0', `procEx`='0' WHERE (`entry`='53260');

DELETE FROM `spell_script_names` WHERE (`spell_id`='3044') AND (`ScriptName`='spell_hun_cobra_strikes');
