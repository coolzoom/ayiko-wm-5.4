-- [SQL] Quests - Standards and Practices scripted (Feedback #4487)
SET @SPELL  := 32205; -- Place Mag'har Battle Standard
SET @OGUID := 142;
UPDATE `quest_template` SET `RequiredItemId1` = 0, `RequiredItemId4` = 25458, `RequiredItemCount1` = 0, `RequiredItemCount4` = 1, `ObjectiveText1` = 'First Battle Standard Placed' WHERE `Id` = 9910;
UPDATE `gameobject_template` SET `data0` = 1393 WHERE `entry` IN (182261, 182262, 182263, 182264);
DELETE FROM `disables` WHERE `sourceType` = 0 AND `entry` = @SPELL;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(0, @SPELL, 64, '', '', 'Ignore LOS for Place Mag''har Battle Standard');
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` IN (18305,18306,18307);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18305,18306,18307) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(18305,0,0,0,8,0,100,0,32205,0,0,0,33,18305,0,0,0,0,0,7,0,0,0,0,0,0,0,'Raufen-Burning Blade Pyre (01) - On Spellhit - KC'),
(18306,0,0,0,8,0,100,0,32205,0,0,0,33,18306,0,0,0,0,0,7,0,0,0,0,0,0,0,'Raufen-Burning Blade Pyre (02) - On Spellhit - KC'),
(18307,0,0,0,8,0,100,0,32205,0,0,0,33,18307,0,0,0,0,0,7,0,0,0,0,0,0,0,'Raufen-Burning Blade Pyre (03) - On Spellhit - KC');
DELETE FROM `gameobject` WHERE `id`=182263;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@OGUID+0,182263,530,1,1,-2532.99,6306.90,14.0280,2.81871,0,0,0.986996,0.160743,120,100,1),
(@OGUID+1,182263,530,1,1,-2474.44,6111.16,91.7629,3.66388,0,0,0.966096,-0.258184,120,100,1),
(@OGUID+2,182263,530,1,1,-2533.21,6168.56,59.9387,3.75028,0,0,0.954044,-0.299666,120,100,1);