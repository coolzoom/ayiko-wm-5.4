#include "ScriptedCreature.h"
#include "ScriptMgr.h"
#include "ScriptedGossip.h"
#include "CreatureAI.h"
#include "SpellScript.h"
#include "Vehicle.h"

/*
Uldum Zone:
Easy Money (27003) - npc_lady_hump_tanaris, npc_adarrah_easy_money
Traitors! (27922) - go_neferset_frond
Escape From the Lost City (28112) - npc_prince_nadun_lost_city
Take it to 'Em! (27993) - npc_harrison_jones_uldum
Premature Explosionation (27141) - go_powder_keg
*/


/* Lady Hump - Starts event for Easy Money quest
* Missing:
* Caravan Escort and Cameras system
*/
class npc_lady_hump_tanaris : public CreatureScript
{
public:
    npc_lady_hump_tanaris() : CreatureScript("npc_lady_hump_tanaris") { }

    bool OnGossipHello(Player * player, Creature * creature)
    {
        if (player->GetQuestStatus(27003) == QUEST_STATUS_INCOMPLETE)
        {
            //player->SendCinematicStart(161);
            player->CastSpell(player, 89404, true);
            player->TeleportTo(player->GetMapId(), -10995.93f, -1254.66f, 13.25f, 4.67f);
            player->KilledMonsterCredit(44833);
        }
        return true;
    }
};

// Adarrah - Finish event for Easy Money quest
class npc_adarrah_easy_money : public CreatureScript
{
public:
    npc_adarrah_easy_money() : CreatureScript("npc_adarrah_easy_money") { }

    bool OnQuestComplete(Player* player, Creature* creature, const Quest* quest) override
    {
        if (GameObject * go = GetClosestGameObjectWithEntry(player, 206951, 15.f))
            go->UseDoorOrButton();

        // TODO: Jailer should spawn after short text event
        if (Creature * const jailer = player->SummonCreature(48029, -11025.f, -1280.f, 13.79f, 0.7f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 180000))
        {
            // TODO: Move to creature_text
            creature->MonsterSay("Here comes the guard! Take him out!", 0, 0);
            jailer->AI()->AttackStart(player);
        }

        return true;
    }
};

/* Nefreset Frond object for Traitors! quest
* Missing:
* Some cosmetic changes done to nearby NPCs
*/
class go_neferset_frond : public GameObjectScript
{
public:
    go_neferset_frond() : GameObjectScript("go_neferset_frond") { }

    bool OnGossipHello(Player* player, GameObject* /*go*/) override
    {
        if (Creature * const camera = GetClosestCreatureWithEntry(player, 47473, 30.f))
        {
            if (!camera->GetVehicleKit()->IsVehicleInUse())
            {
                player->CastSpell(player, 88525, true);
                player->EnterVehicle(camera);
            }
        }
        return false;
    }
};

class npc_uldum_camera_traitors_q : public CreatureScript
{
public:
    npc_uldum_camera_traitors_q() : CreatureScript("npc_uldum_camera_traitors_q") { }

    struct npc_uldum_camera_traitors_qAI : public ScriptedAI
    {
        npc_uldum_camera_traitors_qAI(Creature* creature) : ScriptedAI(creature) { }

        bool eventStarted;
        uint8 phase;
        uint32 phaseTimer;

        void Reset()
        {
            phase = 0;
            phaseTimer = 5000;
            eventStarted = false;
        }

        void UpdateAI(uint32 const diff)
        {
            if (eventStarted)
            {
                if (phaseTimer <= diff)
                {
                    if (phase < 2)
                    {
                        if (Creature const * const siamat = GetClosestCreatureWithEntry(me, 47451, 50.f))
                        {
                            siamat->AI()->Talk(phase);
                            phaseTimer = 10000;
                        }
                    }
                    else
                    {
                        if (Unit * const pas = me->GetVehicleKit()->GetPassenger(0))
                            if (Player * const player = pas->ToPlayer())
                                player->KilledMonsterCredit(47466);

                        me->GetVehicleKit()->RemoveAllPassengers();
                    }
                    ++phase;
                }
                else phaseTimer -= diff;
            }
        }

        void PassengerBoarded(Unit * who, int8 /*seat*/, bool enter) override
        {
            if (enter)
                eventStarted = true;
            else
                Reset();
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_uldum_camera_traitors_qAI(creature);
    }
};

/* Prince Naduun start event for Escape From the Lost City
* Missing:
* Escape Cinematic
*/
class npc_prince_nadun_lost_city : public CreatureScript
{
public:
    npc_prince_nadun_lost_city() : CreatureScript("npc_prince_nadun_lost_city") { }

