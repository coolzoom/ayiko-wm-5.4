/*
Navicat MySQL Data Transfer

Source Server         : trinity
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : world434

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2015-02-08 12:16:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for creature_script_names
-- ----------------------------
DROP TABLE IF EXISTS `creature_script_names`;
CREATE TABLE `creature_script_names` (
  `guid` int(10) unsigned NOT NULL,
  `ScriptName` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`),
  CONSTRAINT `fk__creature_scriptname__creature` FOREIGN KEY (`guid`) REFERENCES `creature` (`guid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
