#ifndef __BATTLEGROUNDRBG_H
#define __BATTLEGROUNDRBG_H

#include "Battleground.h"

class BattlegroundRBGScore : public BattlegroundScore
{
    public:
        BattlegroundRBGScore() {};
        virtual ~BattlegroundRBGScore() {};
};

class BattlegroundRBG : public Battleground
{
    public:
        BattlegroundRBG();
        ~BattlegroundRBG();

        virtual void AddPlayer(Player* player);
        virtual void StartingEventCloseDoors();
        virtual void StartingEventOpenDoors();

        void RemovePlayer(Player* player, uint64 guid, uint32 team);
        void HandleAreaTrigger(Player* Source, uint32 Trigger);
};

#endif
