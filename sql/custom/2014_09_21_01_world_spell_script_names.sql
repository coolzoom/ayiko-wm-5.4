-- [c++ and SQL 335 port] Brewfest Ram Race - Dismount Ram implemented, Ram aura duration will be increased by 30 seconds each run, up to a maximum of 15 minutes (Feedback #7332)
DELETE FROM `spell_script_names` WHERE `spell_id` IN (42924, 43310, 42992, 42993, 42994, 43332, 43876, 43755);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
  (42924, 'spell_gen_brewfest_ram_speed_tracker'),
  (43310, 'spell_gen_brewfest_ram_fatigue_tracker'),
  (42992, 'spell_gen_brewfest_ram_fatigue_tracker'),
  (42993, 'spell_gen_brewfest_ram_fatigue_tracker'),
  (42994, 'spell_gen_brewfest_ram_fatigue_tracker'),
  (43332, 'spell_gen_brewfest_ram_exhausted'),
  (43876, 'spell_gen_brewfest_dismount_ram'),
  (43755, 'spell_brewfest_ram_race_increase_duration');

DELETE FROM `spell_group` WHERE `id` = 1124;
INSERT INTO `spell_group`  (`id`, `spell_id`)VALUES
  (1124, 43310),
  (1124, 42992),
  (1124, 42993),
  (1124, 42994),
  (1124, 43332);

DELETE FROM `spell_group_stack_rules` WHERE `group_id` = 1124 AND `stack_rule` = 1;
INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES
  (1124, 1);

UPDATE `quest_template` SET `StartScript` = 11318 WHERE `Id` = 11318;
UPDATE `quest_template` SET `StartScript` = 11409 WHERE `Id` = 11409;

DELETE FROM `quest_start_scripts` WHERE `id` IN (11318, 11409);
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
  (11318, 2, 15, 42149, 0, 0, 0, 0, 0, 0),
  (11409, 2, 15, 42149, 0, 0, 0, 0, 0, 0);

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (-42146, -43332);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
  (-42146, -42924, 0, 'Brewfest - remove speed tracker when Ram is dismissed'),
  (-42146, -43052, 0, 'Brewfest - remove fatigue tracker when Ram is dismissed'),
  (-42146, -43332, 0, 'Brewfest - remove exhausted debuff when Ram is dismissed'),
  (-43332,  43310, 0, 'Brewfest - reset Ram''s speed when exhausted debuff expires');