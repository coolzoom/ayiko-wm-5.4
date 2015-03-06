/*--------------------------------*/
/*--   Zone: Cradle of Chi-Ji   --*/
/*--------------------------------*/

/* Quests Order */
DELETE FROM `creature_queststarter` WHERE `id` IN (60529,64032) AND `quest` IN (30717,31378,31380,31382);
INSERT INTO `creature_queststarter` VALUES
(60529,30717),
(64032,31378),
(64032,31380),
(64032,31382);

DELETE FROM `creature_questender` WHERE `id` IN (60506,60529,60968,61580) AND `quest` IN (30717,31378,31380,31382);
INSERT INTO `creature_questender` VALUES
(60529,30717),
(60506,31378),
(60968,31380),
(61580,31382);

UPDATE `quest_template` SET `ExclusiveGroup` = 31378 WHERE `Id` IN (31378,31379);
UPDATE `quest_template` SET `PrevQuestId` = 31378, `ExclusiveGroup` = -30716 WHERE `Id` IN (30716,30717,30718);
UPDATE `quest_template` SET `PrevQuestId` = 30716, `NextQuestId` = 30726 WHERE `Id` = 30725;
UPDATE `quest_template` SET `PrevQuestId` = 30725, `NextQuestId` = 30727 WHERE `Id` = 30726;
UPDATE `quest_template` SET `PrevQuestId` = 30726, `NextQuestId` = 30728 WHERE `Id` = 30727;
UPDATE `quest_template` SET `PrevQuestId` = 30727, `NextQuestId` = 30729 WHERE `Id` = 30728;
UPDATE `quest_template` SET `PrevQuestId` = 30728, `NextQuestId` = 30730 WHERE `Id` = 30729;
UPDATE `quest_template` SET `PrevQuestId` = 30729, `NextQuestId` = 30731 WHERE `Id` = 30730;
UPDATE `quest_template` SET `PrevQuestId` = 30730, `NextQuestId` = 30732 WHERE `Id` = 30731;
UPDATE `quest_template` SET `PrevQuestId` = 30731, `NextQuestId` = 30733 WHERE `Id` = 30732;
UPDATE `quest_template` SET `PrevQuestId` = 30732, `NextQuestId` = 30734 WHERE `Id` = 30733;
UPDATE `quest_template` SET `PrevQuestId` = 30733, `NextQuestId` = 30735 WHERE `Id` = 30734;
UPDATE `quest_template` SET `PrevQuestId` = 30734, `NextQuestId` = 30736 WHERE `Id` = 30735;
UPDATE `quest_template` SET `PrevQuestId` = 30735, `NextQuestId` = 30737 WHERE `Id` = 30736;
UPDATE `quest_template` SET `PrevQuestId` = 30736, `NextQuestId` = 30738 WHERE `Id` = 30737;
UPDATE `quest_template` SET `PrevQuestId` = 30737, `NextQuestId` = 30739 WHERE `Id` = 30738;
UPDATE `quest_template` SET `PrevQuestId` = 30738, `NextQuestId` = 30740 WHERE `Id` = 30739;
UPDATE `quest_template` SET `PrevQuestId` = 30739 WHERE `Id` = 30740;

UPDATE `quest_template` SET `ExclusiveGroup` = 30725 WHERE `Id` IN (30725,30726,30727,30728,30729,30730,30731,30732,30733,30734,30735,30736,30737,30738,30739,30740);

/* Yan Quillpaw position and orientation */
UPDATE `creature` SET `orientation` = 0.514872 WHERE `guid` = 636903;
DELETE FROM `creature_template_bytes` WHERE `entry` = 60529;
INSERT INTO `creature_template_bytes` VALUES
(60529,0,1),
(60529,1,1); 

