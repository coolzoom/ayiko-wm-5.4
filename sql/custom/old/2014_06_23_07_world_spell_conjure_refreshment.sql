-- [SQL] Mage - Conjure Refreshment fixed (Feedback #585)
DELETE FROM `spell_script_names` WHERE `spell_id` = 42955;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(42955, 'spell_mage_conjure_refreshment');
DELETE FROM `playercreateinfo_spell_custom` WHERE `spell` IN
(6129, 990, 10144, 597, 33717, 28612, 587, 10145, 3552, 10054, 42985, 10053,
27101, 42956, 37420, 10140, 5505, 27090, 10139, 10138, 6127, 5506, 5504);