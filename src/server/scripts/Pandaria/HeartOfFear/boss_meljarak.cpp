#include "GameObjectAI.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "heart_of_fear.h"

// Zorlok - 62980
class boss_meljarak : public CreatureScript
{
    public:
        boss_meljarak() : CreatureScript("boss_meljarak") { }

        struct boss_meljarakAI : public BossAI
        {
            boss_meljarakAI(Creature* creature) : BossAI(creature, DATA_MELJARAK)
            {
                pInstance = creature->GetInstanceScript();
            }

            InstanceScript* pInstance;
            EventMap events;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_meljarakAI(creature);
        }
};

void AddSC_boss_meljarak()
{
    new boss_meljarak();
}