    bool OnQuestAccept(Player* player, Creature* creature, const Quest* quest)
    {
        if (quest->GetQuestId() == 28112)
        {
            player->TeleportTo(player->GetMapId(), -9443.31f, -958.36f, 111.02f, 0.015f);
        }
        return true;
    }
};

// Harrison Jones for Take it to 'Em!
class npc_harrison_jones_uldum : public CreatureScript
{
public:
    npc_harrison_jones_uldum() : CreatureScript("npc_harrison_jones_uldum") { }

    struct npc_harrison_jones_uldumAI : public ScriptedAI
    {
        npc_harrison_jones_uldumAI(Creature* creature) : ScriptedAI(creature) { }

        void Reset() { }

        void MoveInLineOfSight(Unit* who) override
        {
            if (Player * const player = who->ToPlayer())
                if (player->GetQuestStatus(27993) == QUEST_STATUS_INCOMPLETE && me->GetDistance(who) < 20.f)
                    player->KilledMonsterCredit(47318);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_harrison_jones_uldumAI(creature);
    }
};

/* Powder Keg for Premature Explosionation
* Missing:
* Cinematic event with explosion
*/
class go_powder_keg : public GameObjectScript
{
public:
    go_powder_keg() : GameObjectScript("go_powder_keg") { }

    bool OnGossipHello(Player* player, GameObject* /*go*/) override
    {
        if (player->GetQuestStatus(27141) == QUEST_STATUS_INCOMPLETE)
        {
            player->CastSpell(player, 89404, true);
            player->TeleportTo(player->GetMapId(), -9207.99f, -1560.32f, 65.46f, 0.82f);
            player->KilledMonsterCredit(45143);
        }
        return false;
    }
};

#define GOSSIP_CHOICE_1  "I'm ready, Doctor Jones !"

enum eHarrisonJonesActions
{
    ACTION_FIRST_MOVE        = 1,
    ACTION_FIRST_JUMP        = 2,
    ACTION_SECOND_JUMP       = 3,
    ACTION_THIRD_JUMP        = 4,
    ACTION_SAY_01            = 5,
    ACTION_SAY_02            = 6
};

enum eHarrisonJonesTexts
{
    SAY_01           = 0,
    SAY_02           = 1,
    SAY_03           = 2
};

#define ACTION_SECOND_MOVE 2
#define ACTION_THIRD_MOVE 3
#define ACTION_FOURTH_MOVE 4
#define ACTION_FIFTH_MOVE 5

class mob_harrison_jones : public CreatureScript
{
    public:
        mob_harrison_jones() : CreatureScript("mob_harrison_jones") { }

        bool OnGossipHello(Player* player, Creature* creature)
        {
            if (player->GetQuestStatus(27196) == QUEST_STATUS_INCOMPLETE)
            {
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_CHOICE_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
                player->SEND_GOSSIP_MENU(16786, creature->GetGUID());
            }

            return true;
        }

        bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action)
        {
            player->PlayerTalkClass->ClearMenus();

            if (action == GOSSIP_ACTION_INFO_DEF + 1)
            {
                player->CLOSE_GOSSIP_MENU();
                creature->AI()->DoAction(ACTION_FIRST_MOVE);
            }

            return true;
        }

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_harrison_jonesAI(creature);
        }

        struct mob_harrison_jonesAI : public ScriptedAI
        {
            mob_harrison_jonesAI(Creature* creature) : ScriptedAI(creature) { }

            bool hasSaid1;
            bool hasSaid2;

            void Reset()
            {
                hasSaid1 = false;
                hasSaid2 = false;
            }

            void DoAction(const int32 action)
            {
                switch (action)
                {
                    case ACTION_FIRST_MOVE:
                        Talk(SAY_01);
                        me->GetMotionMaster()->MovePoint(0, -9153.513f, -1534.094f, 71.019f);
                        break;
                    case ACTION_FIRST_JUMP:
                        me->GetMotionMaster()->MoveJump(-9148.565f, -1536.0601f, 73.8644f, 2.0f, 2.0f);
                        break;
                    case ACTION_SECOND_JUMP:
                        me->GetMotionMaster()->MoveJump(-9145.193f, -1538.517f, 75.033f, 2.0f, 2.0f);
                        break;
                    case ACTION_THIRD_JUMP:
                        break;
                    case ACTION_SAY_02:
                        if (hasSaid1 == false)
                            Talk(SAY_02);
                        break;
                    default:
                        break;
                }
            }

