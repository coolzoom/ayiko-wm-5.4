-- [SQL] Professions - All Engineering trainers spells will now require Engineering as intented (fixes #215)
UPDATE `npc_trainer` SET `reqskill` = 202 WHERE `spell` IN (40274, 41311, 41312, 41315, 41316, 41317, 41318, 41319,
41320, 41321, 56480, 56481, 56483, 56484, 56486, 56487, 62271,81714, 81715, 81720, 81722, 81724, 81725, 127117,
127118, 127119, 127121, 127122, 127123) AND `reqskillvalue` > 0 AND `reqskill` = 0; --  691 rows affected

-- [SQL] Professions - Added level requirement to any profession rank (fixes #174)
-- Change profession spells to be learn spells
UPDATE `npc_trainer` SET `spell` = 2275 WHERE `spell` = 2259;
UPDATE `npc_trainer` SET `spell` = 2280 WHERE `spell` = 3101;
UPDATE `npc_trainer` SET `spell` = 3465 WHERE `spell` = 3464;
UPDATE `npc_trainer` SET `spell` = 11612 WHERE `spell` = 11611;
UPDATE `npc_trainer` SET `spell` = 28597 WHERE `spell` = 28596;
UPDATE `npc_trainer` SET `spell` = 51303 WHERE `spell` = 51304;
UPDATE `npc_trainer` SET `spell` = 80732 WHERE `spell` = 80731;
UPDATE `npc_trainer` SET `spell` = 2020 WHERE `spell` = 2018;
UPDATE `npc_trainer` SET `spell` = 2021 WHERE `spell` = 3100;
UPDATE `npc_trainer` SET `spell` = 3539 WHERE `spell` = 3538;
UPDATE `npc_trainer` SET `spell` = 9786 WHERE `spell` = 9785;
UPDATE `npc_trainer` SET `spell` = 29845 WHERE `spell` = 29844;
UPDATE `npc_trainer` SET `spell` = 51298 WHERE `spell` = 51300;
UPDATE `npc_trainer` SET `spell` = 76667 WHERE `spell` = 76666;
UPDATE `npc_trainer` SET `spell` = 7414 WHERE `spell` = 7411;
UPDATE `npc_trainer` SET `spell` = 7415 WHERE `spell` = 7412;
UPDATE `npc_trainer` SET `spell` = 7416 WHERE `spell` = 7413;
UPDATE `npc_trainer` SET `spell` = 13921 WHERE `spell` = 13920;
UPDATE `npc_trainer` SET `spell` = 28030 WHERE `spell` = 28029;
UPDATE `npc_trainer` SET `spell` = 51312 WHERE `spell` = 51313;
UPDATE `npc_trainer` SET `spell` = 74259 WHERE `spell` = 74258;
UPDATE `npc_trainer` SET `spell` = 4039 WHERE `spell` = 4036;
UPDATE `npc_trainer` SET `spell` = 4040 WHERE `spell` = 4037;
UPDATE `npc_trainer` SET `spell` = 4041 WHERE `spell` = 4038;
UPDATE `npc_trainer` SET `spell` = 12657 WHERE `spell` = 12656;
UPDATE `npc_trainer` SET `spell` = 30351 WHERE `spell` = 30350;
UPDATE `npc_trainer` SET `spell` = 51305 WHERE `spell` = 51306;
UPDATE `npc_trainer` SET `spell` = 82775 WHERE `spell` = 82774;
UPDATE `npc_trainer` SET `spell` = 2372 WHERE `spell` = 2366;
UPDATE `npc_trainer` SET `spell` = 3571 WHERE `spell` = 3570;
UPDATE `npc_trainer` SET `spell` = 11994 WHERE `spell` = 11993;
UPDATE `npc_trainer` SET `spell` = 28696 WHERE `spell` = 28695;
UPDATE `npc_trainer` SET `spell` = 50301 WHERE `spell` = 50300;
UPDATE `npc_trainer` SET `spell` = 74520 WHERE `spell` = 74519;
UPDATE `npc_trainer` SET `spell` = 45375 WHERE `spell` = 45357;
UPDATE `npc_trainer` SET `spell` = 45376 WHERE `spell` = 45358;
UPDATE `npc_trainer` SET `spell` = 45377 WHERE `spell` = 45359;
UPDATE `npc_trainer` SET `spell` = 45378 WHERE `spell` = 45360;
UPDATE `npc_trainer` SET `spell` = 45379 WHERE `spell` = 45361;
UPDATE `npc_trainer` SET `spell` = 45380 WHERE `spell` = 45363;
UPDATE `npc_trainer` SET `spell` = 86009 WHERE `spell` = 86008;
UPDATE `npc_trainer` SET `spell` = 25245 WHERE `spell` = 25229;
UPDATE `npc_trainer` SET `spell` = 25246 WHERE `spell` = 25230;
UPDATE `npc_trainer` SET `spell` = 28896 WHERE `spell` = 28894;
UPDATE `npc_trainer` SET `spell` = 28899 WHERE `spell` = 28895;
UPDATE `npc_trainer` SET `spell` = 28901 WHERE `spell` = 28897;
UPDATE `npc_trainer` SET `spell` = 51310 WHERE `spell` = 51311;
UPDATE `npc_trainer` SET `spell` = 73319 WHERE `spell` = 73318;
UPDATE `npc_trainer` SET `spell` = 2155 WHERE `spell` = 2108;
UPDATE `npc_trainer` SET `spell` = 2154 WHERE `spell` = 3104;
UPDATE `npc_trainer` SET `spell` = 3812 WHERE `spell` = 3811;
UPDATE `npc_trainer` SET `spell` = 10663 WHERE `spell` = 10662;
UPDATE `npc_trainer` SET `spell` = 32550 WHERE `spell` = 32549;
UPDATE `npc_trainer` SET `spell` = 51301 WHERE `spell` = 51302;
UPDATE `npc_trainer` SET `spell` = 81200 WHERE `spell` = 81199;
UPDATE `npc_trainer` SET `spell` = 2581 WHERE `spell` = 2575;
UPDATE `npc_trainer` SET `spell` = 2582 WHERE `spell` = 2576;
UPDATE `npc_trainer` SET `spell` = 3568 WHERE `spell` = 3564;
UPDATE `npc_trainer` SET `spell` = 10249 WHERE `spell` = 10248;
UPDATE `npc_trainer` SET `spell` = 29355 WHERE `spell` = 29354;
UPDATE `npc_trainer` SET `spell` = 50309 WHERE `spell` = 50310;
UPDATE `npc_trainer` SET `spell` = 74518 WHERE `spell` = 74517;
UPDATE `npc_trainer` SET `spell` = 8615 WHERE `spell` = 8613;
UPDATE `npc_trainer` SET `spell` = 8619 WHERE `spell` = 8617;
UPDATE `npc_trainer` SET `spell` = 8620 WHERE `spell` = 8618;
UPDATE `npc_trainer` SET `spell` = 10769 WHERE `spell` = 10768;
UPDATE `npc_trainer` SET `spell` = 32679 WHERE `spell` = 32678;
UPDATE `npc_trainer` SET `spell` = 50307 WHERE `spell` = 50305;
UPDATE `npc_trainer` SET `spell` = 74523 WHERE `spell` = 74522;
UPDATE `npc_trainer` SET `spell` = 3911 WHERE `spell` = 3908;
UPDATE `npc_trainer` SET `spell` = 3912 WHERE `spell` = 3909;
UPDATE `npc_trainer` SET `spell` = 3913 WHERE `spell` = 3910;
UPDATE `npc_trainer` SET `spell` = 12181 WHERE `spell` = 12180;
UPDATE `npc_trainer` SET `spell` = 26791 WHERE `spell` = 26790;
UPDATE `npc_trainer` SET `spell` = 51308 WHERE `spell` = 51309;
UPDATE `npc_trainer` SET `spell` = 75157 WHERE `spell` = 75156;
UPDATE `npc_trainer` SET `spell` = 2551 WHERE `spell` = 2550;
UPDATE `npc_trainer` SET `spell` = 3412 WHERE `spell` = 3102;
UPDATE `npc_trainer` SET `spell` = 19887 WHERE `spell` = 18260;
UPDATE `npc_trainer` SET `spell` = 19886 WHERE `spell` = 3413;
UPDATE `npc_trainer` SET `spell` = 33361 WHERE `spell` = 33359;
UPDATE `npc_trainer` SET `spell` = 51295 WHERE `spell` = 51296;
UPDATE `npc_trainer` SET `spell` = 88054 WHERE `spell` = 88053;
UPDATE `npc_trainer` SET `spell` = 3279 WHERE `spell` = 3273;
UPDATE `npc_trainer` SET `spell` = 3280 WHERE `spell` = 3274;
UPDATE `npc_trainer` SET `spell` = 10847 WHERE `spell` = 10846;
UPDATE `npc_trainer` SET `spell` = 19903 WHERE `spell` = 7924;
UPDATE `npc_trainer` SET `spell` = 27029 WHERE `spell` = 27028;
UPDATE `npc_trainer` SET `spell` = 50299 WHERE `spell` = 45542;
UPDATE `npc_trainer` SET `spell` = 74560 WHERE `spell` = 74559;
UPDATE `npc_trainer` SET `spell` = 7733 WHERE `spell` = 7620;
UPDATE `npc_trainer` SET `spell` = 7734 WHERE `spell` IN (7731, 64485);
UPDATE `npc_trainer` SET `spell` = 19889 WHERE `spell` = 7732;
UPDATE `npc_trainer` SET `spell` = 18249 WHERE `spell` = 18248;
UPDATE `npc_trainer` SET `spell` = 54084 WHERE `spell` IN (33095, 33100);
UPDATE `npc_trainer` SET `spell` = 51293 WHERE `spell` = 51294;
UPDATE `npc_trainer` SET `spell` = 88869 WHERE `spell` = 88868;
UPDATE `npc_trainer` SET `spell` = 80836 WHERE `spell` = 78670;
UPDATE `npc_trainer` SET `spell` = 89129 WHERE `spell` = 88961;
UPDATE `npc_trainer` SET `spell` = 89723 WHERE `spell` = 89718;
UPDATE `npc_trainer` SET `spell` = 89724 WHERE `spell` = 89719;
UPDATE `npc_trainer` SET `spell` = 89725 WHERE `spell` = 89720;
UPDATE `npc_trainer` SET `spell` = 89726 WHERE `spell` = 89721;
UPDATE `npc_trainer` SET `spell` = 89727 WHERE `spell` = 89722;
UPDATE `npc_trainer` SET `spell` = 110412 WHERE `spell` = 110410;
UPDATE `npc_trainer` SET `spell` = 110421 WHERE `spell` = 110420;
UPDATE `npc_trainer` SET `spell` = 110401 WHERE `spell` = 110400;
UPDATE `npc_trainer` SET `spell` = 110404 WHERE `spell` = 110403;
UPDATE `npc_trainer` SET `spell` = 104382 WHERE `spell` = 104381;
UPDATE `npc_trainer` SET `spell` = 110424 WHERE `spell` = 110423;
UPDATE `npc_trainer` SET `spell` = 105208 WHERE `spell` = 105206;
UPDATE `npc_trainer` SET `spell` = 110427 WHERE `spell` = 110426;
UPDATE `npc_trainer` SET `spell` = 110418 WHERE `spell` = 110417;
UPDATE `npc_trainer` SET `spell` = 110398 WHERE `spell` = 110396;
UPDATE `npc_trainer` SET `spell` = 110408 WHERE `spell` = 110406;
UPDATE `npc_trainer` SET `spell` = 102220 WHERE `spell` = 102216;
UPDATE `npc_trainer` SET `spell` = 110415 WHERE `spell` = 110413;
UPDATE `npc_trainer` SET `spell` = 110394 WHERE `spell` = 110393;
UPDATE `npc_trainer` SET `spell` = 102168 WHERE `spell` = 102161;

-- set the correct level
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 7733; -- Fishing
UPDATE `npc_trainer` SET `reqlevel` = 1 WHERE `spell` = 7734;
UPDATE `npc_trainer` SET `reqlevel` = 1 WHERE `spell` = 19889;
UPDATE `npc_trainer` SET `reqlevel` = 1 WHERE `spell` = 18249;
UPDATE `npc_trainer` SET `reqlevel` = 1 WHERE `spell` = 54084;
UPDATE `npc_trainer` SET `reqlevel` = 1 WHERE `spell` = 51293;
UPDATE `npc_trainer` SET `reqlevel` = 1 WHERE `spell` = 88869;
UPDATE `npc_trainer` SET `reqlevel` = 1 WHERE `spell` = 110412;
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 2275; -- Alchemist
UPDATE `npc_trainer` SET `reqlevel` = 10 WHERE `spell` = 2280;
UPDATE `npc_trainer` SET `reqlevel` = 20 WHERE `spell` = 3465;
UPDATE `npc_trainer` SET `reqlevel` = 35 WHERE `spell` = 11612;
UPDATE `npc_trainer` SET `reqlevel` = 50 WHERE `spell` = 28597;
UPDATE `npc_trainer` SET `reqlevel` = 65 WHERE `spell` = 51303;
UPDATE `npc_trainer` SET `reqlevel` = 75 WHERE `spell` = 80732;
UPDATE `npc_trainer` SET `reqlevel` = 80 WHERE `spell` = 105208;
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 2020; -- Blacksmith
UPDATE `npc_trainer` SET `reqlevel` = 10 WHERE `spell` = 2021;
UPDATE `npc_trainer` SET `reqlevel` = 35 WHERE `spell` = 9786;
UPDATE `npc_trainer` SET `reqlevel` = 50 WHERE `spell` = 29845;
UPDATE `npc_trainer` SET `reqlevel` = 65 WHERE `spell` = 51298;
UPDATE `npc_trainer` SET `reqlevel` = 75 WHERE `spell` = 76667;
UPDATE `npc_trainer` SET `reqlevel` = 80 WHERE `spell` = 110398;
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 7414; -- Enchanter
UPDATE `npc_trainer` SET `reqlevel` = 10 WHERE `spell` = 7415;
UPDATE `npc_trainer` SET `reqlevel` = 20 WHERE `spell` = 7416;
UPDATE `npc_trainer` SET `reqlevel` = 35 WHERE `spell` = 13921;
UPDATE `npc_trainer` SET `reqlevel` = 50 WHERE `spell` = 28030;
UPDATE `npc_trainer` SET `reqlevel` = 65 WHERE `spell` = 51312;
UPDATE `npc_trainer` SET `reqlevel` = 75 WHERE `spell` = 74259;
UPDATE `npc_trainer` SET `reqlevel` = 80 WHERE `spell` = 110401;
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 4039; -- Engineer
UPDATE `npc_trainer` SET `reqlevel` = 10 WHERE `spell` = 4040;
UPDATE `npc_trainer` SET `reqlevel` = 20 WHERE `spell` = 4041;
UPDATE `npc_trainer` SET `reqlevel` = 35 WHERE `spell` = 12657;
UPDATE `npc_trainer` SET `reqlevel` = 50 WHERE `spell` = 30351;
UPDATE `npc_trainer` SET `reqlevel` = 65 WHERE `spell` = 51305;
UPDATE `npc_trainer` SET `reqlevel` = 75 WHERE `spell` = 82775;
UPDATE `npc_trainer` SET `reqlevel` = 80 WHERE `spell` = 110404;
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 45375; -- Scribe
UPDATE `npc_trainer` SET `reqlevel` = 10 WHERE `spell` = 45376;
UPDATE `npc_trainer` SET `reqlevel` = 20 WHERE `spell` = 45377;
UPDATE `npc_trainer` SET `reqlevel` = 35 WHERE `spell` = 45378;
UPDATE `npc_trainer` SET `reqlevel` = 50 WHERE `spell` = 45379;
UPDATE `npc_trainer` SET `reqlevel` = 65 WHERE `spell` = 45380;
UPDATE `npc_trainer` SET `reqlevel` = 75 WHERE `spell` = 86009;
UPDATE `npc_trainer` SET `reqlevel` = 80 WHERE `spell` = 110418;
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 25245; -- Jewelcrafter
UPDATE `npc_trainer` SET `reqlevel` = 10 WHERE `spell` = 25246;
UPDATE `npc_trainer` SET `reqlevel` = 20 WHERE `spell` = 28896;
UPDATE `npc_trainer` SET `reqlevel` = 35 WHERE `spell` = 28899;
UPDATE `npc_trainer` SET `reqlevel` = 50 WHERE `spell` = 28901;
UPDATE `npc_trainer` SET `reqlevel` = 65 WHERE `spell` = 51310;
UPDATE `npc_trainer` SET `reqlevel` = 75 WHERE `spell` = 73319;
UPDATE `npc_trainer` SET `reqlevel` = 80 WHERE `spell` = 110421;
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 2155; -- Leatherworker
UPDATE `npc_trainer` SET `reqlevel` = 10 WHERE `spell` = 2154;
UPDATE `npc_trainer` SET `reqlevel` = 20 WHERE `spell` = 3812;
UPDATE `npc_trainer` SET `reqlevel` = 35 WHERE `spell` = 10663;
UPDATE `npc_trainer` SET `reqlevel` = 50 WHERE `spell` = 32550;
UPDATE `npc_trainer` SET `reqlevel` = 65 WHERE `spell` = 51301;
UPDATE `npc_trainer` SET `reqlevel` = 75 WHERE `spell` = 81200;
UPDATE `npc_trainer` SET `reqlevel` = 80 WHERE `spell` = 110424;
UPDATE `npc_trainer` SET `reqlevel` = 5 WHERE `spell` = 3911; -- Tailor
UPDATE `npc_trainer` SET `reqlevel` = 10 WHERE `spell` = 3912;
UPDATE `npc_trainer` SET `reqlevel` = 20 WHERE `spell` = 3913;
UPDATE `npc_trainer` SET `reqlevel` = 35 WHERE `spell` = 12181;
UPDATE `npc_trainer` SET `reqlevel` = 50 WHERE `spell` = 26791;
UPDATE `npc_trainer` SET `reqlevel` = 65 WHERE `spell` = 51308;
UPDATE `npc_trainer` SET `reqlevel` = 75 WHERE `spell` = 75157;
UPDATE `npc_trainer` SET `reqlevel` = 80 WHERE `spell` = 110427;
UPDATE `npc_trainer` SET `reqlevel` = 20 WHERE `spell` = 80836; -- Archaeology
UPDATE `npc_trainer` SET `reqlevel` = 20 WHERE `spell` = 89129;
UPDATE `npc_trainer` SET `reqlevel` = 20 WHERE `spell` = 89723;
UPDATE `npc_trainer` SET `reqlevel` = 35 WHERE `spell` = 89724;
UPDATE `npc_trainer` SET `reqlevel` = 50 WHERE `spell` = 89725;
UPDATE `npc_trainer` SET `reqlevel` = 65 WHERE `spell` = 89726;
UPDATE `npc_trainer` SET `reqlevel` = 75 WHERE `spell` = 89727;
UPDATE `npc_trainer` SET `reqlevel` = 80 WHERE `spell` = 110394;
UPDATE `npc_trainer` SET `reqlevel` = 0 WHERE `spell` = 3279; -- First Aid
UPDATE `npc_trainer` SET `reqlevel` = 0 WHERE `spell` = 3280;
UPDATE `npc_trainer` SET `reqlevel` = 0 WHERE `spell` = 19903;
UPDATE `npc_trainer` SET `reqlevel` = 35 WHERE `spell` = 10847;
UPDATE `npc_trainer` SET `reqlevel` = 50 WHERE `spell` = 27029;
UPDATE `npc_trainer` SET `reqlevel` = 65 WHERE `spell` = 50299;
UPDATE `npc_trainer` SET `reqlevel` = 75 WHERE `spell` = 74560;
UPDATE `npc_trainer` SET `reqlevel` = 80 WHERE `spell` = 110408;
UPDATE `npc_trainer` SET `reqlevel` = 0 WHERE `spell` = 2372; -- Herbalist
UPDATE `npc_trainer` SET `reqlevel` = 0 WHERE `spell` = 2373;
UPDATE `npc_trainer` SET `reqlevel` = 10 WHERE `spell` = 3571;
UPDATE `npc_trainer` SET `reqlevel` = 25 WHERE `spell` = 11994;
UPDATE `npc_trainer` SET `reqlevel` = 40 WHERE `spell` = 28696;
UPDATE `npc_trainer` SET `reqlevel` = 55 WHERE `spell` = 50301;
UPDATE `npc_trainer` SET `reqlevel` = 75 WHERE `spell` = 74520;
UPDATE `npc_trainer` SET `reqlevel` = 80 WHERE `spell` = 110415;
UPDATE `npc_trainer` SET `reqlevel` = 0 WHERE `spell` = 2581; -- Miner
UPDATE `npc_trainer` SET `reqlevel` = 0 WHERE `spell` = 2582;
UPDATE `npc_trainer` SET `reqlevel` = 10 WHERE `spell` = 3568;
UPDATE `npc_trainer` SET `reqlevel` = 25 WHERE `spell` = 10249;
UPDATE `npc_trainer` SET `reqlevel` = 40 WHERE `spell` = 29355;
UPDATE `npc_trainer` SET `reqlevel` = 55 WHERE `spell` = 50309;
UPDATE `npc_trainer` SET `reqlevel` = 75 WHERE `spell` = 74518;
UPDATE `npc_trainer` SET `reqlevel` = 80 WHERE `spell` = 102168;
UPDATE `npc_trainer` SET `reqlevel` = 0 WHERE `spell` = 8615; -- Skinner
UPDATE `npc_trainer` SET `reqlevel` = 0 WHERE `spell` = 8619; 
UPDATE `npc_trainer` SET `reqlevel` = 10 WHERE `spell` = 8620;
UPDATE `npc_trainer` SET `reqlevel` = 25 WHERE `spell` = 10769;
UPDATE `npc_trainer` SET `reqlevel` = 40 WHERE `spell` = 32679;
UPDATE `npc_trainer` SET `reqlevel` = 55 WHERE `spell` = 50307;
UPDATE `npc_trainer` SET `reqlevel` = 75 WHERE `spell` = 74523;
UPDATE `npc_trainer` SET `reqlevel` = 80 WHERE `spell` = 102220;