-- [c++ and SQL] Quests - The Drakkensryd scripted (Feedback #1706) (this is missing waypoint_spline_data implementation to work)
SET @NPC_GRETTA_THE_ARBITER := 29796;
SET @NPC_BRUNNILDAR_CHALLENGER := 29366;
SET @NPC_HYLDSMEET_PROTODRAKE := 29679;
SET @NPC_HYLDSMEET_PROTODRAKE_STATIC := 29625;
SET @NPC_HYLDSMEET_DRAKERIDER := 29694;
SET @NPC_COLUMN_ORNAMENT := 29754;
SET @SPELL_FORCECAST_INITIAL_PROTODRAKE := 55253;
SET @SPELL_SUMMON_INITIAL_PROTODRAKE_SUMMON := 54952;
SET @SPELL_RIDE_PROTODRAKE := 55074;
SET @SPELL_PING_PROTODRAKE := 55075;
SET @SPELL_FLIGHT := 55034;
SET @QUEST_THE_DRAKKENSRYD := 12886;
UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = "" WHERE `entry` = @NPC_GRETTA_THE_ARBITER;
UPDATE `creature_template` SET `speed_run` = 1.28571 WHERE `entry` = @NPC_BRUNNILDAR_CHALLENGER;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `speed_walk` = 1.44444, `speed_run` = 2.85714, `InhabitType` = 4, `AIName` = "", `ScriptName` = "npc_hyldsmeet_protodrake" WHERE `entry` = @NPC_HYLDSMEET_PROTODRAKE;
UPDATE `creature_template` SET `InhabitType` = 4, `speed_walk` = 6, `speed_run` = 3.14286, `HoverHeight` = 2.25, `AIName` = "", `ScriptName` = "npc_hyldsmeet_protodrake_static" WHERE `entry` = @NPC_HYLDSMEET_PROTODRAKE_STATIC;
UPDATE `creature_template` SET `InhabitType` = 4, `AIName` = "", `ScriptName` = "npc_column_ornament" WHERE `entry` = @NPC_COLUMN_ORNAMENT;
DELETE FROM `creature_aura` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = @NPC_HYLDSMEET_PROTODRAKE_STATIC);
DELETE FROM `creature_template_aura` WHERE `entry` IN (@NPC_HYLDSMEET_PROTODRAKE, @NPC_HYLDSMEET_PROTODRAKE_STATIC);
UPDATE `creature` SET `MovementType` = 0 WHERE `id` = @NPC_HYLDSMEET_PROTODRAKE_STATIC;
DELETE FROM `vehicle_template_accessory` WHERE `entry` = @NPC_HYLDSMEET_PROTODRAKE_STATIC;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(@NPC_HYLDSMEET_PROTODRAKE_STATIC, @NPC_HYLDSMEET_DRAKERIDER, 1, 0, "Haldsmeet Protodrake - Drakerider", 6, 30000);
DELETE FROM `waypoint_spline_data` WHERE `c_entry` = @NPC_HYLDSMEET_PROTODRAKE;
INSERT INTO `waypoint_spline_data` (`c_entry`, `path_id`, `wp_id`, `position_x`, `position_y`, `position_z`) VALUES
(@NPC_HYLDSMEET_PROTODRAKE, 1, 1, 7088.463, -1775.965, 827.2373),
(@NPC_HYLDSMEET_PROTODRAKE, 1, 2, 7053.389, -1764.234, 849.2649),
(@NPC_HYLDSMEET_PROTODRAKE, 1, 3, 7037.312, -1694.386, 878.0701),
(@NPC_HYLDSMEET_PROTODRAKE, 1, 4, 7052.575, -1619.797, 908.2922),
(@NPC_HYLDSMEET_PROTODRAKE, 1, 5, 7111.007, -1488.156, 964.1196),
(@NPC_HYLDSMEET_PROTODRAKE, 1, 6, 7266.665, -1316.666, 1016.564),
(@NPC_HYLDSMEET_PROTODRAKE, 1, 7, 7312.502, -1199.707, 1062.369),
(@NPC_HYLDSMEET_PROTODRAKE, 1, 8, 7412.393, -882.8841, 1224.509),
(@NPC_HYLDSMEET_PROTODRAKE, 1, 9, 7674.905, -732.6868, 1372.15),
(@NPC_HYLDSMEET_PROTODRAKE, 1, 10, 7718.125, -573.4132, 1561.994),
(@NPC_HYLDSMEET_PROTODRAKE, 1, 11, 7674.419, -430.1167, 1684.939),
(@NPC_HYLDSMEET_PROTODRAKE, 1, 12, 7401.107, -365.3378, 1764.799),
(@NPC_HYLDSMEET_PROTODRAKE, 1, 13, 7285.596, -497.3738, 1887.36),
(@NPC_HYLDSMEET_PROTODRAKE, 2, 1, 7311.011, -616.6105, 1869.033),
(@NPC_HYLDSMEET_PROTODRAKE, 2, 2, 7370.865, -651.848, 1869.033),
(@NPC_HYLDSMEET_PROTODRAKE, 2, 3, 7509.258, -660.8832, 1869.033),
(@NPC_HYLDSMEET_PROTODRAKE, 2, 4, 7619.393, -590.8951, 1852.144),
(@NPC_HYLDSMEET_PROTODRAKE, 2, 5, 7559.713, -379.6735, 1858.255),
(@NPC_HYLDSMEET_PROTODRAKE, 2, 6, 7418.728, -349.8592, 1852.839),
(@NPC_HYLDSMEET_PROTODRAKE, 2, 7, 7326.712, -393.4353, 1869.033),
(@NPC_HYLDSMEET_PROTODRAKE, 2, 8, 7282.603, -578.8876, 1869.033);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_HYLDSMEET_PROTODRAKE, @NPC_COLUMN_ORNAMENT, @NPC_GRETTA_THE_ARBITER) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC_GRETTA_THE_ARBITER, 0, 0, 0, 19, 0, 100, 0, @QUEST_THE_DRAKKENSRYD, 0, 0, 0, 85, @SPELL_FORCECAST_INITIAL_PROTODRAKE, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Nepenthe-Gretta The Arbiter - On Quest Accept - Summon Protodrake");
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (@SPELL_FORCECAST_INITIAL_PROTODRAKE, @SPELL_SUMMON_INITIAL_PROTODRAKE_SUMMON);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(@SPELL_FORCECAST_INITIAL_PROTODRAKE, @SPELL_RIDE_PROTODRAKE, 0, "Summon Initial Protodrake casts Ride Vehicle");
DELETE FROM `spell_area` WHERE `quest_start` IN (12886, 13062);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(55012, 4422, 13062, 0, 0, 0, 2, 1, 74, 0),
(55012, 4430, 13062, 0, 0, 0, 2, 1, 74, 0),
(55012, 4432, 13062, 0, 0, 0, 2, 1, 74, 0),
(72914, 4422, 13062, 0, 0, 0, 2, 1, 74, 0),
(72914, 4430, 13062, 0, 0, 0, 2, 1, 74, 0),
(72914, 4432, 13062, 0, 0, 0, 2, 1, 74, 0),
(49416, 4422, 13062, 0, 0, 0, 2, 1, 74, 0),
(49416, 4430, 13062, 0, 0, 0, 2, 1, 74, 0);
UPDATE `quest_template` SET `OfferRewardText` = "Are you ready to ride, sister? There is no coming back." WHERE `Id` = 13062;