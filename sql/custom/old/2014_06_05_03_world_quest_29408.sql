UPDATE `quest_template` SET `Flags`='0', `RequiredNpcOrGo1`='59591', `RequiredNpcOrGo2`='-210986', `RequiredNpcOrGoCount1`='1', `RequiredNpcOrGoCount2`='1', `WDBVerified` = '1' WHERE (`Id`='29408'); -- we need quest_template_addon for this
-- UPDATE `quest_template` SET `Flags`='65536', `RequiredNpcOrGo1`='0', `RequiredNpcOrGo2`='0', `RequiredNpcOrGoCount1`='0', `RequiredNpcOrGoCount2`='0', `WDBVerified` = '16048' WHERE (`Id`='29408'); -- sniffs backup

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='18') AND (`SourceGroup`='53566') AND (`SourceEntry`='114746');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `Comment`) VALUES ('18', '53566', '114746', '9', '29408', 'Raufen - Require active quest for spellclick');

DELETE FROM `creature_text` WHERE `entry` = '53566';
INSERT INTO `creature_text` (`entry`, `text`, `type`, `probability`, `comment`) VALUES ('53566', 'On your first try! Now, take the flame to the top of the temple and burn the scroll that you find there.', '12', '100', 'Raufen - Say on Flame Snatch');

UPDATE `creature_template` SET `ScriptName`='mob_master_shang_xi' WHERE (`entry`='53566');
