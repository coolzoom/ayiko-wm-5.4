-- [SQL] Professions - All Engineering trainers spells will now require Engineering as intented (fixes #215)
UPDATE `npc_trainer` SET `reqskill` = 202 WHERE `spell` IN (40274, 41311, 41312, 41315, 41316, 41317, 41318, 41319,
41320, 41321, 56480, 56481, 56483, 56484, 56486, 56487, 62271,81714, 81715, 81720, 81722, 81724, 81725, 127117,
127118, 127119, 127121, 127122, 127123) AND `reqskillvalue` > 0 AND `reqskill` = 0; --  691 rows affected