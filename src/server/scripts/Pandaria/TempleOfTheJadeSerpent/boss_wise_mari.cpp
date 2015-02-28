/*
* Copyright (C) 2008-2015 TrinityCore <http://www.trinitycore.org/>
* Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "temple_of_the_jade_serpent.h"

static const float fountainTriggerPos[4][3] =
{
    { 1022.743f, -2544.295f, 173.7757f },
    { 1023.314f, -2569.695f, 176.0339f },
    { 1059.943f, -2581.648f, 176.1427f },
    { 1075.231f, -2561.335f, 173.8758f },
};

static const float hydrolanceLeftTrigger[5][3] =
{
    { 1061.411f, -2570.721f, 174.2403f },
    { 1058.921f, -2573.487f, 174.2403f },
    { 1055.910f, -2575.674f, 174.2403f },
    { 1052.511f, -2577.188f, 174.2403f },
    { 1048.871f, -2577.961f, 174.2403f },
};

static const float hydrolanceRightTrigger[5][3] =
{
    { 1035.333f, -2573.693f, 174.2403f },
    { 1032.795f, -2570.971f, 174.2403f },
    { 1030.878f, -2567.781f, 174.2403f },
    { 1029.667f, -2564.263f, 174.2403f },
    { 1029.213f, -2560.569f, 174.2403f },
};

class boss_wase_mari : public CreatureScript
{
public:
    boss_wase_mari() : CreatureScript("boss_wase_mari") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new boss_wise_mari_AI(creature);
    }

    enum eTexts
    {
        TALK_BOSS_EMOTE_AGGRO   = 0,
        TALK_AGGRO              = 1,
        TALK_CALL_WATER         = 2,
        TALK_PHASE_SWITCH       = 3,
        TALK_PHASE_SWITCH_EMOTE = 4,
        TALK_DEATH_1            = 5,
        TALK_DEATH_2            = 6,
        TALK_DEATH_3            = 7,
        TALK_KILL_PLAYER        = 8,
    };

    enum eEvents
    {
        EVENT_CALL_WATER        = 1,
        EVENT_HYDROLANCE        = 2,
        EVENT_HYDROLANCE_START  = 3,
        EVENT_SWITCH_PHASE_TWO  = 4,
        EVENT_WASH_AWAY         = 5,
        EVENT_DONE              = 6,
        EVENT_TALK_DEATH_1      = 7,
        EVENT_TALK_DEATH_2      = 8,
        EVENT_TALK_DEATH_3      = 9
    };

    enum eSpells
    {
        SPELL_WATER_BUBBLE_WISE       = 106062,
        SPELL_CALL_WATER              = 106526,
        SPELL_CORRUPTED_FOUTAIN       = 106518,
        SPELL_HYDROLANCE_PRECAST      = 115220,
        SPELL_HYDROLANCE_DMG_BOTTOM   = 106267,
        SPELL_HYDROLANCE_VISUAL       = 106055,
        SPELL_HYDROLANCE_DMG          = 106105,
        SPELL_WASH_AWAY               = 106331,
        SPELL_RELEASED_FROM_SHA       = 106770,
        SPELL_CLEANSING_WATERS        = 106771,
        SPELL_CLAIMING_WATERS         = 115622,
        SPELL_QUIET_SUICIDE           = 115372,
        SPELL_BLESSING_OF_WATERSPEKER = 121483,
        SPELL_KNEEL                   = 115368,
        SPELL_WASH_AWAY_COSMETIC      = 115575
    };

    enum eTimers
    {
        TIMER_CALL_WATTER       = 29000,
        TIMER_HYDROLANCE_START  = 10000,
        TIMER_HYDROLANCE        = 5500,
        TIMER_SWITCH_PHASE_TWO  = 15000,
        TIMER_WASH_AWAY         = 125
    };

    enum hydrolancePhase
    {
        HYDROLANCE_BOTTOM = 1,
        HYDROLANCE_LEFT   = 2,
        HYDROLANCE_RIGHT  = 3
    };

    struct boss_wise_mari_AI : public BossAI
    {
        boss_wise_mari_AI(Creature* creature) : BossAI(creature, DATA_WISE_MARI) {}

        bool fightWon, canDead;
        uint8 phase, foutainCount;
        uint32 hydrolancePhase;
        uint64 foutainTrigger[4];
        
        EventMap events;
        EventMap cosmeticEvents;

        void InitializeAI() override
        {
            canDead = false;
            fightWon = false;

            Reset();
        }

        void Reset() override
        {
            _Reset();
            if (instance)
                instance->SetData(DATA_WISE_MARI, NOT_STARTED);

            for (uint8 i = 0; i < 4; i++)
                foutainTrigger[i] = 0;

            std::list<Creature*> triggerList;
            GetCreatureListWithEntryInGrid(triggerList, me, NPC_FOUNTAIN_TRIGGER, 50.0f);
            for(auto itr : triggerList)
                itr->RemoveAllAuras();

            hydrolancePhase = 0;
            foutainCount    = 0;
            phase           = 0;
            me->RemoveAurasDueToSpell(SPELL_WATER_BUBBLE_WISE);
            me->AddUnitState(UNIT_STATE_ROOT | UNIT_STATE_CANNOT_TURN);
        }

        void EnterCombat(Unit* who) override
        {
            _EnterCombat();
            if (instance)
                instance->SetData(DATA_WISE_MARI, IN_PROGRESS);

            std::list<Creature*> triggerList;
            GetCreatureListWithEntryInGrid(triggerList, me, NPC_FOUNTAIN_TRIGGER, 50.0f);
            uint8 tab = 0;
            for(auto itr : triggerList)
            {
                itr->RemoveAllAuras();
                foutainTrigger[++tab] = itr->GetGUID();
            }

            std::list<Creature*> dropletList;
            GetCreatureListWithEntryInGrid(dropletList, me, NPC_CORRUPT_DROPLET, 50.0f);
            for(auto itr : dropletList)
            {
                if (itr->IsSummon())
                    itr->DespawnOrUnsummon();
            }

            phase = 1;
            hydrolancePhase = HYDROLANCE_BOTTOM;
            Talk(TALK_AGGRO);
            Talk(TALK_BOSS_EMOTE_AGGRO);
            me->SetInCombatWithZone();
            me->CastSpell(me, SPELL_WATER_BUBBLE_WISE, true);
            events.ScheduleEvent(EVENT_CALL_WATER, 8 * IN_MILLISECONDS);
            events.ScheduleEvent(EVENT_HYDROLANCE_START, TIMER_HYDROLANCE_START);

            if(instance)
               instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
        }

        void KilledUnit(Unit* victim) override
        {
            if (victim->GetTypeId() == TYPEID_PLAYER)
                Talk(TALK_KILL_PLAYER);
        }

        void DamageTaken(Unit* attacker, uint32 &damage) override
        {
            if (me->GetHealth() <= damage)
            {
                if (!fightWon)
                    damage = 0;

                if (!canDead)
                {
                    canDead = true;
                    _JustDied();
                    if (instance)
                    {
                        instance->SetData(DATA_WISE_MARI, DONE);
                        instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
                    }

                    events.CancelEvent(EVENT_WASH_AWAY);                   
                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_IMMUNE_TO_NPC);
                    me->SetFacingTo(me->GetAngle(1049.362f, -2552.748f));
                    me->RemoveAura(SPELL_WASH_AWAY);
                    me->CastSpell(me, SPELL_KNEEL, false);
                    me->CastSpell(me, SPELL_RELEASED_FROM_SHA, false);
                    me->CastSpell(me, SPELL_CLEANSING_WATERS, false);
                    me->CastSpell(me, SPELL_CLAIMING_WATERS, false);
                    cosmeticEvents.ScheduleEvent(EVENT_TALK_DEATH_1, 1 * IN_MILLISECONDS);                   
                }
            }
        }

        void EnterEvadeMode() override
        {
            BossAI::EnterEvadeMode();
            if (instance)
            {
                instance->SetData(DATA_WISE_MARI, FAIL);
                instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            }
        }

        void UpdateAI(const uint32 diff) override
        {
            if (uint32 eventId = cosmeticEvents.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_DONE:
                        fightWon = true;

                        if (InstanceScript* instance = me->GetInstanceScript())
                            instance->DoCastSpellOnPlayers(SPELL_BLESSING_OF_WATERSPEKER);

                        if (Player* originalCaster = me->GetLootRecipient())
                            me->CastSpell(me, SPELL_QUIET_SUICIDE, false, NULL, NULL, originalCaster->GetGUID());
                        break;
                    case EVENT_TALK_DEATH_1:
                        Talk(TALK_DEATH_1);
                        cosmeticEvents.ScheduleEvent(EVENT_TALK_DEATH_2, 5 * IN_MILLISECONDS);
                        break;
                    case EVENT_TALK_DEATH_2:
                        Talk(TALK_DEATH_2);
                        cosmeticEvents.ScheduleEvent(EVENT_TALK_DEATH_3, 9 * IN_MILLISECONDS);
                        break;
                    case EVENT_TALK_DEATH_3:
                        Talk(TALK_DEATH_3);
                        cosmeticEvents.ScheduleEvent(EVENT_DONE, 5 * IN_MILLISECONDS);
                        break;
                }
            }

            events.Update(diff);
            cosmeticEvents.Update(diff);

            if (!UpdateVictim())
                return;

            if (me->GetUInt32Value(UNIT_FIELD_TARGET))
                me->SetUInt32Value(UNIT_FIELD_TARGET, 0);

            if (me->HasUnitState(UNIT_STATE_CASTING) && phase != 2)
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_CALL_WATER:
                        {
                            Talk(TALK_CALL_WATER);
                            Creature* trigger = me->GetCreature(*me, foutainTrigger[++foutainCount]);
                            if(trigger)
                            {
                                me->CastSpell(trigger, SPELL_CALL_WATER, true);
                                trigger->AddAura(SPELL_CORRUPTED_FOUTAIN, trigger);
                            }

                            if(foutainCount == 4)
                            {
                               phase = 2;
                               events.Reset();
                               events.ScheduleEvent(EVENT_SWITCH_PHASE_TWO, TIMER_SWITCH_PHASE_TWO);
                               break;
                            }
                            events.ScheduleEvent(EVENT_CALL_WATER, TIMER_CALL_WATTER + rand() % 6000);
                        }
                        break;
                    case EVENT_HYDROLANCE_START:
                        {
                            float facing = 0.00f;
                            events.ScheduleEvent(EVENT_HYDROLANCE, TIMER_HYDROLANCE);
                            switch(hydrolancePhase)
                            {
                                case HYDROLANCE_BOTTOM:
                                    {
                                        std::list<Creature*> trigger;
                                        me->GetCreatureListWithEntryInGrid(trigger, NPC_HYDROCALINE_TRIGGER, 50.0f);
                                        for(auto itr : trigger)
                                             itr->CastSpell(itr, SPELL_HYDROLANCE_PRECAST, true);

                                        facing = 1.23f;
                                    }
                                    break;
                                case HYDROLANCE_RIGHT:
                                    {
                                       for(int i = 0; i < 5; i++)
                                            me->CastSpell(hydrolanceRightTrigger[i][0], hydrolanceRightTrigger[i][1], hydrolanceRightTrigger[i][2], SPELL_HYDROLANCE_PRECAST, true);

                                       facing = 3.55f;
                                    }
                                    break;
                                case HYDROLANCE_LEFT:
                                    {
                                        for(int i = 0; i < 5; i++)
                                             me->CastSpell(hydrolanceLeftTrigger[i][0], hydrolanceLeftTrigger[i][1], hydrolanceLeftTrigger[i][2], SPELL_HYDROLANCE_PRECAST, true);

                                        facing = 5.25f;
                                    }
                                    break;
                              }

                            me->CastSpell(me, SPELL_HYDROLANCE_VISUAL, false);
                            me->UpdatePosition(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), facing);
                            me->SetFacingTo(facing);
                        }
                        break;
                    case EVENT_HYDROLANCE:
                        {
                           switch(hydrolancePhase)
                           {
                              case HYDROLANCE_BOTTOM:
                                  {
                                      std::list<Creature*> trigger;
                                      me->GetCreatureListWithEntryInGrid(trigger, NPC_HYDROCALINE_TRIGGER, 50.0f);
                                      for(auto itr : trigger)
                                      itr->CastSpell(itr->GetPositionX(), itr->GetPositionY(), itr->GetPositionZ(), SPELL_HYDROLANCE_DMG_BOTTOM, true);
                                  }
                                  break;
                              case HYDROLANCE_RIGHT:
                                  for(int i = 0; i < 5; i++)
                                       me->CastSpell(hydrolanceRightTrigger[i][0], hydrolanceRightTrigger[i][1], hydrolanceRightTrigger[i][2], SPELL_HYDROLANCE_DMG, true);
                                  break;
                             case HYDROLANCE_LEFT:
                                 for(int i = 0; i < 5; i++)
                                      me->CastSpell(hydrolanceLeftTrigger[i][0], hydrolanceLeftTrigger[i][1], hydrolanceLeftTrigger[i][2], SPELL_HYDROLANCE_DMG, true);
                                 break;
                            }

                            if(hydrolancePhase == HYDROLANCE_RIGHT)
                                hydrolancePhase = HYDROLANCE_BOTTOM;
                             else
                                hydrolancePhase++;

                            events.ScheduleEvent(EVENT_HYDROLANCE_START, TIMER_HYDROLANCE_START);
                        }
                        break;
                    case EVENT_SWITCH_PHASE_TWO:
                       Talk(TALK_PHASE_SWITCH);
                       Talk(TALK_PHASE_SWITCH_EMOTE);
                       me->RemoveAurasDueToSpell(SPELL_WATER_BUBBLE_WISE);
                       if(float facing = me->GetOrientation())
                       {
                           facing += M_PI / 48;

                           if(facing > M_PI * 2)
                               facing -= M_PI * 2;

                           me->SetOrientation(facing);
                           me->SetFacingTo(facing);
                       }
                       me->CastSpell(me, SPELL_WASH_AWAY, true);
                       me->CastSpell(me, SPELL_WASH_AWAY_COSMETIC, false);
                       events.ScheduleEvent(EVENT_WASH_AWAY, TIMER_WASH_AWAY);
                       break;
                    case EVENT_WASH_AWAY:
                        if(float facing = me->GetOrientation())
                        {
                            facing += M_PI / 48;

                            if(facing > M_PI * 2)
                                facing -= M_PI * 2;

                            me->SetOrientation(facing);
                            me->SetFacingTo(facing);
                        }
                        events.ScheduleEvent(EVENT_WASH_AWAY, TIMER_WASH_AWAY);
                        break;
                }
            }
        }
    };
};

class mob_corrupt_living_water : public CreatureScript
{
public:
    mob_corrupt_living_water() : CreatureScript("mob_corrupt_living_water") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new mob_corrupt_living_water_AI(creature);
    }

    enum eSpells
    {
        SPELL_SUMMON_CORRUPT_DROPLET = 106762,
        SPELL_SHA_RESIDUE            = 106653
    };

    struct mob_corrupt_living_water_AI : public ScriptedAI
    {
        mob_corrupt_living_water_AI(Creature* creature) : ScriptedAI(creature) {}

        bool canDead;

        void InitializeAI() override
        {
            canDead = false;

            Reset();
        }

        void DamageTaken(Unit* attacker, uint32 &damage) override
        {
            if (me->GetHealth() <= damage)
            {
                damage = 0;
                if (!canDead)
                {
                    canDead = true;
                    for (int i = 0; i < 3; i++)
                        me->CastSpell((Unit*)NULL, SPELL_SUMMON_CORRUPT_DROPLET, false);

                    me->CastSpell((Unit*)NULL, SPELL_SHA_RESIDUE, false);
                    attacker->Kill(me);
                }
            }
        }
    };
};

void AddSC_boss_wise_mari()
{
    new boss_wase_mari();
    new mob_corrupt_living_water();
}
