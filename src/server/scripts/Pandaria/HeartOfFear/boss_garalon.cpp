#include "GameObjectAI.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "heart_of_fear.h"

// Zorlok - 62980
class boss_garalon : public CreatureScript
{
    public:
        boss_garalon() : CreatureScript("boss_garalon") { }

        struct boss_garalonAI : public BossAI
        {
            boss_garalonAI(Creature* creature) : BossAI(creature, DATA_GARALON)
            {
                pInstance = creature->GetInstanceScript();
            }

            InstanceScript* pInstance;
            EventMap events;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_garalonAI(creature);
        }
};

void AddSC_boss_garalon()
{
    new boss_garalon();
}