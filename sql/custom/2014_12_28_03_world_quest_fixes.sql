-- What's Haunting Witch Hill?
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_risen_husk_spirit' WHERE (`entry`='23555');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='23555') AND (`source_type`='0');
