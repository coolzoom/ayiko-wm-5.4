/* Lin Tenderpaw now give the quest: The Torch of Strength */
DELETE FROM `creature_queststarter` WHERE `id` = 60981 AND `quest` = 31492;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (60981, 31492);
DELETE FROM `creature_questender` WHERE `id` = 60981 AND `quest` = 31492;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (60981, 31492);

/* Kafa'goot "Deposit" total change */
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(211456, 22, 3675, 'Kafa\'goot "Deposit"', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 116799, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 16048);