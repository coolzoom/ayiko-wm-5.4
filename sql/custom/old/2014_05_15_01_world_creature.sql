ALTER TABLE creature
  ADD COLUMN unit_flags2 INT UNSIGNED NOT NULL DEFAULT 0 AFTER unit_flags;

UPDATE creature_template SET ScriptName = 'npc_yu_lon' WHERE entry = 56762;
