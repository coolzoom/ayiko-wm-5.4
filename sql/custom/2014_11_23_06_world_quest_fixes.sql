-- An Improper Burial
DELETE FROM `smart_scripts` WHERE `source_type` = '0' AND `entryorguid` = '21846';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('21846', '0', '0', '1', '8', '0', '100', '1', '39189', '0', '0', '0', '11', '59216', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Slain Sha tar Vindicator - On Spellhit (Sha tari Torch) - Cast Burning Corpse'),
('21846', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '33', '21846', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Slain Sha tar Vindicator - Linked with Previous Event - Give Kill Credit'),
('21846', '0', '2', '3', '61', '0', '100', '0', '0', '0', '0', '0', '11', '37759', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Slain Sha tar Vindicator - Linked with Previous Event - Cast Bone Wastes - Summon Draenei Guardian Spirit'),
('21846', '0', '3', '0', '61', '0', '100', '0', '0', '0', '0', '0', '41', '15000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Slain Sha tar Vindicator - Linked with Previous Event - Despawn after 15 seconds');

-- The Final Code
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE (`entry`='184725');
DELETE FROM `smart_scripts` WHERE `source_type` = '1' AND `entryorguid` = '184725';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES ('184725', '1', '0', '0', '70', '0', '100', '0', '2', '0', '0', '0', '33', '21039', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Raufen - give KC on activation');
