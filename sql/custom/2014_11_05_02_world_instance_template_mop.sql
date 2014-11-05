-- [SQL] [Internal] Instances - instance_template entries for mop redone
DELETE FROM `instance_template` WHERE `map` IN (960, 961, 962, 994, 959, 996, 1001, 1004, 1007, 1008, 1009, 1011, 1098, 1136);
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES
(959, 870, "instance_shadopan_monastery", 0), -- Shado-Pan Monastery
(960, 870, "instance_temple_of_the_jade_serpent", 0), -- Temple of the Jade Serpent
(961, 870, "instance_stormstout_brewery", 0), -- Stormstout Brewery
(962, 870, "instance_gate_of_the_setting_sun", 0), -- Gate of the Setting Sun
(994, 870, "instance_mogu_shan_palace", 0), -- Mogu'shan Palace
(996, 870, "instance_terrace_of_endless_spring", 0), -- Terrace of Endless Spring
(1001, 0, "", 0), -- Scarlet Halls
(1004, 0, "instance_scarlet_monastery", 0), -- Scarlet Monastery
(1007, 0, "instance_scholomance", 0), -- Scholomance
(1008, 870, "instance_mogu_shan_vault", 0), -- Mogu'shan Vaults
(1009, 870, "instance_heart_of_fear", 0), -- Heart of Fear
(1011, 870, "instance_siege_of_niuzao_temple", 0), -- Siege of Niuzao Temple
(1098, 870, "", 0), -- Throne of Thunder
(1136, 870, "instance_siege_of_orgrimmar", 0); -- Siege of Orgrimmar