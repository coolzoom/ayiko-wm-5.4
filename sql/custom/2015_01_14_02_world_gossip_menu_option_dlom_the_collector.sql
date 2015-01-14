-- [SQL] Deepholm\Npcs - D'lom the Collector will now have goods for sale (Feedback #6532)
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 12015;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(12015, 0, 1, "I want to browse your goods.", 15, 128, 0, 0, 0, 0, "");
UPDATE `creature_template` SET `npcflag` = 129 WHERE `entry` = 45408;