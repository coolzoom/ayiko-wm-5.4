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

#ifndef TRINITY_TYPECONTAINERVISITOR_H
#define TRINITY_TYPECONTAINERVISITOR_H

/*
 * @class TypeContainerVisitor is implemented as a visitor pattern.  It is
 * a visitor to the ContainerMapList.  The visitor has to overload its types as
 * a visit method is called.
 */

#include "Define.h"
#include "Dynamic/TypeContainer.h"

namespace Trinity {

namespace Detail {

// terminate condition container map list
template <typename Visitor>
inline void VisitorHelper(Visitor &/*v*/, ContainerMapList<TypeNull> &/*c*/) { }

template <typename Visitor, typename T>
inline void VisitorHelper(Visitor &v, ContainerMapList<T> &c)
{
    v.Visit(c._element);
}

// recursion container map list
template <typename Visitor, typename Head, typename Tail>
inline void VisitorHelper(Visitor &v, ContainerMapList<TypeList<Head, Tail>> &c)
{
    VisitorHelper(v, c.head_);
    VisitorHelper(v, c.tail_);
}

// for TypeMapContainer
template <typename Visitor, typename ObjectTypes>
inline void VisitorHelper(Visitor &v, TypeMapContainer<ObjectTypes> &c)
{
    VisitorHelper(v, c.GetElements());
}

} // namespace Detail

template <typename Visitor, typename TypeContainer>
class TypeContainerVisitor final
{
public:
    TypeContainerVisitor(Visitor &v)
        : i_visitor(v)
    { }

    void Visit(TypeContainer &c)
    {
        Trinity::Detail::VisitorHelper(i_visitor, c);
    }

private:
    Visitor &i_visitor;
};

} // namespace Trinity

#endif
