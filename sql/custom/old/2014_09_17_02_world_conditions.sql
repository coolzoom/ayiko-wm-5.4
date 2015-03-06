-- [SQL] Exploits - Quests - The Last of Her Kind: Injured Icemaw Matriarch will now require the related quest to be mounted (Fixes #7112)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 18 AND `SourceGroup` = 29563;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`, `Comment`) VALUES
(18, 29563, 56795, 9, 12983, 0, "Required active quest for spellclick"),
(18, 29563, 56795, 8, 12983, 1, "Forbidden completed quest for spellclick");