-- [SQL] Quests - Deepholm, Realm of Earth
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (45004, 45005, 45024);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(45005, 84071, 1, 0);
DELETE FROM `spell_target_position` WHERE `id` = 84073;
INSERT INTO `spell_target_position` (`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(84073, 1, 646, 1040.91, 544.689, 681.86, 3.97935);
DELETE FROM `vehicle_template_accessory` WHERE `entry` = 45004;
DELETE FROM `creature_template` WHERE `entry` IN (45004, 45005, 45024, 45027, 45028);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction_A`,`faction_H`,`npcflag`,`speed_walk`,`speed_run`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,`dmg_multiplier`,`baseattacktime`,`rangeattacktime`,`unit_class`,`unit_flags`,`unit_flags2`,`dynamicflags`,`family`,`trainer_type`,`trainer_class`,`trainer_race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`,`resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`,`spell8`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`HoverHeight`,`Health_mod`,`Mana_mod`,`Armor_mod`,`RacialLeader`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`movementId`,`RegenHealth`,`mechanic_immune_mask`,`flags_extra`,`ScriptName`,`WDBVerified`) VALUES
(45004,0,0,0,0,0,17699,0,0,0,"Wyvern","","",0,1,1,0,2203,2203,16777216,1,1.14286,1,0,1,2,0,0,1,2000,2000,1,8,2048,0,0,0,0,0,1,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1071,0,0,"",0,4,1,1,1,1,0,0,0,0,0,0,0,199,1,0,0,"npc_first_wyvern_qdre",16048),
(45005,0,0,0,0,0,17699,0,0,0,"Wyvern","","vehichleCursor",0,81,81,3,2167,2167,16777216,1,1.14286,1,0,436,654,0,163,1,2000,2000,1,0,2048,0,0,0,0,0,349,523,130,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"",0,3,1,1,1,1,0,0,0,0,0,0,0,0,1,0,0,"",16048),
(45024,0,0,0,0,0,17699,0,0,0,"Wyvern","","",0,1,1,0,2203,2203,16777216,1,1.14286,1,0,1,2,0,0,1,2000,2000,1,8,2048,0,0,0,0,0,1,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1073,0,0,"",0,4,1,1,1,1,0,0,0,0,0,0,0,199,1,0,0,"npc_second_wyvern_qdre",16048),
(45027,0,0,0,0,0,35825,0,0,0,"Aggra","","",0,82,82,3,2203,2203,0,1,1.14286,1,0,420,631,0,158,1.1,2000,2000,2,0,2048,0,0,0,0,0,336,505,126,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"",0,3,1,0.2,1,1,0,0,0,0,0,0,0,0,1,0,0,"npc_second_aggra_qdre",16048),
(45028,0,0,0,0,0,35825,0,0,0,"Aggra","","",0,82,82,0,2203,2203,0,1,1.14286,1,0,420,631,0,158,1,2000,2000,2,0,2048,0,0,0,0,0,336,505,126,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"",0,3,1,1,1,1,0,0,0,0,0,0,0,0,1,0,0,"npc_first_aggra_qdre",16048);
DELETE FROM `creature` WHERE `id` IN (45027, 45028);
DELETE FROM `creature_template_bytes` WHERE `entry` IN (45004,45024);
INSERT INTO `creature_template_bytes` (`entry`, `index`, `bytes`)VALUES
(45004, 0, 50331648),
(45024, 0, 50331648);
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

