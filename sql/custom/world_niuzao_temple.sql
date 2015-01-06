
-- GUID RANGES
-- Gameobjects - 35 GUIDs
SET @OGUID := 900000;
-- Creatures - 334 GUIDs
SET @CGUID := 900000;

SET @HC_MOD := 300000;
DROP FUNCTION IF EXISTS HC_ENTRY;
CREATE FUNCTION HC_ENTRY(x INT) RETURNS INT
	RETURN @HC_MOD + x;
	-- RETURN (SELECT difficulty_entry_1 FROM creature_template WHERE entry = x); 
	
DELETE FROM creature WHERE map = 1011;
DELETE FROM gameobject WHERE map = 1011;
UPDATE instance_template SET script = 'instance_siege_of_niuzao_temple' WHERE map = 1011;

REPLACE INTO creature_template(entry, KillCredit1, KillCredit2, modelid1, modelid2, modelid3, modelid4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, exp_unk, faction_A, faction_H, npcflag, npcflag2, speed_walk, speed_run, speed_fly, scale, rank, mindmg, maxdmg, dmgschool, attackpower, dmg_multiplier, baseattacktime, rangeattacktime, unit_class, unit_flags, unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, minrangedmg, maxrangedmg, rangedattackpower, type, type_flags, type_flags2, lootid, pickpocketloot, skinloot, resistance1, resistance2, resistance3, resistance4, resistance5, resistance6, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, PetSpellDataId, VehicleId, mingold, maxgold, AIName, MovementType, InhabitType, HoverHeight, Health_mod, Mana_mod, Mana_mod_extra, Armor_mod, RacialLeader, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, movementId, RegenHealth, equipment_id, mechanic_immune_mask, flags_extra, ScriptName, WDBVerified) VALUES
(61434, 0, 0, 43119, 0, 0, 0, 'Sik''thik Vanguard', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11321, 16657, 0, 48962, 3, 2000, 2000, 1, 32768, 4196352, 0, 0, 0, 0, 0, 0, 1, 2, 1, 7, 2097224, 0, 61434, 61434, 0, 0, 0, 0, 0, 0, 0, 119345, 119347, 0, 124172, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 3.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 61434, 0, 0, 'npc_sikthik_vanguard', 16048),
(61436, 0, 0, 43118, 0, 0, 0, 'Sik''thik Bladedancer', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11321, 16657, 0, 48962, 3, 2000, 2000, 1, 32768, 4196352, 0, 0, 0, 0, 0, 0, 1, 2, 1, 7, 2097224, 0, 61436, 61436, 0, 0, 0, 0, 0, 0, 0, 124253, 0, 119354, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 3.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 61436, 0, 0, 'npc_sikthik_bladedancer', 16048),
(61448, 0, 0, 43121, 0, 0, 0, 'Sik''thik Soldier', '', '', 0, 90, 90, 4, 0, 14, 14, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11839, 17339, 0, 1, 2, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 1, 2, 1, 7, 2097224, 0, 61448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 119840, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 62348, 0, 64, 'npc_mantid_soldier_catapult', 16048),
(61485, 0, 0, 43120, 0, 0, 0, 'General Pa''valak', '', '', 0, 92, 92, 4, 0, 16, 16, 0, 0, 1.6, 1.57143, 1.14286, 1, 1, 12684, 19052, 0, 55538, 3, 2000, 2000, 1, 32832, 4196352, 0, 0, 0, 0, 0, 0, 1, 2, 1, 7, 270532680, 0, 61485, 61485, 0, 0, 0, 0, 0, 0, 0, 124317, 124283, 119476, 119875, 0, 0, 0, 0, 0, 0, 490000, 500000, '', 0, 3, 1, 55, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 159, 1, 61485, 667893759, 0, 'boss_general_pavalak', 16048),
(61567, 0, 0, 43197, 0, 0, 0, 'Vizier Jin''bak', '', '', 0, 91, 91, 4, 0, 14, 14, 0, 0, 1, 1.42857, 1.14286, 1, 1, 12684, 19052, 0, 55538, 3, 1500, 2000, 2, 32832, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097256, 0, 61567, 0, 0, 0, 0, 0, 0, 0, 0, 120001, 120095, 0, 0, 0, 0, 0, 0, 0, 0, 490000, 500000, '', 0, 3, 1, 25, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 667893759, 0, 'boss_vizier_jinbak', 16048),
(61634, 0, 0, 42169, 0, 0, 0, 'Commander Vo''jak', '', '', 0, 91, 91, 4, 0, 16, 16, 0, 0, 1, 1.42857, 1.14286, 1, 1, 12684, 19052, 0, 55538, 3, 2500, 2000, 1, 33600, 2097152, 0, 0, 0, 0, 0, 0, 460, 552, 46, 7, 2097224, 0, 61634, 0, 0, 0, 0, 0, 0, 0, 0, 120778, 120800, 120789, 120758, 120760, 120759, 0, 0, 0, 0, 490000, 500000, '', 0, 3, 1, 25, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 61634, 667893759, 0, 'boss_commander_vojak', 16048),
(61670, 0, 0, 42875, 0, 0, 0, 'Sik''thik Demolisher', '', '', 0, 89, 89, 4, 0, 16, 16, 0, 0, 1.6, 1.71429, 1.14286, 1, 1, 450, 540, 0, 45, 2, 2000, 2000, 1, 768, 2097152, 0, 0, 0, 0, 0, 0, 450, 540, 45, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120778, 121982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, 0, 'npc_sikthik_demolisher', 16048),
(61699, 0, 0, 43955, 43955, 0, 0, 'Sik''thik Amberwing', '', '', 0, 89, 89, 3, 0, 14, 14, 0, 0, 1, 0.5, 1.14286, 1, 0, 550, 950, 0, 36, 7, 2000, 2000, 1, 0, 0, 12, 0, 0, 0, 0, 0, 400, 600, 150, 10, 16778240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 10, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 78, 1, 0, 0, 0, 'npc_sikthik_amberwing', 15595),
(61701, 0, 0, 42207, 0, 0, 0, 'Sik''thik Warrior', '', '', 0, 89, 89, 4, 0, 16, 16, 0, 0, 1, 0.992063, 1.14286, 1, 1, 450, 540, 0, 45, 2, 2000, 2000, 1, 768, 2097152, 0, 0, 0, 0, 0, 0, 450, 540, 45, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 12, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 61701, 0, 0, 'npc_sikthik_warrior', 16048),
(61910, 0, 0, 33011, 0, 0, 0, 'Resin Flake', '', '', 0, 91, 91, 4, 0, 16, 16, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11321, 16657, 0, 48962, 3, 2000, 2000, 1, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2097256, 0, 61910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120938, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 1, 1, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, 'npc_resin_flake', 16048),
(61928, 0, 0, 43198, 0, 0, 0, 'Sik''thik Guardian', '', '', 0, 91, 90, 4, 0, 16, 16, 0, 0, 1.2, 1.42857, 1.14286, 1, 1, 11321, 16657, 0, 48962, 3, 2000, 2000, 1, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097256, 0, 61928, 61928, 0, 0, 0, 0, 0, 0, 0, 0, 121421, 121422, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 2.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 147, 1, 61928, 0, 0, 'npc_sikthik_guardian', 16048),
(61929, 0, 0, 43196, 0, 0, 0, 'Sik''thik Amber-Weaver', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1.2, 1.42857, 1.14286, 1, 1, 11321, 16657, 0, 48962, 3, 2000, 2000, 1, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097256, 0, 61929, 61929, 0, 0, 0, 0, 0, 0, 0, 121116, 0, 120946, 121114, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 2.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 147, 1, 61929, 0, 0, 'npc_sikthik_amber_weaver', 16048),
(61964, 0, 0, 10906, 38497, 0, 0, 'Sap Spray', '', '', 0, 90, 90, 4, 0, 14, 14, 0, 0, 1, 1.14286, 1.14286, 1, 0, 9838, 14331, 0, 42296, 1, 2000, 2000, 1, 33554432, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0.0308676, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 16048),
(62091, 0, 0, 43982, 0, 0, 0, 'Sik''thik Flyer', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1, 5.71429, 1.14286, 1, 1, 9838, 14331, 0, 42296, 3, 2000, 2000, 1, 32768, 4196352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 0.0499999, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 269, 1, 0, 0, 64, '', 16048),
(62205, 0, 0, 43151, 0, 0, 0, 'Wing Leader Ner''onok', '', '', 0, 92, 92, 4, 0, 16, 16, 0, 0, 1.6, 1.71429, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 1, 32832, 2097152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2147483752, 0, 62205, 0, 0, 0, 0, 0, 0, 0, 0, 121442, 121443, 121282, 121284, 121762, 121447, 0, 0, 0, 0, 490000, 500000, '', 0, 3, 1, 25, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 634339327, 0, 'boss_wing_leader_neronok', 16048),
(62348, 0, 0, 43121, 0, 0, 0, 'Sik''thik Soldier', '', '', 0, 90, 90, 4, 0, 14, 14, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 1, 32768, 4196352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 62348, 62348, 0, 0, 0, 0, 0, 0, 0, 119840, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 11000, '', 0, 3, 1, 0.399999, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 62348, 0, 64, 'npc_mantid_soldier_catapult', 16048),
(62632, 0, 0, 43150, 0, 0, 0, 'Sik''thik Engineer', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 62632, 62632, 0, 0, 0, 0, 0, 0, 0, 122259, 122244, 122246, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 3.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 62632, 0, 0, 'npc_sikthik_engineer', 16048),
(62633, 0, 0, 43149, 0, 0, 0, 'Sik''thik Builder', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 62633, 62633, 0, 0, 0, 0, 0, 0, 0, 121762, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, 'npc_sikthik_builder', 16048),
(62795, 0, 0, 42193, 0, 0, 0, 'Sik''thik Warden', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 0.5, 0.496031, 1.14286, 1, 1, 9838, 14331, 0, 42296, 3, 2000, 2000, 1, 536870976, 35651584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 4, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 16048),
(63106, 0, 0, 43322, 0, 0, 0, 'Sik''thik Swarmer', '', '', 0, 89, 89, 4, 0, 16, 16, 0, 0, 1.6, 1.42857, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 1, 768, 2097152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 63106, 0, 0, 'npc_sikthik_swarmer', 16048),
(63565, 0, 0, 43138, 0, 0, 0, 'Mantid Catapult', '', '', 0, 90, 90, 4, 0, 14, 14, 0, 0, 2.8, 2, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 1, 33555200, 4196352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_mantid_catapult', 16048),
(64520, 0, 0, 44773, 44774, 44775, 44776, 'Shado-Pan Prisoner', '', '', 0, 89, 90, 4, 0, 2482, 2482, 16777216, 0, 1, 1.14286, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_niuzao_shado_pan_prisoner', 16048),
(67093, 0, 0, 45766, 0, 0, 0, 'Sik''thik Battle-Mender', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 8, 32768, 4196352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 67093, 67093, 0, 0, 0, 0, 0, 0, 0, 0, 131968, 131972, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 2.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 67093, 0, 0, 'npc_sikthik_battle_mender', 16048);

UPDATE creature_template SET mechanic_immune_mask = 667893759 WHERE entry IN (61567, 61634, 61485, 62205);

REPLACE INTO creature_template(entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, difficulty_entry_4, difficulty_entry_5, difficulty_entry_6, difficulty_entry_7, difficulty_entry_8, difficulty_entry_9, difficulty_entry_10, difficulty_entry_11, difficulty_entry_12, difficulty_entry_13, difficulty_entry_14, difficulty_entry_15, KillCredit1, KillCredit2, modelid1, modelid2, modelid3, modelid4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, exp_unk, faction_A, faction_H, npcflag, npcflag2, speed_walk, speed_run, speed_fly, scale, rank, mindmg, maxdmg, dmgschool, attackpower, dmg_multiplier, baseattacktime, rangeattacktime, unit_class, unit_flags, unit_flags2, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, minrangedmg, maxrangedmg, rangedattackpower, type, type_flags, type_flags2, lootid, pickpocketloot, skinloot, resistance1, resistance2, resistance3, resistance4, resistance5, resistance6, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, PetSpellDataId, VehicleId, mingold, maxgold, AIName, MovementType, InhabitType, HoverHeight, Health_mod, Mana_mod, Mana_mod_extra, Armor_mod, RacialLeader, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, movementId, RegenHealth, equipment_id, mechanic_immune_mask, flags_extra, WDBVerified) VALUES
(@HC_MOD + 61434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43119, 0, 0, 0, 'Sik''thik Vanguard', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11321, 16657, 0, 48962, 3, 2000, 2000, 1, 32768, 4196352, 0, 0, 0, 0, 0, 0, 1, 2, 1, 7, 2097224, 0, 61434, 61434, 0, 0, 0, 0, 0, 0, 0, 119345, 119347, 0, 124172, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 4, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 61434, 0, 0, 16048), 
(@HC_MOD + 61436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43118, 0, 0, 0, 'Sik''thik Bladedancer', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11321, 16657, 0, 48962, 3, 2000, 2000, 1, 32768, 4196352, 0, 0, 0, 0, 0, 0, 1, 2, 1, 7, 2097224, 0, 61436, 61436, 0, 0, 0, 0, 0, 0, 0, 124253, 0, 119354, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 4, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 61436, 0, 0, 16048), 
(@HC_MOD + 61448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43121, 0, 0, 0, 'Sik''thik Soldier', '', '', 0, 90, 90, 4, 0, 14, 14, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11839, 17339, 0, 1, 2, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 1, 2, 1, 7, 2097224, 0, 61448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 119840, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 62348, 0, 64, 16048), 
(@HC_MOD + 61485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43120, 0, 0, 0, 'General Pa''valak', '', '', 0, 92, 92, 4, 0, 16, 16, 0, 0, 1.6, 1.57143, 1.14286, 1, 1, 12684, 19052, 0, 55538, 3, 2000, 2000, 1, 32832, 4196352, 0, 0, 0, 0, 0, 0, 1, 2, 1, 7, 270532680, 0, 61485, 61485, 0, 0, 0, 0, 0, 0, 0, 124317, 124283, 119476, 119875, 0, 0, 0, 0, 0, 0, 490000, 500000, '', 0, 3, 1, 65, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 159, 1, 61485, 667893759, 0, 16048), 
(@HC_MOD + 61567, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43197, 0, 0, 0, 'Vizier Jin''bak', '', '', 0, 92, 92, 4, 0, 14, 14, 0, 0, 1, 1.42857, 1.14286, 1, 1, 12684, 19052, 0, 55538, 3, 1500, 2000, 2, 32832, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097256, 0, 61567, 0, 0, 0, 0, 0, 0, 0, 0, 120001, 120095, 0, 0, 0, 0, 0, 0, 0, 0, 490000, 500000, '', 0, 3, 1, 30, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 667893759, 0, 16048), 
(@HC_MOD + 61634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42169, 0, 0, 0, 'Commander Vo''jak', '', '', 0, 92, 92, 4, 0, 16, 16, 0, 0, 1, 1.42857, 1.14286, 1, 1, 12684, 19052, 0, 55538, 3, 2500, 2000, 1, 33600, 2097152, 0, 0, 0, 0, 0, 0, 460, 552, 46, 7, 2097224, 0, 61634, 0, 0, 0, 0, 0, 0, 0, 0, 120778, 120800, 120789, 120758, 120760, 120759, 0, 0, 0, 0, 490000, 500000, '', 0, 3, 1, 30, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 61634, 667893759, 0, 16048), 
(@HC_MOD + 61670, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42875, 0, 0, 0, 'Sik''thik Demolisher', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1.6, 1.71429, 1.14286, 1, 1, 450, 540, 0, 45, 2, 2000, 2000, 1, 768, 2097152, 0, 0, 0, 0, 0, 0, 450, 540, 45, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120778, 121982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 0, 0, 16048), 
(@HC_MOD + 61699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43955, 43955, 0, 0, 'Sik''thik Amberwing', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 0, 1, 0.5, 1.14286, 1, 0, 550, 950, 0, 36, 7, 2000, 2000, 1, 0, 0, 12, 0, 0, 0, 0, 0, 400, 600, 150, 10, 16778240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 0.119048, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 78, 1, 0, 0, 0, 15595), 
(@HC_MOD + 61701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42207, 0, 0, 0, 'Sik''thik Warrior', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1, 0.992063, 1.14286, 1, 1, 450, 540, 0, 45, 2, 2000, 2000, 1, 768, 2097152, 0, 0, 0, 0, 0, 0, 450, 540, 45, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 15, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 61701, 0, 0, 16048), 
(@HC_MOD + 61910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33011, 0, 0, 0, 'Resin Flake', '', '', 0, 91, 91, 4, 0, 16, 16, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11321, 16657, 0, 48962, 3, 2000, 2000, 1, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2097256, 0, 61910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120938, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 1, 1, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, 16048), 
(@HC_MOD + 61928, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43198, 0, 0, 0, 'Sik''thik Guardian', '', '', 0, 91, 91, 4, 0, 16, 16, 0, 0, 1.2, 1.42857, 1.14286, 1, 1, 11321, 16657, 0, 48962, 3, 2000, 2000, 1, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097256, 0, 61928, 61928, 0, 0, 0, 0, 0, 0, 0, 0, 121421, 121422, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 147, 1, 61928, 0, 0, 16048), 
(@HC_MOD + 61929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43196, 0, 0, 0, 'Sik''thik Amber-Weaver', '', '', 0, 91, 91, 4, 0, 16, 16, 0, 0, 1.2, 1.42857, 1.14286, 1, 1, 11321, 16657, 0, 48962, 3, 2000, 2000, 1, 32768, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097256, 0, 61929, 61929, 0, 0, 0, 0, 0, 0, 0, 121116, 0, 120946, 121114, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 147, 1, 61929, 0, 0, 16048), 
(@HC_MOD + 61964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10906, 38497, 0, 0, 'Sap Spray', '', '', 0, 90, 90, 4, 0, 14, 14, 0, 0, 1, 1.14286, 1.14286, 1, 0, 9838, 14331, 0, 42296, 1, 2000, 2000, 1, 33554432, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, 16048), 
(@HC_MOD + 62091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43982, 0, 0, 0, 'Sik''thik Flyer', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1, 5.71429, 1.14286, 1, 1, 9838, 14331, 0, 42296, 3, 2000, 2000, 1, 32768, 4196352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 0.05, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 269, 1, 0, 0, 64, 16048), 
(@HC_MOD + 62205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43151, 0, 0, 0, 'Wing Leader Ner''onok', '', '', 0, 92, 92, 4, 0, 16, 16, 0, 0, 1.6, 1.71429, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 1, 32832, 2097152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2147483752, 0, 62205, 0, 0, 0, 0, 0, 0, 0, 0, 121442, 121443, 121282, 121284, 121762, 121447, 0, 0, 0, 0, 490000, 500000, '', 0, 3, 1, 30, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 634339327, 0, 16048), 
(@HC_MOD + 62348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43121, 0, 0, 0, 'Sik''thik Soldier', '', '', 0, 90, 90, 4, 0, 14, 14, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 1, 32768, 4196352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 62348, 62348, 0, 0, 0, 0, 0, 0, 0, 119840, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 11000, '', 0, 3, 1, 0.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 62348, 0, 64, 16048), 
(@HC_MOD + 62632, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43150, 0, 0, 0, 'Sik''thik Engineer', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 62632, 62632, 0, 0, 0, 0, 0, 0, 0, 122259, 122244, 122246, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 4, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 62632, 0, 0, 16048), 
(@HC_MOD + 62633, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43149, 0, 0, 0, 'Sik''thik Builder', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 62633, 62633, 0, 0, 0, 0, 0, 0, 0, 121762, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 2.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, 16048), 
(@HC_MOD + 62795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42193, 0, 0, 0, 'Sik''thik Warden', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 0.5, 0.496031, 1.14286, 1, 1, 9838, 14331, 0, 42296, 3, 2000, 2000, 1, 536870976, 35651584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 4, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16048), 
(@HC_MOD + 63106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43322, 0, 0, 0, 'Sik''thik Swarmer', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1.6, 1.42857, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 1, 768, 2097152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 4, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 63106, 0, 0, 16048), 
(@HC_MOD + 63565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43138, 0, 0, 0, 'Mantid Catapult', '', '', 0, 90, 90, 4, 0, 14, 14, 0, 0, 2.8, 2, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 1, 33555200, 4196352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16048), 
(@HC_MOD + 64520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44773, 44774, 44775, 44776, 'Shado-Pan Prisoner', '', '', 0, 89, 90, 4, 0, 2482, 2482, 16777216, 0, 1, 1.14286, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16048), 
(@HC_MOD + 67093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45766, 0, 0, 0, 'Sik''thik Battle-Mender', '', '', 0, 90, 90, 4, 0, 16, 16, 0, 0, 1, 1.42857, 1.14286, 1, 1, 11839, 17339, 0, 45299, 2, 2000, 2000, 8, 32768, 4196352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2097224, 0, 67093, 67093, 0, 0, 0, 0, 0, 0, 0, 0, 131968, 131972, 0, 0, 0, 0, 0, 0, 0, 11000, 12000, '', 0, 3, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 67093, 0, 0, 16048);

-- Normal mode hp
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 0.04999987 WHERE `entry` = 62091; -- Sik'thik Flyer
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 1 WHERE `entry` = 61817; -- Mantid Tar Keg
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 0.03086757 WHERE `entry` = 61629; -- Sappling Summon Dest
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `Health_mod` = 1 WHERE `entry` = 62684; -- Barrel Target
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 2.499999 WHERE `entry` = 61928; -- Sik'thik Guardian
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 2.499999 WHERE `entry` = 61929; -- Sik'thik Amber-Weaver
UPDATE `creature_template` SET `minlevel` = 89, `maxlevel` = 89, `Health_mod` = 2.5 WHERE `entry` = 61670; -- Sik'thik Demolisher
UPDATE `creature_template` SET `minlevel` = 91, `maxlevel` = 91, `Health_mod` = 25 WHERE `entry` = 61634; -- Commander Vo'jak
UPDATE `creature_template` SET `minlevel` = 89, `maxlevel` = 89, `Health_mod` = 3 WHERE `entry` = 63106; -- Sik'thik Swarmer
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 1 WHERE `entry` = 61620; -- Yang Ironclaw
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 0.03086757 WHERE `entry` = 61964; -- Sap Spray
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 0.03086757 WHERE `entry` = 61965; -- Sap Puddle
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 0.03086757 WHERE `entry` = 61967; -- Resin Stalker
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `Health_mod` = 1 WHERE `entry` = 57478; -- Invisible Stalker
UPDATE `creature_template` SET `minlevel` = 91, `maxlevel` = 91, `Health_mod` = 25 WHERE `entry` = 61567; -- Vizier Jin'bak
UPDATE `creature_template` SET `minlevel` = 89, `maxlevel` = 89, `Health_mod` = 10 WHERE `entry` = 61699; -- Sik'thik Amberwing
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 1 WHERE `entry` = 62794; -- Lo Chu
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 1 WHERE `entry` = 61812; -- Li Chu
UPDATE `creature_template` SET `minlevel` = 89, `maxlevel` = 89, `Health_mod` = 12 WHERE `entry` = 61701; -- Sik'thik Warrior
UPDATE `creature_template` SET `minlevel` = 89, `maxlevel` = 89, `Health_mod` = 3 WHERE `entry` = 64520; -- Shado-Pan Prisoner
UPDATE `creature_template` SET `minlevel` = 89, `maxlevel` = 89, `Health_mod` = 0.3999988 WHERE `entry` = 62348; -- Sik'thik Soldier
UPDATE `creature_template` SET `minlevel` = 89, `maxlevel` = 89, `Health_mod` = 3.5 WHERE `entry` = 61436; -- Sik'thik Bladedancer
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 2.499998 WHERE `entry` = 67093; -- Sik'thik Battle-Mender
UPDATE `creature_template` SET `minlevel` = 89, `maxlevel` = 89, `Health_mod` = 3.5 WHERE `entry` = 61434; -- Sik'thik Vanguard
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 1 WHERE `entry` = 63565; -- Mantid Catapult
UPDATE `creature_template` SET `minlevel` = 91, `maxlevel` = 91, `Health_mod` = 55 WHERE `entry` = 61485; -- General Pa'valak
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 1 WHERE `entry` = 73400; -- Healing Ran Invisible Stalker DND
UPDATE `creature_template` SET `minlevel` = 89, `maxlevel` = 89, `Health_mod` = 3.5 WHERE `entry` = 62632; -- Sik'thik Engineer
UPDATE `creature_template` SET `minlevel` = 89, `maxlevel` = 89, `Health_mod` = 2 WHERE `entry` = 62633; -- Sik'thik Builder
UPDATE `creature_template` SET `minlevel` = 93, `maxlevel` = 93, `Health_mod` = 15 WHERE `entry` = 61483; -- Reinforcements Summoner
UPDATE `creature_template` SET `minlevel` = 91, `maxlevel` = 91, `Health_mod` = 25 WHERE `entry` = 62205; -- Wing Leader Ner'onok
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 3 WHERE `entry` = 64517; -- Shado-Master Chum Kiu
-- HC mode
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 0.03086757 WHERE entry = @HC_MOD + 61965; -- Sap Puddle
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 0.03086757 WHERE entry = @HC_MOD + 61964; -- Sap Spray
UPDATE `creature_template` SET `minlevel` = 91, `maxlevel` = 91, `Health_mod` = 3 WHERE entry = @HC_MOD + 61929; -- Sik'thik Amber-Weaver
UPDATE `creature_template` SET `minlevel` = 91, `maxlevel` = 91, `Health_mod` = 3 WHERE entry = @HC_MOD + 61928; -- Sik'thik Guardian
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 0.03086757 WHERE entry = @HC_MOD + 61629; -- Sappling Summon Dest
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 0.03086757 WHERE entry = @HC_MOD + 61967; -- Resin Stalker
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 0.04999987 WHERE entry = @HC_MOD + 62091; -- Sik'thik Flyer
UPDATE `creature_template` SET `minlevel` = 91, `maxlevel` = 91, `Health_mod` = 1.5 WHERE entry = @HC_MOD + 61910; -- Resin Flake
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 3 WHERE entry = @HC_MOD + 64517; -- Shado-Master Chum Kiu
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 0.03086757 WHERE entry = @HC_MOD + 61613; -- Sap Puddle
UPDATE `creature_template` SET `minlevel` = 92, `maxlevel` = 92, `Health_mod` = 30 WHERE entry = @HC_MOD + 61567; -- Vizier Jin'bak
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 4 WHERE entry = @HC_MOD + 62795; -- Sik'thik Warden
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 1 WHERE entry = @HC_MOD + 61620; -- Yang Ironclaw
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 1 WHERE entry = @HC_MOD + 62794; -- Lo Chu
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 1 WHERE entry = @HC_MOD + 61812; -- Li Chu
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 1 WHERE entry = @HC_MOD + 61817; -- Mantid Tar Keg
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 3 WHERE entry = @HC_MOD + 61670; -- Sik'thik Demolisher
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 4 WHERE entry = @HC_MOD + 63106; -- Sik'thik Swarmer
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `Health_mod` = 1.225949 WHERE entry = @HC_MOD + 66699; -- Generic Invisible Stalker Controller NonImmune - IH
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `Health_mod` = 1 WHERE entry = @HC_MOD + 57478; -- Invisible Stalker
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `Health_mod` = 1 WHERE entry = @HC_MOD + 62684; -- Barrel Target
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 15 WHERE entry = @HC_MOD + 61701; -- Sik'thik Warrior
UPDATE `creature_template` SET `minlevel` = 92, `maxlevel` = 92, `Health_mod` = 30 WHERE entry = @HC_MOD + 61634; -- Commander Vo'jak
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 13.5 WHERE entry = @HC_MOD + 61699; -- Sik'thik Amberwing
UPDATE `creature_template` SET `minlevel` = 89, `maxlevel` = 89, `Health_mod` = 3 WHERE entry = @HC_MOD + 64520; -- Shado-Pan Prisoner
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 4 WHERE entry = @HC_MOD + 61434; -- Sik'thik Vanguard
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 0.4999987 WHERE entry = @HC_MOD + 62348; -- Sik'thik Soldier
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 4 WHERE entry = @HC_MOD + 61436; -- Sik'thik Bladedancer
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 1 WHERE entry = @HC_MOD + 63565; -- Mantid Catapult
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 3 WHERE entry = @HC_MOD + 67093; -- Sik'thik Battle-Mender
UPDATE `creature_template` SET `minlevel` = 92, `maxlevel` = 92, `Health_mod` = 65 WHERE entry = @HC_MOD + 61485; -- General Pa'valak
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 2.499999 WHERE entry = @HC_MOD + 62633; -- Sik'thik Builder
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90, `Health_mod` = 4 WHERE entry = @HC_MOD + 62632; -- Sik'thik Engineer
UPDATE `creature_template` SET `minlevel` = 93, `maxlevel` = 93, `Health_mod` = 15 WHERE entry = @HC_MOD + 61483; -- Reinforcements Summoner
UPDATE `creature_template` SET `minlevel` = 92, `maxlevel` = 92, `Health_mod` = 30 WHERE entry = @HC_MOD + 62205; -- Wing Leader Ner'onok

UPDATE creature_template SET difficulty_entry_1 = @HC_MOD + entry WHERE entry IN (61434, 61436, 61485, 61567, 61910, 61928, 61929, 61964, 62091, 62205, 62348, 62632, 62633, 62795, 63565, 64520, 67093, 61634, 61701, 61670, 63106, 61699, 61448);

	
	
UPDATE creature_template SET lootId = entry WHERE entry IN (HC_ENTRY(61567), HC_ENTRY(61634), HC_ENTRY(61485), HC_ENTRY(62205));
UPDATE creature_template SET lootId = entry WHERE entry IN (61567, 61634, 61485, 62205);
DELETE FROM creature_loot_template WHERE entry IN (61567, 61634, 61485, 62205, HC_ENTRY(61567), HC_ENTRY(61634), HC_ENTRY(61485), HC_ENTRY(62205));
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) VALUES
-- Jin''Bak
(61567, 81262, 100, 1, 1, 1, 1), -- Hood of Viridian Residue
(61567, 81270, 100, 1, 1, 1, 1), -- Sap-Encrusted Legplates
(61567, 81263, 100, 1, 1, 1, 1), -- Flashfrozen Resin Globule
(61567, 81271, 100, 1, 1, 1, 1), -- Engraved Amber Pendant
(61567, 81272, 100, 1, 1, 1, 1), -- Girdle of Soothing Detonation
(HC_ENTRY(61567), 100952, 100, 1, 1, 1, 1), -- Hood of Viridian Residue
(HC_ENTRY(61567), 100954, 100, 1, 1, 1, 1), -- Sap-Encrusted Legplates
(HC_ENTRY(61567), 100950, 100, 1, 1, 1, 1), -- Engraved Amber Pendant
(HC_ENTRY(61567), 100951, 100, 1, 1, 1, 1), -- Flashfrozen Resin Globule
(HC_ENTRY(61567), 100953, 100, 1, 1, 1, 1), -- Girdle of Soothing Detonation
-- Vo'Jak
(61634, 81273, 100, 1, 1, 1, 1), -- Siege-Captain's Scimitar
(61634, 81274, 100, 1, 1, 1, 1), -- Sightfinder Helm
(61634, 81275, 100, 1, 1, 1, 1), -- Chestwrap of Arcing Flame
(61634, 81276, 100, 1, 1, 1, 1), -- Bombardment Bracers
(61634, 81277, 100, 1, 1, 1, 1), -- Archer's Precision Grips
(HC_ENTRY(61634), 100955, 100, 1, 1, 1, 1), -- Siege-Captain's Scimitar
(HC_ENTRY(61634), 100956, 100, 1, 1, 1, 1), -- Bombardment Bracers
(HC_ENTRY(61634), 100957, 100, 1, 1, 1, 1), -- Chestwrap of Arcing Flame
(HC_ENTRY(61634), 100958, 100, 1, 1, 1, 1), -- Archer's Precision Grips
(HC_ENTRY(61634), 100959, 100, 1, 1, 1, 1), -- Sightfinder Helm
-- Pa'valak
(61485, 81264, 100, 1, 1, 1, 1), -- Vial of Ichorous Blood
(61485, 81279, 100, 1, 1, 1, 1), -- Tempestuous Longbow
(61485, 81280, 100, 1, 1, 1, 1), -- Siegeworn Bracers
(61485, 81281, 100, 1, 1, 1, 1), -- Breezebinder Handwraps
(61485, 81282, 100, 1, 1, 1, 1), -- Aerial Bombardment Cloak
(HC_ENTRY(61485), 100960, 100, 1, 1, 1, 1), -- Tempestuous Longbow
(HC_ENTRY(61485), 100961, 100, 1, 1, 1, 1), -- Aerial Bombardment Cloak
(HC_ENTRY(61485), 100962, 100, 1, 1, 1, 1), -- Breezebinder Handwraps
(HC_ENTRY(61485), 100963, 100, 1, 1, 1, 1), -- Vial of Ichorous Blood
(HC_ENTRY(61485), 100964, 100, 1, 1, 1, 1), -- Siegeworn Bracers
(HC_ENTRY(61485), 71715, 7, 1, 0, 1, 1), -- A Treatise on Strategy
(HC_ENTRY(61485), 88162, 0.3, 1, 0, 1, 1), -- Illegible List of Rabble to Raze
-- Ner'onok
(62205, 81283, 100, 1, 1, 1, 1), -- Windblast Helm
(62205, 81284, 100, 1, 1, 1, 1), -- Anchoring Sabatons
(62205, 81285, 100, 1, 1, 1, 1), -- Galedodger Chestguard
(62205, 81286, 100, 1, 1, 1, 1), -- Ner'onok's Razor Katar
(62205, 81287, 100, 1, 1, 1, 1), -- Spaulders of Immovable Stone
(62205, 81288, 100, 1, 2, 1, 1), -- Gustwalker Staff
(62205, 81289, 100, 1, 2, 1, 1), -- Breezeswept Hood
(62205, 81290, 100, 1, 2, 1, 1), -- Belt of Totemic Binding
(62205, 81291, 100, 1, 2, 1, 1), -- Whisperwind Spaulders
(62205, 81292, 100, 1, 2, 1, 1), -- Airbender Sandals
(HC_ENTRY(62205), 87547, 0.5, 1, 0, 1, 1), -- Tolakesh, Horn of the Black Ox
(HC_ENTRY(62205), 100965, 100, 1, 1, 1, 1), -- Ner'onok's Razor Katar
(HC_ENTRY(62205), 100967, 100, 1, 1, 1, 1), -- Windblast Helm
(HC_ENTRY(62205), 100968, 100, 1, 1, 1, 1), -- Galedodger Chestguard
(HC_ENTRY(62205), 100969, 100, 1, 1, 1, 1), -- Anchoring Sabatons
(HC_ENTRY(62205), 100970, 100, 1, 1, 1, 1), -- Spaulders of Immovable Stone
(HC_ENTRY(62205), 100971, 100, 1, 2, 1, 1), -- Breezeswept Hood
(HC_ENTRY(62205), 100972, 100, 1, 2, 1, 1), -- Whisperwind Spaulders
(HC_ENTRY(62205), 100973, 100, 1, 2, 1, 1), -- Gustwalker Staff
(HC_ENTRY(62205), 100974, 100, 1, 2, 1, 1), -- Belt of Totemic Binding
(HC_ENTRY(62205), 100975, 100, 1, 2, 1, 1); -- Airbender Sandals

/*
Niuzao Temple (Map 1011)
*/


/*
*******************************
******** TRASH MOBS ***********
*******************************
*/
-- Shado-Master Chum Kiu
UPDATE creature_template SET ScriptName = 'npc_chum_kiu' WHERE entry = 64517;

DELETE FROM creature_text WHERE entry = 64517;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(64517, 0, 0, '$p, over here near the end of the bridge.', 12, 0, 100, 1, 0, 0, 'Chum Kiu');

DELETE FROM waypoint_spline_data WHERE c_entry = 64517;
INSERT INTO waypoint_spline_data (c_entry, path_id, wp_id, position_x, position_y, position_z) VALUES
(64517, 1, 1, 1851.932, 5214.889, 131.1686),
(64517, 1, 2, 1851.155, 5214.26, 131.1686),
(64517, 1, 3, 1847.3, 5209.292, 131.1686),
(64517, 1, 4, 1848.576, 5203.101, 131.1689),
(64517, 1, 5, 1855.802, 5199.653, 131.234),
(64517, 1, 6, 1864, 5197.158, 131.234),
(64517, 1, 7, 1872.958, 5188.564, 131.234),
(64517, 1, 8, 1874.483, 5181.339, 131.234),
(64517, 1, 9, 1870.899, 5172.175, 134.2948),
(64517, 1, 10, 1870.899, 5172.175, 134.2948);

-- First boss area

-- AMBER WEAVER
UPDATE creature_template SET ScriptName = 'npc_sikthik_amber_weaver' WHERE entry = 61929;
UPDATE creature_template SET faction_A = 16, faction_H = 16, flags_extra = 128 WHERE entry = 62208; -- Resin Shell
DELETE FROM spell_script_names WHERE spell_id = 121114;
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(121114, 'spell_resin_weaving');

DELETE FROM creature_template_aura WHERE entry = 62208;
INSERT INTO creature_template_aura (entry, aura) VALUES
(62208, 121095); -- Resin Shell damage reduction trigger

UPDATE creature_template SET flags_extra = 128 WHERE entry = 61967;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` = 120596;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 120596, 0, 0, 31, 0, 3, 61967, 0, 0, 0, 0, '', 'Resin Weave Visual - Target stalker');

-- GUARDIAN
UPDATE creature_template SET ScriptName = 'npc_sikthik_guardian' WHERE entry = 61928;
-- RESIN FLAKE
UPDATE creature_template SET ScriptName = 'npc_resin_flake' WHERE entry = 61910;

-- Rear Staging Area

-- Battle-Mender
UPDATE creature_template SET ScriptName = 'npc_sikthik_battle_mender' WHERE entry = 67093;
UPDATE creature_template SET minlevel = 90, maxlevel = 90, flags_extra = 128 WHERE entry = 67094; -- Winds Grace
DELETE FROM creature_template_aura WHERE entry = 67094;
INSERT INTO creature_template_aura (entry, aura) VALUES
(67094, 131970); -- Wind's Grace
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` = 131971;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 6, 131971, 0, 0, 31, 0, 3, 61436, 0, 0, 0, 0, '', 'Wind''s Grace - target Friend'),
(13, 6, 131971, 0, 1, 31, 0, 3, 61434, 0, 0, 0, 0, '', 'Wind''s Grace - target Friend'),
(13, 6, 131971, 0, 2, 31, 0, 3, 67093, 0, 0, 0, 0, '', 'Wind''s Grace - target Friend');

