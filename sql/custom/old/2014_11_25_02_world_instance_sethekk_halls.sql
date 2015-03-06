-- Darkweaver Syth
DELETE FROM `creature_text` WHERE `entry` = '18472';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('18472', '0', '0', 'I have pets -- ca-caw! -- of my own!', '14', '0', '100', '0', '0', '10502', 'syth SAY_SUMMON'),
('18472', '1', '0', 'Mmm... time to make my move!', '14', '0', '100', '0', '0', '10503', 'syth SAY_AGGRO_1'),
('18472', '1', '1', 'Nice pets, yes... raa-a-ak!', '14', '0', '100', '0', '0', '10504', 'syth SAY_AGGRO_2'),
('18472', '1', '2', 'Nice pets have weapons. No so -- ra-ak -- nice.', '14', '0', '100', '0', '0', '10505', 'syth SAY_AGGRO_3'),
('18472', '2', '0', 'Yes, fleeting life is, rak-a-kak!', '14', '0', '100', '0', '0', '10506', 'syth SAY_SLAY_1'),
('18472', '2', '1', 'Mmmm... be free. Caw!', '14', '0', '100', '0', '0', '10507', 'syth SAY_SLAY_2'),
('18472', '3', '0', 'Mmm... no more life. No more pain. A-ak!', '14', '0', '100', '0', '0', '10508', 'syth SAY_DEATH');

-- Talon King Ikiss
DELETE FROM `creature_text` WHERE `entry` = '18473';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('18473', '0', '0', 'Ra-ak! Trinkets, yes. Pretty trinkets! Ak! Power, great power. Ra-kaw! Power in trinkets! Ak-caw!', '14', '0', '100', '0', '0', '10557', 'ikiss SAY_INTRO'),
('18473', '1', '0', 'Mmm, you make war on Ikiss? Aa-ak!', '14', '0', '100', '0', '0', '10554', 'ikiss SAY_AGGRO_1'),
('18473', '1', '1', 'Ikiss cut you, pretty -- ak-a-ak -- slice you, yes!', '14', '0', '100', '0', '0', '10555', 'ikiss SAY_AGGRO_2'),
('18473', '1', '2', 'Ak-a-ra-k! No escape for -- caw -- you!', '14', '0', '100', '0', '0', '10556', 'ikiss SAY_AGGRO_3'),
('18473', '2', '0', 'You die -- ka! Stay away from trinkets!', '14', '0', '100', '0', '0', '10558', 'ikiss SAY_SLAY_1'),
('18473', '2', '1', 'Mmmmmm...', '14', '0', '100', '0', '0', '10559', 'ikiss SAY_SLAY_2'),
('18473', '3', '0', 'Ikiss will not -- rak, rak -- die...', '14', '0', '100', '0', '0', '10560', 'ikiss SAY_DEATH'),
('18473', '4', '0', '%s begins to channel arcane energy....', '41', '0', '100', '0', '0', '0', 'ikiss EMOTE_ARCANE_EXP');

-- Anzu
DELETE FROM `creature_text` WHERE `entry` = '23035';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('23035', '0', '0', 'Awaken, my children and assist your master!', '14', '0', '100', '0', '0', '0', 'Anzu - Summon Brood'),
('23035', '1', '0', 'Your spells... ke-kaw... are weak magics... easy to turn against you...', '15', '0', '100', '0', '0', '0', 'Anzu - Spell Bomb'),
('23035', '1', '1', 'Yes... cast your precious little spells, ak-a-ak!', '15', '0', '100', '0', '0', '0', 'Anzu - Spell Bomb');

UPDATE `creature_template` SET `ScriptName`='boss_darkweaver_syth' WHERE (`entry`='18472');
UPDATE `creature_template` SET `ScriptName`='boss_talon_king_ikiss' WHERE (`entry`='18473');
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_anzu' WHERE (`entry`='23035');
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='23035');
