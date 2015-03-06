DELETE FROM spell_learn_spell WHERE entry IN (108501, 108499);
INSERT INTO spell_learn_spell (entry, SpellID, Active, specId) VALUES
-- Grimoire of Supremacy
(108499, 112866, 1, 0), -- Grimoire: Fel Imp (Imp)
(108499, 112867, 1, 0), -- Grimoire: VoidLord (Voidwalker)
(108499, 112868, 1, 0), -- Grimoire: Shivarra (Succubus)
(108499, 112869, 1, 0), -- Grimoire: Observer (Felhunter)
(108499, 112921, 1, 0), -- Grimoire: Abyssal (Infernal)
(108499, 112870, 1, 266), -- Grimoire:  Wrathguard (Felguard)
(108499, 112927, 1, 0), -- Grimoire: Terrorguard (Doomguard)
-- Grimoire of Service
(108501, 111859, 1, 0), -- Grimoire: Imp
(108501, 111895, 1, 0), -- Grimoire: Voidwalker
(108501, 111896, 1, 0), -- Grimoire: Succubus
(108501, 111897, 1, 0), -- Grimoire: Felhunter
(108501, 111898, 1, 266); -- Grimoire: Felguard - Demonology only