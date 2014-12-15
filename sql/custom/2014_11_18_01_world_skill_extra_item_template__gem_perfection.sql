-- [c++ and SQL] Jewelcrafting - Gem Perfection implemented (Feedback #9573)
DELETE FROM `spell_learn_spell` WHERE `SpellID` = 55534;
INSERT INTO `spell_learn_spell` (`entry`, `SpellID`, `Active`) VALUES
(51311, 55534, 1);
ALTER TABLE `skill_extra_item_template` ADD (`newItemId` mediumint(8) unsigned NOT NULL DEFAULT 0);
DELETE FROM `skill_extra_item_template` WHERE `requiredSpecialization` = 55534;
INSERT INTO `skill_extra_item_template` (`spellId`, `requiredSpecialization`, `additionalCreateChance`, `additionalMaxNum`, `newItemId`) VALUES

-- Blue
(107617,	55534,	20,	1,	76570),	 -- Perfect Rigid Lapis Lazuli
(107619,	55534,	20,	1,	76573),	 -- Perfect Solid Lapis Lazuli
(107620,	55534,	20,	1,	76572),	 -- Perfect Sparkling Lapis Lazuli
(107621,	55534,	20,	1,	76571),	 -- Perfect Stormy Lapis Lazuli
-- Green
(107598,	55534,	20,	1,	76580),	 -- Perfect Balanced Alexandrite
(107599,	55534,	20,	1,	76578),	 -- Perfect Effulgent Alexandrite
(107600,	55534,	20,	1,	76585),	 -- Perfect Energized Alexandrite
(107601,	55534,	20,	1,	76588),	 -- Perfect Forceful Alexandrite
(107602,	55534,	20,	1,	76586),	 -- Perfect Jagged Alexandrite
(107604,	55534,	20,	1,	76576),	 -- Perfect Lightning Alexandrite
(107605,	55534,	20,	1,	76574),	 -- Perfect Misty Alexandrite
(107606,	55534,	20,	1,	93707),	 -- Perfect Nimble Alexandrite
(107607,	55534,	20,	1,	76575),	 -- Perfect Piercing Alexandrite
(107608,	55534,	20,	1,	76590),	 -- Perfect Puissant Alexandrite
(107609,	55534,	20,	1,	76583),	 -- Perfect Radiant Alexandrite
(107610,	55534,	20,	1,	76587),	 -- Perfect Regal Alexandrite
(107611,	55534,	20,	1,	76577),	 -- Perfect Sensei's Alexandrite
(107612,	55534,	20,	1,	76584),	 -- Perfect Shattered Alexandrite
(107613,	55534,	20,	1,	76591),	 -- Perfect Steady Alexandrite
(107614,	55534,	20,	1,	76582),	 -- Perfect Turbid Alexandrite
(107615,	55534,	20,	1,	76581),	 -- Perfect Vivid Alexandrite
(107616,	55534,	20,	1,	76579),	 -- Perfect Zen Alexandrite
-- Orange
(107645,	55534,	20,	1,	76604),	 -- Perfect Adept Tiger Opal
(107646,	55534,	20,	1,	76606),	 -- Perfect Artful Tiger Opal
(107647,	55534,	20,	1,	76599),	 -- Perfect Champion's Tiger Opal
(107648,	55534,	20,	1,	76593),	 -- Perfect Crafty Tiger Opal
(107649,	55534,	20,	1,	76592),	 -- Perfect Deadly Tiger Opal
(107650,	55534,	20,	1,	76600),	 -- Perfect Deft Tiger Opal
(107651,	55534,	20,	1,	76603),	 -- Perfect Fierce Tiger Opal
(107652,	55534,	20,	1,	76607),	 -- Perfect Fine Tiger Opal
(107653,	55534,	20,	1,	76595),	 -- Perfect Inscribed Tiger Opal
(107654,	55534,	20,	1,	76605),	 -- Perfect Keen Tiger Opal
(107655,	55534,	20,	1,	76609),	 -- Perfect Lucent Tiger Opal
(107656,	55534,	20,	1,	76596),	 -- Perfect Polished Tiger Opal
(107657,	55534,	20,	1,	76594),	 -- Perfect Potent Tiger Opal
(107658,	55534,	20,	1,	76602),	 -- Perfect Reckless Tiger Opal
(107659,	55534,	20,	1,	76597),	 -- Perfect Resolute Tiger Opal
(107660,	55534,	20,	1,	76613),	 -- Perfect Resplendent Tiger Opal
(107661,	55534,	20,	1,	76608),	 -- Perfect Skillful Tiger Opal
(107662,	55534,	20,	1,	76612),	 -- Perfect Splendid Tiger Opal
(107663,	55534,	20,	1,	76598),	 -- Perfect Stalwart Tiger Opal
(107665,	55534,	20,	1,	76610),	 -- Perfect Tenuous Tiger Opal
(107666,	55534,	20,	1,	76601),	 -- Perfect Wicked Tiger Opal
(107667,	55534,	20,	1,	76611),	 -- Perfect Willful Tiger Opal
-- Purple
(107627,	55534,	20,	1,	76615),	 -- Perfect Accurate Roguestone
(130656,	55534,	20,	1,	89679),	 -- Perfect Assassin's Roguestone
(107628,	55534,	20,	1,	76624),	 -- Perfect Defender's Roguestone
(107630,	55534,	20,	1,	76618),	 -- Perfect Etched Roguestone
(107631,	55534,	20,	1,	76614),	 -- Perfect Glinting Roguestone
(107632,	55534,	20,	1,	76622),	 -- Perfect Guardian's Roguestone
(107633,	55534,	20,	1,	76619),	 -- Perfect Mysterious Roguestone
(107634,	55534,	20,	1,	76620),	 -- Perfect Purified Roguestone
(107635,	55534,	20,	1,	76617),	 -- Perfect Retaliating Roguestone
(107636,	55534,	20,	1,	76621),	 -- Perfect Shifting Roguestone
(107637,	55534,	20,	1,	76625),	 -- Perfect Sovereign Roguestone
(130655,	55534,	20,	1,	89676),	 -- Perfect Tense Roguestone
(107638,	55534,	20,	1,	76623),	 -- Perfect Timeless Roguestone
(107639,	55534,	20,	1,	76616),	 -- Perfect Veiled Roguestone
-- Red
(107622,	55534,	20,	1,	76630),	 -- Perfect Bold Pandarian Garnet
(107623,	55534,	20,	1,	76628),	 -- Perfect Brilliant Pandarian Garnet
(107624,	55534,	20,	1,	76626),	 -- Perfect Delicate Pandarian Garnet
(107625,	55534,	20,	1,	76629),	 -- Perfect Flashing Pandarian Garnet
(107626,	55534,	20,	1,	76627),	 -- Perfect Precise Pandarian Garnet
-- Yellow
(107640,	55534,	20,	1,	76634),	 -- Perfect Fractured Sunstone
(107641,	55534,	20,	1,	76635),	 -- Perfect Mystic Sunstone
(107642,	55534,	20,	1,	76633),	 -- Perfect Quick Sunstone
(107643,	55534,	20,	1,	76631),	 -- Perfect Smooth Sunstone
(107644,	55534,	20,	1,	76632),	 -- Perfect Subtle Sunstone
-- Blue
(73230,	55534,	20,	1,	52168),	 -- Perfect Rigid Zephyrite
(73229,	55534,	20,	1,	52169),	 -- Perfect Stormy Zephyrite
(73228,	55534,	20,	1,	52170),	 -- Perfect Sparkling Zephyrite
(73227,	55534,	20,	1,	52171),	 -- Perfect Solid Zephyrite
-- Green
(73281,	55534,	20,	1,	52129),	 -- Perfect Sensei's Jasper
(73280,	55534,	20,	1,	52130),	 -- Perfect Zen Jasper
(73279,	55534,	20,	1,	52131),	 -- Perfect Puissant Jasper
(73278,	55534,	20,	1,	52132),	 -- Perfect Lightning Jasper
(73277,	55534,	20,	1,	52133),	 -- Perfect Forceful Jasper
(73276,	55534,	20,	1,	52134),	 -- Perfect Steady Jasper
(73275,	55534,	20,	1,	52135),	 -- Perfect Piercing Jasper
(73274,	55534,	20,	1,	52136),	 -- Perfect Jagged Jasper
(73273,	55534,	20,	1,	52137),	 -- Perfect Nimble Jasper
(73272,	55534,	20,	1,	52138),	 -- Perfect Regal Jasper
-- Orange
(73271,	55534,	20,	1,	52139),	 -- Perfect Keen Hessonite
(73270,	55534,	20,	1,	52140),	 -- Perfect Artful Hessonite
(73269,	55534,	20,	1,	52141),	 -- Perfect Fine Hessonite
(73268,	55534,	20,	1,	52142),	 -- Perfect Adept Hessonite
(73267,	55534,	20,	1,	52143),	 -- Perfect Skillful Hessonite
(73266,	55534,	20,	1,	52144),	 -- Perfect Reckless Hessonite
(73265,	55534,	20,	1,	52145),	 -- Perfect Deft Hessonite
(73264,	55534,	20,	1,	52146),	 -- Perfect Fierce Hessonite
(73263,	55534,	20,	1,	52147),	 -- Perfect Potent Hessonite
(73262,	55534,	20,	1,	52148),	 -- Perfect Deadly Hessonite
(73260,	55534,	20,	1,	52149),	 -- Perfect Inscribed Hessonite
(73258,	55534,	20,	1,	52151),	 -- Perfect Polished Hessonite
-- Purple
(73250,	55534,	20,	1,	52152),	 -- Perfect Accurate Nightstone
(73249,	55534,	20,	1,	52153),	 -- Perfect Veiled Nightstone
(73248,	55534,	20,	1,	52154),	 -- Perfect Retaliating Nightstone
(73247,	55534,	20,	1,	52155),	 -- Perfect Glinting Nightstone
(73246,	55534,	20,	1,	52156),	 -- Perfect Etched Nightstone
(73245,	55534,	20,	1,	52157),	 -- Perfect Purified Nightstone
(73244,	55534,	20,	1,	52158),	 -- Perfect Guardian's Nightstone
(73243,	55534,	20,	1,	52159),	 -- Perfect Timeless Nightstone
(73242,	55534,	20,	1,	52160),	 -- Perfect Defender's Nightstone
(73241,	55534,	20,	1,	52161),	 -- Perfect Shifting Nightstone
(73240,	55534,	20,	1,	52162),	 -- Perfect Sovereign Nightstone
-- Red
(73226,	55534,	20,	1,	52172),	 -- Perfect Precise Carnelian
(73225,	55534,	20,	1,	52173),	 -- Perfect Brilliant Carnelian
(73224,	55534,	20,	1,	52174),	 -- Perfect Flashing Carnelian
(73223,	55534,	20,	1,	52175),	 -- Perfect Delicate Carnelian
(73222,	55534,	20,	1,	52176),	 -- Perfect Bold Carnelian
-- Yellow
(73239,	55534,	20,	1,	52163),	 -- Perfect Fractured Alicite
(73234,	55534,	20,	1,	52164),	 -- Perfect Quick Alicite
(73232,	55534,	20,	1,	52166),	 -- Perfect Smooth Alicite
(73231,	55534,	20,	1,	52167),	 -- Perfect Subtle Alicite
-- Blue
(53941,	55534,	20,	1,	41440),	 -- Perfect Sparkling Chalcedony
(53934,	55534,	20,	1,	41441),	 -- Perfect Solid Chalcedony
(53943,	55534,	20,	1,	41443),	 -- Perfect Stormy Chalcedony
(53854,	55534,	20,	1,	41447),	 -- Perfect Rigid Chalcedony
-- Green
(53918,	55534,	20,	1,	41464),	 -- Perfect Regal Dark Jade
(53920,	55534,	20,	1,	41466),	 -- Perfect Forceful Dark Jade
(53925,	55534,	20,	1,	41467),	 -- Perfect Energized Dark Jade
(53870,	55534,	20,	1,	41468),	 -- Perfect Jagged Dark Jade
(53922,	55534,	20,	1,	41470),	 -- Perfect Misty Dark Jade
(53933,	55534,	20,	1,	41474),	 -- Perfect Shattered Dark Jade
(53923,	55534,	20,	1,	41475),	 -- Perfect Lightning Dark Jade
(53919,	55534,	20,	1,	41476),	 -- Perfect Steady Dark Jade
(53932,	55534,	20,	1,	41478),	 -- Perfect Radiant Dark Jade
(53924,	55534,	20,	1,	41480),	 -- Perfect Turbid Dark Jade
(53917,	55534,	20,	1,	41481),	 -- Perfect Nimble Dark Jade
-- Orange
(53874,	55534,	20,	1,	41483),	 -- Perfect Champion's Huge Citrine
(53877,	55534,	20,	1,	41484),	 -- Perfect Deadly Huge Citrine
(53880,	55534,	20,	1,	41485),	 -- Perfect Deft Huge Citrine
(53884,	55534,	20,	1,	41486),	 -- Perfect Willful Huge Citrine
(53876,	55534,	20,	1,	41489),	 -- Perfect Fierce Huge Citrine
(53891,	55534,	20,	1,	41490),	 -- Perfect Stalwart Huge Citrine
(53872,	55534,	20,	1,	41492),	 -- Perfect Inscribed Huge Citrine
(53879,	55534,	20,	1,	41493),	 -- Perfect Lucent Huge Citrine
(53882,	55534,	20,	1,	41495),	 -- Perfect Potent Huge Citrine
(53885,	55534,	20,	1,	41497),	 -- Perfect Reckless Huge Citrine
(53893,	55534,	20,	1,	41498),	 -- Perfect Resolute Huge Citrine
(53875,	55534,	20,	1,	41499),	 -- Perfect Resplendent Huge Citrine
-- Purple
(53860,	55534,	20,	1,	41450),	 -- Perfect Shifting Shadow Crystal
(53869,	55534,	20,	1,	41451),	 -- Perfect Defender's Shadow Crystal
(53894,	55534,	20,	1,	41452),	 -- Perfect Timeless Shadow Crystal
(53871,	55534,	20,	1,	41453),	 -- Perfect Guardian's Shadow Crystal
(53865,	55534,	20,	1,	41455),	 -- Perfect Mysterious Shadow Crystal
(53859,	55534,	20,	1,	41461),	 -- Perfect Sovereign Shadow Crystal
(53861,	55534,	20,	1,	41462),	 -- Perfect Glinting Shadow Crystal
(53921,	55534,	20,	1,	41473),	 -- Perfect Purified Shadow Crystal
(53892,	55534,	20,	1,	41482),	 -- Perfect Accurate Shadow Crystal
(53873,	55534,	20,	1,	41488),	 -- Perfect Etched Shadow Crystal
(53883,	55534,	20,	1,	41502),	 -- Perfect Veiled Shadow Crystal
-- Red
(53831,	55534,	20,	1,	41432),	 -- Perfect Bold Bloodstone
(53832,	55534,	20,	1,	41434),	 -- Perfect Delicate Bloodstone
(53844,	55534,	20,	1,	41435),	 -- Perfect Flashing Bloodstone
(54017,	55534,	20,	1,	41437),	 -- Perfect Precise Bloodstone
(53852,	55534,	20,	1,	41444),	 -- Perfect Brilliant Bloodstone
-- Yellow
(53845,	55534,	20,	1,	41436),	 -- Perfect Smooth Sun Crystal
(53843,	55534,	20,	1,	41439),	 -- Perfect Subtle Sun Crystal
(53857,	55534,	20,	1,	41445),	 -- Perfect Mystic Sun Crystal
(53856,	55534,	20,	1,	41446),	 -- Perfect Quick Sun Crystal
-- Ring
(122661,	55534,	10,	1,	90904),  -- Ornate Band
-- Neck
(122622,	55534,	10,	1,	90905);  -- Shadowfire Necklace