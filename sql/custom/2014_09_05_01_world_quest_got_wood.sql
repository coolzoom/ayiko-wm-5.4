/*---------------------------------------------------------------------------------------------------------------*/
/*                                                 Quest "Got Wood?"                                             */
/*---------------------------------------------------------------------------------------------------------------*/
SET @NPC_KENDRAK := 8582;
SET @GOSSIP_KENDRAK := 10411;
SET @ITEM_REINS := 45051;
SET @QUEST_GOT_WOOD := 13628;
DELETE FROM `creature` WHERE `id` IN (33374, @NPC_KENDRAK, 33421);
DELETE FROM `creature_template` WHERE `entry` IN (33374, 33386, @NPC_KENDRAK, 33421);
DELETE FROM `creature_template_addon` WHERE `entry` = 33421;

INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `difficulty_entry_4`, `difficulty_entry_5`, `difficulty_entry_6`, `difficulty_entry_7`, `difficulty_entry_8`, `difficulty_entry_9`, `difficulty_entry_10`, `difficulty_entry_11`, `difficulty_entry_12`, `difficulty_entry_13`, `difficulty_entry_14`, `difficulty_entry_15`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(33374, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28595, 0, 0, 0, 'Brutusk', '', 'vehichleCursor', 0, 25, 25, 0, 0, 1981, 1981, 0, 0, 1.38571, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 3000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2086, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 16048),
(@NPC_KENDRAK, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7889, 0, 0, 0, 'Kadrak', '', '', 10411, 31, 31, 0, 0, 1515, 1515, 3, 0, 1.14286, 1, 1.14286, 1, 0, 44, 58, 0, 106, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 30, 44, 9, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2086, 0, 0, '', 0, 1, 1, 1.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 466, 0, 2, 'npc_kadrak_the_barrens', 16048),
(33386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28595, 0, 0, 0, 'Brutusk', '', 'vehichleCursor', 0, 1, 1, 0, 0, 35, 35, 0, 0, 1, 1.14286, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2086, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 180, 1, 0, 0, 0, 'npc_brutusk_qgw', 16048),
(33421, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28616, 0, 0, 0, 'Gorka', '', '', 0, 25, 25, 0, 0, 125, 125, 3, 0, 1, 1.14286, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2086, 0, 0, '', 0, 3, 1, 1.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 16048);

/*---------------------------------------------------------------------------------------------------------------*/
-- Brutusk
SET @GUID = (SELECT MAX(guid) FROM `creature`);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`) VALUES 
(@GUID + 1, 33374, 1, 17, 1703, 1, 1, 28595, 0, 1195.28, -2258.38, 91.7586, 0.314159, 120, 3, 0, 699, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 33374;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(33374, 62885, 2, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 18 AND `SourceEntry` = 62885;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 33374, 62885, 0, 0, 9, 0, 13628, 0, 0, 0, 0, '', NULL),
(18, 33374, 62885, 0, 0, 2, 0, 45051, 1, 0, 0, 0, '', NULL);
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Kadrak
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_KENDRAK, `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @NPC_KENDRAK;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` = @NPC_KENDRAK;
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `action_type`, `action_param1`, `action_param2`, `target_type`, `comment`) VALUES
(@NPC_KENDRAK, 0, 62, @GOSSIP_KENDRAK, 56, @ITEM_REINS, 1, 7, "Nepenthe-Kadrak - On Gossip Select - Add Item"),
(@NPC_KENDRAK, 1, 62, @GOSSIP_KENDRAK, 72, 0, 0, 7, "Nepenthe-Kadrak - On Gossip Select - Close Gossip");
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = @NPC_KENDRAK;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 0, @NPC_KENDRAK, 0, 0, 2, 0, @ITEM_REINS, 1, 0, 1, 0, "", "Only execute SAI if player doesn't have item");

DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP_KENDRAK;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(@GOSSIP_KENDRAK, 0, 0, "Truun is in need of lumber from the Warsong Camp. I need to use Brutusk to haul it.", 1, 1, 0, 0, 0, 0, "");
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = @GOSSIP_KENDRAK;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, @GOSSIP_KENDRAK, 0, 0, 9, @QUEST_GOT_WOOD, 0, 0, 0, "", "Only show gossip if player has quest");

SET @GUID = (SELECT MAX(guid) FROM `creature`);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`) VALUES 
(@GUID + 1, @NPC_KENDRAK, 1, 17, 1703, 1, 1, 0, 466, 1236.59, -2250.96, 91.8537, 3.57813, 120, 0, 0, 2213, 0, 0, 0, 0, 0, 0, 0);
/*---------------------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------------------*/
-- Gorka
SET @GUID = (SELECT MAX(guid) FROM `creature`);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `isActive`) VALUES 
(@GUID + 1, 33421, 1, 331, 3177, 1, 1, 0, 0, 1580.95, -2505.7, 98.1324, 1.95477, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);
/*---------------------------------------------------------------------------------------------------------------*/

-- move gossip and condition to db
