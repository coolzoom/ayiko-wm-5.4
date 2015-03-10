#include "ScriptMgr.h"
#include "InstanceScript.h"
#include "throne_of_thunder.h"

DoorData const doorData[] =
{
    { GOB_JIN_ROKH_ENTRANCE, DATA_JINROKH, DOOR_TYPE_ROOM, BOUNDARY_NONE },
    { GOB_JIN_ROKH_EXIT, DATA_JINROKH, DOOR_TYPE_PASSAGE, },
    { GOB_HORRIDON_ENTRANCE, DATA_HORRIDON, DOOR_TYPE_ROOM, },
    { GOB_HORRIDON_EXIT, DATA_HORRIDON, DOOR_TYPE_PASSAGE, },
    { GOB_COUNCIL_ENTRANCE, DATA_COUNCIL_OF_ELDERS, DOOR_TYPE_ROOM, },
    { GOB_COUNCIL_EXIT, DATA_COUNCIL_OF_ELDERS, DOOR_TYPE_PASSAGE, },
};

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
        uint64 m_uiJinRokhGuid;
        uint64 m_uiHorridonGuid;
        std::vector<uint64> m_vuiCouncilGuids;

        uint64 m_uiTortosGuid;
        uint64 m_uiMegaeraGuid;
        uint64 m_uiJiKunGuid;

        uint64 m_uiDurumuTheForgottenGuid;
        uint64 m_uiPrimordiusGuid;
        uint64 m_uiDarkAnimusGuid;

        uint64 m_uiIronQonGuid;
        std::vector<uint64> m_vuiTwinConsortsGuids;
        uint64 m_uiLeiShenGuid;
        uint64 m_uiRaDenGuid;

        uint64 m_uiJinRokhEntranceGuid;
        uint64 m_uiJinRokhExitGuid;
        uint64 m_uiHorridonEntranceGuid;
        uint64 m_uiHorridonExitGuid;
        uint64 m_uiCouncilEntranceGuid;
        uint64 m_uiCouncilExitGuid;

        uint64 m_uiWarGodJalakGuid;
        uint64 m_uiHorridonEventHelperGuid;

        uint64 m_uiFarrakiTribalDoorGuid;
        uint64 m_uiGurubashiTribalDoorGuid;
        uint64 m_uiDrakkariTribalDoorGuid;
        uint64 m_uiAmaniTribalDoorGuid;

        uint64 m_uiGarajalGuid;
        uint64 m_uiGarajalsSoulGuid;
        uint64 m_uiCouncilEventHelperGuid;
        uint64 m_uiTwistedFateHelperGuid;

        instance_throne_of_thunder_InstanceScript(Map* map) : InstanceScript(map) {}

        void Initialize()
        {
            SetBossNumber(MAX_DATA);
            LoadDoorData(doorData);

            m_uiJinRokhGuid                 = 0;
            m_uiHorridonGuid                = 0;
            m_vuiCouncilGuids.clear();

            m_uiTortosGuid                  = 0;
            m_uiMegaeraGuid                 = 0;
            m_uiJiKunGuid                   = 0;

            m_uiDurumuTheForgottenGuid      = 0;
            m_uiPrimordiusGuid              = 0;
            m_uiDarkAnimusGuid              = 0;

            m_uiIronQonGuid                 = 0;
            m_vuiTwinConsortsGuids.clear();
            m_uiLeiShenGuid                 = 0;
            m_uiRaDenGuid                   = 0;

            m_uiJinRokhEntranceGuid         = 0;
            m_uiJinRokhExitGuid             = 0;
            m_uiHorridonEntranceGuid        = 0;
            m_uiHorridonExitGuid            = 0;
            m_uiCouncilEntranceGuid         = 0;
            m_uiCouncilExitGuid             = 0;

            m_uiWarGodJalakGuid             = 0;
            m_uiFarrakiTribalDoorGuid       = 0;
            m_uiGurubashiTribalDoorGuid     = 0;
            m_uiDrakkariTribalDoorGuid      = 0;
            m_uiAmaniTribalDoorGuid         = 0;

            m_uiGarajalGuid                 = 0;
            m_uiGarajalsSoulGuid            = 0;
            m_uiCouncilEventHelperGuid      = 0;
            m_uiTwistedFateHelperGuid       = 0;
        }

        void OnCreatureCreate(Creature* pCreature)
        {
            if (!pCreature)
                return;

            uint64 guid = pCreature->GetGUID();

            switch (pCreature->GetEntry())
            {
                case BOSS_JINROKH:              m_uiJinRokhGuid             = guid; break;
                case BOSS_HORRIDON:             m_uiHorridonGuid            = guid; break;
                case BOSS_COUNCIL_KAZRAJIN:
                case BOSS_COUNCIL_SUL_THE_SANDCRAWLER:
                case BOSS_COUNCIL_FROST_KING_MALAKK:
                case BOSS_COUNCIL_HIGH_PRIESTESS_MARLI:
                    m_vuiCouncilGuids.push_back(guid);
                    break;
                case BOSS_TORTOS:               m_uiTortosGuid              = guid; break;
                case BOSS_MEGAERA:              m_uiMegaeraGuid             = guid; break;
                case BOSS_JI_KUN:               m_uiJiKunGuid               = guid; break;
                case BOSS_DURUMU_THE_FORGOTTEN: m_uiDurumuTheForgottenGuid  = guid; break;
                case BOSS_PRIMORDIUS:           m_uiPrimordiusGuid          = guid; break;
                case BOSS_DARK_ANIMUS:          m_uiDarkAnimusGuid          = guid; break;
                case BOSS_IRON_QON:             m_uiIronQonGuid             = guid; break;
                case BOSS_LULIN:
                case BOSS_SUEN:
                    m_vuiTwinConsortsGuids.push_back(guid);
                    break;
                case BOSS_LEI_SHEN:             m_uiLeiShenGuid             = guid; break;
                case BOSS_RA_DEN:               m_uiRaDenGuid               = guid; break;
                case MOB_WAR_GOD_JALAK:         m_uiWarGodJalakGuid         = guid; break;
                case NPC_HORRIDON_EVENT_HELPER: m_uiHorridonEventHelperGuid = guid; break;
                case MOB_GARA_JAL:              m_uiGarajalGuid             = guid; break;
                case NPC_COUNCIL_EVENT_HELPER:  m_uiCouncilEventHelperGuid  = guid; break;
                case NPC_TWISTED_FATE_HELPER:   m_uiTwistedFateHelperGuid   = guid; break;
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
                case GOB_JIN_ROKH_ENTRANCE:     m_uiJinRokhEntranceGuid     = guid; break;
                case GOB_JIN_ROKH_EXIT:         m_uiJinRokhExitGuid         = guid; break;
                case GOB_HORRIDON_ENTRANCE:     m_uiHorridonEntranceGuid    = guid; break;
                case GOB_HORRIDON_EXIT:         m_uiHorridonExitGuid        = guid; break;
                case GOB_COUNCIL_ENTRANCE:      m_uiCouncilEntranceGuid     = guid; break;
                case GOB_COUNCIL_EXIT:          m_uiCouncilExitGuid         = guid; break;
                case GOB_TRIBAL_DOOR_FARRAKI:   m_uiFarrakiTribalDoorGuid   = guid; bAdd = false; break;
                case GOB_TRIBAL_DOOR_GURUBASHI: m_uiGurubashiTribalDoorGuid = guid; bAdd = false; break;
                case GOB_TRIBAL_DOOR_DRAKKARI:  m_uiDrakkariTribalDoorGuid  = guid; bAdd = false; break;
                case GOB_TRIBAL_DOOR_AMANI:     m_uiAmaniTribalDoorGuid     = guid; bAdd = false; break;
                default:
                    break;
            }

            if (bAdd)
                AddDoor(pGo, true);
        }

        bool SetBossState(uint32 uiId, EncounterState eState)
        {
            if (!InstanceScript::SetBossState(uiId, eState))
                return false;

            switch (uiId)
            {
                case 0:
                default:
                    break;
            }

            return true;
        }

        void SetData(uint32 uiType, uint32 uiData)
        {
            switch (uiType)
            {
                case 0:
                default:
                    break;
            }
        }

        void SetData64(uint32 uiType, uint64 uiData)
        {
            switch (uiType)
            {
                case MOB_GARA_JALS_SOUL:
                    m_uiGarajalsSoulGuid = uiData;
                    break;

                default:
                    break;
            }
        }

        uint32 GetData(uint32 uiType) const
        {
            return 0;
        }

        uint64 GetData64(uint32 uiType) const
        {
            switch (uiType)
            {
                case BOSS_JINROKH:              return m_uiJinRokhGuid;
                case BOSS_HORRIDON:             return m_uiHorridonGuid;
                case BOSS_COUNCIL_KAZRAJIN:
                case BOSS_COUNCIL_SUL_THE_SANDCRAWLER:
                case BOSS_COUNCIL_FROST_KING_MALAKK:
                case BOSS_COUNCIL_HIGH_PRIESTESS_MARLI:
                    for (uint64 guid : m_vuiCouncilGuids)
                    {
                        if (Creature *pCounceler = instance->GetCreature(guid))
                        {
                            if (pCounceler->GetEntry() == uiType)
                                return guid;
                        }
                    }
                    break;
                case BOSS_TORTOS:               return m_uiTortosGuid;
                case BOSS_MEGAERA:              return m_uiMegaeraGuid;
                case BOSS_JI_KUN:               return m_uiJiKunGuid;
                case BOSS_DURUMU_THE_FORGOTTEN: return m_uiDurumuTheForgottenGuid;
                case BOSS_PRIMORDIUS:           return m_uiPrimordiusGuid;
                case BOSS_DARK_ANIMUS:          return m_uiDarkAnimusGuid;
                case BOSS_IRON_QON:             return m_uiIronQonGuid;
                case BOSS_LULIN:
                case BOSS_SUEN:
                    for (uint64 guid : m_vuiTwinConsortsGuids)
                    {
                        if (Creature *pCreature = instance->GetCreature(guid))
                        {
                            if (pCreature->GetEntry() == uiType)
                                return guid;
                        }
                    }
                    break;
                case BOSS_LEI_SHEN:             return m_uiLeiShenGuid;
                case BOSS_RA_DEN:               return m_uiRaDenGuid;
                case GOB_JIN_ROKH_ENTRANCE:     return m_uiJinRokhEntranceGuid;
                case GOB_JIN_ROKH_EXIT:         return m_uiJinRokhExitGuid;
                case GOB_HORRIDON_ENTRANCE:     return m_uiHorridonEntranceGuid;
                case GOB_HORRIDON_EXIT:         return m_uiHorridonExitGuid;
                case GOB_COUNCIL_ENTRANCE:      return m_uiCouncilEntranceGuid;
                case GOB_COUNCIL_EXIT:          return m_uiCouncilExitGuid;
                case MOB_WAR_GOD_JALAK:         return m_uiWarGodJalakGuid;
                case NPC_HORRIDON_EVENT_HELPER: return m_uiHorridonEventHelperGuid;
                case GOB_TRIBAL_DOOR_FARRAKI:   return m_uiFarrakiTribalDoorGuid;
                case GOB_TRIBAL_DOOR_GURUBASHI: return m_uiGurubashiTribalDoorGuid;
                case GOB_TRIBAL_DOOR_DRAKKARI:  return m_uiDrakkariTribalDoorGuid;
                case GOB_TRIBAL_DOOR_AMANI:     return m_uiAmaniTribalDoorGuid;
                case MOB_GARA_JAL:              return m_uiGarajalGuid;
                case MOB_GARA_JALS_SOUL:        return m_uiGarajalsSoulGuid;
                case NPC_COUNCIL_EVENT_HELPER:  return m_uiCouncilEventHelperGuid;
                case NPC_TWISTED_FATE_HELPER:   return m_uiTwistedFateHelperGuid;
                default:
                    return 0;
            }

            return 0;
        }

        std::string GetSaveData() override
        {
            OUT_SAVE_INST_DATA;

            std::ostringstream saveStream;
            saveStream << "T T " << GetBossSaveData();

            OUT_SAVE_INST_DATA_COMPLETE;
            return saveStream.str();
        }

        void Load(char const* szSaveData) override
        {
            if (!szSaveData)
            {
                OUT_LOAD_INST_DATA_FAIL;
                return;
            }

            OUT_LOAD_INST_DATA(szSaveData);

            char dataHead1, dataHead2;

            std::istringstream loadStream(szSaveData);
            loadStream >> dataHead1 >> dataHead2;

            if (dataHead1 == 'T' && dataHead2 == 'T')
            {
                for (uint8 i = 0; i < MAX_DATA; ++i)
                {
                    uint32 tmpState;
                    loadStream >> tmpState;
                    if (tmpState == IN_PROGRESS || tmpState > SPECIAL)
                        tmpState = NOT_STARTED;

                    SetBossState(i, EncounterState(tmpState));
                }
            }
            else
                OUT_LOAD_INST_DATA_FAIL;

            OUT_LOAD_INST_DATA_COMPLETE;
        }
    };
};

void AddSC_instance_throne_of_thunder()
{
    new instance_throne_of_thunder();
}