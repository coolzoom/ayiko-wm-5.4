-- [SQL] Quests - Merciful Freedom scripted (Feedback #2281)
SET @GO_SCOURGE_CAGE := 187854;
SET @NPC_SCOURGE_PRISONER := 25610;
SET @QUEST := 11676;
SET @CGUID := 29883;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI', `data2`=0, `ScriptName`='' WHERE `entry` BETWEEN 187854 AND 187868 OR `entry` BETWEEN 187870 AND 187874;
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='', `unit_flags`=768, `npcflag` = 0 WHERE `entry` = @NPC_SCOURGE_PRISONER;
DELETE FROM `creature` WHERE `id` = @NPC_SCOURGE_PRISONER;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@CGUID+0, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23286, 0, 3070.9, 6451.69, 83.4323, 0.733038, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+1, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23286, 0, 3036.92, 6289.71, 98.5848, 0.698132, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+2, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23286, 0, 3083, 6341.61, 91.899, 1.16937, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+3, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23286, 0, 2987.1, 6472.9, 78.7562, 5.14872, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+4, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23283, 0, 3094.01, 6384.75, 87.1647, 5.14872, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+5, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23284, 0, 3072.9, 6426.82, 85.6955, 4.83456, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+6, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23286, 0, 3097.9, 6294.72, 95.015, 1.15192, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+7, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23283, 0, 2905.72, 6463.04, 80.8369, 2.51327, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+8, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23285, 0, 3048.75, 6490.7, 82.7529, 4.27606, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+9, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23286, 0, 2857.33, 6451.66, 79.2159, 1.97222, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+10, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23286, 0, 2963.92, 6580.41, 58.287, 1.48353, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+11, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23286, 0, 2975.58, 6368.93, 97.6723, 0.575959, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+12, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23285, 0, 2994.82, 6406.23, 90.2394, 0.296706, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+13, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23284, 0, 3042.44, 6518.98, 82.7169, 2.40855, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+14, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23283, 0, 2904.18, 6484.57, 79.2159, 1.48353, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+15, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23286, 0, 2933.69, 6492.8, 79.168, 1.32645, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+16, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23285, 0, 2977.79, 6513.73, 74.8041, 1.58825, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+17, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23283, 0, 3014.54, 6431.04, 83.9795, 2.77507, 0, 0, 0, 3524, 0, 0, 0, 0, 0),
(@CGUID+18, @NPC_SCOURGE_PRISONER, 571, 1, 1, 23286, 0, 3045.28, 6447.78, 82.7529, 1.5708, 0, 0, 0, 3524, 0, 0, 0, 0, 0);
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_SCOURGE_PRISONER AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN 187854 AND 187868 AND `source_type` = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN 187870 AND 187874 AND `source_type` = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18785400,18785500,18785600,18785700,18785800,18785900,18786000,18786100,18786200,18786300,18786400,18786500,18786600,18786700,18786800,18787000,18787100,18787200,18787300,18787400) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- 187854
(@GO_SCOURGE_CAGE,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE,1,2,0,61,0,100,0,0,0,0,0,80,@GO_SCOURGE_CAGE*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
(@GO_SCOURGE_CAGE*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187855
(@GO_SCOURGE_CAGE+1,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+1,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+1,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+1)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+1)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187856
(@GO_SCOURGE_CAGE+2,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+2,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+2,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+2)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+2)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187857
(@GO_SCOURGE_CAGE+3,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+3,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+3,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+3)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+3)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187858
(@GO_SCOURGE_CAGE+4,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+4,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+4,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+4)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+4)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187859
(@GO_SCOURGE_CAGE+5,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+5,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+5,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+5)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+5)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187860
(@GO_SCOURGE_CAGE+6,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+6,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+6,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+6)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+6)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187861 
(@GO_SCOURGE_CAGE+7,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+7,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+7,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+7)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+7)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187862
(@GO_SCOURGE_CAGE+8,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+8,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+8,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+8)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+8)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187863
(@GO_SCOURGE_CAGE+9,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+9,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+9,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+9)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+9)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187864
(@GO_SCOURGE_CAGE+10,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+10,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+10,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+10)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+10)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187865
(@GO_SCOURGE_CAGE+11,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+11,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+11,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+11)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+11)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187866
(@GO_SCOURGE_CAGE+12,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+12,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+12,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+12)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+12)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187867
(@GO_SCOURGE_CAGE+13,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+13,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+13,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+13)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+13)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187868
(@GO_SCOURGE_CAGE+14,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+14,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+14,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+14)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+14)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187870
(@GO_SCOURGE_CAGE+16,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+16,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+16,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+16)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+16)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187871
(@GO_SCOURGE_CAGE+17,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+17,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+17,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+17)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+17)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187872
(@GO_SCOURGE_CAGE+18,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+18,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+18,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+18)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+18)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187873
(@GO_SCOURGE_CAGE+19,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+19,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+19,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+19)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+19)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
-- 187874
(@GO_SCOURGE_CAGE+20,1,0,1,70,0,100,0,2,0,0,0,33,@NPC_SCOURGE_PRISONER,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Activated - Credit"),
(@GO_SCOURGE_CAGE+20,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_SCOURGE_PRISONER,5,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Set Data To Scourge Prisoner"),
(@GO_SCOURGE_CAGE+20,1,2,0,61,0,100,0,0,0,0,0,80,(@GO_SCOURGE_CAGE+20)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Linked - Run Script"),
((@GO_SCOURGE_CAGE+20)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Cage - Script - Reset GameObject"),
(@NPC_SCOURGE_PRISONER,0,0,0,10,0,100,0,1,15,15000,30000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Prisoner - Range - Say 0"),
(@NPC_SCOURGE_PRISONER,0,1,0,38,0,100,0,1,1,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Prisoner - Data Set - Say 1"),
(@NPC_SCOURGE_PRISONER,0,2,3,52,0,100,0,1,@NPC_SCOURGE_PRISONER,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Prisoner - Data Set - Unseen"),
(@NPC_SCOURGE_PRISONER,0,3,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Scourge Prisoner - Linked - Desapwn");
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=@NPC_SCOURGE_PRISONER;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 1, @NPC_SCOURGE_PRISONER, 0, 9, @QUEST, 0, 0, 1, 0, '', 'SAI - Help Text Only if Player in Range Have No Quest');
DELETE FROM `creature_text` WHERE `entry` = @NPC_SCOURGE_PRISONER;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_SCOURGE_PRISONER, 0, 0, "Don't let them turn me into one of those aberrations!", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner'),
(@NPC_SCOURGE_PRISONER, 0, 1, "Kill me... Kill me now!", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner'),
(@NPC_SCOURGE_PRISONER, 0, 2, "Somebody please... Help...", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner'),
(@NPC_SCOURGE_PRISONER, 0, 3, "Don't let them turn me into one of those aberrations!", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner'),
(@NPC_SCOURGE_PRISONER, 1, 0, "Freedom at last! I must return to Warsong Hold at once!", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner'),
(@NPC_SCOURGE_PRISONER, 1, 1, "I am forever indebted to you, friend.", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner'),
(@NPC_SCOURGE_PRISONER, 1, 2, "Thank you, friend.", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner'),
(@NPC_SCOURGE_PRISONER, 1, 3, "You have my thanks, stranger.", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner');