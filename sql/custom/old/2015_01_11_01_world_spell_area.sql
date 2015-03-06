-- [SQL] Exploits - Ulduar: Electrical Charge 25% damage buff will be removed when zoning out of the instance (Refs #11574)
DELETE FROM `spell_area` WHERE `spell` IN (61900, 61901, 61902);
INSERT INTO `spell_area` (`spell`, `area`) VALUES
(61900, 4273),
(61901, 4273),
(61902, 4273);