DELETE FROM spell_ranks WHERE first_spell_id IN (83953, 83959);
INSERT INTO spell_ranks (first_spell_id, spell_id, rank)
VALUES
  (83953, 83953, 1),
  (83953, 118483, 2),
  (83959, 83959, 1),
  (83959, 83960, 2);
