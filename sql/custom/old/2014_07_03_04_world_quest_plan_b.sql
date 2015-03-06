-- Quests - Plan B has been scripted (Feedback #3170)
SET @ENTRY_GUARD := 25342; -- Dead Caravan Guard
SET @ENTRY_WORKER := 25343; -- Dead Caravan Worker
SET @ITEM := 34842; -- Warsong Outfit
SET @GOSSIP_1 := 9155;
SET @GOSSIP_2 := 9156;
SET @QUEST := 11658;
DELETE FROM `gossip_menu` WHERE `entry` IN (@GOSSIP_1,@GOSSIP_2);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(@GOSSIP_1,12388),
(@GOSSIP_2,12389);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (@GOSSIP_1,@GOSSIP_2);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(@GOSSIP_1,0,0,'Retrieve Warsong Outfit.',1,1,0,0,0,0,''),
(@GOSSIP_2,0,0,'Retrieve Warsong Outfit.',1,1,0,0,0,0,'');
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_1 WHERE `entry` = @ENTRY_GUARD;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_2 WHERE `entry` = @ENTRY_WORKER;
UPDATE `creature_template` SET `npcflag`=`npcflag`|1, `unit_flags` = 537166594 WHERE `entry` IN (@ENTRY_GUARD,@ENTRY_WORKER);
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry` IN (@ENTRY_GUARD,@ENTRY_WORKER);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY_GUARD,@ENTRY_WORKER) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY_GUARD,0,0,1,62,0,100,0,@GOSSIP_1,0,0,0,56,@ITEM,1,0,0,0,0,7,0,0,0,0,0,0,0,'Dead Caravan Guard - On Gossip Select - Add Item Warsong Outfit'),
(@ENTRY_GUARD,0,1,0,62,0,100,0,@GOSSIP_1,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dead Caravan Guard - On Gossip Select - Close Gossip'),
(@ENTRY_GUARD,0,2,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dead Caravan Guard - On Gossip Select - Forced Despawn'),
(@ENTRY_WORKER,0,0,1,62,0,100,0,@GOSSIP_2,0,0,0,56,@ITEM,1,0,0,0,0,7,0,0,0,0,0,0,0,'Dead Caravan Worker - On Gossip Select - Add Item Warsong Outfit'),
(@ENTRY_WORKER,0,1,0,62,0,100,0,@GOSSIP_2,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dead Caravan Worker - On Gossip Select - Close Gossip'),
(@ENTRY_WORKER,0,2,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dead Caravan Worker - On Gossip Select - Forced Despawn');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (@GOSSIP_1,@GOSSIP_2);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@GOSSIP_1,0,0,9,@QUEST,0,0,0,'','Only show gossip if player has quest Plan B'),
(15,@GOSSIP_2,0,0,9,@QUEST,0,0,0,'','Only show gossip if player has quest Plan B'),
(15,@GOSSIP_1,0,0,2,@ITEM,10,0,0,'','Only show gossip if player has less then 10 outfits'),
(15,@GOSSIP_2,0,0,2,@ITEM,10,0,0,'','Only show gossip if player has less then 10 outfits');