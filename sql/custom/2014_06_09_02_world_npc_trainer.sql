-- [SQL] Professions - All Engineering trainers spells will now require Engineering as intented (fixes #215)
UPDATE `npc_trainer` SET `reqskill` = 202 WHERE `spell` IN (40274, 41311, 41312, 41315, 41316, 41317, 41318, 41319,
41320, 41321, 56480, 56481, 56483, 56484, 56486, 56487, 62271,81714, 81715, 81720, 81722, 81724, 81725, 127117,
127118, 127119, 127121, 127122, 127123) AND `reqskillvalue` > 0 AND `reqskill` = 0; --  691 rows affected

UPDATE `npc_trainer` SET `spell` = 2275 WHERE `spell` = 2259;
UPDATE `npc_trainer` SET `spell` = 2280 WHERE `spell` = 3101;
UPDATE `npc_trainer` SET `spell` = 3465 WHERE `spell` = 3464;

UPDATE `npc_trainer` SET `spell` = 11612 WHERE `spell` = 11611;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;
UPDATE `npc_trainer` SET `spell` = 0 WHERE `spell` = 0;


UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 2020; -- Apprentice Blacksmith
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 2155; -- Apprentice Leatherworker
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 3911; -- Apprentice Tailor
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 4039; -- Apprentice Engineer
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 7414; -- Apprentice Enchanter
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 25245; -- Apprentice Jewelcrafter
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 31252; -- Prospecting
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 45375; -- Apprentice Scribe
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 2373; -- Journeyman Herbalist
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 2582; -- Journeyman Miner
UPDATE `npc_trainer` SET `reqlevel` = 10 WHERE `spell` = 3568; -- Expert Miner
UPDATE `npc_trainer` SET `reqlevel` = 10 WHERE `spell` = 3571; -- Expert Herbalist
UPDATE `npc_trainer` SET `reqlevel` = 25 WHERE `spell` = 10249; -- Artisan Miner
UPDATE `npc_trainer` SET `reqlevel` = 25 WHERE `spell` = 11994; -- Artisan Herbalist
UPDATE `npc_trainer` SET `reqlevel` = 40 WHERE `spell` = 28696; -- Master Herbalist
UPDATE `npc_trainer` SET `reqlevel` = 40 WHERE `spell` = 29355; -- Master Miner
UPDATE `npc_trainer` SET `reqlevel` = 55 WHERE `spell` = 50301; -- Grand Master Herbalist
UPDATE `npc_trainer` SET `reqlevel` = 55 WHERE `spell` = 50309; -- Grand Master Miner
UPDATE `npc_trainer` SET `reqlevel` = 75 WHERE `spell` = 74518; -- Illustrious Grand Master Miner
UPDATE `npc_trainer` SET `reqlevel` = 75 WHERE `spell` = 74520; -- Illustrious Grand Master Herbalist
UPDATE `npc_trainer` SET `reqlevel` = 80 WHERE `spell` = 102168; -- Zen Master Miner
UPDATE `npc_trainer` SET `reqlevel` = 80 WHERE `spell` = 110415; -- Zen Master Herbalist