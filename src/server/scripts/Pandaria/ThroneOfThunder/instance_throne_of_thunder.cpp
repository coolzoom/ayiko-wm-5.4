#include "ScriptMgr.h"
#include "InstanceScript.h"
#include "throne_of_thunder.h"

DoorData const doorData[] =
{
    { GOB_JIN_ROKH_ENTRANCE, DATA_JINROKH, DOOR_TYPE_ROOM, BOUNDARY_NONE },
    { GOB_JIN_ROKH_EXIT, DATA_JINROKH, DOOR_TYPE_PASSAGE, },
    { GOB_HORRIDON_ENTRANCE, DATA_HORRIDON, DOOR_TYPE_ROOM, },
    { GOB_HORRIDON_EXIT, DATA_HORRIDON, DOOR_TYPE_PASSAGE, },
    { GOB_COUNCIL_ENTRANCE1, DATA_COUNCIL_OF_ELDERS, DOOR_TYPE_ROOM, },
    { GOB_COUNCIL_ENTRANCE2, DATA_COUNCIL_OF_ELDERS, DOOR_TYPE_ROOM, },
    //{ GOB_COUNCIL_EXIT, DATA_COUNCIL_OF_ELDERS, DOOR_TYPE_PASSAGE, },
};

typedef std::unordered_map<uint32, uint64> EntryGuidMap;

class instance_throne_of_thunder : public InstanceMapScript
{
public:
    instance_throne_of_thunder() : InstanceMapScript("instance_throne_of_thunder", 1098) { }

    InstanceScript* GetInstanceScript(InstanceMap* map) const
    {
        return new instance_throne_of_thunder_InstanceScript(map);
    }

    struct instance_throne_of_thunder_InstanceScript : public InstanceScript
    {
        EntryGuidMap m_mNpcGuidStorage;
        EntryGuidMap m_mGoGuidStorage;
        EventMap m_mEvents;

        uint64 eventHelperGuid;
        uint64 twistedFateHelperGuid;
        uint64 horridonHelperGuid;

        uint32 m_auiEncounter[MAX_TYPES];
        std::string strSaveData;

        instance_throne_of_thunder_InstanceScript(Map* map) : InstanceScript(map) {}

        void Initialize()
        {
            SetBossNumber(MAX_DATA);
            LoadDoorData(doorData);

            memset(&m_auiEncounter, 0, sizeof(m_auiEncounter));
        }

        void OnCreatureCreate(Creature* pCreature)
        {
            switch (pCreature->GetEntry())
            {
                case BOSS_JINROKH:
                case BOSS_HORRIDON:
                case BOSS_COUNCIL_KAZRAJIN:
                case BOSS_COUNCIL_SUL_THE_SANDCRAWLER:
                case BOSS_COUNCIL_FROST_KING_MALAKK:
                case BOSS_COUNCIL_HIGH_PRIESTESS_MARLI:
                case BOSS_TORTOS:   
                case BOSS_MEGAERA:       
                case BOSS_JI_KUN:          
                case BOSS_DURUMU_THE_FORGOTTEN: 
                case BOSS_PRIMORDIUS:         
                case BOSS_DARK_ANIMUS:        
                case BOSS_IRON_QON:           
                case BOSS_LULIN:
                case BOSS_SUEN:
                case BOSS_LEI_SHEN:             
                case BOSS_RA_DEN:              
                case MOB_WAR_GOD_JALAK:                    
                    m_mNpcGuidStorage.insert(std::make_pair(pCreature->GetEntry(), pCreature->GetGUID()));
                    break;
                case NPC_JINROKH_STATUE:
                    pCreature->SetCanFly(true);
                    pCreature->SetHover(true);
                    pCreature->AddUnitMovementFlag(MOVEMENTFLAG_CAN_FLY | MOVEMENTFLAG_DISABLE_GRAVITY);
                    break;
                case MOB_GARA_JAL:
                    pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_UNK_15);
                    pCreature->SetByteValue(UNIT_FIELD_BYTES_1, 3, UNIT_STAND_FLAGS_CREEP);
                    m_mNpcGuidStorage.insert(std::make_pair(pCreature->GetEntry(), pCreature->GetGUID()));
                    break;
                case NPC_HORRIDON_EVENT_HELPER:
                    horridonHelperGuid = pCreature->GetGUID();
                    break;
                case NPC_TWISTED_FATE_HELPER:
                    twistedFateHelperGuid = pCreature->GetGUID();
                    break;
                case NPC_COUNCIL_EVENT_HELPER:
                    eventHelperGuid = pCreature->GetGUID();
                    break;
                default:
                    break;
            }
        }

