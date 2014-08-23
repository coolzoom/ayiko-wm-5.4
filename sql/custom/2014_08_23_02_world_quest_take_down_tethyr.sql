-- [SQL] Quests - Take Down Tethyr! scripted (Feedback #3811)
SET @GO_COVE_CANNON := 186432;
SET @NPC_TETHYR := 23899;
SET @NPC_MAJOR_MILLS := 23905;
SET @NPC_THERAMORE_MARKSMAN := 23900;
SET @SPELL_CANNON_BLAST_DUMMY := 42578;
SET @SPELL_CANNON_BLAST_PROJECTILE := 42576;
SET @SPELL_CANNON_BLAST_DAMAGE := 22993;
SET @SPELL_SHOOT := 42580;
SET @SPELL_WATERBOLT := 42574;
SET @QUEST := 27222;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `StartScript` = 0, `SpecialFlags` = 2 WHERE `Id` = @QUEST;
DELETE FROM `quest_start_scripts` WHERE `id` = @QUEST;
DELETE FROM `db_script_string` WHERE `entry` = 2000000132;
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = @GO_COVE_CANNON;
UPDATE `gameobject` SET `spawntimesecs` = 120 WHERE `id` = @GO_COVE_CANNON;
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @NPC_MAJOR_MILLS;
UPDATE `creature_template` SET `faction_A` = 1770, `faction_H` = 1770, `unit_flags` = 4096, `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @NPC_THERAMORE_MARKSMAN;
UPDATE `creature_template` SET `minlevel` = 40, `maxlevel` = 40, `RegenHealth` = 0, `flags_extra` = 0, `InhabitType` = 2, `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @NPC_TETHYR;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_MAJOR_MILLS, @NPC_THERAMORE_MARKSMAN, @NPC_TETHYR) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_MAJOR_MILLS*100 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC_MAJOR_MILLS,0,0,1,19,0,100,0,@QUEST,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Major Mills - On Quest Accept - Say Line 0"),
(@NPC_MAJOR_MILLS,0,1,2,61,0,100,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0, "Nepenthe-Major Mills - On Quest Accept - Remove Questgiver Flag"),
(@NPC_MAJOR_MILLS,0,2,0,61,0,100,0,0,0,0,0,80,@NPC_MAJOR_MILLS*100,2,0,0,0,0,1,0,0,0,0,0,0,0, "Nepenthe-Major Mills - On Quest Accept - Run Script"),
(@NPC_MAJOR_MILLS*100,9,0,0,0,0,100,0,5000,5000,0,0,12,@NPC_THERAMORE_MARKSMAN,1,320000,0,0,0,8,0,0,0,-3904.77,-4635.09,9.62735,5.49334, "Nepenthe-Major Mills - On Script - Summon Theramore Marksman"),
(@NPC_MAJOR_MILLS*100,9,1,0,0,0,100,0,2000,2000,0,0,12,@NPC_THERAMORE_MARKSMAN,1,320000,0,0,0,8,0,0,0,-3856.59,-4622.45,9.24753,3.87856, "Nepenthe-Major Mills - On Script - Summon Theramore Marksman"),
(@NPC_MAJOR_MILLS*100,9,2,0,0,0,100,0,2000,2000,0,0,12,@NPC_THERAMORE_MARKSMAN,1,320000,0,0,0,8,0,0,0,-3917.6,-4648.53,9.32604,5.56795, "Nepenthe-Major Mills - On Script - Summon Theramore Marksman"),
(@NPC_MAJOR_MILLS*100,9,3,0,0,0,100,0,2000,2000,0,0,12,@NPC_THERAMORE_MARKSMAN,1,320000,0,0,0,8,0,0,0,-3890.48,-4620.7,9.55527,4.99383, "Nepenthe-Major Mills - On Script - Summon Theramore Marksman"),
(@NPC_MAJOR_MILLS*100,9,4,0,0,0,100,0,2000,2000,0,0,12,@NPC_THERAMORE_MARKSMAN,1,320000,0,0,0,8,0,0,0,-3865.94,-4617.2,9.26262,4.16523, "Nepenthe-Major Mills - On Script - Summon Theramore Marksman"),
(@NPC_MAJOR_MILLS*100,9,5,0,0,0,100,0,2000,2000,0,0,12,@NPC_THERAMORE_MARKSMAN,1,320000,0,0,0,8,0,0,0,-3834.8,-4645.41,9.25827,3.61152, "Nepenthe-Major Mills - On Script - Summon Theramore Marksman"),
(@NPC_MAJOR_MILLS*100,9,6,0,0,0,100,0,2000,2000,0,0,12,@NPC_THERAMORE_MARKSMAN,1,320000,0,0,0,8,0,0,0,-3826.61,-4655.32,9.21484,3.13243, "Nepenthe-Major Mills - On Script - Summon Theramore Marksman"),
(@NPC_MAJOR_MILLS*100,9,7,0,0,0,100,0,2000,2000,0,0,12,@NPC_THERAMORE_MARKSMAN,1,320000,0,0,0,8,0,0,0,-3830.76,-4673.74,9.50962,2.70832, "Nepenthe-Major Mills - On Script - Summon Theramore Marksman"),
(@NPC_MAJOR_MILLS*100,9,8,0,0,0,100,0,2000,2000,0,0,12,@NPC_THERAMORE_MARKSMAN,1,320000,0,0,0,8,0,0,0,-3843.65,-4687.59,9.6436,2.43735, "Nepenthe-Major Mills - On Script - Summon Theramore Marksman"),
(@NPC_MAJOR_MILLS*100,9,9,0,0,0,100,0,2000,2000,0,0,12,@NPC_THERAMORE_MARKSMAN,1,320000,0,0,0,8,0,0,0,-3858.49,-4703.49,9.17411,2.33525, "Nepenthe-Major Mills - On Script - Summon Theramore Marksman"),
(@NPC_MAJOR_MILLS*100,9,10,0,0,0,100,0,2000,2000,0,0,12,@NPC_THERAMORE_MARKSMAN,1,320000,0,0,0,8,0,0,0,-3851.97,-4697.24,9.36834,2.33525, "Nepenthe-Major Mills - On Script - Summon Theramore Marksman"),
(@NPC_MAJOR_MILLS*100,9,11,0,0,0,100,0,2000,2000,0,0,12,@NPC_THERAMORE_MARKSMAN,1,320000,0,0,0,8,0,0,0,-3924.35,-4656.55,9.15409,5.80749, "Nepenthe-Major Mills - On Script - Summon Theramore Marksman"),
(@NPC_MAJOR_MILLS*100,9,12,0,0,0,100,0,5000,5000,0,0,12,@NPC_TETHYR,2,180000,0,0,0,8,0,0,0,-3891.03,-4671.17,-1.52,0.74, "Nepenthe-Major Mills - On Script - Summon Tethyr"),
(@NPC_MAJOR_MILLS*100,9,13,0,0,0,100,0,2000,2000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, "Nepenthe-Major Mills - On Script - Say Line 1"),
(@NPC_MAJOR_MILLS*100,9,14,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, "Nepenthe-Major Mills - On Script - Say Line 2"),
(@NPC_MAJOR_MILLS*100,9,15,0,0,0,100,0,1000,1000,0,0,45,1,2,0,0,0,0,11,@NPC_THERAMORE_MARKSMAN,200,0,0,0,0,0, "Nepenthe-Major Mills - On Script - Set Data 1 2 Theramore Marksman"),
(@NPC_MAJOR_MILLS*100,9,16,0,0,0,100,0,180000,180000,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0, "Nepenthe-Major Mills - On Script - Add back Questgiver Flag"),
(@NPC_THERAMORE_MARKSMAN,0,0,1,11,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Theramore Marksman - On Spawn - Stop Movement"),
(@NPC_THERAMORE_MARKSMAN,0,1,0,61,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Theramore Marksman - On Spawn - Set React State Passive"),
(@NPC_THERAMORE_MARKSMAN,0,2,3,38,0,100,0,1,2,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Theramore Marksman - On Data set 1 2 - Set React State Aggressive"),
(@NPC_THERAMORE_MARKSMAN,0,3,0,61,0,100,0,0,0,0,0,11,@SPELL_SHOOT,0,0,0,0,0,11,@NPC_TETHYR,100,0,0,0,0,0,"Nepenthe-Theramore Marksman - On Data set 1 2 - Cast Shoot"),
(@NPC_THERAMORE_MARKSMAN,0,4,0,10,0,100,0,1,100,5000,8000,11,@SPELL_SHOOT,0,0,0,0,0,11,@NPC_TETHYR,100,0,0,0,0,0,"Nepenthe-Theramore Marksman - On Hostile LoS - Cast Shoot"),
(@NPC_TETHYR,0,0,0,11,0,100,0,0,0,0,0,2,16,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Tethyr - On Spawn - Set Faction Hostile"),
(@NPC_TETHYR,0,1,0,0,0,100,0,1000,4000,4000,5000,11,@SPELL_WATERBOLT,0,0,0,0,0,2,0,0,0,0,0,0,0,"Nepenthe-Tethyr - IC - Cast Waterbolt"),
(@NPC_TETHYR,0,2,3,6,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_THERAMORE_MARKSMAN,30,0,0,0,0,0,"Nepenthe-Tethyr - On Death - Set Data 1 1 Theramore Marksman"),
(@NPC_TETHYR,0,3,4,61,0,100,0,0,0,0,0,45,1,2,0,0,0,0,11,@NPC_MAJOR_MILLS,100,0,0,0,0,0,"Nepenthe-Tethyr - On Death - Set Data 1 2 Major Mills"),
(@NPC_TETHYR,0,4,0,61,0,100,0,0,0,0,0,26,@QUEST,0,0,0,0,0,24,0,0,0,0,0,0,0,"Nepenthe-Tethyr - On Death - Quest Complete"),
(@NPC_THERAMORE_MARKSMAN,0,5,0,38,0,100,0,1,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Theramore Marksman - On Data 1 1 set - Say Random Line 0"),
(@NPC_MAJOR_MILLS,0,3,0,38,0,100,0,1,2,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Major Mills - On Data 1 2 set - Add back Questgiver Flag"),
(@NPC_MAJOR_MILLS,0,4,0,35,0,100,0,@NPC_TETHYR,30000,30000,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nepenthe-Major Mills - On Summon Despawned - Add back Questgiver Flag");
DELETE FROM `creature_text` WHERE `entry` IN (@NPC_MAJOR_MILLS, @NPC_THERAMORE_MARKSMAN);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_MAJOR_MILLS,0,0,"Marksmen, form up and take your positions!",14,7,100,0,0,0, "Major Mills"),
(@NPC_MAJOR_MILLS,1,0,"Prepare to fire upon my command! Ready, aim...",14,7,100,0,0,0, "Major Mills"),
(@NPC_MAJOR_MILLS,2,0,"FIRE AT WILL!",14,7,100,0,0,0, "Major Mills"),
(@NPC_THERAMORE_MARKSMAN,0,0,"We did it! We've defeated Tethyr!",14,7,100,0,0,0, "Theramore Marksman"),
(@NPC_THERAMORE_MARKSMAN,0,1,"We defeated the sea monster!",14,7,100,0,0,0, "Theramore Marksman");
-- DELETE FROM `locales_creature_text` WHERE `entry` = @NPC_MAJOR_MILLS;
-- INSERT INTO `locales_creature_text` (`entry`, `groupid`, `id`, `text_loc8`) VALUES 
-- (@NPC_MAJOR_MILLS,0,0,"Продолжайте двигаться!");
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (13, 17) AND `SourceEntry` IN (@SPELL_CANNON_BLAST_DUMMY, @SPELL_CANNON_BLAST_PROJECTILE, @SPELL_CANNON_BLAST_DAMAGE, @SPELL_SHOOT);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, @SPELL_CANNON_BLAST_DUMMY, 0, 0, 31, 1, 3, @NPC_TETHYR, 0, 0, 0, "", "Cannon Blast targets Tethyr"),
(13, 1, @SPELL_CANNON_BLAST_PROJECTILE, 0, 0, 31, 1, 3, @NPC_TETHYR, 0, 0, 0, "", "Cannon Blast targets Tethyr"),
(17, 0, @SPELL_CANNON_BLAST_DAMAGE, 0, 0, 31, 0, 3, @NPC_TETHYR, 0, 0, 0, "", "Cannon Blast targets Tethyr"),
(17, 0, @SPELL_SHOOT, 0, 0, 31, 1, 3, @NPC_TETHYR, 0, 0, 0, "", "Shoot targets Tethyr");
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = @SPELL_CANNON_BLAST_DUMMY;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(@SPELL_CANNON_BLAST_DUMMY, @SPELL_CANNON_BLAST_PROJECTILE, 0, "Cannon Blast Dummy casts Cannon Blast Projectile"),
(@SPELL_CANNON_BLAST_DUMMY, @SPELL_CANNON_BLAST_DAMAGE, 0, "Cannon Blast Dummy casts Cannon Blast Damage");