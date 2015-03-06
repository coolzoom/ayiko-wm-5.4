-- [SQL] Factionchange: Sunwalker Kodos will now change to Human paladin versions upon faction change and viceversa (Fixes #4061)
REPLACE INTO `player_factionchange_spells` (`alliance_id`, `horde_id`) VALUES
(13819, 69820),  -- Summon Warhorse - Summon Sunwalker Kodo
(23214, 69826);  -- Summon Charger - Summon Great Sunwalker Kodo