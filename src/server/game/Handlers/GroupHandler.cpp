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
#include "DatabaseEnv.h"
#include "Opcodes.h"
#include "Log.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "World.h"
#include "ObjectMgr.h"
#include "GroupMgr.h"
#include "Player.h"
#include "Group.h"
#include "SocialMgr.h"
#include "Util.h"
#include "SpellAuras.h"
#include "Vehicle.h"
#include "DB2Structure.h"
#include "DB2Stores.h"
#include "SpellAuraEffects.h"

class Aura;

/* differeces from off:
-you can uninvite yourself - is is useful
-you can accept invitation even if leader went offline
*/
/* todo:
-group_destroyed msg is sent but not shown
-reduce xp gaining when in raid group
-quest sharing has to be corrected
-FIX sending PartyMemberStats
*/

void WorldSession::SendPartyResult(PartyOperation operation, const std::string& member, PartyResult res, uint32 val /* = 0 */)
{
    WorldPacket data(SMSG_PARTY_COMMAND_RESULT, 4 + member.size() + 1 + 4 + 4 + 8);
    data << uint32(operation);
    data << member;
    data << uint32(res);
    data << uint32(val);                                    // LFD cooldown related (used with ERR_PARTY_LFG_BOOT_COOLDOWN_S and ERR_PARTY_LFG_BOOT_NOT_ELIGIBLE_S)
    data << uint64(0); // player who caused error (in some cases).

    SendPacket(&data);
}

void WorldSession::HandleGroupInviteOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_GROUP_INVITE");

    time_t now = time(NULL);
    if (now - timeLastGroupInviteCommand < 5)
        return;
    else
       timeLastGroupInviteCommand = now;

    ObjectGuid crossRealmGuid; // unused

    recvData.read_skip<uint32>(); // Non-zero in cross realm invites
    recvData.read_skip<uint32>(); // Always 0
    recvData.read_skip<uint8>();

    std::string realmName, memberName;
    realmName = "";
    memberName = "";

    recvData.ReadBitSeq<7, 0, 4, 3, 6>(crossRealmGuid);

    uint8 realmLen = recvData.ReadBits(9);
    recvData.ReadBit(); // unk

    recvData.ReadBitSeq<2, 5, 1>(crossRealmGuid);

    uint8 nameLen = recvData.ReadBits(9);
    recvData.ReadBit(); // unk

    recvData.FlushBits();

    recvData.ReadByteSeq<0, 4, 5, 7, 1>(crossRealmGuid);

    if (realmLen > 0)
        realmName = recvData.ReadString((realmLen/2)); // unused

    recvData.ReadByteSeq<3>(crossRealmGuid);

    if (nameLen > 0)
        memberName = recvData.ReadString((nameLen/2));

    recvData.ReadByteSeq<6, 2>(crossRealmGuid);

    // attempt add selected player

    // cheating
    if (!normalizePlayerName(memberName))
    {
        SendPartyResult(PARTY_OP_INVITE, memberName, ERR_BAD_PLAYER_NAME_S);
        return;
    }

    Player* player = sObjectAccessor->FindPlayerByName(memberName.c_str());

    // no player
    if (!player)
    {
        SendPartyResult(PARTY_OP_INVITE, memberName, ERR_BAD_PLAYER_NAME_S);
        return;
    }

    // restrict invite to GMs
    if (!sWorld->getBoolConfig(CONFIG_ALLOW_GM_GROUP) && !GetPlayer()->isGameMaster() && player->isGameMaster())
    {
        SendPartyResult(PARTY_OP_INVITE, memberName, ERR_BAD_PLAYER_NAME_S);
        return;
    }

    // can't group with
    if (!GetPlayer()->isGameMaster() && !sWorld->getBoolConfig(CONFIG_ALLOW_TWO_SIDE_INTERACTION_GROUP) && GetPlayer()->GetTeam() != player->GetTeam())
    {
        SendPartyResult(PARTY_OP_INVITE, memberName, ERR_PLAYER_WRONG_FACTION);
        return;
    }
    if (GetPlayer()->GetInstanceId() != 0 && player->GetInstanceId() != 0 && GetPlayer()->GetInstanceId() != player->GetInstanceId() && GetPlayer()->GetMapId() == player->GetMapId())
    {
        SendPartyResult(PARTY_OP_INVITE, memberName, ERR_TARGET_NOT_IN_INSTANCE_S);
        return;
    }
    // just ignore us
    if (player->GetInstanceId() != 0 && player->GetDungeonDifficulty() != GetPlayer()->GetDungeonDifficulty())
    {
        SendPartyResult(PARTY_OP_INVITE, memberName, ERR_IGNORING_YOU_S);
        return;
    }

    if (player->GetSocial()->HasIgnore(GetPlayer()->GetGUIDLow()))
    {
        SendPartyResult(PARTY_OP_INVITE, memberName, ERR_IGNORING_YOU_S);
        return;
    }

    ObjectGuid invitedGuid = player->GetGUID();

    Group* group = GetPlayer()->GetGroup();
    if (group && group->isBGGroup())
        group = GetPlayer()->GetOriginalGroup();

    Group* group2 = player->GetGroup();
    if (group2 && group2->isBGGroup())
        group2 = player->GetOriginalGroup();
    // player already in another group or invited
    if (group2 || player->GetGroupInvite())
    {
        SendPartyResult(PARTY_OP_INVITE, memberName, ERR_ALREADY_IN_GROUP_S);

        if (group2)
        {
            // tell the player that they were invited but it failed as they were already in a group
            WorldPacket data(SMSG_GROUP_INVITE, 45);

            data.WriteBit(0);                                   // Show RealmName
            data.WriteBit(0);                                   // Unk
            data.WriteBitSeq<4>(invitedGuid);
            data.WriteBits(strlen(GetPlayer()->GetName()), 6);  // Inviter name length
            data.WriteBitSeq<2>(invitedGuid);
            data.WriteBit(0);                                   // Unk
            data.WriteBit(0);                                   // Unk - This force sending invite pannel
            data.WriteBitSeq<3, 7>(invitedGuid);
            data.WriteBits(0, 8);                               // Realm name
            data.WriteBit(0);                                   // Pair
            data.WriteBitSeq<0, 5>(invitedGuid);
            data.WriteBits(0, 22);                              // Count 2
            data.WriteBitSeq<6, 1>(invitedGuid);

            data << uint32(0);                                  // Unk - This send choose role on invite
            data << uint64(0);                                  // Unk
            data.WriteByteSeq<3, 5>(invitedGuid);
            data << uint32(0);

            if (strlen(GetPlayer()->GetName()))
                data.append(GetPlayer()->GetName(), strlen(GetPlayer()->GetName()));

            data << uint32(0);
            data.WriteByteSeq<7, 4, 1, 2, 6, 0>(invitedGuid);

            player->GetSession()->SendPacket(&data);
        }

        return;
    }

    if (group)
    {
        // not have permissions for invite
        if (!group->IsLeader(GetPlayer()->GetGUID()) && !group->IsAssistant(GetPlayer()->GetGUID()) && !(group->GetGroupType() & GROUPTYPE_EVERYONE_IS_ASSISTANT))
        {
            SendPartyResult(PARTY_OP_INVITE, "", ERR_NOT_LEADER);
            return;
        }
        // not have place
        if (group->IsFull())
        {
            SendPartyResult(PARTY_OP_INVITE, "", ERR_GROUP_FULL);
            return;
        }
    }

    // ok, but group not exist, start a new group
    // but don't create and save the group to the DB until
    // at least one person joins
    if (!group)
    {
        group = new Group;

        // new group: if can't add then delete
        if (!group->AddLeaderInvite(GetPlayer()))
        {
            delete group;
            return;
        }
        if (!group->AddInvite(player))
        {
            delete group;
            return;
        }

        group->Create(GetPlayer());
    }
    else
    {
        // already existed group: if can't add then just leave
        if (!group->AddInvite(player))
        {
            return;
        }
    }

    // ok, we do it

    WorldPacket data(SMSG_GROUP_INVITE, 45);

    data.WriteBit(0);                                   // Show RealmName
    data.WriteBit(0);
    data.WriteBitSeq<4>(invitedGuid);
    data.WriteBits(strlen(GetPlayer()->GetName()), 6);  // Inviter name length
    data.WriteBitSeq<2>(invitedGuid);
    data.WriteBit(0);
    data.WriteBit(1);
    data.WriteBitSeq<3, 7>(invitedGuid);
    data.WriteBits(0, 8);                               // Realm name
    data.WriteBit(0);
    data.WriteBitSeq<0, 5>(invitedGuid);
    data.WriteBits(0, 22);                              // Count 2
    data.WriteBitSeq<6, 1>(invitedGuid);

    data << uint32(0);                                  // Unk - This send choose role on invite
    data << uint64(0);                                  // Unk
    data.WriteByteSeq<3, 5>(invitedGuid);
    data << uint32(0);                                  // Unk

    if (strlen(GetPlayer()->GetName()))
        data.append(GetPlayer()->GetName(), strlen(GetPlayer()->GetName()));

    data << uint32(0);                                  // Unk
    data.WriteByteSeq<7, 4, 1, 2, 6, 0>(invitedGuid);

    player->GetSession()->SendPacket(&data);

    SendPartyResult(PARTY_OP_INVITE, memberName, ERR_PARTY_RESULT_OK);
}

void WorldSession::HandleGroupInviteResponseOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_GROUP_INVITE_RESPONSE");

    recvData.read_skip<uint8>(); // unk
    bool accept = recvData.ReadBit();
    recvData.ReadBit();

    Group* group = GetPlayer()->GetGroupInvite();
    if (!group)
        return;

    if (accept)
    {
        // Remove player from invitees in any case
        group->RemoveInvite(GetPlayer());

        if (group->GetLeaderGUID() == GetPlayer()->GetGUID())
        {
            sLog->outError("network", "HandleGroupAcceptOpcode: player %s(%d) tried to accept an invite to his own group", GetPlayer()->GetName(), GetPlayer()->GetGUIDLow());
            return;
        }

        // Group is full
        if (group->IsFull())
        {
            SendPartyResult(PARTY_OP_INVITE, "", ERR_GROUP_FULL);
            return;
        }

        Player* leader = ObjectAccessor::FindPlayer(group->GetLeaderGUID());

        // Forming a new group, create it
        if (!group->IsCreated())
        {
            // This can happen if the leader is zoning. To be removed once delayed actions for zoning are implemented
            if (!leader)
            {
                group->RemoveAllInvites();
                return;
            }

            // If we're about to create a group there really should be a leader present
            ASSERT(leader);
            group->RemoveInvite(leader);
            group->Create(leader);
            sGroupMgr->AddGroup(group);
        }

        // Everything is fine, do it, PLAYER'S GROUP IS SET IN ADDMEMBER!!!
        if (!group->AddMember(GetPlayer()))
            return;

        group->BroadcastGroupUpdate();
    }
    else
    {
        // Remember leader if online (group pointer will be invalid if group gets disbanded)
        Player* leader = ObjectAccessor::FindPlayer(group->GetLeaderGUID());

        // uninvite, group can be deleted
        GetPlayer()->UninviteFromGroup();

        if (!leader || !leader->GetSession())
            return;

        // report
        std::string name = std::string(GetPlayer()->GetName());
        WorldPacket data(SMSG_GROUP_DECLINE, name.length());
        data << name.c_str();
        leader->GetSession()->SendPacket(&data);
    }
}

void WorldSession::HandleGroupUninviteGuidOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_GROUP_UNINVITE_GUID");

    ObjectGuid guid;
    std::string unkstring;

    recvData.read_skip<uint8>(); // unk 0x00

    recvData.ReadBitSeq<5, 3, 0>(guid);

    uint8 stringSize = recvData.ReadBits(8);

    recvData.ReadBitSeq<7, 4, 6, 2, 1>(guid);
    recvData.ReadByteSeq<4, 0, 2, 7, 1, 5, 6, 3>(guid);

    unkstring = recvData.ReadString(stringSize);

    // Can't uninvite yourself
    if (guid == GetPlayer()->GetGUID())
    {
        sLog->outError("network", "WorldSession::HandleGroupUninviteGuidOpcode: leader %s(%d) tried to uninvite himself from the group.", GetPlayer()->GetName(), GetPlayer()->GetGUIDLow());
        return;
    }

    PartyResult res = GetPlayer()->CanUninviteFromGroup();
    if (res != ERR_PARTY_RESULT_OK)
    {
        SendPartyResult(PARTY_OP_UNINVITE, "", res);
        return;
    }

    Group* grp = GetPlayer()->GetGroup();
    if (!grp)
        return;

    if (grp->IsLeader(guid))
    {
        SendPartyResult(PARTY_OP_UNINVITE, "", ERR_NOT_LEADER);
        return;
    }

    if (grp->IsMember(guid))
    {
        Player::RemoveFromGroup(grp, guid, GROUP_REMOVEMETHOD_KICK, GetPlayer()->GetGUID(), unkstring.c_str());
        return;
    }

    if (Player* player = grp->GetInvited(guid))
    {
        player->UninviteFromGroup();
        return;
    }

    SendPartyResult(PARTY_OP_UNINVITE, "", ERR_TARGET_NOT_IN_GROUP_S);
}

