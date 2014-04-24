-- invalid security levels moved to ADMINISTRATOR
update command set security = 3 where security >= 4;
-- players and donors do not have access to any commands
update command set security = 2 where security in (0, 1);
