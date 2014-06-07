DELETE FROM conditions WHERE SourceTypeOrReferenceId = 18 AND SourceGroup IN (54993, 55083, 57431);
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorTextId, ScriptName, Comment) VALUES
(18, 54993, 130074, 0, 0, 1, 0, 102938, 0, 0, 1, 0, '', 'Balance Pole - Cant spellclick with frog aura'),
(18, 55083, 130074, 0, 0, 1, 0, 102938, 0, 0, 1, 0, '', 'Balance Pole - Cant spellclick with frog aura'),
(18, 57431, 130074, 0, 0, 1, 0, 102938, 0, 0, 1, 0, '', 'Balance Pole - Cant spellclick with frog aura');
