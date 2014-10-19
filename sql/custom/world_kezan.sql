-- [SQL] [Internal] We make Goblins (except Death Knights) spawn in Orcs starting zone for now
UPDATE playercreateinfo SET map = 1, zone = 14, position_x = -618.518, position_y = -4251.67, position_z = 38.718, orientation = 4.72222 WHERE race = 9 AND map <> 609;
-- blizzlike coords backup:
-- UPDATE playercreateinfo SET map = 648, zone = 4737, position_x = -8423.81, position_y = 1361.3, position_z = 104.671, orientation = 0 WHERE race = 9 AND map <> 609;