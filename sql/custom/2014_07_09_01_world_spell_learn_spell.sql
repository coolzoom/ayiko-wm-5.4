ALTER TABLE spell_learn_spell
  ADD COLUMN specId SMALLINT UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Specialization' AFTER Active;