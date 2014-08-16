-- [c++ and SQL] Quests - Dark Deeds, Getting Battle-Ready, The Deepest Cut, Your First Lesson, Charging into Battle, Charge!, Charge, The First Lesson, Words of Power (24533), The Hunter's Path, Steadying Your Shot, A Rogue's Advantage, Learning the Word (A,H), Frost Nova, The Arts of a <class> (all quests), Learning New Techniques, Mastering the Arcane (26916), Steady Shot, Eviscerate (Goblin/Orc/Worgen), Flash Heal, Evisceratin' the Enemy, Filling Up the Spellbook, Corruption, Practice Corruption, A Woodsman's Training, Oh, A Hunter's Life For Me, Your Path Begins Here, Primal Strike, Tiger Palm, Kick, Punch, It's All in the Mind, Moonfire fixed (Fixes #2011, #446, #1373, #419, #2117, #5727, #2077, #1301, #3289, #1085, #4410, #5185, #486, #417, #348, #3498, #1074, #537, #324, #3640, #3380, #5859, #5893)
UPDATE `quest_template` SET `Title` = 'Frost Nova', `Objectives` = 'Reach level 3 to learn Frost Nova. Locate a Training Dummy outside the Sunspire and practice using it 2 times.', `Details` = 'As you begin to grow in power, your connection to the arcane will develop, granting you access to new spells.$B$BGo, develop your power, and then demonstrate what you learn for me.', `OfferRewardText` = 'Ah good, a $C. I''ve been expecting you.$B$BThere are a few tasks that I have which you are particularly suited to.', `CompletedText` = 'Return to Julia Sunstriker at the Sunspire on Sunstrider Isle..', `ObjectiveText1` = 'Practice Frost Nova', `ObjectiveText2` = '', `ObjectiveText3` = '', `ObjectiveText4` = '' WHERE `Id` = 10068;
UPDATE `quest_template` SET `MinLevel` = 2, `Title` = 'Moonfire', `Objectives` = 'Reach level 3 to learn Moonfire. Practice using it on a Training Dummy in Camp Narache.', `Details` = 'As you develop your skills, druid, you will begin to feel your connection to the Earthmother deepening. You will begin to understand new secrets of nature, and learn to cast new spells. Go now, get more experience, and return to me when you''ve learned a new spell. Demonstrate what you''ve learned.', `OfferRewardText` = 'You have a knack for the healing arts, $n. Wherever you go, your skills as a healer will be in demand. Return to me when you are ready for more training.', `ObjectiveText1` = 'Practice Moonfire' WHERE `Id` = 27067;
UPDATE `quest_template` SET `Title` = 'Corruption', `Objectives` = 'Reach level 3 to learn Corruption. Practice casting it on a Bloodfang Worgen.', `Details` = 'It is true then! You live!$B$BI never got a chance to share my greatest discovery with you. After I began my training, and began to become accomplished, I heard the voice Balcephoth of the felshadows in my head... he taught me the forbidden secrets of...$B$BCorruption!$B$BGo now, gain some more experience, maybe you''ll learn a new spell, too. You can go use it against the Bloodfang Worgen to our west.$B$BGo now, and practice your new spell against the Bloodfang Worgen to our west.', `ObjectiveText1` = 'Practice Corruption' WHERE `Id` = 14274;
UPDATE `quest_template` SET `SpecialFlags` = `SpecialFlags`|4 WHERE `Id` = 26198;
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` IN (35118, 42501, 44564, 44617, 44857, 45199, 47091);
UPDATE `creature_template` SET `AIName` = "", `ScriptName` = "npc_injured_draenei" WHERE `entry` = 16971;
UPDATE `creature_template` SET `npcflag` = 0, `AIName` = '', `ScriptName` = 'npc_tiki_target_troll' WHERE `entry` = 38038;
DELETE FROM `creature_template_addon` WHERE `entry` = 38038;
INSERT INTO `creature_template_addon` (`entry`, `emote`, `auras`) VALUES 
(38038, 0, '71066 7056 83470'); -- Tiki Target
UPDATE `creature_template` SET `faction_A` = 1604, `faction_H` = 1604 WHERE `entry` = 44857;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16971, 35118, 42501, 44564, 44617, 44857, 45199, 47091) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(42501, 0, 0, 1, 8, 0, 100, 0, 2061, 0, 6000, 6000, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Raufen-Wounded Infantry - On Spellhit Flash Heal - KC"),
(42501, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Raufen-Wounded Infantry - On Spellhit Flash Heal - Despawn"),
(44564, 0, 0, 1, 8, 0, 100, 0, 2061, 0, 6000, 6000, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Raufen-Wounded Trainee - On Spellhit Flash Heal - KC"),
(44564, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Raufen-Wounded Trainee - On Spellhit Flash Heal - Despawn"),
(44617, 0, 0, 1, 8, 0, 100, 0, 2061, 0, 6000, 6000, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Raufen-Wounded Sentinel - On Spellhit Flash Heal - KC"),
(44617, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Raufen-Wounded Sentinel - On Spellhit Flash Heal - Despawn"),
(44617, 0, 2, 3, 8, 0, 100, 0, 5185, 0, 6000, 6000, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Raufen-Wounded Sentinel - On Spellhit Healing Touch - KC"),
(44617, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Raufen-Wounded Sentinel - On Spellhit Healing Touch - Despawn"),
(44857, 0, 0, 1, 8, 0, 100, 0, 2061, 0, 6000, 6000, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Raufen-Wounded Outrunner - On Spellhit Flash Heal - KC"),
(44857, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Raufen-Wounded Outrunner - On Spellhit Flash Heal - Despawn"),
(45199, 0, 0, 1, 8, 0, 100, 0, 2061, 0, 6000, 6000, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Raufen-Wounded Brave - On Spellhit Flash Heal - KC"),
(45199, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Raufen-Wounded Brave - On Spellhit Flash Heal - Despawn"),
(45199, 0, 2, 3, 8, 0, 100, 0, 774, 0, 6000, 6000, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Raufen-Wounded Brave - On Spellhit Rejuvenation - KC"),
(45199, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Raufen-Wounded Brave - On Spellhit Rejuvenation - Despawn"),
(47091, 0, 0, 1, 8, 0, 100, 0, 774, 0, 6000, 6000, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Ramires-Wounded Guard - On Spellhit Rejuvenation - KC"),
(47091, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Wounded Guard - On Spellhit Rejuvenation - Despawn"),
(47091, 0, 2, 3, 8, 0, 100, 0, 2061, 0, 6000, 6000, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Wounded Guard - On Spellhit Flash Heal - KC"),
(47091, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Wounded Guard - On Spellhit Flash Heal - Despawn"),
(35118, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Bloodfang Worgen - at 30% HP - Cast Enrage"),
(35118, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Bloodfang Worgen - at 30% HP - Say Line 0"),
(35118, 0, 2, 0, 8, 0, 100, 1, 100, 0, 6000, 6000, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Bloodfang Worgen - On Spellhit Charge - KC"),
(35118, 0, 3, 0, 8, 0, 100, 1, 56641, 0, 6000, 6000, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Bloodfang Worgen - On Spellhit Steady Shot - KC"),
(35118, 0, 4, 0, 8, 0, 100, 1, 2098, 0, 6000, 6000, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Bloodfang Worgen - On Spellhit Eviscerate - KC"),
(35118, 0, 5, 0, 8, 0, 100, 1, 5143, 0, 6000, 6000, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Bloodfang Worgen - On Spellhit Arcane Missiles - KC"),
(35118, 0, 6, 0, 8, 0, 100, 1, 172, 0, 6000, 6000, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Bloodfang Worgen - On Spellhit Corruption - KC");
DELETE FROM `creature_text` WHERE `entry` IN (16971, 35118, 42501, 44564, 44617, 44857, 45199, 47091);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(35118, 0, 0, "%s becomes enraged!", 16, 0, 100, 0, 0, 0, "Bloodfang Worgen - combat Enrage");
UPDATE `creature` SET `spawntimesecs` = 9, `curhealth` = 1 WHERE `id` IN (42501, 44564, 44617, 44857, 45199, 47091);
DELETE FROM `spell_script_names` WHERE `ScriptName` = "spell_quests_spell_hit";

-- quest_template cleanup
UPDATE `quest_template` SET RequiredSpellCast1 = 0 WHERE RequiredNpcOrGo1 = 44175;
UPDATE `quest_template` SET RequiredSpellCast2 = 0 WHERE RequiredNpcOrGo2 = 44175;
UPDATE `quest_template` SET `ObjectiveText1` = '' WHERE `ObjectiveText1` = '0';
UPDATE `quest_template` SET `ObjectiveText2` = '' WHERE `ObjectiveText2` = '0';
UPDATE `quest_template` SET `ObjectiveText3` = '' WHERE `ObjectiveText3` = '0';
UPDATE `quest_template` SET `ObjectiveText4` = '' WHERE `ObjectiveText4` = '0';
UPDATE `quest_template` SET `EndText` = '' WHERE `EndText` = `ObjectiveText1`;