        void OnGameObjectCreate(GameObject* pGo)
        {
            if (!pGo)
                return;

            uint64  guid = pGo->GetGUID();
            bool    bAdd = true;

            switch (pGo->GetEntry())
            {
                case GOB_JIN_ROKH_ENTRANCE:
                case GOB_JIN_ROKH_PREDOOR:
                case GOB_JIN_ROKH_EXIT: 
                case GOB_HORRIDON_ENTRANCE: 
                case GOB_HORRIDON_EXIT:    
                case GOB_COUNCIL_ENTRANCE1:
                case GOB_COUNCIL_ENTRANCE2:
                case GOB_COUNCIL_EXIT:                 
                case GOB_MOGU_STATUE_1:
                case GOB_MOGU_STATUE_2:
                case GOB_MOGU_STATUE_3:
                case GOB_MOGU_STATUE_4:
                    m_mGoGuidStorage.insert(std::make_pair(pGo->GetEntry(), pGo->GetGUID()));
                    break;
                case GOB_TRIBAL_DOOR_FARRAKI:
                case GOB_TRIBAL_DOOR_GURUBASHI:
                case GOB_TRIBAL_DOOR_DRAKKARI: 
                case GOB_TRIBAL_DOOR_AMANI:
                    bAdd = false;
                    m_mGoGuidStorage.insert(std::make_pair(pGo->GetEntry(), pGo->GetGUID()));
                    break;
                default:
                    break;
            }

            if (bAdd)
                AddDoor(pGo, true);
        }

        bool SetBossState(uint32 uiId, EncounterState eState)
        {
            if (!InstanceScript::SetBossState(uiId, eState) || uiId >= MAX_DATA)
                return false;

            switch (uiId)
            {
                case DATA_JINROKH:
                case DATA_HORRIDON:
                case DATA_COUNCIL_OF_ELDERS:
                    SetData(uiId, eState);
                    break;
                default:
                    break;
            }

            return true;
        }

        void SetData(uint32 uiType, uint32 uiData)
        {
            // Don't set the same data twice.
            if (m_auiEncounter[uiType] == uiData)
                return;

            switch (uiType)
            {         
                
                case TYPE_JINROKH_INTRO:
                    m_auiEncounter[uiType] = uiData;
                    if (uiData >= DONE)
                        SaveInstance();
                    if (Creature* pJinRokh = instance->GetCreature(GetData64(BOSS_JINROKH)))
                    {
                        if (pJinRokh->AI())
                            pJinRokh->AI()->DoAction(ACTION_START_INTRO);
                    }
                    HandleGameObject(GetData64(GOB_JIN_ROKH_PREDOOR), true);
                    break;
                case TYPE_JINROKH:
                    m_auiEncounter[uiType] = uiData;
                    if (uiData >= DONE)
                    {
                        SaveInstance();
                        HandleGameObject(GetData64(GOB_HORRIDON_PREDOOR), true);
                    }
                    break;
                case TYPE_HORRIDON:
                    m_auiEncounter[uiType] = uiData;
                    if (uiData >= DONE)
                    {
                        SaveInstance();
                        HandleGameObject(GetData64(GOB_HORRIDON_EXIT), true);
                    }
                    break;
                case TYPE_COUNCIL:
                    m_auiEncounter[uiType] = uiData;
                    if (uiData >= DONE)
                        SaveInstance();
                    break;
            }
        }

        void SetData64(uint32 uiType, uint64 uiData)
        {
            switch (uiType)
            {
                case MOB_GARA_JALS_SOUL:
                    m_mNpcGuidStorage[MOB_GARA_JALS_SOUL] = uiData;
                    break;
                default:
                    break;
            }
        }

        uint32 GetData(uint32 uiType) const
        {
            if (uiType >= MAX_TYPES)
            {
                TC_LOG_ERROR("scripts", "ToT instance script requested data > MAX_TYPES, aborting");
                return 0;
            }

            switch (uiType)
            {
                case TYPE_JINROKH:
                case TYPE_JINROKH_INTRO:
                    return m_auiEncounter[uiType];
                    break;
                default:
                    return 0;
            }

            return 0;
        }

