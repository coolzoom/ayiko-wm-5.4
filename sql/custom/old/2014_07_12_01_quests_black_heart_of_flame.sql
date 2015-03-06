-- [SQL] Quests - If You're Not Against Us... scripted
SET @ENTRY_TYRUS_BLACKHORN := 39933;
SET @ENTRY_TYRUS_BLACKHORN_FREED := 40172;
SET @ENTRY_TYRUS_BLACKHORN_BINDINGS := 40169;
SET @ENTRY_MATOCLAW := 39928;
SET @ENTRY_TWILIGHT_INFERNO_LORD := 39974;
SET @ENTRY_SUBJUGATED_INFERNO_LORD := 40093;
SET @ENTRY_THOLEMBAAR := 40107;
SET @ENTRY_SUMMON_BUNNY := 40121;
SET @ENTRY_WAILING_WEED := 40066;
SET @KILL_CREDIT := 40099;
SET @GOSSIP_MAIN := 11316;
SET @GOSSIP_EXTRA := 11322;
SET @TEXT_MAIN_00 := 15772;
SET @TEXT_MAIN_02 := 15784;
SET @TEXT_MAIN_03 := 17112;
SET @TEXT_EXTRA_00 := 15778;
SET @TEXT_EXTRA_02 := 15780;
SET @TEXT_EXTRA_03 := 15781;
SET @TEXT_EXTRA_04 := 15782;
SET @SPELL_KC := 74722;
SET @SPELL_TYRUS_BLACKHORN_IS_CAPTIVE := 74862;
SET @SPELL_TYRUS_BINDINGS_LEFT := 74677;
SET @SPELL_TYRUS_BINDINGS_RIGHT := 74678;
SET @SPELL_SEE_CAPTIVE := 73426;
SET @SPELL_QUEST_INVIS_1 := 76633;
SET @SPELL_I_AM_A_LANTERN := 74676;
SET @SPELL_FORCECAST_SUMMON_BLACKHORN_FREED := 74892;
SET @SPELL_FREE_TYRUS_BLACKHORN_FROM_BONDS := 74882;
SET @SPELL_BLACKHORN_BREAKS_FREE := 74883;
SET @SPELL_SUBJUGATE := 74763;
SET @SPELL_SUMMON_SUBJUGATED_INFERNO_LORD := 74760;
SET @SPELL_DIZZY := 69526;
SET @SPELL_FLAME_STOMP := 80600;
SET @SPELL_RING_OF_FIRE := 74788;
SET @SPELL_GROUND_BURST := 74787;
SET @SOUND_ENTRY := 20773;
SET @QUEST_IF_YOURE_NOT_AGAINST_US := 25404;
SET @QUEST_SEEDS_OF_THEIR_DEMISE := 25408;
SET @QUEST_BLACK_HEART_OF_FLAME := 25428;
SET @CGUID_BINDING_LEFT := 40597;
SET @CGUID_BINDING_RIGHT := 40598;
SET @CGUID_TYRUS_BLACKHORN := 6406458;
UPDATE `creature_template` SET `exp` = 3, `faction_A` = 2252, `faction_H` = 2252, `unit_class` = 2, `unit_flags` = 32768, `InhabitType` = 3, `AIName` = "SmartAI", `WDBVerified` = 15595 WHERE `entry` = @ENTRY_TYRUS_BLACKHORN;
UPDATE `creature_template` SET `minlevel` = 81, `maxlevel` = 81, `exp` = 3, `faction_A` = 2252, `faction_H` = 2252, `mindmg` = 405, `maxdmg` = 609, `attackpower` = 152, `dmg_multiplier` = 1.1, `baseattacktime` = 2000, `unit_class` = 2, `unit_flags` = 32768, `AIName` = "SmartAI", `WDBVerified` = 15595 WHERE `entry` = @ENTRY_TYRUS_BLACKHORN_FREED;
UPDATE `creature_template` SET `faction_A` = 190, `faction_H` = 190, `baseattacktime` = 2000, `unit_flags` = 33555200, `AIName` = "SmartAI", `WDBVerified` = 15595 WHERE `entry` = @ENTRY_TYRUS_BLACKHORN_BINDINGS;
UPDATE `creature_template` SET `exp` = 3, `dmg_multiplier` = 1.1, `unit_class` = 2, `unit_flags` = 32768, `InhabitType` = 3, `WDBVerified` = 15595 WHERE `entry` = @ENTRY_MATOCLAW;
UPDATE `creature` SET spawntimesecs = 120 WHERE `id` = @ENTRY_TYRUS_BLACKHORN;
DELETE FROM `creature` WHERE `id` IN (@ENTRY_TYRUS_BLACKHORN_BINDINGS, @ENTRY_MATOCLAW);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@CGUID_BINDING_LEFT, @ENTRY_TYRUS_BLACKHORN_BINDINGS, 1, 1, 1, 21072, 1, 4931.04, -1868.5, 1334.79, 3.22886, 90, 0, 0, 6141, 0, 0, 0, 0, 0), -- left
(@CGUID_BINDING_RIGHT, @ENTRY_TYRUS_BLACKHORN_BINDINGS, 1, 1, 1, 21072, 1, 4915.54, -1869.71, 1334.77, 0.0872665, 90, 0, 0, 6141, 0, 0, 0, 0, 0), -- right
(7219001, @ENTRY_MATOCLAW, 1, 1, 1, 31626, 1, 5148, -1737.05, 1337.01, 4.11898, 300, 0, 0, 44679, 8338, 0, 0, 0, 0);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY_TYRUS_BLACKHORN, @ENTRY_TYRUS_BLACKHORN_BINDINGS, @ENTRY_TYRUS_BLACKHORN_FREED, -40597, -40598) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY_TYRUS_BLACKHORN*100, @ENTRY_TYRUS_BLACKHORN_FREED*100) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(-40597, 0, 0, 0, 1, 0, 100, 1, 500, 500, 0, 0, 11, @SPELL_TYRUS_BINDINGS_LEFT, 3, 0, 0, 0, 0, 10, @CGUID_TYRUS_BLACKHORN, @ENTRY_TYRUS_BLACKHORN, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn's Bindings Left - On Spawn - Cast Tyrus' Binding"),
(-40598, 0, 0, 0, 1, 0, 100, 1, 500, 500, 0, 0, 11, @SPELL_TYRUS_BINDINGS_RIGHT, 3, 0, 0, 0, 0, 10, @CGUID_TYRUS_BLACKHORN, @ENTRY_TYRUS_BLACKHORN, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn's Bindings Right - On Spawn - Cast Tyrus' Binding"),
(@ENTRY_TYRUS_BLACKHORN, 0, 0, 0, 62, 0, 100, 0, @GOSSIP_EXTRA+3, 0, 0, 0, 11, @SPELL_KC, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn - On Gossip Select - KC"),
(@ENTRY_TYRUS_BLACKHORN, 0, 1, 2, 62, 0, 100, 0, @GOSSIP_EXTRA+3, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn - On Gossip Select - Close Gossip"),
(@ENTRY_TYRUS_BLACKHORN, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn - On Gossip Select - Say Line 0"),
(@ENTRY_TYRUS_BLACKHORN, 0, 3, 4, 20, 0, 100, 0, @QUEST_BLACK_HEART_OF_FLAME, 0, 0, 0, 11, @SPELL_FORCECAST_SUMMON_BLACKHORN_FREED, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn - On Quest Complete - Run Script"),
(@ENTRY_TYRUS_BLACKHORN, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn - On Quest Complete - Despawn"),
(@ENTRY_TYRUS_BLACKHORN_FREED, 0, 0, 0, 1, 0, 100, 1, 500, 500, 0, 0, 80, @ENTRY_TYRUS_BLACKHORN_FREED*100, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn Freed - Just Summoned - Run Script"),
(@ENTRY_TYRUS_BLACKHORN_FREED*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn Freed - On Script - Emote Line 0"),
(@ENTRY_TYRUS_BLACKHORN_FREED*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, @SPELL_BLACKHORN_BREAKS_FREE, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn Freed - On Script - Cast Blackhorn Breaks Free"),
(@ENTRY_TYRUS_BLACKHORN_FREED*100, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn Freed - On Script - Say Line 1"),
(@ENTRY_TYRUS_BLACKHORN_FREED*100, 9, 3, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn Freed - On Script - Say Line 2"),
(@ENTRY_TYRUS_BLACKHORN_FREED*100, 9, 4, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn Freed - On Script - Emote Line 3"),
(@ENTRY_TYRUS_BLACKHORN_FREED*100, 9, 5, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn Freed - On Script - Say Line 4"),
(@ENTRY_TYRUS_BLACKHORN_FREED*100, 9, 6, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn Freed - On Script - Say Line 5"),
(@ENTRY_TYRUS_BLACKHORN_FREED*100, 9, 7, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn Freed - On Script - Say Line 6"),
(@ENTRY_TYRUS_BLACKHORN_FREED*100, 9, 8, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Tyrus Blackhorn Freed - On Script - Despawn");
DELETE FROM `creature_text` WHERE `entry` IN (@ENTRY_TYRUS_BLACKHORN, @ENTRY_TYRUS_BLACKHORN_FREED);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@ENTRY_TYRUS_BLACKHORN, 0, 0, "Madness. Chaos. Much as I thrill to see the titans' work undone, I do wish to remain alive when the master returns. I will help you.", 12, 0, 100, 0, 0, 0, "Tyrus Blackhorn"),
(@ENTRY_TYRUS_BLACKHORN_FREED, 0, 0, "The dark ashes swirl around Tyrus Blackhorn, who utters an incantation:", 16, 0, 100, 0, 0, 0, "Tyrus Blackhorn Freed"),
(@ENTRY_TYRUS_BLACKHORN_FREED, 1, 0, "Ashes from the plane below, scattered by the hand of foe...", 12, 0, 100, 0, 0, @SOUND_ENTRY+0, "Tyrus Blackhorn Freed"),
(@ENTRY_TYRUS_BLACKHORN_FREED, 2, 0, "Gods of terror, quake and thunder, tear these mortal bonds asunder!", 12, 0, 100, 0, 0, @SOUND_ENTRY+1, "Tyrus Blackhorn Freed"),
(@ENTRY_TYRUS_BLACKHORN_FREED, 3, 0, "Tyrus Blackhorn barks a cruel laugh.", 16, 0, 100, 0, 0, @SOUND_ENTRY+2, "Tyrus Blackhorn Freed"),
(@ENTRY_TYRUS_BLACKHORN_FREED, 4, 0, "Thank you, mortal! Your heroism in The Inferno has made my escape possible.", 12, 0, 100, 0, 0, @SOUND_ENTRY+3, "Tyrus Blackhorn Freed"),
(@ENTRY_TYRUS_BLACKHORN_FREED, 5, 0, "As a reward, I will allow you to live.", 12, 0, 100, 0, 0, @SOUND_ENTRY+4, "Tyrus Blackhorn Freed"),
(@ENTRY_TYRUS_BLACKHORN_FREED, 6, 0, "But your time will come soon enough. Yes, mortal. Soon enough...", 12, 0, 100, 0, 0, @SOUND_ENTRY+5, "Tyrus Blackhorn");
DELETE FROM `gossip_menu` WHERE `entry` IN (@GOSSIP_MAIN+0, @GOSSIP_EXTRA+0, @GOSSIP_EXTRA+2, @GOSSIP_EXTRA+3, @GOSSIP_EXTRA+4);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(@GOSSIP_MAIN+0, @TEXT_MAIN_00),
(@GOSSIP_MAIN+0, @TEXT_MAIN_02),
(@GOSSIP_MAIN+0, @TEXT_MAIN_03),
(@GOSSIP_EXTRA+0, @TEXT_EXTRA_00),
(@GOSSIP_EXTRA+2, @TEXT_EXTRA_02),
(@GOSSIP_EXTRA+3, @TEXT_EXTRA_03),
(@GOSSIP_EXTRA+4, @TEXT_EXTRA_04);
DELETE FROM `npc_text` WHERE `ID` IN (@TEXT_MAIN_00, @TEXT_EXTRA_00, @TEXT_EXTRA_02, @TEXT_EXTRA_03, @TEXT_EXTRA_04, @TEXT_MAIN_02, @TEXT_MAIN_03);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) VALUES
(@TEXT_MAIN_00,"$R. Have you been sent to speak with me? How long has it been since the master's demise on these very slopes?",'',0,1,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,15595),
(@TEXT_EXTRA_00,"My help? Have things really grown so dire?$B$B<The distant flames flicker in Blackhorn's cruel, dark eyes.>$B$BTell me why I shouldn't let your world burn.",'',0,1,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,15595),
(@TEXT_EXTRA_02,"Mortal? Yes I was once mortal. Weak.$B$BYou see my bonds now? These restraints are nothing compared to being shackled within a mortal coil.$B$BEven now the master's gifts stir within me, ready to be unleashed.$B$BNo, $c, my mortal days have passed, and if any flame of my former life still flickers within I would wish it extinguished. You'll have to do better than that, $r.",'',0,1,0,1,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,15595),
(@TEXT_EXTRA_03,"Destroyed? Yes, that's possible. At night I am haunted with visions of this world being torn asunder from within. I feel neither sorrow nor rage. Merely... curiosity.$B$BI served my master in exchange for power, $c. But those you fight... they strive for oblivion. A strange motivation.",'',0,1,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,15595),
(@TEXT_EXTRA_04,"<Blackhorn strains against his bonds, for the first time visibly upset.>$B$BRedemption! You act as if there's an escape from the Burning Legion. So smug! As though your efforts a decade ago or in Outland have slowed the Legion a single iota! They will come, $r. They will return. And I will be here to welcome them.",'',0,1,5,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,15595),
(@TEXT_MAIN_02,"You have talent, $N. But mercy makes you weak.",'',0,1,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,15595),
(@TEXT_MAIN_03,"<Blackhorn gazes out across the distant inferno, then turns his attention back to you.>",'',0,1,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,15595);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (@GOSSIP_MAIN+0, @GOSSIP_EXTRA+0, @GOSSIP_EXTRA+2, @GOSSIP_EXTRA+3, @GOSSIP_EXTRA+4);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(@GOSSIP_MAIN+0,0,0,"Yes, Blackhorn. I've been sent to request your aid, if you are willing.",1,1,@GOSSIP_EXTRA+0,0,0,0,""),
(@GOSSIP_EXTRA+0,0,0,"You were a mortal once, Blackhorn. One of us.",1,1,@GOSSIP_EXTRA+2,0,0,0,""),
(@GOSSIP_EXTRA+0,1,0,"You'll be destroyed if the Twilight's Hammer brings this mountain down!",1,1,@GOSSIP_EXTRA+3,0,0,0,""),
(@GOSSIP_EXTRA+0,2,0,"Matoclaw believes that you may yet be redeemed. This is your chance to atone for siding with demons.",1,1,@GOSSIP_EXTRA+4,0,0,0,""),
(@GOSSIP_EXTRA+2,0,0,"You'll be destroyed if the Twilight's Hammer brings this mountain down!",1,1,@GOSSIP_EXTRA+3,0,0,0,""),
(@GOSSIP_EXTRA+2,1,0,"Where is your master now, Blackhorn? It's not too late to turn to the light...",1,1,@GOSSIP_EXTRA+4,0,0,0,""),
(@GOSSIP_EXTRA+3,0,0,"Will you help us to defeat them?",1,1,0,0,0,0,""),
(@GOSSIP_EXTRA+4,0,0,"Assuming there's a world left for your legion to conquer. The Twilight's Hammer seeks to destroy everything.",1,1,@GOSSIP_EXTRA+3,0,0,0,"");
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14, 15) AND `SourceGroup` IN (@GOSSIP_MAIN+0, @GOSSIP_EXTRA+0, @GOSSIP_EXTRA+2, @GOSSIP_EXTRA+3, @GOSSIP_EXTRA+4);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(14,@GOSSIP_MAIN+0,@TEXT_MAIN_00,0,0,9,0,@QUEST_IF_YOURE_NOT_AGAINST_US,0,0,0,0,'',"Show gossip if on quest"),
(14,@GOSSIP_MAIN+0,@TEXT_MAIN_02,0,0,9,0,@QUEST_SEEDS_OF_THEIR_DEMISE,0,0,0,0,'',"Show gossip if on quest"),
(14,@GOSSIP_MAIN+0,@TEXT_MAIN_03,0,0,28,0,@QUEST_IF_YOURE_NOT_AGAINST_US,0,0,0,0,'',"Show gossip if completed quest"),
(15,@GOSSIP_MAIN+0,0,0,0,9,0,@QUEST_IF_YOURE_NOT_AGAINST_US,0,0,0,0,'',"Show gossip if on quest");
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` IN (@SPELL_TYRUS_BINDINGS_LEFT, @SPELL_TYRUS_BINDINGS_RIGHT);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, @SPELL_TYRUS_BINDINGS_LEFT, 0, 0, 31, 1, 3, @ENTRY_TYRUS_BLACKHORN, 0, 0, 0, '', "Tyrus' Binding targets Tyrus Blackhorn"),
(17, 0, @SPELL_TYRUS_BINDINGS_RIGHT, 0, 0, 31, 1, 3, @ENTRY_TYRUS_BLACKHORN, 0, 0, 0, '', "Tyrus' Binding targets Tyrus Blackhorn");
DELETE FROM `creature_template_addon` WHERE `entry` = @ENTRY_TYRUS_BLACKHORN_BINDINGS;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
(@ENTRY_TYRUS_BLACKHORN_BINDINGS, '73426 76633 74676');
DELETE FROM `spell_area` WHERE `spell` = @SPELL_TYRUS_BLACKHORN_IS_CAPTIVE;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(@SPELL_TYRUS_BLACKHORN_IS_CAPTIVE, 5013, 0, @QUEST_BLACK_HEART_OF_FLAME, 0, 0, 2, 1, 64, 11);
DELETE FROM `spell_target_position` WHERE `id` = @SPELL_FREE_TYRUS_BLACKHORN_FROM_BONDS;
INSERT INTO `spell_target_position` (`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(@SPELL_FREE_TYRUS_BLACKHORN_FROM_BONDS, 0, 1, 4923.34, -1875.07, 1334.14, 1.604);

-- [SQL] Quests - Seeds of Their Demise scripted
UPDATE `creature_template` SET `exp` = 3, `faction_A` = 2000, `faction_H` = 2000, `unit_class` = 8, `unit_flags` = 32768, `AIName` = 'SmartAI', `flags_extra` = 64, `WDBVerified` = 15595 WHERE `entry` = @ENTRY_WAILING_WEED;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @ENTRY_WAILING_WEED AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY_WAILING_WEED, 0, 2, 0, 1, 0, 100, 0, 500, 1000, 25000, 25000, 11, 74737, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Wailing Weed - OOC - Cast Leafy Wail"),
(@ENTRY_WAILING_WEED, 0, 3, 0, 0, 0, 100, 0, 500, 1000, 12000, 12000, 11, 80546, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Wailing Weed - IC - Cast Bile Blast"),
(@ENTRY_WAILING_WEED, 0, 4, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Wailing Weed - On Death - Emote Line 0");
DELETE FROM `creature_text` WHERE `entry` = @ENTRY_WAILING_WEED;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@ENTRY_WAILING_WEED, 0, 0, "Wailing Weed emits a shrill cry!", 16, 0, 100, 0, 0, 0, "Wailing Weed");
DELETE FROM `creature_loot_template` WHERE `entry` = @ENTRY_WAILING_WEED AND `item` != 53102;
DELETE FROM `creature_template_addon` WHERE `entry` = @ENTRY_WAILING_WEED;
INSERT INTO `creature_template_addon` (`entry`, `emote`) VALUES
(@ENTRY_WAILING_WEED, 429);

-- [SQL] Quests - A New Master scripted
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `exp` = 3, `faction_A` = 2146, `faction_H` = 2146, `mindmg` = 307, `maxdmg` = 459, `attackpower` = 115, `dmg_multiplier` = 1.4, `unit_class` = 8, `unit_flags` = 32768, `AIName` = 'SmartAI', `WDBVerified` = 15595 WHERE `entry` = @ENTRY_TWILIGHT_INFERNO_LORD;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `exp` = 3, `faction_A` = 35, `faction_H` = 35, `mindmg` = 307, `maxdmg` = 459, `attackpower` = 115, `dmg_multiplier` = 1.4, `unit_class` = 8, `unit_flags` = 32768, `WDBVerified` = 15595 WHERE `entry` = @ENTRY_SUBJUGATED_INFERNO_LORD;
DELETE FROM `creature` WHERE `id` = @ENTRY_SUBJUGATED_INFERNO_LORD;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @ENTRY_TWILIGHT_INFERNO_LORD AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Aggro - Set Phase 1"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 1, 0, 4, 1, 100, 1, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Aggro - Stop Moving"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 2, 0, 4, 1, 100, 1, 0, 0, 0, 0, 11, 32707, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Aggro - Cast Incinerate"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 3, 0, 4, 1, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Aggro - Say Random Line 0"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 4, 0, 9, 1, 100, 0, 0, 40, 3400, 4700, 11, 32707, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - IC - Cast Incinerate"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 5, 0, 9, 1, 100, 0, 40, 100, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Range - Start Moving when not in Incinerate Range"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 6, 0, 9, 1, 100, 0, 10, 15, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Range - Stop Moving at 15 Yards"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 7, 0, 9, 1, 100, 0, 0, 40, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Range - Stop Moving when in Incinerate Range"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 8, 0, 3, 1, 100, 0, 0, 15, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Low Mana - Set Phase 2 at 15% Mana"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 9, 0, 3, 2, 100, 0, 0, 15, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Low Mana - Start Moving at 15% Mana"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 10, 0, 3, 2, 100, 0, 30, 100, 100, 100, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Enough Mana - Set Phase 1 When Mana is above 30%"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 11, 0, 2, 2, 100, 1, 0, 15, 0, 0, 22, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Low Health - Set Phase 3 at 15% HP"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 12, 0, 2, 3, 100, 1, 0, 15, 0, 0, 25, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Low Health - Flee at 15% HP"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 13, 0, 7, 3, 100, 1, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Evade - Reset"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 14, 0, 2, 3, 100, 1, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Low Health - Say Text at 15% HP"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 15, 16, 0, 1, 100, 0, 4000, 7000, 17000, 17000, 11, 11962, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - IC - Cast Immolate"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 16, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - IC - Say Random Line 1"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 17, 0, 0, 1, 100, 0, 9000, 9000, 11000, 13000, 11, 13339, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - IC - Cast Fire Blast"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 18, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Death - Say Random Line 2"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 19, 20, 8, 0, 100, 0, @SPELL_SUBJUGATE, 0, 10000, 10000, 33, @KILL_CREDIT, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Spellhit - KC"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 20, 21, 61, 0, 100, 0, 0, 0, 0, 0, 11, @SPELL_SUMMON_SUBJUGATED_INFERNO_LORD, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Spellhit - Cast Summon Subjugated Inferno Lord"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 21, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Twilight Inferno Lord - On Spellhit - Despawn");
DELETE FROM `creature_text` WHERE `entry` = @ENTRY_TWILIGHT_INFERNO_LORD;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 1, "You will make an excellent sacrifice.", 12, 0, 100, 0, 0, 0, "Twilight Inferno Lord"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 2, "All will be ash.", 12, 0, 100, 0, 0, 0, "Twilight Inferno Lord"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 3, "Flames below, obey the call of the Twilight's Hammer!", 12, 0, 100, 0, 0, 0, "Twilight Inferno Lord"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 0, 4, "The end of all things is upon us!", 12, 0, 100, 0, 0, 0, "Twilight Inferno Lord"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 1, 0, "This world will burn.", 12, 0, 100, 0, 0, 0, "Twilight Inferno Lord"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 1, 1, "You only delay the inevitable.", 12, 0, 100, 0, 0, 0, "Twilight Inferno Lord"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 2, 0, "The flames... they lick... they bite... always biting...", 12, 0, 100, 0, 0, 0, "Twilight Inferno Lord"),
(@ENTRY_TWILIGHT_INFERNO_LORD, 2, 1, "I just want to set the world on fire....", 12, 0, 100, 0, 0, 0, "Twilight Inferno Lord");
DELETE FROM `spell_scripts` WHERE `id` = @SPELL_SUBJUGATE;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = @SPELL_SUBJUGATE;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = @SPELL_SUMMON_SUBJUGATED_INFERNO_LORD;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, @SPELL_SUBJUGATE, 0, 0, 31, 1, 3, @ENTRY_TWILIGHT_INFERNO_LORD, 0, 0, 0, '', "Subjugate targets Twilight Inferno Lord"),
(17, 0, @SPELL_SUBJUGATE, 0, 0, 36, 1, 0, 0, 0, 1, 0, '', "Subjugate targets dead Twilight Inferno Lord"),
(13, 1, @SPELL_SUMMON_SUBJUGATED_INFERNO_LORD, 0, 0, 31, 0, 3, @ENTRY_TWILIGHT_INFERNO_LORD, 0, 0, 0, '', "Summon Subjugated Inferno Lord targets Twilight Inferno Lord"),
(13, 1, @SPELL_SUMMON_SUBJUGATED_INFERNO_LORD, 0, 0, 36, 0, 0, 0, 0, 1, 0, '', "Summon Subjugated Inferno Lord targets dead Twilight Inferno Lord");
DELETE FROM `creature_template_addon` WHERE `entry` = @ENTRY_SUBJUGATED_INFERNO_LORD;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
(@ENTRY_SUBJUGATED_INFERNO_LORD, @SPELL_DIZZY);

-- [SQL] Quests - The Name Never Spoken fixed
UPDATE `quest_template` SET `SpecialFlags` = 0, `RequiredNpcOrGo1` = -202765, `RequiredNpcOrGo2` = -202764, `RequiredNpcOrGo3` = -202763, `RequiredNpcOrGoCount1` = 1, `RequiredNpcOrGoCount2` = 1, `RequiredNpcOrGoCount3` = 1 WHERE `Id` = 25412;
UPDATE `quest_template` SET `Flags` = 16520, `SpecialFlags` = 2 WHERE `Id` = 25443; -- deprecated version
DELETE FROM `creature_questrelation` WHERE `quest` = 25443;

-- [SQL] Quests - Black Heart of Flame scripted (Feedback #1560)
-- [SQL] Quests - Black Heart of Flame questchain completion event with Tyrus Blackhorn scripted
UPDATE `creature_template` SET `exp` = 3, `faction_A` = 2146, `faction_H` = 2146, `speed_walk` = 0.777776, `unit_flags` = 33280, `InhabitType` = 3, `AIName` = "SmartAI", `WDBVerified` = 15595 WHERE `entry` = @ENTRY_THOLEMBAAR;
UPDATE `creature_template` SET `baseattacktime` = 2000, `unit_flags` = 33587200, `VehicleId` = 721, `AIName` = "SmartAI", `WDBVerified` = 15595 WHERE `entry` = @ENTRY_SUMMON_BUNNY;
DELETE FROM `creature` WHERE `id` IN (@ENTRY_THOLEMBAAR, @ENTRY_SUMMON_BUNNY);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `AreaID`) VALUES
(6406476, 40107, 1, 1, 1, 0, 1, 5157.08, -1483.67, 1346.76, 1.961, 90, 0, 0, 74374, 0, 0, 0, 0, 0, 0); -- workaround, needs terrainswap to summon mob
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY_THOLEMBAAR, @ENTRY_SUMMON_BUNNY) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY_SUMMON_BUNNY, 0, 0, 1, 54, 0, 100, 1, 0, 0, 0, 0, 11, @SPELL_GROUND_BURST, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Thol'embaar Summon Bunny - Just Summoned - Cast Ground Burst and Lava"),
(@ENTRY_SUMMON_BUNNY, 0, 1, 0, 61, 0, 100, 1, 0, 0, 0, 0, 12, @ENTRY_THOLEMBAAR, 4, 120000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Thol'embaar Summon Bunny - Just Summoned - Summon Thol'embaar"),
(@ENTRY_SUMMON_BUNNY, 0, 2, 0, 1, 0, 100, 0, 125000, 125000, 125000, 125000, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Thol'embaar Summon Bunny - OOC Timer - Despawn"),
(@ENTRY_THOLEMBAAR, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Thol'embaar - On Aggro - Say Line 0"),
(@ENTRY_THOLEMBAAR, 0, 1, 0, 9, 0, 100, 0, 0, 8, 15800, 18300, 11, @SPELL_FLAME_STOMP, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Thol'embaar - On Range - Cast Flame Stomp"),
(@ENTRY_THOLEMBAAR, 0, 2, 0, 9, 0, 100, 0, 0, 8, 10000, 30000, 11, @SPELL_RING_OF_FIRE, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Thol'embaar - On Range - Cast Ring of Fire"),
(@ENTRY_THOLEMBAAR, 0, 3, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Thol'embaar - On Death - Say Line 1");
DELETE FROM `creature_text` WHERE `entry` = @ENTRY_THOLEMBAAR;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@ENTRY_THOLEMBAAR, 0, 0, "Fool of a mortal. Flesh burns.", 12, 0, 100, 0, 0, 0, "Thol'embaar"),
(@ENTRY_THOLEMBAAR, 1, 0, "Others will come... the age of mortals... has passed.", 12, 0, 100, 0, 0, 0, "Thol'embaar");