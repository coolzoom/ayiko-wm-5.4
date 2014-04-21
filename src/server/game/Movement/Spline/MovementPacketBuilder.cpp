/*
 * Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "MovementPacketBuilder.h"
#include "MoveSpline.h"
#include "WorldPacket.h"
#include "Object.h"

namespace Movement
{
    inline void operator << (ByteBuffer& b, const Vector3& v)
    {
        b << v.x << v.y << v.z;
    }

    inline void operator >> (ByteBuffer& b, Vector3& v)
    {
        b >> v.x >> v.y >> v.z;
    }

    enum MonsterMoveType
    {
        MonsterMoveNormal       = 0,
        MonsterMoveStop         = 1,
        MonsterMoveFacingSpot   = 2,
        MonsterMoveFacingTarget = 3,
        MonsterMoveFacingAngle  = 4
    };

    void PacketBuilder::WriteCreateBits(MoveSpline const& moveSpline, ByteBuffer& data)
    {
        ASSERT(!moveSpline.Finalized());

        MoveSplineFlag flags = moveSpline.splineflags;

        data.WriteBit(true);
        data.WriteBit(flags.parabolic || flags.animation);

        data.WriteBits(uint8(moveSpline.spline.mode()), 2);
        data.WriteBits(flags.raw(), 25);
        data.WriteBit(false);
        if (false)
        {
            data.WriteBits(0, 21);
            data.WriteBits(0, 2);
        }
        data.WriteBits(moveSpline.getPath().size(), 20);
        data.WriteBit(flags.parabolic);
    }

    void PacketBuilder::WriteCreateData(MoveSpline const& moveSpline, ByteBuffer& data, Unit* /*unit*/)
    {
        if (/*!moveSpline.Finalized()*/true)
        {
            MoveSplineFlag splineFlags = moveSpline.splineflags;

            uint8 splineType = 0;
            switch (splineFlags & MoveSplineFlag::Mask_Final_Facing)
            {
                case MoveSplineFlag::Final_Target:
                    splineType = MonsterMoveFacingTarget;
                    break;
                case MoveSplineFlag::Final_Angle:
                    splineType = MonsterMoveFacingAngle;
                    break;
                case MoveSplineFlag::Final_Point:
                    splineType = MonsterMoveFacingSpot;
                    break;
                default:
                    splineType = MonsterMoveNormal;
                    break;
            }

            data << uint8(splineType);
            data << float(1.0f);                             // splineInfo.duration_mod; added in 3.1

            uint32 nodes = moveSpline.getPath().size();
            for (uint32 i = 0; i < nodes; ++i)
            {
                data << float(moveSpline.getPath()[i].z);
                data << float(moveSpline.getPath()[i].x);
                data << float(moveSpline.getPath()[i].y);
            }

            data << float(1.0f);                             // splineInfo.duration_mod_next; added in 3.1

            if (splineFlags.final_point)
                data << moveSpline.facing.f.z << moveSpline.facing.f.y << moveSpline.facing.f.x;

            if (splineFlags.final_angle)
                data << moveSpline.facing.angle;

            if (splineFlags.parabolic)
                data << moveSpline.vertical_acceleration;   // added in 3.1

            if (splineFlags.parabolic || splineFlags.animation)
                data << moveSpline.effect_start_time;       // added in 3.1

            data << moveSpline.timePassed();
            data << moveSpline.Duration();
        }

        if (!moveSpline.isCyclic())
        {
            Vector3 dest = moveSpline.FinalDestination();
            data << moveSpline.GetId();
            data << float(dest.z);
            data << float(dest.x);
            data << float(dest.y);
        }
        else
        {
            data << moveSpline.GetId();
            data << float(0.0f);
            data << float(0.0f);
            data << float(0.0f);
        }
    }

    void PacketBuilder::WriteCreateGuid(MoveSpline const& moveSpline, ByteBuffer& data)
    {
        if ((moveSpline.splineflags & MoveSplineFlag::Mask_Final_Facing) == MoveSplineFlag::Final_Target)
        {
            ObjectGuid facingGuid = moveSpline.facing.target;

            data.WriteBitSeq<3, 1, 0, 7, 6, 4, 5, 2>(facingGuid);
            data.WriteByteSeq<3, 0, 4, 6, 1, 5, 2, 7>(facingGuid);
        }
    }
}