            void UpdateAI(const uint32 /*diff*/)
            {

                std::list<Player*> playerList;
                GetPlayerListInGrid(playerList, me, 15.0f);

                if (me->GetPositionX() == -9153.513f && me->GetPositionY() == -1534.094f && me->GetPositionZ() == 71.019f)
                {
                    DoAction(ACTION_SAY_01);
                    DoAction(ACTION_FIRST_JUMP);
                    hasSaid1 = true;
                }

                if (me->GetPositionX() == -9148.565f && me->GetPositionY() == -1536.0601f && me->GetPositionZ() == 73.8644f)
                    DoAction(ACTION_SECOND_JUMP);

                if (me->GetPositionX() == -9145.193f && me->GetPositionY() == -1538.517f && me->GetPositionZ() == 75.033f)
                {
                    DoAction(ACTION_SAY_02);
                    DoAction(ACTION_THIRD_JUMP);
                    hasSaid2 = true;

                    for (auto player: playerList)
                        player->KilledMonsterCredit(45238);
                }
            }
        };
};

#define NPC_ULDUM_WATCHER 45316

class mob_harrison_jones_2 : public CreatureScript
{
    public:
        mob_harrison_jones_2() : CreatureScript("mob_harrison_jones_2") { }

        bool OnQuestAccept(Player* /*player*/, Creature* creature, Quest const* quest)
        {
            if (quest->GetQuestId() == 27431)
                creature->AI()->DoAction(ACTION_FIRST_MOVE);

            return true;
        }

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_harrison_jones_2AI(creature);
        }

        struct mob_harrison_jones_2AI : public ScriptedAI
        {
            mob_harrison_jones_2AI(Creature* creature) : ScriptedAI(creature) { }

            void DoAction(const int32 action)
            {
                switch (action)
                {
                    case ACTION_FIRST_MOVE:
                        me->GetMotionMaster()->MovePoint(0, -9177.980f, -1532.866f, -172.559f);
                        break;
                    case ACTION_SECOND_MOVE:
                        me->GetMotionMaster()->MovePoint(0, -9170.007f, -1497.185f, -172.558f);
                        break;
                    case ACTION_THIRD_MOVE:
                        me->GetMotionMaster()->MovePoint(0, -9169.322f, -1475.245f, -172.559f);
                        break;
                    case ACTION_FOURTH_MOVE:
                        me->GetMotionMaster()->MovePoint(0, -9161.517f, -1473.894f, -170.909f);
                        break;
                    case ACTION_FIFTH_MOVE:
                    {
                        std::list<Player*> playerList;
                        GetPlayerListInGrid(playerList, me, 30.0f);

                        me->GetMotionMaster()->MovePoint(0, -9145.245f, -1470.735f, -170.909f);
                        for (auto player: playerList)
                            if (player->GetQuestStatus(27431) == QUEST_STATUS_INCOMPLETE)
                                player->KilledMonsterCredit(45742);
                        break;
                    }
                    default:
                        break;
                }
            }

            void UpdateAI(const uint32 /*diff*/)
            {
                std::list<Creature*> uldumWatcherList;
                me->GetCreatureListWithEntryInGrid(uldumWatcherList, NPC_ULDUM_WATCHER, 100.0f);

                if (me->GetPositionX() <= -9176.0f && me->GetPositionY() <= -1531.0f && me->GetPositionZ() == -172.559f
                    && me->GetPositionX() >= -9178.0f && me->GetPositionY() >= -1533.0f)
                    me->AI()->DoAction(ACTION_SECOND_MOVE);

                if (me->GetPositionX() == -9170.007f && me->GetPositionY() == -1497.185f && me->GetPositionZ() == -172.558f)
                    me->AI()->DoAction(ACTION_THIRD_MOVE);

                if (me->GetPositionX() == -9169.322f && me->GetPositionY() == -1475.245f && me->GetPositionZ() == -172.559f)
                    me->AI()->DoAction(ACTION_FOURTH_MOVE);

                if (me->GetPositionX() == -9161.517f && me->GetPositionY() == -1473.894f && me->GetPositionZ() == -170.909f)
                    me->AI()->DoAction(ACTION_FIFTH_MOVE);

                if (me->GetPositionX() == -9145.245f && me->GetPositionY() == -1470.735f && me->GetPositionZ() == -170.909f)
                    for (auto uldumWatcher: uldumWatcherList)
                        me->EnterVehicle(uldumWatcher, 0);

                // TODO : Camera Systems
            }
        };
};

void AddSC_uldum()
{
    new npc_lady_hump_tanaris();
    new npc_adarrah_easy_money();

    new go_neferset_frond();
    new npc_uldum_camera_traitors_q();

    new npc_prince_nadun_lost_city();

    new npc_harrison_jones_uldum();
    new go_powder_keg();

    new mob_harrison_jones();
    new mob_harrison_jones_2();
}