void WorldSession::HandleGroupUninviteOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_GROUP_UNINVITE");

    std::string membername;
    recvData >> membername;

    // player not found
    if (!normalizePlayerName(membername))
        return;

    // can't uninvite yourself
    if (GetPlayer()->GetName() == membername)
    {
        sLog->outError("network", "WorldSession::HandleGroupUninviteOpcode: leader %s(%d) tried to uninvite himself from the group.", GetPlayer()->GetName(), GetPlayer()->GetGUIDLow());
        return;
    }

    PartyResult res = GetPlayer()->CanUninviteFromGroup();
    if (res != ERR_PARTY_RESULT_OK)
    {
        SendPartyResult(PARTY_OP_UNINVITE, "", res);
        return;
    }

    Group* grp = GetPlayer()->GetGroup();
    if (!grp)
        return;

    if (uint64 guid = grp->GetMemberGUID(membername))
    {
        Player::RemoveFromGroup(grp, guid, GROUP_REMOVEMETHOD_KICK, GetPlayer()->GetGUID());
        return;
    }

    if (Player* player = grp->GetInvited(membername))
    {
        player->UninviteFromGroup();
        return;
    }

    SendPartyResult(PARTY_OP_UNINVITE, membername, ERR_TARGET_NOT_IN_GROUP_S);
}

void WorldSession::HandleGroupSetLeaderOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_GROUP_SET_LEADER");

    ObjectGuid guid;
    recvData.read_skip<uint8>();

    recvData.ReadBitSeq<5, 2, 6, 7, 1, 0, 3, 4>(guid);
    recvData.ReadByteSeq<6, 0, 5, 4, 3, 1, 2, 7>(guid);

    Player* player = ObjectAccessor::FindPlayer(guid);
    Group* group = GetPlayer()->GetGroup();

    if (!group || !player)
        return;

    if (!group->IsLeader(GetPlayer()->GetGUID()) || player->GetGroup() != group)
        return;

    // Prevent exploits with instance saves
    for (GroupReference *itr = group->GetFirstMember(); itr != NULL; itr = itr->next())
        if (Player* plr = itr->getSource())
            if (plr->GetMap() && plr->GetMap()->Instanceable())
                return;

    // Everything's fine, accepted.
    group->ChangeLeader(guid);
    group->SendUpdate();
}

void WorldSession::HandleGroupSetRolesOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_GROUP_SET_ROLES");

    uint32 newRole = 0;
    uint8 unk = 0;
    ObjectGuid assignerGuid = GetPlayer()->GetGUID();   // Assigner GUID
    ObjectGuid targetGuid;                              // Target GUID

    Group* group = GetPlayer()->GetGroup();

    recvData >> unk;
    recvData >> newRole;

    recvData.ReadBitSeq<7, 4, 0, 2, 6, 5, 1, 3>(targetGuid);
    recvData.ReadByteSeq<0, 6, 3, 7, 1, 5, 4, 2>(targetGuid);

    WorldPacket data(SMSG_ROLE_CHANGED_INFORM, 24);

    if (group)
        data << uint32(group->getGroupMemberRole(targetGuid)); // Old Role
    else
        data << uint32(0);

    data << uint8(unk);
    data << uint32(newRole); // New Role

    data.WriteBitSeq<0, 3>(targetGuid);
    data.WriteBitSeq<1, 7>(assignerGuid);
    data.WriteBitSeq<5>(targetGuid);
    data.WriteBitSeq<4, 3>(assignerGuid);
    data.WriteBitSeq<2, 7, 6>(targetGuid);
    data.WriteBitSeq<6>(assignerGuid);
    data.WriteBitSeq<4>(targetGuid);
    data.WriteBitSeq<0>(assignerGuid);
    data.WriteBitSeq<1>(targetGuid);
    data.WriteBitSeq<5, 2>(assignerGuid);

    data.WriteByteSeq<3>(assignerGuid);
    data.WriteByteSeq<2, 6>(targetGuid);
    data.WriteByteSeq<1>(assignerGuid);
    data.WriteByteSeq<4>(targetGuid);
    data.WriteByteSeq<0>(assignerGuid);
    data.WriteByteSeq<1>(targetGuid);
    data.WriteByteSeq<6, 2>(assignerGuid);
    data.WriteByteSeq<7, 5, 3>(targetGuid);
    data.WriteByteSeq<4, 7>(assignerGuid);
    data.WriteByteSeq<0, 5>(targetGuid);

    if (group)
    {
        group->setGroupMemberRole(targetGuid, newRole);
        group->SendUpdate();
        group->BroadcastPacket(&data, false);
    }
    else
        SendPacket(&data);
}

void WorldSession::HandleGroupDisbandOpcode(WorldPacket& /*recvData*/)
{
    sLog->outDebug("network", "WORLD: Received CMSG_GROUP_DISBAND");

    Group* grp = GetPlayer()->GetGroup();
    if (!grp)
        return;

    if (_player->InBattleground())
    {
        SendPartyResult(PARTY_OP_INVITE, "", ERR_INVITE_RESTRICTED);
        return;
    }

    /** error handling **/
    /********************/

    // everything's fine, do it
    SendPartyResult(PARTY_OP_LEAVE, GetPlayer()->GetName(), ERR_PARTY_RESULT_OK);

    GetPlayer()->RemoveFromGroup(GROUP_REMOVEMETHOD_LEAVE);
}

