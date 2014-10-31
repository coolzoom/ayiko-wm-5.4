-- Sha Eruption (Quest: Extending Our Coverage - 31087, 31679)

UPDATE smart_scripts SET action_param1 = 130061 WHERE entryorguid = 65478 AND action_param1 = 130062; -- Adjunct Zet'uk - On Combat - Cast Sha Eruption
UPDATE creature_template SET flags_Extra = 128 WHERE entry = 66140;
UPDATE creature_template SET faction_A = 14, faction_H = 14, minlevel = 90, maxlevel = 90, flags_extra = 128 WHERE entry = 66146;

DELETE FROM creature_template_aura WHERE entry = 66140;
INSERT INTO creature_template_aura (entry, aura) VALUES
(66140, 130063); -- Sha Eruption - Periodic Trigger

DELETE FROM spell_script_names WHERE spell_id IN (130061, 130063);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(130061, 'spell_zet_uk_sha_eruption'),
(130063, 'spell_zet_uk_sha_eruption_periodic_summon');