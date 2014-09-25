-- [SQL] Quests - Sniffing Out the Perpetrator (A, H) scripted (Feedback #3670)
-- [SQL] Quests - Catching up with Brann scripted (Feedback #3659)
SET @NPC_FROSTHOUND := 29677;
SET @NPC_THULIN := 29695;
SET @NPC_PURSUER := 29696;
SET @NPC_TRACKER := 29652;
SET @SPELL_FROSTHOUND_PERIODIC := 54993;
SET @SPELL_SUMMON_FROSTHOUND := 54964;
SET @SPELL_RIDE_VEHICLE := 63151;
SET @SPELL_NET := 54997;
SET @SPELL_ICE_SLICK := 54996;
SET @SPELL_FROSTHOUND_KC := 55036;
SET @SPELL_NET2 := 11920;
SET @ITEM_BRANNS_COMMUNICATOR := 40971;
SET @SPELL_CONTACT_BRANN1 := 61122;
SET @SPELL_CONTACT_BRANN2 := 55038;
SET @SPELL_BRANN_SIGNAL := 55578;
SET @NPC_BRANN := 29579;
SET @GOSSIP_BRANN := 9853;
SET @QUEST_PERPETRATOR_A := 12855;
SET @QUEST_CATCHING_UP := 12920;
SET @QUEST_KEYSTONE := 13285;
-- Horde
SET @NPC_FROSTBITE := 29857;
SET @NPC_FROSTBITE_VEHICLE := 29903;
SET @SPELL_RIDE_FROSTBITE_PRIMER := 55457;
SET @SPELL_RIDE_FROSTBITE := 55460;
SET @SPELL_FROSTBITE_KC := 55477;
SET @QUEST_PERPETRATOR_H := 12910;
UPDATE `creature_template` SET `minlevel` = 79, `maxlevel` = 79, `exp` = 2, `faction_A` = 1981, `faction_H` = 1981, `mindmg` = 376, `maxdmg` = 563, `attackpower` = 141, `unit_class` = 2, `VehicleId` = 0, `flags_extra` = 2  WHERE `entry` = @NPC_FROSTBITE;
UPDATE `creature_template` SET `faction_A` = 190, `faction_H` = 190, `minlevel` = 79, `maxlevel` = 79, `exp` = 2, `faction_A` = 1981, `faction_H` = 1981, `mindmg` = 376, `maxdmg` = 563, `attackpower` = 141, `unit_class` = 2, `spell1` = @SPELL_NET, `spell2` = @SPELL_ICE_SLICK, `VehicleId` = 202, `flags_extra` = 2, `AIname` = 'SmartAI' WHERE `entry` = @NPC_FROSTBITE_VEHICLE;
UPDATE `creature` SET `spawntimesecs` = 10 WHERE  `id` = @NPC_FROSTBITE;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = @NPC_FROSTBITE;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(@NPC_FROSTBITE, @SPELL_RIDE_FROSTBITE, 11, 0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 18 AND `SourceGroup` = @NPC_FROSTBITE;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(18, @NPC_FROSTBITE, @SPELL_RIDE_FROSTBITE, 0, 0, 9, 0, @QUEST_PERPETRATOR_H, 0, 0, 0, 0, "", "Required quest active for spellclick"),
(18, @NPC_FROSTBITE, @SPELL_RIDE_FROSTBITE, 0, 0, 8, 0, @QUEST_PERPETRATOR_H, 0, 0, 1, 0, "", "Forbidden rewarded quest for spellclick");
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = @SPELL_RIDE_FROSTBITE;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(@SPELL_RIDE_FROSTBITE, @SPELL_RIDE_VEHICLE, 2, 'Frostbite Vehicle');
DELETE FROM `creature_template_addon` WHERE `entry` IN (@NPC_THULIN, @NPC_FROSTHOUND, @NPC_FROSTBITE_VEHICLE);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(@NPC_THULIN, 0, 0, 1, 257, 0, ''),
(@NPC_FROSTHOUND, 0, 0, 0, 0, 0, 54993),
(@NPC_FROSTBITE_VEHICLE, 0, 0, 0, 0, 0, 54993);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_FROSTBITE, @NPC_FROSTBITE_VEHICLE);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_FROSTBITE_VEHICLE, 0, 0, 1, 27, 0, 100, 0, 300000, 300000, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Frostbite Vehicle - On Passenger Boarded - Set React State Passive"),
(@NPC_FROSTBITE_VEHICLE, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Frostbite Vehicle - On Passenger Boarded - Disallow Combat Movement"),
(@NPC_FROSTBITE_VEHICLE, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Frostbite Vehicle - On Passenger Boarded - Disable Autoattack"),
(@NPC_FROSTBITE_VEHICLE, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 1, @NPC_FROSTBITE_VEHICLE, 0, @QUEST_PERPETRATOR_H, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe-Frostbite Vehicle - On Passenger Boarded - Start Waypoint'),
(@NPC_FROSTBITE_VEHICLE, 0, 4, 5, 40, 0, 100, 0, 1, @NPC_FROSTBITE_VEHICLE, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe-Frostbite Vehicle - On Reach Waypoint 1 - Say Line 0'),
(@NPC_FROSTBITE_VEHICLE, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Frostbite Vehicle - On Reach Waypoint 1 - Say Line 1"),
(@NPC_FROSTBITE_VEHICLE, 0, 6, 0, 40, 0, 100, 0, 18, @NPC_FROSTBITE_VEHICLE, 0, 0, 12, @NPC_THULIN, 6, 120000, 0, 0, 0, 8, 0, 0, 0, 7314.24, -1613.46, 944.969, 1.63057, 'Nepenthe-Frostbite Vehicle - On Reach Waypoint 18 - Summon Tracker Thulin'),
(@NPC_FROSTBITE_VEHICLE, 0, 7, 8, 40, 0, 100, 0, 19, @NPC_FROSTBITE_VEHICLE, 0, 0, 11, @SPELL_FROSTBITE_KC, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe-Frostbite Vehicle - On Reach Waypoint 19 - KC'),
(@NPC_FROSTBITE_VEHICLE, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe-Frostbite Vehicle - On Reach Waypoint 19 - Say Line 2'),
(@NPC_FROSTBITE_VEHICLE, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe-Frostbite Vehicle - On Reach Waypoint 19 - Force Despawn');
DELETE FROM `creature_text` WHERE `entry`=@NPC_FROSTBITE_VEHICLE;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_FROSTBITE_VEHICLE, 0, 0, "The iron dwarves followed you! Use the net and the Ice slick to escape!", 41, 0, 100, 0, 0, 0, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 1, 0, "Frostbite manages to pickup the scent.", 16, 0, 100, 0, 0, 0, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 2, 0, "Frostbite has located the thief's hiding place.", 16, 0, 100, 0, 0, 0, 'Frostbite');
DELETE FROM `waypoints` WHERE `entry`=@NPC_FROSTBITE_VEHICLE;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@NPC_FROSTBITE_VEHICLE, 1, 7755.83, -1072.43, 926.902, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 2, 7736.92, -1099.78, 923.503, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 3, 7712.94, -1132.85, 921.549, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 4, 7685.26, -1155.8, 926.278, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 5, 7656.46, -1180.44, 925.505, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 6, 7620.23, -1212.61, 928.806, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 7, 7601.26, -1234.68, 928.082, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 8, 7577.5, -1266.42, 924.56, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 9, 7546.91, -1311.19, 928.367, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 10, 7518.9, -1352.72, 931.303, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 11, 7488.28, -1387.93, 935.057, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 12, 7468.97, -1407.38, 935.665, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 13, 7438.55, -1437.15, 936.568, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 14, 7416.31, -1457.05, 936.204, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 15, 7392.4, -1478.45, 933.01, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 16, 7367.62, -1500.62, 931.568, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 17, 7348.2, -1521.61, 932.188, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 18, 7325.03, -1548.56, 937.637, 'Frostbite'),
(@NPC_FROSTBITE_VEHICLE, 19, 7309.73, -1569.84, 941.399, 'Frostbite');
-- Alliance
UPDATE `creature_template` SET `faction_A` = 190, `faction_H` = 190, `minlevel` = 80, `maxlevel` = 80, `mindmg` = 422, `maxdmg` = 586, `attackpower` = 642, `spell1` = @SPELL_NET, `spell2` = @SPELL_ICE_SLICK, `flags_extra` = 2, `AIname` = 'SmartAI' WHERE `entry` = @NPC_FROSTHOUND;
UPDATE `creature_template` SET `minlevel` = 79, `speed_run` = 0.99206, `maxdmg` = 564, `attackpower` = 582 WHERE `entry` = @NPC_THULIN;
UPDATE `creature_template` SET `lootid` = 0, `mingold` = 0, `maxgold` = 0, `flags_extra` = 64, `AIname` = 'SmartAI' WHERE `entry` = @NPC_PURSUER;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC_PURSUER AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_PURSUER, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 46, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Stormforged Pursuer - On Spawn - Move Forward"),
(@NPC_PURSUER, 0, 1, 0, 9, 0, 100, 0, 5, 25, 3500, 6100, 11, 55007, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Stormforged Pursuer - IC - Cast Throw Hammer");
DELETE FROM `creature_loot_template` WHERE `entry` = @NPC_PURSUER;
DELETE FROM `creature` WHERE `id` IN (@NPC_PURSUER, @NPC_THULIN);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `item` = 42105;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `item` = @ITEM_BRANNS_COMMUNICATOR;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 1 AND `SourceEntry` = @ITEM_BRANNS_COMMUNICATOR;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(1, @NPC_THULIN, @ITEM_BRANNS_COMMUNICATOR, 0, 9, @QUEST_PERPETRATOR_A, 0, 0, 0, '',"Tracker Thulin drops Brann's Communicator when player has quest"),
(1, @NPC_THULIN, @ITEM_BRANNS_COMMUNICATOR, 0, 9, @QUEST_PERPETRATOR_H, 0, 0, 0, '',"Tracker Thulin drops Brann's Communicator when player has quest");
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = @SPELL_SUMMON_FROSTHOUND;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(@SPELL_SUMMON_FROSTHOUND, @SPELL_RIDE_VEHICLE, 2, 'Summon and Mount Frosthound');
DELETE FROM `spell_scripts` WHERE `id` = @SPELL_CONTACT_BRANN1;
INSERT INTO `spell_scripts` (`id`, `effIndex`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(@SPELL_CONTACT_BRANN1, 0, 2, 7, @QUEST_CATCHING_UP, 50, 0, 0, 0, 0, 0);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = @SPELL_CONTACT_BRANN1;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(@SPELL_CONTACT_BRANN1, @SPELL_CONTACT_BRANN2, 1, 'Contact Brann');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceID`=15 AND `SourceGroup`=@GOSSIP_BRANN;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, @GOSSIP_BRANN, 1, 0, 9, @QUEST_CATCHING_UP, 0, 0, 0, '', "Show gossip option if player is on quest"),
(15, @GOSSIP_BRANN, 2, 0, 9, @QUEST_KEYSTONE, 0, 0, 0, '', "Show gossip option if player is on quest");
DELETE FROM `conditions` WHERE `SourceEntry` IN (@SPELL_ICE_SLICK, @SPELL_NET, @SPELL_NET2) AND `SourceTypeOrReferenceId` = 17;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC_FROSTHOUND AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_FROSTHOUND, 0, 0, 1, 27, 0, 100, 0, 300000, 300000, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Frosthound - On Passenger Boarded - Set React State Passive"),
(@NPC_FROSTHOUND, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Frosthound - On Passenger Boarded - Disallow Combat Movement"),
(@NPC_FROSTHOUND, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Frosthound - On Passenger Boarded - Disable Autoattack"),
(@NPC_FROSTHOUND, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 1, @NPC_FROSTHOUND, 0, @QUEST_PERPETRATOR_A, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe-Frosthound - On Passenger Boarded - Start Waypoint'),
(@NPC_FROSTHOUND, 0, 4, 6, 40, 0, 100, 0, 1, @NPC_FROSTHOUND, 0, 0, 54, 2500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe-Frosthound - On Reach Waypoint 1 - WP Pause'),
(@NPC_FROSTHOUND, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Frosthound - On Reach Waypoint 1 - Say Line 0"),
(@NPC_FROSTHOUND, 0, 6, 0, 40, 0, 100, 0, 2, @NPC_FROSTHOUND, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe-Frosthound - On Reach Waypoint 2 - Say Line 1'),
(@NPC_FROSTHOUND, 0, 7, 0, 40, 0, 100, 0, 59, @NPC_FROSTHOUND, 0, 0, 12, @NPC_THULIN, 6, 120000, 0, 0, 0, 8, 0, 0, 0, 7314.24, -1613.46, 944.969, 1.63057, 'Nepenthe-Frosthound - On Reach Waypoint 59 - Summon Tracker Thulin'),
(@NPC_FROSTHOUND, 0, 8, 9, 40, 0, 100, 0, 60, @NPC_FROSTHOUND, 0, 0, 11, @SPELL_FROSTHOUND_KC, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe-Frosthound - On Reach Waypoint 60 - KC'),
(@NPC_FROSTHOUND, 0, 9, 10, 61, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe-Frosthound - On Reach Waypoint 60 - Say Line 2'),
(@NPC_FROSTHOUND, 0, 10, 11, 61, 0, 100, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe-Frosthound - On Reach Waypoint 60 - Say Line 3'),
(@NPC_FROSTHOUND, 0, 11, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe-Frosthound - On Reach Waypoint 60 - Force Despawn');
DELETE FROM `creature_text` WHERE `entry`=@NPC_FROSTHOUND;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_FROSTHOUND, 0, 0, "The Frosthound sniffs the ground to pickup the scent.", 16, 0, 100, 0, 0, 0, 'Frosthound'),
(@NPC_FROSTHOUND, 1, 0, "You've been seen! Use the net and the Ice slick to keep the dwarves away!", 41, 0, 100, 0, 0, 0, 'Frosthound'),
(@NPC_FROSTHOUND, 2, 0, "The Frosthound has located the thief's hiding place. Confront him!", 41, 0, 100, 0, 0, 0, 'Frosthound'),
(@NPC_FROSTHOUND, 3, 0, "The Frosthound has located the thief's hiding place.", 16, 0, 100, 0, 0, 0, 'Frosthound');
DELETE FROM `waypoints` WHERE `entry`=@NPC_FROSTHOUND;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@NPC_FROSTHOUND, 1, 7157.6, -749.233, 891.292,'Frosthound'),
(@NPC_FROSTHOUND, 2, 7160.55, -762.419, 891.609,'Frosthound'),
(@NPC_FROSTHOUND, 3, 7170.13, -770.648, 896.322,'Frosthound'),
(@NPC_FROSTHOUND, 4, 7177.71, -786.723, 902.513,'Frosthound'),
(@NPC_FROSTHOUND, 5, 7189.79, -791.76, 910.217,'Frosthound'),
(@NPC_FROSTHOUND, 6, 7201.45, -796.622, 916.71,'Frosthound'),
(@NPC_FROSTHOUND, 7, 7213.74, -807.099, 921.644,'Frosthound'),
(@NPC_FROSTHOUND, 8, 7224.24, -820.874, 925.144,'Frosthound'),
(@NPC_FROSTHOUND, 9, 7239.26, -840.584, 926.593,'Frosthound'),
(@NPC_FROSTHOUND, 10, 7256.41, -863.083, 924.847,'Frosthound'),
(@NPC_FROSTHOUND, 11, 7263.65, -872.586, 925.201,'Frosthound'),
(@NPC_FROSTHOUND, 12, 7269.28, -888.659, 925.843,'Frosthound'),
(@NPC_FROSTHOUND, 13, 7275.16, -905.428, 926.98,'Frosthound'),
(@NPC_FROSTHOUND, 14, 7276.14, -915.678, 925.461,'Frosthound'),
(@NPC_FROSTHOUND, 15, 7278.33, -938.709, 920.462,'Frosthound'),
(@NPC_FROSTHOUND, 16, 7283.65, -951.151, 918.645,'Frosthound'),
(@NPC_FROSTHOUND, 17, 7290.44, -969.08, 916.6,'Frosthound'),
(@NPC_FROSTHOUND, 18, 7291.99, -973.185, 916.552,'Frosthound'),
(@NPC_FROSTHOUND, 19, 7296.88, -986.074, 915.191,'Frosthound'),
(@NPC_FROSTHOUND, 20, 7304.25, -1005.54, 913.809,'Frosthound'),
(@NPC_FROSTHOUND, 21, 7309.88, -1020.4, 913.94,'Frosthound'),
(@NPC_FROSTHOUND, 22, 7316.92, -1038.98, 913.523,'Frosthound'),
(@NPC_FROSTHOUND, 23, 7320, -1047.1, 912.882,'Frosthound'),
(@NPC_FROSTHOUND, 24, 7325.39, -1053.9, 910.762,'Frosthound'),
(@NPC_FROSTHOUND, 25, 7333.39, -1066.77, 909.126,'Frosthound'),
(@NPC_FROSTHOUND, 26, 7342.37, -1080.18, 905.768,'Frosthound'),
(@NPC_FROSTHOUND, 27, 7345, -1090.12, 905.005,'Frosthound'),
(@NPC_FROSTHOUND, 28, 7347.6, -1100.28, 906.192,'Frosthound'),
(@NPC_FROSTHOUND, 29, 7350.67, -1112.28, 908.456,'Frosthound'),
(@NPC_FROSTHOUND, 30, 7350.06, -1123.46, 909.414,'Frosthound'),
(@NPC_FROSTHOUND, 31, 7349.21, -1139.1, 912.086,'Frosthound'),
(@NPC_FROSTHOUND, 32, 7345.58, -1152.86, 913.614,'Frosthound'),
(@NPC_FROSTHOUND, 33, 7340.62, -1171.63, 914.562,'Frosthound'),
(@NPC_FROSTHOUND, 34, 7337.51, -1183.38, 915.467,'Frosthound'),
(@NPC_FROSTHOUND, 35, 7332.97, -1200.57, 915.317,'Frosthound'),
(@NPC_FROSTHOUND, 36, 7328.2, -1218.64, 911.529,'Frosthound'),
(@NPC_FROSTHOUND, 37, 7324.14, -1234.01, 908.341,'Frosthound'),
(@NPC_FROSTHOUND, 38, 7321.63, -1243.49, 908.243,'Frosthound'),
(@NPC_FROSTHOUND, 39, 7318.11, -1256.82, 905.496,'Frosthound'),
(@NPC_FROSTHOUND, 40, 7313.75, -1273.33, 902.512,'Frosthound'),
(@NPC_FROSTHOUND, 41, 7308.61, -1292.78, 904.325,'Frosthound'),
(@NPC_FROSTHOUND, 42, 7300.4, -1323.85, 906.684,'Frosthound'),
(@NPC_FROSTHOUND, 43, 7297.06, -1336.5, 906.403,'Frosthound'),
(@NPC_FROSTHOUND, 44, 7294.37, -1346.67, 906.947,'Frosthound'),
(@NPC_FROSTHOUND, 45, 7293.71, -1358.33, 906.466,'Frosthound'),
(@NPC_FROSTHOUND, 46, 7292.93, -1371.87, 907.662,'Frosthound'),
(@NPC_FROSTHOUND, 47, 7292.25, -1383.77, 907.09,'Frosthound'),
(@NPC_FROSTHOUND, 48, 7291.71, -1393.11, 906.718,'Frosthound'),
(@NPC_FROSTHOUND, 49, 7291.06, -1404.55, 908.032,'Frosthound'),
(@NPC_FROSTHOUND, 50, 7290.25, -1418.55, 908.183,'Frosthound'),
(@NPC_FROSTHOUND, 51, 7289.28, -1435.6, 909.872,'Frosthound'),
(@NPC_FROSTHOUND, 52, 7288.25, -1453.57, 911.206,'Frosthound'),
(@NPC_FROSTHOUND, 53, 7290.17, -1466.05, 914.009,'Frosthound'),
(@NPC_FROSTHOUND, 54, 7292.46, -1480.83, 916.541,'Frosthound'),
(@NPC_FROSTHOUND, 55, 7295.63, -1501.38, 920.518,'Frosthound'),
(@NPC_FROSTHOUND, 56, 7298.77, -1521.71, 924.955,'Frosthound'),
(@NPC_FROSTHOUND, 57, 7300.91, -1535.58, 929.81,'Frosthound'),
(@NPC_FROSTHOUND, 58, 7303.8, -1554.29, 937.544,'Frosthound'),
(@NPC_FROSTHOUND, 59, 7306.27, -1570.23, 941.36,'Frosthound'),
(@NPC_FROSTHOUND, 60, 7308.43, -1584.27, 943.497,'Frosthound');

-- Catching up with Brann
DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP_BRANN;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`) VALUES
(@GOSSIP_BRANN, 0, 0, "Do you understand me? We should be able to understand each other now.", 1, 1, 0, 0, 0, 0),
(@GOSSIP_BRANN, 1, 0, "What kind of help do you require?", 1, 1, 10145, 0, 0, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceGroup` = 1 AND `SourceEntry` = @SPELL_BRANN_SIGNAL;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, @SPELL_BRANN_SIGNAL, 0, 0, 31, 0, 3, @NPC_BRANN, 0, 0, 0, "", "Spell Brann Signal to Self targets Brann");

UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = @NPC_BRANN;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_BRANN AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_BRANN*100 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC_BRANN, 0, 0, 1, 62, 0, 100, 0, @GOSSIP_BRANN, 0, 0, 0, 11, 55579, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard - On gossip select - Spellcast Trigger Brann Signal'),
(@NPC_BRANN, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard - On gossip select - Close gossip'),
(@NPC_BRANN, 0, 2, 0, 8, 0, 100, 0, @SPELL_BRANN_SIGNAL, 0, 0, 0, 80, @NPC_BRANN*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard - On spellhit Brann Signal to Self - Start script'),
(@NPC_BRANN*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard script - Say text0'),
(@NPC_BRANN*100, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard script - Say text0'),
(@NPC_BRANN*100, 9, 2, 0, 0, 0, 100, 0, 3100, 3100, 0, 0, 5, 25, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard script - Play emote point'),
(@NPC_BRANN*100, 9, 3, 0, 0, 0, 100, 0, 3200, 3200, 0, 0, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard script - Say text1'),
(@NPC_BRANN*100, 9, 4, 0, 0, 0, 100, 0, 5600, 5600, 0, 0, 84, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard script - Player say text2'),
(@NPC_BRANN*100, 9, 5, 0, 0, 0, 100, 0, 6300, 6300, 0, 0, 1, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard script - Say text3'),
(@NPC_BRANN*100, 9, 6, 0, 0, 0, 100, 0, 7200, 7200, 0, 0, 84, 4, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard script - Player say text4'),
(@NPC_BRANN*100, 9, 7, 0, 0, 0, 100, 0, 6400, 6400, 0, 0, 1, 5, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard script - Say text5'),
(@NPC_BRANN*100, 9, 8, 0, 0, 0, 100, 0, 7200, 7200, 0, 0, 1, 6, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard script - Say text6'),
(@NPC_BRANN*100, 9, 9, 0, 0, 0, 100, 0, 7200, 7200, 0, 0, 1, 7, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard script - Say text7'),
(@NPC_BRANN*100, 9, 10, 0, 0, 0, 100, 0, 7200, 7200, 0, 0, 1, 8, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard script - Say text8'),
(@NPC_BRANN*100, 9, 11, 0, 0, 0, 100, 0, 7100, 7100, 0, 0, 1, 9, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard script - Say text9'),
(@NPC_BRANN*100, 9, 12, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 33, @NPC_BRANN, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard script - Quest credit');
DELETE FROM `creature_text` WHERE `entry` = @NPC_BRANN;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_BRANN, 0, 0, 'I... I can understand you now! Well, now that we can talk to each other, you have some explaining to do!', 12, 0, 100, 5, 0, 0, 'Brann Bronzebeard text0'),
(@NPC_BRANN, 1, 0, 'How did you get my communicator from the Explorers League?', 12, 0, 100, 5, 0, 0, 'Brann Bronzebeard text1'),
(@NPC_BRANN, 2, 0, 'If the Explorers League sent men, I didn\'t see any trace of them. I found your note buried in a camp overrun by iron dwarves.', 12, 0, 100, 0, 0, 0, 'Player text2'),
(@NPC_BRANN, 3, 0, 'You have my thanks for dispatching the iron dwarves. But why would the Horde have an interest in me?', 12, 0, 100, 6, 0, 0, 'Brann Bronzebeard text3'),
(@NPC_BRANN, 4, 0, 'A scout found the remains of your journal in Thor Modan. We\'ve been looking for you ever since.', 12, 0, 100, 0, 0, 0, 'Player text4'),
(@NPC_BRANN, 5, 0, 'That wouldn\'t be Scout Vor\'takh, would it? Even I know of his reputation for ruthlessness. He means to abduct me, then?', 12, 0, 100, 5, 0, 0, 'Brann Bronzebeard text5'),
(@NPC_BRANN, 6, 0, 'If you\'ve seen the journal, then you know what I\'ve been discovering. The titans\' own creations are at war with each other!', 12, 0, 100, 5, 0, 0, 'Brann Bronzebeard text6'),
(@NPC_BRANN, 7, 0, 'Loken and his iron dwarf minions have ousted the Earthen from Ulduar and taken over the city.', 12, 0, 100, 5, 0, 0, 'Brann Bronzebeard text7'),
(@NPC_BRANN, 8, 0, 'If we spend our time and strength fighting with each other, Loken will use Ulduar\'s resources to destroy both Horde and Alliance.', 12, 0, 100, 6, 0, 0, 'Brann Bronzebeard text8'),
(@NPC_BRANN, 9, 0, 'Speak to the commander at your post, lad, and persuade him to abandon Vor\'takh\'s foolish plan.', 12, 0, 100, 6, 0, 0, 'Brann Bronzebeard Text10');