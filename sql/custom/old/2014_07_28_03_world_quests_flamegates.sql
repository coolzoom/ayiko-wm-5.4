-- [SQL] Zones - The flamegate Firelands Forgeworks is now available (Fixes #1665)
-- [SQL] Quests - Into the Maw (25617) fixed (Feedback #4552)
-- [SQL] Quests - Forged of Shadow and Flame fixed (Feedback #1451)
-- [SQL] Quests - Rage of the Wolf Ancient fixed (Feedback #5131)
-- [SQL] Quests - Cindermaul, the Portal Master scripted (Feedback #2721)
-- [SQL] Quests - Forgemaster Pyrendius scripted (Feedback #5132)
SET @CGUID := 203540;
SET @OGUID := 47578;
REPLACE INTO `areatrigger_teleport` (`id`, `name`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
('5880','Firelands Forgeworks (Entrance)','1','5037.048340','-2027.703979','1150.158691','3.305901'),
('5879','Firelands Forgeworks (Exit)','1','5035.384277','-2041.738892','1370.424316','5.208136');
-- Goldrinn Defender
UPDATE `creature_template` SET `equipment_id` = `entry`, `exp` = 3 WHERE `entry` IN (39637, 40838);
DELETE FROM `creature_equip_template` WHERE `entry`=39637;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(39637, 41815, 0, 0);
-- Dark Iron Laborer
DELETE FROM `creature_equip_template` WHERE `entry`=40838;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(40838, 30078, 52518, 0);
UPDATE `creature_model_info` SET `bounding_radius`=0.5, `combat_reach`=1, `gender`=2 WHERE `modelid`=6895;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=19752;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=29612;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=31467;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=31469;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=31520;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=31523;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=31524;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=31556;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=31558;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=31559;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=31560;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=31584;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=31585;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=31586;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=31882;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=32091;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=32092;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=32098;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=32101;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=32103;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=35172;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=35201;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=35681;
-- Spawns made from scratch
DELETE FROM `creature` WHERE `id` IN (40841, 40838, 39637, 40837, 40834, 39627, 39622, 40844, 40845);
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+85;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
('203540','39637','1','1','1','0','0','5341.46','-2104.05','1280.52','1.99672','60','0','0','223395','0','0'),
('203541','39637','1','1','1','0','0','5348.14','-2101.93','1280.52','1.78466','60','0','0','223395','0','0'),
('203542','39637','1','1','1','0','0','5343.2','-2149.4','1280.36','4.34113','60','0','0','223395','0','0'),
('203543','39637','1','1','1','0','0','5352.75','-2157.47','1279.83','4.01912','60','0','0','223395','0','0'),
('203544','39637','1','1','1','0','0','5351.25','-2171.62','1280.32','2.97453','60','0','0','223395','0','0'),
('203545','39637','1','1','1','0','0','5346.54','-2184.69','1278.61','2.71928','60','0','0','223395','0','0'),
('203546','39637','1','1','1','0','39637','5031.23','-2054.12','1148.98','0','60','5','0','223395','0','1'),
('203547','39637','1','1','1','0','0','5024.37','-2079.65','1148.08','4.68584','60','0','0','223395','0','0'),
('203548','39637','1','1','1','0','39637','5013.14','-2058.22','1148.98','5.25133','60','0','0','223395','0','0'),
('203549','39637','1','1','1','0','39637','5032.07','-2042.48','1148.98','0','60','5','0','223395','0','1'),
('203550','39637','1','1','1','0','39637','5016.6','-2078.86','1148.49','4.77679','60','0','0','223395','0','0'),
('203551','40834','1','1','1','0','0','5007.92','-2044.42','1148.98','5.23091','60','0','0','37187','0','0'),
('203552','40837','1','1','1','0','0','5008.96','-2048.59','1148.98','1.21517','60','0','0','37187','0','0'),
('203553','40838','1','1','1','0','40838','5094.2','-2192.04','1136.69','3.69502','300','0','0','37187','0','0'),
('203554','40838','1','1','1','0','0','5037.26','-2131.83','1136.68','0','300','5','0','37187','0','1'),
('203555','40838','1','1','1','0','40838','4935.22','-2196.72','1115.7','4.99164','300','0','0','37187','0','0'),
('203556','40838','1','1','1','0','0','4938.71','-2176.64','1124.87','0','300','5','0','37187','0','1'),
('203557','40838','1','1','1','0','0','4997.55','-2167.32','1133.97','2.1355','300','5','0','37187','0','1'),
('203558','40838','1','1','1','0','40838','4956.45','-2178.77','1120.59','2.39432','300','0','0','37187','0','0'),
('203559','40838','1','1','1','0','0','5246.95','-2115.24','1260','4.72838','300','0','0','37187','0','0'),
('203560','40838','1','1','1','0','0','5246.98','-2116.58','1259.24','1.28833','300','0','0','37187','0','0'),
('203561','40838','1','1','1','0','0','5210.81','-2174.67','1260.8','4.63805','300','0','0','37187','0','0'),
('203562','40838','1','1','1','0','0','5210.69','-2176.3','1261.1','1.6182','300','0','0','37187','0','0'),
('203563','40838','1','1','1','0','0','5186.92','-2186.62','1270.26','5.9536','300','0','0','37187','0','0'),
('203564','40838','1','1','1','0','0','5165.51','-2178.66','1278.4','4.49668','300','0','0','37187','0','0'),
('203565','40838','1','1','1','0','0','5221.65','-2072.63','1269.73','2.66278','300','0','0','37187','0','0'),
('203566','40838','1','1','1','0','0','5220.38','-2071.97','1270.04','5.82008','300','0','0','37187','0','0'),
('203567','40838','1','1','1','0','0','5229.56','-2063.76','1267.37','1.5593','300','0','0','37187','0','0'),
('203568','40838','1','1','1','0','0','5229.58','-2062.33','1267.4','5.28601','300','0','0','37187','0','0'),
('203569','40838','1','1','1','0','0','5209.81','-2075.65','1281.33','3.37357','300','0','0','37187','0','0'),
('203570','40838','1','1','1','0','0','5208.29','-2075.83','1281.33','0.624672','300','0','0','37187','0','0'),
('203571','40838','1','1','1','0','0','5183.47','-2137.23','1277.84','2.17976','300','0','0','37187','0','0'),
('203572','40838','1','1','1','0','0','5182.66','-2136.07','1277.84','5.17998','300','0','0','37187','0','0'),
('203573','40838','1','1','1','0','0','5197.86','-2112.33','1272.68','3.4364','300','0','0','37187','0','0'),
('203574','40838','1','1','1','0','0','5196.26','-2112.82','1273.34','0.569696','300','0','0','37187','0','0'),
('203575','40838','1','1','1','0','0','4993.85','-2104.78','1144.76','0','300','5','0','37187','0','1'),
('203576','40838','1','1','1','0','40838','5092.73','-2192.2','1136.61','0.019701','300','0','0','37187','0','0'),
('203577','40838','1','1','1','0','40838','5039.35','-2178.25','1134.45','1.8326','300','0','0','37187','0','0'),
('203578','40838','1','1','1','0','40838','4917.5','-2213.7','1115.85','5.75632','300','0','0','37187','0','0'),
('203579','40838','1','1','1','0','40838','5087.73','-2138.7','1136.54','0.777698','300','0','0','37187','0','0'),
('203580','40838','1','1','1','0','40838','4960.22','-2201.06','1117.9','0.381315','300','0','0','37187','0','0'),
('203581','40838','1','1','1','0','0','4981.71','-2099.87','1144.76','0','300','5','0','37187','0','1'),
('203582','40838','1','1','1','0','40838','4978.21','-2104.79','1144.76','3.69624','300','0','0','37187','0','0'),
('203583','40838','1','1','1','0','0','5060.04','-2158.02','1136.61','0','300','5','0','37187','0','1'),
('203584','40838','1','1','1','0','0','4998.7','-2193.42','1126.65','0','300','5','0','37187','0','1'),
('203585','40838','1','1','1','0','40838','5042.05','-2144.69','1137.06','4.71239','300','0','0','37187','0','0'),
('203586','40838','1','1','1','0','40838','4945.83','-2198.55','1116.1','-0.170799','300','0','0','37187','0','0'),
('203587','40838','1','1','1','0','40838','5089.62','-2202.84','1136.61','5.22432','300','0','0','37187','0','0'),
('203588','40838','1','1','1','0','40838','4933.34','-2219.95','1115.88','5.98409','300','0','0','37187','0','0'),
('203589','40838','1','1','1','0','0','4930.65','-2180.8','1124.81','0','300','5','0','37187','0','1'),
('203590','40841','1','1','1','0','0','5016.91','-2091.55','1145.2','1.4233','300','0','0','37187','0','0'),
('203591','40841','1','1','1','0','0','5025.75','-2093.72','1144.87','2.05083','300','0','0','37187','0','0'),
('203592','40841','1','1','1','0','0','5013.78','-2103.66','1143.66','1.1217','300','0','0','37187','0','0'),
('203593','40841','1','1','1','0','40841','4918.29','-2240.74','1117.79','3.74445','300','0','0','37187','0','0'),
('203594','40841','1','1','1','0','0','5084.56','-2152.55','1136.69','0','300','5','0','37187','0','1'),
('203595','40841','1','1','1','0','40841','5033.24','-2148.16','1136.44','1.28392','300','0','0','37187','0','0'),
('203596','40841','1','1','1','0','0','4945.68','-2181.24','1123.15','0','300','5','0','37187','0','1'),
('203597','40841','1','1','1','0','40841','4927.29','-2226.06','1115.89','3.96562','300','0','0','37187','0','0'),
('203598','40841','1','1','1','0','0','5010.88','-2166.39','1133.92','0','300','5','0','37187','0','1'),
('203599','40841','1','1','1','0','0','5081.43','-2136.15','1136.21','0','300','5','0','37187','0','1'),
('203600','40841','1','1','1','0','40841','4973.09','-2197.54','1119.45','6.0385','300','0','0','37187','0','0'),
('203601','40841','1','1','1','0','0','5015.95','-2083.66','1147.89','1.33376','300','0','0','37187','0','0'),
('203602','40841','1','1','1','0','0','5052.42','-2150.53','1383.85','1.96156','300','0','0','37187','0','0'),
('203603','40841','1','1','1','0','0','5074.77','-2289.65','1400.95','0.748121','300','0','0','37187','0','0'),
('203604','40841','1','1','1','0','0','5069.8','-2336.77','1412.26','0.50465','300','0','0','37187','0','0'),
('203605','40841','1','1','1','0','0','5121.98','-2330.44','1409.99','4.67512','300','0','0','37187','0','0'),
('203606','40841','1','1','1','0','0','5072.17','-2259.79','1397.85','5.07174','300','0','0','37187','0','0'),
('203607','40841','1','1','1','0','0','5096.78','-2276.87','1396.84','4.07822','300','0','0','37187','0','0'),
('203608','40841','1','1','1','0','40841','4971.13','-2191.16','1118.93','0.774826','300','0','0','37187','0','0'),
('203609','40841','1','1','1','0','40841','4919.07','-2226.02','1115.98','1.0821','300','0','0','37187','0','0'),
('203610','40841','1','1','1','0','40841','4935.6','-2228.69','1115.88','1.52446','300','0','0','37187','0','0'),
('203611','40841','1','1','1','0','0','5078.26','-2208.46','1136.61','0','300','5','0','37187','0','1'),
('203612','40841','1','1','1','0','0','5025.91','-2104.7','1143.03','1.43272','300','0','0','37187','0','0'),
('203613','40841','1','1','1','0','0','5053.36','-2161.29','1136.59','0','300','5','0','37187','0','1'),
('203614','40841','1','1','1','0','0','5057.67','-2176.72','1388.1','0.807028','300','0','0','37187','0','0'),
('203615','40841','1','1','1','0','0','5055.92','-2119.01','1374.78','0.367208','300','0','0','37187','0','0'),
('203616','40841','1','1','1','0','0','5066.71','-2093.94','1371.27','5.53513','300','0','0','37187','0','0'),
('203617','40841','1','1','1','0','0','5017.36','-2097.73','1144.16','1.11699','300','0','0','37187','0','0'),
('203618','40841','1','1','1','0','40841','5032.34','-2143.9','1136.67','1.35265','300','0','0','37187','0','0'),
('203619','40841','1','1','1','0','0','5013.16','-2090.97','1145.46','1.01332','300','0','0','37187','0','0'),
('203620','40841','1','1','1','0','0','5061.61','-2194.45','1136.39','0','300','5','0','37187','0','1'),
('203621','40841','1','1','1','0','40841','4959.4','-2183.55','1119.87','6.24484','300','0','0','37187','0','0'),
('203622','40841','1','1','1','0','40841','4926.43','-2194.48','1115.88','3.52958','300','0','0','37187','0','0'),
('203623','40841','1','1','1','0','0','5077','-2150.16','1136.61','0','300','5','0','37187','0','1'),
('203624','40844','1','1','1','0','0','5018.62','-2238.27','1128.83','0','60','0','0','74374','0','0'),
('203625','40845','1','1','1','0','0','4882.12','-2290.15','1117.32','1.01631','60','0','0','185935','0','0');
DELETE FROM `creature_addon` WHERE `guid` IN (203553, 203579, 203582, 203585, 203587);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(203579, 0, 0, 0, 0, 28, ''),
(203582, 0, 0, 0, 0, 28, ''),
(203585, 0, 0, 0, 0, 69, ''),
(203587, 0, 0, 0, 0, 69, ''),
(203553, 0, 0, 0, 0, 378, '');
-- GOs
UPDATE `gameobject_template` SET `size` = 0.2 WHERE `entry` = 202723;
UPDATE `gameobject_template` SET `data0` = 1, `data1` = 1 WHERE `entry` = 19505;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+37;
DELETE FROM `gameobject` WHERE `id` IN (202723, 177398, 177399, 203066, 203067);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('47578','203067','1','1','1','5088.75','-2138.02','1136.54','5.21505','0','0','0.509041','-0.860742','300','0','1'),
('47579','203066','1','1','1','4908.8','-2213.42','1115.75','3.206','0','0','0.999481','-0.0321997','300','0','1'),
('47580','203066','1','1','1','4968.44','-2209.35','1118.05','0.628317','0','0','0.309016','0.951057','120','255','1'),
('47581','203066','1','1','1','4958.32','-2208.96','1116.2','2.47837','0','0','0.945518','0.325568','120','255','1'),
('47582','203067','1','1','1','4989.99','-2171.28','1133.16','4.39038','0','0','0.811318','-0.584605','300','0','1'),
('47583','203066','1','1','1','5032.93','-2190.02','1134.38','0.0329866','0','0','0.0164926','0.999864','300','0','1'),
('47584','202723','1','1','1','5026.04','-2242.51','1128.83','5.85216','0','0','0.21385','-0.976866','300','100','1'),
('47585','177398','1','1','1','5016.45','-2247.68','1128.83','1.644','0','0','0.732508','0.680759','300','100','1'),
('47586','177399','1','1','1','5005.36','-2243.23','1128.83','0.93164','0','0','0.449156','0.893454','300','100','1'),
('47587','203066','1','1','1','5019.35','-2109.21','1142.57','5.71613','0','0','0.279744','-0.960075','300','0','1'),
('47588','203067','1','1','1','4977.06','-2105.55','1144.76','2.13157','0','0','0.87517','0.483816','300','0','1'),
('47589','203066','1','1','1','4991.33','-2110.51','1144.76','2.40331','0','0','0.932638','0.360814','300','0','1'),
('47590','203066','1','1','1','4983.62','-2097.19','1144.76','2.16612','0','0','0.883396','0.468626','300','0','1'),
('47591','203066','1','1','1','4991.52','-2096.63','1144.9','3.59712','0','0','0.974174','-0.225799','300','0','1'),
('47592','203066','1','1','1','5045.25','-2131.19','1136.68','0.238757','0','0','0.119095','0.992883','300','0','1'),
('47593','203066','1','1','1','5075.35','-2130.83','1136.6','3.15416','0','0','0.99998','-0.00628197','300','0','1'),
('47594','203066','1','1','1','5078.98','-2130.78','1136.61','3.15416','0','0','0.99998','-0.00628197','300','0','1'),
('47595','203066','1','1','1','5093.88','-2151.61','1136.61','1.79385','0','0','0.781411','0.624017','300','0','1'),
('47596','203066','1','1','1','5093.23','-2147.96','1136.45','1.38544','0','0','0.638632','0.769512','300','0','1'),
('47597','203066','1','1','1','5010.38','-2157.6','1135.08','2.82979','0','0','0.987872','0.155272','300','0','1'),
('47598','203066','1','1','1','5014.35','-2158.09','1135.7','3.54214','0','0','0.980012','-0.198939','300','0','1'),
('47599','203066','1','1','1','5078.56','-2189.55','1136.59','5.73026','0','0','0.272954','-0.962027','300','0','1'),
('47600','203066','1','1','1','5076.42','-2188.07','1136.59','4.01809','0','0','0.905496','-0.424355','300','0','1'),
('47601','203066','1','1','1','5084.62','-2211.05','1136.61','6.2282','0','0','0.0274873','-0.999622','300','0','1'),
('47602','203066','1','1','1','5081.63','-2211.9','1136.61','0.292165','0','0','0.145563','0.989349','300','0','1'),
('47603','203067','1','1','1','5077.05','-2211.64','1136.61','6.12375','0','0','0.079635','-0.996824','300','0','1'),
('47604','203066','1','1','1','5085.58','-2163.68','1136.58','0.0903172','0','0','0.0451433','0.998981','300','0','1'),
('47605','203066','1','1','1','5088.62','-2163.61','1136.6','6.26669','0','0','0.00824839','-0.999966','300','0','1'),
('47606','203067','1','1','1','5088.76','-2188.74','1136.92','3.52251','0','0','0.981918','-0.189309','300','0','1'),
('47607','203066','1','1','1','5017.5','-2192.05','1130.33','4.03145','0','0','0.902641','-0.430394','300','0','1'),
('47608','203066','1','1','1','5014.97','-2195.22','1129.33','4.13905','0','0','0.878191','-0.47831','300','0','1'),
('47609','203066','1','1','1','4994.23','-2165.61','1133.99','3.03949','0','0','0.998697','0.0510276','300','0','1'),
('47610','203066','1','1','1','4941.19','-2172.73','1124.71','2.98923','0','0','0.9971','0.0761085','300','0','1'),
('47611','203067','1','1','1','4946.7','-2215.74','1115.78','1.00767','0','0','0.482788','0.875737','300','0','1'),
('47612','203066','1','1','1','4937.39','-2233.24','1115.83','5.25196','0','0','0.493066','-0.869992','300','0','1'),
('47613','203066','1','1','1','4939.22','-2231.17','1115.8','5.86143','0','0','0.209317','-0.977848','300','0','1'),
('47614','203066','1','1','1','4931.38','-2233.75','1115.89','2.41825','0','0','0.935306','0.353839','300','0','1'),
('47615','203066','1','1','1','4910.09','-2203.2','1115.88','4.04874','0','0','0.898888','-0.438179','300','0','1');

-- Quests - Cindermaul, the Portal Master has been scripted
SET @ENTRY_CINDERMAUL := 40844;
UPDATE `creature_template` SET `minlevel` = 81, `maxlevel` = 81, `baseattacktime` = 2000, `flags_extra` = 2, `exp` = 3 WHERE `entry` IN (40837, 40834, 39627, 39622);
UPDATE `creature_template` SET `exp` = 3, `minlevel` = 80, `faction_A` = 14, `faction_H` = 14, `mindmg` = 630, `maxdmg` = 945, `attackpower` = 236, `dmg_multiplier` = 1.4, `baseattacktime` = 2000 WHERE `entry` = 40841;
-- Cindermaul
UPDATE `creature_template` SET `minlevel` = 81, `maxlevel` = 81, `exp` = 3, `faction_A` = 14, `faction_H` = 14, `mindmg` = 1100, `maxdmg` = 1200, `attackpower` = 1800, `dmg_multiplier` = 5, `baseattacktime` = 2000, `lootid` = 0 WHERE `entry` = @ENTRY_CINDERMAUL;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY_CINDERMAUL AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY_CINDERMAUL, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - On Aggro - Say Line 0'),
(@ENTRY_CINDERMAUL, 0, 1, 0, 0, 0, 100, 0, 4000, 4000, 60000, 60000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - IC - Say Line 1'),
(@ENTRY_CINDERMAUL, 0, 2, 0, 0, 0, 100, 0, 5000, 5000, 15500, 17800, 11, 76312, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Cast Earthsmash'),
(@ENTRY_CINDERMAUL, 0, 3, 0, 0, 0, 100, 0, 3000, 3500, 22499, 26700, 11, 76295, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Cast Wall of Stone'),
(@ENTRY_CINDERMAUL, 0, 4, 5, 0, 0, 100, 0, 9000, 9000, 60000, 60000, 11, 76311, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Cast Summon Firelands Denizen'),
(@ENTRY_CINDERMAUL, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Say Line 2'),
(@ENTRY_CINDERMAUL, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Say Line 3'),
(@ENTRY_CINDERMAUL, 0, 7, 0, 0, 0, 100, 0, 10000, 10000, 60000, 60000, 11, 76311, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Cast Summon Firelands Denizen'),
(@ENTRY_CINDERMAUL, 0, 8, 0, 0, 0, 100, 0, 11000, 11000, 60000, 60000, 11, 76311, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Cast Summon Firelands Denizen'),
(@ENTRY_CINDERMAUL, 0, 9, 10, 0, 0, 100, 0, 18000, 18000, 60000, 60000, 11, 76315, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Cast Summon Skywall Denizen'),
(@ENTRY_CINDERMAUL, 0, 10, 10, 61, 0, 100, 0, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Say Line 4'),
(@ENTRY_CINDERMAUL, 0, 11, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Say Line 5'),
(@ENTRY_CINDERMAUL, 0, 12, 0, 0, 0, 100, 0, 19000, 19000, 60000, 60000, 11, 76315, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Cast Summon Skywall Denizen'),
(@ENTRY_CINDERMAUL, 0, 13, 0, 0, 0, 100, 0, 20000, 20000, 60000, 60000, 11, 76315, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Cast Summon Skywall Denizen'),
(@ENTRY_CINDERMAUL, 0, 14, 15, 0, 0, 100, 0, 27000, 27000, 60000, 60000, 11, 76316, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Cast Summon Deepholm Denizen'),
(@ENTRY_CINDERMAUL, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Say Line 6'),
(@ENTRY_CINDERMAUL, 0, 16, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Say Line 7'),
(@ENTRY_CINDERMAUL, 0, 17, 0, 0, 0, 100, 0, 28000, 28000, 60000, 60000, 11, 76316, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Cast Summon Deepholm Denizen'),
(@ENTRY_CINDERMAUL, 0, 18, 0, 0, 0, 100, 0, 29000, 29000, 60000, 60000, 11, 76316, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - Cast Summon Deepholm Denizen'),
(@ENTRY_CINDERMAUL, 0, 19, 14, 6, 0, 100, 0, 0, 0, 0, 0, 11, 76322, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - On Death - Cast Summon Cindermaul''s Chest-q25599'),
(@ENTRY_CINDERMAUL, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Cindermaul - On Death - Say Line 8');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY_CINDERMAUL;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY_CINDERMAUL,0,0,"Wants to kill us does it? Wants to know our secrets...",12,0,100,0,0,0, 'Cindermaul'),
(@ENTRY_CINDERMAUL,1,0,"We must destroys it.",12,0,100,0,0,0, 'Cindermaul'),
(@ENTRY_CINDERMAUL,2,0,"We burns it, we burns! Bring fire, yes!",12,0,100,0,0,0, 'Cindermaul'),
(@ENTRY_CINDERMAUL,3,0,"Cindermaul calls forth creatures from elsewhere in the Firelands.",16,0,100,0,0,0, 'Cindermaul'),
(@ENTRY_CINDERMAUL,4,0,"Come winds, whisper whisper... Blows it, blows it, blows it away!",12,0,100,0,0,0, 'Cindermaul'),
(@ENTRY_CINDERMAUL,5,0,"Cindermaul calls forth creatures from Skywall.",16,0,100,0,0,0, 'Cindermaul'),
(@ENTRY_CINDERMAUL,6,0,"We ... crushes it! Must ... make crush. Hurry friends!",12,0,100,0,0,0, 'Cindermaul'),
(@ENTRY_CINDERMAUL,7,0,"Cindermaul calls forth creatures from the heart of Deepholm.",16,0,100,0,0,0, 'Cindermaul'),
(@ENTRY_CINDERMAUL,8,0,"It mustn't know... it mustn't learn... what's ours...",12,0,100,0,0,0, 'Cindermaul');
DELETE FROM `conditions` WHERE `SourceEntry` IN (76311, 76315, 76316) AND `SourceTypeOrReferenceId` = 13;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,76311,0,31,5,202723,0,0,'','Summon Firelands Denizen targets Portal'),
(13,1,76315,0,31,5,177398,0,0,'','Summon Skywall Denizen targets Portal'),
(13,1,76316,0,31,5,177399,0,0,'','Summon Deepholm Denizen targets Portal');
-- Denizens
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `exp` = 3, `faction_A` = 14, `faction_H` = 14, `lootid` = 0, `mindmg` = 432, `maxdmg` = 694, `attackpower` = 993, `dmg_multiplier` = 3, `baseattacktime` = 2000, `flags_extra` = 64, `AIName` = 'SmartAI' WHERE `entry` IN (40880, 40883, 40884);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (40880, 40883, 40884) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40880, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 5018.62, -2238.27, 1128.83, 2.36262, 'Nepenthe - Firelands Denizen - On Spawn - Move to the center'),
(40880, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Firelands Denizen - On Spawn - Attack Start'),
(40883, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 5018.62, -2238.27, 1128.83, 2.36262, 'Nepenthe - Skywall Denizen - On Spawn - Move to the center'),
(40883, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Skywall Denizen - On Spawn - Attack Start'),
(40884, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 5018.62, -2238.27, 1128.83, 2.36262, 'Nepenthe - Deepholm Denizen - On Spawn - Move to the center'),
(40884, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Deepholm Denizen - On Spawn - Attack Start');

-- Quests - Forgemaster Pyrendius has been scripted
SET @ENTRY_PYRENDIUS := 40845;
SET @PORTAL_GUID := 47616;
UPDATE `creature_classlevelstats` SET `basehp3` = 37187 WHERE `level` = 81;
UPDATE `creature_template` SET `minlevel` = 81, `maxlevel` = 81, `faction_A` = 14, `faction_H` = 14, `mindmg` = 1124, `maxdmg` = 1449, `attackpower` = 1803, `baseattacktime` = 2000, `mingold` = 6122, `maxgold` = 6944, `exp` = 3, `equipment_id` = `entry`,  `AIName` = 'SmartAI' WHERE `entry` = @ENTRY_PYRENDIUS;
DELETE FROM `creature_equip_template` WHERE `entry`=@ENTRY_PYRENDIUS;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(@ENTRY_PYRENDIUS, 52063, 52063, 0);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY_PYRENDIUS AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY_PYRENDIUS, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Forgemaster Pyrendius - On Aggro - Say Line 0'),
(@ENTRY_PYRENDIUS, 0, 1, 0, 0, 0, 100, 0, 3000, 3000, 15500, 17800, 11, 18543, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Forgemaster Pyrendius - Cast Lava Lash'),
(@ENTRY_PYRENDIUS, 0, 2, 3, 8, 0, 100, 0, 76353, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Forgemaster Pyrendius - On spellhit - Say Line 1'),
(@ENTRY_PYRENDIUS, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nepenthe - Forgemaster Pyrendius - On spellhit - Say Line 2');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY_PYRENDIUS;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY_PYRENDIUS,0,0,"Impurity! Your fragile flesh defiles my work.",12,0,100,0,0,0, 'Forgemaster Pyrendius'),
(@ENTRY_PYRENDIUS,1,0,"Water! Here!?",12,0,100,0,0,0, 'Forgemaster Pyrendius'),
(@ENTRY_PYRENDIUS,1,1,"I'll get you, mortal! And your little wolves, too!",12,0,100,0,0,0, 'Forgemaster Pyrendius'),
(@ENTRY_PYRENDIUS,1,2,"How? What is this trickery?",12,0,100,0,0,0, 'Forgemaster Pyrendius'),
(@ENTRY_PYRENDIUS,1,3,"You infuriate me, mortal!",12,0,100,0,0,0, 'Forgemaster Pyrendius'),
(@ENTRY_PYRENDIUS,1,4,"Aiiieeee!",12,0,100,0,0,0, 'Forgemaster Pyrendius'),
(@ENTRY_PYRENDIUS,1,5,"It ... burns!",12,0,100,0,0,0, 'Forgemaster Pyrendius'),
(@ENTRY_PYRENDIUS,1,6,"This <glub> is not over yet, mortal...",12,0,100,0,0,0, 'Forgemaster Pyrendius'),
(@ENTRY_PYRENDIUS,2,0,"Forgemaster Pyrendius howls in fury as he is doused by water!",16,0,100,0,0,0, 'Forgemaster Pyrendius');
DELETE FROM `conditions` WHERE `SourceEntry` = 76353 AND `SourceTypeOrReferenceId` = 13;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,3,76353,0,31,3,@ENTRY_PYRENDIUS,0,0,'','Portal to the Abyssal Maw targets Forgemaster Pyrendius');
-- Portal Runes
DELETE FROM `gameobject` WHERE `id` IN (203092, 203093, 203094, 203095, 203096);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@PORTAL_GUID+0, 203092, 1, 1, 1, 4892.73, -2272.44, 1117.29, 2.46091, 0, 0, 0, 1, 180, 100, 1),
(@PORTAL_GUID+1, 203093, 1, 1, 1, 4899.28, -2289.26, 1117.28, -0.296705, 0, 0, 0, 1, 180, 100, 1),
(@PORTAL_GUID+2, 203094, 1, 1, 1, 4876.24, -2274.11, 1117.26, 2.00713, 0, 0, 0, 1, 180, 100, 1),
(@PORTAL_GUID+3, 203095, 1, 1, 1, 4888.93, -2303.3, 1117.26, -1.37881, 0, 0, 0, 1, 180, 100, 1),
(@PORTAL_GUID+4, 203096, 1, 1, 1, 4867.34, -2284.51, 1117.29, 3.12412, 0, 0, 0, 1, 180, 100, 1);
DELETE FROM `gameobject_scripts` WHERE `id` IN (@PORTAL_GUID+0, @PORTAL_GUID+1, @PORTAL_GUID+2, @PORTAL_GUID+3, @PORTAL_GUID+4);
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(@PORTAL_GUID+0, 4, 15, 76353, 1, 0, 0, 0, 0, 0),
(@PORTAL_GUID+1, 4, 15, 76353, 1, 0, 0, 0, 0, 0),
(@PORTAL_GUID+2, 4, 15, 76353, 1, 0, 0, 0, 0, 0),
(@PORTAL_GUID+3, 4, 15, 76353, 1, 0, 0, 0, 0, 0),
(@PORTAL_GUID+4, 4, 15, 76353, 1, 0, 0, 0, 0, 0);