        uint64 GetData64(uint32 uiType) override
        {
            switch (uiType)
            {
                // Creatures here
                case BOSS_JINROKH:
                case BOSS_HORRIDON:
                case BOSS_COUNCIL_KAZRAJIN:
                case BOSS_COUNCIL_SUL_THE_SANDCRAWLER:
                case BOSS_COUNCIL_FROST_KING_MALAKK:
                case BOSS_COUNCIL_HIGH_PRIESTESS_MARLI:
                case BOSS_TORTOS:
                case BOSS_MEGAERA:
                case BOSS_JI_KUN:
                case BOSS_DURUMU_THE_FORGOTTEN:
                case BOSS_PRIMORDIUS:
                case BOSS_DARK_ANIMUS:
                case BOSS_IRON_QON: 
                case BOSS_LULIN:
                case BOSS_SUEN:
                case BOSS_LEI_SHEN:
                case BOSS_RA_DEN:
                case MOB_GARA_JAL:          
                case MOB_GARA_JALS_SOUL:      
                case MOB_WAR_GOD_JALAK:
                {
                    EntryGuidMap::const_iterator find = m_mNpcGuidStorage.find(uiType);
                    if (find != m_mNpcGuidStorage.cend())
                        return find->second;
                    return 0;
                }
                case NPC_HORRIDON_EVENT_HELPER:
                    return horridonHelperGuid;
                // Gameobjects below here #####
                // ############################
                // ############################
                case GOB_JIN_ROKH_ENTRANCE:
                case GOB_JIN_ROKH_PREDOOR:
                case GOB_JIN_ROKH_EXIT:
                case GOB_HORRIDON_ENTRANCE:
                case GOB_HORRIDON_EXIT:
                case GOB_COUNCIL_ENTRANCE1:
                case GOB_COUNCIL_ENTRANCE2:
                case GOB_COUNCIL_EXIT:
                case GOB_TRIBAL_DOOR_FARRAKI:
                case GOB_TRIBAL_DOOR_GURUBASHI:
                case GOB_TRIBAL_DOOR_DRAKKARI: 
                case GOB_TRIBAL_DOOR_AMANI:
                case GOB_MOGU_STATUE_1:
                case GOB_MOGU_STATUE_2:
                case GOB_MOGU_STATUE_3:
                case GOB_MOGU_STATUE_4:
                {                                          
                    EntryGuidMap::const_iterator find = m_mGoGuidStorage.find(uiType);
                    if (find != m_mGoGuidStorage.cend())
                        return find->second;
                    return 0;
                }
                default:
                    return 0;
            }

            return 0;
        }

        std::string GetSaveData() override
        {
            return strSaveData;
        }

        void Update(uint32 uiDiff) override
        {
            m_mEvents.Update(uiDiff);

            while (uint32 eventId = m_mEvents.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_JINROKH_DOOR:
                        HandleGameObject(GetData64(GOB_JIN_ROKH_PREDOOR), true);
                        break;
                }
            }
        }

        void SaveInstance()
        {
            OUT_SAVE_INST_DATA;

            std::ostringstream saveStream;
            saveStream << m_auiEncounter[0] << ' ' << m_auiEncounter[1] << ' ' << m_auiEncounter[2] << ' '
                << m_auiEncounter[3] << ' ' << m_auiEncounter[4] << ' ' << m_auiEncounter[5] << ' ' << m_auiEncounter[6]
                << ' ' << m_auiEncounter[7] << ' ' << m_auiEncounter[8] << ' ' << m_auiEncounter[9] << ' ' << m_auiEncounter[10]
                << ' ' << m_auiEncounter[11] << ' ' << m_auiEncounter[12] << ' ' << m_auiEncounter[13];

            strSaveData = saveStream.str();

            SaveToDB();
            OUT_SAVE_INST_DATA_COMPLETE;

        }

        void Load(char const* chrIn) override
        {
            if (!chrIn)
            {
                OUT_LOAD_INST_DATA_FAIL;
                return;
            }

            OUT_LOAD_INST_DATA(chrIn);
            std::istringstream loadStream(chrIn);

            loadStream >> m_auiEncounter[0] >> m_auiEncounter[1] >> m_auiEncounter[2] >> m_auiEncounter[3] >> m_auiEncounter[4] >> m_auiEncounter[5] >> m_auiEncounter[6]
                >> m_auiEncounter[7] >> m_auiEncounter[8] >> m_auiEncounter[9] >> m_auiEncounter[10] >> m_auiEncounter[11] >> m_auiEncounter[12] >> m_auiEncounter[13];
            for (uint8 i = 0; i < MAX_TYPES; ++i)
            {
                if (m_auiEncounter[i] == IN_PROGRESS)                // Do not load an encounter as "In Progress" - reset it instead.
                    m_auiEncounter[i] = NOT_STARTED;
                else if (m_auiEncounter[i] == DONE)
                    SetBossState(m_auiEncounter[i], DONE);
            }

            if (m_auiEncounter[TYPE_JINROKH_INTRO] == DONE)
                m_mEvents.ScheduleEvent(EVENT_JINROKH_DOOR, 0);

            OUT_LOAD_INST_DATA_COMPLETE;
        }
    };
};

void AddSC_instance_throne_of_thunder()
{
    new instance_throne_of_thunder();
}