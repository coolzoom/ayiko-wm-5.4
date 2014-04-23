/*
 * Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "Common.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "World.h"
#include "ObjectAccessor.h"
#include "Log.h"
#include "Opcodes.h"
#include "Player.h"
#include "Item.h"
#include "Spell.h"
#include "SocialMgr.h"
#include "Language.h"
#include "AccountMgr.h"
#include "SpellAuraEffects.h"

void WorldSession::SendTradeStatus(TradeStatus status)
{
    WorldPacket data(SMSG_TRADE_STATUS);

    data.WriteBits(status, 5);
    data.WriteBit(0); // unk bit, usually 0

    switch (status)
    {
        case TRADE_STATUS_OPEN_WINDOW:
            data.FlushBits();
            data << uint32(TRADE_STATUS_BEGIN_TRADE);
            break;
        case TRADE_STATUS_TARGET_LOGOUT:
            data.FlushBits();
            data.WriteBit(0);
            data << uint32(0);
            data << uint32(0);
            break;
        case TRADE_STATUS_ONLY_CONJURED:
        case TRADE_STATUS_NOT_ELIGIBLE:
            data.FlushBits();
            data << uint8(0); // unk
            break;
        default:
            data.FlushBits();
            break;
    }

    SendPacket(&data);
}

void WorldSession::HandleIgnoreTradeOpcode(WorldPacket& /*recvPacket*/)
{
    sLog->outDebug("network", "WORLD: Ignore Trade %u", _player->GetGUIDLow());

    SendTradeStatus(TRADE_STATUS_TRADE_CANCELED);
}

void WorldSession::HandleBusyTradeOpcode(WorldPacket& /*recvPacket*/)
{
    sLog->outDebug("network", "WORLD: Busy Trade %u", _player->GetGUIDLow());
}

void WorldSession::SendUpdateTrade(bool /*trader_data*/ /*= true*/)
{

}

//==============================================================
// transfer the items to the players

void WorldSession::moveItems(Item* /*myItems*/[], Item* /*hisItems*/[])
{

}

//==============================================================

static void setAcceptTradeMode(TradeData* myTrade, TradeData* hisTrade, Item* *myItems, Item* *hisItems)
{
    myTrade->SetInAcceptProcess(true);
    hisTrade->SetInAcceptProcess(true);

    // store items in local list and set 'in-trade' flag
    for (uint8 i = 0; i < TRADE_SLOT_TRADED_COUNT; ++i)
    {
        if (Item* item = myTrade->GetItem(TradeSlots(i)))
        {
            sLog->outDebug("network", "player trade item %u bag: %u slot: %u", item->GetGUIDLow(), item->GetBagSlot(), item->GetSlot());
            //Can return NULL
            myItems[i] = item;
            myItems[i]->SetInTrade();
        }

        if (Item* item = hisTrade->GetItem(TradeSlots(i)))
        {
            sLog->outDebug("network", "partner trade item %u bag: %u slot: %u", item->GetGUIDLow(), item->GetBagSlot(), item->GetSlot());
            hisItems[i] = item;
            hisItems[i]->SetInTrade();
        }
    }
}

static void clearAcceptTradeMode(TradeData* /*myTrade*/, TradeData* /*hisTrade*/)
{

}

static void clearAcceptTradeMode(Item* * /*myItems*/, Item* * /*hisItems*/)
{

}

void WorldSession::HandleAcceptTradeOpcode(WorldPacket& /*recvPacket*/)
{

}

void WorldSession::HandleUnacceptTradeOpcode(WorldPacket& /*recvPacket*/)
{

}

void WorldSession::HandleBeginTradeOpcode(WorldPacket& /*recvPacket*/)
{

}

void WorldSession::SendCancelTrade()
{

}

void WorldSession::HandleCancelTradeOpcode(WorldPacket& /*recvPacket*/)
{

}

void WorldSession::HandleInitiateTradeOpcode(WorldPacket& /*recvPacket*/)
{

}

void WorldSession::HandleSetTradeGoldOpcode(WorldPacket& /*recvPacket*/)
{

}

void WorldSession::HandleSetTradeItemOpcode(WorldPacket& /*recvPacket*/)
{

}

void WorldSession::HandleClearTradeItemOpcode(WorldPacket& /*recvPacket*/)
{

}
