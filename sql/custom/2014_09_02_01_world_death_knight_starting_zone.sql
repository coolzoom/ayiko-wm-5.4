-- [SQL] Death Knight - Quests - The Plaguebringer's Request, The Gift That Keeps On Giving, Tonight We Dine In Havenshire, Nowhere To Run And Nowhere To Hide, How To Win Friends And Influence Enemies, Ambush At The Overlook fixed (Feedback #113, #108, #107, #114, #115, #120)
UPDATE `quest_template` SET `PrevQuestId` = 12714, `NextQuestId` = 12723, `ExclusiveGroup` = -12716, `NextQuestIdChain` = 12723, `Method` = 2 WHERE `Id` = 12716;
UPDATE `quest_template` SET `NextQuestId` = 12778 WHERE `Id` = 12757;
UPDATE `quest_template` SET `Method` = 2 WHERE `Id` IN (12698, 12679, 12719, 12754);
UPDATE `quest_template` SET `Method` = 2, `EndText` = '"Crimson Dawn" Revealed', `RequiredSourceItemId4` = 39371, `RequiredSourceItemCount4` = 2 WHERE `Id` = 12720;

-- [SQL] Death Knight - Quests - A Special Surprise races requirements corrected (Fixes #119)
UPDATE `quest_template` SET `RequiredRaces` = 32 WHERE `Id` = 12739;
UPDATE `quest_template` SET `RequiredRaces` = 512 WHERE `Id` = 12747;
UPDATE `quest_template` SET `RequiredRaces` = 4 WHERE `Id` = 12744;
UPDATE `quest_template` SET `RequiredRaces` = 128 WHERE `Id` = 12749;

-- [SQL] Death Knight - Quests - Death Comes From On High fixed (Feedback #106)
UPDATE `quest_template` SET `Method` = 2, `SpecialFlags` = 32, `RequiredSpellCast1` = 51858, `RequiredSpellCast2` = 51858, `RequiredSpellCast3` = 51858 WHERE `Id` = 12641;

-- [SQL] Death Knight - Quests - The Path Of The Righteous Crusader fixed (Feedback #12724)
UPDATE `quest_template` SET `Method` = 2, `NextQuestId` = 12754, `ExclusiveGroup` = -12751 WHERE `Id` = 12724;

-- [SQL] Death Knight - Quests - Massacre At Light's Point fixed (Feedback #109)
UPDATE `quest_template` SET `Method` = 2, `RewardTalents` = 0, `RequiredNpcOrGoCount1` = 100 WHERE `Id` = 12701;

-- [SQL] Death Knight - Quests - If Chaos Drives, Let Suffering Hold The Reins will no longer award double kill credits (Fixes #110)
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (28611, 28608, 28557, 28609, 28576, 28577) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(28611, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 11, 6660, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Captain - On Aggro - Cast Shoot"),
(28611, 0, 1, 0, 0, 0, 100, 0, 4000, 5000, 12000, 14000, 11, 52221, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Captain - IC - Cast Heroic Strike"),
(28608, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Medic - On Aggro - Set Phase 1"),
(28608, 0, 1, 0, 4, 1, 100, 1, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Medic - On Aggro - Stop Moving"),
(28608, 0, 2, 0, 4, 1, 100, 1, 0, 0, 0, 0, 11, 15498, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Medic - On Aggro - Cast Bolt"),
(28608, 0, 3, 0, 9, 1, 100, 0, 0, 40, 3400, 4700, 11, 15498, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Medic - IC - Cast bolt"),
(28608, 0, 4, 0, 9, 1, 100, 0, 40, 100, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Medic - On Range - Start Moving"),
(28608, 0, 5, 0, 9, 1, 100, 0, 10, 15, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Medic - On Range - Stop Moving"),
(28608, 0, 6, 0, 9, 1, 100, 0, 0, 40, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Medic - On Range - Stop Moving"),
(28608, 0, 7, 0, 3, 1, 100, 0, 0, 15, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Medic - On Low Mana - Set Phase 2"),
(28608, 0, 8, 0, 3, 2, 100, 0, 0, 15, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Medic - On Low Mana - Start Moving"),
(28608, 0, 9, 0, 3, 2, 100, 0, 30, 100, 100, 100, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Medic - On High Mana - Set Phase 1"),
(28608, 0, 10, 0, 0, 1, 100, 0, 6000, 7000, 39000, 45000, 11, 19725, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Medic - IC - Cast Turn Undead"),
(28608, 0, 11, 0, 1, 0, 100, 0, 500, 1000, 600000, 600000, 11, 13864, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Medic - On Spawn - Cast Power Word: Fortitude"),
(28557, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 31, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Peasant - On Aggro - Set Random Phase"),
(28557, 0, 1, 2, 4, 1, 100, 1, 0, 0, 0, 0, 17, 431, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Peasant - On Aggro - Play Emote Fear"),
(28557, 0, 2, 3, 61, 1, 100, 1, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Peasant - On Aggro - Stop Attack"),
(28557, 0, 3, 4, 61, 1, 100, 1, 0, 0, 0, 0, 4, 14992, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Peasant - On Aggro - Play Sound Male"),
(28557, 0, 4, 5, 61, 1, 100, 1, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Peasant - On Aggro - Stop Move"),
(28557, 0, 5, 0, 61, 1, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Peasant - On Aggro - Say Line 0"),
(28557, 0, 6, 0, 0, 1, 100, 0, 20000, 20000, 40000, 40000, 4, 14992, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Peasant - IC - Play Sound Male Scream"),
(28557, 0, 7, 8, 7, 1, 100, 1, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Peasant - On Evade - Reset Emote"),
(28557, 0, 8, 0, 61, 1, 100, 1, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Peasant - On Evade - Reset Phase"),
(28557, 0, 9, 0, 6, 1, 100, 1, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Peasant - On Death - Reset Emote"),
(28557, 0, 10, 11, 61, 2, 100, 1, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Peasant - On Aggro - Start Attack"),
(28557, 0, 11, 0, 61, 2, 100, 1, 0, 0, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Peasant - On Aggro - Start Move"),
(28557, 0, 12, 0, 7, 2, 100, 1, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Peasant - On Evade - Reset Phase"),
(28609, 0, 0, 0, 0, 0, 100, 0, 3000, 3500, 13400, 14600, 11, 25710, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Infantryman - IC - Cast Heroic Strike"),
(28609, 0, 1, 0, 0, 0, 100, 0, 8000, 8900, 17000, 22400, 11, 53399, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scarlet Infantryman - IC - Cast Sweeping Slam"),
(28576, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 31, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Set Random Phase"),
(28576, 0, 1, 2, 4, 1, 100, 1, 0, 0, 0, 0, 17, 431, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Play Emote Fear"),
(28576, 0, 2, 3, 61, 1, 100, 1, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Stop Attack"),
(28576, 0, 3, 4, 61, 1, 100, 1, 0, 0, 0, 0, 4, 14991, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Play Sound Male"),
(28576, 0, 4, 5, 61, 1, 100, 1, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Stop Move"),
(28576, 0, 5, 0, 61, 1, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Say Line 0"),
(28576, 0, 6, 0, 0, 1, 100, 0, 20000, 20000, 40000, 40000, 4, 14991, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - IC - Play Sound Male Scream"),
(28576, 0, 7, 0, 2, 1, 100, 1, 0, 70, 0, 0, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - At 70% HP - Say Line 1"),
(28576, 0, 8, 9, 7, 1, 100, 1, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Evade - Reset Emote"),
(28576, 0, 9, 0, 61, 1, 100, 1, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Evade - Reset Phase"),
(28576, 0, 10, 0, 6, 1, 100, 1, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Death - Reset Emote"),
(28576, 0, 11, 12, 4, 2, 100, 1, 0, 0, 0, 0, 11, 52262, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Cast Cornered and Enraged!"),
(28576, 0, 12, 13, 61, 2, 100, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Say Line 2"),
(28576, 0, 13, 14, 61, 2, 100, 1, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Start Attack"),
(28576, 0, 14, 0, 61, 2, 100, 1, 0, 0, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Start Move"),
(28576, 0, 15, 0, 7, 2, 100, 1, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Evade - Reset Phase"),
(28577, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 31, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Set Random Phase"),
(28577, 0, 1, 2, 4, 1, 100, 1, 0, 0, 0, 0, 17, 431, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Play Emote Fear"),
(28577, 0, 2, 3, 61, 1, 100, 1, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Stop Attack"),
(28577, 0, 3, 4, 61, 1, 100, 1, 0, 0, 0, 0, 4, 14991, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Play Sound Male"),
(28577, 0, 4, 5, 61, 1, 100, 1, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Stop Move"),
(28577, 0, 5, 0, 61, 1, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Say Line 0"),
(28577, 0, 6, 0, 0, 1, 100, 0, 20000, 20000, 40000, 40000, 4, 14991, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - IC - Play Sound Male Scream"),
(28577, 0, 7, 0, 2, 1, 100, 1, 0, 70, 0, 0, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - At 70% HP - Say Line 1"),
(28577, 0, 8, 9, 7, 1, 100, 1, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Evade - Reset Emote"),
(28577, 0, 9, 0, 61, 1, 100, 1, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Evade - Reset Phase"),
(28577, 0, 10, 0, 6, 1, 100, 1, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Death - Reset Emote"),
(28577, 0, 11, 12, 4, 2, 100, 1, 0, 0, 0, 0, 11, 52262, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Cast Cornered and Enraged!"),
(28577, 0, 12, 13, 61, 2, 100, 1, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Say Line 2"),
(28577, 0, 13, 14, 61, 2, 100, 1, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Start Attack"),
(28577, 0, 14, 0, 61, 2, 100, 1, 0, 0, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Aggro - Start Move"),
(28577, 0, 15, 0, 7, 2, 100, 1, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Citizen of Havenshire - On Evade - Reset Phase");

-- [SQL] Death Knight - Quests - Into the Realm of Shadows corrected (Feedback #112)
DELETE FROM `quest_start_scripts` WHERE `id` = 12687;
UPDATE `quest_template` SET `StartScript` = 0 WHERE `Id` = 12687;

-- [SQL] Death Knight - Acherus: The Ebon Hold portal problems fixed (Feedback #5102)
DELETE FROM `gameobject` WHERE `id` IN (191538, 191539, 191542, 191364);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(151237, 191538, 609, 1, 1|4|64|231, 2390.02, -5640.91, 377.093, 0.593, 0, 0, 0.292372, 0.956305, 25, 100, 0),
(212737, 191538, 0, 1, 1|64|257, 2390.02, -5640.91, 377.094, 0.593, 0, 0, 0.292372, 0.956305, 25, 100, 0),
(151235, 191539, 609, 1, 1|4|64|231, 2383.65, -5645.2, 420.772, 0.593, 0, 0, 0.292372, 0.956305, 25, 100, 0),
(212734, 191539, 0, 1, 1|64|257, 2383.65, -5645.2, 420.773, 0.593, 0, 0, 0.292372, 0.956305, 25, 100, 0),
(57145, 191542, 571, 1, 1, 6175.19, -2017.27, 241.009, 2.31256, 0, 0, 0.915311, 0.402747, 25, 100, 1),
(57146, 191542, 571, 1, 1, 5171.69, -1666.64, 242.781, 2.88851, 0, 0, 0.992005, 0.126199, 25, 100, 1),
(212736, 191542, 571, 1, 1, 2418.44, 6456.02, 50.214, 1.60866, 0, 0, 0, 0, 25, 100, 1),
(65973, 191364, 609, 1, 1|4|64, 2430.61, -5730.01, 157.302, 2.55552, 0, 0, 0.938191, 0.346117, 25, 100, 0),
(79618, 191364, 0, 1, 1|257, 2430.61, -5730.01, 157.301, 2.55552, 0, 0, 0.938191, 0.346117, 25, 100, 0);