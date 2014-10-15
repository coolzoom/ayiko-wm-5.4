-- [SQL] Quests - Banish the Demons scripted and will now be obtainable when Honored with Ogri'la (Feedback #4522)
UPDATE `quest_template` SET `RequiredMinRepValue` = 9000, `RequiredItemId1` = 0, `RequiredItemId2` = 32696, `RequiredItemCount1` = 0, `RequiredItemCount2` = 1, `ObjectiveText1` = 'Demons banished' WHERE `Id` = 11026;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` IN (19973,22327,22201,22195,22204,22392,20557,22291,23322);
UPDATE `creature_template` SET `flags_extra`=130, `unit_flags`=33554432 WHERE `entry` IN (23322,23327);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19973,22327,22201,22195,22204,22392,20557,22291,23322);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(19973,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(19973,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(20557,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(20557,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(20557,0,2,0,4,0,100,0,0,0,0,0,11,22911,0,0,0,0,0,2,0,0,0,0,0,0,0, 'On aggro - cast charge'),
(20557,0,3,0,0,0,100,0,5000,11000,20000,27000,11,36406,0,0,0,0,0,2,0,0,0,0,0,0,0, 'In combat - cast breath'),
(22195,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(22195,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(22195,0,2,0,0,0,75,0,2500,7500,14000,18000,11,34017,0,0,0,0,0,2,0,0,0,0,0,0,0, 'In combat - cast rain of chaos'),
(22195,0,3,0,0,0,100,0,10100,14100,122000,130000,11,11980,0,0,0,0,0,5,0,0,0,0,0,0,0, 'In combat - cast curse of weakness'),
(22201,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(22201,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(22204,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(22204,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(22291,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(22291,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(22291,0,2,0,0,0,100,0,6300,12800,6300,12800,11,32736,0,0,0,0,0,2,0,0,0,0,0,0,0, 'In combat - cast mortal strike'),
(22327,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(22327,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(22392,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(22392,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(23322,0,0,1,54,0,100,0,0,0,0,0,11,40849,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spawn - cast portal'),
(23322,0,1,0,61,0,100,0,0,0,0,0,11,40857,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Link with 0 - cast aura');
DELETE FROM `conditions` WHERE `SourceEntry` = 40817 AND `SourceTypeOrReferenceId` IN (13, 17);
DELETE FROM `spell_area` WHERE `spell` = 40817; -- Summon Banishing Portal
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(40817, 3784, 0, 0, 0, 0, 2, 0), -- Forge Camp: Terror
(40817, 3785, 0, 0, 0, 0, 2, 0); -- Forge Camp: Wrath