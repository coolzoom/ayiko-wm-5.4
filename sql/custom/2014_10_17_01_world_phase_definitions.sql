alter table
  phase_definitions
modify column
  zoneId mediumint unsigned not null,
modify column
  entry smallint unsigned not null,
modify column
  phasemask int unsigned not null default 0,
modify column
  phaseId smallint unsigned not null default 0,
modify column
  flags tinyint unsigned not null default 0,
add column
  worldMapAreaId smallint unsigned not null default 0
  after terrainswapmap;

update
  phase_definitions
set
  phasemask = 0,
  phaseId = 0,
  terrainswapmap = 719,
  worldMapAreaId = 683
where
  zoneId = 616
  and entry = 1;
