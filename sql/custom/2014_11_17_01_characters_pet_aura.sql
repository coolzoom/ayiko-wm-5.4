ALTER TABLE pet_aura
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (id, caster_guid, spell, effect_mask);
