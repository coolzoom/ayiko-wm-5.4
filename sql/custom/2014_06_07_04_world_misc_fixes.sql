-- [SQL] [Kysio's report] Npcs - Viscous Horror wasn't meant to be custom Worgen Racial trainer (fixes #186)
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `npcflag` = 0, `trainer_type` = 0, `trainer_race` = 0 WHERE `entry` = 69070;
DELETE FROM `creature` WHERE `id` = 69070 AND `map` = 0;
DELETE FROM `npc_trainer` WHERE `entry` = 69070;