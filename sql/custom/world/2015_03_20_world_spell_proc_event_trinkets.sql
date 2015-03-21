/* Trinkets 509-522 temporary fix */
DELETE FROM spell_proc_event WHERE entry IN (138757,138758,138790,138849,138871,138894,138896,138924,138939,138957,138964,138968,139116,139134,139171,139190);
INSERT INTO spell_proc_event VALUES
-- Renataki's Soul Charm
(138757,0,0,0,0,0,0,4,0,1.21,100,0),
-- Horridon's Last Gasp
(138849,0,0,0,0,0,0,279552,0,0.96,100,0),
-- Spark of Zandalar
(138957,0,0,0,0,0,0,4,0,11.10,100,1),
-- Bad Juju
(138939,0,0,0,0,0,0,4,0,1.10,100,0),
-- Wushoolay's Final Choice
(138790,0,0,0,0,0,0,331776,0,1.21,100,0),
-- Breath of the Hydra
(138896,0,0,0,0,0,0,262144,0,1.10,100,0),
-- Inscribed Bag of Hydra-Spawn
(138924,0,0,0,0,0,0,16384,0,1.64,100,17),
-- Fabled Feather of Ji-Kun
(138758,0,0,0,0,0,0,4,0,1.21,100,0),
-- Primordius' Talisman of Rage
(138871,0,0,0,0,0,0,4,0,3.5,100,0),
-- Talisman of Bloodlust
(138894,0,0,0,0,0,0,4,0,3.5,100,0),
-- Stolen Relic of Zuldazar
(138968,0,0,0,0,0,0,279552,0,2.89,100,0),
-- Cha-Ye's Essence of Brilliance
(139134,0,0,0,0,0,0,65536,2,0.9,100,0),
-- Gaze of the Twins
(139171,0,0,0,0,0,0,4,2,0.76,100,0),
-- Lightning-Imbued Chalice
(139190,0,0,0,0,0,0,279552,0,5.78,100,0),
-- Rune of Re-Origination
(139116,0,0,0,0,0,0,4,0,1.04,100,10),
-- Unerring Vision of Lei Shen
(138964,0,0,0,0,0,0,65536,0,0.55,100,0);