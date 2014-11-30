-- Aeonus
UPDATE `creature_template` SET `mechanic_immune_mask`='612612951' WHERE (`entry`='17881');
UPDATE `creature_template` SET `mechanic_immune_mask`='612612951' WHERE (`entry`='20737');
-- Chrono Lord Deja
UPDATE `creature_template` SET `mechanic_immune_mask`='75733847' WHERE (`entry`='17879');
UPDATE `creature_template` SET `mechanic_immune_mask`='75733847' WHERE (`entry`='20738');
-- Temporus
UPDATE `creature_template` SET `mechanic_immune_mask`='612612951' WHERE (`entry`='17880');
UPDATE `creature_template` SET `mechanic_immune_mask`='612612951', `flags_extra`='257' WHERE (`entry`='20745');

-- Delete obsolete texts
DELETE FROM `script_texts` WHERE (`npc_entry`='17881');
DELETE FROM `script_texts` WHERE (`npc_entry`='17879');
DELETE FROM `script_texts` WHERE (`npc_entry`='17880');
