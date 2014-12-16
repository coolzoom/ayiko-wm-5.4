-- [SQL] Npcs - Alani will only be attackable after removing Nimbus Shroud (Feedback #5651)
DELETE FROM `creature_template_aura` WHERE `entry` = 64403;
INSERT INTO `creature_template_aura` (`entry`, `aura`) VALUES
(64403, 126188);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (126188, 126182);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(126188, 34311, 2, "Nimbus Shroud adds Damage Immunity Physical"),
(126188, 39804, 2, "Nimbus Shroud adds Damage Immunity Magic all"),
(126182, -126188, 1, "Remove Protections removes Nimbus Shroud");
DELETE FROM `conditions` WHERE `SourceEntry` = 126182;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 126182, 0, 0, 31, 1, 3, 64403, 0, 0, 0, 0, "", "Remove Protections - Can only cast on Alani the Stormborn");
UPDATE `creature_template` SET `spell2` = 0, `flags_extra` = 2 WHERE `entry` = 64403;
-- Add spawns