void WorldSession::HandleLootMethodOpcode(WorldPacket & recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_LOOT_METHOD");

    uint8 lootMethod;
    ObjectGuid lootMaster;
    uint32 lootThreshold;

    recvData >> lootMethod;

    recvData.read_skip<uint8>();

    recvData >> lootThreshold;

    recvData.ReadBitSeq<6, 4, 7, 2, 5, 0, 1, 3>(lootMaster);
    recvData.ReadByteSeq<4, 3, 0, 7, 6, 2, 1, 5>(lootMaster);

    Group* group = GetPlayer()->GetGroup();
    if (!group)
        return;

    /** error handling **/
    if (!group->IsLeader(GetPlayer()->GetGUID()))
        return;
    /********************/

    // everything's fine, do it
    group->SetLootMethod((LootMethod)lootMethod);
    group->SetLooterGuid(lootMaster);
    group->SetLootThreshold((ItemQualities)lootThreshold);
    group->SendUpdate();
}

void WorldSession::HandleLootRoll(WorldPacket& recvData)
{
    ObjectGuid guid;
    uint8 itemSlot;
    uint8  rollType;

    recvData >> itemSlot; //always 0
    recvData >> rollType;              // 0: pass, 1: need, 2: greed

    recvData.ReadBitSeq<4, 5, 3, 2, 6, 1, 0, 7>(guid);
    recvData.ReadByteSeq<5, 6, 1, 3, 2, 4, 7, 0>(guid);

    Group* group = GetPlayer()->GetGroup();
    if (!group)
        return;

    group->CountRollVote(GetPlayer()->GetGUID(), itemSlot, rollType);

    switch (rollType)
    {
    case ROLL_NEED:
        GetPlayer()->UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_ROLL_NEED, 1);
        break;
    case ROLL_GREED:
        GetPlayer()->UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_ROLL_GREED, 1);
        break;
    }
}

void WorldSession::HandleMinimapPingOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received MSG_MINIMAP_PING");

    if (!GetPlayer()->GetGroup())
        return;

    float x, y;
    recvData >> x;
    recvData >> y;

    //sLog->outDebug("misc", "Received opcode MSG_MINIMAP_PING X: %f, Y: %f", x, y);

    /** error handling **/
    /********************/

    // everything's fine, do it
    WorldPacket data(MSG_MINIMAP_PING, (8+4+4));
    data << uint64(GetPlayer()->GetGUID());
    data << float(x);
    data << float(y);
    GetPlayer()->GetGroup()->BroadcastPacket(&data, true, -1, GetPlayer()->GetGUID());
}

void WorldSession::HandleRandomRollOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_RANDOM_ROLL");

    uint32 minimum, maximum, roll;
    uint8 unk;
    recvData >> minimum;
    recvData >> maximum;
    recvData >> unk;

    /** error handling **/
    if (minimum > maximum || maximum > 10000)                // < 32768 for urand call
        return;
    /********************/

    // everything's fine, do it
    roll = urand(minimum, maximum);

    WorldPacket data(SMSG_RANDOM_ROLL, 4+4+4+8);
    ObjectGuid guid = GetPlayer()->GetGUID();
    data << uint32(roll);
    data << uint32(maximum);
    data << uint32(minimum);

    data.WriteBitSeq<4, 5, 2, 6, 0, 3, 1, 7>(guid);
    data.WriteByteSeq<2, 6, 1, 3, 4, 7, 0, 5>(guid);

    if (GetPlayer()->GetGroup())
        GetPlayer()->GetGroup()->BroadcastPacket(&data, false);
    else
        SendPacket(&data);
}

void WorldSession::HandleRaidTargetUpdateOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_RAID_TARGET_UPDATE");

    Group* group = GetPlayer()->GetGroup();
    if (!group)
        return;

    uint8 x, unk;
    recvData >> unk;
    recvData >> x;

    /** error handling **/
    /********************/

    // everything's fine, do it
    if (x == 0xFF)                                           // target icon request
        group->SendTargetIconList(this);
    else                                                    // target icon update
    {
        if (!group->IsLeader(GetPlayer()->GetGUID()) && !group->IsAssistant(GetPlayer()->GetGUID()) && !(group->GetGroupType() & GROUPTYPE_EVERYONE_IS_ASSISTANT))
            return;

        ObjectGuid guid;

        recvData.ReadBitSeq<2, 1, 6, 4, 5, 0, 7, 3>(guid);
        recvData.ReadByteSeq<5, 4, 6, 0, 1, 2, 3, 7>(guid);

        group->SetTargetIcon(x, _player->GetGUID(), guid);
    }
}

void WorldSession::HandleGroupRaidConvertOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_GROUP_RAID_CONVERT");

    Group* group = GetPlayer()->GetGroup();
    if (!group)
        return;

    if (_player->InBattleground())
        return;

    // Error handling
    if (!group->IsLeader(GetPlayer()->GetGUID()) || group->GetMembersCount() < 2)
        return;

    // Everything's fine, do it (is it 0 (PARTY_OP_INVITE) correct code)
    SendPartyResult(PARTY_OP_INVITE, "", ERR_PARTY_RESULT_OK);

    // New 4.x: it is now possible to convert a raid to a group if member count is 5 or less

    bool unk;
    recvData >> unk;

    if (group->isRaidGroup())
        group->ConvertToGroup();
    else
        group->ConvertToRaid();
}

void WorldSession::HandleGroupChangeSubGroupOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_GROUP_CHANGE_SUB_GROUP");

    // we will get correct pointer for group here, so we don't have to check if group is BG raid
    Group* group = GetPlayer()->GetGroup();
    if (!group)
        return;

    time_t now = time(NULL);
    if (now - timeLastChangeSubGroupCommand < 2)
        return;
    else
       timeLastChangeSubGroupCommand = now;

    ObjectGuid guid;
    uint8 groupNr, unk;

    recvData >> unk >> groupNr;

    recvData.ReadBitSeq<1, 3, 7, 2, 0, 5, 4, 6>(guid);
    recvData.ReadByteSeq<7, 0, 2, 4, 5, 3, 6, 1>(guid);

    if (groupNr >= MAX_RAID_SUBGROUPS)
        return;

    uint64 senderGuid = GetPlayer()->GetGUID();
    if (!group->IsLeader(senderGuid) && !group->IsAssistant(senderGuid) && !(group->GetGroupType() & GROUPTYPE_EVERYONE_IS_ASSISTANT))
        return;

    if (!group->HasFreeSlotSubGroup(groupNr))
        return;

    if (sObjectAccessor->FindPlayer(guid))
        group->ChangeMembersGroup(guid, groupNr);
}

void WorldSession::HandleGroupSwapSubGroupOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_GROUP_SWAP_SUB_GROUP");
    uint8 unk1;
    ObjectGuid guid1;
    ObjectGuid guid2;
    uint8 unk2;

    recvData >> unk1;

    recvData.ReadBitSeq<4, 6, 5, 0>(guid1);
    recvData.ReadBitSeq<3, 4>(guid2);
    recvData.ReadBitSeq<7, 2>(guid1);

    recvData.ReadBitSeq<7, 1, 5, 6, 0>(guid2);
    recvData.ReadBitSeq<3>(guid1);
    recvData.ReadBitSeq<2>(guid2);
    recvData.ReadBitSeq<1>(guid1);

    recvData.ReadByteSeq<0>(guid2);
    recvData.ReadByteSeq<5, 0>(guid1);
    recvData.ReadByteSeq<7>(guid2);
    recvData.ReadByteSeq<6>(guid1);
    recvData.ReadByteSeq<1, 5>(guid2);
    recvData.ReadByteSeq<7, 4, 3>(guid1);
    recvData.ReadByteSeq<3>(guid2);
    recvData.ReadByteSeq<1, 4>(guid1);
    recvData.ReadByteSeq<6, 2, 2>(guid2);

    recvData >> unk2;
}

void WorldSession::HandleGroupEveryoneIsAssistantOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_SET_EVERYONE_IS_ASSISTANT");

    Group* group = GetPlayer()->GetGroup();
    if (!group)
        return;

    if (!group->IsLeader(GetPlayer()->GetGUID()))
        return;
    recvData.read_skip<uint8>();
    bool apply = recvData.ReadBit();
    recvData.FlushBits();

    group->ChangeFlagEveryoneAssistant(apply);
}

void WorldSession::HandleGroupAssistantLeaderOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_GROUP_ASSISTANT_LEADER");

    Group* group = GetPlayer()->GetGroup();
    if (!group)
        return;

    if (!group->IsLeader(GetPlayer()->GetGUID()))
        return;

    ObjectGuid guid;
    bool apply;
    uint8 unk = 0;
    recvData >> unk;
    recvData.ReadBitSeq<0, 7, 5, 2>(guid);
    apply = recvData.ReadBit();
    recvData.ReadBitSeq<3, 6, 4, 1>(guid);
    recvData.ReadByteSeq<6, 3, 2, 5, 7, 1, 0, 4>(guid);

    group->SetGroupMemberFlag(guid, apply, MEMBER_FLAG_ASSISTANT);

    group->SendUpdate();
}

void WorldSession::HandlePartyAssignmentOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_GROUP_ASSIGNMENT");

    Group* group = GetPlayer()->GetGroup();
    if (!group)
        return;

    uint64 senderGuid = GetPlayer()->GetGUID();
    if (!group->IsLeader(senderGuid) && !group->IsAssistant(senderGuid) && !(group->GetGroupType() & GROUPTYPE_EVERYONE_IS_ASSISTANT))
        return;

    uint8 assignment, unk;
    bool apply;
    ObjectGuid guid;

    recvData >> assignment >> unk;

    recvData.ReadBitSeq<0>(guid);
    apply = recvData.ReadBit();
    recvData.ReadBitSeq<4, 2, 1, 3, 6, 5, 7>(guid);
    recvData.ReadByteSeq<5, 4, 7, 6, 3, 0, 1, 2>(guid);

    switch (assignment)
    {
        case GROUP_ASSIGN_MAINASSIST:
            group->RemoveUniqueGroupMemberFlag(MEMBER_FLAG_MAINASSIST);
            group->SetGroupMemberFlag(guid, apply, MEMBER_FLAG_MAINASSIST);
            break;
        case GROUP_ASSIGN_MAINTANK:
            group->RemoveUniqueGroupMemberFlag(MEMBER_FLAG_MAINTANK);           // Remove main assist flag from current if any.
            group->SetGroupMemberFlag(guid, apply, MEMBER_FLAG_MAINTANK);
        default:
            break;
    }

    group->SendUpdate();
}

void WorldSession::HandleRaidLeaderReadyCheck(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_RAID_LEADER_READY_CHECK");

    recvData.read_skip<uint8>(); // unk, 0x00

    Group* group = GetPlayer()->GetGroup();
    if (!group)
        return;

    if (!group->IsLeader(GetPlayer()->GetGUID()) && !group->IsAssistant(GetPlayer()->GetGUID()) && !(group->GetGroupType() & GROUPTYPE_EVERYONE_IS_ASSISTANT))
        return;

    ObjectGuid groupGUID = group->GetGUID();
    ObjectGuid leaderGUID = GetPlayer()->GetGUID();

    group->SetReadyCheckCount(1);

    WorldPacket data(SMSG_RAID_READY_CHECK_STARTED);

    data.WriteBitSeq<5, 3, 2>(groupGUID);
    data.WriteBitSeq<1, 3, 2>(leaderGUID);
    data.WriteBitSeq<4, 0, 1>(groupGUID);
    data.WriteBitSeq<5, 4, 0, 7>(leaderGUID);
    data.WriteBitSeq<6>(groupGUID);
    data.WriteBitSeq<6>(leaderGUID);
    data.WriteBitSeq<7>(groupGUID);

    data.WriteByteSeq<7>(leaderGUID);
    data.WriteByteSeq<7>(groupGUID);
    data.WriteByteSeq<3>(leaderGUID);
    data.WriteByteSeq<2, 1>(groupGUID);
    data.WriteByteSeq<5>(leaderGUID);
    data.WriteByteSeq<5, 6>(groupGUID);
    data.WriteByteSeq<2>(leaderGUID);
    data.WriteByteSeq<0, 3>(groupGUID);

    data << uint8(0x00);    // unk 5.0.5

    data.WriteByteSeq<0, 4>(leaderGUID);
    data.WriteByteSeq<4>(groupGUID);
    data.WriteByteSeq<1, 6>(leaderGUID);

    data << uint32(0x88B8); // unk 5.0.5

    group->BroadcastPacket(&data, false, -1);

    group->OfflineReadyCheck();
}

