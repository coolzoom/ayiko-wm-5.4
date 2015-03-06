-- [SQL] Quests - Forged Documents daily quest completion event scripted (Refs #8823, Fixes #7876)
SET @NPC_MASTER_MATHIAS_SHAW := 332;
SET @NPC_DARLENE_STOKX := 43693;
SET @NPC_JELINEK_SHARPSHEAR := 29142;
SET @NPC_FIELD_MARSHAL_AFRASIABI := 14721;
SET @NPC_THOMAS_MILLER := 3518;
SET @NPC_AUCTIONEER_CHILTON := 8670;
SET @QUEST_FORGED_DOCUMENTS_A := 27675;
SET @NPC_SCOUT_STRONGHAND := 14375;
SET @NPC_AMBASSADOR_DOWNSINGER := 17098;
SET @NPC_BRANZLIT := 44853;
SET @NPC_GRUNT_GRIMFUL := 44871;
SET @NPC_SUJA := 46708;
SET @QUEST_FORGED_DOCUMENTS_H := 27686;
UPDATE `quest_template` SET `Flags` = 2097152|4096, `SpecialFlags` = `SpecialFlags`|1 WHERE `Id` IN (@QUEST_FORGED_DOCUMENTS_A, @QUEST_FORGED_DOCUMENTS_H);  -- make them daily repeatable
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` IN
(@NPC_MASTER_MATHIAS_SHAW, @NPC_DARLENE_STOKX, @NPC_JELINEK_SHARPSHEAR, @NPC_FIELD_MARSHAL_AFRASIABI, @NPC_THOMAS_MILLER, @NPC_SCOUT_STRONGHAND, @NPC_AMBASSADOR_DOWNSINGER, @NPC_BRANZLIT, @NPC_GRUNT_GRIMFUL);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_MASTER_MATHIAS_SHAW, @NPC_MASTER_MATHIAS_SHAW*100, @NPC_DARLENE_STOKX, @NPC_DARLENE_STOKX*100, @NPC_JELINEK_SHARPSHEAR, @NPC_JELINEK_SHARPSHEAR*100,
@NPC_FIELD_MARSHAL_AFRASIABI, @NPC_FIELD_MARSHAL_AFRASIABI*100, @NPC_THOMAS_MILLER, @NPC_THOMAS_MILLER*100, @NPC_SCOUT_STRONGHAND, @NPC_SCOUT_STRONGHAND*100, @NPC_AMBASSADOR_DOWNSINGER, @NPC_AMBASSADOR_DOWNSINGER*100,
@NPC_BRANZLIT, @NPC_BRANZLIT*100, @NPC_GRUNT_GRIMFUL, @NPC_GRUNT_GRIMFUL*100);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC_MASTER_MATHIAS_SHAW, 0, 0, 0, 20, 0, 100, 0, @QUEST_FORGED_DOCUMENTS_A, 0, 0, 0, 80, @NPC_MASTER_MATHIAS_SHAW*100, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Master Mathias Shaw - On Quest Complete - Run Script"),
(@NPC_MASTER_MATHIAS_SHAW*100, 9, 0, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Master Mathias Shaw - On Script - Emote Line 0"),
(@NPC_MASTER_MATHIAS_SHAW*100, 9, 1, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Master Mathias Shaw - On Script - Say Random Line 1"),
(@NPC_DARLENE_STOKX, 0, 0, 0, 20, 0, 100, 0, @QUEST_FORGED_DOCUMENTS_A, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Darlene Stokx - On Quest Complete - Say Random Line 0"),
(@NPC_JELINEK_SHARPSHEAR, 0, 0, 0, 20, 0, 100, 0, @QUEST_FORGED_DOCUMENTS_A, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Jelinek Sharpshear - On Quest Complete - Say Random Line 0"),
(@NPC_FIELD_MARSHAL_AFRASIABI, 0, 0, 0, 20, 0, 100, 0, @QUEST_FORGED_DOCUMENTS_A, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Field Marshal Afrasiabi - On Quest Complete - Say Random Line 0"),
(@NPC_THOMAS_MILLER, 0, 0, 0, 1, 0, 100, 0, 4000, 9000, 25000, 30000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Thomas Miller - OOC - Say Random Line 0"),
(@NPC_THOMAS_MILLER, 0, 1, 0, 20, 0, 100, 0, @QUEST_FORGED_DOCUMENTS_A, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Thomas Miller - On Quest Complete - Say Random Line 0"),
(@NPC_AMBASSADOR_DOWNSINGER, 0, 0, 0, 20, 0, 100, 0, @QUEST_FORGED_DOCUMENTS_H, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Ambassador Dawnsinger - On Quest Complete - Say Random Line 0"),
(@NPC_BRANZLIT, 0, 0, 0, 20, 0, 100, 0, @QUEST_FORGED_DOCUMENTS_H, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Darlene Stokx - On Quest Complete - Say Random Line 0"),
(@NPC_GRUNT_GRIMFUL, 0, 0, 0, 20, 0, 100, 0, @QUEST_FORGED_DOCUMENTS_H, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Jelinek Sharpshear - On Quest Complete - Say Random Line 0"),
(@NPC_SCOUT_STRONGHAND, 0, 0, 0, 11, 0, 100, 1, 0, 0, 0, 0, 11, 41634, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Scout Stronghand - On Respawn - Cast Invisibility and Stealth Detection"),
(@NPC_SCOUT_STRONGHAND, 0, 1, 0, 20, 0, 100, 0, @QUEST_FORGED_DOCUMENTS_H, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Field Marshal Afrasiabi - On Quest Complete - Say Random Line 0");
DELETE FROM `creature_text` WHERE `entry` IN (@NPC_MASTER_MATHIAS_SHAW, @NPC_DARLENE_STOKX, @NPC_JELINEK_SHARPSHEAR, @NPC_FIELD_MARSHAL_AFRASIABI, @NPC_THOMAS_MILLER, @NPC_SCOUT_STRONGHAND, @NPC_AMBASSADOR_DOWNSINGER,
@NPC_BRANZLIT, @NPC_GRUNT_GRIMFUL);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_MASTER_MATHIAS_SHAW, 0, 0, "%s eyes you suspiciously.", 16, 0, 100, 0, 0, 0, "Master Mathias Shaw"),
(@NPC_MASTER_MATHIAS_SHAW, 1, 0, "I could swear I just paid a fine like this...", 12, 0, 100, 0, 0, 0, "Master Mathias Shaw"),
(@NPC_MASTER_MATHIAS_SHAW, 1, 1, "This is a dangerous game you play... take your gold for now, but know that I'm watching you.", 12, 0, 100, 0, 0, 0, "Master Mathias Shaw"),
(@NPC_MASTER_MATHIAS_SHAW, 1, 2, "Her bag of gold should be in the mail! It's insulting she sends someone to collect from me while I'm working.", 12, 0, 100, 0, 0, 0, "Master Mathias Shaw"),
(@NPC_DARLENE_STOKX, 0, 0, "I can't be held responsible every time someone falls off their mount. I don't know how you got the official seal on this, but take your payment and don't question my horses again!", 12, 0, 100, 0, 0, 0, "Darlene Stokx"),
(@NPC_DARLENE_STOKX, 0, 1, "I must have been pretty tipsy the night I promised you a pony. Take your money and no hard feelings, okay?", 12, 0, 100, 0, 0, 0, "Darlene Stokx"),
(@NPC_JELINEK_SHARPSHEAR, 0, 0, "I don't usually give refunds for haircuts, but I must admit I did a terrible job on yours. My apologies.", 12, 0, 100, 0, 0, 0, "Jelinek Sharpshear"),
(@NPC_JELINEK_SHARPSHEAR, 0, 1, "Oh... I think I'm going to be sick. How could I have cut off someone's ear and not have noticed? Please take this money to a healer and have it reattached.", 12, 0, 100, 0, 0, 0, "Jelinek Sharpshear"),
(@NPC_FIELD_MARSHAL_AFRASIABI, 0, 0, "You honor us by delivering this information. It seems as if we've finally found the spy in the city... a homeless man whom we will execute shortly. Take your reward, you've done well!", 12, 0, 100, 0, 0, 0, "Field Marshal Afrasiabi"),
(@NPC_FIELD_MARSHAL_AFRASIABI, 0, 1, "These documents implicate several troll spies. Consider their heads forfeit. Take your compensation and spend it wisely; it's drawn from the taxpayers of Stormwind.", 12, 0, 100, 0, 0, 0, "Field Marshal Afrasiabi"),
(@NPC_FIELD_MARSHAL_AFRASIABI, 0, 2, "These documents implicate several orcish spies. Our best assassins will be dispatched for this treachery. Take your compensation and spend it wisely; it's drawn from the taxpayers of Stormwind.", 12, 0, 100, 0, 0, 0, "Field Marshal Afrasiabi"),
(@NPC_THOMAS_MILLER, 0, 0, "Fresh bread for sale!", 12, 0, 100, 0, 0, 0, "Thomas Miller"),
(@NPC_THOMAS_MILLER, 0, 1, "Freshly baked bread for sale!", 12, 0, 100, 0, 0, 0, "Thomas Miller"),
(@NPC_THOMAS_MILLER, 0, 2, "Rolls, buns and bread. Baked fresh!", 12, 0, 100, 0, 0, 0, "Thomas Miller"),
(@NPC_THOMAS_MILLER, 0, 3, "Warm, wholesome bread!", 12, 0, 100, 0, 0, 0, "Thomas Miller"),
(@NPC_THOMAS_MILLER, 1, 0, "Oh my... someone became ill from my bread? How can this be? Please, I hope my meager earnings are enough to help out.", 12, 0, 100, 0, 0, 0, "Thomas Miller"),
(@NPC_THOMAS_MILLER, 1, 1, "I've heard of mice trapped in ale bottles before, but never in bread. P-p-please take everything and don't speak of this to anyone.", 12, 0, 100, 0, 0, 0, "Thomas Miller"),
(@NPC_AMBASSADOR_DOWNSINGER, 0, 0, "I can't believe you sell those here, of all places. I'll swing by the cook later to pick them up.", 12, 0, 100, 0, 0, 0, "Ambassador Dawnsinger"),
(@NPC_AMBASSADOR_DOWNSINGER, 0, 1, "They had what on them? Tell the tailor my ceremonial robes had better be perfect with everything she's charging me.", 12, 0, 100, 0, 0, 0, "Ambassador Dawnsinger"),
(@NPC_BRANZLIT, 0, 0, "An account of all the fractions of copper we round off...brilliant.", 12, 0, 100, 0, 0, 0, "Branzlit"),
(@NPC_BRANZLIT, 0, 1, "I couldn't have miscalculated you interest...because we don't give any! I'd rather pay than be subject to the trails, so take my persona cash.", 12, 0, 100, 0, 0, 0, "Branzlit"),
(@NPC_GRUNT_GRIMFUL, 0, 0, "I know I worked a hundred and sixty eight hours last week...but if the paperwork says I didn't clock in, maybe you're right.", 12, 0, 100, 0, 0, 0, "Grunt Grimful"),
(@NPC_GRUNT_GRIMFUL, 0, 1, "I really need to stop gambling. Tell them no more cards for me.", 12, 0, 100, 0, 0, 0, "Grunt Grimful"),
(@NPC_SCOUT_STRONGHAND, 0, 0, "So you caught a thief. Enjoy your finder's fee!", 12, 0, 100, 0, 0, 0, "Scout Stronghand"),
(@NPC_SCOUT_STRONGHAND, 0, 1, "It appears as if that gold we recovered from the dead rogue was yours. You certainly are lucky...", 12, 0, 100, 0, 0, 0, "Scout Stronghand");