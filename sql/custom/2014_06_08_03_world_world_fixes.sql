DELETE FROM `quest_start_scripts` WHERE (`id`='12842');
UPDATE `quest_template` SET `StartScript`='0' WHERE (`Id`='12842');

DELETE FROM `creature` WHERE (`guid`='129452');

DELETE FROM `creature` WHERE (`guid`='921003');

UPDATE quest_template SET SuggestedPlayers = 0 WHERE SuggestedPlayers > 40;
