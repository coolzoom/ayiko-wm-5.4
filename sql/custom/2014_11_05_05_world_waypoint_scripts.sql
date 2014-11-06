ALTER TABLE waypoint_scripts
  ADD COLUMN guid int UNSIGNED NOT NULL AUTO_INCREMENT AFTER o,
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (guid),
  ADD UNIQUE KEY (id, delay, command, datalong, datalong2, dataint, x, y, z, o);

ALTER TABLE waypoint_scripts
  MODIFY COLUMN guid int UNSIGNED NOT NULL DEFAULT 0;