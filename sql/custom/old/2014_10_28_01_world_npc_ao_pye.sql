-- [SQL] Npcs - Ao Pye vendor with ilvl522+ items disabled for now (Fixes #8373)
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 70346;
-- UPDATE `creature_template` SET `npcflag` = 4224 WHERE `entry` = 70346;