/* Thelonius QuestGiver SmartAI */
UPDATE `creature` SET `spawntimesecs` = 15 WHERE `id` IN (60506,60528,60529);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (60506,60528,60529);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (60506,60528,60529) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60506, 0, 0, 1, 19, 0, 100, 0, 30731, 0, 0, 0, 1, 0, 3000, 0, 0, 0, 0, 10, 636904, 60528, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Say 1 on accepting quest"),
(60506, 0, 1, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Create Event Kuo-Na Quillpaw"),
(60506, 0, 2, 0, 59, 0, 100, 0, 1, 0, 0, 0, 86, 87459, 0, 10, 636904, 60528, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Cast teleport"),

(60506, 0, 3, 4, 19, 0, 100, 0, 30736, 0, 0, 0, 1, 0, 3000, 0, 0, 0, 0, 10, 636903, 60529, 0, 0, 0, 0, 0, "Yan Quillpaw - Say 1 on accepting quest"),
(60506, 0, 4, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Create Event Yan Quillpaw"),
(60506, 0, 5, 0, 59, 0, 100, 0, 2, 0, 0, 0, 86, 87459, 0, 10, 636903, 60529, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Cast teleport"),

(60506, 0, 6, 7, 19, 0, 100, 0, 30738, 0, 0, 0, 1, 0, 3000, 0, 0, 0, 0, 10, 636902, 60506, 0, 0, 0, 0, 0, "Thelonius - Say 1 on accepting quest"),
(60506, 0, 7, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 3, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Create Event Thelonius"),
(60506, 0, 8, 0, 59, 0, 100, 0, 3, 0, 0, 0, 86, 87459, 0, 10, 636902, 60506, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Cast teleport"),

(60506, 0, 9, 0, 8, 0, 100, 0, 87459, 0, 1000, 1000, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Despawning on teleport"),
(60528, 0, 0, 0, 8, 0, 100, 0, 87459, 0, 1000, 1000, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Despawning on teleport"),
(60529, 0, 0, 0, 8, 0, 100, 0, 87459, 0, 1000, 1000, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Despawning on teleport");

/* Thelonius Kuo-Na Quillpaw Yan Quillpaw phrases */
DELETE FROM creature_text WHERE entry IN (60506,60528,60529);
INSERT INTO `creature_text` VALUES 
('60506', '0', '0', 'You\'re lucky I haven\'t fought in a while, $n.', '12', '0', '100', '1', '0', '0', 'Thelonius - Say on accepting quest'),
('60528', '0', '0', 'See you there, $n!', '12', '0', '100', '1', '0', '0', 'Kuo-Na Quillpaw - Say on accepting quest'),
('60529', '0', '0', 'Hope you\'re ready for a bruising, $n.', '12', '0', '100', '1', '0', '0', 'Yan Quillpaw - Say on accepting quest');

/* Quest: Chasing Hope  */

-- Spirit of the Crane Camouflage aura
DELETE FROM `creature_template_aura` WHERE `entry` = 60487;
DELETE FROM `creature_aura` WHERE `guid` IN (637075,637076,637092,637146);
INSERT INTO `creature_aura` VALUES 
(637075,96507),
(637076,96507),
(637092,96507),
(637146,96507);

-- Spirit of the Crane update waypoints movement type and AI
UPDATE `creature_template` SET `AIName` = 'SmartAI', `MovementType` = 2 WHERE `entry` = 60487;
UPDATE `creature` SET `currentwaypoint` = 637075, `MovementType` = 2 WHERE `guid` = 637075;
UPDATE `creature` SET `currentwaypoint` = 637076, `MovementType` = 2 WHERE `guid` = 637076;
UPDATE `creature` SET `currentwaypoint` = 637092, `MovementType` = 2 WHERE `guid` = 637092;
UPDATE `creature` SET `currentwaypoint` = 637146, `MovementType` = 2 WHERE `guid` = 637146;

-- Waypoints and Path of all 4 Spirit of the Crane
DELETE FROM `waypoint_data` WHERE `id`IN (637075,637076,637092,637146);
INSERT INTO `waypoint_data` VALUES
(637075,  1, -2484.84, 1465.97, 14.389, 0,0,1,0,100,0),
(637075,  2, -2493.63, 1446.83, 14.566, 0,0,1,0,100,0),
(637075,  3, -2482.37, 1407.81, 15.889, 0,0,1,0,100,0),
(637075,  4, -2499.51, 1391.36, 21.585, 0,0,1,0,100,0),
(637075,  5, -2484.92, 1349.89, 22.361, 0,0,1,0,100,0),
(637075,  6, -2379.50, 1345.67, 24.367, 0,0,1,0,100,0),
(637075,  7, -2353.16, 1305.69, 24.749, 0,0,1,0,100,0),
(637075,  8, -2332.44, 1307.82, 25.978, 0,0,1,0,100,0),
(637075,  9, -2299.21, 1352.24, 26.885, 0,0,1,0,100,0),
(637075, 10, -2275.29, 1356.23, 25.003, 0,0,1,0,100,0),
(637075, 11, -2279.34, 1399.79, 18.729, 0,0,1,0,100,0),
(637075, 12, -2269.53, 1428.34, 14.799, 0,0,1,0,100,0),
(637075, 13, -2243.96, 1443.39, 13.909, 0,0,1,0,100,0),
(637075, 14, -2240.89, 1476.82, 15.393, 0,0,1,0,100,0),
(637075, 15, -2274.69, 1532.43, 15.657, 0,0,1,0,100,0),
(637075, 16, -2320.48, 1541.54, 15.384, 0,0,1,0,100,0),
(637075, 17, -2378.87, 1526.98, 14.499, 0,0,1,0,100,0),
(637075, 18, -2410.24, 1521.73,  9.969, 0,0,1,0,100,0),
(637075, 19, -2437.97, 1491.97, 13.793, 0,0,1,0,100,0),

(637076,  1, -2432.29, 1497.08, 13.880, 0,0,1,0,100,0),
(637076,  2, -2412.16, 1522.30,  9.937, 0,0,1,0,100,0),
(637076,  3, -2407.17, 1580.42,  3.885, 0,0,1,0,100,0),
(637076,  4, -2395.47, 1601.62,  2.809, 0,0,1,0,100,0),
(637076,  5, -2374.78, 1616.97,  0.552, 0,0,1,0,100,0),
(637076,  6, -2335.81, 1618.07,  0.231, 0,0,1,0,100,0),
(637076,  7, -2299.81, 1639.69,  1.746, 0,0,1,0,100,0),
(637076,  8, -2249.19, 1647.00,  1.311, 0,0,1,0,100,0),
(637076,  9, -2203.34, 1627.20,  1.197, 0,0,1,0,100,0),
(637076, 10, -2172.65, 1591.18,  0.210, 0,0,1,0,100,0),
(637076, 11, -2143.15, 1576.79,  0.649, 0,0,1,0,100,0),
(637076, 12, -2128.07, 1552.65,  1.911, 0,0,1,0,100,0),
(637076, 13, -2140.71, 1523.94,  3.599, 0,0,1,0,100,0),
(637076, 14, -2178.40, 1498.86,  9.965, 0,0,1,0,100,0),
(637076, 15, -2234.58, 1484.95, 14.836, 0,0,1,0,100,0),
(637076, 16, -2242.01, 1447.92, 13.598, 0,0,1,0,100,0),
(637076, 17, -2270.15, 1428.44, 14.837, 0,0,1,0,100,0),
(637076, 18, -2286.15, 1398.02, 18.963, 0,0,1,0,100,0),
(637076, 19, -2315.24, 1401.92, 17.080, 0,0,1,0,100,0),
(637076, 20, -2375.99, 1406.70, 14.957, 0,0,1,0,100,0),
(637076, 21, -2397.03, 1442.00, 14.438, 0,0,1,0,100,0),
(637076, 22, -2438.33, 1453.00, 16.746, 0,0,1,0,100,0),

(637092,  1, -2351.25, 1296.11, 24.451, 0,0,1,0,100,0),
(637092,  2, -2298.55, 1346.96, 27.227, 0,0,1,0,100,0),
(637092,  3, -2305.72, 1371.91, 23.270, 0,0,1,0,100,0),
(637092,  4, -2333.08, 1400.28, 18.547, 0,0,1,0,100,0),
(637092,  5, -2371.12, 1407.60, 15.161, 0,0,1,0,100,0),
(637092,  6, -2401.83, 1389.85, 21.775, 0,0,1,0,100,0),
(637092,  7, -2385.50, 1368.73, 25.904, 0,0,1,0,100,0),
(637092,  8, -2386.64, 1359.29, 25.535, 0,0,1,0,100,0),
(637092,  9, -2396.04, 1352.56, 23.959, 0,0,1,0,100,0),
(637092, 10, -2440.23, 1347.82, 20.266, 0,0,1,0,100,0),
(637092, 11, -2449.89, 1343.15, 19.792, 0,0,1,0,100,0),
(637092, 12, -2453.35, 1323.48, 20.115, 0,0,1,0,100,0),
(637092, 13, -2444.71, 1305.73, 21.028, 0,0,1,0,100,0),
(637092, 14, -2440.32, 1300.57, 21.589, 0,0,1,0,100,0),
(637092, 15, -2443.25, 1285.36, 19.877, 0,0,1,0,100,0),
(637092, 16, -2440.34, 1272.30, 19.814, 0,0,1,0,100,0),
(637092, 17, -2423.36, 1251.94, 17.076, 0,0,1,0,100,0),
(637092, 18, -2407.53, 1247.14, 17.189, 0,0,1,0,100,0),
(637092, 19, -2389.75, 1254.39, 17.884, 0,0,1,0,100,0),
(637092, 20, -2369.98, 1261.64, 22.040, 0,0,1,0,100,0),

(637146,  1, -2585.83, 1267.55, 18.771, 0,0,1,0,100,0),
(637146,  2, -2590.76, 1308.40, 21.769, 0,0,1,0,100,0),
(637146,  3, -2558.79, 1318.19, 20.058, 0,0,1,0,100,0),
(637146,  4, -2515.00, 1348.09, 22.437, 0,0,1,0,100,0),
(637146,  5, -2470.84, 1347.47, 21.338, 0,0,1,0,100,0),
(637146,  6, -2455.99, 1331.15, 20.438, 0,0,1,0,100,0),
(637146,  7, -2456.56, 1323.78, 20.160, 0,0,1,0,100,0),
(637146,  8, -2468.83, 1306.74, 22.225, 0,0,1,0,100,0),
(637146,  9, -2473.27, 1294.23, 24.275, 0,0,1,0,100,0),
(637146, 10, -2492.05, 1279.44, 24.583, 0,0,1,0,100,0),
(637146, 11, -2509.60, 1271.43, 21.453, 0,0,1,0,100,0),
(637146, 12, -2517.88, 1246.83, 16.332, 0,0,1,0,100,0),
(637146, 13, -2526.38, 1243.21, 17.388, 0,0,1,0,100,0),
(637146, 14, -2534.24, 1246.63, 18.437, 0,0,1,0,100,0),
(637146, 15, -2540.23, 1253.16, 19.396, 0,0,1,0,100,0),
(637146, 16, -2547.58, 1261.16, 19.946, 0,0,1,0,100,0);

DELETE FROM `creature_path` WHERE `guid`IN (637075,637076,637092,637146);
INSERT INTO `creature_path` VALUES 
(637075,637075),
(637076,637076),
(637092,637092),
(637146,637146);

-- Spirit of the Crane SmartAI
DELETE FROM `smart_scripts` WHERE (`entryorguid`=60487 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60487, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 3000, 3000, 11, 116701, 0, 0, 0, 0, 0, 18, 6, 0, 0, 0, 0, 0, 0, "Spirit of the Crane - Cast OOC Presence of Chi-Ji");


/* Quest: Students of Chi-Ji */

-- Remove position and auras that bug the mobs
DELETE FROM `creature_template_bytes` WHERE `entry` IN (60601,60602,60603);
DELETE FROM `creature_template_aura` WHERE `entry` IN (60601,60602,60603);

-- Students of Chi-Ji update damage and AI
UPDATE `creature_template` SET `dmg_multiplier` = 2, `AIName` = 'SmartAI' WHERE `entry` IN (60601,60602,60603);

-- Students of Chi-Ji 3 kind of SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (60601,60602,60603) AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60601, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - OOC remove unattackable flag on respawn"),
(60601, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - OOC remove auras"),
(60601, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Remove emote on respawn"),
(60601, 0, 3, 4, 0, 0, 100, 1, 1, 1, 0, 0, 1, 0, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Yell on Aggro"),
(60601, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 42, 7878, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Invincibility 2% HP"),
(60601, 0, 5, 6, 2, 0, 100, 1, 0, 2, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Pacified at 2% HP"),
(60601, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Stop Cast Spells at 2% HP"),
(60601, 0, 7, 8, 61, 0, 100, 1, 0, 0, 0, 0, 33, 60601, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Kill Credit on 2%HP"),
(60601, 0, 8, 9, 61, 0, 100, 1, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Play Emote at 2% HP"),
(60601, 0, 9, 10, 61, 0, 100, 1, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Invalid Target at 2% HP"),
(60601, 0, 10, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 4000, 4000, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Prepare to run away at 2% HP"),
(60601, 0, 11, 12, 59, 0, 100, 0, 1, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Run away at 2% HP"),
(60601, 0, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Despawn during the run"),
(60601, 0, 13, 0, 0, 0, 100, 0, 2000, 4000, 6000, 8000, 11, 129917, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Wrath of Chi-Ji"),
(60601, 0, 14, 0, 14, 0, 100, 0, 150000, 10, 9000, 11000, 11, 129919, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Blessing of Chi-Ji"),

(60602, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - OOC remove unattackable flag on respawn"),
(60602, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - OOC remove auras"),
(60602, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Remove emote on respawn"),
(60602, 0, 3, 4, 0, 0, 100, 1, 1, 1, 0, 0, 1, 0, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Yell on Aggro"),
(60602, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 42, 7878, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Invincibility 2% HP"),
(60602, 0, 5, 6, 2, 0, 100, 1, 0, 2, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Pacified at 2% HP"),
(60602, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Stop Cast Spells at 2% HP"),
(60602, 0, 7, 8, 61, 0, 100, 1, 0, 0, 0, 0, 33, 60601, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Kill Credit on 2%HP"),
(60602, 0, 8, 9, 61, 0, 100, 1, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Play Emote at 2% HP"),
(60602, 0, 9, 10, 61, 0, 100, 1, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Invalid Target at 2% HP"),
(60602, 0, 10, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 4000, 4000, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Prepare to run away at 2% HP"),
(60602, 0, 11, 12, 59, 0, 100, 0, 1, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Run away at 2% HP"),
(60602, 0, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Despawn during the run"),
(60602, 0, 13, 0, 0, 0, 100, 0, 3000, 7000, 35000, 40000, 11, 129929, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Cast Gift of Chi-Ji"),
(60602, 0, 14, 0, 9, 0, 100, 0, 10, 40, 2000, 5000, 11, 119500, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Cast Flying Serpent Kick"),
(60602, 0, 15, 0, 0, 0, 100, 0, 5000, 10000, 10000, 15000, 11, 119007, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Cast Jab"),

(60603, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - OOC remove unattackable flag on respawn"),
(60603, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - OOC remove auras"),
(60603, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Remove emote on respawn"),
(60603, 0, 3, 4, 0, 0, 100, 1, 1, 1, 0, 0, 1, 0, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Yell on Aggro"),
(60603, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 42, 7878, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Invincibility 2% HP"),
(60603, 0, 5, 6, 2, 0, 100, 1, 0, 2, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Pacified at 2% HP"),
(60603, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Stop Cast Spells at 2% HP"),
(60603, 0, 7, 8, 61, 0, 100, 1, 0, 0, 0, 0, 33, 60601, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Kill Credit on 2%HP"),
(60603, 0, 8, 9, 61, 0, 100, 1, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Play Emote at 2% HP"),
(60603, 0, 9, 10, 61, 0, 100, 1, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Invalid Target at 2% HP"),
(60603, 0, 10, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 4000, 4000, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Prepare to run away at 2% HP"),
(60603, 0, 11, 12, 59, 0, 100, 0, 1, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Run away at 2% HP"),
(60603, 0, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Despawn during the run"),
(60603, 0, 13, 0, 0, 0, 100, 0, 3000, 7000, 35000, 40000, 11, 129929, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Cast Gift of Chi-Ji"),
(60603, 0, 14, 0, 0, 0, 100, 0, 6000, 11000, 9000, 16000, 11, 129636, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Cast Mighty Chop"),
(60603, 0, 15, 0, 9, 0, 100, 0, 8, 40, 2000, 4000, 11, 129638, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Student of Chi-Ji - Cast Strike from the Heavens");

-- Students of Chi-Ji phrases
DELETE FROM creature_text WHERE entry IN (60601,60602,60603);
INSERT INTO `creature_text` VALUES 
('60601', '0', '0', 'Come on! Let\'s brawl!', '14', '0', '100', '1', '0', '0', 'Student of Chi-Ji1 - Say 1'),
('60601', '0', '1', 'Glory to Chi-Ji!', '14', '0', '100', '1', '0', '0', 'Student of Chi-Ji1 - Say 2'),
('60601', '0', '2', 'Here I come!', '14', '0', '100', '1', '0', '0', 'Student of Chi-Ji1 - Say 3'),
('60602', '0', '0', 'Come on! Let\'s brawl!', '14', '0', '100', '1', '0', '0', 'Student of Chi-Ji2 - Say 1'),
('60602', '0', '1', 'Glory to Chi-Ji!', '14', '0', '100', '1', '0', '0', 'Student of Chi-Ji2 - Say 2'),
('60602', '0', '2', 'Here I come!', '14', '0', '100', '1', '0', '0', 'Student of Chi-Ji2 - Say 3'),
('60603', '0', '0', 'Come on! Let\'s brawl!', '14', '0', '100', '1', '0', '0', 'Student of Chi-Ji3 - Say 1'),
('60603', '0', '1', 'Glory to Chi-Ji!', '14', '0', '100', '1', '0', '0', 'Student of Chi-Ji3 - Say 2'),
('60603', '0', '2', 'Here I come!', '14', '0', '100', '1', '0', '0', 'Student of Chi-Ji3 - Say 3');


/* Quest: Ellia Ravenmane */

-- Ellia Ravenmane update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 3.5, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60530 WHERE `entry` = 60530;

-- Ellia Ravenmane spawn on accepting quest
UPDATE `quest_template` SET `StartScript` = 30725 WHERE `Id` = 30725;
DELETE FROM `quest_start_scripts` WHERE `id` = 30725;
INSERT INTO `quest_start_scripts` VALUES
(30725, 0, 10, 60530, 600000, 0, -2329.81, 1455.1, 29.6164, 3.01337);

-- Ellia Ravenmane Condition on Quest: Ellia Ravenmane
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=60530 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60530, 0, 0, 0, 9, 0, 30725, 0, 0, 0, 0, "0", "Ellia Ravenmane - Gossip Appear on Quest: Ellia Ravenmane");

-- Ellia Ravenmane Gossip on Quest: Ellia Ravenmane
DELETE FROM `gossip_menu` WHERE `entry` = 60530;
INSERT INTO `gossip_menu` VALUES
(60530,60530);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60530;
INSERT INTO `gossip_menu_option` VALUES
(60530,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Ellia Ravenmane phrases
DELETE FROM creature_text WHERE entry = 60530;
INSERT INTO `creature_text` VALUES 
('60530', '0', '0', 'Alright, my first fight!', '12', '0', '100', '1', '0', '0', 'Ellia Ravenmane - Say on gossip'),
('60530', '1', '0', 'Alright, $n... we are now RIVALS. You haven\'t seen the last of me.', '12', '0', '100', '16', '0', '0', 'Ellia Ravenmane - Say on end of fight');

-- Ellia Ravenmane SmartAI on Quest: Ellia Ravenmane
DELETE FROM `smart_scripts` WHERE `entryorguid`= 60530 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60530, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane - Set faction friendly on spawn"),
(60530, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane - Remove unattackable flags on spawn"),
(60530, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane - Remove emotestate on respawn"),
(60530, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane - Remove all auras on respawn"),
(60530, 0, 4, 5, 62, 0, 100, 0, 60530, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane - Close Gossip after the Select"),
(60530, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane - Say 1 on Gossip"),
(60530, 0, 6, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane - Create event after gossip"),
(60530, 0, 7, 8, 59, 0, 100, 0, 1, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane - Change faction after the say"),
(60530, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane - Set invincibility to 5%HP after the change faction"),
(60530, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane - Attack start after the change faction"),
(60530, 0, 10, 0, 0, 0, 100, 0, 5000, 6000, 5000, 12000, 11, 119007, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane - Cast Jab"),
(60530, 0, 11, 0, 0, 0, 100, 0, 2000, 3000, 7000, 15000, 11, 119008, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane - Cast Kick"),
(60530, 0, 12, 13, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane  - Pacified at 5% HP"),
(60530, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane  - Stop Cast Spells at  5% HP"),
(60530, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane  - Invalid Target at  5% HP"),
(60530, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane  - Play emote at  5% HP"),
(60530, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane  - Say at  5% HP"),
(60530, 0, 17, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane  - Create Event at 5% HP"),
(60530, 0, 18, 19, 59, 0, 100, 0, 2, 0, 0, 0, 33, 60530, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane  - Complete quest at 5% HP"),
(60530, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane  - Run away at 5% HP"),
(60530, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane  - Despawning at 5% HP");


/* Quest: Minh Do-Tan */

-- Minh Do-Tan update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 3.5, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60532 WHERE `entry` = 60532;

-- Minh Do-Tan spawn on accepting quest
UPDATE `quest_template` SET `StartScript` = 30726 WHERE `Id` = 30726;
DELETE FROM `quest_start_scripts` WHERE `id` = 30726;
INSERT INTO `quest_start_scripts` VALUES
(30726, 0, 10, 60532, 600000, 0, -2496.98, 1449.31, 15.0053, 0.180292);

-- Minh Do-Tan Condition on Quest: Minh Do-Tan
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=60532 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60532, 0, 0, 0, 9, 0, 30726, 0, 0, 0, 0, "0", "Minh Do-Tan - Gossip Appear on Quest: Minh Do-Tan");

-- Minh Do-Tan Gossip on Quest: Minh Do-Tan
DELETE FROM `gossip_menu` WHERE `entry` = 60532;
INSERT INTO `gossip_menu` VALUES
(60532,60532);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60532;
INSERT INTO `gossip_menu_option` VALUES
(60532,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Minh Do-Tan phrases
DELETE FROM creature_text WHERE entry = 60532;
INSERT INTO `creature_text` VALUES 
('60532', '0', '0', 'Prepare for the beating of your life, weakling!', '12', '0', '100', '1', '0', '0', 'Minh Do-Tan - Say on gossip'),
('60532', '1', '0', 'I am... humbled.', '12', '0', '100', '16', '0', '0', 'Minh Do-Tan - Say on end of fight');

-- Minh Do-Tan SmartAI on Quest: Minh Do-Tan
DELETE FROM `smart_scripts` WHERE (`entryorguid`=60532 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60532, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan - Set faction friendly on spawn"),
(60532, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan - Remove unattackable flags on spawn"),
(60532, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan - Remove emotestate on respawn"),
(60532, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan - Remove all auras on respawn"),
(60532, 0, 4, 5, 62, 0, 100, 0, 60532, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan - Close Gossip after the Select"),
(60532, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan - Say 1 on Gossip"),
(60532, 0, 6, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan - Create event after gossip"),
(60532, 0, 7, 8, 59, 0, 100, 0, 1, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan - Change faction after the say"),
(60532, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan - Set invincibility to 5%HP after the change faction"),
(60532, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan - Attack start after the change faction"),
(60532, 0, 10, 0, 0, 0, 100, 0, 5000, 6000, 35000, 40000, 11, 119018, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan - Cast Spinning Crane Kick"),
(60532, 0, 11, 0, 0, 0, 100, 0, 2000, 3000, 7000, 9000, 11, 119010, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan - Cast Kick"),
(60532, 0, 12, 13, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan  - Pacified at 5% HP"),
(60532, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan  - Stop Cast Spells at  5% HP"),
(60532, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan  - Invalid Target at  5% HP"),
(60532, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan  - Play emote at  5% HP"),
(60532, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan  - Say at  5% HP"),
(60532, 0, 17, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan  - Create Event at 5% HP"),
(60532, 0, 18, 19, 59, 0, 100, 0, 2, 0, 0, 0, 33, 60532, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan  - Complete quest at 5% HP"),
(60532, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan  - Run away at 5% HP"),
(60532, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Minh Do-Tan  - Despawning at 5% HP");


/* Quest: Ellia Ravenmane: Rematch */

-- Ellia Ravenmane update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 3.5, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60533 WHERE `entry` = 60533;

-- Ellia Ravenmane spawn on accepting quest
UPDATE `quest_template` SET `StartScript` = 30727 WHERE `Id` = 30727;
DELETE FROM `quest_start_scripts` WHERE `id` = 30727;
INSERT INTO `quest_start_scripts` VALUES
(30727, 0, 10, 60533, 600000, 0, -2455.24, 1306.17, 20.1047, 1.30498);

-- Ellia Ravenmane Condition on Quest: Ellia Ravenmane: Rematch
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=60533 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60533, 0, 0, 0, 9, 0, 30727, 0, 0, 0, 0, "0", "Ellia Ravenmane - Gossip Appear on Quest: Ellia Ravenmane: Rematch");

-- Ellia Ravenmane Gossip on Quest: Ellia Ravenmane: Rematch
DELETE FROM `gossip_menu` WHERE `entry` = 60533;
INSERT INTO `gossip_menu` VALUES
(60533,60533);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60533;
INSERT INTO `gossip_menu_option` VALUES
(60533,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Ellia Ravenmane phrases
DELETE FROM creature_text WHERE entry = 60533;
INSERT INTO `creature_text` VALUES 
('60533', '0', '0', 'Today is the day I defeat my rival!', '12', '0', '100', '1', '0', '0', 'Ellia Ravenmane2 - Say on gossip'),
('60533', '1', '0', 'I lost to $n, twice in a row? I can\'t believe it.', '12', '0', '100', '16', '0', '0', 'Ellia Ravenmane2 - Say on end of fight');

-- Ellia Ravenmane SmartAI on Quest: Ellia Ravenmane: Rematch
DELETE FROM `smart_scripts` WHERE `entryorguid`= 60533 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60533, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2 - Set faction friendly on spawn"),
(60533, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2 - Remove unattackable flags on spawn"),
(60533, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2 - Remove emotestate on respawn"),
(60533, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2 - Remove all auras on respawn"),
(60533, 0, 4, 5, 62, 0, 100, 0, 60533, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2 - Close Gossip after the Select"),
(60533, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2 - Say 1 on Gossip"),
(60533, 0, 6, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2 - Create event after gossip"),
(60533, 0, 7, 8, 59, 0, 100, 0, 1, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2 - Change faction after the say"),
(60533, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2 - Set invincibility to 5%HP after the change faction"),
(60533, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2 - Attack start after the change faction"),
(60533, 0, 10, 0, 0, 0, 100, 0, 5000, 6000, 5000, 12000, 11, 119004, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2 - Cast Fierce Jab"),
(60533, 0, 11, 0, 0, 0, 100, 0, 2000, 3000, 7000, 15000, 11, 119006, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2 - Cast Fierce Kick"),
(60533, 0, 12, 13, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2  - Pacified at 5% HP"),
(60533, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2  - Stop Cast Spells at  5% HP"),
(60533, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2  - Invalid Target at  5% HP"),
(60533, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2  - Play emote at  5% HP"),
(60533, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2  - Say at  5% HP"),
(60533, 0, 17, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2  - Create Event at 5% HP"),
(60533, 0, 18, 19, 59, 0, 100, 0, 2, 0, 0, 0, 33, 60533, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2  - Complete quest at 5% HP"),
(60533, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2  - Run away at 5% HP"),
(60533, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane2  - Despawning at 5% HP");


/* Quest: Fat Long-Fat */

-- Fat Long-Fat update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 2, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60534 WHERE `entry` = 60534;

-- Fat Long-Fat spawn on accepting quest
UPDATE `quest_template` SET `StartScript` = 30728 WHERE `Id` = 30728;
DELETE FROM `quest_start_scripts` WHERE `id` = 30728;
INSERT INTO `quest_start_scripts` VALUES
(30728, 0, 10, 60534, 600000, 0, -2319.28, 1448.85, 82.6197, 0.508581);

-- Fat Long-Fat Condition on Quest: Fat Long-Fat
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`= 60534 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60534, 0, 0, 0, 9, 0, 30728, 0, 0, 0, 0, "0", "Fat Long-Fat - Gossip Appear on Quest: Fat Long-Fat");

-- Fat Long-Fat Gossip on Quest: Fat Long-Fat
DELETE FROM `gossip_menu` WHERE `entry` = 60534;
INSERT INTO `gossip_menu` VALUES
(60534,60534);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60534;
INSERT INTO `gossip_menu_option` VALUES
(60534,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Fat Long-Fat phrases
DELETE FROM creature_text WHERE entry = 60534;
INSERT INTO `creature_text` VALUES 
('60534', '0', '0', 'I apologize in advance for the beating you are about to suffer.', '12', '0', '100', '1', '0', '0', 'Fat Long-Fat - Say on gossip'),
('60534', '1', '0', 'Very interesting...', '12', '0', '100', '16', '0', '0', 'Fat Long-Fat - Say on end of fight');

-- Fat Long-Fat SmartAI on Quest: Fat Long-Fat
DELETE FROM `smart_scripts` WHERE (`entryorguid`=60534 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60534, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat - Set faction friendly on spawn"),
(60534, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat - Remove unattackable flags on spawn"),
(60534, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat - Remove emotestate on respawn"),
(60534, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat - Remove all auras on respawn"),
(60534, 0, 4, 5, 62, 0, 100, 0, 60534, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat - Close Gossip after the Select"),
(60534, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat - Say 1 on Gossip"),
(60534, 0, 6, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 5000, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat - Create event after gossip"),
(60534, 0, 7, 8, 59, 0, 100, 0, 1, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat - Change faction after the say"),
(60534, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat - Set invincibility to 5%HP after the change faction"),
(60534, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat - Attack start after the change faction"),
(60534, 0, 10, 0, 0, 0, 100, 0, 5000, 6000, 10000, 13000, 11, 132165, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat - Cast Breath of Fire"),
(60534, 0, 11, 0, 0, 0, 100, 0, 13000, 15000, 40000, 45000, 11, 119070, 16, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat - Cast Stormstout"),
(60534, 0, 12, 13, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat  - Pacified at 5% HP"),
(60534, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat  - Stop Cast Spells at  5% HP"),
(60534, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat  - Invalid Target at  5% HP"),
(60534, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat  - Play emote at  5% HP"),
(60534, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat  - Say at  5% HP"),
(60534, 0, 17, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat  - Create Event at 5% HP"),
(60534, 0, 18, 19, 59, 0, 100, 0, 2, 0, 0, 0, 33, 60534, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat  - Complete quest at 5% HP"),
(60534, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 97, 15, 15, 0, 0, 0, 0, 8, 0, 0, 0, -2319.51, 1422.64, 75, 4.62, "Fat Long-Fat  - Jump away at 5% HP"),
(60534, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat  - Despawning at 5% HP");


/* Quest: Julia Bates */

-- Julia Bates update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 3.5, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60535 WHERE `entry` = 60535;

-- Julia Bates spawn on accepting quest
UPDATE `quest_template` SET `StartScript` = 30729 WHERE `Id` = 30729;
DELETE FROM `quest_start_scripts` WHERE `id` = 30729;
INSERT INTO `quest_start_scripts` VALUES
(30729, 0, 10, 60535, 600000, 0, -2465.24, 1596.6, 0.144951, 1.4295);

-- Julia Bates Condition on Quest: Julia Bates
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=60535 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60535, 0, 0, 0, 9, 0, 30729, 0, 0, 0, 0, "0", "Julia Bates - Gossip Appear on Quest: Julia Bates");

-- Julia Bates Gossip on Quest: Julia Bates
DELETE FROM `gossip_menu` WHERE `entry` = 60535;
INSERT INTO `gossip_menu` VALUES
(60535,60535);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60535;
INSERT INTO `gossip_menu_option` VALUES
(60535,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Julia Bates phrases
DELETE FROM creature_text WHERE entry = 60535;
INSERT INTO `creature_text` VALUES 
('60535', '0', '0', 'YAAAAAAAAHHHH!!!', '12', '0', '100', '1', '0', '0', 'Julia Bates - Say on gossip'),
('60535', '1', '0', 'Nice moves, sweetie. Maybe I\'ll see you again...', '12', '0', '100', '16', '0', '0', 'Julia Bates - Say on end of fight');

-- Julia Bates SmartAI on Quest: Julia Bates
DELETE FROM `smart_scripts` WHERE (`entryorguid`=60535 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60535, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Julia Bates - Set faction friendly on spawn"),
(60535, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Julia Bates - Remove unattackable flags on spawn"),
(60535, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Julia Bates - Remove emotestate on respawn"),
(60535, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Julia Bates - Remove all auras on respawn"),
(60535, 0, 4, 5, 62, 0, 100, 0, 60535, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Julia Bates - Close Gossip after the Select"),
(60535, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Julia Bates - Say 1 on Gossip"),
(60535, 0, 6, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Julia Bates - Create event after gossip"),
(60535, 0, 7, 8, 59, 0, 100, 0, 1, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Julia Bates - Change faction after the say"),
(60535, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Julia Bates - Set invincibility to 5%HP after the change faction"),
(60535, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Julia Bates - Attack start after the change faction"),
(60535, 0, 10, 0, 0, 0, 100, 0, 5000, 6000, 18000, 22000, 11, 119074, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Julia Bates - Cast Hundred Hand Slap"),
(60535, 0, 11, 0, 0, 0, 100, 0, 18000, 20000, 24000, 25000, 11, 132218, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Julia Bates - Cast Soothing Mist"),
(60535, 0, 12, 13, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Julia Bates  - Pacified at 5% HP"),
(60535, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Julia Bates  - Stop Cast Spells at  5% HP"),
(60535, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Julia Bates  - Invalid Target at  5% HP"),
(60535, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Julia Bates  - Play emote at  5% HP"),
(60535, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Julia Bates  - Say at  5% HP"),
(60535, 0, 17, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Julia Bates  - Create Event at 5% HP"),
(60535, 0, 18, 19, 59, 0, 100, 0, 2, 0, 0, 0, 33, 60535, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Julia Bates  - Complete quest at 5% HP"),
(60535, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Julia Bates  - Run away at 5% HP"),
(60535, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Julia Bates  - Despawning at 5% HP");


/* Quest: Dextrous Izissha */

-- Dextrous Izissha update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 3.5, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60536 WHERE `entry` = 60536;

-- Dextrous Izissha weapon missing
UPDATE `creature_template` SET `equipment_id` = 60536 WHERE `entry` = 60536;
DELETE FROM `creature_equip_template` WHERE (`entry`=60536);
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES (60536, 13055, 0, 0);

-- Dextrous Izissha spawn on accepting quest
UPDATE `quest_template` SET `StartScript` = 30730 WHERE `Id` = 30730;
DELETE FROM `quest_start_scripts` WHERE `id` = 30730;
INSERT INTO `quest_start_scripts` VALUES
(30730, 0, 10, 60536, 600000, 0, -2620.07, 1463.27, 0.627732, 2.60477);

-- Dextrous Izissha Condition on Quest: Dextrous Izissha
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=60536 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60536, 0, 0, 0, 9, 0, 30730, 0, 0, 0, 0, "0", "Dextrous Izissha - Gossip Appear on Quest: Dextrous Izissha");

-- Dextrous Izissha Gossip on Quest: Dextrous Izissha
DELETE FROM `gossip_menu` WHERE `entry` = 60536;
INSERT INTO `gossip_menu` VALUES
(60536,60536);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60536;
INSERT INTO `gossip_menu_option` VALUES
(60536,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Dextrous Izissha phrases
DELETE FROM creature_text WHERE entry = 60536;
INSERT INTO `creature_text` VALUES 
('60536', '0', '0', 'Your winning streak ends here, $n. Today, you fall by my spear.', '12', '0', '100', '1', '0', '0', 'Dextrous Izissha - Say on gossip'),
('60536', '1', '0', 'My father foresaw this day in the waters. He told me that I would be defeated, but I refused to believe it.', '12', '0', '100', '16', '0', '0', 'Dextrous Izissha - Say on end of fight');

-- Dextrous Izissha SmartAI on Quest: Dextrous Izissha
DELETE FROM `smart_scripts` WHERE (`entryorguid`=60536 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60536, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha - Set faction friendly on spawn"),
(60536, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha - Remove unattackable flags on spawn"),
(60536, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha - Remove emotestate on respawn"),
(60536, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha - Remove all auras on respawn"),
(60536, 0, 4, 5, 62, 0, 100, 0, 60536, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha - Close Gossip after the Select"),
(60536, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha - Say 1 on Gossip"),
(60536, 0, 6, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha - Create event after gossip"),
(60536, 0, 7, 8, 59, 0, 100, 0, 1, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha - Change faction after the say"),
(60536, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha - Set invincibility to 5%HP after the change faction"),
(60536, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha - Attack start after the change faction"),
(60536, 0, 10, 0, 0, 0, 100, 0, 15000, 16000, 15000, 22000, 11, 119078, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha - Cast Still Waters Run Deep"),
(60536, 0, 11, 0, 0, 0, 100, 0, 2000, 3000, 8000, 15000, 11, 119077, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha - Cast Fluid Like Water"),
(60536, 0, 12, 13, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha  - Pacified at 5% HP"),
(60536, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha  - Stop Cast Spells at  5% HP"),
(60536, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha  - Invalid Target at  5% HP"),
(60536, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha  - Play emote at  5% HP"),
(60536, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha  - Say at  5% HP"),
(60536, 0, 17, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha  - Create Event at 5% HP"),
(60536, 0, 18, 19, 59, 0, 100, 0, 2, 0, 0, 0, 33, 60536, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha  - Complete quest at 5% HP"),
(60536, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha  - Run away at 5% HP"),
(60536, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha  - Despawning at 5% HP"),
(60536, 0, 21, 0, 0, 0, 100, 0, 20000, 25000, 40000, 45000, 11, 90958, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Dextrous Izissha - Cast Evasion");


/* Quest: Kuo-Na Quillpaw */

-- Kuo-Na Quillpaw update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 3.5, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60537 WHERE `entry` = 60537;

-- Kuo-Na Quillpaw spawn on accepting quest
UPDATE `quest_template` SET `StartScript` = 30731 WHERE `Id` = 30731;
DELETE FROM `quest_start_scripts` WHERE `id` = 30731;
INSERT INTO `quest_start_scripts` VALUES
(30731, 0, 10, 60537, 600000, 0, -2447.61, 1234.6, 36.1329, 5.8147);

-- Kuo-Na Quillpaw Condition on Quest: Kuo-Na Quillpaw
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=60537 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60537, 0, 0, 0, 9, 0, 30731, 0, 0, 0, 0, "0", "Kuo-Na Quillpaw - Gossip Appear on Quest: Kuo-Na Quillpaw");

-- Kuo-Na Quillpaw Gossip on Quest: Kuo-Na Quillpaw
DELETE FROM `gossip_menu` WHERE `entry` = 60537;
INSERT INTO `gossip_menu` VALUES
(60537,60537);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60537;
INSERT INTO `gossip_menu_option` VALUES
(60537,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Kuo-Na Quillpaw phrases
DELETE FROM creature_text WHERE entry = 60537;
INSERT INTO `creature_text` VALUES 
('60537', '0', '0', 'I will not hold back on you, $n. Please, do me the same favor.', '12', '0', '100', '1', '0', '0', 'Kuo-Na Quillpaw - Say on gossip'),
('60537', '1', '0', 'It\'s been a while since I lost to a trainee. Thank you for the match.', '12', '0', '100', '16', '0', '0', 'Kuo-Na Quillpaw - Say on end of fight');

-- Kuo-Na Quillpaw SmartAI on Quest: Kuo-Na Quillpaw
DELETE FROM `smart_scripts` WHERE (`entryorguid`=60537 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60537, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Set faction friendly on spawn"),
(60537, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Remove unattackable flags on spawn"),
(60537, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Remove emotestate on respawn"),
(60537, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Remove all auras on respawn"),
(60537, 0, 4, 5, 62, 0, 100, 0, 60537, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Close Gossip after the Select"),
(60537, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Say 1 on Gossip"),
(60537, 0, 6, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Create event after gossip"),
(60537, 0, 7, 8, 59, 0, 100, 0, 1, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Change faction after the say"),
(60537, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Set invincibility to 5%HP after the change faction"),
(60537, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Attack start after the change faction"),
(60537, 0, 10, 0, 0, 0, 100, 0, 5000, 7000, 13000, 17000, 11, 119498, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Cast Uppercut"),
(60537, 0, 11, 0, 0, 0, 100, 0, 2000, 3000, 8000, 15000, 11, 119496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Cast Paw Punch"),
(60537, 0, 12, 13, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw  - Pacified at 5% HP"),
(60537, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw  - Stop Cast Spells at  5% HP"),
(60537, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw  - Invalid Target at  5% HP"),
(60537, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw  - Play emote at  5% HP"),
(60537, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw  - Say at  5% HP"),
(60537, 0, 17, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw  - Create Event at 5% HP"),
(60537, 0, 18, 19, 59, 0, 100, 0, 2, 0, 0, 0, 33, 60537, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw  - Complete quest at 5% HP"),
(60537, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw  - Run away at 5% HP"),
(60537, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw  - Despawning at 5% HP"),
(60537, 0, 21, 0, 9, 0, 100, 0, 10, 40, 2000, 3000, 11, 119500, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Kuo-Na Quillpaw - Cast Flying Serpent Kick");


/* Quest: Ellia Ravenmane: Revenge */

-- Ellia Ravenmane: Revenge update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 3.5, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60538 WHERE `entry` = 60538;

-- Ellia Ravenmane: Revenge spawn on accepting quest
UPDATE `quest_template` SET `StartScript` = 30732 WHERE `Id` = 30732;
DELETE FROM `quest_start_scripts` WHERE `id` = 30732;
INSERT INTO `quest_start_scripts` VALUES
(30732, 0, 10, 60538, 600000, 0, -2711.21, 1327.88, 35.6466, 2.74813);

-- Ellia Ravenmane: Revenge Condition on Quest: Ellia Ravenmane: Revenge
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=60538 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60538, 0, 0, 0, 9, 0, 30732, 0, 0, 0, 0, "0", "Ellia Ravenmane: Revenge - Gossip Appear on Quest: Ellia Ravenmane: Revenge");

-- Ellia Ravenmane: Revenge Gossip on Quest: Ellia Ravenmane: Revenge
DELETE FROM `gossip_menu` WHERE `entry` = 60538;
INSERT INTO `gossip_menu` VALUES
(60538,60538);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60538;
INSERT INTO `gossip_menu_option` VALUES
(60538,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Ellia Ravenmane: Revenge phrases
DELETE FROM creature_text WHERE entry = 60538;
INSERT INTO `creature_text` VALUES 
('60538', '0', '0', 'Just give up! It\'s hopeless! You\'ll never beat me!', '12', '0', '100', '1', '0', '0', 'Ellia Ravenmane: Revenge - Say on gossip'),
('60538', '1', '0', 'How did... I don\'t... no, no NO! NOT AGAIN!', '14', '0', '100', '16', '0', '0', 'Ellia Ravenmane: Revenge - Say on end of fight');

-- Ellia Ravenmane: Revenge SmartAI on Quest: Ellia Ravenmane: Revenge
DELETE FROM `smart_scripts` WHERE (`entryorguid`=60538 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60538, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Set faction friendly on spawn"),
(60538, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Remove unattackable flags on spawn"),
(60538, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Remove emotestate on respawn"),
(60538, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Remove all auras on respawn"),
(60538, 0, 4, 5, 62, 0, 100, 0, 60538, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Close Gossip after the Select"),
(60538, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Say 1 on Gossip"),
(60538, 0, 6, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Create event after gossip"),
(60538, 0, 7, 8, 59, 0, 100, 0, 1, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Change faction after the say"),
(60538, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Set invincibility to 5%HP after the change faction"),
(60538, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Attack start after the change faction"),
(60538, 0, 10, 0, 0, 0, 100, 0, 3000, 4000, 16000, 17000, 11, 119014, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Cast Fists of Fury"),
(60538, 0, 11, 0, 0, 0, 100, 0, 2000, 3000, 8000, 15000, 11, 119004, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Cast Fierce Jab"),
(60538, 0, 12, 13, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Pacified at 5% HP"),
(60538, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Stop Cast Spells at  5% HP"),
(60538, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Invalid Target at  5% HP"),
(60538, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Play emote at  5% HP"),
(60538, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Say at  5% HP"),
(60538, 0, 17, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Create Event at 5% HP"),
(60538, 0, 18, 19, 59, 0, 100, 0, 2, 0, 0, 0, 33, 60538, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Complete quest at 5% HP"),
(60538, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Run away at 5% HP"),
(60538, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Despawning at 5% HP"),
(60538, 0, 21, 0, 0, 0, 100, 0, 10000, 13000, 6000, 18000, 11, 119010, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane3 - Cast Vicious Kick");


/* Quest: Tukka-Tuk */

-- Tukka-Tuk update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 3.5, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60539 WHERE `entry` = 60539;

-- Tukka-Tuk spawn on accepting quest
UPDATE `quest_template` SET `StartScript` = 30733 WHERE `Id` = 30733;
DELETE FROM `quest_start_scripts` WHERE `id` = 30733;
INSERT INTO `quest_start_scripts` VALUES
(30733, 0, 10, 60539, 600000, 0, -2453.8, 1353.67, 20.3418, 0.118459);

-- Tukka-Tuk Condition on Quest: Tukka-Tuk
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=60539 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60539, 0, 0, 0, 9, 0, 30733, 0, 0, 0, 0, "0", "Tukka-Tuk - Gossip Appear on Quest: Tukka-Tuk");

-- Tukka-Tuk Gossip on Quest: Tukka-Tuk
DELETE FROM `gossip_menu` WHERE `entry` = 60539;
INSERT INTO `gossip_menu` VALUES
(60539,60539);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60539;
INSERT INTO `gossip_menu_option` VALUES
(60539,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Tukka-Tuk phrases
DELETE FROM creature_text WHERE entry = 60539;
INSERT INTO `creature_text` VALUES 
('60539', '0', '0', 'Good idea! Let\'s ookin\' get it on!', '12', '0', '100', '1', '0', '0', 'Tukka-Tuk - Say on gossip'),
('60539', '1', '0', 'Tukka-Tuk pretty sad about losing to wimpy $n. Tukka-Tuk gonna go look at horizon and think about life.', '12', '0', '100', '16', '0', '0', 'Tukka-Tuk - Say on end of fight');

-- Tukka-Tuk SmartAI on Quest: Tukka-Tuk
DELETE FROM `smart_scripts` WHERE (`entryorguid`=60539 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60539, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Set faction friendly on spawn"),
(60539, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Remove unattackable flags on spawn"),
(60539, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Remove emotestate on respawn"),
(60539, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Remove all auras on respawn"),
(60539, 0, 4, 5, 62, 0, 100, 0, 60539, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Close Gossip after the Select"),
(60539, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Say 1 on Gossip"),
(60539, 0, 6, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Create event after gossip"),
(60539, 0, 7, 8, 59, 0, 100, 0, 1, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Change faction after the say"),
(60539, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Set invincibility to 5%HP after the change faction"),
(60539, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Attack start after the change faction"),
(60539, 0, 10, 0, 0, 0, 100, 0, 3000, 4000, 9000, 11000, 11, 119506, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Cast Kick You"),
(60539, 0, 11, 0, 0, 0, 100, 0, 2000, 3000, 8000, 15000, 11, 119504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Cast Punch You"),
(60539, 0, 12, 13, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Pacified at 5% HP"),
(60539, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Stop Cast Spells at  5% HP"),
(60539, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Invalid Target at  5% HP"),
(60539, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Play emote at  5% HP"),
(60539, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Say at  5% HP"),
(60539, 0, 17, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Create Event at 5% HP"),
(60539, 0, 18, 19, 59, 0, 100, 0, 2, 0, 0, 0, 33, 60539, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Complete quest at 5% HP"),
(60539, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Run away at 5% HP"),
(60539, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Despawning at 5% HP"),
(60539, 0, 21, 0, 0, 0, 100, 0, 9000, 11000, 6000, 12000, 11, 119511, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Tukka-Tuk - Cast Pound You");


/* Quest: Huck Wheelbarrow */

-- Huck Wheelbarrow update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 3, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60540 WHERE `entry` = 60540;

-- Huck Wheelbarrow spawn on accepting quest
UPDATE `quest_template` SET `StartScript` = 30734 WHERE `Id` = 30734;
DELETE FROM `quest_start_scripts` WHERE `id` = 30734;
INSERT INTO `quest_start_scripts` VALUES
(30734, 0, 10, 60540, 600000, 0, -2304.86, 1644.05, 0.54604, 2.69066);

-- Huck Wheelbarrow Condition on Quest: Huck Wheelbarrow
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=60540 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60540, 0, 0, 0, 9, 0, 30734, 0, 0, 0, 0, "0", "Huck Wheelbarrow - Gossip Appear on Quest: Huck Wheelbarrow");

-- Huck Wheelbarrow Gossip on Quest: Huck Wheelbarrow
DELETE FROM `gossip_menu` WHERE `entry` = 60540;
INSERT INTO `gossip_menu` VALUES
(60540,60540);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60540;
INSERT INTO `gossip_menu_option` VALUES
(60540,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Huck Wheelbarrow phrases
DELETE FROM creature_text WHERE entry = 60540;
INSERT INTO `creature_text` VALUES 
('60540', '0', '0', 'Don\'t rule me out be just \'cause I\'m a country boy! I got freakish strong arms, you know.', '12', '0', '100', '1', '0', '0', 'Huck Wheelbarrow - Say on gossip'),
('60540', '1', '0', 'Nice moves. You keep reapin\' in those wins like grain, $n. I\'ll be rootin\' for you.', '12', '0', '100', '16', '0', '0', 'Huck Wheelbarrow - Say on end of fight');

-- Huck Wheelbarrow SmartAI on Quest: Huck Wheelbarrow
DELETE FROM `smart_scripts` WHERE (`entryorguid`=60540 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60540, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Set faction friendly on spawn"),
(60540, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Remove unattackable flags on spawn"),
(60540, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Remove emotestate on respawn"),
(60540, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Remove all auras on respawn"),
(60540, 0, 4, 5, 62, 0, 100, 0, 60540, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Close Gossip after the Select"),
(60540, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Say 1 on Gossip"),
(60540, 0, 6, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Create event after gossip"),
(60540, 0, 7, 8, 59, 0, 100, 0, 1, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Change faction after the say"),
(60540, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Set invincibility to 5%HP after the change faction"),
(60540, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Attack start after the change faction"),
(60540, 0, 10, 0, 0, 0, 100, 0, 4000, 5000, 19000, 21000, 11, 119517, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Cast Wheelbarrow Roll"),
(60540, 0, 11, 0, 0, 0, 100, 0, 2000, 3000, 6000, 8000, 11, 119526, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Cast Wheel Punch"),
(60540, 0, 12, 13, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Pacified at 5% HP"),
(60540, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Stop Cast Spells at  5% HP"),
(60540, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Invalid Target at  5% HP"),
(60540, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Play emote at  5% HP"),
(60540, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Say at  5% HP"),
(60540, 0, 17, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Create Event at 5% HP"),
(60540, 0, 18, 19, 59, 0, 100, 0, 2, 0, 0, 0, 33, 60540, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Complete quest at 5% HP"),
(60540, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Run away at 5% HP"),
(60540, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Huck Wheelbarrow - Despawning at 5% HP");


/* Quest: Mindel Sunspeaker */

-- Mindel Sunspeaker update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 3.5, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60541 WHERE `entry` = 60541;

-- Mindel Sunspeaker spawn on accepting quest
UPDATE `quest_template` SET `StartScript` = 30735 WHERE `Id` = 30735;
DELETE FROM `quest_start_scripts` WHERE `id` = 30735;
INSERT INTO `quest_start_scripts` VALUES
(30735, 0, 10, 60541, 600000, 0, -2294.59, 1440.05, 29.6164, 6.13785);

-- Mindel Sunspeaker Condition on Quest: Mindel Sunspeaker
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=60541 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60541, 0, 0, 0, 9, 0, 30735, 0, 0, 0, 0, "0", "Mindel Sunspeaker - Gossip Appear on Quest: Mindel Sunspeaker");

-- Mindel Sunspeaker Gossip on Quest: Mindel Sunspeaker
DELETE FROM `gossip_menu` WHERE `entry` = 60541;
INSERT INTO `gossip_menu` VALUES
(60541,60541);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60541;
INSERT INTO `gossip_menu_option` VALUES
(60541,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Mindel Sunspeaker phrases
DELETE FROM creature_text WHERE entry = 60541;
INSERT INTO `creature_text` VALUES 
('60541', '0', '0', '<sigh>...Let\'s get this over with.', '12', '0', '100', '1', '0', '0', 'Mindel Sunspeaker - Say on gossip'),
('60541', '1', '0', 'Now THAT\'s what I was looking for! You\'ve given me a reason to train again, $c.', '12', '0', '100', '16', '0', '0', 'Mindel Sunspeaker - Say on end of fight');

-- Mindel Sunspeaker SmartAI on Quest: Mindel Sunspeaker
DELETE FROM `smart_scripts` WHERE (`entryorguid`=60541 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60541, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Set faction friendly on spawn"),
(60541, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Remove unattackable flags on spawn"),
(60541, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Remove emotestate on respawn"),
(60541, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Remove all auras on respawn"),
(60541, 0, 4, 5, 62, 0, 100, 0, 60541, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Close Gossip after the Select"),
(60541, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Say 1 on Gossip"),
(60541, 0, 6, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Create event after gossip"),
(60541, 0, 7, 8, 59, 0, 100, 0, 1, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Change faction after the say"),
(60541, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Set invincibility to 5%HP after the change faction"),
(60541, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Attack start after the change faction"),
(60541, 0, 10, 0, 0, 0, 100, 0, 4000, 5000, 18000, 20000, 11, 119535, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Cast Sunflare Kick"),
(60541, 0, 11, 0, 0, 0, 100, 0, 2000, 3000, 9000, 10000, 11, 119538, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Cast Sunstrike"),
(60541, 0, 12, 13, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Pacified at 5% HP"),
(60541, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Stop Cast Spells at  5% HP"),
(60541, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Invalid Target at  5% HP"),
(60541, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Play emote at  5% HP"),
(60541, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Say at  5% HP"),
(60541, 0, 17, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Create Event at 5% HP"),
(60541, 0, 18, 19, 59, 0, 100, 0, 2, 0, 0, 0, 33, 60541, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Complete quest at 5% HP"),
(60541, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Run away at 5% HP"),
(60541, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Mindel Sunspeaker - Despawning at 5% HP");


/* Quest: Yan Quillpaw */

-- Yan Quillpaw update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 3.5, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60542 WHERE `entry` = 60542;

-- Yan Quillpaw spawn on accepting quest
UPDATE `quest_template` SET `StartScript` = 30736 WHERE `Id` = 30736;
DELETE FROM `quest_start_scripts` WHERE `id` = 30736;
INSERT INTO `quest_start_scripts` VALUES
(30736, 0, 10, 60542, 600000, 0, -2485.57, 1260.39, 36.1329, 0.0679779);

-- Yan Quillpaw Condition on Quest: Yan Quillpaw
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=60542 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60542, 0, 0, 0, 9, 0, 30736, 0, 0, 0, 0, "0", "Yan Quillpaw - Gossip Appear on Quest: Yan Quillpaw");

-- Yan Quillpaw Gossip on Quest: Yan Quillpaw
DELETE FROM `gossip_menu` WHERE `entry` = 60542;
INSERT INTO `gossip_menu` VALUES
(60542,60542);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60542;
INSERT INTO `gossip_menu_option` VALUES
(60542,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Yan Quillpaw phrases
DELETE FROM creature_text WHERE entry = 60542;
INSERT INTO `creature_text` VALUES 
('60542', '0', '0', 'By the name of Chi-Ji, I smite you down!', '12', '0', '100', '1', '0', '0', 'Yan Quillpaw - Say on gossip'),
('60542', '1', '0', 'Chi-Ji... forgive me...', '12', '0', '100', '16', '0', '0', 'Yan Quillpaw - Say on end of fight');

-- Yan Quillpaw SmartAI on Quest: Yan Quillpaw
DELETE FROM `smart_scripts` WHERE (`entryorguid`=60542 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60542, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Set faction friendly on spawn"),
(60542, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Remove unattackable flags on spawn"),
(60542, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Remove emotestate on respawn"),
(60542, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Remove all auras on respawn"),
(60542, 0, 4, 5, 62, 0, 100, 0, 60542, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Close Gossip after the Select"),
(60542, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Say 1 on Gossip"),
(60542, 0, 6, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Create event after gossip"),
(60542, 0, 7, 8, 59, 0, 100, 0, 1, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Change faction after the say"),
(60542, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Set invincibility to 5%HP after the change faction"),
(60542, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Attack start after the change faction"),
(60542, 0, 10, 0, 0, 0, 100, 0, 4000, 5000, 13000, 15000, 11, 119498, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Cast Uppercut"),
(60542, 0, 11, 0, 0, 0, 100, 0, 2000, 3000, 9000, 10000, 11, 119496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Cast Paw Punch"),
(60542, 0, 12, 13, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Pacified at 5% HP"),
(60542, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Stop Cast Spells at  5% HP"),
(60542, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Invalid Target at  5% HP"),
(60542, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Play emote at  5% HP"),
(60542, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Say at  5% HP"),
(60542, 0, 17, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Create Event at 5% HP"),
(60542, 0, 18, 19, 59, 0, 100, 0, 2, 0, 0, 0, 33, 60542, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Complete quest at 5% HP"),
(60542, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Run away at 5% HP"),
(60542, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Despawning at 5% HP"),
(60542, 0, 21, 0, 9, 0, 100, 0, 8, 40, 2000, 3000, 11, 119500, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Yan Quillpaw - Cast Flying Serpent Kick");


/* Quest: Fat Long-Fat: Rematch */

-- Fat Long-Fat2 update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 2, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60543 WHERE `entry` = 60543;

-- Fat Long-Fat2 spawn on accepting quest
UPDATE `quest_template` SET `StartScript` = 30737 WHERE `Id` = 30737;
DELETE FROM `quest_start_scripts` WHERE `id` = 30737;
INSERT INTO `quest_start_scripts` VALUES
(30737, 0, 10, 60543, 600000, 0, -2690.02, 1319.44, 88.6498, 0.316676);

-- Fat Long-Fat2 Condition on Quest: Fat Long-Fat: Rematch
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=60543 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60543, 0, 0, 0, 9, 0, 30737, 0, 0, 0, 0, "0", "Fat Long-Fat2 - Gossip Appear on Quest: Fat Long-Fat: Rematch");

-- Fat Long-Fat2 Gossip on Quest: Fat Long-Fat: Rematch
DELETE FROM `gossip_menu` WHERE `entry` = 60543;
INSERT INTO `gossip_menu` VALUES
(60543,60543);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60543;
INSERT INTO `gossip_menu_option` VALUES
(60543,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Fat Long-Fat2 phrases
DELETE FROM creature_text WHERE entry = 60543;
INSERT INTO `creature_text` VALUES 
('60543', '0', '0', 'Give me everything you have, $n.', '12', '0', '100', '1', '0', '0', 'Fat Long-Fat2 - Say on gossip'),
('60543', '1', '0', 'Yes... yes, I believe you will do. I will see you again shortly, $n.', '12', '0', '100', '16', '0', '0', 'Fat Long-Fat2 - Say on end of fight');

-- Fat Long-Fat2 SmartAI on Quest: Fat Long-Fat: Rematch
DELETE FROM `smart_scripts` WHERE (`entryorguid`=60543 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60543, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Set faction friendly on spawn"),
(60543, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Remove unattackable flags on spawn"),
(60543, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Remove emotestate on respawn"),
(60543, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Remove all auras on respawn"),
(60543, 0, 4, 5, 62, 0, 100, 0, 60543, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Close Gossip after the Select"),
(60543, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Say 1 on Gossip"),
(60543, 0, 6, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Create event after gossip"),
(60543, 0, 7, 8, 59, 0, 100, 0, 1, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Change faction after the say"),
(60543, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Set invincibility to 5%HP after the change faction"),
(60543, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Attack start after the change faction"),
(60543, 0, 10, 0, 0, 0, 100, 0, 4000, 5000, 13000, 15000, 11, 119057, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Cast Fat Long-Flop"),
(60543, 0, 11, 0, 0, 0, 100, 0, 2000, 3000, 9000, 10000, 11, 132165, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Cast Breath of Fire"),
(60543, 0, 12, 13, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Pacified at 5% HP"),
(60543, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Stop Cast Spells at  5% HP"),
(60543, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Invalid Target at  5% HP"),
(60543, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Play emote at  5% HP"),
(60543, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Say at  5% HP"),
(60543, 0, 17, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Create Event at 5% HP"),
(60543, 0, 18, 19, 59, 0, 100, 0, 2, 0, 0, 0, 33, 60543, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Complete quest at 5% HP"),
(60543, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 97, 15, 15, 0, 0, 0, 0, 8, 0, 0, 0, -2710.68, 1289.73, 76, 4.62, "Fat Long-Fat  - Jump away at 5% HP"),
(60543, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Despawning at 5% HP"),
(60543, 0, 21, 0, 0, 0, 100, 0, 15000, 16000, 28000, 30000, 11, 119070, 16, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Fat Long-Fat2 - Cast Storm Stout");


/* Quest: Thelonius */

-- Thelonius update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 3, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60544 WHERE `entry` = 60544;

-- Thelonius spawn on accepting quest
UPDATE `quest_template` SET `StartScript` = 30738 WHERE `Id` = 30738;
DELETE FROM `quest_start_scripts` WHERE `id` = 30738;
INSERT INTO `quest_start_scripts` VALUES
(30738, 0, 10, 60544, 600000, 0, -2372.43, 1598.37, 2.43207, 0.183821);

-- Thelonius Condition on Quest: Thelonius
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=60544 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60544, 0, 0, 0, 9, 0, 30738, 0, 0, 0, 0, "0", "Thelonius - Gossip Appear on Quest: Thelonius");

-- Thelonius Gossip on Quest: Thelonius
DELETE FROM `gossip_menu` WHERE `entry` = 60544;
INSERT INTO `gossip_menu` VALUES
(60544,60544);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60544;
INSERT INTO `gossip_menu_option` VALUES
(60544,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Thelonius phrases
DELETE FROM creature_text WHERE entry = 60544;
INSERT INTO `creature_text` VALUES 
('60544', '0', '0', 'Ha ha! Don\'t pull any punches!', '12', '0', '100', '11', '0', '0', 'Thelonius - Say on gossip'),
('60544', '1', '0', 'The taste of defeat... so strange and so unfamiliar. Thank you for keeping me humble.', '12', '0', '100', '16', '0', '0', 'Thelonius - Say on end of fight');

-- Thelonius SmartAI on Quest: Thelonius
DELETE FROM `smart_scripts` WHERE (`entryorguid`=60544 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60544, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Set faction friendly on spawn"),
(60544, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Remove unattackable flags on spawn"),
(60544, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Remove emotestate on respawn"),
(60544, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Remove all auras on respawn"),
(60544, 0, 4, 5, 62, 0, 100, 0, 60544, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Close Gossip after the Select"),
(60544, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Say 1 on Gossip"),
(60544, 0, 6, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Create event after gossip"),
(60544, 0, 7, 8, 59, 0, 100, 0, 1, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Change faction after the say"),
(60544, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Set invincibility to 5%HP after the change faction"),
(60544, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Attack start after the change faction"),
(60544, 0, 10, 0, 0, 0, 100, 0, 4000, 5000, 13000, 15000, 11, 119498, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Cast Uppercut"),
(60544, 0, 11, 0, 0, 0, 100, 0, 2000, 3000, 9000, 10000, 11, 119074, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Cast Hundred Hand Slap"),
(60544, 0, 12, 13, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Pacified at 5% HP"),
(60544, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Stop Cast Spells at  5% HP"),
(60544, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Invalid Target at  5% HP"),
(60544, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Play emote at  5% HP"),
(60544, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Say at  5% HP"),
(60544, 0, 17, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Create Event at 5% HP"),
(60544, 0, 18, 19, 59, 0, 100, 0, 2, 0, 0, 0, 33, 60544, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Complete quest at 5% HP"),
(60544, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Run away at 5% HP"),
(60544, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Despawning at 5% HP"),
(60544, 0, 21, 0, 0, 0, 100, 0, 15000, 16000, 22000, 24000, 11, 119018, 16, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Cast Spinning Crane Kick"),
(60544, 0, 22, 0, 9, 0, 100, 0, 8, 40, 2000, 3000, 11, 119500, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Thelonius - Cast Flying Serpent Kick");


/* Quest: Ellia Ravenmane: Redemption */

-- Ellia Ravenmane4 & Chi-Ji update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 3.5, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60545 WHERE `entry` = 60545;
UPDATE `creature_template` SET `faction_A` = 1812, `faction_H` = 1812, `unit_flags` = 4, `minlevel` = 90, `maxlevel` = 90, `mindmg` = 10000, `maxdmg` = 20000, `attackpower` = 1000, `AIName` = 'SmartAI', `InhabitType` = 7, `mechanic_immune_mask` = 652836735 WHERE `entry` = 60597;

-- Ellia Ravenmane4 spawn on accepting quest
UPDATE `quest_template` SET `StartScript` = 30739 WHERE `Id` = 30739;
DELETE FROM `quest_start_scripts` WHERE `id` = 30739;
INSERT INTO `quest_start_scripts` VALUES
(30739, 0, 10, 60545, 600000, 0, -2473.31, 1242.81, 89.1375, 1.18049);

-- Ellia Ravenmane4 Condition on Quest: Ellia Ravenmane: Redemption
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=60545 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60545, 0, 0, 0, 9, 0, 30739, 0, 0, 0, 0, "0", "Ellia Ravenmane4 - Gossip Appear on Quest: Ellia Ravenmane: Redemption");

-- Ellia Ravenmane4 Gossip on Quest: Ellia Ravenmane: Redemption
DELETE FROM `gossip_menu` WHERE `entry` = 60545;
INSERT INTO `gossip_menu` VALUES
(60545,60545);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60545;
INSERT INTO `gossip_menu_option` VALUES
(60545,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Ellia Ravenmane4 phrases
DELETE FROM creature_text WHERE entry IN (60545,60597);
INSERT INTO `creature_text` VALUES 
('60545', '0', '0', 'My hated rival... so glad you came.', '12', '0', '100', '1', '0', '0', 'Ellia Ravenmane4 - Say1 on gossip'),
('60545', '1', '0', 'Still clinging to the tailfeathers of Chi-Ji, and his idiotic notions of "hope"?', '12', '0', '100', '1', '0', '0', 'Ellia Ravenmane4 - Say2 on gossip'),
('60545', '2', '0', 'I will show you the meaning of despair... and I will drag this whole island down with me!', '14', '0', '100', '1', '0', '0', 'Ellia Ravenmane4 - Yell3 on gossip'),
('60545', '3', '0', 'N-no...', '12', '0', '100', '16', '0', '0', 'Ellia Ravenmane4 - Say on end of fight'),

('60597', '0', '0', 'Well fought, student. You\'ve proven that you truly embody my way... the Way of the Crane.', '12', '0', '100', '1', '0', '0', 'Chi-Ji - Say1 end of fight'),
('60597', '1', '0', 'Hope can blossom anywhere... even in this dark corner of a forgotten jungle.', '12', '0', '100', '1', '0', '0', 'Chi-Ji - Say2 end of fight'),
('60597', '2', '0', 'All it needs is a hero like you to plant the seed.', '12', '0', '100', '1', '0', '0', 'Chi-Ji - Say3 end of fight');

-- Chi-Ji Waypoints on Quest: Ellia Ravenmane: Redemption
DELETE FROM `waypoints` WHERE `entry`= 60597;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(60597, 1, -2471.37, 1236.98, 89.1463, "Chi-Ji - Move1 on Quest: Ellia Ravenmane: Redemption");

-- Ellia Ravenmane4 & Chi-Ji SmartAI on Quest: Ellia Ravenmane: Redemption
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (60545,60597) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60545, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 3, 0, 42460, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Default Model_Id on reset"),
(60545, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Set faction friendly on reset"),
(60545, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Remove unattackable flags on reset"),
(60545, 0, 4, 0, 1, 0, 100, 1, 4, 4, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Remove emotestate on reset"),
(60545, 0, 5, 0, 1, 0, 100, 1, 5, 5, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Remove all auras on reset"),
(60545, 0, 6, 31, 62, 0, 100, 0, 60545, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Close Gossip after the Select"),
(60545, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Say 1 on Gossip"),
(60545, 0, 8, 9, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 4000, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Create event after gossip"),
(60545, 0, 9, 10, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 10000, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Create event after gossip"),
(60545, 0, 10, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 3, 16000, 16000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Create event after gossip"),
(60545, 0, 11, 0, 59, 0, 100, 0, 1, 0, 0, 0, 1, 1, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Say2"),
(60545, 0, 12, 0, 59, 0, 100, 0, 2, 0, 0, 0, 1, 2, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Yell"),
(60545, 0, 13, 14, 59, 0, 100, 0, 3, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Change faction after the say"),
(60545, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Set invincibility to 5%HP after the change faction"),
(60545, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 3, 0, 48740, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Set invincibility to 5%HP after the change faction"),
(60545, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Attack start after the change faction"),
(60545, 0, 17, 0, 0, 0, 100, 0, 5000, 6000, 10000, 13000, 11, 117009, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Cast Sha Blast"),
(60545, 0, 18, 0, 0, 0, 100, 0, 13000, 15000, 17000, 20000, 11, 117010, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - Cast Sha Spike"),
(60545, 0, 19, 0, 9, 0, 100, 0, 8, 50, 100, 200, 11, 132095, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4  - Cast Cry Out In Despair"),
(60545, 0, 20, 21, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4  - Pacified at 5% HP"),
(60545, 0, 21, 22, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4  - Stop Cast Spells at  5% HP"),
(60545, 0, 22, 23, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4  - Invalid Target at  5% HP"),
(60545, 0, 23, 24, 61, 0, 100, 0, 0, 0, 0, 0, 3, 0, 42460, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4  - Invalid Target at  5% HP"),
(60545, 0, 24, 25, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4  - Play emote at  5% HP"),
(60545, 0, 25, 26, 61, 0, 100, 0, 0, 0, 0, 0, 1, 3, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4  - Say at  5% HP"),
(60545, 0, 26, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 4, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4  - Create Event at 5% HP"),
(60545, 0, 27, 28, 59, 0, 100, 0, 4, 0, 0, 0, 97, 15, 15, 0, 0, 0, 0, 8, 0, 0, 0, -2466.43, 1212.25, 85.13, 2.49, "Ellia Ravenmane4  - Jump away at 5% HP"),
(60545, 0, 28, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4  - Despawning at 5% HP"),
(60545, 0, 29, 0, 2, 0, 100, 1, 15, 25, 0, 0, 12, 60597, 3, 300000, 0, 0, 0, 8, 0, 0, 0, -2466.43, 1212.25, 105.69, 1.81, "Ellia Ravenmane4  - Despawning at 5% HP"),
(60545, 0, 30, 0, 1, 0, 100, 1, 1, 1, 0, 0, 81, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - default npcflag on reset"),
(60545, 0, 31, 7, 61, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Ellia Ravenmane4 - remove npcflag on gossip"),

(60597, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 53, 1, 60597, 0, 30739, 300000, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Chi-Ji - Start attack on spawn"),
(60597, 0, 1, 2, 40, 0, 100, 1, 1, 60597, 0, 0, 54, 300000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Chi-Ji - Start attack on spawn"),
(60597, 0, 2, 0, 61, 0, 100, 1, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 11, 60545, 50, 0, 0, 0, 0, 0, "Chi-Ji - Start attack on spawn"),
(60597, 0, 3, 4, 7, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Chi-Ji - Say1"),
(60597, 0, 4, 5, 61, 0, 100, 1, 0, 0, 0, 0, 67, 6, 5000, 5000, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, "Chi-Ji - Event Say2"),
(60597, 0, 5, 6, 61, 0, 100, 1, 0, 0, 0, 0, 67, 7, 12000, 12000, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, "Chi-Ji - Event Say3"),
(60597, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 67, 8, 19000, 19000, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, "Chi-Ji - Prepare for despawn"),
(60597, 0, 7, 0, 59, 0, 100, 0, 6, 0, 0, 0, 1, 1, 7000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Chi-Ji - Say2"),
(60597, 0, 8, 0, 59, 0, 100, 0, 7, 0, 0, 0, 1, 2, 7000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Chi-Ji - Say3"),
(60597, 0, 9, 10, 59, 0, 100, 0, 8, 0, 0, 0, 33, 60545, 0, 0, 0, 0, 0, 18, 15, 0, 0, 0, 0, 0, 0, "Chi-Ji - Complete quest"),
(60597, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Chi-Ji - Despawn");

DELETE FROM `npc_text` WHERE `ID` IN (60530,60532,60533,60534,60535,60536,60537,60538,60539,60540,60541,60542,60543,60544,60545,60546);
INSERT INTO `npc_text` VALUES 
('60530', 'Hey! You here to challenge me to a fight?', 'Hey! You here to challenge me to a fight?', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('60532', 'I look forward to our melee. Of course, I plan to win.', 'I look forward to our melee. Of course, I plan to win.', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('60533', 'I\'ve been training really hard! There\'s no way you can defeat me now, $n.', 'I\'ve been training really hard! There\'s no way you can defeat me now, $n.', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('60534', 'I\'m very interested in seeing your fighting style, $c.', 'I\'m very interested in seeing your fighting style, $c.', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('60535', 'Hey there, sweetie. You\'re lookin\' pretty good in all that fancy armor.$bSo you\'ve found the way of the Red Crane, too? Interested in a duel?', 'Hey there, sweetie. You\'re lookin\' pretty good in all that fancy armor.$bSo you\'ve found the way of the Red Crane, too? Interested in a duel?', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('60536', 'You will not find many jinyu hear in the Cradle of Chi-Ji. In fact, I may be the only one.$bIn general, my people shun Chi-Ji and his teachings. The crane dines on carp, after all.', 'You will not find many jinyu hear in the Cradle of Chi-Ji. In fact, I may be the only one.$bIn general, my people shun Chi-Ji and his teachings. The crane dines on carp, after all.', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('60537', 'Thelonius has told me much about your skill in battle. I look forward to seeing it firsthand.', 'Thelonius has told me much about your skill in battle. I look forward to seeing it firsthand.', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('60538', 'Hello, rival.$bI\'ve been busy training.$bI hope you\'ve done the same.', 'Hello, rival.$bI\'ve been busy training.$bI hope you\'ve done the same.', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('60539', 'Tukka-Tuk gonna punch you and pound you and kick you and scratch you and bite you and poke you and ook you and dook you and...', 'Tukka-Tuk gonna punch you and pound you and kick you and scratch you and bite you and poke you and ook you and dook you and...', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('60540', 'Howdy, neighbor.$bI heard a lot about you. You been winnin\' duels all over this here island. I suppose I\'m ready to give you a shot.', 'Howdy, neighbor.$bI heard a lot about you. You been winnin\' duels all over this here island. I suppose I\'m ready to give you a shot.', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('60541', 'Nobody can defeat me.$bI\'ve been on this island for weeks, fighting duels every day, and nobody\'s come close to winning.$bIs this the best Pandaria has to offer?', 'Nobody can defeat me.$bI\'ve been on this island for weeks, fighting duels every day, and nobody\'s come close to winning.$bIs this the best Pandaria has to offer?', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('60542', 'You\'ve faced the best of our trainees, and defeated them all. Now let\'s see what you\'re really made of...', 'You\'ve faced the best of our trainees, and defeated them all. Now let\'s see what you\'re really made of...', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('60543', 'It is me again. It is good to see you, $n. Shall we begin?', 'It is me again. It is good to see you, $n. Shall we begin?', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('60544', 'It is a rare and auspicious day when I get to test my abilities.$bI think you are ready to fight me, $n. Let us find out if I am correct.', 'It is a rare and auspicious day when I get to test my abilities.$bI think you are ready to fight me, $n. Let us find out if I am correct.', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('60545', 'The path of the Red Crane is a path of failure. I have seen the truth!$bAll paths lead to despair! You have no hope! NONE OF YOU!!', 'The path of the Red Crane is a path of failure. I have seen the truth!$bAll paths lead to despair! You have no hope! NONE OF YOU!!', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1'),
('60546', 'Are you here for a fight?', 'Are you here for a fight?', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');


/* Quest: Champion of Chi-Ji */

-- Champion of Chi-Ji update faction, flags, damage, AI, immunity and Gossip
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `npcflag` = 1, `dmg_multiplier` = 2.5, `AIName` = 'SmartAI', `mechanic_immune_mask` = 6160,`gossip_menu_id` = 60546 WHERE `entry` = 60546;

-- Champion of Chi-Ji spawn on accepting quest
DELETE FROM `creature` WHERE `id` = 60546;
UPDATE `quest_template` SET `StartScript` = 30740 WHERE `Id` = 30740;
DELETE FROM `quest_start_scripts` WHERE `id` = 30740;
INSERT INTO `quest_start_scripts` VALUES
(30740, 0, 10, 60546, 600000, 0, -2689.6, 1319.25, 35.6457, 0.384564);

-- Champion of Chi-Ji Condition on Quest: Champion of Chi-Ji
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=60546 AND `SourceEntry`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 60546, 0, 0, 0, 9, 0, 30740, 0, 0, 0, 0, "0", "Champion of Chi-Ji - Gossip Appear on Quest: Champion of Chi-Ji");

-- Champion of Chi-Ji Gossip on Quest: Champion of Chi-Ji
DELETE FROM `gossip_menu` WHERE `entry` = 60546;
INSERT INTO `gossip_menu` VALUES
(60546,60546);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 60546;
INSERT INTO `gossip_menu_option` VALUES
(60546,0,0,'Let\'s Fight',1,1,0,0,0,0,'');

-- Champion of Chi-Ji phrases
DELETE FROM creature_text WHERE entry = 60546;
INSERT INTO `creature_text` VALUES 
('60546', '0', '0', 'You stand no chance.', '12', '0', '100', '1', '0', '0', 'Champion of Chi-Ji - Say on gossip'),
('60546', '1', '0', 'Well fought. Until next time...', '12', '0', '100', '16', '0', '0', 'Champion of Chi-Ji - Say on end of fight');

-- Champion of Chi-Ji SmartAI on Quest: Champion of Chi-Ji
DELETE FROM `smart_scripts` WHERE `entryorguid`=60546 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(60546, 0, 0, 0, 1, 0, 100, 1, 1, 1, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Set faction friendly on spawn"),
(60546, 0, 1, 0, 1, 0, 100, 1, 2, 2, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Remove unattackable flags on spawn"),
(60546, 0, 2, 0, 1, 0, 100, 1, 3, 3, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Remove emotestate on respawn"),
(60546, 0, 3, 0, 1, 0, 100, 1, 3, 3, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Remove all auras on respawn"),
(60546, 0, 4, 5, 62, 0, 100, 0, 60546, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Close Gossip after the Select"),
(60546, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Say 1 on Gossip"),
(60546, 0, 6, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Create event after gossip"),
(60546, 0, 7, 8, 59, 0, 100, 0, 1, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Change faction after the say"),
(60546, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 42, 59094, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Set invincibility to 5%HP after the change faction"),
(60546, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Attack start after the change faction"),
(60546, 0, 10, 0, 0, 0, 100, 0, 2000, 3000, 5000, 6000, 11, 119498, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Cast Uppercut"),
(60546, 0, 11, 0, 0, 0, 100, 0, 4000, 5000, 14000, 16000, 11, 119074, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Cast Hundred Hand Slap"),
(60546, 0, 12, 13, 2, 0, 100, 1, 0, 5, 0, 0, 11, 134272, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Pacified at 5% HP"),
(60546, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 11, 23207, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Stop Cast Spells at  5% HP"),
(60546, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Invalid Target at  5% HP"),
(60546, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Play emote at  5% HP"),
(60546, 0, 16, 17, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Say at  5% HP"),
(60546, 0, 17, 0, 61, 0, 100, 1, 0, 0, 0, 0, 67, 2, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Create Event at 5% HP"),
(60546, 0, 18, 19, 59, 0, 100, 0, 2, 0, 0, 0, 33, 60546, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Complete quest at 5% HP"),
(60546, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 46, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Run away at 5% HP"),
(60546, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Despawning at 5% HP"),
(60546, 0, 21, 0, 9, 0, 100, 0, 8, 40, 2000, 3000, 11, 119500, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Champion of Chi-Ji - Cast Flying Serpent Kick");