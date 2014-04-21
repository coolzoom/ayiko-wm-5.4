/*
 * Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
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
#include "ObjectMgr.h"
#include "Log.h"
#include "Opcodes.h"
#include "Player.h"
#include <list>
#include <vector>
#include <utility>

void WorldSession::SendVoidStorageTransferResult(VoidTransferError /*result*/)
{
}

void WorldSession::HandleVoidStorageUnlock(WorldPacket& /*recvData*/)
{
}

void WorldSession::HandleVoidStorageQuery(WorldPacket& /*recvData*/)
{
}

void WorldSession::HandleVoidStorageTransfer(WorldPacket& /*recvData*/)
{
}

void WorldSession::HandleVoidSwapItem(WorldPacket& recvData)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_VOID_SWAP_ITEM");

    Player* player = GetPlayer();
    uint32 newSlot;
    ObjectGuid npcGuid;
    ObjectGuid itemId;

    recvData >> newSlot;

    recvData.ReadBitSeq<2, 7>(itemId);
    recvData.ReadBitSeq<4, 6>(npcGuid);
    recvData.ReadBitSeq<1>(itemId);
    recvData.ReadBitSeq<0>(npcGuid);
    recvData.ReadBitSeq<6>(itemId);
    recvData.ReadBitSeq<1>(npcGuid);
    recvData.ReadBitSeq<0, 4, 3>(itemId);
    recvData.ReadBitSeq<2, 5, 7>(npcGuid);
    recvData.ReadBitSeq<5>(itemId);
    recvData.ReadBitSeq<3>(npcGuid);

    recvData.ReadByteSeq<4, 2, 7>(itemId);
    recvData.ReadByteSeq<2, 6>(npcGuid);
    recvData.ReadByteSeq<6>(itemId);
    recvData.ReadByteSeq<5, 1, 4, 3, 0>(npcGuid);
    recvData.ReadByteSeq<5, 0, 1>(itemId);
    recvData.ReadByteSeq<7>(npcGuid);
    recvData.ReadByteSeq<3>(itemId);

    Creature* unit = player->GetNPCIfCanInteractWith(npcGuid, UNIT_NPC_FLAG_VAULTKEEPER);
    if (!unit)
    {
        sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: HandleVoidSwapItem - Unit (GUID: %u) not found or player can't interact with it.", GUID_LOPART(npcGuid));
        return;
    }

    if (!player->IsVoidStorageUnlocked())
    {
        sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: HandleVoidSwapItem - Player (GUID: %u, name: %s) queried void storage without unlocking it.", player->GetGUIDLow(), player->GetName());
        return;
    }

    uint8 oldSlot;
    if (!player->GetVoidStorageItem(itemId, oldSlot))
    {
        sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: HandleVoidSwapItem - Player (GUID: %u, name: %s) requested swapping an invalid item (slot: %u, itemid: " UI64FMTD ").", player->GetGUIDLow(), player->GetName(), newSlot, uint64(itemId));
        return;
    }

    bool usedSrcSlot = player->GetVoidStorageItem(oldSlot) != NULL; // should be always true
    bool usedDestSlot = player->GetVoidStorageItem(newSlot) != NULL;
    ObjectGuid itemIdDest;
    if (usedDestSlot)
        itemIdDest = player->GetVoidStorageItem(newSlot)->ItemId;

    if (!player->SwapVoidStorageItem(oldSlot, newSlot))
    {
        SendVoidStorageTransferResult(VOID_TRANSFER_ERROR_INTERNAL_ERROR_1);
        return;
    }

    WorldPacket data(SMSG_VOID_ITEM_SWAP_RESPONSE);

    data.WriteBit(!usedSrcSlot);

    data.WriteBitSeq<6, 1, 2, 4, 0, 5, 7, 3>(itemId);

    data.WriteBit(!usedDestSlot);

    data.WriteBitSeq<5, 1, 6, 4, 0, 2, 7, 3>(itemIdDest);

    data.WriteBit(!usedDestSlot);
    data.WriteBit(!usedSrcSlot);

    data.WriteByteSeq<3, 0, 2, 5, 4, 6, 7, 1>(itemIdDest);
    data.WriteByteSeq<2, 0, 7, 5, 3, 6, 4, 1>(itemId);

    if (usedDestSlot)
        data << uint32(oldSlot);
    if (usedSrcSlot)
        data << uint32(newSlot);

    SendPacket(&data);
}
