-- [SQL] [Kysio's report] Npcs - Viscous Horror wasn't meant to be custom Worgen Racial trainer (fixes #186)
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `npcflag` = 0, `trainer_type` = 0, `trainer_race` = 0 WHERE `entry` = 69070;
DELETE FROM `creature` WHERE `id` = 69070 AND `map` = 0;
DELETE FROM `npc_trainer` WHERE `entry` = 69070;

-- [SQL] Npcs - Corrected basehealth of Pandaria creatures (refs #200)
UPDATE `creature_classlevelstats` SET `basehp4` = `basehp3` WHERE `basehp4` = 1;

-- [SQL] [Ramires' request] Quests - Only the worthy shall pass: Firewalls phase and faction corrected so they are present and not clickable (refs# 202)
UPDATE `gameobject_template` SET `faction` = 114 WHERE `entry` = 209375;
UPDATE `gameobject` SET `phaseMask` = 1032 WHERE `id` = 209375;