void WorldSession::HandleRaidConfirmReadyCheck(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_RAID_CONFIRM_READY_CHECK");

    Group* group = GetPlayer()->GetGroup();
    if (!group)
        return;

    recvData.read_skip<uint8>(); // unk, 0x00
    bool ready = recvData.ReadBit();
    recvData.ReadBit();
    recvData.ReadBit();

    ObjectGuid plGUID = GetPlayer()->GetGUID();
    ObjectGuid grpGUID = group->GetGUID();

    group->SetReadyCheckCount(group->GetReadyCheckCount() + 1);

    WorldPacket data(SMSG_RAID_READY_CHECK_RESPONSE);

    data.WriteBitSeq<1, 3, 7, 0>(plGUID);
    data.WriteBitSeq<4, 7>(grpGUID);
    data.WriteBitSeq<2>(plGUID);
    data.WriteBit(ready);
    data.WriteBitSeq<2, 6>(grpGUID);
    data.WriteBitSeq<4, 5>(plGUID);
    data.WriteBitSeq<1, 0, 5, 3>(grpGUID);
    data.WriteBitSeq<6>(plGUID);

    data.WriteByteSeq<2, 3, 7>(plGUID);
    data.WriteByteSeq<1, 7>(grpGUID);
    data.WriteByteSeq<1, 0>(plGUID);
    data.WriteByteSeq<2, 3>(grpGUID);
    data.WriteByteSeq<6>(plGUID);
    data.WriteByteSeq<0>(grpGUID);
    data.WriteByteSeq<5, 4>(plGUID);
    data.WriteByteSeq<4, 5, 6>(grpGUID);

    group->BroadcastPacket(&data, true);

    // Send SMSG_RAID_READY_CHECK_COMPLETED
    if (group->GetReadyCheckCount() >= group->GetMembersCount())
    {
        ObjectGuid grpGUID = group->GetGUID();

        data.Initialize(SMSG_RAID_READY_CHECK_COMPLETED);

        data.WriteBitSeq<3, 2, 6, 1, 0, 7, 5, 4>(grpGUID);

        data.WriteByteSeq<0, 6, 2, 4, 3, 5>(grpGUID);

        data << uint8(1);

        data.WriteByteSeq<7, 1>(grpGUID);

        group->BroadcastPacket(&data, true);

    }
}

void WorldSession::BuildPartyMemberStatsChangedPacket(Player* player, WorldPacket* data)
{
    uint32 mask = player->GetGroupUpdateFlag();

    if (mask == GROUP_UPDATE_FLAG_NONE)
        return;

    mask = mask &~ (GROUP_UPDATE_FLAG_AURAS | GROUP_UPDATE_FLAG_PET_AURAS);

    if (mask & GROUP_UPDATE_FLAG_POWER_TYPE)                // if update power type, update current/max power also
        mask |= (GROUP_UPDATE_FLAG_CUR_POWER | GROUP_UPDATE_FLAG_MAX_POWER);

    if (mask & GROUP_UPDATE_FLAG_PET_POWER_TYPE)            // same for pets
        mask |= (GROUP_UPDATE_FLAG_PET_CUR_POWER | GROUP_UPDATE_FLAG_PET_MAX_POWER);

    data->Initialize(SMSG_PARTY_MEMBER_STATS, 80);          // average value
    data->append(player->GetPackGUID());
    *data << uint32(mask);

    if (mask & GROUP_UPDATE_FLAG_STATUS)
    {
        if (player)
        {
            if (player->IsPvP())
                *data << uint16(MEMBER_STATUS_ONLINE | MEMBER_STATUS_PVP);
            else
                *data << uint16(MEMBER_STATUS_ONLINE);
        }
        else
            *data << uint16(MEMBER_STATUS_OFFLINE);
    }

    if (mask & GROUP_UPDATE_FLAG_CUR_HP)
        *data << uint32(player->GetHealth());

    if (mask & GROUP_UPDATE_FLAG_MAX_HP)
        *data << uint32(player->GetMaxHealth());

    Powers powerType = player->getPowerType();
    if (mask & GROUP_UPDATE_FLAG_POWER_TYPE)
        *data << uint8(powerType);

    if (mask & GROUP_UPDATE_FLAG_CUR_POWER)
        *data << uint16(player->GetPower(powerType));

    if (mask & GROUP_UPDATE_FLAG_MAX_POWER)
        *data << uint16(player->GetMaxPower(powerType));

    if (mask & GROUP_UPDATE_FLAG_LEVEL)
        *data << uint16(player->getLevel());

    if (mask & GROUP_UPDATE_FLAG_ZONE)
        *data << uint16(player->GetZoneId());

    if (mask & GROUP_UPDATE_FLAG_UNK100)
        *data << uint16(0);

    if (mask & GROUP_UPDATE_FLAG_POSITION)
        *data << uint16(player->GetPositionX()) << uint16(player->GetPositionY()) << uint16(player->GetPositionZ());

    if (mask & GROUP_UPDATE_FLAG_AURAS)
    {
        *data << uint8(0);
        uint64 auramask = player->GetAuraUpdateMaskForRaid();
        *data << uint64(auramask);
        *data << uint32(MAX_AURAS); // count
        for (uint32 i = 0; i < MAX_AURAS; ++i)
        {
            if (auramask & (uint64(1) << i))
            {
                AuraApplication const* aurApp = player->GetVisibleAura(i);
                if (!aurApp)
                {
                    *data << uint32(0);
                    *data << uint16(0);
                    continue;
                }

                *data << uint32(aurApp->GetBase()->GetId());
                *data << uint16(aurApp->GetFlags());

                if (aurApp->GetFlags() & AFLAG_ANY_EFFECT_AMOUNT_SENT)
                {
                    size_t pos = data->wpos();
                    uint8 count = 0;

                    *data << uint8(0);
                    for (uint32 i = 0; i < MAX_SPELL_EFFECTS; ++i)
                    {
                        if (AuraEffect const *eff = aurApp->GetBase()->GetEffect(i)) // NULL if effect flag not set
                        {
                            *data << float(eff->GetAmount());
                            count++;
                        }
                    }
                    data->put(pos, count);
                }
            }
        }
    }

    Pet* pet = player->GetPet();
    if (mask & GROUP_UPDATE_FLAG_PET_GUID)
    {
        if (pet)
            *data << uint64(pet->GetGUID());
        else
            *data << uint64(0);
    }

    if (mask & GROUP_UPDATE_FLAG_PET_NAME)
    {
        if (pet)
            *data << pet->GetName();
        else
            *data << uint8(0);
    }

    if (mask & GROUP_UPDATE_FLAG_PET_MODEL_ID)
    {
        if (pet)
            *data << uint16(pet->GetDisplayId());
        else
            *data << uint16(0);
    }

    if (mask & GROUP_UPDATE_FLAG_PET_CUR_HP)
    {
        if (pet)
            *data << uint32(pet->GetHealth());
        else
            *data << uint32(0);
    }

    if (mask & GROUP_UPDATE_FLAG_PET_MAX_HP)
    {
        if (pet)
            *data << uint32(pet->GetMaxHealth());
        else
            *data << uint32(0);
    }

    if (mask & GROUP_UPDATE_FLAG_PET_POWER_TYPE)
    {
        if (pet)
            *data << uint8(pet->getPowerType());
        else
            *data << uint8(0);
    }

    if (mask & GROUP_UPDATE_FLAG_PET_CUR_POWER)
    {
        if (pet)
            *data << uint16(pet->GetPower(pet->getPowerType()));
        else
            *data << uint16(0);
    }

    if (mask & GROUP_UPDATE_FLAG_PET_MAX_POWER)
    {
        if (pet)
            *data << uint16(pet->GetMaxPower(pet->getPowerType()));
        else
            *data << uint16(0);
    }

    if (mask & GROUP_UPDATE_FLAG_VEHICLE_SEAT)
    {
        if (Vehicle* veh = player->GetVehicle())
            *data << uint32(veh->GetVehicleInfo()->m_seatID[player->m_movementInfo.t_seat]);
        else
            *data << uint32(0);
    }

    if (mask & GROUP_UPDATE_FLAG_PET_AURAS)
    {
        if (pet)
        {
            *data << uint8(0);
            uint64 auramask = pet->GetAuraUpdateMaskForRaid();
            *data << uint64(auramask);
            *data << uint32(MAX_AURAS); // count
            for (uint32 i = 0; i < MAX_AURAS; ++i)
            {
                if (auramask & (uint64(1) << i))
                {
                    AuraApplication const* aurApp = pet->GetVisibleAura(i);
                    if (!aurApp)
                    {
                        *data << uint32(0);
                        *data << uint16(0);
                        continue;
                    }

                    *data << uint32(aurApp->GetBase()->GetId());
                    *data << uint16(aurApp->GetFlags());

                    if (aurApp->GetFlags() & AFLAG_ANY_EFFECT_AMOUNT_SENT)
                    {
                        size_t pos = data->wpos();
                        uint8 count = 0;

                        *data << uint8(0);
                        for (uint32 i = 0; i < MAX_SPELL_EFFECTS; ++i)
                        {
                            if (AuraEffect const *eff = aurApp->GetBase()->GetEffect(i)) // NULL if effect flag not set
                            {
                                *data << float(eff->GetAmount());
                                count++;
                            }
                        }
                        data->put(pos, count);
                    }
                }
            }
        }
        else
        {
            *data << uint8(0);
            *data << uint64(0);
        }
    }

    if (mask & GROUP_UPDATE_FLAG_PHASE)
    {
        *data << uint32(8); // either 0 or 8, same unk found in SMSG_PHASESHIFT
        *data << uint32(0); // count
        // for (count) *data << uint16(phaseId)
    }
}

