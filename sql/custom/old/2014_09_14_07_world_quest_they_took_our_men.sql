-- [SQL] Quests - They Took Our Men! scripted (Feedback #2302)
UPDATE `gameobject` SET `spawntimesecs` = 180 WHERE `id` = 191544;
UPDATE `creature` SET `spawntimesecs` = 180 WHERE `id` = 29466;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `AIName` = '', `ScriptName` = 'npc_goblin_prisoner' WHERE `entry` = 29466;
UPDATE `gameobject_template` SET `AIName` = '', `ScriptName` = 'go_rusty_cage' WHERE `entry` = 191544;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 29466 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 191544 AND `source_type` = 1;