UPDATE creature_template SET ScriptName = 'npc_sikthik_bladedancer' WHERE entry = 61436;
UPDATE creature_template SET ScriptName = 'npc_sikthik_builder' WHERE entry = 62633;
UPDATE creature_template SET ScriptName = 'npc_sikthik_engineer' WHERE entry = 62632;
UPDATE creature_template SET ScriptName = 'npc_sikthik_vanguard' WHERE entry = 61434;


-- Somewhere inside quest
UPDATE creature_template SET ScriptName = 'npc_niuzao_shado_pan_prisoner' WHERE entry = 64520;

DELETE FROM npc_spellclick_spells WHERE npc_entry = 64520; -- Prisoner
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, cast_flags) VALUES
(64520, 125993, 1);

-- Cosmetic Catapults in rear staging area
UPDATE creature_template SET ScriptName = 'npc_mantid_soldier_catapult' WHERE entry IN (62348, 61448);
UPDATE creature_template SET ScriptName = 'npc_mantid_catapult' WHERE entry = 63565;



UPDATE creature_template SET ScriptName = 'boss_vizier_jinbak' WHERE entry = 61567;

DELETE FROM spell_script_names WHERE spell_id IN(120001,120070, 119941);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(120001, 'spell_jinbak_detonate'),
(119941, 'spell_sap_residue'),
(120070, 'spell_sap_residue');

