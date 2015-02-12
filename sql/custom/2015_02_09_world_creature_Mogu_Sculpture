/* Raid-Mogu'shan Vaults - Cursed Mogu Sculpture NON_Attackable Fix */
UPDATE `creature` SET `unit_flags` = 0 WHERE `id` IN (61334,61989);
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 61334;
UPDATE `creature_template` SET `unit_flags` = 33554432, `type_flags` = 2097152 WHERE `entry` = 61989;
UPDATE `creature_template` SET `mechanic_immune_mask` = 646659967, `dmg_multiplier` = 8 WHERE `entry` IN (61334,61989);