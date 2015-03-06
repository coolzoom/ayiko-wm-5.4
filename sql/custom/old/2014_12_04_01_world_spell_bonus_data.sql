-- [SQL by Slava] Enveloping Mist scaling from Spell Power fixed
UPDATE spell_bonus_data sbd SET sbd.dot_bonus = 0.45 where sbd.entry = 132120;