/*this procedure handles clients CMSG_REQUEST_PARTY_MEMBER_STATS request*/
void WorldSession::HandleRequestPartyMemberStatsOpcode(WorldPacket& recvData)
{
    return;
    sLog->outDebug("network", "WORLD: Received CMSG_REQUEST_PARTY_MEMBER_STATS");

    ObjectGuid guid;
    recvData.read_skip<uint8>();

    recvData.ReadBitSeq<7, 1, 4, 3, 6, 2, 5, 0>(guid);
    recvData.ReadByteSeq<7, 0, 4, 2, 1, 6, 5, 3>(guid);

    Player* player = HashMapHolder<Player>::Find(guid);
    if (!player)
    {
        WorldPacket data(SMSG_PARTY_MEMBER_STATS_FULL, 3+4+2);
        data << uint8(0);                                   // only for SMSG_PARTY_MEMBER_STATS_FULL, probably arena/bg related
        data.appendPackGUID(guid);
        data << (uint32) GROUP_UPDATE_FLAG_STATUS;
        data << (uint16) MEMBER_STATUS_OFFLINE;
        SendPacket(&data);
        return;
    }

    WorldPacket data;
    player->GetSession()->BuildPartyMemberStatsChangedPacket(player, &data);
    SendPacket(&data);

    /*Pet* pet = player->GetPet();

    WorldPacket data(SMSG_PARTY_MEMBER_STATS_FULL, 4+2+2+2+1+2*6+8+1+8);
    data << uint8(0);                                       // only for SMSG_PARTY_MEMBER_STATS_FULL, probably arena/bg related
    data.append(player->GetPackGUID());

    uint32 mask1 = GROUP_UPDATE_FULL;

    if (!pet)
        mask1 &= ~GROUP_UPDATE_PET;

    Powers powerType = player->getPowerType();
    data << uint32(mask1);                                // group update mask
    data << uint16(MEMBER_STATUS_ONLINE);                 // member's online status, GROUP_UPDATE_FLAG_STATUS
    data << uint32(player->GetHealth());                  // GROUP_UPDATE_FLAG_CUR_HP
    data << uint32(player->GetMaxHealth());               // GROUP_UPDATE_FLAG_MAX_HP
    data << uint8 (powerType);                            // GROUP_UPDATE_FLAG_POWER_TYPE
    data << uint16(player->GetPower(powerType));          // GROUP_UPDATE_FLAG_CUR_POWER
    data << uint16(player->GetMaxPower(powerType));       // GROUP_UPDATE_FLAG_MAX_POWER
    data << uint16(player->getLevel());                   // GROUP_UPDATE_FLAG_LEVEL
    data << uint16(player->GetZoneId());                  // GROUP_UPDATE_FLAG_ZONE
    data << uint16(player->GetPositionX());               // GROUP_UPDATE_FLAG_POSITION
    data << uint16(player->GetPositionY());               // GROUP_UPDATE_FLAG_POSITION
    data << uint16(player->GetPositionZ());               // GROUP_UPDATE_FLAG_POSITION

    // GROUP_UPDATE_FLAG_AURAS
    data << uint8(1);
    uint64 auramask = 0;
    size_t maskPos = data.wpos();
    data << uint64(auramask);                          // placeholder
    data << uint32(MAX_AURAS);                         // count
    for (uint8 i = 0; i < MAX_AURAS; ++i)
    {
        if (AuraApplication const* aurApp = player->GetVisibleAura(i))
        {
            auramask |= (uint64(1) << i);

            data << uint32(aurApp->GetBase()->GetId());
            data << uint16(aurApp->GetFlags());

            if (aurApp->GetFlags() & AFLAG_ANY_EFFECT_AMOUNT_SENT)
            {
                size_t pos = data.wpos();
                uint8 count = 0;

                data << uint8(0);
                for (uint32 i = 0; i < MAX_SPELL_EFFECTS; ++i)
                {
                    if (AuraEffect const *eff = aurApp->GetBase()->GetEffect(i)) // NULL if effect flag not set
                    {
                        data << float(eff->GetAmount());
                        count++;
                    }
                }
                data.put(pos, count);
            }
        }
    }
    data.put<uint64>(maskPos, auramask);                    // GROUP_UPDATE_FLAG_AURAS

    if (pet)
    {
        Powers petpowertype = pet->getPowerType();
        data << uint64(pet->GetGUID());                     // GROUP_UPDATE_FLAG_PET_GUID
        data << pet->GetName();                             // GROUP_UPDATE_FLAG_PET_NAME
        data << uint16(pet->GetDisplayId());                // GROUP_UPDATE_FLAG_PET_MODEL_ID
        data << uint32(pet->GetHealth());                   // GROUP_UPDATE_FLAG_PET_CUR_HP
        data << uint32(pet->GetMaxHealth());                // GROUP_UPDATE_FLAG_PET_MAX_HP
        data << uint8 (petpowertype);                       // GROUP_UPDATE_FLAG_PET_POWER_TYPE
        data << uint16(pet->GetPower(petpowertype));        // GROUP_UPDATE_FLAG_PET_CUR_POWER
        data << uint16(pet->GetMaxPower(petpowertype));     // GROUP_UPDATE_FLAG_PET_MAX_POWER

        // GROUP_UPDATE_FLAG_PET_AURAS
        data << uint8(1);
        uint64 petauramask = 0;
        size_t petMaskPos = data.wpos();
        data << uint64(petauramask);                       // placeholder
        data << uint32(MAX_AURAS);                         // count
        for (uint8 i = 0; i < MAX_AURAS; ++i)
        {
            if (AuraApplication const* aurApp = pet->GetVisibleAura(i))
            {
                petauramask |= (uint64(1) << i);

                data << uint32(aurApp->GetBase()->GetId());
                data << uint16(aurApp->GetFlags());

                if (aurApp->GetFlags() & AFLAG_ANY_EFFECT_AMOUNT_SENT)
                {
                    size_t pos = data.wpos();
                    uint8 count = 0;

                    data << uint8(0);
                    for (uint32 i = 0; i < MAX_SPELL_EFFECTS; ++i)
                    {
                        if (AuraEffect const *eff = aurApp->GetBase()->GetEffect(i)) // NULL if effect flag not set
                        {
                            data << float(eff->GetAmount());
                            count++;
                        }
                    }
                    data.put(pos, count);
                }
            }
        }

        data.put<uint64>(petMaskPos, petauramask);           // GROUP_UPDATE_FLAG_PET_AURAS
    }
    // else not needed, flags do not include any PET_ update

    // GROUP_UPDATE_FLAG_PHASE
    data << uint32(8); // either 0 or 8, same unk found in SMSG_PHASESHIFT
    data << uint32(0); // count
    // for (count) *data << uint16(phaseId)

    SendPacket(&data);*/
}

