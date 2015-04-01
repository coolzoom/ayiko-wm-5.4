/* Lin Tenderpaw now give the quest: The Torch of Strength */
DELETE FROM `creature_queststarter` WHERE `id` = 60981 AND `quest` = 31492;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (60981, 31492);
DELETE FROM `creature_questender` WHERE `id` = 60981 AND `quest` = 31492;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (60981, 31492);

/* Kafa'goot "Deposit" total change */
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(211456, 22, 3675, 'Kafa\'goot "Deposit"', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 116799, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 16048);

/* Reward fixed for Angler's daily quests */
UPDATE `quest_template` SET RewardCurrencyId1 = 396, RewardCurrencyCount1 = 5, RewardCurrencyId2 = 738, RewardCurrencyCount2 = 1, RewardItemId1 = 0, RewardItemCount1 = 0 WHERE Id IN (30585,30586,30588,30598,30613,30658,30678,30698,30700,30701,30753,30754,30763,31443,31444,31446);
UPDATE `quest_template` SET RewardCurrencyId1 = 396, RewardCurrencyCount1 = 5, RewardCurrencyId2 = 738, RewardCurrencyCount2 = 1, RewardItemId1 = 81175, RewardItemCount1 = 1, RewardItemId2 = 0, RewardItemCount2 = 0 WHERE Id = 30584;

/* Tired Shushen <Waterspeaker> now is spawned for start and finish the quests */
DELETE FROM `creature` WHERE `id`=58278;
INSERT INTO `creature` (`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`) VALUES
(58278, 870, 0, 0, 1, 1, 0, 58278, -1331.8, 1556.96, 18.3711, 4.87478, 300, 0, 0, 184350, 0, 0, 0, 0, 0, 2048, 0, 0);