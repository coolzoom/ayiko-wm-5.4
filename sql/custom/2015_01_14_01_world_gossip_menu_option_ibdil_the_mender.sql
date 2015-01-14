-- [SQL] Deepholm\Npcs - Ibdil the Mender will now offer repairs (Feedback #7465)
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 12017;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(12017, 0, 1, "Can you repair my gear?", 15, 4096, 0, 0, 0, 0, "");
UPDATE `creature_template` SET `npcflag` = 4225 WHERE `entry` = 45407;