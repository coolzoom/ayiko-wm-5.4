UPDATE spell_proc_event SET SpellFamilyMask0 = 0x6, SpellFamilyMask1 = 0x2, SpellFamilyMask2 = 0x0, SpellFamilyMask3 = 0x04400000 WHERE entry = 56218; -- Glyph of Siphon Life

-- corruption SpellFamilyFlags = 0x00000000 00000000 00000000 00000002 (0 0 0 2)
-- immolate   SpellFamilyFlags = 0x00400000 00000000 00000000 00000004 (4194304 0 0 4)
-- doom       SpellFamilyFlags = 0x04000000 00000000 00000002 00000000 (67108864 0 2 0)

