-- [SQL] Npcs - Removed improper gossip menu text from Zirazi the Star-Gazer (Ref #8161)
DELETE FROM `npc_text` WHERE `id` = 16791;
DELETE FROM `gossip_menu` WHERE `text_id` = 16791;