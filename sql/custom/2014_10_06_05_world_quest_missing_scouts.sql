-- [SQL] Quests - Missing Scouts scripted (Feedback #3556)
SET @NPC_FROSTBORN_SCOUT := 29811;
SET @GOSSIP_MAIN := 9841;
SET @QUEST_MISSING_SCOUTS := 12864;
UPDATE `quest_template` SET `SpecialFlags` = 2, `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `EndText` = "Locate Missing Scout" WHERE `Id` = @QUEST_MISSING_SCOUTS;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_MAIN+0, `faction_A` = 1802, `faction_H` = 1802, `unit_flags` = 537166592, `flags_extra` = 2, `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @NPC_FROSTBORN_SCOUT;
UPDATE `creature` SET `spawntimesecs` = 60 WHERE `id` = @NPC_FROSTBORN_SCOUT;
DELETE FROM `gossip_menu` WHERE `entry` IN (@GOSSIP_MAIN+0, @GOSSIP_MAIN+1, @GOSSIP_MAIN+2, @GOSSIP_MAIN+3);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(@GOSSIP_MAIN+0, 13611),
(@GOSSIP_MAIN+1, 13612),
(@GOSSIP_MAIN+2, 13613),
(@GOSSIP_MAIN+3, 13614);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (@GOSSIP_MAIN+0, @GOSSIP_MAIN+1, @GOSSIP_MAIN+2, @GOSSIP_MAIN+3);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(@GOSSIP_MAIN+0, 0, 0, "Are you okay? I've come to take you back to Frosthold if you can stand.", 1, 1, @GOSSIP_MAIN+1, 0, 0, 0, ""),
(@GOSSIP_MAIN+1, 0, 0, "I'm sorry that I didn't get here sooner. What happened?", 1, 1, @GOSSIP_MAIN+2, 0, 0, 0, ""),
(@GOSSIP_MAIN+2, 0, 0, "I'll go get some help. Hang in there.", 1, 1, @GOSSIP_MAIN+3, 0, 0, 0, "");
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = @GOSSIP_MAIN+0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, @GOSSIP_MAIN+0, 0, 0, 0, 28, 0, @QUEST_MISSING_SCOUTS, 0, 0, 1, 0, "", "Show gossip option only if quest not rewarded");
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_FROSTBORN_SCOUT AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC_FROSTBORN_SCOUT, 0, 0, 1, 62, 0, 100, 0, @GOSSIP_MAIN+2, 0, 0, 0, 15, @QUEST_MISSING_SCOUTS, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Frostborn Scout - On Gossip Select - Quest Complete"),
(@NPC_FROSTBORN_SCOUT, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 30000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Frostborn Scout - Linked with Previous Event - Despawn"),
(@NPC_FROSTBORN_SCOUT, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 90, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Frostborn Scout - On Spawn - Set Bytes 1");