UPDATE creature_template SET InhabitType = 1,  ScriptName = 'npc_sap_globule' WHERE entry = 61623;
UPDATE creature_template SET flags_extra = 128 WHERE entry = 61629; -- Globule summon dest
UPDATE creature_template SET modelid1 = 38497, flags_extra = 128, ScriptName = 'npc_sap_puddle' WHERE entry = 61613;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (120071, 120070, 120001, 120095);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 120001, 0, 0, 31, 0, 3, 61613, 0, 0, 0, 0, '', 'Detonate - Target Sap Puddle'),
(13, 1, 120071, 0, 0, 31, 0, 3, 61613, 0, 0, 0, 0, '', 'Summon Sappling reverse - target Sap Puddle'),
(13, 1, 120070, 0, 0, 31, 0, 3, 61623, 0, 0, 0, 0, '', 'Sap Residue - Target Sappling'),
(13, 1, 120095, 0, 0, 31, 0, 3, 61613, 0, 0, 0, 0, '', 'Detonate Visual - Target Sap Puddle');

DELETE FROM creature_text WHERE entry = 61567;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(61567, 0, 0, 'I hope they make it this far. Then my strength and skill will be clear to all!', 14, 0, 100, 0, 0, 29392, 'Vizier Jin''bak - SAY_INTRO'),
(61567, 1, 0, 'Ah-hah! The lot of you will soon wish you hadn''t come this way...', 14, 0, 100, 0, 0, 29390, 'Vizier Jin''bak - SAY_AGGRO'),
(61567, 2, 0, 'But... I was... who will...?!', 14, 0, 100, 0, 0, 29391, 'Vizier Jin''bak - SAY_SAY_DEATH'),
(61567, 3, 0, 'Did you think you stood a chance?!', 14, 0, 100, 0, 0, 29394, 'Vizier Jin''bak - SAY_SLAY'),
(61567, 4, 0, 'Allow me to show you the power of amber alchemy...', 14, 0, 100, 0, 0, 29395, 'Vizier Jin''bak - SAY_DETONATE'),
(61567, 5, 0, '|cFFFE9A2ESap Globules|r begin to sprout from the tree!', 41, 0, 100, 0, 0, 0, 'Vizier Jin''bak - EMOTE_GLOBULE');

/*
*******************************
***** COMMANDER VO'JAK ********
*******************************
*/

UPDATE creature_template SET InhabitType = 4 WHERE entry = 57478; -- Invisible Stalker
UPDATE creature_template SET flags_extra = 128 WHERE entry IN (66699, 61579); -- Gongable stalker
UPDATE creature_template SET ScriptName = 'boss_commander_vojak' WHERE entry = 61634;

UPDATE creature_template SET mindmg = 12684, maxdmg = 19052, dmg_multiplier = 3, attackpower = 55538, ScriptName = 'npc_sikthik_warrior' WHERE entry = 61701;
UPDATE creature_template SET mindmg = 12684, maxdmg = 19052, dmg_multiplier = 5, attackpower = 55538 WHERE entry = 361701;
UPDATE creature_template SET mindmg = 11321, maxdmg = 16657, dmg_multiplier = 3, attackpower = 48962, ScriptName = 'npc_sikthik_demolisher' WHERE entry = 61670;
UPDATE creature_template SET mindmg = 11321, maxdmg = 16657, dmg_multiplier = 5, attackpower = 48962 WHERE entry = 361670;
UPDATE creature_template SET mindmg = 11839, maxdmg = 17339, dmg_multiplier = 2, ScriptName = 'npc_sikthik_swarmer' WHERE entry = 63106;
UPDATE creature_template SET mindmg = 11839, maxdmg = 17339, dmg_multiplier = 4 WHERE entry = 363106;
UPDATE creature_template SET ScriptName = 'npc_yang_ironclaw' WHERE entry = 61620;
UPDATE creature_template SET faction_A = 14, faction_H = 14,  modelid1 = 43955, modelid2 = 43955, InhabitType = 4, ScriptName = 'npc_sikthik_amberwing' WHERE entry = 61699;

UPDATE creature_template SET ScriptName = 'npc_mantid_tar_keg' WHERE entry = 61817;

UPDATE creature_template SET ScriptName = 'npc_chu_helper' WHERE entry IN (62794, 61812);

UPDATE creature_template SET minlevel = 93, maxlevel = 93, ScriptName = 'npc_sap_puddle_vojak' WHERE entry = 61579;

