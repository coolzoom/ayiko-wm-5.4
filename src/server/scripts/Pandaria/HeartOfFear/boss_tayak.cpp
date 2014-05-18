#include "GameObjectAI.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "heart_of_fear.h"

// Zorlok - 62980
class boss_tayak : public CreatureScript
{
    public:
        boss_tayak() : CreatureScript("boss_tayak") { }

        struct boss_tayakAI : public BossAI
        {
            boss_tayakAI(Creature* creature) : BossAI(creature, DATA_TAYAK)
            {
                pInstance = creature->GetInstanceScript();
            }

            InstanceScript* pInstance;
            EventMap events;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_tayakAI(creature);
        }
};

void AddSC_boss_tayak()
{
    new boss_tayak();
}