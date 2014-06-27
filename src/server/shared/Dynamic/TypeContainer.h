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

#ifndef TRINITY_TYPECONTAINER_H
#define TRINITY_TYPECONTAINER_H

/*
 * Here, you'll find a series of containers that allow you to hold multiple
 * types of object at the same time.
 */

#include "Define.h"
#include "Dynamic/TypeList.h"
#include "GridRefManager.h"

#include <type_traits>
#include <vector>

/*
 * @class ContainerMapList is a mulit-type container for map elements
 * By itself its meaningless but collaborate along with TypeContainers,
 * it become the most powerfully container in the whole system.
 */
template <typename T>
struct ContainerMapList final
{
    GridRefManager<T> _element;
};

template <>
struct ContainerMapList<TypeNull> final { };

template <typename Head, typename Tail>
struct ContainerMapList<TypeList<Head, Tail>> final
{
    ContainerMapList<Head> head_;
    ContainerMapList<Tail> tail_;
};

/*
 * @class ContaierArrayList is a multi-type container for
 * array of elements.
 */
template <typename T>
struct ContainerArrayList final
{
    std::vector<T> _element;
};

template <>
struct ContainerArrayList<TypeNull> final { };

template <typename Head, typename Tail>
struct ContainerArrayList<TypeList<Head, Tail>> final
{
    ContainerArrayList<Head> head_;
    ContainerArrayList<Tail> tail_;
};

namespace Trinity {

namespace Detail {

template <typename SpecificType, typename Head, typename Tail>
inline typename std::enable_if<
    std::is_same<Head, SpecificType>::value,
    ContainerMapList<SpecificType> const &
>::type
mapForType(ContainerMapList<TypeList<Head, Tail>> const &m)
{
    return m.head_;
}

template <typename SpecificType, typename Head, typename Tail>
inline typename std::enable_if<
    !std::is_same<Head, SpecificType>::value,
    ContainerMapList<SpecificType> const &
>::type
mapForType(ContainerMapList<TypeList<Head, Tail>> const &m)
{
    return Trinity::Detail::mapForType<SpecificType>(m.tail_);
}

template <typename SpecificType, typename Head, typename Tail>
inline typename std::enable_if<
    std::is_same<Head, SpecificType>::value,
    ContainerMapList<SpecificType> &
>::type
mapForType(ContainerMapList<TypeList<Head, Tail>> &m)
{
    return m.head_;
}

template <typename SpecificType, typename Head, typename Tail>
inline typename std::enable_if<
    !std::is_same<Head, SpecificType>::value,
    ContainerMapList<SpecificType> &
>::type
mapForType(ContainerMapList<TypeList<Head, Tail>> &m)
{
    return Trinity::Detail::mapForType<SpecificType>(m.tail_);
}

} // namespace Detail

/* ContainerMapList Helpers */

template <typename SpecificType, typename Head, typename Tail>
inline size_t Count(ContainerMapList<TypeList<Head, Tail>> const &m)
{
    return Trinity::Detail::mapForType<SpecificType>(m)._element.getSize();
}

template <typename SpecificType, typename Head, typename Tail>
inline void Insert(ContainerMapList<TypeList<Head, Tail>> &m, SpecificType *obj)
{
    obj->AddToGrid(Trinity::Detail::mapForType<SpecificType>(m)._element);
}

//// non-const remove method
//template<class SPECIFIC_TYPE> SPECIFIC_TYPE* Remove(ContainerMapList<SPECIFIC_TYPE> & /*elements*/, SPECIFIC_TYPE *obj)
//{
//    obj->GetGridRef().unlink();
//    return obj;
//}

//template<class SPECIFIC_TYPE> SPECIFIC_TYPE* Remove(ContainerMapList<TypeNull> &/*elements*/, SPECIFIC_TYPE * /*obj*/)
//{
//    return NULL;
//}

//// this is a missed
//template<class SPECIFIC_TYPE, class T> SPECIFIC_TYPE* Remove(ContainerMapList<T> &/*elements*/, SPECIFIC_TYPE * /*obj*/)
//{
//    return NULL;
//}

//template<class SPECIFIC_TYPE, class T, class H> SPECIFIC_TYPE* Remove(ContainerMapList<TypeList<H, T> > &elements, SPECIFIC_TYPE *obj)
//{
//    // The head element is bad
//    SPECIFIC_TYPE* t = Remove(elements.head_, obj);
//    return ( t != NULL ? t : Remove(elements.tail_, obj) );
//}

} // namespace Trinity

/*
 * @class TypeMapContainer contains a fixed number of types and is
 * determined at compile time.  This is probably the most complicated
 * class and do its simplest thing, that is, holds objects
 * of different types.
 */

template <typename ObjectTypes>
class TypeMapContainer final
{
public:
    typedef ContainerMapList<ObjectTypes> ObjectMap;

public:
    template <typename SpecificType>
    size_t Count() const
    {
        return Trinity::Count<SpecificType>(i_elements);
    }

    /// inserts a specific object into the container
    template <typename SpecificType>
    void insert(SpecificType *obj)
    {
        Trinity::Insert(i_elements, obj);
    }

    ///  Removes the object from the container, and returns the removed object
    //template<class SPECIFIC_TYPE> bool remove(SPECIFIC_TYPE* obj)
    //{
    //    SPECIFIC_TYPE* t = Trinity::Remove(i_elements, obj);
    //    return (t != NULL);
    //}

    ObjectMap & GetElements() { return i_elements; }
    ObjectMap const & GetElements() const { return i_elements;}

private:
    ObjectMap i_elements;
};

#endif