DELETE FROM areatrigger_scripts WHERE entry IN (325, 349, 359);


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (119703, 120270, 121981, 121982, 127417, 127418, 122346, 120202, 120405);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 3, 119703, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Detonate - Target players only'),
(13, 3, 120270, 0, 0, 31, 0, 3, 63106, 0, 0, 0, 0, '', 'Drain Barrel - target Sik''Thik Swarmer'),
(13, 3, 120270, 0, 1, 31, 0, 3, 61670, 0, 0, 0, 0, '', 'Drain Barrel - target Sik''Thik Demolisher'),
(13, 3, 120270, 0, 2, 31, 0, 3, 61701, 0, 0, 0, 0, '', 'Drain Barrel - target Sik''Thik Warrior'),
(13, 3, 120270, 0, 3, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Drain Barrel - target players'),
(13, 3, 120270, 0, 4, 31, 0, 3, 61634, 0, 0, 0, 0, '', 'Drain Barrel - target Vo''Jak'),
(13, 3, 121981, 0, 2, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Unstable Blast - target Players'),
(13, 1, 121982, 0, 2, 31, 0, 3, 61670, 0, 0, 0, 0, '', 'Unstable Blast - target Demolisher'),
(13, 1, 127417, 0, 0, 31, 0, 3, 61620, 0, 0, 0, 0, '', 'Door Breach - target Yang'),
(13, 1, 127417, 0, 1, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Door Breach - target Players'),
(13, 1, 127418, 0, 0, 31, 0, 3, 65168, 0, 0, 0, 0, '', 'Door Breach - target Stalkers'),
(13, 1, 122346, 0, 0, 31, 0, 3, 62684, 0, 0, 0, 0, '', 'Barrel Assignment - target Barrel Target'),
(13, 1, 120202, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Bombard - target players'),
(13, 1, 120405, 0, 0, 31, 0, 3, 61817, 0, 0, 0, 0, '', 'Grab Barrel - target Mantid Tar Keg');

DELETE FROM spell_script_names WHERE spell_id IN (122346, 120405);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(120405, 'spell_grab_barrel'),
(122346, 'spell_barrel_assignment');

DELETE FROM waypoint_spline_data WHERE c_entry IN (61620, 62794, 61812);
INSERT INTO waypoint_spline_data (c_entry, path_id, wp_id, position_x, position_y, position_z) VALUES
(61620, 1, 1, 1494.234, 5287.276, 184.71809),
(61620, 1, 2, 1483.312, 5286.884, 179.77147),
(61620, 1, 3, 1476.415, 5292.712, 179.70621),
(61620, 1, 4, 1474.884, 5301.142, 176.12263),
(61620, 1, 5, 1479.860, 5321.439, 176.12263),
(61620, 1, 6, 1506.891, 5326.096, 161.20862),
(61620, 1, 7, 1556.494, 5335.324, 161.65572),
(61620, 1, 8, 1561.720, 5345.767, 161.21030),
(61620, 1, 9, 1549.241, 5350.514, 161.00854),
(61620, 1, 10, 1524.461, 5348.869, 146.23039),
(61620, 1, 11, 1512.022, 5359.530, 146.23717),
(61620, 1, 12, 1511.783, 5372.528, 139.08122),
(61620, 1, 13, 1518.057, 5398.035, 139.31659),
(61620, 1, 14, 1543.719, 5404.460, 139.15877),
(61620, 1, 15, 1565.090, 5410.875, 137.89453),
(61620, 1, 16, 1583.201, 5415.660, 138.41689),
(61620, 1, 17, 1602.039, 5416.525, 138.47189),
(61620, 1, 18, 1612.171, 5415.123, 138.69084),

(62794, 1, 1, 1494.234, 5287.276, 184.71809),
(62794, 1, 2, 1483.312, 5286.884, 179.77147),
(62794, 1, 3, 1476.415, 5292.712, 179.70621),
(62794, 1, 4, 1474.884, 5301.142, 176.12263),
(62794, 1, 5, 1479.860, 5321.439, 176.12263),
(62794, 1, 6, 1550.877, 5329.244, 161.349),
(62794, 1, 7, 1557.127, 5332.744, 161.849),
(62794, 1, 8, 1562.877, 5337.994, 161.349),
(62794, 1, 9, 1561.377, 5346.244, 161.349),
(62794, 1, 10, 1557.127, 5350.494, 161.349),
(62794, 1, 11, 1549.877, 5351.744, 161.349),
(62794, 1, 12, 1537.627, 5350.994, 154.099),
(62794, 1, 13, 1525.127, 5349.994, 146.599),
(62794, 1, 14, 1520.627, 5349.744, 146.599),
(62794, 1, 15, 1516.627, 5351.744, 146.599),
(62794, 1, 16, 1513.377, 5354.994, 146.599),
(62794, 1, 17, 1513.127, 5359.244, 146.599),
(62794, 1, 18, 1511.877, 5371.994, 139.849),
(62794, 1, 19, 1512.127, 5381.744, 139.349),
(62794, 1, 20, 1520.877, 5386.744, 139.099),
(62794, 1, 21, 1534.377, 5388.994, 139.849),
(62794, 1, 22, 1549.377, 5389.494, 139.349),
(62794, 1, 23, 1568.377, 5390.994, 140.099),
(62794, 1, 24, 1585.377, 5388.744, 139.849),
(62794, 1, 25, 1589.127, 5387.994, 139.849),
(62794, 1, 26, 1591.877, 5385.494, 140.099),

(61812, 1, 1, 1494.234, 5287.276, 184.71809),
(61812, 1, 2, 1483.312, 5286.884, 179.77147),
(61812, 1, 3, 1476.415, 5292.712, 179.70621),
(61812, 1, 4, 1474.884, 5301.142, 176.12263),
(61812, 1, 5, 1479.860, 5321.439, 176.12263),
(61812, 1, 6, 1521.958, 5324.577, 161.3554),
(61812, 1, 7, 1540.708, 5326.327, 161.3554),
(61812, 1, 8, 1550.958, 5328.077, 161.3554),
(61812, 1, 9, 1556.958, 5330.077, 161.8554),
(61812, 1, 10, 1561.458, 5333.577, 161.3554),
(61812, 1, 11, 1564.708, 5337.577, 161.3554),
(61812, 1, 12, 1565.208, 5342.577, 161.3554),
(61812, 1, 13, 1562.708, 5347.577, 161.3554),
(61812, 1, 14, 1558.958, 5350.827, 161.3554),
(61812, 1, 15, 1554.708, 5352.827, 161.3554),
(61812, 1, 16, 1550.208, 5353.577, 161.3554),
(61812, 1, 17, 1537.708, 5352.827, 154.1054),
(61812, 1, 18, 1525.208, 5351.577, 146.6054),
(61812, 1, 19, 1520.208, 5351.327, 146.6054),
(61812, 1, 20, 1516.958, 5354.577, 146.6054),
(61812, 1, 21, 1515.458, 5358.827, 146.6054),
(61812, 1, 22, 1514.458, 5365.827, 143.6054),
(61812, 1, 23, 1514.458, 5371.827, 139.8554),
(61812, 1, 24, 1517.708, 5380.827, 139.3554),
(61812, 1, 25, 1523.208, 5384.077, 139.8554),
(61812, 1, 26, 1535.708, 5385.327, 140.1054),
(61812, 1, 27, 1548.708, 5385.827, 139.6054),
(61812, 1, 28, 1564.458, 5386.077, 140.3554),
(61812, 1, 29, 1574.958, 5384.827, 140.6054),
(61812, 1, 30, 1582.208, 5381.827, 140.1054);

DELETE FROM waypoint_data WHERE id = 6162001; -- Add Path
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, orientation, delay, move_flag, action, action_chance, wpguid) VALUES
(6162001, 1, 1511.885, 5378.232, 138.95970, 0, 1, 0, 0, 100, 0),
(6162001, 2, 1512.162, 5372.485, 139.08124, 0, 1, 0, 0, 100, 0),
(6162001, 3, 1512.879, 5359.946, 146.22418, 0, 1, 0, 0, 100, 0),
(6162001, 4, 1524.942, 5348.655, 146.23088, 0, 1, 0, 0, 100, 0),
(6162001, 5, 1549.231, 5350.165, 160.99088, 0, 1, 0, 0, 100, 0),
(6162001, 6, 1567.434, 5341.903, 161.21361, 0, 1, 0, 0, 100, 0),
(6162001, 7, 1555.366, 5329.321, 161.66699, 0, 1, 0, 0, 100, 0),
(6162001, 8, 1507.551, 5326.483, 161.21100, 0, 1, 0, 0, 100, 0),
(6162001, 9, 1480.644, 5324.358, 176.12379, 0, 1, 0, 0, 100, 0),
(6162001, 10, 1470.566, 5301.831, 176.12379, 0, 1, 0, 0, 100, 0),
(6162001, 11, 1471.052, 5292.643, 179.70631, 0, 1, 0, 0, 100, 0),
(6162001, 12, 1483.235, 5286.341, 179.77177, 0, 1, 0, 0, 100, 0),
(6162001, 13, 1493.571, 5287.627, 184.71986, 0, 1, 0, 0, 100, 0);

DELETE FROM npc_spellclick_spells WHERE npc_entry = 61817; -- Tar Keg
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, cast_flags) VALUES
(61817, 123032, 3); -- player casts on self

DELETE FROM spell_linked_spell WHERE spell_trigger IN(120270, 122522, 120473, 123039);
INSERT INTO spell_linked_spell (spell_trigger, spell_effect, type, comment) VALUES
(120270, -120270, 2, 'Drain Barrel - Trigger Slow effect'),
(120473, 120270, 2, 'Drain Barrel - Trigger Slow effect'),
(123039, -123032, 0, 'Throw Keg - Remove override aura'),
(123039, -123035, 0, 'Throw Keg - Remove override master aura');

DELETE FROM waypoint_spline_data WHERE c_entry = 61699;
INSERT INTO waypoint_spline_data (c_entry, path_id, wp_id, position_x, position_y, position_z) VALUES
(61699, 1, 1, 1648, 5398.483, 158.9442),
(61699, 1, 2, 1630.078, 5402.018, 163.3863),
(61699, 1, 3, 1574.807, 5394.819, 173.6126),
(61699, 1, 4, 1548.351, 5376.471, 192.1736),
(61699, 1, 5, 1529.559, 5346.958, 194.6447),
(61699, 1, 6, 1527.813, 5316.797, 189.698),

(61699, 2, 1, 1529.571, 5315.422, 190.5054),
(61699, 2, 2, 1530.288, 5311.683, 195.0026),
(61699, 2, 3, 1534.28, 5305.519, 200.1916),
(61699, 2, 4, 1545.368, 5298.518, 204.197),
(61699, 2, 5, 1557.868, 5291.63, 207.0067),
(61699, 2, 6, 1585.382, 5277.699, 210.4706),
(61699, 2, 7, 1611.844, 5282.317, 205.5108),
(61699, 2, 8, 1622.958, 5288.12, 200.6926),
(61699, 2, 9, 1628.595, 5301.054, 192.2618),
(61699, 2, 10, 1631.007, 5318.358, 184.9743),
(61699, 2, 11, 1635.658, 5336.343, 178.8382),
(61699, 2, 12, 1639.063, 5356.228, 170.853),
(61699, 2, 13, 1655.72, 5385.494, 158.4938),
(61699, 2, 14, 1654.681, 5396.618, 153.9244);

-- WIP ONLY
UPDATE creature_template SEt modelid2 = 41224 WHERE entry = 62684; -- make barrel target visible
-- WIP ONLY END


DELETE FROM creature_text WHERE entry IN (61634, 61620);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
-- YANG IRONCLAW
-- Meeting our backup
(61620, 0, 0, 'Thanks for the save, but we''re still stuck in the middle of the entire mantid army.', 12, 0, 100, 11, 0, 31505, 'Yang Ironclaw - SAY_INTRO_1'),
(61620, 1, 0, 'Look out there. Too many for us to take head on.', 12, 0, 100, 25, 0, 31506, 'Yang Ironclaw - SAY_INTRO_2'),
(61620, 2, 0, 'Hmmm... I have a crazy idea that just might work, but we''ll need your help heroes!', 12, 0, 100, 0, 0, 31507, 'Yang Ironclaw - SAY_INTRO_3'),
(61620, 3, 0, 'Let''s give these mantid a taste of their own medicine!', 12, 0, 100, 0, 0, 31508, 'Yang Ironclaw - SAY_INTRO_4'),
-- Intro
(61620, 4, 0, 'Li and Lo, get the sap into position!', 12, 0, 100, 0, 0, 31509, 'Yang Ironclaw - SAY_AGGRO_1'),
(61620, 5, 0, 'Let''s get this party started, shall we?', 12, 0, 100, 0, 0, 31510, 'Yang Ironclaw - SAY_AGGRO_2'),
(61620, 6, 0, 'Bring it, uglies!', 14, 0, 100, 5, 0, 31513, 'Yang Ironclaw - SAY_AGGRO_3'),
(61620, 7, 0, 'We''ll squish you like bugs!', 14, 0, 100, 5, 0, 31514, 'Yang Ironclaw - SAY_AGGRO_4'),
(61620, 8, 0, 'We''ve got your sap -- come and get it!', 14, 0, 100, 5, 0, 31515, 'Yang Ironclaw - SAY_AGGRO_5'),
-- Swarmer (wave 1)
(61620, 9, 0, 'A wave of |cFF00dc29Sik''thik Swarmers|r joins the battle.', 41, 0, 100, 0, 0, 0, 'Yang Ironclaw - EMOTE_WAVE_ONE'),
(61620, 10, 0, 'Swarmers are coming up the ramp -- use the sap to slow them down!', 14, 0, 100, 0, 0, 31511, 'Yang Ironclaw - SAY_WAVE_ONE'),
-- Demolisher (wave 2)
(61620, 11, 0, 'A wave of |cFFB600B8Sik''thik Demolishers|r joins the battle.', 41, 0, 100, 0, 0, 0, 'Yang Ironclaw - EMOTE_WAVE_TWO'),
(61620, 12, 0, 'Demolishers are carrying explosives! Any direct hit will blow them up!', 14, 0, 100, 0, 0, 31504, 'Yang Ironclaw - SAY_WAVE_TWO'),
-- Warrior (wave 3)
(61620, 13, 0, 'A wave of |cFF00dc29Sik''thik Swarmers|r and a |cFF815d18Sik''thik Warrior|r joins the battle.', 41, 0, 100, 0, 0, 0, 'Yang Ironclaw - EMOTE_WAVE_THREE'),
(61620, 14, 0, 'Warrior coming in!  Focus your fire!', 14, 0, 100, 0, 0, 31512, 'Yang Ironclaw - SAY_WAVE_THREE'),
-- All In (wave 4)
(61620, 15, 0, 'A wave of |cFFB600B8Sik''thik Demolishers|r and a |cFF815d18Sik''thik Warrior|r joins the battle.', 41, 0, 100, 0, 0, 0, 'Yang Ironclaw - EMOTE_WAVE_FOUR'),
-- Bombard
(61620, 16, 0, '|TInterfaceIconsinv_misc_blackironbomb.blp:20|t The |cFFdd7400Sik''thik Amberwing|r moves into position to |cFFFF0000|Hspell:120559|h[Bombard]|h|r the platform!', 41, 0, 100, 0, 0, 0, 'Yang Ironclaw - EMOTE_BOMBARD'),
(61620, 17, 0, 'The Amberwing is flying in, watch out!', 14, 0, 100, 0, 0, 31503, 'Yang Ironclaw - SAY_AMBERWING'),
-- Outro
(61620, 18, 0, 'Well, that was fun, wasn''t it?', 12, 0, 100, 5, 0, 31497, 'Yang Ironclaw - SAY_OUTRO_1'),
(61620, 19, 0, 'Li and Lo, go look after our friends down below.', 12, 0, 100, 0, 0, 31498, 'Yang Ironclaw - SAY_OUTRO_2'),
(61620, 20, 0, 'Ah, this gate is locked, but I think I have something that''ll open it.', 12, 0, 100, 0, 0, 31499, 'Yang Ironclaw - SAY_GATE_1'),
(61620, 21, 0, 'Let me see here... thirty second fuse...', 12, 0, 100, 0, 0, 31500, 'Yang Ironclaw - SAY_GATE_2'),
(61620, 22, 0, 'Whoops, did I say thirty? I meant three.', 12, 0, 100, 0, 0, 31501, 'Yang Ironclaw - SAY_GATE_3'),
(61620, 23, 0, 'Go, hurry! You must stop the siege!', 12, 0, 100, 0, 0, 31502, 'Yang Ironclaw - SAY_GATE_4'),
-- VOJAK
(61634, 0, 0, 'Fools! Attacking the might of the mantid head on?  Your deaths will be swift.', 14, 0, 100, 0, 0, 30264, 'Commander Vo''jak - SAY_AGGRO'),
(61634, 1, 0, 'Swarmers, attack!  Tear the flesh from their bones!', 14, 0, 100, 0, 0, 30265, 'Commander Vo''jak - SAY_WAVE_ONE'),
(61634, 2, 0, 'Demolishers, get in there!  Leave nothing but a pile of ash!', 14, 0, 100, 0, 0, 30266, 'Commander Vo''jak - SAY_WAVE_TWO'),
(61634, 3, 0, 'Warriors, trample these weaklings!  Crush them!', 14, 0, 100, 0, 0, 30267, 'Commander Vo''jak - SAY_WAVE_THREE'),
(61634, 4, 0, 'Everyone! Send everything! Slaughter these cowards, they are making us look like fools!', 14, 0, 100, 0, 0, 30268, 'Commander Vo''jak - SAY_WAVE_FOUR'),
(61634, 5, 0, 'Where... where is it? Worthless, useless... damn you!', 14, 0, 100, 0, 0, 30272, 'Commander Vo''jak - SAY_AIR_SUPPORT'),
(61634, 6, 0, 'Pah! Those who failed deserved to die; you have merely culled the weak!', 14, 0, 100, 0, 0, 30262, 'Commander Vo''jak - SAY_ENGAGE_1'),
(61634, 7, 0, 'I must finish this myself, then. So be it!', 14, 0, 100, 0, 0, 30263, 'Commander Vo''jak - SAY_ENGAGE_2'),
(61634, 8, 0, 'Carpet bomb the platform! Send in the Amberwing!', 14, 0, 100, 0, 0, 30269, 'Commander Vo''jak - SAY_AMBERWING'),
(61634, 8, 1, 'They are holding us off, bring in the air support!', 14, 0, 100, 0, 0, 30270, 'Commander Vo''jak - SAY_AMBERWING'),
(61634, 8, 2, 'Amberwing, get in there! Lay siege to the holdouts!', 14, 0, 100, 0, 0, 30271, 'Commander Vo''jak - SAY_AMBERWING'),
(61634, 9, 0, 'It was... a trap...', 14, 0, 100, 0, 0, 30273, 'Commander Vo''jak - SAY_DEATH'),
(61634, 10, 0, 'Too easy!', 14, 0, 100, 0, 0, 30274, 'Commander Vo''jak - SAY_SLAY'),
(61634, 10, 1, 'Were you even trying?!', 14, 0, 100, 0, 0, 30275, 'Commander Vo''jak - SAY_SLAY'),
(61634, 10, 2, 'Haha, you die so easily!', 14, 0, 100, 0, 0, 30276, 'Commander Vo''jak - SAY_SLAY');

/*
*******************************
***** GENERAL PA'VALAK ********
*******************************
*/

UPDATE creature_template SET ScriptName = 'boss_general_pavalak' WHERE entry = 61485;
UPDATE creature_template SET minlevel = 93, maxlevel = 93, modelid1 = 38796, ScriptName = 'npc_pavalak_siege_explosive' WHERE entry = 61452;
UPDATE creature_template SET InhabitType = 4, ScriptName = 'npc_pavalak_amber_sapper' WHERE entry = 61484;
UPDATE creature_template SET flags_extra = 128, ScriptName = 'npc_pavalak_reinforcements_summoner' WHERE entry = 61483;
UPDATE creature_template SET flags_extra = 128 WHERE entry = 63720;

DELETE FROM creature_template_aura WHERE entry IN (63720, 61452, 61483);
INSERT INTO creature_template_aura (entry, aura) VALUES
(63720, 124288), -- Blade Rush Stalker - Blade rush visual
(61452, 119380), -- Siege Explosive - Visual
(61483, 119781); -- Reinforcements Summoner - Summon periodic

DELETE FROM npc_spellclick_spells WHERE npc_entry = 61452; -- siege Explosive
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, cast_flags) VALUES
(61452, 119388, 3); -- Siege Explosive

DELETE FROM spell_script_names WHERE spell_id IN (119476, 119512);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(119476, 'spell_general_pavalak_bulwark'),
(119512, 'spell_pavalak_bombardment');

DELETE FROM spell_linked_spell WHERE spell_trigger IN(119393, 119476);
INSERT INTO spell_linked_spell (spell_trigger, spell_effect, type, comment) VALUES
(119393, -119388, 0, 'Bulwark - trigger Bombardment Effect'),
(119476, 119512, 1, 'Bulwark - trigger Bombardment Effect'),
(119476, 119798, 2, 'Bulwark - trigger Bombardment');

DELETE FROM creature WHERE id IN (61483, 61701, 61670, 63106); -- reinforcements summoner

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (124290, 124283, 124291, 119703);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 124290, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Blade Rush Dmg - Target players'),
(13, 1, 124283, 0, 0, 31, 0, 3, 63720, 0, 0, 0, 0, '', 'Blade Rush - Target Stalker'),
(13, 1, 124291, 0, 0, 31, 0, 3, 63720, 0, 0, 0, 0, '', 'Blade Rush triggered - target Pavalak'),
(13, 3, 119703, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Detonate - Target players only');


DELETE FROM creature_text WHERE entry IN (61485);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(61485, 0, 0, 'Niuzao''s forces attack from the rear!', 14, 0, 100, 0, 0, 30279, 'Geleral Pavalak - SAY_INTRO'),
(61485, 1, 0, 'The temple will fall! You cannot stop my forces!', 14, 0, 100, 0, 0, 30277, 'Geleral Pavalak - SAY_AGGRO'),
(61485, 2, 0, 'My army will crush you!', 14, 0, 100, 0, 0, 30278, 'Geleral Pavalak - SAY_BULWARK'),
(61485, 2, 1, 'Stop them! Mantid attack!', 14, 0, 100, 0, 0, 30280, 'Geleral Pavalak - SAY_BULWARK'),
(61485, 2, 2, 'Put down your weapons or die!', 14, 0, 100, 0, 0, 30283, 'Geleral Pavalak - SAY_BULWARK'),
(61485, 3, 0, 'The empress demands it!', 14, 0, 100, 0, 0, 30285, 'Geleral Pavalak - SAY_SLAY'),
(61485, 3, 1, 'The forces of Niuzao are weak!', 14, 0, 100, 0, 0, 30286, 'Geleral Pavalak - SAY_SLAY'),
(61485, 4, 0, 'I have failed you, empress...', 14, 0, 100, 0, 0, 30284, 'Geleral Pavalak - SAY_'),
(61485, 5, 0, 'General Pa''valak calls for Reinforcements!', 41, 0, 100, 0, 0, 0, 'Geleral Pavalak - EMOTE_BULWARK');

/*
*******************************
*** WING LEADER NER'ONOK ******
*******************************
*/
UPDATE creature_template SET mechanic_immune_mask = mechanic_immune_mask &~ 0x2000000, ScriptName = 'boss_wing_leader_neronok' WHERE entry = 62205;


DELETE FROM creature_template_aura WHERE entry IN (62205);
INSERT INTO creature_template_aura (entry, aura) VALUES
(62205, 126303); -- Neronok - Mantid Wings

DELETE FROM spell_target_position WHERE id IN (125318, 121282, 121284);
INSERT INTO spell_target_position (id, effIndex, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(125318, 0, 1011, 1906.24, 5161.08, 131.235, 0),
(121282, 1, 1011, 1841.55, 5220.97, 131.17, 2.39632),
(121284, 1, 1011, 1841.55, 5220.97, 131.17, 5.53791);

DELETE FROM spell_script_names WHERE spell_id In (121282, 121447);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(121447, 'spell_quick_dry_resin'),
(121282, 'spell_neronok_gusting_winds');


DELETE FROM spell_linked_spell WHERE spell_trigger IN(121448, -121447);
INSERT INTO spell_linked_spell (spell_trigger, spell_effect, type, comment) VALUES
(-121447, -122063, 1, 'Quick Dry Resin - Remove indicator');
-- (121448, 121116, 2, 'Quick Dry Resin - Stun');

DELETE FROM creature_text WHERE entry IN (62205);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(62205, 0, 0, 'You may have come this far. You may have carved a path through my army, but I... will kill you, and I will build the bridge.', 14, 0, 100, 0, 0, 30359, 'Wing Leader Neronok - SAY_AGGRO'),
(62205, 1, 0, 'I will do what Pa''valak could not!', 14, 0, 100, 0, 0, 30360, 'Wing Leader Neronok - SAY_FLIGHT'),
(62205, 2, 0, 'Get back to work! I want this bridge finished by first light!', 14, 0, 100, 0, 0, 30363, 'Wing Leader Neronok - SAY_WIPE'),
(62205, 3, 0, 'The... bridge...', 14, 0, 100, 0, 0, 30361, 'Wing Leader Neronok - SAY_DEATH'),
(62205, 4, 0, 'Out of my way.', 14, 0, 100, 0, 0, 30362, 'Wing Leader Neronok - SAY_SLAY'),
(62205, 5, 0, '%s lifts off and flies to the other end of the bridge!', 41, 0, 100, 0, 0, 0, 'Wing Leader Neronok - EMOTE_WINDS');
/*
*******************************
***** GENERAL / MISC **********
*******************************
*/


-- GAMEOBJECTS 

-- Gameobject template updates

UPDATE `gameobject_template` SET `faction`=114, `flags`=32 WHERE `entry`=213935; -- Mantid Cage
UPDATE `gameobject_template` SET `faction`=1375 WHERE `entry`=214548; -- Wind Wall
UPDATE `gameobject_template` SET `faction`=35 WHERE `entry`=214513; -- Instance Portal (Party + Heroic + Challenge)
UPDATE `gameobject_template` SET `flags`=48 WHERE `entry`=213174; -- Hardened Resin
UPDATE `gameobject_template` SET `flags`=48 WHERE `entry`=212921; -- Door
UPDATE `gameobject_template` SET `faction`=1375, `flags`=32 WHERE `entry`=212120; -- Mantid Siege Tank

-- Gameobject spawns

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+34;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 213935, 1011, 3, 1, 1583.483, 5437.167, 143.1189, 5.703949, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+1, 213935, 1011, 3, 1, 1756.479, 5200.947, 123.1955, 2.767587, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+2, 213935, 1011, 3, 1, 1675.59, 5374.961, 140.7971, 3.416165, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+3, 213174, 1011, 3, 1, 1528.8, 5246.287, 188.2148, 1.539751, 0, 0, 0.9890159, -0.1478094, 86400, 255, 1), -- Hardened Resin (Area: Hollowed Out Tree)
(@OGUID+4, 213935, 1011, 3, 1, 1465.009, 5387.101, 139.4203, 1.000308, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+5, 213935, 1011, 3, 1, 1681.611, 5280.933, 123.9144, 1.14108, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+6, 213935, 1011, 3, 1, 1668.681, 5228.431, 123.6285, 1.251256, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+7, 213935, 1011, 3, 1, 1531.226, 5442.71, 144.3723, 5.703949, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+8, 210097, 1011, 3, 1, 1551.637, 5360.46, 161.1658, 4.758403, 0, 0, 0, 1, 86400, 255, 1), -- Invisible Fire Wall - CoT Well of Eternity (Area: Hollowed Out Tree)
(@OGUID+9, 213935, 1011, 3, 1, 1673.993, 5203.558, 123.4393, 2.355199, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+10, 214513, 1011, 3, 1, 1447.434, 5093.14, 144.047, 0.7117478, 0, 0, 0, 1, 86400, 255, 1), -- Instance Portal (Party + Heroic + Challenge) (Area: Hollowed Out Tree)
(@OGUID+11, 213935, 1011, 3, 1, 1590.988, 5378.098, 140.005, 3.106543, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+12, 213935, 1011, 3, 1, 1765.839, 5306.599, 125.1556, 5.065248, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+13, 213935, 1011, 3, 1, 1782.691, 5239.21, 123.841, 3.820127, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+14, 212921, 1011, 3, 1, 1624.56, 5404.088, 139.6353, 3.029754, 0, 0, 0.9890159, -0.1478094, 86400, 255, 1), -- Door (Area: Hollowed Out Tree)
(@OGUID+15, 213935, 1011, 3, 1, 1734.337, 5151.901, 125.9915, 3.10351, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+16, 213935, 1011, 3, 1, 1828.345, 5361.768, 143.4061, 5.842029, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+17, 213935, 1011, 3, 1, 1771.665, 5409.702, 143.434, 5.44748, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+18, 213935, 1011, 3, 1, 1806.845, 5376.136, 143.5419, 4.587243, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+19, 213935, 1011, 3, 1, 1879.842, 5389.659, 141.5332, 5.030997, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Cage (Area: Hollowed Out Tree)
(@OGUID+20, 209349, 1011, 3, 1, 1584.507, 5375.933, 140.3052, 3.783303, 0, 0, 0, 1, 86400, 255, 1), -- Green Tea Leaf (Area: Rear Staging Area)
(@OGUID+21, 212120, 1011, 3, 1, 1799.483, 5404.793, 144.0797, 4.348457, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Siege Tank (Area: Rear Staging Area)
(@OGUID+22, 212120, 1011, 3, 1, 1789.002, 5400.736, 143.1999, 4.337808, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Siege Tank (Area: Rear Staging Area)
(@OGUID+23, 213195, 1011, 3, 1, 1747.13, 5156.974, 127.2678, 5.926991, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Catapult (Area: Rear Staging Area)
(@OGUID+24, 212120, 1011, 3, 1, 1785.257, 5412.567, 144.1459, 4.544066, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Siege Tank (Area: Rear Staging Area)
(@OGUID+25, 213195, 1011, 3, 1, 1773.432, 5199.183, 123.1181, 5.685188, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Catapult (Area: Rear Staging Area)
(@OGUID+26, 212120, 1011, 3, 1, 1790.307, 5287.202, 124.7136, 5.277507, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Siege Tank (Area: Rear Staging Area)
(@OGUID+27, 212120, 1011, 3, 1, 1776.754, 5295.937, 123.7456, 5.277507, 0, 0, 0, 1, 86400, 255, 1), -- Mantid Siege Tank (Area: Rear Staging Area)
(@OGUID+28, 209312, 1011, 3, 1, 1518.177, 5440.594, 145.7943, 0, 0, 0, 0, 1, 86400, 255, 1), -- Kyparite Deposit (Area: Rear Staging Area)
(@OGUID+29, 209349, 1011, 3, 1, 1818.156, 5378.471, 146.8779, 3.783303, 0, 0, 0, 1, 86400, 255, 1), -- Green Tea Leaf (Area: Forward Assault Camp)
(@OGUID+30, 213251 , 1011, 3, 1, 1797.872, 5275.665, 123.769, 5.542965, 0, 0, 0, 1, 86400, 255, 1), -- Tiger Temple Invisible Wall (Area: Forward Assault Camp)
(@OGUID+31, 214548, 1011, 3, 1, 1790.667, 5266.955, 121.4965, 2.394133, 0, 0, 0, 1, 86400, 255, 1), -- Wind Wall (Area: Forward Assault Camp)
(@OGUID+32, 213251, 1011, 3, 1, 1785.111, 5262.324, 121.7521, 5.511616, 0, 0, 0, 1, 86400, 255, 1), -- Tiger Temple Invisible Wall (Area: Forward Assault Camp)
(@OGUID+33, 214838, 1011, 3, 1, 1896.844, 5174.136, 129.1, 0.002508164, 0, 0, 0, 1, 86400, 255, 1), -- Ner'onok Extra Collision (Area: Forward Assault Camp)
(@OGUID+34, 214838, 1011, 3, 1, 1891.465, 5168.78, 129.1, 4.820331, 0, 0, 0, 1, 86400, 255, 1); -- Ner'onok Extra Collision (Area: Forward Assault Camp)

-- CREATURES

-- Equipment Sets

DELETE FROM `creature_equip_template` WHERE `entry` IN (61634, 64517, 62348, 67093, 61701, 62632, 61485, 63106, 61928, 61929, 61434, 61436);
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(61634, 84769, 84767, 0), -- Commander Vo'jak
(64517, 83020, 0, 0), -- Shado-Master Chum Kiu
(62348, 84767, 0, 0), -- Sik'thik Soldier
(67093, 85947, 0, 0), -- Sik'thik Battle-Mender
(61701, 85401, 0, 0), -- Sik'thik Warrior
(62632, 84767, 0, 0), -- Sik'thik Engineer
(61485, 85401, 0, 0), -- General Pa'valak
(63106, 85399, 0, 0), -- Sik'thik Swarmer
(61928, 85401, 0, 0), -- Sik'thik Guardian
(61929, 85947, 0, 0), -- Sik'thik Amber-Weaver
(61434, 85576, 0, 0), -- Sik'thik Vanguard
(61436, 85399, 85399, 0); -- Sik'thik Bladedancer

UPDATE `creature_template` SET `equipment_id` = `entry` WHERE `entry` IN (61634, 64517, 62348, 67093, 61701, 62632, 61485, 63106, 61928, 61929, 61434, 61436);

-- Auras

DELETE FROM `creature_template_aura` WHERE `entry` IN (61964, 62091, 64517, 61613, 61670, 66699, 61634);
INSERT INTO `creature_template_aura` (`entry`, `aura`) VALUES
(61964, 120586), -- Sap Spray - Sap Spray
-- (61579, 120473), -- Sap puddle - Sap Spray base
-- (61965, 120591), -- Sap Puddle - Sap Puddle
(62091, 126320), -- Sik'thik Flyer - Mantid Wings
(62091, 132441), -- Sik'thik Flyer - Mantid Wings
(64517, 86603), -- Shado-Master Chum Kiu - Stealth
(61613, 131628), -- Sap Puddle - Cosmetic Shield
(61613, 119939), -- Sap Puddle - Sap Puddle
-- (62794, 122347), -- Lo Chu - Barrel Assignment
-- (61812, 122347), -- Li Chu - Barrel Assignment
-- (61817, 123218), -- Mantid Tar Keg - Mantid Barrel Inactive
(61670, 121986), -- Sik'thik Demolisher - Carrying Explosives
(66699, 131049), -- Generic Invisible Stalker Controller NonImmune - IH - Gongable
-- (63106, 120270), -- Sik'thik Swarmer - Slowed
(61634, 120757); -- Commander Vo'jak - Frantic Fighter
-- (64520, 86603), -- Shado-Pan Prisoner - Stealth
-- (62348, 124067), -- Sik'thik Soldier - Catapult Channel
-- (61483, 119781), -- Reinforcements Summoner - Summon Mantid Soldier
-- (62205, 126303); -- Wing Leader Ner'onok - Mantid Wings

-- Model Corrections

UPDATE `creature_model_info` SET `bounding_radius`=1.25, `combat_reach`=1.25, `gender`=0 WHERE `modelid`=45766; -- Sik'thik Battle-Mender
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=42665; -- Mantid Tar Keg
UPDATE `creature_model_info` SET `bounding_radius`=1.5, `gender`=0 WHERE `modelid`=43118; -- Sik'thik Bladedancer
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=2, `gender`=0 WHERE `modelid`=43119; -- Sik'thik Vanguard
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=4, `gender`=0 WHERE `modelid`=43120; -- General Pa'valak
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=1, `gender`=0 WHERE `modelid`=43121; -- Sik'thik Soldier
UPDATE `creature_model_info` SET `bounding_radius`=0.347222, `gender`=0 WHERE `modelid`=44773; -- Shado-Pan Prisoner
UPDATE `creature_model_info` SET `bounding_radius`=0.3645831, `combat_reach`=1.575, `gender`=0 WHERE `modelid`=44774; -- Shado-Pan Prisoner 2
UPDATE `creature_model_info` SET `bounding_radius`=0.3819442, `combat_reach`=1.65, `gender`=0 WHERE `modelid`=44775; -- Shado-Pan Prisoner 3
UPDATE `creature_model_info` SET `bounding_radius`=0.347222, `gender`=1 WHERE `modelid`=44776; -- Shado-Pan Prisoner 4
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE `modelid`=43149; -- Sik'thik Builder
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=43150; -- Sik'thik Engineer
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=2 WHERE `modelid`=43151; -- Wing Leader Ner'onok

-- Creature template Corrections

UPDATE creature_template SET mindmg = 11839, maxdmg = 17339, unit_flags = 32768, unit_flags2 = 2048, lootId = entry, equipment_id = 62348 WHERE entry = 61448; -- Sik'Thik Soldier
UPDATE creature_template SET mindmg = 11321, maxdmg = 16657, dmg_multiplier = 3, attackpower = 48962 WHERE entry IN (61436, 61434); -- Sik'Thik Bladedancer + Vanguard
UPDATE creature_template SET mindmg = 12684, maxdmg = 19052, dmg_multiplier = 3, attackpower = 55538 WHERE entry IN (61485, 61634); -- Vo'Jak + Pa'Valak
UPDATE `creature_template` SET `minlevel`=89, `maxlevel`=89, `faction_A`=2137, `faction_H`=2137, `speed_run`=0.9920629, `VehicleId`=2087 WHERE `entry`=59836; -- Panda Seat
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=14, `faction_H`=14, `speed_run`=1.428571 WHERE `entry`=62348; -- Sik'thik Soldier
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=14, `faction_H`=14, `speed_run`=1.428571 WHERE `entry`=61448; -- Sik'thik Soldier
UPDATE `creature_template` SET `faction_A`=2028, `faction_H`=2028, `speed_run`=1 WHERE `entry`=59304; -- Bone Pile
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_run`=1.428571 WHERE `entry`=62632; -- Sik'thik Engineer
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_run`=1.428571 WHERE `entry`=62633; -- Sik'thik Builder
UPDATE `creature_template` SET `unit_class`=8, `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16 WHERE `entry`=58757; -- Scholomance Acolyte
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=6, `speed_run`=2.142857, `HoverHeight`=6 WHERE `entry`=66240; -- Antonidas' Self Help Guide to Standing in Fire
UPDATE `creature_template` SET `minlevel`=92, `maxlevel`=92, `faction_A`=14, `faction_H`=14, `speed_walk`=2, `speed_run`=1.714286 WHERE `entry`=59316; -- Soulflame
UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `faction_A`=16, `faction_H`=16 WHERE `entry`=56824; -- Boss 2 South Stalker
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=91, `maxlevel`=91, `faction_A`=14, `faction_H`=14, `speed_run`=1.428571 WHERE `entry`=59613; -- Professor Slate
UPDATE `creature_template` SET `unit_class`=8, `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_run`=1.428571 WHERE `entry`=67093; -- Sik'thik Battle-Mender
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16 WHERE `entry`=59614; -- Bored Student
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=92, `maxlevel`=92, `faction_A`=21, `faction_H`=21 WHERE `entry`=59080; -- Darkmaster Gandling
UPDATE `creature_template` SET `minlevel`=91, `maxlevel`=91, `faction_A`=16, `faction_H`=16, `speed_walk`=1.2, `speed_run`=0.4285714, `BaseAttackTime`=4000, `VehicleId`=2098 WHERE `entry`=59359; -- Flesh Horror
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16 WHERE `entry`=59360; -- Meat Graft
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=21, `faction_H`=21, `BaseAttackTime`=1905 WHERE `entry`=59368; -- Krastinovian Carver
UPDATE `creature_template` SET `minlevel`=90 WHERE `entry`=61311; -- Niuzao Sentinel
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=6, `speed_run`=2.142857 WHERE `entry`=59929; -- Ice Steps
UPDATE `creature_template` SET `minlevel`=91, `maxlevel`=91, `speed_run`=1 WHERE `entry`=59375; -- Cosmetic Meat Pile
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90 WHERE `entry`=59099; -- Fresh Test Subject
UPDATE `creature_template` SET `minlevel`=91, `maxlevel`=91, `faction_A`=16, `faction_H`=16 WHERE `entry`=58822; -- Risen Guard
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_run`=0.3571429 WHERE `entry`=59100; -- Expired Test Subject
UPDATE `creature_template` SET `unit_class`=8, `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16 WHERE `entry`=58823; -- Scholomance Neophyte
UPDATE `creature_template` SET `faction_A`=2102, `faction_H`=2102 WHERE `entry`=56890; -- Krik'thik Infiltrator
UPDATE `creature_template` SET `minlevel`=92, `maxlevel`=92, `faction_A`=2137, `faction_H`=2137, `speed_run`=0.9920629 WHERE `entry`=56895; -- Weak Spot
UPDATE `creature_template` SET `faction_A`=2244, `faction_H`=2244 WHERE `entry`=60502; -- Pandaren Disciple
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=1771, `faction_H`=1771, `speed_run`=0.9920629, `VehicleId`=2093 WHERE `entry`=59954; -- Krik'thik Glider
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=1771, `faction_H`=1771, `speed_run`=0.9920629, `VehicleId`=2095 WHERE `entry`=59955; -- Krik'thik Glider
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=5.2, `speed_run`=1.857143 WHERE `entry`=62731; -- Ice Wall
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=14, `faction_H`=14, `speed_walk`=2.8, `speed_run`=2 WHERE `entry`=63565; -- Mantid Catapult
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16 WHERE `entry`=59980; -- Meat Graft
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16 WHERE `entry`=59982; -- Meat Graft
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=92, `maxlevel`=92, `faction_A`=14, `faction_H`=14, `VehicleId`=2024 WHERE `entry`=58875; -- Darkmaster Gandling
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=6, `speed_run`=2.142857, `HoverHeight`=6 WHERE `entry`=59707; -- The Anarchist Arcanist
UPDATE `creature_template` SET `minlevel`=92, `maxlevel`=92, `faction_A`=233, `faction_H`=233, `speed_run`=1.190476 WHERE `entry`=59153; -- Rattlegore
UPDATE `creature_template` SET `minlevel`=92, `maxlevel`=92, `faction_A`=16, `faction_H`=16, `speed_walk`=1.6, `speed_run`=1.714286 WHERE `entry`=62205; -- Wing Leader Ner'onok
UPDATE `creature_template` SET `minlevel`=91, `faction_A`=16, `faction_H`=16, `speed_walk`=1.2, `speed_run`=1.428571 WHERE `entry`=61928; -- Sik'thik Guardian
UPDATE `creature_template` SET `faction_A`=2482, `faction_H`=2482 WHERE `entry`=65537; -- Serpent's Spine Cannoneer
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90 WHERE `entry`=59167; -- Teleport Location
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=92, `maxlevel`=92, `faction_A`=233, `faction_H`=233 WHERE `entry`=59184; -- Jandice Barov
UPDATE `creature_template` SET `unit_class`=8, `minlevel`=92, `maxlevel`=92, `faction_A`=974, `faction_H`=974, `speed_walk`=2.8, `speed_run`=1.428571 WHERE `entry`=58633; -- Instructor Chillheart
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=6, `speed_run`=2.142857, `VehicleId`=2456 WHERE `entry`=58635; -- Antonidas' Self Help Guide to Standing in Fire
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16 WHERE `entry`=59467; -- Candlestick Mage
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=91, `maxlevel`=91, `faction_A`=2245, `faction_H`=2245 WHERE `entry`=59193; -- Boneweaver
UPDATE `creature_template` SET `speed_walk`=0.5, `speed_run`=0.4960314 WHERE `entry`=62795; -- Sik'thik Warden
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `speed_walk`=6, `speed_run`=2.142857 WHERE `entry`=58917; -- Book Spawn Target
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=92, `maxlevel`=92, `faction_A`=2036, `faction_H`=2036, `BaseAttackTime`=1500 WHERE `entry`=59200; -- Lilian Voss
UPDATE `creature_template` SET `speed_walk`=0.4 WHERE `entry`=59481; -- World Trigger
UPDATE `creature_template` SET `unit_class`=8, `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=2.8, `speed_run`=1.428571, `VehicleId`=2020 WHERE `entry`=58662; -- Instructor Chillheart's Phylactery Vehicle
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_run`=1.428571 WHERE `entry`=61434; -- Sik'thik Vanguard
UPDATE `creature_template` SET `unit_class`=8, `minlevel`=92, `maxlevel`=92, `faction_A`=974, `faction_H`=974, `speed_walk`=2.8, `speed_run`=1.428571 WHERE `entry`=58664; -- Instructor Chillheart's Phylactery
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=66421; -- Painted Stag
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_run`=1.428571 WHERE `entry`=61436; -- Sik'thik Bladedancer
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=92, `maxlevel`=92, `faction_A`=233, `faction_H`=233 WHERE `entry`=59220; -- Jandice Barov
UPDATE `creature_template` SET `minlevel`=89, `maxlevel`=89 WHERE `entry`=59778; -- Krik'thik Striker
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=233, `faction_H`=233, `speed_run`=0.4285714 WHERE `entry`=59501; -- Reanimated Corpse
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=1.2, `speed_run`=1 WHERE `entry`=59503; -- Brittle Skeleton
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=6, `speed_run`=2.142857, `HoverHeight`=6 WHERE `entry`=59227; -- Wander's Colossal Book of Shadow Puppets
UPDATE `creature_template` SET `minlevel`=90, `maxlevel`=90, `faction_A`=16, `faction_H`=16, `speed_walk`=6, `speed_run`=2.142857, `HoverHeight`=6 WHERE `entry`=59230; -- The Anarchist Arcanist
UPDATE `creature_template` SET `minlevel`=91, `maxlevel`=91, `faction_A`=1771, `faction_H`=1771, `speed_run`=1.714286, `BaseAttackTime`=1500, `VehicleId`=2303 WHERE `entry`=61177; -- Raigonn
UPDATE `creature_template` SET `minlevel`=89, `maxlevel`=89 WHERE `entry`=59794; -- Krik'thik Disruptor
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=66448; -- Veiled Basilisk
UPDATE `creature_template` SET `faction_A`=2482, `faction_H`=2482 WHERE `entry`=58146; -- Serpent's Spine Defender
UPDATE `creature_template` SET `minlevel`=89, `maxlevel`=90, `faction_A`=2482, `faction_H`=2482 WHERE `entry`=64520; -- Shado-Pan Prisoner
UPDATE `creature_template` SET `minlevel`=93, `maxlevel`=93, `faction_A`=16, `faction_H`=16, `speed_run`=1.428571 WHERE `entry`=61483; -- Reinforcements Summoner
UPDATE `creature_template` SET `minlevel`=92, `maxlevel`=92, `faction_A`=16, `faction_H`=16, `speed_walk`=1.6, `speed_run`=1.571429 WHERE `entry`=61485; -- General Pa'valak
UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `faction_A`=16, `faction_H`=16 WHERE `entry`=56502; -- Panda Archer Target Gate Stalker
UPDATE `creature_template` SET `unit_class`=2, `minlevel`=92, `maxlevel`=92, `BaseAttackTime`=1500 WHERE `entry`=58722; -- Lilian Voss

-- Creature Spawns

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+333;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 61629, 1011, 3, 1, 1541.785, 5132.401, 160.9948, 2.142226, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree)
(@CGUID+1, 61964, 1011, 3, 1, 1590.842, 5185.528, 199.5095, 3.574211, 86400, 0, 0), -- Sap Spray (Area: Hollowed Out Tree) (Auras: 120586 - Sap Spray)
(@CGUID+2, 61965, 1011, 3, 1, 1583.597, 5180.966, 189.9551, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+3, 62091, 1011, 3, 1, 1657.585, 5129.724, 267.6022, 3.536149, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+4, 61929, 1011, 3, 1, 1580.627, 5154.274, 190.3467, 3.427818, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree) (Auras: )
(@CGUID+5, 61910, 1011, 3, 1, 1576.402, 5193.693, 165.293, 5.095363, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+6, 61910, 1011, 3, 1, 1582.012, 5194.777, 166.0599, 2.064949, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+7, 61928, 1011, 3, 1, 1577.3, 5157.663, 190.851, 3.427818, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree) (Auras: )
(@CGUID+8, 61929, 1011, 3, 1, 1477.186, 5164.74, 190.3575, 0.08493939, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree)
(@CGUID+9, 61964, 1011, 3, 1, 1594.766, 5166.387, 172.3738, 3.283061, 86400, 0, 0), -- Sap Spray (Area: Hollowed Out Tree) (Auras: 120586 - Sap Spray)
(@CGUID+10, 61965, 1011, 3, 1, 1583.967, 5164.794, 164.4705, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+11, 61910, 1011, 3, 1, 1537.435, 5218.764, 189.4687, 5.645671, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+12, 62091, 1011, 3, 1, 1406.535, 5133.189, 237.4753, 1.93953, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+13, 61910, 1011, 3, 1, 1577.936, 5189.912, 164.347, 4.312555, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+14, 61967, 1011, 3, 1, 1470.747, 5176.208, 175.269, 6.242372, 86400, 0, 0), -- Resin Stalker (Area: Hollowed Out Tree) (Auras: )
(@CGUID+15, 61910, 1011, 3, 1, 1511.792, 5210.055, 162.9239, 5.605045, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+16, 62091, 1011, 3, 1, 1292.184, 5431.733, 300.6628, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+17, 61910, 1011, 3, 1, 1506.255, 5220.88, 165.4223, 2.950086, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+18, 61928, 1011, 3, 1, 1475.017, 5180.245, 165.9343, 3.062821, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree) (Auras: )
(@CGUID+19, 61910, 1011, 3, 1, 1583.375, 5184.591, 164.6805, 1.715442, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+20, 64517, 1011, 3, 1, 1480.415, 5117.146, 162.3875, 6.094553, 86400, 0, 0), -- Shado-Master Chum Kiu (Area: Hollowed Out Tree) (Auras: 86603 - Stealth)
(@CGUID+21, 61910, 1011, 3, 1, 1511.101, 5215.863, 164.2287, 5.196079, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+22, 61929, 1011, 3, 1, 1479.743, 5175.138, 167.4923, 3.083169, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree) (Auras: )
(@CGUID+23, 61928, 1011, 3, 1, 1475.384, 5171.843, 166.7396, 3.014761, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree) (Auras: )
(@CGUID+24, 62091, 1011, 3, 1, 1291.042, 5426.557, 300.6628, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+25, 61928, 1011, 3, 1, 1523.188, 5099.538, 167.5285, 3.715953, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree) (Auras: )
(@CGUID+26, 61967, 1011, 3, 1, 1567.613, 5157.995, 163.8649, 5.081972, 86400, 5, 1), -- Resin Stalker (Area: Hollowed Out Tree) (Auras: ) (possible waypoints or random movement)
(@CGUID+27, 61928, 1011, 3, 1, 1580.55, 5159.572, 163.5762, 3.449627, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree) (Auras: )
(@CGUID+28, 61929, 1011, 3, 1, 1578.385, 5152.376, 163.5289, 3.009625, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree) (Auras: )
(@CGUID+29, 61629, 1011, 3, 1, 1566.535, 5161.233, 163.4195, 3.313412, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree) (Auras: )
(@CGUID+30, 61910, 1011, 3, 1, 1538.557, 5227.184, 191.3179, 2.777005, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+31, 61965, 1011, 3, 1, 1565.486, 5199.29, 163.5688, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+32, 61964, 1011, 3, 1, 1557.613, 5195.345, 171.6966, 0.4105375, 86400, 0, 0), -- Sap Spray (Area: Hollowed Out Tree) (Auras: 120586 - Sap Spray)
(@CGUID+33, 61967, 1011, 3, 1, 1485.085, 5160.173, 188.7158, 1.637569, 86400, 0, 0), -- Resin Stalker (Area: Hollowed Out Tree) (Auras: )
(@CGUID+34, 61928, 1011, 3, 1, 1537.745, 5219.493, 165.1272, 0.9512784, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree)
(@CGUID+35, 61910, 1011, 3, 1, 1511.019, 5107.194, 189.311, 3.390801, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+36, 61910, 1011, 3, 1, 1580.753, 5184.203, 164.1129, 0.1874918, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+37, 61910, 1011, 3, 1, 1506.968, 5213.081, 163.6612, 1.326928, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+38, 61964, 1011, 3, 1, 1557.823, 5134.93, 198.0181, 4.964426, 86400, 0, 0), -- Sap Spray (Area: Hollowed Out Tree) (Auras: 120586 - Sap Spray)
(@CGUID+39, 61629, 1011, 3, 1, 1497.694, 5150.883, 161.6102, 0.1376801, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree)
(@CGUID+40, 61629, 1011, 3, 1, 1532.514, 5131.036, 161.5569, 1.780349, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree)
(@CGUID+41, 62091, 1011, 3, 1, 1652.451, 5121.956, 267.5221, 3.536149, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+42, 61965, 1011, 3, 1, 1560.189, 5125.899, 190.0589, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+43, 61910, 1011, 3, 1, 1508.33, 5112.922, 190.1414, 6.195593, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+44, 62091, 1011, 3, 1, 1654.139, 5126.962, 267.4041, 3.536149, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+45, 61910, 1011, 3, 1, 1537.672, 5225.24, 190.4103, 0.0148912, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+46, 61928, 1011, 3, 1, 1482.13, 5158.048, 189.7782, 0.1252213, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree)
(@CGUID+47, 61929, 1011, 3, 1, 1543.804, 5215.181, 164.5201, 1.523942, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree)
(@CGUID+48, 62091, 1011, 3, 1, 1287.898, 5423.46, 300.6628, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+49, 61910, 1011, 3, 1, 1585.51, 5193.44, 166.686, 2.142022, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+50, 61965, 1011, 3, 1, 1546.009, 5107.363, 165.2967, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+51, 61910, 1011, 3, 1, 1578.507, 5194.595, 165.7998, 3.998037, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+52, 61928, 1011, 3, 1, 1577.498, 5171.416, 190.7564, 3.733839, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree) (Auras: )
(@CGUID+53, 61910, 1011, 3, 1, 1509.819, 5110.651, 189.6304, 0.04830607, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+54, 61910, 1011, 3, 1, 1581.068, 5197.875, 167.3518, 2.306045, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+55, 61967, 1011, 3, 1, 1550.279, 5225.31, 170.7824, 1.588259, 86400, 5, 1), -- Resin Stalker (Area: Hollowed Out Tree) (Auras: ) (possible waypoints or random movement)
(@CGUID+56, 62091, 1011, 3, 1, 1265.012, 5425.224, 285.1802, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+57, 61629, 1011, 3, 1, 1563.635, 5176.804, 162.6476, 3.703456, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree)
(@CGUID+58, 61910, 1011, 3, 1, 1539.269, 5218.788, 189.4313, 3.666449, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+59, 61910, 1011, 3, 1, 1503.497, 5214.693, 165.0022, 0.8117864, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+60, 61910, 1011, 3, 1, 1586.823, 5186.526, 164.5241, 5.665604, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+61, 61910, 1011, 3, 1, 1542.312, 5223.708, 189.7088, 2.914401, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+62, 61910, 1011, 3, 1, 1517.316, 5211.196, 164.1759, 0.1004038, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+63, 62091, 1011, 3, 1, 1287.549, 5434.254, 300.6629, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+64, 61964, 1011, 3, 1, 1478.786, 5166.871, 174.2093, 3.637309, 86400, 0, 0), -- Sap Spray (Area: Hollowed Out Tree) (Auras: 120586 - Sap Spray)
(@CGUID+65, 61965, 1011, 3, 1, 1473.811, 5164.245, 168.5975, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+66, 61929, 1011, 3, 1, 1580.755, 5165.064, 190.1994, 3.253177, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree) (Auras: )
(@CGUID+67, 61929, 1011, 3, 1, 1517.326, 5104.866, 166.2057, 4.569722, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree) (Auras: )
(@CGUID+68, 61964, 1011, 3, 1, 1518.286, 5235.495, 175.7941, 4.684835, 86400, 0, 0), -- Sap Spray (Area: Hollowed Out Tree) (Auras: 120586 - Sap Spray)
(@CGUID+69, 61965, 1011, 3, 1, 1518.038, 5220.66, 165.6627, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+70, 62091, 1011, 3, 1, 1661.163, 5119.049, 266.7091, 3.536149, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+71, 61910, 1011, 3, 1, 1500.949, 5219.859, 166.3064, 2.681546, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+72, 62091, 1011, 3, 1, 1283.214, 5433.679, 300.6628, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+73, 61629, 1011, 3, 1, 1526.068, 5128.825, 164.7615, 1.541885, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree)
(@CGUID+74, 62091, 1011, 3, 1, 1268.151, 5428.321, 285.1802, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+75, 61929, 1011, 3, 1, 1557.085, 5223.059, 168.9098, 2.737649, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree)
(@CGUID+76, 61613, 1011, 3, 1, 1529.516, 5163.241, 159.5706, 0.1484158, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 131628 - Cosmetic Shield, 119939 - Sap Puddle)
(@CGUID+77, 61910, 1011, 3, 1, 1507.528, 5106.713, 189.2532, 2.795341, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+78, 61928, 1011, 3, 1, 1578.066, 5143.945, 163.5755, 2.261489, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree) (Auras: )
(@CGUID+79, 61965, 1011, 3, 1, 1558.306, 5207.479, 191.2494, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+80, 61910, 1011, 3, 1, 1531.994, 5224.419, 189.3918, 2.815315, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+81, 61910, 1011, 3, 1, 1504.246, 5206.777, 163.8606, 4.203589, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+82, 61629, 1011, 3, 1, 1496.66, 5176.999, 162.6893, 5.763525, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree) (Auras: )
(@CGUID+83, 61967, 1011, 3, 1, 1574.27, 5164.378, 189.0957, 4.376728, 86400, 5, 1), -- Resin Stalker (Area: Hollowed Out Tree) (Auras: ) (possible waypoints or random movement)
(@CGUID+84, 61928, 1011, 3, 1, 1548.868, 5217.926, 166.0724, 1.981884, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree)
(@CGUID+85, 62091, 1011, 3, 1, 1269.3, 5433.493, 285.1802, 0.5012538, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+86, 61910, 1011, 3, 1, 1581.427, 5189.427, 164.9745, 1.954792, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+87, 61964, 1011, 3, 1, 1550.123, 5199.423, 198.7832, 0.7684988, 86400, 0, 0), -- Sap Spray (Area: Hollowed Out Tree) (Auras: 120586 - Sap Spray)
(@CGUID+88, 61629, 1011, 3, 1, 1566.191, 5150.156, 163.3379, 2.850755, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree)
(@CGUID+89, 62091, 1011, 3, 1, 1656.781, 5118.94, 267.2306, 3.536149, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+90, 61929, 1011, 3, 1, 1583.227, 5150.394, 164.3747, 2.819652, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Hollowed Out Tree) (Auras: )
(@CGUID+91, 61629, 1011, 3, 1, 1550.901, 5194.542, 163.9263, 3.97958, 86400, 0, 0), -- Sappling Summon Dest (Area: Hollowed Out Tree)
(@CGUID+92, 61910, 1011, 3, 1, 1504.243, 5110.438, 188.4517, 5.370271, 86400, 0, 0), -- Resin Flake (Area: Hollowed Out Tree) (Auras: )
(@CGUID+93, 61928, 1011, 3, 1, 1482.774, 5170.92, 189.5723, 6.103102, 86400, 0, 0), -- Sik'thik Guardian (Area: Hollowed Out Tree)
(@CGUID+94, 61965, 1011, 3, 1, 1564.91, 5128.379, 163.8963, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Hollowed Out Tree) (Auras: 120591 - Sap Puddle)
(@CGUID+95, 61620, 1011, 3, 1, 1527.068, 5299.913, 184.732, 4.629167, 86400, 0, 0), -- Yang Ironclaw (Area: Hollowed Out Tree)
(@CGUID+96, 62091, 1011, 3, 1, 1267.252, 5387.328, 262.5672, 0.07127205, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+97, 62091, 1011, 3, 1, 1279.24, 5378.591, 261.8154, 6.232801, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+98, 62091, 1011, 3, 1, 1270.046, 5391.732, 262.5672, 0.1346823, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+99, 62794, 1011, 3, 1, 1530.561, 5301.554, 184.732, 4.306245, 86400, 0, 0), -- Lo Chu (Area: Hollowed Out Tree) (Auras: 122347 - Barrel Assignment)
(@CGUID+100, 62091, 1011, 3, 1, 1269.657, 5379.705, 262.5657, 0.08976541, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+101, 62795, 1011, 3, 1, 1526.672, 5303.604, 184.732, 4.762897, 86400, 0, 0), -- Sik'thik Warden (Area: Hollowed Out Tree) (Auras: )
(@CGUID+102, 61812, 1011, 3, 1, 1523.502, 5301.018, 184.732, 5.100008, 86400, 0, 0), -- Li Chu (Area: Hollowed Out Tree) (Auras: 122347 - Barrel Assignment)
(@CGUID+103, 62091, 1011, 3, 1, 1276.071, 5395.638, 262.568, 0.133399, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+104, 62091, 1011, 3, 1, 1858.046, 5209.193, 225.9135, 5.418137, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+105, 62091, 1011, 3, 1, 1724.696, 5035.572, 239.3066, 2.940485, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+106, 62091, 1011, 3, 1, 1822.981, 4921.66, 205.8196, 3.216643, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+107, 62091, 1011, 3, 1, 1832.428, 4932.162, 205.8196, 3.228093, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+108, 62091, 1011, 3, 1, 1829.125, 4939.059, 205.8205, 3.224343, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+109, 62091, 1011, 3, 1, 1829.879, 4924.955, 205.8196, 3.22484, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+110, 62091, 1011, 3, 1, 1823.255, 4931.143, 204.7348, 3.187474, 86400, 5, 1), -- Sik'thik Flyer (Area: Hollowed Out Tree) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+111, 61817, 1011, 3, 1, 1545.939, 5284.752, 184.8529, 1.224235, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive) (possible waypoints or random movement)
-- (@CGUID+112, 61670, 1011, 3, 1, 1486.661, 5399.953, 142.1343, 5.106897, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
-- (@CGUID+113, 61670, 1011, 3, 1, 1522.108, 5394.429, 139.1991, 4.594025, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
-- (@CGUID+114, 61670, 1011, 3, 1, 1534.96, 5390.47, 139.256, 4.47834, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
-- (@CGUID+115, 63106, 1011, 3, 1, 1496.01, 5397.633, 140.1892, 5.038696, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+116, 61817, 1011, 3, 1, 1545.234, 5285.461, 184.8475, 0.9035403, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+117, 57478, 1011, 3, 1, 1488.946, 5298.888, 184.732, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+118, 61817, 1011, 3, 1, 1486.068, 5296.542, 184.732, 0.9035403, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+119, 61817, 1011, 3, 1, 1549.337, 5285.652, 184.8485, 1.840594, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive) (possible waypoints or random movement)
-- (@CGUID+120, 61670, 1011, 3, 1, 1517.696, 5406.799, 140.2151, 4.672641, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+121, 57478, 1011, 3, 1, 1548.208, 5287.304, 184.8364, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+122, 61817, 1011, 3, 1, 1488.127, 5295.745, 184.732, 1.338254, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+123, 61817, 1011, 3, 1, 1549.302, 5284.602, 184.8558, 1.839002, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive) (possible waypoints or random movement)
-- (@CGUID+124, 63106, 1011, 3, 1, 1518.575, 5386.583, 138.8989, 4.968798, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+125, 61817, 1011, 3, 1, 1488.03, 5296.766, 184.7319, 1.41797, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
-- (@CGUID+126, 61670, 1011, 3, 1, 1499.731, 5404.56, 141.805, 5.038696, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
-- (@CGUID+127, 61670, 1011, 3, 1, 1538.089, 5404.21, 139.4298, 4.436366, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+128, 61817, 1011, 3, 1, 1488.974, 5297.19, 184.732, 1.633882, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+129, 61817, 1011, 3, 1, 1550.3, 5286.034, 184.8464, 2.183713, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
-- (@CGUID+130, 61670, 1011, 3, 1, 1499.564, 5390.675, 139.0927, 5.081068, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+131, 61817, 1011, 3, 1, 1551.036, 5286.886, 184.8302, 2.637528, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+132, 66699, 1011, 3, 1, 1520.595, 5299.436, 184.732, 0, 86400, 0, 0), -- Generic Invisible Stalker Controller NonImmune - IH (Area: Hollowed Out Tree) (Auras: 131049 - Gongable)
(@CGUID+133, 61817, 1011, 3, 1, 1491.639, 5297.969, 184.732, 2.896305, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
-- (@CGUID+134, 63106, 1011, 3, 1, 1501.611, 5398.63, 139.6116, 4.947556, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
-- (@CGUID+135, 61670, 1011, 3, 1, 1490.201, 5388.306, 139.5014, 5.076171, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
-- (@CGUID+136, 63106, 1011, 3, 1, 1529.825, 5384.917, 139.9994, 4.539132, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+137, 61817, 1011, 3, 1, 1551.78, 5287.646, 184.8268, 2.586187, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+138, 61817, 1011, 3, 1, 1485.082, 5297.073, 184.732, 0.7451652, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+139, 61817, 1011, 3, 1, 1486.22, 5297.557, 184.732, 0.5643228, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+140, 61817, 1011, 3, 1, 1546.224, 5285.853, 184.849, 0.8928322, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
-- (@CGUID+141, 61670, 1011, 3, 1, 1517.418, 5394.661, 139.1885, 4.503658, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+142, 61817, 1011, 3, 1, 1489.109, 5296.089, 184.7319, 1.654358, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
-- (@CGUID+143, 63106, 1011, 3, 1, 1497.944, 5382.987, 139.5169, 5.081068, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
-- (@CGUID+144, 63106, 1011, 3, 1, 1526.403, 5400.53, 139.5637, 4.527507, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+145, 61817, 1011, 3, 1, 1490.168, 5296.729, 184.732, 1.840594, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+146, 61817, 1011, 3, 1, 1547.24, 5285.669, 184.8413, 1.41797, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
-- (@CGUID+147, 61670, 1011, 3, 1, 1504.146, 5404.806, 140.7919, 4.947556, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+148, 61817, 1011, 3, 1, 1548.307, 5284.96, 184.8413, 1.654358, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+149, 61817, 1011, 3, 1, 1493.016, 5296.44, 184.732, 2.79816, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+150, 61817, 1011, 3, 1, 1551.351, 5284.819, 184.8554, 2.79816, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive) (possible waypoints or random movement)
-- (@CGUID+151, 61670, 1011, 3, 1, 1495.177, 5403.714, 142.5123, 5.175195, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
-- (@CGUID+152, 61670, 1011, 3, 1, 1531.144, 5392.999, 139.1139, 4.569481, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
-- (@CGUID+153, 63106, 1011, 3, 1, 1490.227, 5395.728, 140.1251, 5.175195, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: 120270 - Slowed)
-- (@CGUID+154, 61670, 1011, 3, 1, 1526.45, 5393.729, 139.1876, 4.70598, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+155, 61817, 1011, 3, 1, 1491.134, 5297.112, 184.732, 2.183713, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+156, 61817, 1011, 3, 1, 1490.134, 5295.682, 184.732, 1.839002, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+157, 61817, 1011, 3, 1, 1551.319, 5285.856, 184.8482, 2.34951, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+158, 61817, 1011, 3, 1, 1485.352, 5298.081, 184.732, 0.4674295, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+159, 61817, 1011, 3, 1, 1544.189, 5284.963, 184.8504, 0.6648944, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+160, 61817, 1011, 3, 1, 1492.96, 5297.708, 184.732, 2.79816, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+161, 61817, 1011, 3, 1, 1485.023, 5296.042, 184.732, 0.6648944, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+162, 61817, 1011, 3, 1, 1545.389, 5286.476, 184.8406, 0.5643228, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+163, 61817, 1011, 3, 1, 1544.521, 5287.002, 184.8364, 0.4674295, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+164, 61817, 1011, 3, 1, 1487.021, 5296.897, 184.7319, 1.107405, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+165, 61817, 1011, 3, 1, 1548.142, 5286.113, 184.8446, 1.633882, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive) (possible waypoints or random movement)
-- (@CGUID+166, 63106, 1011, 3, 1, 1534.09, 5398.921, 139.1302, 4.436366, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
-- (@CGUID+167, 61670, 1011, 3, 1, 1485.809, 5387.146, 139.5372, 5.133074, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+168, 61817, 1011, 3, 1, 1547.295, 5284.664, 184.8542, 1.338254, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive) (possible waypoints or random movement)
-- (@CGUID+169, 63106, 1011, 3, 1, 1524.627, 5385.994, 139.7608, 4.630273, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
-- (@CGUID+170, 63106, 1011, 3, 1, 1519.444, 5400.557, 139.5995, 4.664006, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+171, 61817, 1011, 3, 1, 1486.793, 5295.687, 184.7319, 1.224235, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
-- (@CGUID+172, 63106, 1011, 3, 1, 1503.623, 5384.272, 138.9869, 4.989927, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+173, 61817, 1011, 3, 1, 1550.325, 5284.965, 184.8538, 2.179494, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
-- (@CGUID+174, 61670, 1011, 3, 1, 1504.102, 5391.895, 138.7024, 4.989927, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+175, 61817, 1011, 3, 1, 1491.158, 5296.043, 184.732, 2.179494, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
-- (@CGUID+176, 63106, 1011, 3, 1, 1492.309, 5381.318, 139.5228, 5.217566, 86400, 0, 0), -- Sik'thik Swarmer (Area: Hollowed Out Tree) (Auras: )
(@CGUID+177, 61817, 1011, 3, 1, 1492.396, 5298.732, 184.732, 2.586187, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
-- (@CGUID+178, 61670, 1011, 3, 1, 1494.62, 5389.788, 139.3728, 5.217566, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+179, 61817, 1011, 3, 1, 1552.309, 5285.424, 184.8399, 2.79816, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+180, 61817, 1011, 3, 1, 1492.151, 5296.934, 184.732, 2.34951, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+181, 61817, 1011, 3, 1, 1552.092, 5286.59, 184.8318, 2.79816, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+182, 61817, 1011, 3, 1, 1492.182, 5295.901, 184.732, 2.79816, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
(@CGUID+183, 61817, 1011, 3, 1, 1544.25, 5285.992, 184.8433, 0.7451652, 86400, 0, 0), -- Mantid Tar Keg (Area: Hollowed Out Tree) (Auras: 123218 - Mantid Barrel Inactive)
-- (@CGUID+184, 61670, 1011, 3, 1, 1490.585, 5401.871, 142.3527, 5.056201, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+185, 62684, 1011, 3, 1, 1554.757, 5315.414, 184.7319, 1.584624, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+186, 62684, 1011, 3, 1, 1541.611, 5313.682, 185.2183, 1.732267, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+187, 62684, 1011, 3, 1, 1557.802, 5315.508, 184.7323, 1.732267, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
-- (@CGUID+188, 61670, 1011, 3, 1, 1527.97, 5406.993, 140.1349, 4.664006, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+189, 62684, 1011, 3, 1, 1539.743, 5314.566, 185.2183, 1.732267, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+190, 57478, 1011, 3, 1, 1555.927, 5312.65, 184.7319, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+191, 62684, 1011, 3, 1, 1556.059, 5316.244, 184.7319, 1.732267, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+192, 62684, 1011, 3, 1, 1514.825, 5311.887, 184.7319, 1.732267, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
-- (@CGUID+193, 61670, 1011, 3, 1, 1522.759, 5407.417, 140.269, 4.719938, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+194, 57478, 1011, 3, 1, 1513.189, 5309.396, 184.7319, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
-- (@CGUID+195, 61670, 1011, 3, 1, 1533.313, 5406.377, 139.8538, 4.527507, 86400, 0, 0), -- Sik'thik Demolisher (Area: Hollowed Out Tree) (Auras: 121986 - Carrying Explosives)
(@CGUID+196, 57478, 1011, 3, 1, 1540.203, 5310.736, 184.7319, 1.687166, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+197, 62684, 1011, 3, 1, 1538.194, 5313.143, 184.7319, 1.732267, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
-- (@CGUID+198, 61701, 1011, 3, 1, 1523.967, 5414.13, 141.6149, 4.911316, 86400, 0, 0), -- Sik'thik Warrior (Area: Hollowed Out Tree) (Auras: )
(@CGUID+199, 62684, 1011, 3, 1, 1511.602, 5311.742, 184.7319, 1.584624, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+200, 62684, 1011, 3, 1, 1513.047, 5312.829, 184.7319, 1.732267, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+201, 57478, 1011, 3, 1, 1474.995, 5320.785, 171.3446, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+202, 62684, 1011, 3, 1, 1489.153, 5310.26, 184.7319, 2.284082, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+203, 62684, 1011, 3, 1, 1486.073, 5308.665, 184.7319, 2.284082, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+204, 57478, 1011, 3, 1, 1516.536, 5327.429, 159.2417, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+205, 57478, 1011, 3, 1, 1488.722, 5307.814, 184.7319, 2.23898, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
(@CGUID+206, 62684, 1011, 3, 1, 1486.688, 5310.722, 184.7319, 2.284082, 86400, 0, 0), -- Barrel Target (Area: Hollowed Out Tree) (Auras: )
(@CGUID+207, 57478, 1011, 3, 1, 1535.618, 5330.213, 159.2021, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Hollowed Out Tree)
-- (@CGUID+208, 61701, 1011, 3, 1, 1498.524, 5411.147, 144.3895, 4.911316, 86400, 0, 0), -- Sik'thik Warrior (Area: Hollowed Out Tree) (Auras: )
-- (@CGUID+209, 61634, 1011, 3, 1, 1509.667, 5424.979, 145.6868, 5.072042, 86400, 5, 1), -- Commander Vo'jak (Area: Hollowed Out Tree) (Auras: 120757 - Frantic Fighter) (possible waypoints or random movement)
(@CGUID+210, 61965, 1011, 3, 1, 1482.089, 5113.253, 164.0075, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Rear Staging Area) (Auras: 120591 - Sap Puddle)
(@CGUID+211, 64520, 1011, 3, 1, 1465.009, 5387.101, 139.5037, 6.08302, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Rear Staging Area)
(@CGUID+212, 61929, 1011, 3, 1, 1566.805, 5120.628, 164.8253, 0.1010236, 86400, 0, 0), -- Sik'thik Amber-Weaver (Area: Rear Staging Area)
(@CGUID+213, 61964, 1011, 3, 1, 1489.998, 5111.353, 193.5215, 0.6708721, 86400, 0, 0), -- Sap Spray (Area: Rear Staging Area) (Auras: 120586 - Sap Spray)
(@CGUID+214, 61965, 1011, 3, 1, 1546.865, 5107.95, 189.3376, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Rear Staging Area) (Auras: 120591 - Sap Puddle)
(@CGUID+215, 64520, 1011, 3, 1, 1590.988, 5378.098, 140.0883, 1.906065, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Rear Staging Area) (Auras: 86603 - Stealth)
(@CGUID+216, 61964, 1011, 3, 1, 1481.726, 5121.479, 168.9901, 4.837616, 86400, 0, 0), -- Sap Spray (Area: Rear Staging Area) (Auras: 120586 - Sap Spray)
(@CGUID+217, 61965, 1011, 3, 1, 1496.72, 5117.418, 186.3669, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Rear Staging Area) (Auras: 120591 - Sap Puddle)
(@CGUID+218, 61629, 1011, 3, 1, 1508.649, 5130.711, 163.8047, 0.5960336, 86400, 0, 0), -- Sappling Summon Dest (Area: Rear Staging Area)
(@CGUID+219, 61964, 1011, 3, 1, 1489.592, 5131.908, 187.3059, 3.832379, 86400, 0, 0), -- Sap Spray (Area: Rear Staging Area) (Auras: 120586 - Sap Spray)
(@CGUID+220, 61965, 1011, 3, 1, 1483.769, 5127.194, 181.4369, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Rear Staging Area) (Auras: 120591 - Sap Puddle)
(@CGUID+221, 61964, 1011, 3, 1, 1472.498, 5131.902, 186.7208, 0.01176478, 86400, 0, 0), -- Sap Spray (Area: Rear Staging Area) (Auras: 120586 - Sap Spray)
(@CGUID+222, 61965, 1011, 3, 1, 1481.847, 5132.757, 178.5269, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Rear Staging Area) (Auras: 120591 - Sap Puddle)
(@CGUID+223, 61964, 1011, 3, 1, 1559.74, 5135.105, 170.9384, 5.362343, 86400, 0, 0), -- Sap Spray (Area: Rear Staging Area) (Auras: 120586 - Sap Spray)
(@CGUID+224, 61964, 1011, 3, 1, 1459.59, 5096.502, 156.2926, 2.28609, 86400, 0, 0), -- Sap Spray (Area: Rear Staging Area) (Auras: 120586 - Sap Spray)
(@CGUID+225, 61965, 1011, 3, 1, 1454.252, 5104.469, 152.1752, 4.837616, 86400, 0, 0), -- Sap Puddle (Area: Rear Staging Area) (Auras: 120591 - Sap Puddle)
(@CGUID+226, 61967, 1011, 3, 1, 1510.792, 5096.888, 174.7912, 5.64291, 86400, 5, 1), -- Resin Stalker (Area: Rear Staging Area) (possible waypoints or random movement)
(@CGUID+227, 61434, 1011, 3, 1, 1648.167, 5395.331, 139.891, 2.81814, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area)
(@CGUID+228, 62348, 1011, 3, 1, 1862.05, 5375.257, 142.7279, 5.48722, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+229, 62348, 1011, 3, 1, 1845.25, 5361.701, 143.3349, 5.48722, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+230, 61436, 1011, 3, 1, 1725.672, 5262.024, 123.9214, 5.680123, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area) (Auras: )
(@CGUID+231, 61434, 1011, 3, 1, 1669.852, 5388.716, 140.2972, 0, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area)
(@CGUID+232, 63565, 1011, 3, 1, 1865.066, 5348.137, 143.7178, 5.250711, 86400, 0, 0), -- Mantid Catapult (Area: Rear Staging Area)
(@CGUID+233, 61434, 1011, 3, 1, 1735.917, 5267.554, 123.9037, 5.680123, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area) (Auras: )
(@CGUID+234, 62348, 1011, 3, 1, 1811.497, 5338.332, 142.776, 5.313229, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+235, 62348, 1011, 3, 1, 1787.179, 5391.234, 142.5597, 1.284048, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: )
(@CGUID+236, 62348, 1011, 3, 1, 1821.589, 5343.059, 143.6199, 5.399011, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+237, 61436, 1011, 3, 1, 1650.066, 5389.146, 140.218, 2.81814, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area)
(@CGUID+238, 62348, 1011, 3, 1, 1778.668, 5405.807, 143.9633, 0.6300213, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: )
(@CGUID+239, 61434, 1011, 3, 1, 1669.734, 5382.697, 140.4579, 0.009320531, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area)
(@CGUID+240, 61434, 1011, 3, 1, 1739.957, 5327.307, 133.689, 0.8704404, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area)
(@CGUID+241, 61436, 1011, 3, 1, 1708.776, 5237.167, 123.5699, 5.727167, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area) (Auras: )
(@CGUID+242, 63565, 1011, 3, 1, 1831.269, 5317.601, 143.8597, 5.349746, 86400, 0, 0), -- Mantid Catapult (Area: Rear Staging Area)
(@CGUID+243, 62348, 1011, 3, 1, 1853.25, 5363.932, 143.1946, 5.48722, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+244, 67093, 1011, 3, 1, 1666.387, 5385.948, 140.2907, 6.188958, 86400, 0, 0), -- Sik'thik Battle-Mender (Area: Rear Staging Area)
(@CGUID+245, 61436, 1011, 3, 1, 1744.373, 5322.861, 132.7465, 1.479413, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area)
(@CGUID+246, 61434, 1011, 3, 1, 1764.691, 5402.311, 143.1676, 5.228849, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area) (Auras: )
(@CGUID+247, 61434, 1011, 3, 1, 1732.153, 5262.547, 123.7983, 5.680123, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area) (Auras: )
(@CGUID+248, 61436, 1011, 3, 1, 1701.129, 5224.331, 123.5459, 5.727167, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area) (Auras: )
(@CGUID+249, 61434, 1011, 3, 1, 1707.578, 5225.161, 123.5454, 5.727167, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area) (Auras: )
(@CGUID+250, 62348, 1011, 3, 1, 1861.601, 5370.603, 142.9213, 5.48722, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+251, 62348, 1011, 3, 1, 1822.148, 5347.208, 143.6979, 5.313229, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+252, 62348, 1011, 3, 1, 1797.379, 5395.991, 143.5745, 1.434195, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: )
(@CGUID+253, 62348, 1011, 3, 1, 1810.936, 5334.183, 142.7378, 5.399011, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+254, 62348, 1011, 3, 1, 1849.502, 5360.788, 143.3372, 5.48722, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+255, 61436, 1011, 3, 1, 1653.972, 5397.647, 140.157, 2.631867, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area)
(@CGUID+256, 67093, 1011, 3, 1, 1703.47, 5231.663, 123.5454, 5.681051, 86400, 0, 0), -- Sik'thik Battle-Mender (Area: Rear Staging Area) (Auras: )
(@CGUID+257, 62348, 1011, 3, 1, 1780.995, 5396.361, 142.8933, 0.6300213, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: )
(@CGUID+258, 67093, 1011, 3, 1, 1729.036, 5269.343, 123.9216, 5.574384, 86400, 0, 0), -- Sik'thik Battle-Mender (Area: Rear Staging Area) (Auras: )
(@CGUID+259, 67093, 1011, 3, 1, 1739.767, 5320.819, 132.3067, 1.532546, 86400, 0, 0), -- Sik'thik Battle-Mender (Area: Rear Staging Area)
(@CGUID+260, 61434, 1011, 3, 1, 1848.759, 5352.676, 143.7162, 0.6739157, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area)
(@CGUID+261, 67093, 1011, 3, 1, 1656.161, 5392.095, 140.2121, 2.724786, 86400, 0, 0), -- Sik'thik Battle-Mender (Area: Rear Staging Area)
(@CGUID+262, 62348, 1011, 3, 1, 1814.644, 5337.078, 143.0559, 5.313229, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+263, 63565, 1011, 3, 1, 1858.318, 5332.479, 143.5772, 5.360932, 86400, 0, 0), -- Mantid Catapult (Area: Rear Staging Area)
(@CGUID+264, 61436, 1011, 3, 1, 1733.724, 5275.04, 124.4426, 5.680123, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area) (Auras: )
(@CGUID+265, 61434, 1011, 3, 1, 1811.011, 5325.847, 143.0768, 0.598884, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area)
(@CGUID+266, 61436, 1011, 3, 1, 1735.009, 5322.977, 132.7677, 1.665685, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area)
(@CGUID+267, 62348, 1011, 3, 1, 1818.352, 5336.21, 143.3461, 5.399011, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+268, 63565, 1011, 3, 1, 1880.852, 5356.366, 143.6199, 5.250711, 86400, 0, 0), -- Mantid Catapult (Area: Rear Staging Area)
(@CGUID+269, 61434, 1011, 3, 1, 1711.104, 5230.338, 123.5454, 5.727167, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area) (Auras: )
(@CGUID+270, 62348, 1011, 3, 1, 1857.599, 5367.074, 143.0467, 5.399011, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+271, 62348, 1011, 3, 1, 1857.656, 5371.529, 142.8995, 5.48722, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+272, 61485, 1011, 3, 1, 1748.84, 5223.259, 123.5454, 5.733763, 86400, 0, 0), -- General Pa'valak (Area: Rear Staging Area) (Auras: )
(@CGUID+273, 61436, 1011, 3, 1, 1724.385, 5289.037, 126.6667, 4.256379, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area) (Auras: )
(@CGUID+274, 61434, 1011, 3, 1, 1717.942, 5287.909, 126.4641, 4.078951, 86400, 0, 0), -- Sik'thik Vanguard (Area: Rear Staging Area) (Auras: )
(@CGUID+275, 62348, 1011, 3, 1, 1818.913, 5340.358, 143.4334, 5.313229, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+276, 62348, 1011, 3, 1, 1817.88, 5343.927, 143.4826, 5.313229, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+277, 61436, 1011, 3, 1, 1716.462, 5294.037, 128.0504, 4.070107, 86400, 0, 0), -- Sik'thik Bladedancer (Area: Rear Staging Area) (Auras: )
(@CGUID+278, 63565, 1011, 3, 1, 1849.373, 5314.985, 146.8725, 5.360932, 86400, 0, 0), -- Mantid Catapult (Area: Rear Staging Area)
(@CGUID+279, 62348, 1011, 3, 1, 1807.227, 5335.051, 142.3715, 5.313229, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+280, 62348, 1011, 3, 1, 1856.911, 5363.561, 143.1962, 5.399011, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+281, 63565, 1011, 3, 1, 1819.571, 5311.237, 143.7199, 5.406985, 86400, 0, 0), -- Mantid Catapult (Area: Rear Staging Area)
(@CGUID+282, 62348, 1011, 3, 1, 1849.538, 5365.566, 143.1815, 5.48722, 86400, 0, 0), -- Sik'thik Soldier (Area: Rear Staging Area) (Auras: 124067 - Catapult Channel)
(@CGUID+283, 64520, 1011, 3, 1, 1583.483, 5437.167, 143.2022, 4.621813, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Rear Staging Area) (Auras: 86603 - Stealth)
(@CGUID+284, 64520, 1011, 3, 1, 1531.226, 5442.71, 145.1007, 4.621813, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Rear Staging Area) (Auras: 86603 - Stealth)
(@CGUID+285, 64520, 1011, 3, 1, 1674.882, 5376.411, 141.0183, 2.443623, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Rear Staging Area)
(@CGUID+286, 61629, 1011, 3, 1, 1513.88, 5198.814, 161.8364, 5.081458, 86400, 0, 0), -- Sappling Summon Dest (Area: Rear Staging Area)
(@CGUID+287, 57478, 1011, 3, 1, 1560.411, 5337.561, 159.2115, 1.732267, 86400, 0, 0), -- Invisible Stalker (Area: Rear Staging Area)
(@CGUID+288, 64520, 1011, 3, 1, 1771.802, 5409.267, 143.8401, 4.324012, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+289, 62091, 1011, 3, 1, 1403.234, 5227.937, 235.7819, 1.845831, 86400, 5, 1), -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+290, 64520, 1011, 3, 1, 1806.845, 5376.136, 143.8239, 3.456405, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+291, 62091, 1011, 3, 1, 1399.468, 5231.281, 235.8724, 1.825816, 86400, 5, 1), -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+292, 64520, 1011, 3, 1, 1828.345, 5361.768, 143.67, 5.173313, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+293, 64520, 1011, 3, 1, 1765.005, 5305.857, 125.3433, 3.833319, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+294, 64520, 1011, 3, 1, 1682.667, 5281.125, 124.1915, 6.262496, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+295, 64520, 1011, 3, 1, 1670.729, 5229.104, 123.5747, 6.261765, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+296, 64520, 1011, 3, 1, 1674.924, 5204.922, 123.5747, 1.198878, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+297, 61567, 1011, 3, 1, 1539.254, 5174.492, 158.8932, 2.64298, 86400, 0, 0), -- Vizier Jin'bak (Area: Forward Assault Camp)
(@CGUID+298, 61629, 1011, 3, 1, 1557.563, 5142.438, 162.5173, 2.411743, 86400, 0, 0), -- Sappling Summon Dest (Area: Forward Assault Camp)
(@CGUID+299, 64520, 1011, 3, 1, 1782.691, 5239.21, 124.2925, 2.646523, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+300, 62633, 1011, 3, 1, 1811.41, 5256.103, 131.2533, 2.355699, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+301, 64520, 1011, 3, 1, 1755.915, 5203.043, 123.5473, 1.494914, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
(@CGUID+302, 62632, 1011, 3, 1, 1806.547, 5253.688, 131.2533, 2.370481, 86400, 0, 0), -- Sik'thik Engineer (Area: Forward Assault Camp) (Auras: )
(@CGUID+303, 62633, 1011, 3, 1, 1804.401, 5249.022, 131.2533, 2.399399, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+304, 61629, 1011, 3, 1, 1506.866, 5190.82, 163.5395, 5.493496, 86400, 0, 0), -- Sappling Summon Dest (Area: Forward Assault Camp)
(@CGUID+305, 64520, 1011, 3, 1, 1733.726, 5153.439, 126.8906, 2.054837, 86400, 0, 0), -- Shado-Pan Prisoner (Area: Forward Assault Camp)
-- (@CGUID+306, 61483, 1011, 3, 1, 1733.038, 5332.926, 136.088, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
(@CGUID+307, 61964, 1011, 3, 1, 1554.024, 5095.485, 172.2365, 2.150814, 86400, 0, 0), -- Sap Spray (Area: Forward Assault Camp)
-- (@CGUID+308, 61483, 1011, 3, 1, 1727.012, 5342.524, 138.5872, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
-- (@CGUID+309, 61483, 1011, 3, 1, 1750.8, 5332.092, 134.8477, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
-- (@CGUID+310, 61483, 1011, 3, 1, 1741.793, 5338.747, 136.2742, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
(@CGUID+311, 62632, 1011, 3, 1, 1832.487, 5226.255, 131.1689, 4.004762, 86400, 5, 1), -- Sik'thik Engineer (Area: Forward Assault Camp) (Auras: ) (possible waypoints or random movement)
(@CGUID+312, 62633, 1011, 3, 1, 1822.342, 5243.702, 131.2533, 0.7771349, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
-- (@CGUID+313, 61483, 1011, 3, 1, 1741.793, 5338.747, 136.2742, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
-- (@CGUID+314, 61483, 1011, 3, 1, 1727.012, 5342.524, 138.5872, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
-- (@CGUID+315, 61483, 1011, 3, 1, 1733.038, 5332.926, 136.088, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
-- (@CGUID+316, 61483, 1011, 3, 1, 1750.8, 5332.092, 134.8477, 4.686225, 86400, 0, 0), -- Reinforcements Summoner (Area: Forward Assault Camp) (Auras: 119781 - Summon Mantid Soldier)
(@CGUID+317, 62205, 1011, 3, 1, 1888.998, 5177.15, 131.3173, 2.377002, 86400, 0, 0), -- Wing Leader Ner'onok (Area: Forward Assault Camp) (Auras: 126303 - Mantid Wings)
(@CGUID+318, 62633, 1011, 3, 1, 1836.439, 5213.16, 131.2518, 5.565708, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+319, 62633, 1011, 3, 1, 1839.641, 5215.642, 131.2518, 5.426046, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+320, 62633, 1011, 3, 1, 1843.891, 5202.702, 131.357, 2.396386, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+321, 62633, 1011, 3, 1, 1845.681, 5227.818, 131.2518, 1.737486, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+322, 62633, 1011, 3, 1, 1839.653, 5235.627, 131.2523, 5.706776, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+323, 62633, 1011, 3, 1, 1855.436, 5192.911, 131.3173, 5.328451, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+324, 62632, 1011, 3, 1, 1861.968, 5215.536, 131.1691, 2.446112, 86400, 0, 0), -- Sik'thik Engineer (Area: Forward Assault Camp) (Auras: )
(@CGUID+325, 62633, 1011, 3, 1, 1858.786, 5194.549, 131.3173, 5.260591, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+326, 62633, 1011, 3, 1, 1863.51, 5202.266, 131.3173, 0.647153, 86400, 0, 0), -- Sik'thik Builder (Area: Forward Assault Camp) (Auras: )
(@CGUID+327, 62091, 1011, 3, 1, 1494.332, 5385.366, 216.0854, 0.139821, 86400, 5, 1), -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+328, 62091, 1011, 3, 1, 1693.081, 5298.844, 204.2646, 5.149067, 86400, 5, 1), -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+329, 62091, 1011, 3, 1, 1636.828, 5344.137, 213.9351, 5.827858, 86400, 5, 1), -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+330, 62091, 1011, 3, 1, 1647.284, 5343.329, 210.7402, 5.735339, 86400, 5, 1), -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+331, 62091, 1011, 3, 1, 1634.786, 5337.195, 213.935, 5.813205, 86400, 5, 1), -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
(@CGUID+332, 62091, 1011, 3, 1, 1643.158, 5347.613, 213.9361, 5.784093, 86400, 5, 1); -- Sik'thik Flyer (Area: Forward Assault Camp) (Auras: 126320 - Mantid Wings, 132441 - Mantid Wings) (possible waypoints or random movement)
-- (@CGUID+333, 64517, 1011, 3, 1, 1851.226, 5214.163, 131.2519, 4.03415, 86400, 0, 0); -- Shado-Master Chum Kiu (Area: Forward Assault Camp)

UPDATE creature SET spawnMask = 15 WHERE map = 1011;