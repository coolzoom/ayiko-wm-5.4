#include "SpellModifier.hpp"
#include "SpellInfo.h"
#include "SpellMgr.h"
#include "SpellAuraEffects.h"

bool SpellModifier::isAffectingSpell(SpellInfo const *spell) const
{
    if (!spell->IsAffectedBySpellMods())
        return false;

    // False if affect_spell == NULL or spellFamily not equal
    auto const affectSpell = sSpellMgr->GetSpellInfo(ownerEffect->GetId());
    if (!affectSpell || affectSpell->SpellFamilyName != spell->SpellFamilyName)
        return false;

    if (mask & spell->SpellFamilyFlags)
        return true;

    // Elemental Blast is affected by Ancestral Swiftness and Maelstrom Weapon
    if (spell->Id == 117014 && (affectSpell->Id == 16188 || affectSpell->Id == 53817))
        return true;

    return false;
}
