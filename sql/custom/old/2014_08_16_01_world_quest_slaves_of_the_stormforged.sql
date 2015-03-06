-- [SQL port] Quests - Slaves of the Stormforged scripted (Fixes #2438)
SET @NPC_CAPTIVE_MECHAGNOME := 29384;
SET @GOSSIP_MENU := 9871;
SET @KILL_CREDIT := 51933;
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @NPC_CAPTIVE_MECHAGNOME;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_CAPTIVE_MECHAGNOME AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
(@NPC_CAPTIVE_MECHAGNOME, 0, 62, @GOSSIP_MENU, 33, @KILL_CREDIT, 7, "Raufen-Captive Mechagnome - On Gossip Select - KC"),
(@NPC_CAPTIVE_MECHAGNOME, 1, 62, @GOSSIP_MENU, 72, 0, 7, "Raufen-Captive Mechagnome - On Gossip Select - Close Gossip"),
(@NPC_CAPTIVE_MECHAGNOME, 2, 62, @GOSSIP_MENU, 83, 1, 1, "Raufen-Captive Mechagnome - On Gossip Select - Remove Flag"),
(@NPC_CAPTIVE_MECHAGNOME, 3, 62, @GOSSIP_MENU, 41, 3000, 1, "Raufen-Captive Mechagnome - On Gossip Select - Delayed Despawn"),
(@NPC_CAPTIVE_MECHAGNOME, 4, 62, @GOSSIP_MENU, 1, 0, 1, "Raufen-Captive Mechagnome - On Gossip Select - Say Line 0");
DELETE FROM `creature_text` WHERE `entry` = @NPC_CAPTIVE_MECHAGNOME;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_CAPTIVE_MECHAGNOME, 0, 0, "Does not compute. Unit malfunctioning. Directive: Shut down.", 12, 0, 100, 1, 0, 0, "Captive Mechagnome"),
(@NPC_CAPTIVE_MECHAGNOME, 0, 1, "New directive: Leave mine and return to Inventor's Library.", 12, 0, 100, 1, 0, 0, "Captive Mechagnome"),
(@NPC_CAPTIVE_MECHAGNOME, 0, 2, "New directive: Assist in the defeat of the iron dwarves.", 12, 0, 100, 1, 0, 0, "Captive Mechagnome"),
(@NPC_CAPTIVE_MECHAGNOME, 0, 3, "Free again? Keeper Mimir's work awaits.", 12, 0, 100, 1, 0, 0, "Captive Mechagnome"),
(@NPC_CAPTIVE_MECHAGNOME, 0, 4, "Thank you, $r. I will join your struggle against the stormforged.", 12, 0, 100, 1, 0, 0, "Captive Mechagnome");