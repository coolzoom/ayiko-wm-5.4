DELETE FROM disables WHERE sourceType = 3 AND entry = 100;
UPDATE battleground_template bt SET bt.Weight = 2 WHERE bt.id in (2, 3, 7, 9, 30, 108, 120, 699, 708, 754);
