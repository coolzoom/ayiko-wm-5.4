# Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

set(scripts_STAT_SRCS
  ${scripts_STAT_SRCS}
  Custom/boss_sha_of_anger.cpp
  Custom/boss_galion.cpp

  Custom/MogushanPalace/instance_mogu_shan_palace.cpp
  Custom/MogushanPalace/boss_trial_of_the_king.cpp
  Custom/MogushanPalace/boss_gekkan.cpp
  Custom/MogushanPalace/boss_xin_the_weaponmaster.cpp

  Custom/TempleJadeSerpent/instance_temple_of_jade_serpent.cpp
  Custom/TempleJadeSerpent/boss_wise_mari.cpp
  Custom/TempleJadeSerpent/boss_lorewalker_stonestep.cpp
  Custom/TempleJadeSerpent/boss_liu_flameheart.cpp
  Custom/TempleJadeSerpent/boss_sha_of_doubt.cpp

  Custom/StormstoutBrewery/instance_stormstout_brewery.cpp
  Custom/StormstoutBrewery/stormstout_brewery.cpp
  Custom/StormstoutBrewery/stormstout_brewery.h
  Custom/StormstoutBrewery/boss_ook_ook.cpp

  Custom/GateSettingSun/instance_gate_setting_sun.cpp
  Custom/GateSettingSun/gate_setting_sun.cpp
  Custom/GateSettingSun/gate_setting_sun.h
  Custom/GateSettingSun/boss_saboteur_kiptilak.cpp
  Custom/GateSettingSun/boss_striker_gadok.cpp
  Custom/GateSettingSun/boss_commander_rimok.cpp
  Custom/GateSettingSun/boss_raigonn.cpp

  Custom/ShadopanMonastery/instance_shadopan_monastery.cpp
  Custom/ShadopanMonastery/shadopan_monastery.cpp
  Custom/ShadopanMonastery/shadopan_monastery.h
  Custom/ShadopanMonastery/boss_gu_cloudstrike.cpp
  Custom/ShadopanMonastery/boss_master_snowdrift.cpp
  Custom/ShadopanMonastery/boss_sha_of_violence.cpp
  Custom/ShadopanMonastery/boss_taran_zhu.cpp
  
  Custom/SiegeNiuzaoTemple/instance_siege_of_the_niuzoa_temple.cpp
  Custom/SiegeNiuzaoTemple/siege_of_the_niuzoa_temple.cpp
  Custom/SiegeNiuzaoTemple/siege_of_the_niuzoa_temple.h
  Custom/SiegeNiuzaoTemple/boss_jinbak.cpp

  Custom/MogushanVault/instance_mogu_shan_vault.cpp
  Custom/MogushanVault/mogu_shan_vault.cpp
  Custom/MogushanVault/mogu_shan_vault.h
  Custom/MogushanVault/boss_stone_guard.cpp
  Custom/MogushanVault/boss_feng.cpp
  Custom/MogushanVault/boss_garajal.cpp
  Custom/MogushanVault/boss_spirit_kings.cpp
  Custom/MogushanVault/boss_elegon.cpp
  Custom/MogushanVault/boss_will_of_emperor.cpp

  Custom/WanderingIsland/WanderingIsland_North.cpp
  Custom/WanderingIsland/WanderingIsland_East.cpp
  Custom/WanderingIsland/WanderingIsland_West.cpp
  Custom/WanderingIsland/WanderingIsland_South.cpp

  Custom/townlong_steppes.cpp
  Custom/dread_wastes.cpp
  Custom/valley_of_the_four_winds.cpp
  Custom/krasarang_wilds.cpp
  Custom/kun_lai_summit.cpp
  Custom/jade_forest.cpp
  Custom/vale_of_eternal_blossoms.cpp
)

message("  -> Prepared: Custom")
