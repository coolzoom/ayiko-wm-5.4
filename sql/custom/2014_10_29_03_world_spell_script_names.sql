DELETE FROM spell_script_names WHERE spell_id = 120694;
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(120694, 'spell_hun_dire_beast_focus_driver');

DELETE FROM creature_template_aura WHERE entry IN (62865, 62855, 62856, 62857, 62858, 62860, 62210, 64617, 64618, 64619, 64620, 62005);
INSERT INTO creature_template_aura (entry, aura) VALUES
(62865, 120694), -- Dire Beast Focus Driver
(62855, 120694), -- Dire Beast Focus Driver
(62856, 120694), -- Dire Beast Focus Driver
(62857, 120694), -- Dire Beast Focus Driver
(62858, 120694), -- Dire Beast Focus Driver
(62860, 120694), -- Dire Beast Focus Driver
(62210, 120694), -- Dire Beast Focus Driver
(64617, 120694), -- Dire Beast Focus Driver
(64618, 120694), -- Dire Beast Focus Driver
(64619, 120694), -- Dire Beast Focus Driver
(64620, 120694), -- Dire Beast Focus Driver
(62005, 120694); -- Dire Beast Focus Driver