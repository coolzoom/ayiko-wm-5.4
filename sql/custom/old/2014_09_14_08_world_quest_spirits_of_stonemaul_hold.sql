-- [SQL] Quests - Spirits of Stonemaul Hold scripted (Feedback #1812)
SET @NPC_STONEMAUL_SPIRIT := 23786;
SET @GO_OGRE_REMAINS := 186332;
SET @SPELL_SUMMON_STONEMAUL_SPIRIT := 42421;
SET @SPELL_REDEEM_REMAINS := 42418;
SET @SPELL_TRIGGER_TRAP := 23360;
UPDATE `gameobject_template` SET `AIName` = "", `ScriptName` = "" WHERE `entry` = @GO_OGRE_REMAINS;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @GO_OGRE_REMAINS AND `source_type` = 1;
DELETE FROM `gameobject` WHERE `id` = 186334;
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @NPC_STONEMAUL_SPIRIT;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_STONEMAUL_SPIRIT AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC_STONEMAUL_SPIRIT, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Stonemaul Spirit - On Aggro - Say Line 0");
DELETE FROM `creature_text` WHERE `entry` = @NPC_STONEMAUL_SPIRIT;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC_STONEMAUL_SPIRIT,0, 0, "Me smash! You die!", 12, 0, 100, 0, 0, 0, "Stonemaul Spirit"),
(@NPC_STONEMAUL_SPIRIT,0, 1, "Ill crush you!", 12, 0, 100, 0, 0, 0, "Stonemaul Spirit"),
(@NPC_STONEMAUL_SPIRIT,0, 2, "Me crush puny friend of dragons!", 12, 0, 100, 0, 0, 0, "Stonemaul Spirit"),
(@NPC_STONEMAUL_SPIRIT,0, 3, "Raaar!!! Me smash $r!", 12, 0, 100, 0, 0, 0, "Stonemaul Spirit"),
(@NPC_STONEMAUL_SPIRIT,0, 4, "Why you wake ghost? Where other Stonemauls?!", 12, 0, 100, 0, 0, 0, "Stonemaul Spirit"),
(@NPC_STONEMAUL_SPIRIT,0, 5, "You leave Stonemaul lands now!", 12, 0, 100, 0, 0, 0, "Stonemaul Spirit");
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = @SPELL_REDEEM_REMAINS;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(@SPELL_REDEEM_REMAINS, @SPELL_SUMMON_STONEMAUL_SPIRIT, 0, "Redeem Remains - Summon Stonemaul Spirit");
DELETE FROM `conditions` WHERE `SourceEntry` = @SPELL_TRIGGER_TRAP AND `SourceTypeOrReferenceId` = 13;