-- [SQL] Quests - Gunship Down scripted (Refs #7401)
-- [SQL] Quests - Diplomacy First fixed (Refs #7463)
SET @NPC_CAPTAIN_SKULLSHATTER := 43048;
SET @NPC_SLAIN_CANNONEER := 43032;
SET @NPC_UNEXPLODED_ARTILLERY_SHELL := 43044;
SET @NPC_UNEXPLODED_ARTILLERY_SHELL_MOUNT := 43046;
SET @SPELL_INSPECT_CAPTAIN_SKULLSHATTER := 80446;
SET @SPELL_INSPECT_SLAIN_CANNONEER := 80393;
SET @SPELL_INSPECT_FRAGMENTED_SHELL := 80436;
SET @SPELL_RIDE_CONFISCATED_ARTILLERY := 90763;
SET @SPELL_FEIGN_DEATH := 58951;
SET @QUEST_GUNSHIP_DOWN := 26245;
SET @CGUID := 40181;
UPDATE `creature_template` SET `exp` = 3 WHERE `entry` IN (@NPC_CAPTAIN_SKULLSHATTER, @NPC_SLAIN_CANNONEER);
UPDATE `creature_template` SET `npcflag` = 16777216, `unit_flags` = 33554432, `VehicleId` = 934, `WDBVerified` = 15595 WHERE `entry` = @NPC_UNEXPLODED_ARTILLERY_SHELL_MOUNT;
UPDATE `creature_template` SET `npcflag` = 16777216, `baseattacktime` = 2000, `AIName` = "SmartAI", `WDBVerified` = 15595 WHERE `entry` IN (@NPC_CAPTAIN_SKULLSHATTER, @NPC_SLAIN_CANNONEER, @NPC_UNEXPLODED_ARTILLERY_SHELL);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_CAPTAIN_SKULLSHATTER, @NPC_SLAIN_CANNONEER, @NPC_UNEXPLODED_ARTILLERY_SHELL) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_CAPTAIN_SKULLSHATTER, 0, 0, 0, 73, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Captain Skullshatter - On Spellclick - Boss Emote 0"),
(@NPC_SLAIN_CANNONEER, 0, 0, 0, 73, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Slain Cannoneer - On Spellclick - Boss Emote 0"),
(@NPC_UNEXPLODED_ARTILLERY_SHELL, 0, 0, 0, 73, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Unexploded Artillery Shell - On Spellclick - Boss Emote 0");
DELETE FROM `creature_text` WHERE `entry` IN (@NPC_CAPTAIN_SKULLSHATTER, @NPC_SLAIN_CANNONEER, @NPC_UNEXPLODED_ARTILLERY_SHELL);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_CAPTAIN_SKULLSHATTER, 0, 0, "The Captain's Log lies nearby.", 41, 0, 100, 0, 0, 0, "Captain Skullshatter"),
(@NPC_SLAIN_CANNONEER, 0, 0, "The cannoneer's hands are black with gunpowder.", 41, 0, 100, 0, 0, 0, "Slain Cannoneer"),
(@NPC_UNEXPLODED_ARTILLERY_SHELL, 0, 0, 'The shell''s markings read: "STORMWIND ROYAL INDUSTRIES"', 41, 0, 100, 0, 0, 0, "Unexploded Artillery Shell");
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (@NPC_CAPTAIN_SKULLSHATTER, @NPC_SLAIN_CANNONEER, @NPC_UNEXPLODED_ARTILLERY_SHELL, @NPC_UNEXPLODED_ARTILLERY_SHELL_MOUNT);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(@NPC_CAPTAIN_SKULLSHATTER, @SPELL_INSPECT_CAPTAIN_SKULLSHATTER, 1, 0),
(@NPC_SLAIN_CANNONEER, @SPELL_INSPECT_SLAIN_CANNONEER, 1, 0),
(@NPC_UNEXPLODED_ARTILLERY_SHELL, @SPELL_INSPECT_FRAGMENTED_SHELL, 1, 0),
(@NPC_UNEXPLODED_ARTILLERY_SHELL_MOUNT, @SPELL_RIDE_CONFISCATED_ARTILLERY, 1, 0);
DELETE FROM `creature` WHERE `id` IN (@NPC_CAPTAIN_SKULLSHATTER, @NPC_SLAIN_CANNONEER, @NPC_UNEXPLODED_ARTILLERY_SHELL, @NPC_UNEXPLODED_ARTILLERY_SHELL_MOUNT);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(7218957, @NPC_CAPTAIN_SKULLSHATTER, 646, 1, 1, 29322, 0, 288.194, 322.075, 60.9437, 4.57276, 60, 0, 0, 30951, 0, 0, 0, 0, 0),
(@CGUID+0, @NPC_SLAIN_CANNONEER, 646, 1, 1, 4260, 0, 273.974, 192.455, 44.5388, 0, 60, 0, 0, 30951, 0, 0, 0, 0, 0),
(@CGUID+1, @NPC_UNEXPLODED_ARTILLERY_SHELL, 646, 1, 1, 33182, 0, 196.566, 159.792, 42.2326, 2.14675, 60, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+2, @NPC_UNEXPLODED_ARTILLERY_SHELL_MOUNT, 646, 1, 1, 11686, 0, 196.566, 159.792, 42.2326, 2.14675, 60, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `creature_template_aura` WHERE `entry` IN (@NPC_CAPTAIN_SKULLSHATTER, @NPC_SLAIN_CANNONEER);
INSERT INTO `creature_template_aura` (`entry`, `aura`) VALUES
(@NPC_CAPTAIN_SKULLSHATTER, @SPELL_FEIGN_DEATH),
(@NPC_SLAIN_CANNONEER, @SPELL_FEIGN_DEATH);

-- [SQL] Quests - The Admiral's Cabin fixed
UPDATE `gameobject_template` SET `flags` = 4, `WDBVerified` = 15595 WHERE `entry` IN (203138, 204279, 204280);
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (203138, 204279, 204280);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(203138, 58806, -100, 1, 0, 1, 1),
(204279, 58806, -100, 1, 0, 1, 1),
(204280, 58798, -100, 1, 0, 1, 1);
DELETE FROM `gameobject` WHERE `id` IN (203138, 204279, 204280); -- spawned on transport
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(6602001, 203138, 747, 1, 1, -4962.81, 3387.4, -104.326, 0, 0, 0, 0, 1, 20, 100, 1),
(6602005, 204279, 747, 1, 1, 1203.45, -105.446, 442.832, 2.19912, 0, 0, 0.891007, 0.453991, 20, 100, 1),
(6602008, 204280, 747, 1, 1, 1207.41, -132.99, 448.022, 0.98453, 0, 0, -0.951056, 0.309017, 20, 100, 1);

-- [SQL] Quests - Hero's Call: Deepholm! will no longer have pre-requisite quests
UPDATE `quest_template` SET `PrevQuestId` = 0, `NextQuestIdChain` = 27203 WHERE `Id` = 27727;
DELETE FROM `creature_queststarter` WHERE `id` = 48128;
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 48128;

-- [c++ and SQL] Quests - All Our Friends Are Dead scripted (Feedback #7463)
-- [c++ and SQL] Quests - Take No Prisoners fixed
SET @NPC_SLAIN_CREW_MEMBER_HOSTILE := 42681;
SET @NPC_SLAIN_CREW_MEMBER_FRIENDLY := 42682;
SET @NPC_SLAIN_CREW_MEMBER_SPIRIT_HOSTILE := 42747;
SET @NPC_SLAIN_CREW_MEMBER_SPIRIT_FRIENDLY := 42757;
SET @SPELL_SPIRIT_TOTEM := 79614;
SET @SPELL_SPEAK_TO_FALLEN_SPIRIT_HOSTILE := 79700;
SET @SPELL_SPEAK_TO_FALLEN_SPIRIT_FRIENDLY := 79658;
SET @SPELL_FEIGN_DEATH := 29266;
SET @KILL_CREDIT := 42758;
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82, `exp` = 3, `mindmg` = 452, `maxdmg` = 678, `attackpower` = 169, `baseattacktime` = 2000, `mechanic_immune_mask` = 1, `WDBVerified` = 15595 WHERE `entry` IN (@NPC_SLAIN_CREW_MEMBER_HOSTILE, @NPC_SLAIN_CREW_MEMBER_SPIRIT_HOSTILE, @NPC_SLAIN_CREW_MEMBER_FRIENDLY, @NPC_SLAIN_CREW_MEMBER_SPIRIT_FRIENDLY);
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` IN (@NPC_SLAIN_CREW_MEMBER_HOSTILE, @NPC_SLAIN_CREW_MEMBER_FRIENDLY, @NPC_SLAIN_CREW_MEMBER_SPIRIT_HOSTILE, @NPC_SLAIN_CREW_MEMBER_SPIRIT_FRIENDLY);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = @NPC_SLAIN_CREW_MEMBER_SPIRIT_HOSTILE;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_SLAIN_CREW_MEMBER_HOSTILE, @NPC_SLAIN_CREW_MEMBER_FRIENDLY, @NPC_SLAIN_CREW_MEMBER_SPIRIT_HOSTILE, @NPC_SLAIN_CREW_MEMBER_SPIRIT_FRIENDLY) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_SLAIN_CREW_MEMBER_HOSTILE, 0, 0, 1, 8, 0, 100, 0, @SPELL_SPIRIT_TOTEM, 0, 60000, 60000, 33, @KILL_CREDIT, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Slain Crew Member hostile - On Spellhit - KC"),
(@NPC_SLAIN_CREW_MEMBER_HOSTILE, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 11, @SPELL_SPEAK_TO_FALLEN_SPIRIT_HOSTILE, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Slain Crew Member hostile - On Spellhit - Cast Summon hostile Spirit"),
(@NPC_SLAIN_CREW_MEMBER_HOSTILE, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Slain Crew Member hostile - On Spellhit - Despawn"),
(@NPC_SLAIN_CREW_MEMBER_SPIRIT_HOSTILE, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Slain Crew Member Spirit hostile - Just Summoned - Say Random Line 0"),
(@NPC_SLAIN_CREW_MEMBER_FRIENDLY, 0, 0, 1, 8, 0, 100, 0, @SPELL_SPIRIT_TOTEM, 0, 60000, 60000, 33, @KILL_CREDIT, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Slain Crew Member friendly - On Spellhit - KC"),
(@NPC_SLAIN_CREW_MEMBER_FRIENDLY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 11, @SPELL_SPEAK_TO_FALLEN_SPIRIT_FRIENDLY, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Slain Crew Member friendly - On Spellhit - Cast Summon friendly Spirit"),
(@NPC_SLAIN_CREW_MEMBER_FRIENDLY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Slain Crew Member friendly - On Spellhit - Despawn"),
(@NPC_SLAIN_CREW_MEMBER_SPIRIT_FRIENDLY, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Slain Crew Member Spirit friendly - Just Summoned - Say Random Line 0");
DELETE FROM `creature_text` WHERE `entry` IN (@NPC_SLAIN_CREW_MEMBER_HOSTILE, @NPC_SLAIN_CREW_MEMBER_FRIENDLY, @NPC_SLAIN_CREW_MEMBER_SPIRIT_HOSTILE, @NPC_SLAIN_CREW_MEMBER_SPIRIT_FRIENDLY);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_SLAIN_CREW_MEMBER_SPIRIT_FRIENDLY, 0, 0, "They poisoned our supplies... we had cultists onboard all along...", 12, 0, 100, 0, 0, 0, "Slain Crew Member Spirit friendly"),
(@NPC_SLAIN_CREW_MEMBER_SPIRIT_FRIENDLY, 0, 1, "Everyone started dropping like flies... everyone who ate the rations.", 12, 0, 100, 0, 0, 0, "Slain Crew Member Spirit friendly"),
(@NPC_SLAIN_CREW_MEMBER_SPIRIT_FRIENDLY, 0, 2, "They tricked us into ambushing the Horde gunship... but why?", 12, 0, 100, 0, 0, 0, "Slain Crew Member Spirit friendly"),
(@NPC_SLAIN_CREW_MEMBER_SPIRIT_FRIENDLY, 0, 3, "I heard them praying to their dark gods as everything went black... the Twilight's Hammer did this!", 12, 0, 100, 0, 0, 0, "Slain Crew Member Spirit friendly"),
(@NPC_SLAIN_CREW_MEMBER_SPIRIT_HOSTILE, 0, 0, "Twilight scum! You did this to us!", 14, 0, 100, 0, 0, 0, "Slain Crew Member Spirit hostile");
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = @SPELL_SPIRIT_TOTEM;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ScriptName`, `Comment`) VALUES
(17, 0, @SPELL_SPIRIT_TOTEM, 0, 0, 31, 1, 3, @NPC_SLAIN_CREW_MEMBER_HOSTILE, 0, 0, "", "Spirit Totem targets Slain Crew Member"),
(17, 0, @SPELL_SPIRIT_TOTEM, 0, 1, 31, 1, 3, @NPC_SLAIN_CREW_MEMBER_FRIENDLY, 0, 0, "", "Spirit Totem targets Slain Crew Member");
DELETE FROM `creature_template_aura` WHERE `entry` IN (@NPC_SLAIN_CREW_MEMBER_HOSTILE, @NPC_SLAIN_CREW_MEMBER_FRIENDLY);
INSERT INTO `creature_template_aura` (`entry`, `aura`) VALUES
(@NPC_SLAIN_CREW_MEMBER_HOSTILE, @SPELL_FEIGN_DEATH),
(@NPC_SLAIN_CREW_MEMBER_FRIENDLY, @SPELL_FEIGN_DEATH);

-- [c++ and SQL] Quests - Take him to the Earthcaller scripted (Feedback #7405)
SET @NPC_FLINT_OREMANTLE := 43036;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `exp` = 3, `mindmg` = 468, `maxdmg` = 702, `attackpower` = 175, `dmg_multiplier` = 35, `baseattacktime` = 2000, `unit_flags` = 768, `WDBVerified` = 15595, `AIName` = "", `ScriptName` = "npc_flint_oremantle" WHERE `entry` = @NPC_FLINT_OREMANTLE;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 44207, `RequiredNpcOrGoCount1` = 1 WHERE `Id` = 26413;

-- [c++ and SQL] Quests - Stonefather's Boon scripted
SET @NPC_STONEFATHERS_BANNER := 43163;
SET @SPELL_STONEFATHERS_BANNER_COVER := 80670;
SET @SPELL_STONEFATHERS_BANNER_SUMMON := 80658;
SET @SPELL_STONEFATHERS_BANNER_VISUAL := 80664;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `baseattacktime` = 2000, `unit_flags` = 33555208, `WDBVerified` = 15595, `AIName` = "", `ScriptName` = "npc_stonefathers_banner" WHERE `entry` = @NPC_STONEFATHERS_BANNER;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = @SPELL_STONEFATHERS_BANNER_COVER;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(@SPELL_STONEFATHERS_BANNER_COVER, @SPELL_STONEFATHERS_BANNER_SUMMON, 1, "Stonefather's Banner - Cover casts Summon");
DELETE FROM `creature_template_aura` WHERE `entry` = @NPC_STONEFATHERS_BANNER;
INSERT INTO `creature_template_aura` (`entry`, `aura`) VALUES
(@NPC_STONEFATHERS_BANNER, @SPELL_STONEFATHERS_BANNER_VISUAL);

-- [c++ and SQL] Quests - Imposing Confrontation scripted (Feedback #7406)
SET @NPC_BODEN_THE_IMPOSING := 42471;
UPDATE `creature_template` SET `exp` = 3, `faction_A` = 2288, `faction_H` = 2288, `mindmg` = 468, `maxdmg` = 702, `attackpower` = 175, `dmg_multiplier` = 35, `unit_class` = 1, `unit_flags` = 832, `WDBVerified` = 15595, `AIName` = "", `ScriptName` = "npc_boden_the_imposing" WHERE `entry` = @NPC_BODEN_THE_IMPOSING;
UPDATE `creature_template` SET `exp` = 3, `unit_flags` = 33344, `AIName` = '' WHERE `entry` = 42731;
UPDATE `creature` SET `position_x` = 1240.73, `position_y` = 698.281, `position_z` = -60.3786, `orientation` = 6.21337, `spawntimesecs` = 120, `curhealth` = 536810, `curmana` = 42580 WHERE `id` = 42731;
DELETE FROM `quest_start_scripts` WHERE `id` = 26315;
UPDATE `quest_template` SET `StartScript` = 0 WHERE `Id` = 26315;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 42731 AND `source_type` = 0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 79715;
-- insert into `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) values
-- ('13','7','79715','0','0','31','0','3','42731','0','0','0','0','','Quest');

-- [c++ and SQL] Quests - Underground Economy scripted (Feedback #3121)
SET @NPC_RICKET_TICKER := 49823;
SET @NPC_ALABASTER_BUNNY := 49824;
SET @NPC_CELESTITE_BUNNY := 49865;
SET @NPC_AMETHYST_BUNNY := 49866;
SET @NPC_GARNET_BUNNY := 49867;
SET @GO_DEEP_ALABASTER_CRYSTAL_CHUNK := 207381;
SET @GO_DEEP_CELESTITE_CRYSTAL_CHUNK := 207382;
SET @GO_DEEP_AMETHYST_CRYSTAL_CHUNK := 207383;
SET @GO_DEEP_GARNET_CRYSTAL_CHUNK := 207384;
SET @GO_DEEP_QUARTZ_CRYSTAL_CHUNK := 207390;
SET @CGUID := 40184;
SET @OGUID := 216867;
UPDATE `creature_template` SET `AIName` = "", `ScriptName` = "npc_ricket_ticker" WHERE `entry` = @NPC_RICKET_TICKER;
UPDATE `creature_template` SET `unit_flags` = 33555200 WHERE `entry` IN (@NPC_CELESTITE_BUNNY, @NPC_AMETHYST_BUNNY, @NPC_GARNET_BUNNY, @NPC_ALABASTER_BUNNY);
DELETE FROM `creature` WHERE `id` IN (@NPC_CELESTITE_BUNNY, @NPC_AMETHYST_BUNNY, @NPC_GARNET_BUNNY, @NPC_ALABASTER_BUNNY);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(@CGUID+0, @NPC_CELESTITE_BUNNY, 646, 1, 1, 11686, 0, 2163.1, -123.099, -191, 5.01212, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+1, @NPC_CELESTITE_BUNNY, 646, 1, 1, 11686, 0, 2168.61, -80.9025, -191, 0.790603, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+2, @NPC_CELESTITE_BUNNY, 646, 1, 1, 11686, 0, 2156.55, -74.4644, -191, 0.861289, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+3, @NPC_CELESTITE_BUNNY, 646, 1, 1, 11686, 0, 2129.06, -71.7842, -191, 1.5171, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+4, @NPC_CELESTITE_BUNNY, 646, 1, 1, 11686, 0, 2116.21, -82.4102, -191, 2.11793, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+5, @NPC_CELESTITE_BUNNY, 646, 1, 1, 11686, 0, 2123.6, -128.573, -191, 0.954751, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+6, @NPC_CELESTITE_BUNNY, 646, 1, 1, 11686, 0, 2134.13, -130.112, -191, 1.75193, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+8, @NPC_AMETHYST_BUNNY, 646, 1, 1, 11686, 0, 2127.87, -226.48, -171, 6.25775, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+9, @NPC_AMETHYST_BUNNY, 646, 1, 1, 11686, 0, 2130.39, -216.492, -171, 3.35178, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+10, @NPC_AMETHYST_BUNNY, 646, 1, 1, 11686, 0, 2160.51, -204.847, -171, 0.722272, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+11, @NPC_AMETHYST_BUNNY, 646, 1, 1, 11686, 0, 2173.74, -210.314, -171, 3.21748, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+12, @NPC_AMETHYST_BUNNY, 646, 1, 1, 11686, 0, 2183.39, -250.714, -171, 4.94536, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+13, @NPC_AMETHYST_BUNNY, 646, 1, 1, 11686, 0, 2143.11, -262.961, -171, 4.25106, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+14, @NPC_GARNET_BUNNY, 646, 1, 1, 11686, 0, 2071.76, -370.857, -164, 4.06884, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+15, @NPC_GARNET_BUNNY, 646, 1, 1, 11686, 0, 2071.32, -321.664, -164, 1.87758, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+16, @NPC_GARNET_BUNNY, 646, 1, 1, 11686, 0, 2090.36, -317.444, -164, 1.31994, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+17, @NPC_GARNET_BUNNY, 646, 1, 1, 11686, 0, 2080.59, -320.728, -164, 1.72835, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+18, @NPC_GARNET_BUNNY, 646, 1, 1, 11686, 0, 2078.09, -319.358, -155.268, 1.11701, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+19, @NPC_GARNET_BUNNY, 646, 1, 1, 11686, 0, 2091.33, -314.694, -155.635, 1.67552, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+20, @NPC_GARNET_BUNNY, 646, 1, 1, 11686, 0, 2082.39, -318.819, -158.477, 1.79769, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+21, @NPC_GARNET_BUNNY, 646, 1, 1, 11686, 0, 2089.9, -308.635, -158.115, 5.044, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+22, @NPC_ALABASTER_BUNNY, 646, 1, 1, 11686, 0, 2015.66, -210.54, -180, 6.16664, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+23, @NPC_ALABASTER_BUNNY, 646, 1, 1, 11686, 0, 2073.93, -217.233, -180, 1.17308, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+24, @NPC_ALABASTER_BUNNY, 646, 1, 1, 11686, 0, 2024.88, -228.847, -180, 4.80163, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+25, @NPC_ALABASTER_BUNNY, 646, 1, 1, 11686, 0, 2022.96, -207.461, -180, 4.54638, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+26, @NPC_ALABASTER_BUNNY, 646, 1, 1, 11686, 0, 1954.05, -174.28, -180, 3.29366, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+27, @NPC_ALABASTER_BUNNY, 646, 1, 1, 11686, 0, 2022.94, -144.907, -180, 2.88525, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+28, @NPC_ALABASTER_BUNNY, 646, 1, 1, 11686, 0, 2051.54, -143.277, -180, 1.78962, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+29, @NPC_ALABASTER_BUNNY, 646, 1, 1, 11686, 0, 2074.93, -143.783, -180, 0.835363, 120, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+30, @NPC_ALABASTER_BUNNY, 646, 1, 1, 11686, 0, 2064.79, -178.049, -180, 2.52397, 120, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `gameobject` WHERE `id` IN (@GO_DEEP_ALABASTER_CRYSTAL_CHUNK, @GO_DEEP_CELESTITE_CRYSTAL_CHUNK, @GO_DEEP_AMETHYST_CRYSTAL_CHUNK, @GO_DEEP_GARNET_CRYSTAL_CHUNK, @GO_DEEP_QUARTZ_CRYSTAL_CHUNK);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, @GO_DEEP_CELESTITE_CRYSTAL_CHUNK, 646, 1, 1, 2163.1, -123.099, -191, 5.01212, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+1, @GO_DEEP_CELESTITE_CRYSTAL_CHUNK, 646, 1, 1, 2168.61, -80.9025, -191, 0.790603, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+2, @GO_DEEP_CELESTITE_CRYSTAL_CHUNK, 646, 1, 1, 2156.55, -74.4644, -191, 0.861289, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+3, @GO_DEEP_CELESTITE_CRYSTAL_CHUNK, 646, 1, 1, 2129.06, -71.7842, -191, 1.5171, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+4, @GO_DEEP_CELESTITE_CRYSTAL_CHUNK, 646, 1, 1, 2116.21, -82.4102, -191, 2.11793, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+5, @GO_DEEP_CELESTITE_CRYSTAL_CHUNK, 646, 1, 1, 2123.6, -128.573, -191, 0.954751, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+6, @GO_DEEP_CELESTITE_CRYSTAL_CHUNK, 646, 1, 1, 2134.13, -130.112, -191, 1.75193, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+8, @GO_DEEP_AMETHYST_CRYSTAL_CHUNK, 646, 1, 1, 2127.87, -226.48, -171, 6.25775, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+9, @GO_DEEP_AMETHYST_CRYSTAL_CHUNK, 646, 1, 1, 2130.39, -216.492, -171, 3.35178, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+10, @GO_DEEP_AMETHYST_CRYSTAL_CHUNK, 646, 1, 1, 2160.51, -204.847, -171, 0.722272, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+11, @GO_DEEP_AMETHYST_CRYSTAL_CHUNK, 646, 1, 1, 2173.74, -210.314, -171, 3.21748, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+12, @GO_DEEP_AMETHYST_CRYSTAL_CHUNK, 646, 1, 1, 2183.39, -250.714, -171, 4.94536, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+13, @GO_DEEP_AMETHYST_CRYSTAL_CHUNK, 646, 1, 1, 2143.11, -262.961, -171, 4.25106, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+14, @GO_DEEP_GARNET_CRYSTAL_CHUNK, 646, 1, 1, 2071.76, -370.857, -164, 4.06884, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+15, @GO_DEEP_GARNET_CRYSTAL_CHUNK, 646, 1, 1, 2071.32, -321.664, -164, 1.87758, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+16, @GO_DEEP_GARNET_CRYSTAL_CHUNK, 646, 1, 1, 2090.36, -317.444, -164, 1.31994, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+17, @GO_DEEP_GARNET_CRYSTAL_CHUNK, 646, 1, 1, 2080.59, -320.728, -164, 1.72835, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+18, @GO_DEEP_GARNET_CRYSTAL_CHUNK, 646, 1, 1, 2078.09, -319.358, -155.268, 1.11701, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+19, @GO_DEEP_GARNET_CRYSTAL_CHUNK, 646, 1, 1, 2091.33, -314.694, -155.635, 1.67552, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+20, @GO_DEEP_GARNET_CRYSTAL_CHUNK, 646, 1, 1, 2082.39, -318.819, -158.477, 1.79769, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+21, @GO_DEEP_GARNET_CRYSTAL_CHUNK, 646, 1, 1, 2089.9, -308.635, -158.115, 5.044, 0, 0, -0.615661, 0.788011, 120, 100, 1),
(@OGUID+22, @GO_DEEP_ALABASTER_CRYSTAL_CHUNK, 646, 1, 1, 2015.66, -210.54, -180, 6.16664, 0, 0, -0.997563, 0.0697663, 120, 100, 1),
(@OGUID+23, @GO_DEEP_ALABASTER_CRYSTAL_CHUNK, 646, 1, 1, 2073.93, -217.233, -180, 1.17308, 0, 0, -0.997563, 0.0697663, 120, 100, 1),
(@OGUID+24, @GO_DEEP_ALABASTER_CRYSTAL_CHUNK, 646, 1, 1, 2024.88, -228.847, -180, 4.80163, 0, 0, -0.997563, 0.0697663, 120, 100, 1),
(@OGUID+25, @GO_DEEP_ALABASTER_CRYSTAL_CHUNK, 646, 1, 1, 2022.96, -207.461, -180, 4.54638, 0, 0, -0.997563, 0.0697663, 120, 100, 1),
(@OGUID+26, @GO_DEEP_ALABASTER_CRYSTAL_CHUNK, 646, 1, 1, 1954.05, -174.28, -180, 3.29366, 0, 0, -0.997563, 0.0697663, 120, 100, 1),
(@OGUID+27, @GO_DEEP_ALABASTER_CRYSTAL_CHUNK, 646, 1, 1, 2022.94, -144.907, -180, 2.88525, 0, 0, -0.997563, 0.0697663, 120, 100, 1),
(@OGUID+28, @GO_DEEP_ALABASTER_CRYSTAL_CHUNK, 646, 1, 1, 2051.54, -143.277, -180, 1.78962, 0, 0, -0.997563, 0.0697663, 120, 100, 1),
(@OGUID+29, @GO_DEEP_ALABASTER_CRYSTAL_CHUNK, 646, 1, 1, 2074.93, -143.783, -180, 0.835363, 0, 0, -0.997563, 0.0697663, 120, 100, 1),
(@OGUID+30, @GO_DEEP_ALABASTER_CRYSTAL_CHUNK, 646, 1, 1, 2064.79, -178.049, -180, 2.52397, 0, 0, -0.997563, 0.0697663, 120, 100, 1),
(@OGUID+31, @GO_DEEP_QUARTZ_CRYSTAL_CHUNK, 646, 1, 1, 1908.38, -82.0174, -175.32, 0.750491, 0, 0, 0.366501, 0.930418, 120, 255, 1),
(@OGUID+32, @GO_DEEP_QUARTZ_CRYSTAL_CHUNK, 646, 1, 1, 1910.72, -83.3576, -174.952, -0.942477, 0, 0, -0.45399, 0.891007, 120, 255, 1),
(@OGUID+33, @GO_DEEP_QUARTZ_CRYSTAL_CHUNK, 646, 1, 1, 1911.3, -76.4965, -175.293, 1.02974, 0, 0, 0.492423, 0.870356, 120, 255, 1);

-- [SQL] Quests - A Head Full of Wind scripted (Feedback #7439)
SET @NPC_LORVARIUS := 43395;
SET @NPC_RED_WIND_DEVIL := 47192;
SET @NPC_RED_WIND_DEVIL_DESPAWNER := 43437;
SET @NPC_RED_MIST := 43370;
SET @SPELL_RED_MIST_VISUAL := 77707;
SET @SPELL_RED_MIST_DAMAGE := 81095;
SET @SPELL_RED_MIST_DAMAGE_PLAYER := 81096;
SET @SPELL_LORVARIUS_SUMMON_RED_WIND_DEVIL := 87941;
SET @SPELL_RED_MIST_KILL_CREDIT := 81223;
SET @SPELL_RED_WIND_DEVIL_GUARDIAN_AURA := 81226;
SET @SPELL_RED_MIST_RETURN_PING := 81359;
SET @SPELL_LORVARIUS_CLEAN_SUMMON := 81225;
SET @SPELL_LORVARIUS_CLEAN_KILL_CREDIT := 81222;
SET @SPELL_LORVARIUS_CLEAN_GUARDIAN_AURA := 87940;
SET @QUEST_A_HEAD_FULL_OF_WIND := 26581;
SET @CGUID := 319425;
UPDATE `creature_template` SET `mindmg` = 435, `maxdmg` = 653, `attackpower` = 163, `dmg_multiplier` = 37.6, `unit_flags` = 32832, `AIName` = "", `WDBVerified` = 15595 WHERE `entry` = @NPC_LORVARIUS;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `faction_A` = 114, `faction_H` = 114, `speed_run` = 0.571429, `baseattacktime` = 4000, `unit_flags` = 33571328, `WDBVerified` = 15595, `InhabitType` = 4, `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @NPC_RED_MIST;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `baseattacktime` = 2000, `unit_flags` = 776, `WDBVerified` = 15595, `AIName` = "" WHERE `entry` = @NPC_RED_WIND_DEVIL;
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `baseattacktime` = 2000, `unit_flags` = 776, `WDBVerified` = 15595, `AIName` = "SmartAI" WHERE `entry` = @NPC_RED_WIND_DEVIL_DESPAWNER;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_LORVARIUS, @NPC_RED_WIND_DEVIL, @NPC_RED_WIND_DEVIL_DESPAWNER, @NPC_RED_MIST) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_RED_WIND_DEVIL_DESPAWNER, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Red Wind Devil Despawner - On Just Summoned - Despawn"),
(@NPC_RED_MIST, 0, 0, 1, 10, 0, 100, 0, 0, 6, 30000, 30000, 33, @NPC_RED_MIST, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Red Mist - On LoS - Give KC"),
(@NPC_RED_MIST, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, @SPELL_RED_MIST_DAMAGE_PLAYER, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Red Mist - On LoS - Cast Red Mist damage");
-- UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = @QUEST_A_HEAD_FULL_OF_WIND;
DELETE FROM `creature_template_aura` WHERE `entry` IN (@NPC_RED_MIST, @NPC_RED_WIND_DEVIL);
INSERT INTO `creature_template_aura` (`entry`, `aura`) VALUES
(@NPC_RED_MIST, @SPELL_RED_MIST_VISUAL),
(@NPC_RED_WIND_DEVIL, @SPELL_RED_WIND_DEVIL_GUARDIAN_AURA);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (@SPELL_LORVARIUS_CLEAN_KILL_CREDIT, @SPELL_RED_MIST_KILL_CREDIT);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` IN (@SPELL_RED_MIST_RETURN_PING, @SPELL_RED_MIST_DAMAGE_PLAYER);
DELETE FROM `creature` WHERE `id` = @NPC_RED_MIST;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
(@CGUID+0, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1370.55, -724.406, 279.196, 3.23403, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+1, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1373.55, -727.223, 279.255, 2.73451, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+2, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1370.85, -729.338, 279.902, 1.92241, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+3, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1373.37, -733.289, 280.444, 2.39655, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+4, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1444.51, -850.367, 281.349, 3.23062, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+5, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1431.53, -846.22, 281.033, 2.63371, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+6, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1425.26, -839.879, 280.736, 2.38239, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+7, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1414.47, -829.814, 280.862, 2.38239, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+8, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1410.12, -812.528, 282.283, 1.92293, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+9, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1409.22, -798.883, 281.744, 1.57342, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+10, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1413.72, -783.128, 282.779, 1.2357, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+11, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1408.05, -761.692, 281.618, 1.85223, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+12, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1408, -744.402, 281.915, 1.64803, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+13, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1403.92, -732.175, 282.214, 1.8758, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+14, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1408.13, -720.065, 281.781, 1.42026, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+15, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1406.73, -712.12, 282.235, 2.11141, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+16, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1402.99, -703.059, 280.862, 2.13655, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+17, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1394.4, -695.494, 280.233, 2.55909, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+18, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1387.98, -686.956, 281.45, 2.2253, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+19, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1384, -676.822, 280.764, 1.92292, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+20, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1380.77, -665.848, 280.189, 1.80118, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+21, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1379.52, -660.13, 281.088, 1.80118, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+22, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1378.43, -647.239, 281.632, 1.63625, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+23, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1377.32, -637.683, 282.299, 1.80118, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+24, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1372.39, -625.356, 280.084, 1.97397, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+25, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1369.33, -615.647, 280.065, 1.82867, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+26, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1360.49, -586.524, 279.058, 3.38769, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+27, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1351.67, -591.167, 280.633, 3.67436, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+28, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1343.77, -595.679, 281.71, 3.61545, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+29, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1334.49, -601.167, 280.846, 3.81966, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+30, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1334.89, -609.708, 279.321, 4.8768, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+31, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1337.52, -617.882, 279.807, 5.10063, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+32, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1341.75, -624.576, 279.906, 5.29306, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+33, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1346.73, -632.25, 280.208, 5.16739, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+34, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1350.36, -641.383, 280.403, 4.93963, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+35, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1352.34, -651.732, 280.232, 4.88073, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+36, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1352.96, -660.893, 280.858, 4.78648, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+37, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1355.67, -676.997, 279.717, 4.92393, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+38, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1354.01, -689.212, 283.166, 4.57835, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+39, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1364.25, -702.476, 279.845, 5.45014, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+40, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1368.58, -709.533, 280.194, 5.17525, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+41, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1370.5, -718.996, 280.078, 4.78648, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+42, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1373.79, -726.439, 279.714, 5.24593, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+43, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1381.18, -733.919, 280.692, 5.51689, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+44, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1385.43, -741.318, 281.359, 4.59799, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+45, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1380.85, -754.694, 281.266, 4.2642, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+46, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1374.4, -764.398, 280.912, 4.13854, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+47, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1370.49, -778.87, 280.576, 4.51553, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+48, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1371, -789.749, 280.08, 4.81005, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+49, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1373.83, -799.753, 279.67, 4.99854, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+50, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1370.54, -811.365, 280.074, 4.39772, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+51, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1364.59, -815.58, 279.833, 3.2157, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+52, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1350.96, -817.254, 279.272, 3.78825, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(@CGUID+53, @NPC_RED_MIST, 646, 1, 1, 0, 0, 1341.93, -824.818, 279.157, 4.35217, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- [c++ and SQL] Quests - Don't. Stop. Moving. scripted (Feedback #7427)
SET @NPC_TERRATH_THE_STEADY := 42466;
SET @NPC_OPALESCENT_GUARDIAN := 43591;
SET @NPC_OPAL_STONETHROWER := 43586;
SET @CGUID := 40215;
UPDATE `creature_template` SET `mindmg` = 468, `maxdmg` = 702, `attackpower` = 175, `dmg_multiplier` = 35, `unit_class` = 1, `unit_flags` = 64, `VehicleId` = 1088, `WDBVerified` = 15595, `AIName` = "", `ScriptName` = "npc_terrath_the_steady" WHERE `entry` = @NPC_TERRATH_THE_STEADY;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `exp` = 3, `faction_A` = 35, `faction_H` = 35, `speed_walk` = 1.55556, `baseattacktime` = 2000, `unit_flags` = 264, `WDBVerified` = 15595, `AIName` = "", `ScriptName` = "npc_opalescent_guardian" WHERE `entry` = @NPC_OPALESCENT_GUARDIAN;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `exp` = 3, `faction_A` = 2283, `faction_H` = 2283, `speed_walk` = 0.888888, `speed_run` = 1.5873, `mindmg` = 168, `maxdmg` = 702, `attackpower` = 175, `dmg_multiplier` = 35, `baseattacktime` = 2000, `unit_class` = 1, `unit_flags` = 64, `WDBVerified` = 15595 WHERE `entry` = @NPC_OPAL_STONETHROWER;
DELETE FROM `creature` WHERE `id` = @NPC_OPAL_STONETHROWER;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@CGUID+0, @NPC_OPAL_STONETHROWER, 646, 1, 1, 0, 0, 2327.48, 470.661, 165.327, 2.10402, 120, 0, 0, 420, 0, 0, 0, 0, 0);

-- [c++ and SQL] Quests - Sprout No More scripted
-- [c++ and SQL] Quests - Fungal Monstrosities scripted
SET @NPC_WAR_GUARDIAN_DEFAULT := 44126;
SET @NPC_WAR_GUARDIAN := 44118;
SET @NPC_GIANT_MUSHROOM := 44049;
SET @SPELL_SUMMON_WAR_GUARDIAN := 82535;
SET @QUEST_SPROUT_NO_MORE := 26791;
SET @QUEST_FULGAL_MONSTROSITIES := 26792;
SET @CGUID := 40216;
UPDATE `creature_template` SET `faction_A` = 2244, `faction_H` = 2244, `speed_run` = 0.992063, `mindmg` = 550, `maxdmg` = 950, `attackpower` = 36, `dmg_multiplier` = 7, `WDBVerified` = 15595, `ScriptName` = "" WHERE `entry` = @NPC_WAR_GUARDIAN_DEFAULT;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `exp` = 3, `faction_A` = 2204, `faction_H` = 2204, `speed_run` = 0.992063, `baseattacktime` = 2000, `unit_flags` = 32776, `WDBVerified` = 15595, `AIName` = "", `ScriptName` = "npc_war_guardian" WHERE `entry` = @NPC_WAR_GUARDIAN;
UPDATE `creature_template` SET `AIName` = "", `ScriptName` = "npc_giant_mushroom" WHERE `entry` = @NPC_GIANT_MUSHROOM;
-- UPDATE `quest_template` SET `Flags` = 0 WHERE `Id` = 26791;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = @NPC_WAR_GUARDIAN_DEFAULT;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(@NPC_WAR_GUARDIAN_DEFAULT, @SPELL_SUMMON_WAR_GUARDIAN, 1, 0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 18 AND `SourceGroup` = @NPC_WAR_GUARDIAN_DEFAULT;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ScriptName`, `Comment`) VALUES
(18, @NPC_WAR_GUARDIAN_DEFAULT, @SPELL_SUMMON_WAR_GUARDIAN, 0, 0, 9, 0, @QUEST_SPROUT_NO_MORE, 0, 0, 0, "","Required quest active for spellclick"),
(18, @NPC_WAR_GUARDIAN_DEFAULT, @SPELL_SUMMON_WAR_GUARDIAN, 0, 0, 9, 0, @QUEST_FULGAL_MONSTROSITIES, 0, 0, 0, "","Required quest active for spellclick");
DELETE FROM `creature` WHERE `id` = @NPC_WAR_GUARDIAN_DEFAULT;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@CGUID+0, @NPC_WAR_GUARDIAN_DEFAULT, 646, 1, 1, 0, 0, 1276.26, 1647.29, 174.011, 5.23412, 120, 0, 0, 278900, 0, 0, 0, 0, 0);
UPDATE `creature` SET `spawntimesecs` = 120 WHERE `id` = @NPC_GIANT_MUSHROOM;

-- [c++ and SQL] Quests - Elemental Energy scripted (Feedback #7402)
SET @NPC_LODESTONE_ELEMENTAL := 43258;
SET @NPC_ENERGIZED_GEODE := 43254;
SET @NPC_DEPLETED_TOTEM := 45088;
UPDATE `creature_template` SET `minlevel` = 81, `InhabitType` = 3, `questItem1` = 52506, `flags_extra` = 0, `WDBVerified` = 15595, `AIName` = "", `ScriptName` = "npc_elemental_energy_quest" WHERE `entry` IN (@NPC_LODESTONE_ELEMENTAL, @NPC_ENERGIZED_GEODE);
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `AIName` = 'NullCreatureAI', `unit_flags` = 12 WHERE `entry` = @NPC_DEPLETED_TOTEM;

-- [c++ and SQL] Quests - Pebble scripted (Feedback #7423)
SET @NPC_KOR_THE_IMMOVABLE := 42469;
UPDATE `creature_template` SET `exp` = 3, `faction_A` = 2283, `faction_H` = 2283, `mindmg` = 468, `maxdmg` = 702, `attackpower` = 175, `dmg_multiplier` = 35, `baseattacktime` = 2000, `unit_flags` = 33600, `unit_class` = 1, `WDBVerified` = 15595, `AIName` = "", `ScriptName` = "npc_kor_the_immovable" WHERE `entry` = @NPC_KOR_THE_IMMOVABLE;
DELETE FROM `creature_model_info` WHERE `modelid` = 33212;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(33212, 24, 24, 2, 0);
-- [c++ and SQL] Quests - Clingy scripted
SET @NPC_PEBBLE := 43116;
SET @NPC_KILL_CREDIT_BUNNY := 43172;
SET @SPELL_PETRIFIED_DELICACIES_COMPLETE_TRIGGER := 84153;
UPDATE `creature_template` SET `minlevel` = 84, `maxlevel` = 84, `exp` = 3, `speed_walk` = 1.55556, `mindmg` = 354, `maxdmg` = 522, `attackpower` = 921, `baseattacktime` = 2000, `unit_flags` = 264, `VehicleId` = 584, `WDBVerified` = 15595, `AIName` = "", `ScriptName` = "npc_pebble" WHERE `entry` = @NPC_PEBBLE;
UPDATE `creature_template` SET `InhabitType` = 7 WHERE `entry` = @NPC_KILL_CREDIT_BUNNY;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = @SPELL_PETRIFIED_DELICACIES_COMPLETE_TRIGGER;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ScriptName`, `Comment`) VALUES
(13, 1, @SPELL_PETRIFIED_DELICACIES_COMPLETE_TRIGGER, 0, 0, 31, 1, 3, @NPC_PEBBLE, 0, 0, "", "Petrified Delicacies Complete Trigger targets Pebble");
DELETE FROM `creature` WHERE `id` IN (@SPELL_PETRIFIED_DELICACIES_COMPLETE_TRIGGER, @NPC_KILL_CREDIT_BUNNY);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`AreaID`) VALUES
(4494, @NPC_KILL_CREDIT_BUNNY, 646, 1, 1, 21342, 0, 1175.249, 1515.918, 40.242, 4.798, 30, 0, 0, 42, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `unit_flags` = 67108864 WHERE `entry` = 43339;
DELETE FROM `creature_model_info` WHERE `modelid` = 33631;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(33631, 2.778, 4, 2, 0);

-- [SQL] Quests - Petrified Delicacies fixed (Feedback #1624)
SET @NPC_PETRIFIED_STONE_BAT := 43182;
SET @SPELL_PETRIFIED_BAT := 80945;
SET @SPELL_CREATURE_SPARKLES_BIGGER := 94357;
UPDATE `creature_template` SET `exp` = 3, `npcflag` = 16777216, `WDBVerified` = 15595 WHERE `entry` = @NPC_PETRIFIED_STONE_BAT;
DELETE FROM `creature_template_aura` WHERE `entry` = @NPC_PETRIFIED_STONE_BAT;
INSERT INTO `creature_template_aura` (`entry`, `aura`) VALUES
(@NPC_PETRIFIED_STONE_BAT, @SPELL_PETRIFIED_BAT),
(@NPC_PETRIFIED_STONE_BAT, @SPELL_CREATURE_SPARKLES_BIGGER);

-- [SQL] Quests - On Even Ground scripted (Feedback #7407)
SET @NPC_SERVANT_OF_THERAZANE := 44131;
SET @KILL_CREDIT := 45083;
SET @SPELL_ELEMENTIUM_GRAPPLE_LINE := 79688;
SET @SPELL_GIANT_TRIPPED_TRIGGER := 79757;
SET @SPELL_TRIPPED_GIANT := 79764;
SET @SPELL_ELEMENTIUM_GRAPPLE_LINE_BEAM := 79798;
SET @SPELL_ELEMENTIUM_GRAPPLE_LINE_BREAK := 84008;
SET @QUEST_ON_EVEN_GROUND := 26314;
SET @CGUID := 40412;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = @KILL_CREDIT, `RequiredSpellCast1` = 0, `Method` = 2, `WDBVerified` = 15595 WHERE `Id` = @QUEST_ON_EVEN_GROUND;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `exp` = 3, `faction_A` = 2285, `faction_H` = 2285, `mindmg` = 468, `maxdmg` = 702, `attackpower` = 175, `dmg_multiplier` = 15, `baseattacktime` = 2000, `unit_class` = 1, `unit_flags` = 64, `speed_run` = 0.992063, `WDBVerified` = 15595, `AIName` = "SmartAI" WHERE `entry` = @NPC_SERVANT_OF_THERAZANE;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_SERVANT_OF_THERAZANE;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_SERVANT_OF_THERAZANE, 0, 0, 0, 8, 0, 100, 0, @SPELL_ELEMENTIUM_GRAPPLE_LINE, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Servant of Therazane - On Spellhit 1 - Boss Emote 0"),
(@NPC_SERVANT_OF_THERAZANE, 0, 1, 2, 8, 0, 100, 0, @SPELL_GIANT_TRIPPED_TRIGGER, 0, 0, 0, 11, @SPELL_TRIPPED_GIANT, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Servant of Therazane - On Spellhit - Cast Tripped Giant"),
(@NPC_SERVANT_OF_THERAZANE, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 8000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Servant of Therazane - On Spellhit - Despawn");
DELETE FROM `creature_text` WHERE `entry` = @NPC_SERVANT_OF_THERAZANE;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_SERVANT_OF_THERAZANE, 0, 0, "The line is secured to his ankle. Pull away to trip him!", 41, 0, 100, 0, 0, 0, "Servant of Therazane");
DELETE FROM `creature` WHERE `id` = @NPC_SERVANT_OF_THERAZANE;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@CGUID+0, @NPC_SERVANT_OF_THERAZANE, 646, 1, 1, 0, 0, 1905.44, -153.844, 24.7535, 3.80872, 120, 8, 0, 536810, 0, 1, 0, 0, 0),
(@CGUID+1, @NPC_SERVANT_OF_THERAZANE, 646, 1, 1, 0, 0, 1912.26, -190.63, 24.7001, 3.13493, 120, 8, 0, 536810, 0, 1, 0, 0, 0),
(@CGUID+2, @NPC_SERVANT_OF_THERAZANE, 646, 1, 1, 0, 0, 1897.72, -226.248, 24.3551, 2.51058, 120, 8, 0, 536810, 0, 1, 0, 0, 0),
(@CGUID+3, @NPC_SERVANT_OF_THERAZANE, 646, 1, 1, 0, 0, 1919.06, -161.399, 25.0035, 3.11054, 120, 8, 0, 536810, 0, 1, 0, 0, 0),
(@CGUID+4, @NPC_SERVANT_OF_THERAZANE, 646, 1, 1, 0, 0, 1759.92, -90.3733, 22.1033, 4.12328, 120, 8, 0, 536810, 0, 1, 0, 0, 0),
(@CGUID+5, @NPC_SERVANT_OF_THERAZANE, 646, 1, 1, 0, 0, 1241.73, 827.42, -66.9339, 5.17885, 120, 8, 0, 536810, 0, 1, 0, 0, 0),
(@CGUID+6, @NPC_SERVANT_OF_THERAZANE, 646, 1, 1, 0, 0, 1270.37, 719.667, -69.108, 3.49025, 120, 8, 0, 536810, 0, 1, 0, 0, 0),
(@CGUID+7, @NPC_SERVANT_OF_THERAZANE, 646, 1, 1, 0, 0, 1323.41, 674.369, -70.6549, 3.0355, 120, 8, 0, 536810, 0, 1, 0, 0, 0),
(@CGUID+8, @NPC_SERVANT_OF_THERAZANE, 646, 1, 1, 0, 0, 1346.01, 757.442, -67.3098, 3.98505, 120, 8, 0, 536810, 0, 1, 0, 0, 0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` IN (@SPELL_ELEMENTIUM_GRAPPLE_LINE, @SPELL_GIANT_TRIPPED_TRIGGER);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ScriptName`, `Comment`) VALUES
(17, 0, @SPELL_ELEMENTIUM_GRAPPLE_LINE, 0, 0, 31, 1, 3, @NPC_SERVANT_OF_THERAZANE, 0, 0, "", "Elementium Grapple Line targets Servant of Therazane");
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (-@SPELL_ELEMENTIUM_GRAPPLE_LINE, @SPELL_ELEMENTIUM_GRAPPLE_LINE, @SPELL_GIANT_TRIPPED_TRIGGER, @SPELL_TRIPPED_GIANT);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(-@SPELL_ELEMENTIUM_GRAPPLE_LINE, @SPELL_GIANT_TRIPPED_TRIGGER, 0, "Elementium Grapple Line removed casts Giant Tripped Trigger"),
(@SPELL_GIANT_TRIPPED_TRIGGER, @SPELL_ELEMENTIUM_GRAPPLE_LINE_BREAK, 1, "Giant Tripple Trigger casts KC"),
(@SPELL_TRIPPED_GIANT, -@SPELL_ELEMENTIUM_GRAPPLE_LINE, 2, "Tripped Giant makes immune to Elementium Grapple Line");

-- [SQL] Quests - Making Things Crystal Clear fixed
SET @GO_CHALKY_CRYSTAL_FORMATION := 204296;
SET @OGUID := 41629;
UPDATE `gameobject_template` SET `flags` = 4, `WDBVerified` = 15595 WHERE `entry` = @GO_CHALKY_CRYSTAL_FORMATION;
DELETE FROM `gameobject` WHERE `id` = @GO_CHALKY_CRYSTAL_FORMATION;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@OGUID+0, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 835.248, 1251.75, 34.7271, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+1, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 831.816, 1379.34, 30.7533, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+2, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 779.401, 1156.57, 35.8017, 2.68781, 0, 0, 0.97437, 0.224951, 300, 100, 1),
(@OGUID+3, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 851.589, 1443.33, 25.7365, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+4, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 956.347, 1311.19, 39.7444, 0.279252, 0, 0, 0.139173, 0.990268, 300, 100, 1),
(@OGUID+5, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 853.064, 1441.6, 24.7466, 2.77506, 0, 0, 0.983254, 0.182238, 300, 100, 1),
(@OGUID+6, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 924.469, 1432.69, 49.836, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+7, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1191.14, 1180.01, 47.9174, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+8, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1318.02, 1305.74, 38.1247, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+9, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 874.762, 1504.16, 49.1794, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+10, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 779.767, 1404.64, 23.1001, -2.09439, 0, 0, -0.866025, 0.500001, 300, 100, 1),
(@OGUID+11, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 941.425, 1593.11, 47.1629, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+12, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 827.094, 1526.16, 50.0667, 2.77506, 0, 0, 0.983254, 0.182238, 300, 100, 1),
(@OGUID+13, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 770.271, 1452.24, 20.164, -1.18682, 0, 0, -0.559193, 0.829038, 300, 100, 1),
(@OGUID+14, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 943.503, 1470.78, 46.9691, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+15, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 658.969, 1184.5, 34.1783, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+16, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 590.233, 1229.81, 33.0791, 0, 0, 0, 0, 1, 300, 100, 1),
(@OGUID+17, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 758.262, 1320.32, 31.9974, 0, 0, 0, 0, 1, 300, 100, 1),
(@OGUID+18, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 934.052, 1538.49, 45.5264, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+19, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 826.047, 1484.83, 44.3514, 0.715584, 0, 0, 0.350207, 0.936672, 300, 100, 1),
(@OGUID+20, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 942.929, 1594.89, 47.5286, -1.18682, 0, 0, -0.559193, 0.829038, 300, 100, 1),
(@OGUID+21, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 965.913, 1473.05, 26.8427, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+22, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 676.615, 1332.9, 18.6275, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+23, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 670.453, 1290.66, 24.6153, 0, 0, 0, 0, 1, 300, 100, 1),
(@OGUID+24, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 718.535, 1345.16, 26.3288, 0, 0, 0, 0, 1, 300, 100, 1),
(@OGUID+25, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 730.205, 1227.53, 35.5615, 0, 0, 0, 0, 1, 300, 100, 1),
(@OGUID+26, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 729.155, 1304.74, 26.7523, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+27, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 607.269, 1288.72, 21.553, 2.77506, 0, 0, 0.983254, 0.182238, 300, 100, 1),
(@OGUID+28, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 676.438, 1334.72, 18.2871, -0.575958, 0, 0, -0.284015, 0.95882, 300, 100, 1),
(@OGUID+29, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1134.38, 1208.56, 55.3818, 0, 0, 0, 0, 1, 300, 100, 1),
(@OGUID+30, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1097.04, 1514.13, 44.7313, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+31, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1223.45, 1322.66, 41.4229, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+32, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1394.02, 1506.73, 28.6677, 2.77506, 0, 0, 0.983254, 0.182238, 300, 100, 1),
(@OGUID+33, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1226.06, 1253, 35.335, 2.77506, 0, 0, 0.983254, 0.182238, 300, 100, 1),
(@OGUID+34, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1358.53, 1541.58, 26.123, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+35, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1514.23, 1185.87, 37.8467, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+36, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1052.13, 1390.23, 40.3465, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+37, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1317.34, 1303.44, 37.4914, 1.51843, 0, 0, 0.688354, 0.725375, 300, 100, 1),
(@OGUID+38, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1444.2, 1318.79, 30.3564, 2.77506, 0, 0, 0.983254, 0.182238, 300, 100, 1),
(@OGUID+39, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1184.99, 1457.2, 38.993, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+40, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1641.31, 1206.91, 26.3116, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+41, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1466.8, 1072.7, 47.3332, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1),
(@OGUID+42, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1442.91, 1317.06, 30.6444, 0.575958, 0, 0, 0.284015, 0.95882, 300, 100, 1),
(@OGUID+43, @GO_CHALKY_CRYSTAL_FORMATION, 646, 1, 1, 1339.74, 1389.88, 31.5323, 2.09439, 0, 0, 0.866025, 0.500001, 300, 100, 1);

-- [SQL] Quests - Rallying the Earthen Ring scripted (Feedback #7440)
SET @NPC_WINDSPEAKER_LORVARIUS := 43836;
SET @NPC_THARM_WILDFIRE := 44631;
SET @NPC_STORMCALLER_JALARA := 44633;
SET @NPC_TAWN_WINTERBLUFF := 44634;
SET @NPC_EARTHCALLER_YEVAA := 44646;
SET @NPC_YULDRIS_SMOLDERFURY := 45034;
SET @GOSSIP := 11872;
SET @KILL_CREDIT := 44133;
SET @QUEST_RALLYING_THE_EARTHEN_RING := 26827;
SET @CGUID := 45713;
DELETE FROM `creature` WHERE `id` IN (@NPC_TAWN_WINTERBLUFF, @NPC_YULDRIS_SMOLDERFURY, @NPC_WINDSPEAKER_LORVARIUS, @NPC_STORMCALLER_JALARA);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@CGUID+0, @NPC_TAWN_WINTERBLUFF, 646, 1, 1, 0, 1, 1066.51, 635.141, -45.5443, 2.16421, 30, 0, 0, 464940, 53448, 0, 0, 0, 0),
(@CGUID+1, @NPC_YULDRIS_SMOLDERFURY, 646, 1, 1, 0, 1, 1072.91, 609.425, -44.0159, 0.0872665, 30, 0, 0, 464940, 53448, 0, 0, 0, 0),
(@CGUID+2, @NPC_WINDSPEAKER_LORVARIUS, 646, 1, 1, 0, 0, 1010.16, 629.299, -41.8607, 0.377984, 30, 0, 0, 536810, 42580, 0, 0, 0, 0),
(@CGUID+3, @NPC_STORMCALLER_JALARA, 646, 1, 1, 0, 1, 1049.41, 420.536, -41.5265, 6.13208, 30, 0, 0, 464940, 53448, 0, 0, 0, 0);
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 42573;
UPDATE `creature` SET `spawntimesecs` = 30, `spawndist` = 0, `MovementType` = 0 WHERE `id` IN (@NPC_EARTHCALLER_YEVAA, @NPC_TAWN_WINTERBLUFF, @NPC_YULDRIS_SMOLDERFURY, @NPC_WINDSPEAKER_LORVARIUS, @NPC_THARM_WILDFIRE, @NPC_STORMCALLER_JALARA, 43837, 44666, 44676, 44669, 44362);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (@GOSSIP, 11873);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(@GOSSIP, 0, 0, "We are joining an assault on Lorthuna's Gate. You are needed.", 1, 1, 0, 0, 0, 0, ""),
(11873, 0, 0, "We are joining an assault on Lorthuna's Gate. You are needed.", 1, 1, 0, 0, 0, 0, "");
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `faction_A` = 2290, `faction_H` = 2290, `KillCredit2` = 0, `exp` = 3, `mindmg` = 465, `maxdmg` = 697, `attackpower` = 174, `dmg_multiplier` = 37.7, `baseattacktime` = 2000, `unit_flags` = 32768, `gossip_menu_id` = @GOSSIP, `npcflag` = `npcflag`|1, `WDBVerified` = 15595, `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` IN (@NPC_EARTHCALLER_YEVAA, @NPC_TAWN_WINTERBLUFF, @NPC_YULDRIS_SMOLDERFURY, @NPC_WINDSPEAKER_LORVARIUS, @NPC_THARM_WILDFIRE, @NPC_STORMCALLER_JALARA);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_EARTHCALLER_YEVAA, @NPC_TAWN_WINTERBLUFF, @NPC_YULDRIS_SMOLDERFURY, @NPC_WINDSPEAKER_LORVARIUS, @NPC_THARM_WILDFIRE, @NPC_STORMCALLER_JALARA) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_EARTHCALLER_YEVAA, 0, 0, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 33, @KILL_CREDIT , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Earthcaller Yevaa - On Gossip Select - KC"),
(@NPC_EARTHCALLER_YEVAA, 0, 1, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Earthcaller Yevaa - On Gossip Select - Close Gossip"),
(@NPC_EARTHCALLER_YEVAA, 0, 2, 3, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Earthcaller Yevaa - On Gossip Select - Say Random Line 0"),
(@NPC_EARTHCALLER_YEVAA, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Earthcaller Yevaa - On Gossip Select - Move Forward 15 yards"),
(@NPC_EARTHCALLER_YEVAA, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Earthcaller Yevaa - On Gossip Select - Despawn"),
(@NPC_TAWN_WINTERBLUFF, 0, 0, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 33, @KILL_CREDIT , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tawn Winterbluff - On Gossip Select - KC"),
(@NPC_TAWN_WINTERBLUFF, 0, 1, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tawn Winterbluff - On Gossip Select - Close Gossip"),
(@NPC_TAWN_WINTERBLUFF, 0, 2, 3, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tawn Winterbluff - On Gossip Select - Say Random Line 0"),
(@NPC_TAWN_WINTERBLUFF, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tawn Winterbluff - On Gossip Select - Move Forward 15 yards"),
(@NPC_TAWN_WINTERBLUFF, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tawn Winterbluff - On Gossip Select - Despawn"),
(@NPC_YULDRIS_SMOLDERFURY, 0, 0, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 33, @KILL_CREDIT , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Yuldris Smolderfury - On Gossip Select - KC"),
(@NPC_YULDRIS_SMOLDERFURY, 0, 1, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Yuldris Smolderfury - On Gossip Select - Close Gossip"),
(@NPC_YULDRIS_SMOLDERFURY, 0, 2, 3, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Yuldris Smolderfury - On Gossip Select - Say Random Line 0"),
(@NPC_YULDRIS_SMOLDERFURY, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Yuldris Smolderfury - On Gossip Select - Move Forward 15 yards"),
(@NPC_YULDRIS_SMOLDERFURY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Yuldris Smolderfury - On Gossip Select - Despawn"),
(@NPC_WINDSPEAKER_LORVARIUS, 0, 0, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 33, @KILL_CREDIT , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Windspeaker Lorvarius - On Gossip Select - KC"),
(@NPC_WINDSPEAKER_LORVARIUS, 0, 1, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Windspeaker Lorvarius - On Gossip Select - Close Gossip"),
(@NPC_WINDSPEAKER_LORVARIUS, 0, 2, 3, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Windspeaker Lorvarius - On Gossip Select - Say Random Line 0"),
(@NPC_WINDSPEAKER_LORVARIUS, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Windspeaker Lorvarius - On Gossip Select - Move Forward 15 yards"),
(@NPC_WINDSPEAKER_LORVARIUS, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Windspeaker Lorvarius - On Gossip Select - Despawn"),
(@NPC_THARM_WILDFIRE, 0, 0, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 33, @KILL_CREDIT , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tharm Wildfire - On Gossip Select - KC"),
(@NPC_THARM_WILDFIRE, 0, 1, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tharm Wildfire - On Gossip Select - Close Gossip"),
(@NPC_THARM_WILDFIRE, 0, 2, 3, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tharm Wildfire - On Gossip Select - Say Random Line 0"),
(@NPC_THARM_WILDFIRE, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tharm Wildfire - On Gossip Select - Move Forward 15 yards"),
(@NPC_THARM_WILDFIRE, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tharm Wildfire - On Gossip Select - Despawn"),
(@NPC_STORMCALLER_JALARA, 0, 0, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 33, @KILL_CREDIT , 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Stormcaller Jalara - On Gossip Select - KC"),
(@NPC_STORMCALLER_JALARA, 0, 1, 0, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Stormcaller Jalara - On Gossip Select - Close Gossip"),
(@NPC_STORMCALLER_JALARA, 0, 2, 3, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Stormcaller Jalara - On Gossip Select - Say Random Line 0"),
(@NPC_STORMCALLER_JALARA, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Stormcaller Jalara - On Gossip Select - Move Forward 15 yards"),
(@NPC_STORMCALLER_JALARA, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Stormcaller Jalara - On Gossip Select - Despawn");
DELETE FROM `creature_text` WHERE `entry` IN (@NPC_EARTHCALLER_YEVAA, @NPC_TAWN_WINTERBLUFF, @NPC_YULDRIS_SMOLDERFURY, @NPC_WINDSPEAKER_LORVARIUS, @NPC_THARM_WILDFIRE, @NPC_STORMCALLER_JALARA);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_EARTHCALLER_YEVAA, 0, 0, "Understood. I'll head there right away.", 12, 0, 100, 0, 0, 0, "Earthcaller Yevaa"),
(@NPC_EARTHCALLER_YEVAA, 0, 1, "Some action. Glad to heart it.", 12, 0, 100, 0, 0, 0, "Earthcaller Yevaa"),
(@NPC_EARTHCALLER_YEVAA, 0, 2, "Got it. I'll head there right away.", 12, 0, 100, 0, 0, 0, "Earthcaller Yevaa"),
(@NPC_EARTHCALLER_YEVAA, 0, 3, "I'm on my way.", 12, 0, 100, 0, 0, 0, "Earthcaller Yevaa"),
(@NPC_EARTHCALLER_YEVAA, 0, 4, "Elements be with us.", 12, 0, 100, 0, 0, 0, "Earthcaller Yevaa"),
(@NPC_EARTHCALLER_YEVAA, 0, 5, "Exactly what I wanted to hear. Let's go.", 12, 0, 100, 0, 0, 0, "Earthcaller Yevaa"),
(@NPC_EARTHCALLER_YEVAA, 0, 6, "I'm glad to hear we're fighting along side the Stonemother herself this time.", 12, 0, 100, 0, 0, 0, "Earthcaller Yevaa"),
(@NPC_EARTHCALLER_YEVAA, 0, 7, "That encampment has been begging for our attention. Let's get this done.", 12, 0, 100, 0, 0, 0, "Earthcaller Yevaa"),
(@NPC_TAWN_WINTERBLUFF, 0, 0, "Understood. I'll head there right away.", 12, 0, 100, 0, 0, 0, "Tawn Winterbluff"),
(@NPC_TAWN_WINTERBLUFF, 0, 1, "Some action. Glad to heart it.", 12, 0, 100, 0, 0, 0, "Tawn Winterbluff"),
(@NPC_TAWN_WINTERBLUFF, 0, 2, "Got it. I'll head there right away.", 12, 0, 100, 0, 0, 0, "Tawn Winterbluff"),
(@NPC_TAWN_WINTERBLUFF, 0, 3, "I'm on my way.", 12, 0, 100, 0, 0, 0, "Tawn Winterbluff"),
(@NPC_TAWN_WINTERBLUFF, 0, 4, "Elements be with us.", 12, 0, 100, 0, 0, 0, "Tawn Winterbluff"),
(@NPC_TAWN_WINTERBLUFF, 0, 5, "Exactly what I wanted to hear. Let's go.", 12, 0, 100, 0, 0, 0, "Tawn Winterbluff"),
(@NPC_TAWN_WINTERBLUFF, 0, 6, "I'm glad to hear we're fighting along side the Stonemother herself this time.", 12, 0, 100, 0, 0, 0, "Tawn Winterbluff"),
(@NPC_TAWN_WINTERBLUFF, 0, 7, "That encampment has been begging for our attention. Let's get this done.", 12, 0, 100, 0, 0, 0, "Tawn Winterbluff"),
(@NPC_YULDRIS_SMOLDERFURY, 0, 0, "Understood. I'll head there right away.", 12, 0, 100, 0, 0, 0, "Yuldris Smolderfury"),
(@NPC_YULDRIS_SMOLDERFURY, 0, 1, "Some action. Glad to heart it.", 12, 0, 100, 0, 0, 0, "Yuldris Smolderfury"),
(@NPC_YULDRIS_SMOLDERFURY, 0, 2, "Got it. I'll head there right away.", 12, 0, 100, 0, 0, 0, "Yuldris Smolderfury"),
(@NPC_YULDRIS_SMOLDERFURY, 0, 3, "I'm on my way.", 12, 0, 100, 0, 0, 0, "Yuldris Smolderfury"),
(@NPC_YULDRIS_SMOLDERFURY, 0, 4, "Elements be with us.", 12, 0, 100, 0, 0, 0, "Yuldris Smolderfury"),
(@NPC_YULDRIS_SMOLDERFURY, 0, 5, "Exactly what I wanted to hear. Let's go.", 12, 0, 100, 0, 0, 0, "Yuldris Smolderfury"),
(@NPC_YULDRIS_SMOLDERFURY, 0, 6, "I'm glad to hear we're fighting along side the Stonemother herself this time.", 12, 0, 100, 0, 0, 0, "Yuldris Smolderfury"),
(@NPC_YULDRIS_SMOLDERFURY, 0, 7, "That encampment has been begging for our attention. Let's get this done.", 12, 0, 100, 0, 0, 0, "Yuldris Smolderfury"),
(@NPC_WINDSPEAKER_LORVARIUS, 0, 0, "Understood. I'll head there right away.", 12, 0, 100, 0, 0, 0, "Windspeaker Lorvarius"),
(@NPC_WINDSPEAKER_LORVARIUS, 0, 1, "Some action. Glad to heart it.", 12, 0, 100, 0, 0, 0, "Windspeaker Lorvarius"),
(@NPC_WINDSPEAKER_LORVARIUS, 0, 2, "Got it. I'll head there right away.", 12, 0, 100, 0, 0, 0, "Windspeaker Lorvarius"),
(@NPC_WINDSPEAKER_LORVARIUS, 0, 3, "I'm on my way.", 12, 0, 100, 0, 0, 0, "Windspeaker Lorvarius"),
(@NPC_WINDSPEAKER_LORVARIUS, 0, 4, "Elements be with us.", 12, 0, 100, 0, 0, 0, "Windspeaker Lorvarius"),
(@NPC_WINDSPEAKER_LORVARIUS, 0, 5, "Exactly what I wanted to hear. Let's go.", 12, 0, 100, 0, 0, 0, "Windspeaker Lorvarius"),
(@NPC_WINDSPEAKER_LORVARIUS, 0, 6, "I'm glad to hear we're fighting along side the Stonemother herself this time.", 12, 0, 100, 0, 0, 0, "Windspeaker Lorvarius"),
(@NPC_WINDSPEAKER_LORVARIUS, 0, 7, "That encampment has been begging for our attention. Let's get this done.", 12, 0, 100, 0, 0, 0, "Windspeaker Lorvarius"),
(@NPC_THARM_WILDFIRE, 0, 0, "Understood. I'll head there right away.", 12, 0, 100, 0, 0, 0, "Tharm Wildfire"),
(@NPC_THARM_WILDFIRE, 0, 1, "Some action. Glad to heart it.", 12, 0, 100, 0, 0, 0, "Tharm Wildfire"),
(@NPC_THARM_WILDFIRE, 0, 2, "Got it. I'll head there right away.", 12, 0, 100, 0, 0, 0, "Tharm Wildfire"),
(@NPC_THARM_WILDFIRE, 0, 3, "I'm on my way.", 12, 0, 100, 0, 0, 0, "Tharm Wildfire"),
(@NPC_THARM_WILDFIRE, 0, 4, "Elements be with us.", 12, 0, 100, 0, 0, 0, "Tharm Wildfire"),
(@NPC_THARM_WILDFIRE, 0, 5, "Exactly what I wanted to hear. Let's go.", 12, 0, 100, 0, 0, 0, "Tharm Wildfire"),
(@NPC_THARM_WILDFIRE, 0, 6, "I'm glad to hear we're fighting along side the Stonemother herself this time.", 12, 0, 100, 0, 0, 0, "Tharm Wildfire"),
(@NPC_THARM_WILDFIRE, 0, 7, "That encampment has been begging for our attention. Let's get this done.", 12, 0, 100, 0, 0, 0, "Tharm Wildfire"),
(@NPC_STORMCALLER_JALARA, 0, 0, "Understood. I'll head there right away.", 12, 0, 100, 0, 0, 0, "Stormcaller Jalara"),
(@NPC_STORMCALLER_JALARA, 0, 1, "Some action. Glad to heart it.", 12, 0, 100, 0, 0, 0, "Stormcaller Jalara"),
(@NPC_STORMCALLER_JALARA, 0, 2, "Got it. I'll head there right away.", 12, 0, 100, 0, 0, 0, "Stormcaller Jalara"),
(@NPC_STORMCALLER_JALARA, 0, 3, "I'm on my way.", 12, 0, 100, 0, 0, 0, "Stormcaller Jalara"),
(@NPC_STORMCALLER_JALARA, 0, 4, "Elements be with us.", 12, 0, 100, 0, 0, 0, "Stormcaller Jalara"),
(@NPC_STORMCALLER_JALARA, 0, 5, "Exactly what I wanted to hear. Let's go.", 12, 0, 100, 0, 0, 0, "Stormcaller Jalara"),
(@NPC_STORMCALLER_JALARA, 0, 6, "I'm glad to hear we're fighting along side the Stonemother herself this time.", 12, 0, 100, 0, 0, 0, "Stormcaller Jalara"),
(@NPC_STORMCALLER_JALARA, 0, 7, "That encampment has been begging for our attention. Let's get this done.", 12, 0, 100, 0, 0, 0, "Stormcaller Jalara");
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = @GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ScriptName`, `Comment`) VALUES
(15, @GOSSIP, 0, 0, 0, 9, 0, @QUEST_RALLYING_THE_EARTHEN_RING, 0, 0, 0, "", "Show gossip if on quest");
DELETE FROM `creature_template_aura` WHERE `entry` = @NPC_THARM_WILDFIRE;
INSERT INTO `creature_template_aura` (`entry`, `aura`) VALUES
(@NPC_THARM_WILDFIRE, 78148),
(@NPC_THARM_WILDFIRE, 78150);
DELETE FROM `creature_template_bytes` WHERE `entry` = @NPC_THARM_WILDFIRE;
INSERT INTO `creature_template_bytes` (`entry`, `index`, `bytes`) VALUES
(@NPC_THARM_WILDFIRE, 0, 3);

-- [SQL] General - Horde portal in the Temple of Earth (Deepholm) added
/*DELETE FROM `gameobject` WHERE `id` IN (195139, 195140, 205272, 205273) AND `map` = 646;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(197195, 205272, 646, 1, 1, 965.25, 577.229, -44.2583, -0.872664, 0, 0, -0.422618, 0.906308, 90, 255, 1),
(197196, 205273, 646, 1, 1, 990.495, 454.457, -44.2477, 1.29154, 0, 0, 0.601814, 0.798636, 90, 255, 1);
DELETE FROM `spell_dbc` WHERE `Id` IN (84505, 84506);
INSERT INTO `spell_dbc` (`Id`, `castingTimeIndex`, `rangeIndex`, `durationIndex`, `spellIconId`) VALUES
(84505, 1, 1, 0, 1),
(84506, 1, 1, 0, 1);
DELETE FROM `spelleffect_dbc` WHERE `effectSpellId` IN (84505, 84506);
INSERT INTO `spelleffect_dbc` (`Id`, `effect`, `effectApplyAuraName`, `effectRadiusIndex`, `effectBasePoints`, `effectMiscValue`, `effectImplicitTargetA`, `effectImplicitTargetB`, `effectSpellId`, `effectIndex`) VALUES
(300010, 5, 0, 0, 0, 0, 1, 17, 84505, 0),
(300011, 5, 0, 0, 0, 0, 1, 17, 84506, 0);
DELETE FROM `spell_target_position` WHERE `id` IN (84505, 84506);
INSERT INTO `spell_target_position` (`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(84505, 0, 0, -8208.25, 429.244, 118.11, 3.4775),
(84506, 0, 1, 2049.2, -4376.8, 98.8446, 0.785398);*/

-- [SQL] Quests - Putting the Pieces Together scripted (Feedback #7420)
SET @NPC_DORMANT_STONEBOUND_ELEMENTAL := 43115;
SET @NPC_FLAYER := 42521;
SET @SPELL_FEIGN_DEATH := 29266;
SET @SPELL_GENERAL_TRIGGER := 43709;
SET @SPELL_HARDENED := 82839;
SET @SPELL_VULNERABLE := 82840;
SET @SPELL_ROCK_BASH := 82841;
SET @KILL_CREDIT := @NPC_DORMANT_STONEBOUND_ELEMENTAL;
SET @QUEST_PUTTING_THE_PIECES_TOGETHER := 26439;
UPDATE `creature_template` SET `exp` = 3, `faction_A` = 2281, `faction_H` = 2281, `npcflag` = 16777216, `speed_walk` = 1.55556, `unit_flags` = 768, `WDBVerified` = 15595, `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @NPC_DORMANT_STONEBOUND_ELEMENTAL;
UPDATE creature SET `spawntimesecs` = 30, `MovementType` = 0, `spawndist` = 0 WHERE `id` = @NPC_DORMANT_STONEBOUND_ELEMENTAL;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_DORMANT_STONEBOUND_ELEMENTAL AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_DORMANT_STONEBOUND_ELEMENTAL, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, @SPELL_FEIGN_DEATH, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dormant Stonebound Elemental - On Spawn - Cast Feign Death"),
(@NPC_DORMANT_STONEBOUND_ELEMENTAL, 0, 1, 2, 73, 0, 100, 0, 0, 0, 0, 0, 33, @KILL_CREDIT, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dormant Stonebound Elemental - On Spellclick - KC"),
(@NPC_DORMANT_STONEBOUND_ELEMENTAL, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 83, 16777216, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dormant Stonebound Elemental - On Spellclick - Remove Spellclick NpcFlag"),
(@NPC_DORMANT_STONEBOUND_ELEMENTAL, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 28, @SPELL_FEIGN_DEATH, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dormant Stonebound Elemental - On Spellclick - Remove Feign Death Aura"),
(@NPC_DORMANT_STONEBOUND_ELEMENTAL, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 83, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dormant Stonebound Elemental - On Spellclick - Remove Unit Flag"),
(@NPC_DORMANT_STONEBOUND_ELEMENTAL, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 11, @NPC_FLAYER, 40, 0, 0, 0, 0, 0, "Nepenthe-Dormant Stonebound Elemental - On Spellclick - Attack nearby Flayer"),
(@NPC_DORMANT_STONEBOUND_ELEMENTAL, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 89, 30, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dormant Stonebound Elemental - On Spellclick - Set Movement Random"),
(@NPC_DORMANT_STONEBOUND_ELEMENTAL, 0, 7, 0, 1, 0, 100, 0, 50000, 50000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dormant Stonebound Elemental - OOC - Despawn"),
(@NPC_DORMANT_STONEBOUND_ELEMENTAL, 0, 8, 0, 4, 0, 100, 0, 0, 0, 0, 0, 11, @SPELL_HARDENED, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dormant Stonebound Elemental - On Aggro - Cast Hardened"),
(@NPC_DORMANT_STONEBOUND_ELEMENTAL, 0, 9, 0, 0, 0, 100, 0, 5000, 7000, 12000, 14000, 11, @SPELL_ROCK_BASH, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Dormant Stonebound Elemental - IC - Cast Rock Bash");
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = -@SPELL_HARDENED;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(-@SPELL_HARDENED, @SPELL_VULNERABLE, 0, "Hardened removed casts Vulnerable");
DELETE FROM `creature_template_aura` WHERE `entry` = @NPC_DORMANT_STONEBOUND_ELEMENTAL;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = @NPC_DORMANT_STONEBOUND_ELEMENTAL;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(@NPC_DORMANT_STONEBOUND_ELEMENTAL, @SPELL_GENERAL_TRIGGER, 1, 0);

-- [SQL] Quests - Fly Over (A,H) scripted (Feedback #1556)
SET @AREATRIGGER := 6216;
DELETE FROM `areatrigger_involvedrelation` WHERE `quest` = 27006;
DELETE FROM `creature_queststarter` WHERE `quest` = 27008;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(44818, 27008);
DELETE FROM `creature_questender` WHERE `quest` = 27008;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(44818, 27008);
UPDATE `creature_template` SET `npcflag` = `npcflag`|2 WHERE `entry` = 44818;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @AREATRIGGER AND `source_type` = 2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@AREATRIGGER, 2, 0, 0, 46, 0, 100, 0, @AREATRIGGER, 0, 0, 0, 33, 44839, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Areatrigger Masters' Gate - On Trigger - Quest Credit");
DELETE FROM `areatrigger_scripts` WHERE `entry` = @AREATRIGGER;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(@AREATRIGGER, 'SmartTrigger');

-- [SQL] Quests - Something that Burns scripted (Feedback #7403)
UPDATE `creature_template` SET `KillCredit2` = 0 WHERE `entry` = 46611;
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82, `exp` = 3 WHERE `entry` = 45100;
DELETE FROM `gameobject` WHERE `id` = 301075;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(216759, 301075, 646, 1, 1, 797.528, 296.965, -66.1024, 1.68324, 0, 0, 0, 0, 120, 100, 1);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (45100, 46611) AND `source_type` = 0;