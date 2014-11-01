-- Rally the Survivors
DELETE FROM `smart_scripts` WHERE (`entryorguid`='54763') AND (`source_type`='0');
DELETE FROM `creature_text` WHERE `entry` = '54763';
INSERT INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`, `comment`) VALUES
('54763', '0', 'I don\'t know who you are, but you have my gratitude.', '12', '100', 'Raufen - Nectarbreeze Farmer Rescue talk'),
('54763', '1', 'I never thought something like this could happen here...', '12', '100', 'Raufen - Nectarbreeze Farmer Rescue talk'),
('54763', '2', 'I thought I was done for!', '12', '100', 'Raufen - Nectarbreeze Farmer Rescue talk'),
('54763', '3', 'You don\'t have to tell me twice!', '12', '100', 'Raufen - Nectarbreeze Farmer Rescue talk');

UPDATE `creature_template` SET `npcflag`='1', `AIName`='', `ScriptName`='npc_nectarbreeze_farmer' WHERE (`entry`='54763');

