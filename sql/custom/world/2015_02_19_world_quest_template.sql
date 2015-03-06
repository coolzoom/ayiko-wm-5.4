UPDATE `quest_template` SET `RewardOrRequiredMoney` = 0 WHERE `RewardOrRequiredMoney` < 0;
ALTER TABLE `quest_template` CHANGE `RewardOrRequiredMoney` `RewardMoney` INT UNSIGNED NOT NULL DEFAULT '0';
