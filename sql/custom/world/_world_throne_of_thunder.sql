DELETE FROM `instance_template` WHERE `map` = 1098;
INSERT INTO `instance_template` (map, parent, script, allowMount) VALUES
(1098, 1064, 'instance_throne_of_thunder', 0);

DELETE FROM `creature_model_info` WHERE `modelid` IN (47331, 47333, 11686, 47693, 47341, 47951, 48048);
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`) VALUES
(47331, 0.868055, 3.75, 0), -- 47331
(47333, 0.868055, 3.75, 0), -- 47333
(11686, 0.5, 1, 2), -- 11686
(47693, 1.5, 1.5, 2), -- 47693
(47341, 2.5, 1.5, 0), -- 47341
(47951, 1.224, 6, 0), -- 47951
(48048, 4, 1.5, 2); -- 48048

DELETE FROM `creature_equip_template` WHERE `entry` IN (70246, 69176);
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(70246, 0, 93755, 0), -- 70246
(69176, 93667, 0, 0); -- 69176

DELETE FROM `spell_script_names` WHERE `spell_id` IN (137389, 137429, 137374, 138990, 137194, 137507);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(137389, 'spell_focused_lightning_speed'),
(137429, 'spell_focused_lightning_aoe'),
(137374, 'spell_focused_lightning_detonation'),
(138990, 'spell_focused_lightning_detonation'),
(137194, 'spell_focused_lightning_targeting'),
(137507, 'spell_implosion'),
(138349, 'spell_static_wound'),
(138389, 'spell_static_wound_damage'),
(137162, 'spell_static_burst'),
(138568, 'spell_lightning_storm_visual');