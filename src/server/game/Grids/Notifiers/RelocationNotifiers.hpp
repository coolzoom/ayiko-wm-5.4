#ifndef TRINITY_GAME_RELOCATION_NOTIFIERS_HPP
#define TRINITY_GAME_RELOCATION_NOTIFIERS_HPP

#include "GridDefines.h"

class Map;
class Unit;
class WorldObject;

struct Cell;

namespace Trinity {

class CreatureRelocationNotifier final
{
public:
    void setCreature(Creature &creature)
    {
        me_ = &creature;
    }

    void Visit(CreatureMapType &);
    void Visit(PlayerMapType &);

    template <typename NotInterested>
    void Visit(NotInterested &) { }

    void processCollected();

private:
    Creature *me_;
    std::vector<Unit *> unitToMe_;
    std::vector<Creature *> meToCreature_;
};

class DelayedUnitRelocation final
{
    struct PlayerData final
    {
        PlayerData(WorldObject const *newViewPoint, CellCoord const &newCoord)
            : viewPoint(newViewPoint)
            , coord(newCoord)
        { }

        WorldObject const *viewPoint;
        CellCoord coord;
    };

public:
    void operator()(Map &map, Cell &c, CellCoord const &pair, float radius);

    void Visit(CreatureMapType &);
    void Visit(PlayerMapType &);

    template <typename NotInterested>
    void Visit(NotInterested &) { }

private:
    CreatureMapType creatures_;
    std::vector<std::pair<Player *, PlayerData>> players_;

    CreatureRelocationNotifier creatureNotifier_;
};

} // namespace Trinity

#endif // TRINITY_GAME_RELOCATION_NOTIFIERS_HPP
