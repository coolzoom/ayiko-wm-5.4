-- Fixed Spectral Gryphon/Whisp (Spirit Mount) for the zones where it was necessary
DELETE FROM `spell_area` WHERE `spell` IN (55164,55173,94993) AND `area` IN (67,210,616,4815,4922,5034,5042,5144,5145,5785,5805,5840,5841,5842,6134,6138);
INSERT INTO `spell_area` VALUES 

(55164,67,0,0,8326,1783,2,1,0,0),   -- (WotLK) The Storm Peaks
(55164,210,0,0,8326,1783,2,1,0,0),  -- (WotLK) Icecrown

(55173,67,0,0,8326,8,2,1,0,0),      -- (WotLK-NightElf) The Storm Peaks
(55173,210,0,0,8326,8,2,1,0,0),     -- (WotLK-NightElf) Icecrown

(55164,616,0,0,8326,1783,2,1,0,0),  -- (Cataclysm) Mount Hyjal
(55164,4922,0,0,8326,1783,2,1,0,0), -- (Cataclysm) Twilight Highlands
(55164,5034,0,0,8326,1783,2,1,0,0), -- (Cataclysm) Uldum
(55164,5042,0,0,8326,1783,2,1,0,0), -- (Cataclysm) Deepholm

(55173,616,0,0,8326,8,2,1,0,0),     -- (Cataclysm-NightElf) Mount Hyjal
(55173,4922,0,0,8326,8,2,1,0,0),    -- (Cataclysm-NightElf) Twilight Highlands
(55164,5034,0,0,8326,8,2,1,0,0),    -- (Cataclysm-NightElf) Uldum
(55173,5042,0,0,8326,8,2,1,0,0),    -- (Cataclysm-NightElf) Deepholm

(94993,4815,0,0,8326,1791,2,1,0,0), -- (Cataclysm) Kelp'thar Forest
(94993,5144,0,0,8326,1791,2,1,0,0), -- (Cataclysm) Shimmering Expanse
(94993,5145,0,0,8326,1791,2,1,0,0), -- (Cataclysm) Abyssal Depths

(55164,5785,0,0,8326,1783,2,1,0,0), -- (Pandaria) The Jade Forest
(55164,5805,0,0,8326,1783,2,1,0,0), -- (Pandaria) Valley of the Four Wins
(55164,5840,0,0,8326,1783,2,1,0,0), -- (Pandaria) Vale of Eternal Blossoms
(55164,5841,0,0,8326,1783,2,1,0,0), -- (Pandaria) Kun-Lai Summit
(55164,5842,0,0,8326,1783,2,1,0,0), -- (Pandaria) Towlong Steppes
(55164,6134,0,0,8326,1783,2,1,0,0), -- (Pandaria) Krasarang Wilds
(55164,6138,0,0,8326,1783,2,1,0,0), -- (Pandaria) Dread Wastes

(55173,5785,0,0,8326,8,2,1,0,0),    -- (Pandaria-NightElf) The Jade Forest
(55173,5805,0,0,8326,8,2,1,0,0),    -- (Pandaria-NightElf) Valley of the Four Wins
(55173,5840,0,0,8326,8,2,1,0,0),    -- (Pandaria-NightElf) Vale of Eternal Blossoms
(55173,5841,0,0,8326,8,2,1,0,0),    -- (Pandaria-NightElf) Kun-Lai Summit
(55173,5842,0,0,8326,8,2,1,0,0),    -- (Pandaria-NightElf) Towlong Steppes
(55173,6134,0,0,8326,8,2,1,0,0),    -- (Pandaria-NightElf) Krasarang Wilds
(55173,6138,0,0,8326,8,2,1,0,0);    -- (Pandaria-NightElf) Dread Wastes