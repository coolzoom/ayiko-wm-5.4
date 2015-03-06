-- [SQL] [Internal] Removed deprecated command go xy, now there is go xyz which is more complete
DELETE FROM `command` WHERE `name` = 'go xy'; -- this had permission 0