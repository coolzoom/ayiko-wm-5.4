/* Raid-Mogu'shan Vaults - Stone Quilen AI */
DELETE FROM `smart_scripts` WHERE (`entryorguid`=60576 AND `source_type`=0);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 60576;