/*!*/void WorldSession::HandleRequestRaidInfoOpcode(WorldPacket& /*recvData*/)
{
    // every time the player checks the character screen
    _player->SendRaidInfo();
}

/*void WorldSession::HandleGroupCancelOpcode(WorldPacket & recvData)
{
sLog->outDebug("network", "WORLD: got CMSG_GROUP_CANCEL.");
}*/

void WorldSession::HandleOptOutOfLootOpcode(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_OPT_OUT_OF_LOOT");

    bool passOnLoot;
    recvData >> passOnLoot; // 1 always pass, 0 do not pass

    // ignore if player not loaded
    if (!GetPlayer())                                        // needed because STATUS_AUTHED
    {
        if (passOnLoot)
            sLog->outError("network", "CMSG_OPT_OUT_OF_LOOT value<>0 for not-loaded character!");
        return;
    }

    GetPlayer()->SetPassOnGroupLoot(passOnLoot);
}

void WorldSession::HandleRolePollBegin(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_ROLE_POLL_BEGIN");

    uint8 unk = 0;
    recvData >> unk;

    Group* group = GetPlayer()->GetGroup();
    if (!group)
        return;

    ObjectGuid guid = GetPlayer()->GetGUID();

    WorldPacket data(SMSG_ROLL_POLL_INFORM);

    data.WriteBitSeq<0, 5, 7, 6, 1, 2, 4, 3>(guid);

    data.WriteByteSeq<5, 0, 3, 4, 7, 2>(guid);

    data << uint8(unk);

    data.WriteByteSeq<6, 1>(guid);

    group->BroadcastPacket(&data, false, -1);
}

void WorldSession::HandleRequestJoinUpdates(WorldPacket& recvData)
{
    sLog->outDebug("network", "WORLD: Received CMSG_GROUP_REQUEST_JOIN_UPDATES");

    uint8 unk;
    recvData >> unk;

    Group* group = GetPlayer()->GetGroup();
    if (!group)
        return;

    group->SendUpdate();
}
