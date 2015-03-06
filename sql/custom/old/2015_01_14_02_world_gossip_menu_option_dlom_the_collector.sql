-- [SQL] Deepholm\Npcs - D'lom the Collector will now have goods for sale (Feedback #6532)
DELETE FROM `gossip_menu` WHERE `entry` IN (12015, 12016);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(12015, 16839),
(12016, 16840);
DELETE FROM `npc_text` WHERE `ID` IN (16839, 16840);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `WDBVerified`) VALUES
(16839, "That which falls, I collect.$B$BOf late, there have been many things to gather.", "", 0, 1, 15595),
(16840, "I cannot. I merely collect.$B$BIbdil may help you. His way is to mend.", "", 0, 1, 15595);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (12015, 12016);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(12015, 0, 1, "Do you have any supplies?", 3, 128, 0, 0, 0, 0, ""),
(12015, 1, 0, "Can you repair equipment?", 1, 1, 12016, 0, 0, 0, "");
UPDATE `creature_template` SET `gossip_menu_id` = 12015, `npcflag` = 129 WHERE `entry` = 45408;