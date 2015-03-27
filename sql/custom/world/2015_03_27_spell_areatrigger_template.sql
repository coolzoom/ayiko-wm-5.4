-- ----------------------------
-- Table structure for spell_areatrigger_template
-- ----------------------------
DROP TABLE IF EXISTS `spell_areatrigger_template`;
CREATE TABLE `spell_areatrigger_template` (
  `Entry` int(10) unsigned NOT NULL,
  `Flags` int(10) unsigned NOT NULL,
  `CollisionType` int(10) unsigned NOT NULL,
  `Radius` float unsigned NOT NULL,
  `ScaleX` float unsigned NOT NULL,
  `ScaleY` float unsigned NOT NULL,
  `ScriptName` varchar(64) NOT NULL,
  PRIMARY KEY (`Entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
