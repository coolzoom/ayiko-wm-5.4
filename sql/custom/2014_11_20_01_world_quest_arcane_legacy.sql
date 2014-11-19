-- [c++ and SQL] Quests - Arcane Legacy scripted (Feedback #9153)
DELETE FROM `spell_script_names` WHERE `spell_id` = '77307';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('77307', 'spell_q25766_highborne_prison');

DELETE FROM `creature_text` WHERE `entry` = '41232';
INSERT INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`, `comment`) VALUES
('41232', '0', 'I... I have no control. Bound by your infernal contraption.', '12', '100', 'Bounded Spirit SAY_SPAWN'),
('41232', '1', 'You will regret your actions!', '12', '100', 'Bounded Spirit SAY_SPAWN'),
('41232', '2', 'I... What sorcery is this?', '12', '100', 'Bounded Spirit SAY_SPAWN');

UPDATE `creature_template` SET `minlevel`='26', `maxlevel`='27', `faction_A`='16', `faction_H`='16', `mindmg`='40', `maxdmg`='120', `dmg_multiplier`='1', `baseattacktime`='2000' WHERE (`entry`='41231');