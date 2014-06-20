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

#ifndef TRINITY_NGRID_H
#define TRINITY_NGRID_H

/** NGrid is nothing more than a wrapper of the Grid with an NxN cells
 */

#include "Grid.h"
#include "GridReference.h"
#include "Timer.h"
#include "Util.h"

#define DEFAULT_VISIBILITY_NOTIFY_PERIOD      1000

class GridInfo
{
public:
    GridInfo()
        : i_timer(0), vis_Update(0, irand(0, DEFAULT_VISIBILITY_NOTIFY_PERIOD)),
          i_unloadActiveLockCount(0), i_unloadExplicitLock(false), i_unloadReferenceLock(false) {}
    GridInfo(time_t expiry, bool unload = true )
        : i_timer(expiry), vis_Update(0, irand(0, DEFAULT_VISIBILITY_NOTIFY_PERIOD)),
          i_unloadActiveLockCount(0), i_unloadExplicitLock(!unload), i_unloadReferenceLock(false) {}
    const TimeTracker& getTimeTracker() const { return i_timer; }
    bool getUnloadLock() const { return i_unloadActiveLockCount || i_unloadExplicitLock || i_unloadReferenceLock; }
    void setUnloadExplicitLock(bool on) { i_unloadExplicitLock = on; }
    void setUnloadReferenceLock(bool on) { i_unloadReferenceLock = on; }
    void incUnloadActiveLock() { ++i_unloadActiveLockCount; }
    void decUnloadActiveLock() { if (i_unloadActiveLockCount) --i_unloadActiveLockCount; }

    void setTimer(const TimeTracker& pTimer) { i_timer = pTimer; }
    void ResetTimeTracker(time_t interval) { i_timer.Reset(interval); }
    void UpdateTimeTracker(time_t diff) { i_timer.Update(diff); }
    PeriodicTimer& getRelocationTimer() { return vis_Update; }
private:
    TimeTracker i_timer;
    PeriodicTimer vis_Update;

    uint16 i_unloadActiveLockCount : 16;                    // lock from active object spawn points (prevent clone loading)
    bool   i_unloadExplicitLock    : 1;                     // explicit manual lock or config setting
    bool   i_unloadReferenceLock   : 1;                     // lock from instance map copy
};

enum GridState
{
    GRID_STATE_INVALID,
    GRID_STATE_ACTIVE,
    GRID_STATE_IDLE,
    GRID_STATE_REMOVAL,
    MAX_GRID_STATE
};

template <uint32 N, class ACTIVE_OBJECT, class WORLD_OBJECT_TYPES, class GRID_OBJECT_TYPES>
class NGrid
{
    public:
        typedef Grid<ACTIVE_OBJECT, WORLD_OBJECT_TYPES, GRID_OBJECT_TYPES> GridType;

        NGrid(int32 x, int32 y, time_t expiry, bool unload = true) :
            i_GridInfo(GridInfo(expiry, unload)), i_x(x), i_y(y),
            i_cellstate(GRID_STATE_INVALID), i_GridObjectDataLoaded(false)
        { }

        GridType& GetGridType(const uint32 x, const uint32 y)
        {
            return i_cells[x][y];
        }

        GridType const& GetGridType(const uint32 x, const uint32 y) const
        {
            return i_cells[x][y];
        }

        GridState GetGridState(void) const { return i_cellstate; }
        void SetGridState(GridState s) { i_cellstate = s; }

        int32 getX() const { return i_x; }
        int32 getY() const { return i_y; }

        bool isGridObjectDataLoaded() const { return i_GridObjectDataLoaded; }
        void setGridObjectDataLoaded(bool pLoaded) { i_GridObjectDataLoaded = pLoaded; }

        GridInfo* getGridInfoRef() { return &i_GridInfo; }
        const TimeTracker& getTimeTracker() const { return i_GridInfo.getTimeTracker(); }
        bool getUnloadLock() const { return i_GridInfo.getUnloadLock(); }
        void setUnloadExplicitLock(bool on) { i_GridInfo.setUnloadExplicitLock(on); }
        void setUnloadReferenceLock(bool on) { i_GridInfo.setUnloadReferenceLock(on); }
        void incUnloadActiveLock() { i_GridInfo.incUnloadActiveLock(); }
        void decUnloadActiveLock() { i_GridInfo.decUnloadActiveLock(); }
        void ResetTimeTracker(time_t interval) { i_GridInfo.ResetTimeTracker(interval); }
        void UpdateTimeTracker(time_t diff) { i_GridInfo.UpdateTimeTracker(diff); }

        // Visit all Grids (cells) in NGrid (grid)
        template<class T, class TT>
        void VisitAllGrids(TypeContainerVisitor<T, TypeMapContainer<TT> > &visitor)
        {
            for (uint32 x = 0; x < N; ++x)
                for (uint32 y = 0; y < N; ++y)
                    GetGridType(x, y).Visit(visitor);
        }

        // Visit a single Grid (cell) in NGrid (grid)
        template<class T, class TT>
        void VisitGrid(const uint32 x, const uint32 y, TypeContainerVisitor<T, TypeMapContainer<TT> > &visitor)
        {
            GetGridType(x, y).Visit(visitor);
        }

        template<class T>
        uint32 GetWorldObjectCountInNGrid() const
        {
            uint32 count = 0;
            for (uint32 x = 0; x < N; ++x)
                for (uint32 y = 0; y < N; ++y)
                    count += i_cells[x][y].template GetWorldObjectCountInGrid<T>();
            return count;
        }

    private:
        GridInfo i_GridInfo;
        int32 i_x;
        int32 i_y;
        GridState i_cellstate;
        GridType i_cells[N][N];
        bool i_GridObjectDataLoaded;
};

#endif
