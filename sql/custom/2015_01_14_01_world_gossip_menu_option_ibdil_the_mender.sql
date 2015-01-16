-- [SQL] Deepholm\Npcs - Ibdil the Mender will now offer repairs (Feedback #7465)
DELETE FROM `gossip_menu` WHERE `entry` IN (12017, 12018);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(12017, 16841),
(12018, 16844);
DELETE FROM `npc_text` WHERE `ID` IN (16841, 16844);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `WDBVerified`) VALUES
(16841, "That which has broken, I mend.$B$BSo much has been broken in recent time. So very much.", "", 0, 1, 15595),
(16844, "There is nothing I call my own that would be of use to you.$B$BPerhaps D'lom will have something of interest to you in his collection.", "", 0, 1, 15595);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (12017, 12018);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(12017, 0, 1, "Can you repair equipment?", 3, 128, 0, 0, 0, 0, ""),
(12017, 1, 0, "Do you have any supplies?", 1, 1, 12018, 0, 0, 0, "");
UPDATE `creature_template` SET `gossip_menu_id` = 12017, `npcflag` = 4225 WHERE `entry` = 45407;
DELETE FROM `npc_vendor` WHERE `entry` = 45407;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES
(45407, 0, 62321, 0, 0, 0, 1);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 23 AND `SourceGroup` = 45407;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, 45407, 62321, 0, 0, 27, 0, 120, 1, 0, 0, 0, 0, "", "Nepenthe-HACK - Ibdil the Mender repair window would not show without a hidden item");