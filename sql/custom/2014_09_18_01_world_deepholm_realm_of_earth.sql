DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (45004, 45005, 45024);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(45005, 84071, 1, 0);

DELETE FROM `spell_target_position` WHERE `id` = 84073;
INSERT INTO `spell_target_position` (`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(84073, 1, 646, 1040.91, 544.689, 681.86, 3.97935);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 45004;

DELETE FROM `creature_template` WHERE `entry` IN (45004, 45005, 45024, 45027, 45028);
INSERT INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction_A`,`faction_H`,`npcflag`,`speed_walk`,`speed_run`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,`dmg_multiplier`,`baseattacktime`,`rangeattacktime`,`unit_class`,`unit_flags`,`unit_flags2`,`dynamicflags`,`family`,`trainer_type`,`trainer_class`,`trainer_race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`,`resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`,`spell8`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`HoverHeight`,`Health_mod`,`Mana_mod`,`Armor_mod`,`RacialLeader`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`movementId`,`RegenHealth`,`mechanic_immune_mask`,`flags_extra`,`ScriptName`,`WDBVerified`) VALUES
(45004,0,0,0,0,0,17699,0,0,0,"Wyvern","","",0,1,1,0,2203,2203,16777216,1,1.14286,1,0,1,2,0,0,1,2000,2000,1,8,2048,0,0,0,0,0,1,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1071,0,0,"",0,4,1,1,1,1,0,0,0,0,0,0,0,199,1,0,0,"npc_first_wyvern_qdre",16048),
(45005,0,0,0,0,0,17699,0,0,0,"Wyvern","","vehichleCursor",0,81,81,3,2167,2167,16777216,1,1.14286,1,0,436,654,0,163,1,2000,2000,1,0,2048,0,0,0,0,0,349,523,130,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"",0,3,1,1,1,1,0,0,0,0,0,0,0,0,1,0,0,"",16048),
(45024,0,0,0,0,0,17699,0,0,0,"Wyvern","","",0,1,1,0,2203,2203,16777216,1,1.14286,1,0,1,2,0,0,1,2000,2000,1,8,2048,0,0,0,0,0,1,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1073,0,0,"",0,4,1,1,1,1,0,0,0,0,0,0,0,199,1,0,0,"npc_second_wyvern_qdre",16048),
(45027,0,0,0,0,0,35825,0,0,0,"Aggra","","",0,82,82,3,2203,2203,0,1,1.14286,1,0,420,631,0,158,1.1,2000,2000,2,0,2048,0,0,0,0,0,336,505,126,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"",0,3,1,0.2,1,1,0,0,0,0,0,0,0,0,1,0,0,"npc_second_aggra_qdre",16048),
(45028,0,0,0,0,0,35825,0,0,0,"Aggra","","",0,82,82,0,2203,2203,0,1,1.14286,1,0,420,631,0,158,1,2000,2000,2,0,2048,0,0,0,0,0,336,505,126,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"",0,3,1,1,1,1,0,0,0,0,0,0,0,0,1,0,0,"npc_first_aggra_qdre",16048);

DELETE FROM `creature` WHERE `id` IN (45027, 45028);

DELETE FROM `creature_template_addon` WHERE `entry` IN (45004,45024);
INSERT INTO `creature_template_addon` (`entry`, `bytes1`)VALUES
(45004, 50331648),
(45024, 50331648);

SET @CGUID = (SELECT MAX(guid) FROM `creature`);
DELETE FROM `creature` WHERE `id` IN (45004, 43718) AND `map` = 730;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 43718, 730, 1, 1, 896.398, 787.035, 6.133533, 0, 7200, 0, 0),
(@CGUID+2, 43718, 730, 1, 1, 898.788, 784.769, -255.7617, 0, 7200, 0, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (84364, 84365);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `ConditionTarget`, `SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13, 0, 1, 84364, 0, 31, 3, 43718, 0, 0, '', ''),
(13, 0, 1, 84365, 0, 31, 3, 43718, 0, 0, '', '');

DELETE FROM `spell_script_names` WHERE `spell_id` = 84073;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(84073, 'spell_deepholm_intro_teleport_periodic');

DELETE FROM `creature_text` WHERE `entry` IN (45027, 45028);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(45027, 0, 0, 'You made it!  Good!', 12, 0, 100, 4, 0, 22610, 'Aggra'),
(45027, 1, 0, 'This is the Temple of Earth.  It''s the most important structure in Deepholm.', 12, 0, 100, 0, 0, 22611, 'Aggra'),
(45027, 2, 0, 'There was once a Titan-made stone inside.  It was known as the World Pillar.  The name was literal.  It bore the weight of all the elemental and magnetic forces in Deepholm.', 12, 0, 100, 0, 0, 22612, 'Aggra'),
(45027, 3, 0, 'It was shattered when Deathwing broke through the dome above and created the rift between the two worlds.  All of Deepholm is going to collapse into Azeroth if we do not put the World Pillar back together.', 12, 0, 100, 0, 0, 22613, 'Aggra'),
(45027, 4, 0, 'The first fragment was going to be delivered to us by a Horde gunship known as the Storm''s Fury.  It never made it here.', 12, 0, 100, 0, 0, 22614, 'Aggra'),
(45027, 5, 0, 'We''ve taken control of the temple and we''re containing as much of the damage as we can.  Go inside and speak to Maruut; he''s in charge.', 12, 0, 100, 0, 0, 22615, 'Aggra'),
(45027, 6, 0, 'We are all counting on you.', 12, 0, 100, 0, 0, 22616, 'Aggra'),
(45028, 0, 0, 'I hope you have a strong stomach.  Travelling through the breach is not for the weak.', 12, 0, 100, 0, 0, 22606, 'Aggra'),
(45028, 1, 0, 'We''re at the center of the Maelstrom, the rift between Deepholm and our world.  Watch as it threatens to tear our world apart!', 12, 0, 100, 0, 0, 22607, 'Aggra'),
(45028, 2, 0, 'Let us hope Thrall and the others can contain it while you''re inside.', 12, 0, 100, 0, 0, 22608, 'Aggra'),
(45028, 3, 0, 'This is it!  Brace yourself!', 14, 0, 100, 0, 0, 22609, 'Aggra');