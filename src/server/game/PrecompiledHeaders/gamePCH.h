//add here most rarely modified headers to speed up debug build compilation

#ifndef TRINITY_GAME_PCH_H
#define TRINITY_GAME_PCH_H

#include "WorldSocket.h"        // must be first to make ACE happy with ACE includes in it

#include "Common.h"

#include "MapManager.h"
#include "Log.h"
#include "ObjectAccessor.h"
#include "ObjectDefines.h"
#include "Opcodes.h"
#include "SharedDefines.h"
#include "ObjectMgr.h"

#include <memory>
#include <unordered_map>
#include <unordered_set>

#endif // TRINITY_GAME_PCH_H
