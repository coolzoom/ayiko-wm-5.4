DELETE FROM trinity_string WHERE entry IN (
    4, 5, 6, 7, 8, 10, 14, 15, 19, 20, 175, 207, 210, 363, 453, 468, 517, 539, 548, 549, 550, 555, 556, 707, 714, 716, 749, 752, 787, 788, 789, 810, 820, 821, 822,
    1099, 1137, 1138, 1225, 1226, 2027, 6615, 11000
)
OR (entry BETWEEN 63 AND 96)
OR (entry BETWEEN 756 AND 772)
OR (entry BETWEEN 843 AND 881)
OR (entry BETWEEN 1151 AND 1200)
OR (entry BETWEEN 1233 AND 1244)
OR (entry BETWEEN 5037 AND 5039)
OR (entry BETWEEN 6601 AND 6603)
OR (entry BETWEEN 11002 AND 12009)
OR (entry BETWEEN 13050 AND 20001);

INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(4, '|cff00ccff[Event Active]:|r %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '|cffff0000[Сообщение ивента]: %s|r');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(5, '|cffff6060Failed: |cff00ccffThere is no help for that command|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Нет справки для этой команды');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(6, '|cffff6060Failed: |cff00ccffThere is no such command|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Нет такой команды');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(7, '|cffff6060Failed: |cff00ccffThere is no such subcommand|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Нет такой подкоманды');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(8, 'Command %s has subcommands:%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Команда %s имеет подкоманды:%s');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(10, '|cffff6060Failed: |cff00ccffIncorrect syntax.|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Неправильный синтаксис.');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(14, '|cff00ff00Success: |cff00ccffYour character is now saved|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Игрок сохранен.');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(15, '|cff00ff00Success: |cff00ccffAll players saved|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Все игроки сохранены.');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(19, 'Last server diff: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(20, 'Target is flying you can''t do that.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(63, 'Wrong parameter id: %u, does not exist', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(64, 'Wrong parameter realmId: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(65, 'Account %u (%s) granted permissions:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(66, 'Account %u (%s) denied permissions:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(67, 'Account %u (%s) inherited permissions by sec level %u:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(68, 'Permissions:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(69, 'Linked permissions:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(70, 'Empty List', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(71, '- %u (%s)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(72, 'Couldn''t grant permission %u (%s) realmId %d. Account %u (%s) already has that permission', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(73, 'Couldn''t grant permission %u (%s) realmId %d. Account %u (%s) has that permission in deny list', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(74, 'Granted permission %u (%s) realmId %d to account %u (%s)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(75, 'Couldn''t deny permission %u (%s) realmId %d. Account %u (%s) already has that permission', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(76, 'Couldn''t deny permission %u (%s) realmId %d. Account %u (%s) has that permission in deny list', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(77, 'Denied permission %u (%s) realmId %d to account %u (%s)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(78, 'Revoked permission %u (%s) realmId %d to account %u (%s)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(79, 'Couldn''t revoke permission %u (%s) realmId %d. Account %u (%s) does not have that permission', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(96, 'Average server diff: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(175, 'Liquid level: %f, ground: %f, type: %d, status: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(207, 'Item ''%i'' not found in database.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Предмет ''%i'' не найден в базе.');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(210, 'Item ''%u'' (with extended cost %u) already in vendor list.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Предмет ''%u'' (с ценой %u) уже в списке продавца.');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(363, 'You have too many pets.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(453, '│Player %s %s (guid: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(468, 'id: %d effmask: %d charges: %d stack: %d slot %d duration: %d maxduration: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ID: %d %s effmask: %d Зарядов: %d Стаков: %d Слот: %d Длительность: %d Максимальная длительность: %d %s %s caster: %s guid: %d');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(517, '%d - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%d (Entry: %d) - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(539, 'Player selected NPC\nGUID: %u.\nFaction: %u.\nnpcFlags: %u.\nEntry: %u.\nDisplayID: %u (Native: %u).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Игрок выбрал NPC\r\nDB GUID: %u, Текущий GUID: %u.\r\nФракция: %u.\r\nнпцФлаг: %u.\r\nEntry: %u.\r\nДисплейID: %u (Текущий: %u).');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(548, '│ GM Mode active, Phase: -1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(549, '├─ Banned: (Type: %s, Reason: %s, Time: %s, By: %s)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(550, '├─ Muted: (Reason: %s, Time: %s, By: %s)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(555, 'Hover enabled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(556, 'Hover disabled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(707, '%s wishes to not be disturbed and cannot receive whisper messages: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%s желает, чтобы $gего:её; не беспокоили, и не может принимать сообщения: %s');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(714, '│ Account: %s (ID: %u), GMLevel: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(716, '│ Last Login: %s (Failed Logins: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(749, '│ OS: %s - Latency: %u ms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(752, '│ Last IP: %s (Locked: %s)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(787, '|cff3d8bff<%s>|cff3d8bff%s: |cffffcc00%s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '|cffffff00[|c1f40af20Объявление от|r |cffff0000%s|cffffff00]:|r %s|r');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(788, '|cffff0000[%s]|cff3df500%s: |cffffcc00%s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(789, '|CFF18BE00<QA>|CFF18BE00%s: |CFF18BE00%s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(810, '|Hplayer:$N|h[$N]|h has earned the achievement $a!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '|Hplayer:$N|h[$N]|h $gполучил:получила; достижение $a!');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(843, '│ Level: %u (%u/%u XP (%u XP left))', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(844, '│ Race: %s %s, %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(845, '│ Alive ?: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(846, '│ Phase: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(847, '│ Money: %ug%us%uc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(848, '│ Map: %s, Area: %s, Zone: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(849, '│ Guild: %s (ID: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(850, '├─ Rank: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(851, '├─ Note: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(852, '├─ O. Note: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(853, '│ Played time: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(854, '│ Mails: %u Read/%u Total', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(855, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(856, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(871, '│ Level: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(872, 'Entered email is not equal to registration email, check input', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(873, 'The new emails do not match', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(874, 'The email was changed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(875, 'Your email can''t be longer than 64 characters, email not changed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(876, 'Email not changed (unknown error)!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(877, 'Email change unnecessary, new email is equal to old email', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(878, 'Your email is: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(879, '│ Registration Email: %s - Email: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(880, 'Security Level: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(881, 'You require an email to change your password.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1099, 'Gear Score of Player %s is %u.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1137, 'Team with given name is not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1138, 'Team disbanded', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1200, 'You try to view cinemitic %u but it doesn''t exist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вы хотите просмотреть анимацию %u, но ее не существует.');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1233, 'Let the battle for Twin Peaks begin!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1234, '$n captured the Horde flag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1235, '$n captured the Alliance flag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1236, 'The Horde flag was dropped by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1237, 'The Alliance Flag was dropped by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1238, 'The Alliance Flag was returned to its base by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1239, 'The Horde flag was returned to its base by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1240, 'The Horde flag was picked up by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1241, 'The Alliance Flag was picked up by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1242, 'The flags are now placed at their bases.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1243, 'The Alliance flag is now placed at its base.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1244, 'The Horde flag is now placed at its base.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2027, 'Updated AreaId for %u %ss in map %u (%u skipped).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(6601, 'You cannot yell until you play at least %d hours.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(6602, 'You cannot whisper until you play at least %d hours.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(6603, 'You cannot write to channels until you play at least %d hours.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(6615, '|cffffff00[|c1f40af20Global Message by|r |cffff0000%s|cffffff00]:|r %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '|cffffff00[|c1f40af20Объявление от ГМа|r |cffff0000%s|cffffff00]:|r %s|r');
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11003, '|cffff0000 %s has been banned for %s. Reason: %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11004, '|cffff0000 %s has been banned permanently. Reason %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11005, '|cffff0000 Account %s has been banned for %s. Reason %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11006, '|cffff0000 Account %s has been banned permanently. Reason %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11007, '|cffff0000 IP %s has been banned for %s. Reason: %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11008, '|cffff0000 IP %s has been banned permanently. Reason %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11009, 'Raid browser', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11010, 'Average server diff: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11011, 'Average server diff update interval: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11012, 'Team is currently fighting. Try again later', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11013, 'Team with given name is not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11014, 'Team disbanded', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11015, 'Error', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11016, 'Player name: %s, ILvl: %u, State: %s, Dungeons: %u (%s), Roles: %s, Comment: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11017, 'LfgGroup?: %u, State: %s, Dungeon: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11018, 'Not in group', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11019, 'Queues cleared', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11020, 'Lfg options: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11021, 'Lfg options changed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11022, 'Lfg Max Avg item level difference: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11023, 'Lfg Max Avg item level difference changed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11030, 'BG (%s): Queued: %u (A: %u H: %u) Balance(%.2f%% - %.2f%%)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11031, 'Arena 2vs2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11032, 'Arena 3vs3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11033, 'Arena 5vs5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11034, 'Random BG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11035, 'Warsong gulch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11036, 'Arathi basin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11037, 'Eye of storm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11038, 'Alterac valley', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11039, 'Strand of the ancients', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11040, 'Isle of conquest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11041, 'Nagrand arena', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11042, 'Blade''s Edge Mountains', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11043, 'Ruins of Lordaeron', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11044, 'Dalaran Sewers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11045, 'Ring of Valor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11046, 'All', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11047, 'ERROR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11048, 'Bracket %u: %u (%.2f%% random) (%.2f%% rated)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11049, 'BG (%s) Bracket %u: %u (%.2f%% random) (%.2f%% rated)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11050, 'BG (%s): %u (%.2f%% random) (%.2f%% rated)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11051, 'No stats available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11052, 'BG stats cleared', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11053, 'Twin Peaks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11054, 'Battle for Gilneas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(11055, 'Rated BG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(12001, 'The Horde has taken the Venture Bay Lighthouse!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(12002, 'The Alliance has taken the Venture Bay Lighthouse!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(12003, 'The Horde lost the Venture Bay Lighthouse!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(12004, 'The Alliance lost the Venture Bay Lighthouse!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(20000, 'You have already rescued 6 Survivors.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO trinity_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(20001, 'You don''t have the required Mojos.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DROP TABLE IF EXISTS `autobroadcast`;
CREATE TABLE `autobroadcast` (
  `entry` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `content_loc9` text,
  `content_loc10` text,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Broadcast System';

DROP TABLE IF EXISTS guild_finder_applicant;
DROP TABLE IF EXISTS guild_finder_guild_settings;

DROP TABLE IF EXISTS `command`;
CREATE TABLE `command` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `permission` smallint(5) unsigned NOT NULL DEFAULT '0',
  `help` longtext,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Chat System';

INSERT INTO command(name, permission, help) VALUES
('account', 217, 'Syntax: .account\r\n\r\nDisplay the access level of your account and the email adress if you possess the necessary permissions.');
INSERT INTO command(name, permission, help) VALUES
('account addon', 218, 'Syntax: .account addon #addon\nSet expansion addon level allowed. Addon values: 0 - normal, 1 - tbc, 2 - wotlk, 3 - Cata.');
INSERT INTO command(name, permission, help) VALUES
('account create', 219, 'Syntax: .account create $account $password\r\n\r\nCreate account and set password to it.');
INSERT INTO command(name, permission, help) VALUES
('account delete', 220, 'Syntax: .account delete $account\r\n\r\nDelete account with all characters.');
INSERT INTO command(name, permission, help) VALUES
('account email', 263, 'Syntax: .account email $oldemail $currentpassword $newemail $newemailconfirmation\r\n\r\n Change your account email. You may need to check the actual security mode to see if email input is necessary for password change');
INSERT INTO command(name, permission, help) VALUES
('account onlinelist', 224, 'Syntax: .account onlinelist\r\n\r\nShow list of online accounts.');
INSERT INTO command(name, permission, help) VALUES
('account password', 225, 'Syntax: .account password $old_password $new_password $new_password [$email]\r\n\r\nChange your account password. You may need to check the actual security mode to see if email input is necessary.');
INSERT INTO command(name, permission, help) VALUES
('account set', 226, 'Syntax: .account set $subcommand\nType .account set to see the list of possible subcommands or .help account set $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('account set addon', 227, 'Syntax: .account set addon [$account] #addon\r\n\r\nSet user (possible targeted) expansion addon level allowed. Addon values: 0 - normal, 1 - tbc, 2 - wotlk.');
INSERT INTO command(name, permission, help) VALUES
('account set gmlevel', 228, 'Syntax: .account set gmlevel [$account] #level [#realmid]\r\n\r\nSet the security level for targeted player (can''t be used at self) or for account $name to a level of #level on the realm #realmID.\r\n\r\n#level may range from 0 to 3.\r\n\r\n#reamID may be -1 for all realms.');
INSERT INTO command(name, permission, help) VALUES
('account set password', 229, 'Syntax: .account set password $account $password $password\r\n\r\nSet password for account.');
INSERT INTO command(name, permission, help) VALUES
('account set sec email', 265, 'Syntax: .account set sec email $accountname $email $emailconfirmation\r\n\r\nSet the email for entered player account.');
INSERT INTO command(name, permission, help) VALUES
('account set sec regmail', 266, 'Syntax: .account set sec regmail $account $regmail $regmailconfirmation\r\n\r\nSets the regmail for entered player account.');
INSERT INTO command(name, permission, help) VALUES
('achievement', 230, 'Syntax: .achievement $subcommand\nType .achievement to see the list of possible subcommands or .help achievement $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('achievement add', 231, 'Syntax: .achievement add $achievement\nAdd an achievement to the targeted player.\n$achievement: can be either achievement id or achievement link');
INSERT INTO command(name, permission, help) VALUES
('achievement check', 1005, 'Syntax: .achievement check\nForces the recheck of all achievement criterias');
INSERT INTO command(name, permission, help) VALUES
('achievement start', 1006, 'Syntax: .achievement start TimedType Event\nForces the start of timed achievement criteria.');
INSERT INTO command(name, permission, help) VALUES
('additem', 488, 'Syntax: .additem #itemid/[#itemname]/#shift-click-item-link #itemcount\r\n\r\nAdds the specified number of items of id #itemid (or exact (!) name $itemname in brackets, or link created by shift-click at item in inventory or recipe) to your or selected character inventory. If #itemcount is omitted, only one item will be added.\r\n.');
INSERT INTO command(name, permission, help) VALUES
('additemset', 489, 'Syntax: .additemset #itemsetid\r\n\r\nAdd items from itemset of id #itemsetid to your or selected character inventory. Will add by one example each item from itemset.');
INSERT INTO command(name, permission, help) VALUES
('announce', 462, 'Syntax: .announce $MessageToBroadcast\r\n\r\nSend a global message to all players online in chat log.');
INSERT INTO command(name, permission, help) VALUES
('appear', 490, 'Syntax: .appear [$charactername]\r\n\r\nTeleport to the given character. Either specify the character name or click on the character''s portrait,e.g. when you are in a group. Character can be offline.');
INSERT INTO command(name, permission, help) VALUES
('aura', 491, 'Syntax: .aura #spellid\r\n\r\nAdd the aura from spell #spellid to the selected Unit.');
INSERT INTO command(name, permission, help) VALUES
('ban', 239, 'Syntax: .ban $subcommand\nType .ban to see the list of possible subcommands or .help ban $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('ban account', 240, 'Syntax: .ban account $Name $bantime $reason\r\nBan account kick player.\r\n$bantime: negative value leads to permban, otherwise use a timestring like "4d20h3s".');
INSERT INTO command(name, permission, help) VALUES
('ban character', 241, 'Syntax: .ban character $Name $bantime $reason\nBan character and kick player.\n$bantime: negative value leads to permban, otherwise use a timestring like "4d20h3s".');
INSERT INTO command(name, permission, help) VALUES
('ban ip', 242, 'Syntax: .ban ip $Ip $bantime $reason\r\nBan IP.\r\n$bantime: negative value leads to permban, otherwise use a timestring like "4d20h3s".');
INSERT INTO command(name, permission, help) VALUES
('ban playeraccount', 243, 'Syntax: .ban playeraccount $Name $bantime $reason\nBan account and kick player.\n$bantime: negative value leads to permban, otherwise use a timestring like "4d20h3s".');
INSERT INTO command(name, permission, help) VALUES
('baninfo', 244, 'Syntax: .baninfo $subcommand\nType .baninfo to see the list of possible subcommands or .help baninfo $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('baninfo account', 245, 'Syntax: .baninfo account $accountid\r\nWatch full information about a specific ban.');
INSERT INTO command(name, permission, help) VALUES
('baninfo character', 246, 'Syntax: .baninfo character $charactername \r\nWatch full information about a specific ban.');
INSERT INTO command(name, permission, help) VALUES
('baninfo ip', 247, 'Syntax: .baninfo ip $ip\r\nWatch full information about a specific ban.');
INSERT INTO command(name, permission, help) VALUES
('bank', 492, 'Syntax: .bank\r\n\r\nShow your bank inventory.');
INSERT INTO command(name, permission, help) VALUES
('banlist', 248, 'Syntax: .banlist $subcommand\nType .banlist to see the list of possible subcommands or .help banlist $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('banlist account', 249, 'Syntax: .banlist account [$Name]\r\nSearches the banlist for a account name pattern or show full list account bans.');
INSERT INTO command(name, permission, help) VALUES
('banlist character', 250, 'Syntax: .banlist character $Name\r\nSearches the banlist for a character name pattern. Pattern required.');
INSERT INTO command(name, permission, help) VALUES
('banlist ip', 251, 'Syntax: .banlist ip [$Ip]\r\nSearches the banlist for a IP pattern or show full list of IP bans.');
INSERT INTO command(name, permission, help) VALUES
('bg queue', 0, 'Syntax: .bg stats queued\r\nGives information of players queued to join BGs/Arenas');
INSERT INTO command(name, permission, help) VALUES
('bg stats', 0, 'Syntax: .bg stats #BgId #BracketId\r\nGives stats creation of given BGId and BracketId. If those params are not specified then gives information about all BGId/BracketId');
INSERT INTO command(name, permission, help) VALUES
('bg stats clear', 0, 'Syntax: .bg stats clear\r\nClears all stadistics about bg creation');
INSERT INTO command(name, permission, help) VALUES
('bg stats full', 0, 'Syntax: .bg stats full\r\nSame as .bg stats but also gives bracket info for each bg');
INSERT INTO command(name, permission, help) VALUES
('bindsight', 493, 'Syntax: .bindsight\r\n\r\nBinds vision to the selected unit indefinitely. Cannot be used while currently possessing a target.');
INSERT INTO command(name, permission, help) VALUES
('cast', 267, 'Syntax: .cast #spellid [triggered]\r\n  Cast #spellid to selected target. If no target selected cast to self. If ''trigered'' or part provided then spell casted with triggered flag.');
INSERT INTO command(name, permission, help) VALUES
('cast back', 268, 'Syntax: .cast back #spellid [triggered]\r\n  Selected target will cast #spellid to your character. If ''trigered'' or part provided then spell casted with triggered flag.');
INSERT INTO command(name, permission, help) VALUES
('cast dist', 269, 'Syntax: .cast dist #spellid [#dist [triggered]]\r\n  You will cast spell to pint at distance #dist. If ''trigered'' or part provided then spell casted with triggered flag. Not all spells can be casted as area spells.');
INSERT INTO command(name, permission, help) VALUES
('cast self', 270, 'Syntax: .cast self #spellid [triggered]\r\nCast #spellid by target at target itself. If ''trigered'' or part provided then spell casted with triggered flag.');
INSERT INTO command(name, permission, help) VALUES
('cast target', 271, 'Syntax: .cast target #spellid [triggered]\r\n  Selected target will cast #spellid to his victim. If ''trigered'' or part provided then spell casted with triggered flag.');
INSERT INTO command(name, permission, help) VALUES
('character changefaction', 275, 'Syntax: .character changefaction $name\r\n\r\nChange character faction.');
INSERT INTO command(name, permission, help) VALUES
('character changerace', 276, 'Syntax: .character changerace $name\r\n\r\nChange character race.');
INSERT INTO command(name, permission, help) VALUES
('character customize', 274, 'Syntax: .character customize [$name]\r\n\r\nMark selected in game or by $name in command character for customize at next login.');
INSERT INTO command(name, permission, help) VALUES
('character deleted delete', 278, 'Syntax: .character deleted delete #guid|$name\r\n\r\nCompletely deletes the selected characters.\r\nIf $name is supplied, only characters with that string in their name will be deleted, if #guid is supplied, only the character with that GUID will be deleted.');
INSERT INTO command(name, permission, help) VALUES
('character deleted list', 279, 'Syntax: .character deleted list [#guid|$name]\r\n\r\nShows a list with all deleted characters.\r\nIf $name is supplied, only characters with that string in their name will be selected, if #guid is supplied, only the character with that GUID will be selected.');
INSERT INTO command(name, permission, help) VALUES
('character deleted old', 281, 'Syntax: .character deleted old [#keepDays]\r\n\r\nCompletely deletes all characters with deleted time longer #keepDays. If #keepDays not provided the  used value from mangosd.conf option ''CharDelete.KeepDays''. If referenced config option disabled (use 0 value) then command can''t be used without #keepDays.');
INSERT INTO command(name, permission, help) VALUES
('character deleted restore', 280, 'Syntax: .character deleted restore #guid|$name [$newname] [#new account]\r\n\r\nRestores deleted characters.\r\nIf $name is supplied, only characters with that string in their name will be restored, if $guid is supplied, only the character with that GUID will be restored.\r\nIf $newname is set, the character will be restored with that name instead of the original one. If #newaccount is set, the character will be restored to specific account character list. This works only with one character!');
INSERT INTO command(name, permission, help) VALUES
('character erase', 282, 'Syntax: .character erase $name\r\n\r\nDelete character $name. Character finally deleted in case any deleting options.');
INSERT INTO command(name, permission, help) VALUES
('character level', 283, 'Syntax: .character level [$playername] [#level]\r\n\r\nSet the level of character with $playername (or the selected if not name provided) by #numberoflevels Or +1 if no #numberoflevels provided). If #numberoflevels is omitted, the level will be increase by 1. If #numberoflevels is 0, the same level will be restarted. If no character is selected and name not provided, increase your level. Command can be used for offline character. All stats and dependent values recalculated. At level decrease talents can be reset if need. Also at level decrease equipped items with greater level requirement can be lost.');
INSERT INTO command(name, permission, help) VALUES
('character rename', 284, 'Syntax: .character rename [$name] [$newName] \n\nMark selected in game or by $name in command character for rename at next login.\n\nIf $newName then the player will be forced rename.');
INSERT INTO command(name, permission, help) VALUES
('character reputation', 285, 'Syntax: .character reputation [$player_name]\r\n\r\nShow reputation information for selected player or player find by $player_name.');
INSERT INTO command(name, permission, help) VALUES
('character titles', 286, 'Syntax: .character titles [$player_name]\r\n\r\nShow known titles list for selected player or player find by $player_name.');
INSERT INTO command(name, permission, help) VALUES
('combatstop', 494, 'Syntax: .combatstop [$playername]\r\nStop combat for selected character. If selected non-player then command applied to self. If $playername provided then attempt applied to online player $playername.');
INSERT INTO command(name, permission, help) VALUES
('cometome', 495, 'SYntax: .cometome $parameter\nMake selected creature come to your current location (new position not saved to DB).');
INSERT INTO command(name, permission, help) VALUES
('commands', 496, 'Syntax: .commands\r\n\r\nDisplay a list of available commands for your account level.');
INSERT INTO command(name, permission, help) VALUES
('cooldown', 497, 'Syntax: .cooldown [#spell_id]\r\n\r\nRemove all (if spell_id not provided) or #spel_id spell cooldown from selected character or you (if no selection).');
INSERT INTO command(name, permission, help) VALUES
('damage', 498, 'Syntax: .damage $damage_amount [$school [$spellid]]\r\n\r\nApply $damage to target. If not $school and $spellid provided then this flat clean melee damage without any modifiers. If $school provided then damage modified by armor reduction (if school physical), and target absorbing modifiers and result applied as melee damage to target. If spell provided then damage modified and applied as spell damage. $spellid can be shift-link.');
INSERT INTO command(name, permission, help) VALUES
('debug', 300, 'Syntax: .debug $subcommand\nType .debug to see the list of possible subcommands or .help debug $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('debug arena', 303, 'Syntax: .debug arena\r\n\r\nToggle debug mode for arenas. In debug mode GM can start arena with single player.');
INSERT INTO command(name, permission, help) VALUES
('debug bg', 304, 'Syntax: .debug bg\r\n\r\nToggle debug mode for battlegrounds. In debug mode GM can start battleground with single player.');
INSERT INTO command(name, permission, help) VALUES
('debug Mod32Value', 313, 'Syntax: .debug Mod32Value #field #value\r\n\r\nAdd #value to field #field of your character.');
INSERT INTO command(name, permission, help) VALUES
('debug phase', 776, 'Syntax: .debug phase\r\n\r\nSends a phase debug report of a player to you.');
INSERT INTO command(name, permission, help) VALUES
('debug play cinematic', 316, 'Syntax: .debug play cinematic #cinematicid\r\n\r\nPlay cinematic #cinematicid for you. You stay at place while your mind fly.\r\n');
INSERT INTO command(name, permission, help) VALUES
('debug play movie', 317, 'Syntax: .debug play movie #movieid\r\n\r\nPlay movie #movieid for you.');
INSERT INTO command(name, permission, help) VALUES
('debug play sound', 318, 'Syntax: .debug play sound #soundid\r\n\r\nPlay sound with #soundid.\r\nSound will be play only for you. Other players do not hear this.\r\nWarning: client may have more 5000 sounds...');
INSERT INTO command(name, permission, help) VALUES
('demorph', 543, 'Syntax: .demorph\r\n\r\nDemorph the selected player.');
INSERT INTO command(name, permission, help) VALUES
('die', 500, 'Syntax: .die\r\n\r\nKill the selected player. If no player is selected, it will kill you.');
INSERT INTO command(name, permission, help) VALUES
('dismount', 501, 'Syntax: .dismount\r\n\r\nDismount you, if you are mounted.');
INSERT INTO command(name, permission, help) VALUES
('distance', 502, 'Syntax: .distance\r\n\r\nDisplay the distance from your character to the selected creature.');
INSERT INTO command(name, permission, help) VALUES
('event', 367, 'Syntax: .event #event_id\r\nShow details about event with #event_id.');
INSERT INTO command(name, permission, help) VALUES
('event activelist', 368, 'Syntax: .event activelist\r\nShow list of currently active events.');
INSERT INTO command(name, permission, help) VALUES
('event start', 369, 'Syntax: .event start #event_id\r\nStart event #event_id. Set start time for event to current moment (change not saved in DB).');
INSERT INTO command(name, permission, help) VALUES
('event stop', 370, 'Syntax: .event stop #event_id\r\nStop event #event_id. Set start time for event to time in past that make current moment is event stop time (change not saved in DB).');
INSERT INTO command(name, permission, help) VALUES
('explorecheat', 0, 'Syntax: .explorecheat #flag\r\n\r\nReveal  or hide all maps for the selected player. If no player is selected, hide or reveal maps to you.\r\n\r\nUse a #flag of value 1 to reveal, use a #flag value of 0 to hide all maps.');
INSERT INTO command(name, permission, help) VALUES
('flusharenapoints', 503, 'Syntax: .flusharenapoints\r\n\r\nUse it to distribute arena points based on arena team ratings, and start a new week.');
INSERT INTO command(name, permission, help) VALUES
('freeze', 504, 'Syntax: .freeze (#player)\r\n"Freezes" #player and disables his chat. When using this without #name it will freeze your target.');
INSERT INTO command(name, permission, help) VALUES
('gearscore', 0, 'Syntax: .gearscore [#withBags] [#withBank]\r\n\r\nShow selected player''s gear score. Check items in bags if #withBags != 0 and check items in Bank if #withBank != 0. Default: 1 for bags and 0 for bank');
INSERT INTO command(name, permission, help) VALUES
('gm', 371, 'Syntax: .gm [on/off]\r\n\r\nEnable or Disable in game GM MODE or show current state of on/off not provided.');
INSERT INTO command(name, permission, help) VALUES
('gm chat', 372, 'Syntax: .gm chat [on/off]\r\n\r\nEnable or disable chat GM MODE (show gm badge in messages) or show current state of on/off not provided.');
INSERT INTO command(name, permission, help) VALUES
('gm fly', 373, 'Syntax: .gm fly [on/off]\r\nEnable/disable gm fly mode.');
INSERT INTO command(name, permission, help) VALUES
('gm ingame', 374, 'Syntax: .gm ingame\r\n\r\nDisplay a list of available in game Game Masters.');
INSERT INTO command(name, permission, help) VALUES
('gm list', 375, 'Syntax: .gm list\r\n\r\nDisplay a list of all Game Masters accounts and security levels.');
INSERT INTO command(name, permission, help) VALUES
('gm visible', 376, 'Syntax: .gm visible on/off\r\n\r\nOutput current visibility state or make GM visible(on) and invisible(off) for other players.');
INSERT INTO command(name, permission, help) VALUES
('gmannounce', 466, 'Syntax: .gmannounce $announcement\r\nSend an announcement to online Gamemasters.');
INSERT INTO command(name, permission, help) VALUES
('gmnameannounce', 467, 'Syntax: .gmnameannounce $announcement.\r\nSend an announcement to all online GM''s, displaying the name of the sender.');
INSERT INTO command(name, permission, help) VALUES
('gmnotify', 468, 'Syntax: .gmnotify $notification\r\nDisplays a notification on the screen of all online GM''s.');
INSERT INTO command(name, permission, help) VALUES
('go', 377, 'Syntax: .go $subcommand\nType .go to see the list of possible subcommands or .help go $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('go creature', 378, 'Syntax: .go creature #creature_guid\r\nTeleport your character to creature with guid #creature_guid.\r\n.gocreature #creature_name\r\nTeleport your character to creature with this name.\r\n.gocreature id #creature_id\r\nTeleport your character to a creature that was spawned from the template with this entry.\r\n*If* more than one creature is found, then you are teleported to the first that is found inside the database.');
INSERT INTO command(name, permission, help) VALUES
('go graveyard', 379, 'Syntax: .go graveyard #graveyardId\r\n Teleport to graveyard with the graveyardId specified.');
INSERT INTO command(name, permission, help) VALUES
('go grid', 380, 'Syntax: .go grid #gridX #gridY [#mapId]\r\n\r\nTeleport the gm to center of grid with provided indexes at map #mapId (or current map if it not provided).');
INSERT INTO command(name, permission, help) VALUES
('go object', 381, 'Syntax: .go object #object_guid\r\nTeleport your character to gameobject with guid #object_guid');
INSERT INTO command(name, permission, help) VALUES
('go taxinode', 382, 'Syntax: .go taxinode #taxinode\r\n\r\nTeleport player to taxinode coordinates. You can look up zone using .lookup taxinode $namepart');
INSERT INTO command(name, permission, help) VALUES
('go ticket', 383, 'Syntax: .go ticket #ticketid\r\nTeleports the user to the location where $ticketid was created.');
INSERT INTO command(name, permission, help) VALUES
('go trigger', 384, 'Syntax: .go trigger #trigger_id\r\n\r\nTeleport your character to areatrigger with id #trigger_id. Character will be teleported to trigger target if selected areatrigger is telporting trigger.');
INSERT INTO command(name, permission, help) VALUES
('go xy', 0, 'Syntax: .go xy #x #y [#mapid]\r\n\r\nTeleport player to point with (#x,#y) coordinates at ground(water) level at map #mapid or same map if #mapid not provided.');
INSERT INTO command(name, permission, help) VALUES
('go xyz', 385, 'Syntax: .go xyz #x #y [#z [#mapid [#orientation]]]\r\n\r\nTeleport player to point with (#x,#y,#z) coordinates at map #mapid with orientation #orientation. If z is not provided, ground/water level will be used. If mapid is not provided, the current map will be used. If #orientation is not provided, the current orientation will be used.');
INSERT INTO command(name, permission, help) VALUES
('go zonexy', 386, 'Syntax: .go zonexy #x #y [#zone]\r\n\r\nTeleport player to point with (#x,#y) client coordinates at ground(water) level in zone #zoneid or current zone if #zoneid not provided. You can look up zone using .lookup area $namepart');
INSERT INTO command(name, permission, help) VALUES
('gobject', 387, 'Syntax: .gobject $subcommand\nType .gobject to see the list of possible subcommands or .help gobject $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('gobject activate', 388, 'Syntax: .gobject activate #guid\r\n\r\nActivates an object like a door or a button.');
INSERT INTO command(name, permission, help) VALUES
('gobject add', 389, 'Syntax: .gobject add #id <spawntimeSecs>\r\n\r\nAdd a game object from game object templates to the world at your current location using the #id.\r\nspawntimesecs sets the spawntime, it is optional.\r\n\r\nNote: this is a copy of .gameobject.');
INSERT INTO command(name, permission, help) VALUES
('gobject add temp', 390, 'Adds a temporary gameobject that is not saved to DB.');
INSERT INTO command(name, permission, help) VALUES
('gobject delete', 391, 'Syntax: .gobject delete #go_guid\r\nDelete gameobject with guid #go_guid.');
INSERT INTO command(name, permission, help) VALUES
('gobject info', 392, 'Syntax: .gobject info [$object_entry]\r \r Query Gameobject information for selected gameobject or given entry.');
INSERT INTO command(name, permission, help) VALUES
('gobject move', 393, 'Syntax: .gobject move #goguid [#x #y #z]\r\n\r\nMove gameobject #goguid to character coordinates (or to (#x,#y,#z) coordinates if its provide).');
INSERT INTO command(name, permission, help) VALUES
('gobject near', 394, 'Syntax: .gobject near  [#distance]\r\n\r\nOutput gameobjects at distance #distance from player. Output gameobject guids and coordinates sorted by distance from character. If #distance not provided use 10 as default value.');
INSERT INTO command(name, permission, help) VALUES
('gobject set phase', 396, 'Syntax: .gobject set phase #guid #phasemask\r\n\r\nGameobject with DB guid #guid phasemask changed to #phasemask with related world vision update for players. Gameobject state saved to DB and persistent.');
INSERT INTO command(name, permission, help) VALUES
('gobject target', 398, 'Syntax: .gobject target [#go_id|#go_name_part]\r\n\r\nLocate and show position nearest gameobject. If #go_id or #go_name_part provide then locate and show position of nearest gameobject with gameobject template id #go_id or name included #go_name_part as part.');
INSERT INTO command(name, permission, help) VALUES
('gobject turn', 399, 'Syntax: .gobject turn #goguid \r\n\r\nSet for gameobject #goguid orientation same as current character orientation.');
INSERT INTO command(name, permission, help) VALUES
('gps', 505, 'Syntax: .gps [$name|$shift-link]\r\n\r\nDisplay the position information for a selected character or creature (also if player name $name provided then for named player, or if creature/gameobject shift-link provided then pointed creature/gameobject if it loaded). Position information includes X, Y, Z, and orientation, map Id and zone Id');
INSERT INTO command(name, permission, help) VALUES
('group summon', 478, 'Syntax: .group summon [$charactername]\r\n\r\nTeleport the given character and his group to you. Teleported only online characters but original selected group member can be offline.');
INSERT INTO command(name, permission, help) VALUES
('guid', 506, 'Syntax: .guid\r\n\r\nDisplay the GUID for the selected character.');
INSERT INTO command(name, permission, help) VALUES
('guild', 401, 'Syntax: .guild $subcommand\nType .guild to see the list of possible subcommands or .help guild $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('guild create', 402, 'Syntax: .guild create [$GuildLeaderName] "$GuildName"\r\n\r\nCreate a guild named $GuildName with the player $GuildLeaderName (or selected) as leader.  Guild name must in quotes.');
INSERT INTO command(name, permission, help) VALUES
('guild delete', 403, 'Syntax: .guild delete "$GuildName"\r\n\r\nDelete guild $GuildName. Guild name must in quotes.');
INSERT INTO command(name, permission, help) VALUES
('guild invite', 404, 'Syntax: .guild invite [$CharacterName] "$GuildName"\r\n\r\nAdd player $CharacterName (or selected) into a guild $GuildName. Guild name must in quotes.');
INSERT INTO command(name, permission, help) VALUES
('guild rank', 406, 'Syntax: .guild rank [$CharacterName] #Rank\r\n\r\nSet for player $CharacterName (or selected) rank #Rank in a guild.');
INSERT INTO command(name, permission, help) VALUES
('guild uninvite', 405, 'Syntax: .guild uninvite [$CharacterName]\r\n\r\nRemove player $CharacterName (or selected) from a guild.');
INSERT INTO command(name, permission, help) VALUES
('help', 507, 'Syntax: .help [$command]\r\n\r\nDisplay usage instructions for the given $command. If no $command provided show list available commands.');
INSERT INTO command(name, permission, help) VALUES
('hidearea', 508, 'Syntax: .hidearea #areaid\r\n\r\nHide the area of #areaid to the selected character. If no character is selected, hide this area to you.');
INSERT INTO command(name, permission, help) VALUES
('honor', 408, 'Syntax: .honor $subcommand\nType .honor to see the list of possible subcommands or .help honor $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('honor add', 409, 'Syntax: .honor add $amount\r\n\r\nAdd a certain amount of honor (gained today) to the selected player.');
INSERT INTO command(name, permission, help) VALUES
('honor add kill', 410, 'Syntax: .honor add kill\r\n\r\nAdd the targeted unit as one of your pvp kills today (you only get honor if it''s a racial leader or a player)');
INSERT INTO command(name, permission, help) VALUES
('honor update', 411, 'Syntax: .honor update\r\n\r\nForce the yesterday''s honor fields to be updated with today''s data, which will get reset for the selected player.');
INSERT INTO command(name, permission, help) VALUES
('hover', 0, 'Syntax: .hover #flag\r\n\r\nEnable or disable hover mode for your character.\r\n\r\nUse a #flag of value 1 to enable, use a #flag value of 0 to disable hover.');
INSERT INTO command(name, permission, help) VALUES
('instance', 412, 'Syntax: .instance $subcommand\nType .instance to see the list of possible subcommands or .help instance $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('instance listbinds', 413, 'Syntax: .instance listbinds\r\n  Lists the binds of the selected player.');
INSERT INTO command(name, permission, help) VALUES
('instance savedata', 416, 'Syntax: .instance savedata\r\n  Save the InstanceData for the current player''s map to the DB.');
INSERT INTO command(name, permission, help) VALUES
('instance stats', 415, 'Syntax: .instance stats\r\n  Shows statistics about instances.');
INSERT INTO command(name, permission, help) VALUES
('instance unbind', 414, 'Syntax: .instance unbind <mapid|all> [difficulty]\r\n  Clear all/some of player''s binds');
INSERT INTO command(name, permission, help) VALUES
('itemmove', 509, 'Syntax: .itemmove #sourceslotid #destinationslotid\r\n\r\nMove an item from slots #sourceslotid to #destinationslotid in your inventory\r\n\r\nNot yet implemented');
INSERT INTO command(name, permission, help) VALUES
('kick', 510, 'Syntax: .kick [$charactername] [$reason]\r\n\r\nKick the given character name from the world with or without reason. If no character name is provided then the selected player (except for yourself) will be kicked. If no reason is provided, default is "No Reason".');
INSERT INTO command(name, permission, help) VALUES
('learn', 417, 'Syntax: .learn #spell [all]\r\n\r\nSelected character learn a spell of id #spell. If ''all'' provided then all ranks learned.');
INSERT INTO command(name, permission, help) VALUES
('learn all', 418, 'Syntax: .learn all\r\n\r\nLearn all big set different spell maybe useful for Administaror.');
INSERT INTO command(name, permission, help) VALUES
('levelup', 287, 'Syntax: .levelup [$playername] [#numberoflevels]\r\n\r\nIncrease/decrease the level of character with $playername (or the selected if not name provided) by #numberoflevels Or +1 if no #numberoflevels provided). If #numberoflevels is omitted, the level will be increase by 1. If #numberoflevels is 0, the same level will be restarted. If no character is selected and name not provided, increase your level. Command can be used for offline character. All stats and dependent values recalculated. At level decrease talents can be reset if need. Also at level decrease equipped items with greater level requirement can be lost.');
INSERT INTO command(name, permission, help) VALUES
('linkgrave', 511, 'Syntax: .linkgrave #graveyard_id [alliance|horde]\r\n\r\nLink current zone to graveyard for any (or alliance/horde faction ghosts). This let character ghost from zone teleport to graveyard after die if graveyard is nearest from linked to zone and accept ghost of this faction. Add only single graveyard at another map and only if no graveyards linked (or planned linked at same map).');
INSERT INTO command(name, permission, help) VALUES
('list', 436, 'Syntax: .list $subcommand\nType .list to see the list of possible subcommands or .help list $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('list auras', 440, 'Syntax: .list auras\nList auras (passive and active) of selected creature or player. If no creature or player is selected, list your own auras.');
INSERT INTO command(name, permission, help) VALUES
('list creature', 437, 'Syntax: .list creature #creature_id [#max_count]\r\n\r\nOutput creatures with creature id #creature_id found in world. Output creature guids and coordinates sorted by distance from character. Will be output maximum #max_count creatures. If #max_count not provided use 10 as default value.');
INSERT INTO command(name, permission, help) VALUES
('list item', 438, 'Syntax: .list item #item_id [#max_count]\r\n\r\nOutput items with item id #item_id found in all character inventories, mails, auctions, and guild banks. Output item guids, item owner guid, owner account and owner name (guild name and guid in case guild bank). Will be output maximum #max_count items. If #max_count not provided use 10 as default value.');
INSERT INTO command(name, permission, help) VALUES
('list object', 439, 'Syntax: .list object #gameobject_id [#max_count]\r\n\r\nOutput gameobjects with gameobject id #gameobject_id found in world. Output gameobject guids and coordinates sorted by distance from character. Will be output maximum #max_count gameobject. If #max_count not provided use 10 as default value.');
INSERT INTO command(name, permission, help) VALUES
('listfreeze', 512, 'Syntax: .listfreeze\r\n\r\nSearch and output all frozen players.');
INSERT INTO command(name, permission, help) VALUES
('lookup', 442, 'Syntax: .lookup $subcommand\nType .lookup to see the list of possible subcommands or .help lookup $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('lookup area', 443, 'Syntax: .lookup area $namepart\r\n\r\nLooks up an area by $namepart, and returns all matches with their area ID''s.');
INSERT INTO command(name, permission, help) VALUES
('lookup creature', 444, 'Syntax: .lookup creature $namepart\r\n\r\nLooks up a creature by $namepart, and returns all matches with their creature ID''s.');
INSERT INTO command(name, permission, help) VALUES
('lookup event', 445, 'Syntax: .lookup event $name\r\nAttempts to find the ID of the event with the provided $name.');
INSERT INTO command(name, permission, help) VALUES
('lookup faction', 446, 'Syntax: .lookup faction $name\r\nAttempts to find the ID of the faction with the provided $name.');
INSERT INTO command(name, permission, help) VALUES
('lookup item', 447, 'Syntax: .lookup item $itemname\r\n\r\nLooks up an item by $itemname, and returns all matches with their Item ID''s.');
INSERT INTO command(name, permission, help) VALUES
('lookup itemset', 448, 'Syntax: .lookup itemset $itemname\r\n\r\nLooks up an item set by $itemname, and returns all matches with their Item set ID''s.');
INSERT INTO command(name, permission, help) VALUES
('lookup map', 461, 'Syntax: .lookup map $namepart\r\n\r\nLooks up a map by $namepart, and returns all matches with their map ID''s.');
INSERT INTO command(name, permission, help) VALUES
('lookup npc', 0, 'Syntax: .lookup npc $namepart\r\n\r\nLooks up a npc by $namepart, and returns all matches with their npc ID''s.');
INSERT INTO command(name, permission, help) VALUES
('lookup object', 449, 'Syntax: .lookup object $objname\r\n\r\nLooks up an gameobject by $objname, and returns all matches with their Gameobject ID''s.');
INSERT INTO command(name, permission, help) VALUES
('lookup player account', 453, 'Syntax: .lookup player account $account ($limit) \r\n\r\n Searchs players, which account username is $account with optional parametr $limit of results.');
INSERT INTO command(name, permission, help) VALUES
('lookup player email', 454, 'Syntax: .lookup player email $email ($limit) \r\n\r\n Searchs players, which account email is $email with optional parametr $limit of results.');
INSERT INTO command(name, permission, help) VALUES
('lookup player ip', 452, 'Syntax: .lookup player ip $ip ($limit) \r\n\r\n Searchs players, which account ast_ip is $ip with optional parametr $limit of results.');
INSERT INTO command(name, permission, help) VALUES
('lookup quest', 450, 'Syntax: .lookup quest $namepart\r\n\r\nLooks up a quest by $namepart, and returns all matches with their quest ID''s.');
INSERT INTO command(name, permission, help) VALUES
('lookup skill', 455, 'Syntax: .lookup skill $$namepart\r\n\r\nLooks up a skill by $namepart, and returns all matches with their skill ID''s.');
INSERT INTO command(name, permission, help) VALUES
('lookup spell', 456, 'Syntax: .lookup spell $namepart\r\n\r\nLooks up a spell by $namepart, and returns all matches with their spell ID''s.');
INSERT INTO command(name, permission, help) VALUES
('lookup taxinode', 458, 'Syntax: .lookup taxinode $substring\r\n\r\nSearch and output all taxinodes with provide $substring in name.');
INSERT INTO command(name, permission, help) VALUES
('lookup tele', 459, 'Syntax: .lookup tele $substring\r\n\r\nSearch and output all .tele command locations with provide $substring in name.');
INSERT INTO command(name, permission, help) VALUES
('lookup title', 460, 'Syntax: .lookup title $$namepart\r\n\r\nLooks up a title by $namepart, and returns all matches with their title ID''s and index''s.');
INSERT INTO command(name, permission, help) VALUES
('modify', 544, 'Syntax: .modify $subcommand\nType .modify to see the list of possible subcommands or .help modify $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('modify bit', 546, 'Syntax: .modify bit #field #bit\r\n\r\nToggle the #bit bit of the #field field for the selected player. If no player is selected, modify your character.');
INSERT INTO command(name, permission, help) VALUES
('modify drunk', 547, 'Syntax: .modify drunk #value\r\n Set drunk level to #value (0..100). Value 0 remove drunk state, 100 is max drunked state.');
INSERT INTO command(name, permission, help) VALUES
('modify energy', 548, 'Syntax: .modify energy #energy\r\n\r\nModify the energy of the selected player. If no player is selected, modify your energy.');
INSERT INTO command(name, permission, help) VALUES
('modify faction', 549, 'Syntax: .modify faction #factionid #flagid #npcflagid #dynamicflagid\r\n\r\nModify the faction and flags of the selected creature. Without arguments, display the faction and flags of the selected creature.');
INSERT INTO command(name, permission, help) VALUES
('modify gender', 550, 'Syntax: .modify gender male/female\r\n\r\nChange gender of selected player.');
INSERT INTO command(name, permission, help) VALUES
('modify honor', 551, 'Syntax: .modify honor $amount\r\n\r\nAdd $amount honor points to the selected player.');
INSERT INTO command(name, permission, help) VALUES
('modify hp', 552, 'Syntax: .modify hp #newhp\r\n\r\nModify the hp of the selected player. If no player is selected, modify your hp.');
INSERT INTO command(name, permission, help) VALUES
('modify mana', 553, 'Syntax: .modify mana #newmana\r\n\r\nModify the mana of the selected player. If no player is selected, modify your mana.');
INSERT INTO command(name, permission, help) VALUES
('modify money', 554, 'Syntax: .modify money #money\r\n.money #money\r\n\r\nAdd or remove money to the selected player. If no player is selected, modify your money.\r\n\r\n #gold can be negative to remove money.');
INSERT INTO command(name, permission, help) VALUES
('modify mount', 555, 'Syntax: .modify mount #id #speed\r\nDisplay selected player as mounted at #id creature and set speed to #speed value.');
INSERT INTO command(name, permission, help) VALUES
('modify phase', 556, 'Syntax: .modify phase #phasemask\r\n\r\nSelected character phasemask changed to #phasemask with related world vision update. Change active until in game phase changed, or GM-mode enable/disable, or re-login. Character pts pasemask update to same value.');
INSERT INTO command(name, permission, help) VALUES
('modify rage', 557, 'Syntax: .modify rage #newrage\r\n\r\nModify the rage of the selected player. If no player is selected, modify your rage.');
INSERT INTO command(name, permission, help) VALUES
('modify runicpower', 559, 'Syntax: .modify runicpower #newrunicpower\r\n\r\nModify the runic power of the selected player. If no player is selected, modify your runic power.');
INSERT INTO command(name, permission, help) VALUES
('modify scale', 560, '.modify scale #scale\nModify size of the selected player or creature to "normal scale"*rate. If no player or creature is selected, modify your size.\n#rate may range from 0.1 to 10.');
INSERT INTO command(name, permission, help) VALUES
('modify speed', 561, 'Syntax: .modify speed $speedtype #rate\r\n\r\nModify the running speed of the selected player to "normal base run speed"= 1. If no player is selected, modify your speed.\r\n\r\n$speedtypes may be fly, all, walk, backwalk, or swim.\r\n\r\n #rate may range from 0.1 to 50.');
INSERT INTO command(name, permission, help) VALUES
('modify spell', 567, 'TODO');
INSERT INTO command(name, permission, help) VALUES
('modify standstate', 568, 'Syntax: .modify standstate #emoteid\r\n\r\nChange the emote of your character while standing to #emoteid.');
INSERT INTO command(name, permission, help) VALUES
('movegens', 514, 'Syntax: .movegens\r\n  Show movement generators stack for selected creature or player.');
INSERT INTO command(name, permission, help) VALUES
('mute', 515, 'Syntax: .mute [$playerName] $timeInMinutes [$reason]\r\n\r\nDisible chat messaging for any character from account of character $playerName (or currently selected) at $timeInMinutes minutes. Player can be offline.');
INSERT INTO command(name, permission, help) VALUES
('nameannounce', 469, 'Syntax: .nameannounce $announcement.\nSend an announcement to all online players, displaying the name of the sender.');
INSERT INTO command(name, permission, help) VALUES
('neargrave', 516, 'Syntax: .neargrave [alliance|horde]\r\n\r\nFind nearest graveyard linked to zone (or only nearest from accepts alliance or horde faction ghosts).');
INSERT INTO command(name, permission, help) VALUES
('notify', 470, 'Syntax: .notify $MessageToBroadcast\r\n\r\nSend a global message to all players online in screen.');
INSERT INTO command(name, permission, help) VALUES
('npc', 570, 'Syntax: .npc $subcommand\nType .npc to see the list of possible subcommands or .help npc $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('npc add', 571, 'Syntax: .npc add #creatureid\r\n\r\nSpawn a creature by the given template id of #creatureid.');
INSERT INTO command(name, permission, help) VALUES
('npc delete', 576, 'Syntax: .npc delete [#guid]\r\n\r\nDelete creature with guid #guid (or the selected if no guid is provided)');
INSERT INTO command(name, permission, help) VALUES
('npc follow', 578, 'Syntax: .npc follow start\r\n\r\nSelected creature start follow you until death/fight/etc.');
INSERT INTO command(name, permission, help) VALUES
('npc info', 593, 'Syntax: .npc info\r\n\r\nDisplay a list of details for the selected creature.\r\n\r\nThe list includes:\r\n- GUID, Faction, NPC flags, Entry ID, Model ID,\r\n- Level,\r\n- Health (current/maximum),\r\n\r\n- Field flags, dynamic flags, faction template, \r\n- Position information,\r\n- and the creature type, e.g. if the creature is a vendor.');
INSERT INTO command(name, permission, help) VALUES
('npc move', 595, 'Syntax: .npc move [#creature_guid]\r\n\r\nMove the targeted creature spawn point to your coordinates.');
INSERT INTO command(name, permission, help) VALUES
('npc playemote', 596, 'Syntax: .npc playemote #emoteid\r\n\r\nMake the selected creature emote with an emote of id #emoteid.');
INSERT INTO command(name, permission, help) VALUES
('npc say', 597, 'Syntax: .npc say $message\nMake selected creature say specified message.');
INSERT INTO command(name, permission, help) VALUES
('npc textemote', 598, 'Syntax: .npc textemote #emoteid\r\n\r\nMake the selected creature to do textemote with an emote of id #emoteid.');
INSERT INTO command(name, permission, help) VALUES
('npc whisper', 599, 'Syntax: .npc whisper #playerguid #text\r\nMake the selected npc whisper #text to  #playerguid.');
INSERT INTO command(name, permission, help) VALUES
('npc yell', 600, 'Syntax: .npc yell $message\nMake selected creature yell specified message.');
INSERT INTO command(name, permission, help) VALUES
('pdump', 288, 'Syntax: .pdump $subcommand\nType .pdump to see the list of possible subcommands or .help pdump $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('pdump load', 289, 'Syntax: .pdump load $filename $account [$newname] [$newguid]\r\nLoad character dump from dump file into character list of $account with saved or $newname, with saved (or first free) or $newguid guid.');
INSERT INTO command(name, permission, help) VALUES
('pdump write', 290, 'Syntax: .pdump write $filename $playerNameOrGUID\r\nWrite character dump with name/guid $playerNameOrGUID to file $filename.');
INSERT INTO command(name, permission, help) VALUES
('pet', 479, 'Syntax: .pet $subcommand\nType .pet to see the list of possible subcommands or .help pet $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('pet create', 480, 'Syntax: .pet create\r\n\r\nCreates a pet of the selected creature.');
INSERT INTO command(name, permission, help) VALUES
('pet learn', 481, 'Syntax: .pet learn\r\n\r\nLearn #spellid to pet.');
INSERT INTO command(name, permission, help) VALUES
('pet unlearn', 482, 'Syntax: .pet unlean\r\n\r\nunLearn #spellid to pet.');
INSERT INTO command(name, permission, help) VALUES
('pinfo', 517, 'Syntax: .pinfo [$player_name/#GUID]\r\n\r\nOutput account information and guild information for selected player or player find by $player_name or #GUID.');
INSERT INTO command(name, permission, help) VALUES
('playall', 518, 'Syntax: .playall #soundid\r\n\r\nPlayer a sound to whole server.');
INSERT INTO command(name, permission, help) VALUES
('possess', 519, 'Syntax: .possess\r\n\r\nPossesses indefinitely the selected creature.');
INSERT INTO command(name, permission, help) VALUES
('qannounce', 1013, 'Syntax: .qannounce $announce\r\n\r\nSend an announcement with QA tag to all online players, displaying the name of the sender.');
INSERT INTO command(name, permission, help) VALUES
('quest', 602, 'Syntax: .quest $subcommand\nType .quest to see the list of possible subcommands or .help quest $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('quest add', 603, 'Syntax: .quest add #quest_id\r\n\r\nAdd to character quest log quest #quest_id. Quest started from item can''t be added by this command but correct .additem call provided in command output.');
INSERT INTO command(name, permission, help) VALUES
('quest complete', 604, 'Syntax: .quest complete #questid\r\nMark all quest objectives as completed for target character active quest. After this target character can go and get quest reward.');
INSERT INTO command(name, permission, help) VALUES
('quest remove', 605, 'Syntax: .quest remove #quest_id\r\n\r\nSet quest #quest_id state to not completed and not active (and remove from active quest list) for selected player.');
INSERT INTO command(name, permission, help) VALUES
('rbac account check', 207, 'Syntax: rbac account check [$account] [$permission]\r\nCheck if the permissions of selected player or given account is granted after all calculations');
INSERT INTO command(name, permission, help) VALUES
('rbac account deny', 204, 'Syntax: rbac account deny [$account] #id [#realmId]\n\nDeny a permission to selected player or given account.\n\n#reamID may be -1 for all realms.');
INSERT INTO command(name, permission, help) VALUES
('rbac account grant', 203, 'Syntax: rbac account grant [$account] #id [#realmId]\n\nGrant a permission to selected player or given account.\n\n#reamID may be -1 for all realms.');
INSERT INTO command(name, permission, help) VALUES
('rbac account list', 202, 'Syntax: rbac account list [$account]\n\nView permissions of selected player or given account\nNote: Only those that affect current realm');
INSERT INTO command(name, permission, help) VALUES
('rbac account revoke', 205, 'Syntax: rbac account revoke [$account] #id\n\nRemove a permission from an account\n\nNote: Removes the permission from granted or denied permissions');
INSERT INTO command(name, permission, help) VALUES
('rbac list', 206, 'Syntax: rbac list [$id]\n\nView list of all permissions. If $id is given will show only info for that permission.');
INSERT INTO command(name, permission, help) VALUES
('recall', 520, 'Syntax: .recall [$playername]\r\n\r\nTeleport $playername or selected player to the place where he has been before last use of a teleportation command. If no $playername is entered and no player is selected, it will teleport you.');
INSERT INTO command(name, permission, help) VALUES
('reload', 607, 'Syntax: .reload $subcommand\nType .reload to see the list of possible subcommands or .help reload $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('reload all', 611, 'Syntax: .reload all\r\n\r\nReload all tables with reload support added and that can be _safe_ reloaded.');
INSERT INTO command(name, permission, help) VALUES
('reload all gossips', 615, 'Syntax: .reload all gossips\nReload gossip_menu, gossip_menu_option, gossip_scripts, points_of_interest tables.');
INSERT INTO command(name, permission, help) VALUES
('reload all item', 616, 'Syntax: .reload all item\nReload page_text, item_enchantment_table tables.');
INSERT INTO command(name, permission, help) VALUES
('reload all locales', 617, 'Syntax: .reload all locales\r\n\r\nReload all `locales_*` tables with reload support added and that can be _safe_ reloaded.');
INSERT INTO command(name, permission, help) VALUES
('reload all loot', 618, 'Syntax: .reload all loot\r\n\r\nReload all `*_loot_template` tables. This can be slow operation with lags for server run.');
INSERT INTO command(name, permission, help) VALUES
('reload all npc', 619, 'Syntax: .reload all npc\nReload npc_option, npc_trainer, npc vendor, points of interest tables.');
INSERT INTO command(name, permission, help) VALUES
('reload all quest', 620, 'Syntax: .reload all quest\r\n\r\nReload all quest related tables if reload support added for this table and this table can be _safe_ reloaded.');
INSERT INTO command(name, permission, help) VALUES
('reload all scripts', 621, 'Syntax: .reload all scripts\nReload gameobject_scripts, event_scripts, quest_end_scripts, quest_start_scripts, spell_scripts, db_script_string, waypoint_scripts tables.');
INSERT INTO command(name, permission, help) VALUES
('reload all spell', 622, 'Syntax: .reload all spell\r\n\r\nReload all `spell_*` tables with reload support added and that can be _safe_ reloaded.');
INSERT INTO command(name, permission, help) VALUES
('reload areatrigger_involvedrelation', 623, 'Syntax: .reload areatrigger_involvedrelation\nReload areatrigger_involvedrelation table.');
INSERT INTO command(name, permission, help) VALUES
('reload areatrigger_tavern', 624, 'Syntax: .reload areatrigger_tavern\nReload areatrigger_tavern table.');
INSERT INTO command(name, permission, help) VALUES
('reload areatrigger_teleport', 625, 'Syntax: .reload areatrigger_teleport\nReload areatrigger_teleport table.');
INSERT INTO command(name, permission, help) VALUES
('reload autobroadcast', 627, 'Syntax: .reload autobroadcast\nReload autobroadcast table.');
INSERT INTO command(name, permission, help) VALUES
('reload command', 628, 'Syntax: .reload command\nReload command table.');
INSERT INTO command(name, permission, help) VALUES
('reload conditions', 629, 'Reload conditions table.');
INSERT INTO command(name, permission, help) VALUES
('reload config', 630, 'Syntax: .reload config\r\n\r\nReload config settings (by default stored in trinityd.conf). Not all settings can be change at reload: some new setting values will be ignored until restart, some values will applied with delay or only to new objects/maps, some values will explicitly rejected to change at reload.');
INSERT INTO command(name, permission, help) VALUES
('reload creature_linked_respawn', 635, 'Syntax: .reload creature_linked_respawn\r\nReload creature_linked_respawn table.');
INSERT INTO command(name, permission, help) VALUES
('reload creature_loot_template', 636, 'Syntax: .reload creature_loot_template\nReload creature_loot_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload creature_questender', 634, 'Syntax: .reload creature_questender\nReload creature_questender table.');
INSERT INTO command(name, permission, help) VALUES
('reload creature_queststarter', 638, 'Syntax: .reload creature_queststarter\nReload creature_queststarter table.');
INSERT INTO command(name, permission, help) VALUES
('reload creature_summon_groups', 639, 'Syntax: .reload creature_summon_groups\nReload creature_summon_groups table.');
INSERT INTO command(name, permission, help) VALUES
('reload creature_template', 640, 'Syntax: .reload creature_template $entry\r\nReload the specified creature''s template.');
INSERT INTO command(name, permission, help) VALUES
('reload creature_text', 631, 'Syntax: .reload creature_text\r\nReload creature_text table.');
INSERT INTO command(name, permission, help) VALUES
('reload disables', 641, 'Syntax: .reload disables\r\nReload disables table.');
INSERT INTO command(name, permission, help) VALUES
('reload disenchant_loot_template', 642, 'Syntax: .reload disenchant_loot_template\nReload disenchant_loot_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload event_scripts', 643, 'Syntax: .reload event_scripts\nReload event_scripts table.');
INSERT INTO command(name, permission, help) VALUES
('reload fishing_loot_template', 644, 'Syntax: .reload fishing_loot_template\nReload fishing_loot_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload game_graveyard_zone', 645, 'Syntax: .reload game_graveyard_zone\nReload game_graveyard_zone table.');
INSERT INTO command(name, permission, help) VALUES
('reload game_tele', 646, 'Syntax: .reload game_tele\nReload game_tele table.');
INSERT INTO command(name, permission, help) VALUES
('reload gameobject_loot_template', 648, 'Syntax: .reload gameobject_loot_template\nReload gameobject_loot_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload gameobject_questender', 647, 'Syntax: .reload gameobject_questender\\nReload gameobject_questender table.');
INSERT INTO command(name, permission, help) VALUES
('reload gameobject_queststarter', 649, 'Syntax: .reload gameobject_queststarter\nReload gameobject_queststarter table.');
INSERT INTO command(name, permission, help) VALUES
('reload gm_tickets', 650, 'Syntax: .reload gm_tickets\nReload gm_tickets table.');
INSERT INTO command(name, permission, help) VALUES
('reload gossip_menu', 651, 'Syntax: .reload gossip_menu\nReload gossip_menu table.');
INSERT INTO command(name, permission, help) VALUES
('reload gossip_menu_option', 652, 'Syntax: .reload gossip_menu_option\nReload gossip_menu_option table.');
INSERT INTO command(name, permission, help) VALUES
('reload item_enchantment_template', 653, 'Syntax: .reload item_enchantment_template\nReload item_enchantment_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload item_loot_template', 654, 'Syntax: .reload item_loot_template\nReload item_loot_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload item_set_names', 655, 'Syntax: .reload item_set_names\nReload item_set_names table.');
INSERT INTO command(name, permission, help) VALUES
('reload lfg_dungeon_rewards', 656, 'Syntax: .reload lfg_dungeon_rewards\nReload lfg_dungeon_rewards table.');
INSERT INTO command(name, permission, help) VALUES
('reload locales_creature', 658, 'Syntax: .reload locales_creature\nReload locales_creature table.');
INSERT INTO command(name, permission, help) VALUES
('reload locales_gameobject', 660, 'Syntax: .reload locales_gameobject\nReload locales_gameobject table.');
INSERT INTO command(name, permission, help) VALUES
('reload locales_gossip_menu_option', 661, 'Syntax: .reload locales_gossip_menu_option\nReload locales_gossip_menu_option table.');
INSERT INTO command(name, permission, help) VALUES
('reload locales_item', 662, 'Syntax: .reload locales_item\nReload locales_item table.');
INSERT INTO command(name, permission, help) VALUES
('reload locales_item_set_name', 663, 'Syntax: .reload locales_item_set_name\nReload locales_item_set_name table.');
INSERT INTO command(name, permission, help) VALUES
('reload locales_npc_text', 664, 'Syntax: .reload locales_npc_text\nReload locales_npc_text table.');
INSERT INTO command(name, permission, help) VALUES
('reload locales_page_text', 665, 'Syntax: .reload locales_page_text\nReload locales_page_text table.');
INSERT INTO command(name, permission, help) VALUES
('reload locales_points_of_interest', 666, 'Syntax: .reload locales_points_of_interest\nReload locales_point_of_interest table.');
INSERT INTO command(name, permission, help) VALUES
('reload locales_quest', 667, 'Syntax: .reload locales_quest\nReload locales_quest table.');
INSERT INTO command(name, permission, help) VALUES
('reload mail_loot_template', 669, 'Syntax: .reload quest_mail_loot_template\nReload quest_mail_loot_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload milling_loot_template', 670, 'Syntax: .reload milling_loot_template\nReload milling_loot_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload npc_trainer', 672, 'Syntax: .reload npc_trainer\nReload npc_trainer table.');
INSERT INTO command(name, permission, help) VALUES
('reload npc_vendor', 673, 'Syntax: .reload npc_vendor\nReload npc_vendor table.');
INSERT INTO command(name, permission, help) VALUES
('reload page_text', 674, 'Syntax: .reload page_text\nReload page_text table.');
INSERT INTO command(name, permission, help) VALUES
('reload pickpocketing_loot_template', 675, 'Syntax: .reload pickpocketing_loot_template\nReload pickpocketing_loot_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload points_of_interest', 676, 'Syntax: .reload points_of_interest\nReload points_of_interest table.');
INSERT INTO command(name, permission, help) VALUES
('reload prospecting_loot_template', 677, 'Syntax: .reload prospecting_loot_template\nReload prospecting_loot_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload quest_end_scripts', 1017, 'Syntax: .reload quest_end_scripts\nReload quest_end_scripts table.');
INSERT INTO command(name, permission, help) VALUES
('reload quest_poi', 678, 'Syntax: .reload quest_poi\nReload quest_poi table.');
INSERT INTO command(name, permission, help) VALUES
('reload quest_start_scripts', 1018, 'Syntax: .reload quest_start_scripts\nReload quest_start_scripts table.');
INSERT INTO command(name, permission, help) VALUES
('reload quest_template', 679, 'Syntax: .reload quest_template\nReload quest_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload reference_loot_template', 681, 'Syntax: .reload reference_loot_template\nReload reference_loot_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload reserved_name', 682, 'Syntax: .reload reserved_name\nReload reserved_name table.');
INSERT INTO command(name, permission, help) VALUES
('reload skill_discovery_template', 685, 'Syntax: .reload skill_discovery_template\nReload skill_discovery_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload skill_extra_item_template', 686, 'Syntax: .reload skill_extra_item_template\nReload skill_extra_item_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload skill_fishing_base_level', 687, 'Syntax: .reload skill_fishing_base_level\nReload skill_fishing_base_level table.');
INSERT INTO command(name, permission, help) VALUES
('reload skinning_loot_template', 688, 'Syntax: .reload skinning_loot_template\nReload skinning_loot_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload smart_scripts', 689, 'Syntax: .reload smart_scripts\nReload smart_scripts table.');
INSERT INTO command(name, permission, help) VALUES
('reload spell_area', 691, 'Syntax: .reload spell_area\nReload spell_area table.');
INSERT INTO command(name, permission, help) VALUES
('reload spell_bonus_data', 692, 'Syntax: .reload spell_bonus_data\nReload spell_bonus_data table.');
INSERT INTO command(name, permission, help) VALUES
('reload spell_group', 693, 'Syntax: .reload spell_group\nReload spell_group table.');
INSERT INTO command(name, permission, help) VALUES
('reload spell_group_stack_rules', 703, 'Syntax: .reload spell_group\nReload spell_group_stack_rules table.');
INSERT INTO command(name, permission, help) VALUES
('reload spell_learn_spell', 694, 'Syntax: .reload spell_learn_spell\nReload spell_learn_spell table.');
INSERT INTO command(name, permission, help) VALUES
('reload spell_linked_spell', 696, 'Usage: .reload spell_linked_spell\r\nReloads the spell_linked_spell DB table.');
INSERT INTO command(name, permission, help) VALUES
('reload spell_loot_template', 695, 'Syntax: .reload spell_loot_template\nReload spell_loot_template table.');
INSERT INTO command(name, permission, help) VALUES
('reload spell_pet_auras', 697, 'Syntax: .reload spell_pet_auras\nReload spell_pet_auras table.');
INSERT INTO command(name, permission, help) VALUES
('reload spell_proc_event', 698, 'Syntax: .reload spell_proc_event\nReload spell_proc_event table.');
INSERT INTO command(name, permission, help) VALUES
('reload spell_required', 690, 'Syntax: .reload spell_required\nReload spell_required table.');
INSERT INTO command(name, permission, help) VALUES
('reload spell_scripts', 700, 'Syntax: .reload spell_scripts\nReload spell_scripts table.');
INSERT INTO command(name, permission, help) VALUES
('reload spell_target_position', 701, 'Syntax: .reload spell_target_position\nReload spell_target_position table.');
INSERT INTO command(name, permission, help) VALUES
('reload spell_threats', 702, 'Syntax: .reload spell_threats\nReload spell_threats table.');
INSERT INTO command(name, permission, help) VALUES
('reload waypoint_scripts', 706, 'Syntax: .reload waypoint_scripts\nReload waypoint_scripts table.');
INSERT INTO command(name, permission, help) VALUES
('repairitems', 521, 'Syntax: .repairitems\r\n\r\nRepair all selected player''s items.');
INSERT INTO command(name, permission, help) VALUES
('reset', 710, 'Syntax: .reset $subcommand\nType .reset to see the list of possible subcommands or .help reset $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('reset achievements', 711, 'Syntax: .reset achievements [$playername]\r\n\r\nReset achievements data for selected or named (online or offline) character. Achievements for persistance progress data like completed quests/etc re-filled at reset. Achievements for events like kills/casts/etc will lost.');
INSERT INTO command(name, permission, help) VALUES
('reset all', 717, 'Syntax: .reset all spells\r\n\r\nSyntax: .reset all talents\r\n\r\nRequest reset spells or talents (including talents for all character''s pets if any) at next login each existed character.');
INSERT INTO command(name, permission, help) VALUES
('reset level', 713, 'Syntax: .reset level [Playername]\r\n  Reset level to 1 including reset stats and talents.  Equipped items with greater level requirement can be lost.');
INSERT INTO command(name, permission, help) VALUES
('reset spells', 714, 'Syntax: .reset spells [Playername]\r\n  Removes all non-original spells from spellbook.\r\n. Playername can be name of offline character.');
INSERT INTO command(name, permission, help) VALUES
('reset stats', 715, 'Syntax: .reset stats [Playername]\r\n  Resets(recalculate) all stats of the targeted player to their original VALUESat current level.');
INSERT INTO command(name, permission, help) VALUES
('reset talents', 716, 'Syntax: .reset talents [Playername]\r\n  Removes all talents of the targeted player or pet or named player. Playername can be name of offline character. With player talents also will be reset talents for all character''s pets if any.');
INSERT INTO command(name, permission, help) VALUES
('respawn', 522, 'Syntax: .respawn\r\n\r\nRespawn all nearest creatures and GO without waiting respawn time expiration.');
INSERT INTO command(name, permission, help) VALUES
('revive', 523, 'Syntax: .revive\r\n\r\nRevive the selected player. If no player is selected, it will revive you.');
INSERT INTO command(name, permission, help) VALUES
('save', 525, 'Syntax: .save\r\n\r\nSaves your character.');
INSERT INTO command(name, permission, help) VALUES
('saveall', 524, 'Syntax: .saveall\r\n\r\nSave all characters in game.');
INSERT INTO command(name, permission, help) VALUES
('send items', 484, 'Syntax: .send items #playername "#subject" "#text" itemid1[:count1] itemid2[:count2] ... itemidN[:countN]\r\n\r\nSend a mail to a player. Subject and mail text must be in "". If for itemid not provided related count values then expected 1, if count > max items in stack then items will be send in required amount stacks. All stacks amount in mail limited to 12.');
INSERT INTO command(name, permission, help) VALUES
('send mail', 485, 'Syntax: .send mail #playername "#subject" "#text"\r\n\r\nSend a mail to a player. Subject and mail text must be in "".');
INSERT INTO command(name, permission, help) VALUES
('send message', 486, 'Syntax: .send message $playername $message\r\n\r\nSend screen message to player from ADMINISTRATOR.');
INSERT INTO command(name, permission, help) VALUES
('send money', 487, 'Syntax: .send money #playername "#subject" "#text" #money\r\n\r\nSend mail with money to a player. Subject and mail text must be in "".');
INSERT INTO command(name, permission, help) VALUES
('server', 718, 'Syntax: .server $subcommand\nType .server to see the list of possible subcommands or .help server $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('server corpses', 719, 'Syntax: .server corpses\r\n\r\nTriggering corpses expire check in world.');
INSERT INTO command(name, permission, help) VALUES
('server exit', 720, 'Syntax: .server exit\r\n\r\nTerminate trinity-core NOW. Exit code 0.');
INSERT INTO command(name, permission, help) VALUES
('server idlerestart', 721, 'Syntax: .server idlerestart #delay\r\n\r\nRestart the server after #delay seconds if no active connections are present (no players). Use #exist_code or 2 as program exist code.');
INSERT INTO command(name, permission, help) VALUES
('server idlerestart cancel', 722, 'Syntax: .server idlerestart cancel\r\n\r\nCancel the restart/shutdown timer if any.');
INSERT INTO command(name, permission, help) VALUES
('server idleshutdown', 723, 'Syntax: .server idleshutdown #delay [#exist_code]\r\n\r\nShut the server down after #delay seconds if no active connections are present (no players). Use #exist_code or 0 as program exist code.');
INSERT INTO command(name, permission, help) VALUES
('server idleshutdown cancel', 724, 'Syntax: .server idleshutdown cancel\r\n\r\nCancel the restart/shutdown timer if any.');
INSERT INTO command(name, permission, help) VALUES
('server info', 725, 'Syntax: .server info\r\n\r\nDisplay server version and the number of connected players.');
INSERT INTO command(name, permission, help) VALUES
('server motd', 736, 'Syntax: .server motd\r\n\r\nShow server Message of the day.');
INSERT INTO command(name, permission, help) VALUES
('server plimit', 726, 'Syntax: .server plimit [#num|-1|-2|-3|reset|player|moderator|gamemaster|administrator]\r\n\r\nWithout arg show current player amount and security level limitations for login to server, with arg set player linit ($num > 0) or securiti limitation ($num < 0 or security leme name. With `reset` sets player limit to the one in the config file');
INSERT INTO command(name, permission, help) VALUES
('server restart', 727, 'Syntax: .server restart #delay\r\n\r\nRestart the server after #delay seconds. Use #exist_code or 2 as program exist code.');
INSERT INTO command(name, permission, help) VALUES
('server restart cancel', 728, 'Syntax: .server restart cancel\r\n\r\nCancel the restart/shutdown timer if any.');
INSERT INTO command(name, permission, help) VALUES
('server set closed', 730, 'Syntax: server set closed on/off\r\n\r\nSets whether the world accepts new client connectsions.');
INSERT INTO command(name, permission, help) VALUES
('server set loglevel', 732, 'Syntax: .server set loglevel $facility $name $loglevel. $facility can take the values: appender (a) or logger (l). $loglevel can take the values: disabled (0), trace (1), debug (2), info (3), warn (4), error (5) or fatal (6)');
INSERT INTO command(name, permission, help) VALUES
('server set motd', 733, 'Syntax: .server set motd $MOTD\r\n\r\nSet server Message of the day.');
INSERT INTO command(name, permission, help) VALUES
('server shutdown', 734, 'Syntax: .server shutdown #delay [#exit_code]\r\n\r\nShut the server down after #delay seconds. Use #exit_code or 0 as program exit code.');
INSERT INTO command(name, permission, help) VALUES
('server shutdown cancel', 735, 'Syntax: .server shutdown cancel\r\n\r\nCancel the restart/shutdown timer if any.');
INSERT INTO command(name, permission, help) VALUES
('setskill', 526, 'Syntax: .setskill #skill #level [#max]\r\n\r\nSet a skill of id #skill with a current skill value of #level and a maximum value of #max (or equal current maximum if not provide) for the selected character. If no character is selected, you learn the skill.');
INSERT INTO command(name, permission, help) VALUES
('showarea', 527, 'Syntax: .showarea #areaid\r\n\r\nReveal the area of #areaid to the selected character. If no character is selected, reveal this area to you.');
INSERT INTO command(name, permission, help) VALUES
('summon', 528, 'Syntax: .summon [$charactername]\r\n\r\nTeleport the given character to you. Character can be offline.');
INSERT INTO command(name, permission, help) VALUES
('tele', 737, 'Syntax: .tele #location\r\n\r\nTeleport player to a given location.');
INSERT INTO command(name, permission, help) VALUES
('tele add', 738, 'Syntax: .tele add $name\r\n\r\nAdd current your position to .tele command target locations list with name $name.');
INSERT INTO command(name, permission, help) VALUES
('tele del', 739, 'Syntax: .tele del $name\r\n\r\nRemove location with name $name for .tele command locations list.');
INSERT INTO command(name, permission, help) VALUES
('tele group', 741, 'Syntax: .tele group#location\r\n\r\nTeleport a selected player and his group members to a given location.');
INSERT INTO command(name, permission, help) VALUES
('tele name', 740, 'Syntax: .tele name [#playername] #location\n\nTeleport the given character to a given location. Character can be offline.\n\nTo teleport to homebind, set #location to "$home" (without quotes).');
INSERT INTO command(name, permission, help) VALUES
('ticket', 742, 'Syntax: .ticket $subcommand\nType .ticket to see the list of possible subcommands or .help ticket $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('ticket assign', 743, 'Usage: .ticket assign $ticketid $gmname.\r\nAssigns the specified ticket to the specified Game Master.');
INSERT INTO command(name, permission, help) VALUES
('ticket close', 744, 'Usage: .ticket close $ticketid.\r\nCloses the specified ticket. Does not delete permanently.');
INSERT INTO command(name, permission, help) VALUES
('ticket closedlist', 745, 'Displays a list of closed GM tickets.');
INSERT INTO command(name, permission, help) VALUES
('ticket closefirst', 1024, 'Closes the first ticket. Does not delete permanently.');
INSERT INTO command(name, permission, help) VALUES
('ticket comment', 746, 'Usage: .ticket comment $ticketid $comment.\r\nAllows the adding or modifying of a comment to the specified ticket.');
INSERT INTO command(name, permission, help) VALUES
('ticket delete', 748, 'Usage: .ticket delete $ticketid.\r\nDeletes the specified ticket permanently. Ticket must be closed first.');
INSERT INTO command(name, permission, help) VALUES
('ticket deletefirst', 1025, 'Deletes the first ticket permanently. Ticket must be closed first.');
INSERT INTO command(name, permission, help) VALUES
('ticket list', 751, 'Displays a list of open GM tickets.');
INSERT INTO command(name, permission, help) VALUES
('ticket onlinelist', 752, 'Displays a list of open GM tickets whose owner is online.');
INSERT INTO command(name, permission, help) VALUES
('ticket unassign', 758, 'Usage: .ticket unassign $ticketid.\r\nUnassigns the specified ticket from the current assigned Game Master.');
INSERT INTO command(name, permission, help) VALUES
('ticket viewfirst', 1026, 'Returns details about the first ticket. Ticket must be open and not deleted.');
INSERT INTO command(name, permission, help) VALUES
('ticket viewid', 759, 'Usage: .ticket viewid $ticketid.\r\nReturns details about specified ticket. Ticket must be open and not deleted.');
INSERT INTO command(name, permission, help) VALUES
('ticket viewname', 760, 'Usage: .ticket viewname $creatorname. \r\nReturns details about specified ticket. Ticket must be open and not deleted.');
INSERT INTO command(name, permission, help) VALUES
('titles add', 762, 'Syntax: .titles add #title\r\nAdd title #title (id or shift-link) to known titles list for selected player.');
INSERT INTO command(name, permission, help) VALUES
('titles current', 763, 'Syntax: .titles current #title\r\nSet title #title (id or shift-link) as current selected titl for selected player. If title not in known title list for player then it will be added to list.');
INSERT INTO command(name, permission, help) VALUES
('titles remove', 764, 'Syntax: .titles remove #title\r\nRemove title #title (id or shift-link) from known titles list for selected player.');
INSERT INTO command(name, permission, help) VALUES
('titles set mask', 766, 'Syntax: .titles set mask #mask\r\n\r\nAllows user to use all titles from #mask.\r\n\r\n #mask=0 disables the title-choose-field');
INSERT INTO command(name, permission, help) VALUES
('unaura', 529, 'Syntax: .unaura #spellid\r\n\r\nRemove aura due to spell #spellid from the selected Unit.');
INSERT INTO command(name, permission, help) VALUES
('unban', 252, 'Syntax: .unban $subcommand\nType .unban to see the list of possible subcommands or .help unban $subcommand to see info on subcommands');
INSERT INTO command(name, permission, help) VALUES
('unban account', 253, 'Syntax: .unban account $Name\r\nUnban accounts for account name pattern.');
INSERT INTO command(name, permission, help) VALUES
('unban character', 254, 'Syntax: .unban character $Name\r\nUnban accounts for character name pattern.');
INSERT INTO command(name, permission, help) VALUES
('unban ip', 255, 'Syntax : .unban ip $Ip\r\nUnban accounts for IP pattern.');
INSERT INTO command(name, permission, help) VALUES
('unbindsight', 530, 'Syntax: .unbindsight\r\n\r\nRemoves bound vision. Cannot be used while currently possessing a target.');
INSERT INTO command(name, permission, help) VALUES
('unfreeze', 531, 'Syntax: .unfreeze (#player)\r\n"Unfreezes" #player and enables his chat again. When using this without #name it will unfreeze your target.');
INSERT INTO command(name, permission, help) VALUES
('unlearn', 429, 'Syntax: .unlearn #spell [all]\r\n\r\nUnlearn for selected player a spell #spell.  If ''all'' provided then all ranks unlearned.');
INSERT INTO command(name, permission, help) VALUES
('unmute', 532, 'Syntax: .unmute [$playerName]\r\n\r\nRestore chat messaging for any character from account of character $playerName (or selected). Character can be ofline.');
INSERT INTO command(name, permission, help) VALUES
('unpossess', 533, 'Syntax: .unpossess\r\n\r\nIf you are possessed, unpossesses yourself; otherwise unpossesses current possessed target.');
INSERT INTO command(name, permission, help) VALUES
('wchange', 535, 'Syntax: .wchange #weathertype #status\r\n\r\nSet current weather to #weathertype with an intensity of #status.\r\n\r\n#weathertype can be 1 for rain, 2 for snow, and 3 for sand. #status can be 0 for disabled, and 1 for enabled.');
INSERT INTO command(name, permission, help) VALUES
('whispers', 471, 'Syntax: .whispers on|off\r\nEnable/disable accepting whispers by GM from players. By default use trinityd.conf setting.');
INSERT INTO command(name, permission, help) VALUES
('wp add', 768, 'Syntax: .wp add\r\n\r\nAdd a waypoint for the selected creature at your current position.');
INSERT INTO command(name, permission, help) VALUES
('wp event', 769, 'Syntax: .wp event $subcommand\nType .path event to see the list of possible subcommands or .help path event $subcommand to see info on subcommands.');
INSERT INTO command(name, permission, help) VALUES
('wp load', 770, 'Syntax: .wp load $pathid\nLoad pathid number for selected creature. Creature must have no waypoint data.');
INSERT INTO command(name, permission, help) VALUES
('wp reload', 773, 'Syntax: .wp reload $pathid\nLoad path changes ingame - IMPORTANT: must be applied first for new paths before .wp load #pathid ');
INSERT INTO command(name, permission, help) VALUES
('wp show', 774, 'Syntax: .wp show $option\nOptions:\non $pathid (or selected creature with loaded path) - Show path\noff - Hide path\ninfo $slected_waypoint - Show info for selected waypoint.');
INSERT INTO command(name, permission, help) VALUES
('wp unload', 772, 'Syntax: .wp unload\nUnload path for selected creature.');
