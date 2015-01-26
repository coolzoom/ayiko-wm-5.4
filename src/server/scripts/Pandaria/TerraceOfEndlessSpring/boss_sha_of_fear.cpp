#include "GameObjectAI.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "terrace_of_endless_spring.h"

enum eShaOfFearSpells
{
    // Sha of Fear
    SPELL_REACHING_ATTACK           = 119775,
    SPELL_EERIE_SKULL               = 119519,
    SPELL_ENERGY_TO_ZERO            = 119417,
    SPELL_BREATH_OF_FEAR            = 119414,
    SPELL_THRASH_AURA               = 131996,
    SPELL_THRASH_EXTRA_ATTACKS      = 131994,
    SPELL_CONJURE_TERROR_SPAWN_TICK = 119108,
    // 4 spells for spawn, cauz' of different spawn coordinates
    SPELL_CONJURE_TERROR_SPAWN_01   = 119312,
    SPELL_CONJURE_TERROR_SPAWN_02   = 119370,
    SPELL_CONJURE_TERROR_SPAWN_03   = 119371,
    SPELL_CONJURE_TERROR_SPAWN_04   = 119372,

    // Other mobs
    SPELL_LIGHT_WALL                = 117865,
    SPELL_CHAMPION_OF_LIGHT         = 117866,
    SPELL_LIGHT_WALL_READY          = 117770,
    SPELL_LIGHT_WALL_VISUAL         = 107141,
    SPELL_FEARLESS                  = 118977,
    SPELL_WALL_OF_LIGHT_BUFF        = 117999,
    SPELL_PENETRATING_BOLT          = 129075,
    SPELL_PENETRATING_BOLT_MISSILE  = 129077,
    SPELL_DARK_BULWARK              = 119083
};

enum eShaOfFearEvents
{
    EVENT_CHECK_MELEE       = 1,
    EVENT_EERIE_SKULL       = 2,
    EVENT_CHECK_ENERGY      = 3,
    EVENT_FIRST_TERRORS     = 4,
    EVENT_PENETRATING_BOLT  = 5,
    EVENT_OMINOUS_CACKLE    = 6
};

enum eShaOfFearActions
{
    ACTION_ACTIVATE_WALL_OF_LIGHT,
    ACTION_DESACTIVATE_WALL_OF_LIGHT,
    ACTION_SPAWN_TERROR
};

enum eShaOfFearSays
{
    TALK_INTRO,
    TALK_AGGRO,
    TALK_BREATH_OF_FEAR,
    TALK_SLAY,
    TALK_SLAY_HEROIC,
    TALK_SUBMERGE,
    TALK_HUDDLE
};

Player* GetChampionOfLight(Creature* me)
{
    if (!me)
        return NULL;

    Map::PlayerList const& playerList = me->GetMap()->GetPlayers();
    for (Map::PlayerList::const_iterator itr = playerList.begin(); itr != playerList.end(); ++itr)
        if (Player* player = itr->GetSource())
            if (player->HasAura(SPELL_CHAMPION_OF_LIGHT))
                return player;

    return NULL;
}

static const Position spawnTerrorPos[4] =
{
    { -1052.588f, -2788.164f, 38.268f, 0.0f },
    { -983.4550f, -2787.942f, 38.269f, 0.0f },
    { -989.6860f, -2772.245f, 38.303f, 0.0f },
    { -1046.274f, -2772.215f, 38.303f, 0.0f }
};

static const Position lightPos = { -1017.835f, -2771.984f, 38.65444f, 4.718282f };

class boss_sha_of_fear : public CreatureScript
{
    public:
        boss_sha_of_fear() : CreatureScript("boss_sha_of_fear") { }

        struct boss_sha_of_fearAI : public BossAI
        {
            boss_sha_of_fearAI(Creature* creature) : BossAI(creature, DATA_SHA_OF_FEAR)
            {
                pInstance = creature->GetInstanceScript();
            }

            InstanceScript* pInstance;
            EventMap events;

            uint8 attacksCounter;
            uint8 terrorCounter;

            void Reset()
            {
                _Reset();

                me->SetReactState(REACT_DEFENSIVE);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
                me->SetPower(POWER_ENERGY, 0);
                me->SetInt32Value(UNIT_FIELD_POWER1, 0);
                me->SetMaxPower(POWER_ENERGY, 100);
                me->SetInt32Value(UNIT_FIELD_MAXPOWER1, 100);
                me->RemoveFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_REGENERATE_POWER);
                me->CastSpell(me, SPELL_ENERGY_TO_ZERO, true);

                summons.DespawnAll();

                events.Reset();

                attacksCounter = 0;
                terrorCounter  = 0;

                if (pInstance)
                {
                    pInstance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);

                    if (pInstance->GetData(SPELL_RITUAL_OF_PURIFICATION))
                        me->AddAura(SPELL_RITUAL_OF_PURIFICATION, me);
                }
            }

            void JustReachedHome()
            {
                _JustReachedHome();

                if (pInstance)
                    pInstance->SetBossState(DATA_SHA_OF_FEAR, FAIL);
            }

            void EnterCombat(Unit* /*attacker*/)
            {
                if (pInstance)
                {
                    pInstance->SetBossState(DATA_SHA_OF_FEAR, IN_PROGRESS);
                    pInstance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
                    DoZoneInCombat();
                    Talk(TALK_AGGRO);
                }

                events.ScheduleEvent(EVENT_CHECK_MELEE, 1000);
                events.ScheduleEvent(EVENT_EERIE_SKULL, 5000);
                events.ScheduleEvent(EVENT_CHECK_ENERGY, 1000);
                events.ScheduleEvent(EVENT_FIRST_TERRORS, 30000);
            }

            void JustDied(Unit* /*killer*/)
            {
                if (pInstance)
                {
                    summons.DespawnAll();
                    pInstance->SetBossState(DATA_SHA_OF_FEAR, DONE);
                    pInstance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
                    _JustDied();
                }
            }

            void JustSummoned(Creature* summon)
            {
                if (summon->GetEntry() == NPC_TERROR_SPAWN)
                    ++terrorCounter;

                summons.Summon(summon);
            }

            void SummonedCreatureDespawn(Creature* summon)
            {
                if (summon->GetEntry() == NPC_TERROR_SPAWN)
                    --terrorCounter;

                summons.Despawn(summon);
            }

            void KilledUnit(Unit* who)
            {
                if (who->GetTypeId() == TYPEID_PLAYER)
                {
                    if (IsHeroic())
                        Talk(TALK_SLAY_HEROIC);
                    else
                        Talk(TALK_SLAY);
                }
            }

            void DoAction(const int32 action)
            {
                switch (action)
                {
                    case ACTION_SPAWN_TERROR:
                    {
                        if (!terrorCounter)
                        {
                            me->CastSpell(spawnTerrorPos[0].GetPositionX(), spawnTerrorPos[0].GetPositionY(),
                                          spawnTerrorPos[0].GetPositionZ(), SPELL_CONJURE_TERROR_SPAWN_01, true);
                            me->CastSpell(spawnTerrorPos[1].GetPositionX(), spawnTerrorPos[1].GetPositionY(),
                                          spawnTerrorPos[1].GetPositionZ(), SPELL_CONJURE_TERROR_SPAWN_02, true);
                        }
                        else
                        {
                            me->CastSpell(spawnTerrorPos[2].GetPositionX(), spawnTerrorPos[2].GetPositionY(),
                                          spawnTerrorPos[2].GetPositionZ(), SPELL_CONJURE_TERROR_SPAWN_03, true);
                            me->CastSpell(spawnTerrorPos[3].GetPositionX(), spawnTerrorPos[3].GetPositionY(),
                                          spawnTerrorPos[3].GetPositionZ(), SPELL_CONJURE_TERROR_SPAWN_04, true);
                        }

                        break;
                    }
                    default:
                        break;
                }
            }

            void DamageDealt(Unit* /*victim*/, uint32& /*damage*/, DamageEffectType damageType, const SpellInfo * /*spellInfo*/)
            {
                if (damageType == DIRECT_DAMAGE)
                {
                    if (attacksCounter >= 3 && !me->m_extraAttacks)
                    {
                        me->CastSpell(me, SPELL_THRASH_EXTRA_ATTACKS, true);
                        attacksCounter = 0;
                    }
                    else if (attacksCounter >= 2 && !me->m_extraAttacks)
                    {
                        me->CastSpell(me, SPELL_THRASH_AURA, true);
                        ++attacksCounter;
                    }
                    else if (!me->m_extraAttacks)
                    {
                        me->RemoveAura(SPELL_THRASH_AURA);
                        ++attacksCounter;
                    }
                }
            }

            void OnAddThreat(Unit* /*victim*/, float& fThreat, SpellSchoolMask /*schoolMask*/, SpellInfo const* /*threatSpell*/)
            {
                fThreat = 0;
                return;
            }

            void RegeneratePower(Powers power, int32& value)
            {
                if (power != POWER_ENERGY)
                    return;

                if (!me->IsInCombat())
                {
                    value = 0;
                    return;
                }

                // Sha of Fear regenerates 6 energy every 2s (15 energy for 5s)
                value = 6;

                int32 val = me->GetPower(POWER_ENERGY);
                if (val + value > 100)
                    val = 100;
                else
                    val += value;

                me->SetInt32Value(UNIT_FIELD_POWER1, val);
            }

            void UpdateAI(const uint32 diff)
            {
                if (!UpdateVictim())
                {
                    if (pInstance && pInstance->GetData(SPELL_RITUAL_OF_PURIFICATION) == false)
                        me->RemoveAura(SPELL_RITUAL_OF_PURIFICATION);

                    return;
                }

                events.Update(diff);

                if (me->HasUnitState(UNIT_STATE_CASTING))
                    return;

                switch (events.ExecuteEvent())
                {
                    case EVENT_CHECK_MELEE:
                    {
                        if (Player* target = GetChampionOfLight(me))
                            if (me->GetVictim() && me->GetVictim()->GetGUID() != target->GetGUID())
                            {
                                me->TauntFadeOut(me->GetVictim());
                                DoResetThreat();
                                AttackStart(target);
                                me->TauntApply(target);
                                me->AddThreat(target, 5000000.0f);
                            }

                        if (!me->IsWithinMeleeRange(me->GetVictim(), 2.0f))
                        {
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 80.0f))
                                me->CastSpell(target, SPELL_REACHING_ATTACK, false);
                        }
                        events.ScheduleEvent(EVENT_CHECK_MELEE, 1000);
                        break;
                    }
                    case EVENT_EERIE_SKULL:
                    {
                        DoCast(SELECT_TARGET_RANDOM, SPELL_EERIE_SKULL, false, 1, 80.0f);
                        events.ScheduleEvent(EVENT_EERIE_SKULL, 5000);
                        break;
                    }
                    case EVENT_CHECK_ENERGY:
                    {
                        if (!pInstance)
                        {
                            events.ScheduleEvent(EVENT_CHECK_ENERGY, 1000);
                            break;
                        }

                        if (me->GetPower(POWER_ENERGY) >= me->GetMaxPower(POWER_ENERGY))
                        {
                            if (Creature* pureLight = Creature::GetCreature(*me, pInstance->GetData64(NPC_PURE_LIGHT_TERRACE)))
                                me->CastSpell(pureLight, SPELL_BREATH_OF_FEAR, false);
                            Talk(TALK_BREATH_OF_FEAR);
                            me->SetPower(POWER_ENERGY, 0);
                            me->SetInt32Value(UNIT_FIELD_POWER1, 0);
                        }

                        events.ScheduleEvent(EVENT_CHECK_ENERGY, 1000);
                        break;
                    }
                    case EVENT_FIRST_TERRORS:
                    {
                        me->CastSpell(me, SPELL_CONJURE_TERROR_SPAWN_TICK, true);
                        break;
                    }
                    default:
                        break;
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_sha_of_fearAI(creature);
        }
};



// Pure Light Terrace - 60788
class mob_pure_light_terrace : public CreatureScript
{
    public:
        mob_pure_light_terrace() : CreatureScript("mob_pure_light_terrace") { }

        struct mob_pure_light_terraceAI : public ScriptedAI
        {
            mob_pure_light_terraceAI(Creature* creature) : ScriptedAI(creature)
            {
                pInstance = creature->GetInstanceScript();
                wallActivated = false;
            }

            InstanceScript* pInstance;

            bool wallActivated;
            //float ang1;
            //float ang2;

            void Reset()
            {
                lightTimer = 200;
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE|UNIT_FLAG_NON_ATTACKABLE);
                me->CastSpell(me, SPELL_LIGHT_WALL, true);
                me->CastSpell(me, SPELL_LIGHT_WALL_READY, true);

                //Position dst1 = {-989.4236f, -2821.757f, 38.25466f, 0.0f};
                //Position dst2 = {-1045.602f, -2822.323f, 38.25466f, 0.0f};
                //
                //ang1 = src.GetAngle(&dst1) * 57.29578f;
                //ang2 = src.GetAngle(&dst2) * 57.29578f;
            }

            void DoAction(const int32 action)
            {
                switch (action)
                {
                    case ACTION_ACTIVATE_WALL_OF_LIGHT:
                    {
                        if (wallActivated)
                            break;

                        wallActivated = true;
                        me->CastSpell(me, SPELL_LIGHT_WALL_VISUAL, true);
                        me->RemoveAura(SPELL_LIGHT_WALL_READY);
                        break;
                    }
                    case ACTION_DESACTIVATE_WALL_OF_LIGHT:
                    {
                        if (!wallActivated)
                            break;

                        wallActivated = false;
                        me->CastSpell(me, SPELL_LIGHT_WALL_READY, true);
                        me->RemoveAura(SPELL_LIGHT_WALL_VISUAL);
                        break;
                    }
                    default:
                        break;
                }
            }

            void DamageTaken(Unit* /*attacker*/, uint32& damage)
            {
                damage = 0;
                return;
            }

            void UpdateAI(const uint32 diff)
            {
                if (lightTimer >= diff)
                {
                    lightTimer -= diff;
                    return;
                }

                lightTimer = 300;

                Map::PlayerList const& playerList = me->GetMap()->GetPlayers();
                for (Map::PlayerList::const_iterator itr = playerList.begin(); itr != playerList.end(); ++itr)
                {
                    if (Player* player = itr->GetSource())
                    {
                        // 60* frontal arc
                        if (lightPos.HasInArc(M_PI / 3, player) && wallActivated)
                        {
                            if (!player->HasAura(SPELL_WALL_OF_LIGHT_BUFF) && !player->HasAura(SPELL_CHAMPION_OF_LIGHT))
                                player->CastSpell(player, SPELL_WALL_OF_LIGHT_BUFF, true);
                        }else
                            player->RemoveAura(SPELL_WALL_OF_LIGHT_BUFF);
                    }
                }
            }

        private:
            uint32 lightTimer;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_pure_light_terraceAI(creature);
        }
};

// Return to the Terrace - 65736
class mob_return_to_the_terrace : public CreatureScript
{
    public:
        mob_return_to_the_terrace() : CreatureScript("mob_return_to_the_terrace") { }

        struct mob_return_to_the_terraceAI : public ScriptedAI
        {
            mob_return_to_the_terraceAI(Creature* creature) : ScriptedAI(creature)
            {
                pInstance = creature->GetInstanceScript();
            }

            InstanceScript* pInstance;

            void Reset()
            {
                // Sniffed values
                me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);
                me->SetFlag(UNIT_FIELD_INTERACT_SPELL_ID, 118977);
            }

            void UpdateAI(const uint32 /*diff*/) { }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_return_to_the_terraceAI(creature);
        }
};

// Terror Spawn - 61034
class mob_terror_spawn : public CreatureScript
{
    public:
        mob_terror_spawn() : CreatureScript("mob_terror_spawn") { }

        struct mob_terror_spawnAI : public ScriptedAI
        {
            mob_terror_spawnAI(Creature* creature) : ScriptedAI(creature)
            {
                pInstance = creature->GetInstanceScript();
            }

            InstanceScript* pInstance;
            EventMap events;

            void Reset()
            {
                if (pInstance)
                    if (Creature* pureLight = Creature::GetCreature(*me, pInstance->GetData64(NPC_PURE_LIGHT_TERRACE)))
                        me->SetFacingToObject(pureLight);

                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
                me->SetFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_DISABLE_TURN);

                me->CastSpell(me, SPELL_DARK_BULWARK, true);

                events.Reset();
                events.ScheduleEvent(EVENT_PENETRATING_BOLT, 5000);
            }

            void UpdateAI(const uint32 diff)
            {
                if (me->HasUnitState(UNIT_STATE_CASTING))
                    return;

                events.Update(diff);

                switch (events.ExecuteEvent())
                {
                    case EVENT_PENETRATING_BOLT:
                    {
                        me->CastSpell(me, SPELL_PENETRATING_BOLT, false);
                        events.ScheduleEvent(EVENT_PENETRATING_BOLT, 5000);
                        break;
                    }
                    default:
                        break;
                }
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_terror_spawnAI(creature);
        }
};

// Champion of Light - 117866
class spell_champion_of_light : public SpellScriptLoader
{
    public:
        spell_champion_of_light() : SpellScriptLoader("spell_champion_of_light") { }

        class spell_champion_of_light_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_champion_of_light_AuraScript);

            void OnApply(AuraEffect const * /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (Unit* caster = GetCaster())
                    if (caster->ToCreature() && caster->ToCreature()->AI())
                        caster->ToCreature()->AI()->DoAction(ACTION_ACTIVATE_WALL_OF_LIGHT);
            }

            void OnRemove(AuraEffect const * /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (Unit* caster = GetCaster())
                    if (caster->ToCreature() && caster->ToCreature()->AI())
                        caster->ToCreature()->AI()->DoAction(ACTION_DESACTIVATE_WALL_OF_LIGHT);
            }

            void Register()
            {
                AfterEffectApply += AuraEffectApplyFn(spell_champion_of_light_AuraScript::OnApply, EFFECT_0, SPELL_AURA_MOD_SCALE, AURA_EFFECT_HANDLE_REAL);
                AfterEffectRemove += AuraEffectRemoveFn(spell_champion_of_light_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_MOD_SCALE, AURA_EFFECT_HANDLE_REAL);
            }
        };


        class spell_champion_of_light_Spellcript : public SpellScript
        {
            PrepareSpellScript(spell_champion_of_light_Spellcript);

            void SelectChampion(std::list<WorldObject*>& targets)
            {
                for (auto itr = targets.begin(); itr != targets.end();)
                {
                    Player * target = (*itr)->ToPlayer();
                    // we have a target outside the trigger range
                    if (!target->IsWithinDist2d(&lightPos, 3.0f))
                    {
                        if (target->HasAura(SPELL_CHAMPION_OF_LIGHT))
                            target->RemoveAurasDueToSpell(SPELL_CHAMPION_OF_LIGHT);

                        itr = targets.erase(itr);
                    } else if (target->HasAura(SPELL_CHAMPION_OF_LIGHT))
                    {
                        targets.clear();
                        return;
                    } else
                        ++itr;
                }

                if (!targets.empty())
                    Trinity::Containers::RandomResizeList(targets, 1);
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_champion_of_light_Spellcript::SelectChampion, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_champion_of_light_Spellcript();
        }

        AuraScript* GetAuraScript() const
        {
            return new spell_champion_of_light_AuraScript();
        }
};

// Breath of Fear - 119414 / 125786
class spell_breath_of_fear : public SpellScriptLoader
{
    public:
        spell_breath_of_fear() : SpellScriptLoader("spell_breath_of_fear") { }

        class spell_breath_of_fear_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_breath_of_fear_SpellScript);

            void CorrectRange(std::list<WorldObject*>& targets)
            {
                targets.clear();

                // Breath of Fear only affects targets not in the wall of light
                Map::PlayerList const& players = GetCaster()->GetMap()->GetPlayers();
                if (!players.isEmpty())
                    for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                        if (Player* player = itr->GetSource())
                            if (/*!lightPos.HasInArc(M_PI/3, *player) && */!player->HasAura(SPELL_WALL_OF_LIGHT_BUFF) && !player->HasAura(SPELL_CHAMPION_OF_LIGHT))
                                targets.push_back(player);
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_breath_of_fear_SpellScript::CorrectRange, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_breath_of_fear_SpellScript();
        }
};

// Conjure Terror Spawn - 119108
class spell_conjure_terror_spawn : public SpellScriptLoader
{
    public:
        spell_conjure_terror_spawn() : SpellScriptLoader("spell_conjure_terror_spawn") { }

        class spell_conjure_terror_spawn_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_conjure_terror_spawn_AuraScript);

            void OnTick(AuraEffect const */*aurEff*/)
            {
                if (Creature* caster = GetCaster()->ToCreature())
                    caster->AI()->DoAction(ACTION_SPAWN_TERROR);
            }

            void Register()
            {
                OnEffectPeriodic += AuraEffectPeriodicFn(spell_conjure_terror_spawn_AuraScript::OnTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_conjure_terror_spawn_AuraScript();
        }
};

// Penetrating Bolt - 129075
class spell_penetrating_bolt : public SpellScriptLoader
{
    public:
        spell_penetrating_bolt() : SpellScriptLoader("spell_penetrating_bolt") { }

        class spell_penetrating_bolt_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_penetrating_bolt_SpellScript);

            uint64 targetGuid;

            void CorrectRange(std::list<WorldObject*>& targets)
            {
                targetGuid = 0;

                if (!targets.empty())
                    Trinity::Containers::RandomResizeList(targets, 1);

                for (auto itr : targets)
                    if (itr->GetGUID())
                        targetGuid = itr->GetGUID();
            }

            void HandleDummy(SpellEffIndex /*index*/)
            {
                if (Unit* caster = GetCaster())
                {
                    if (InstanceScript* instance = caster->GetInstanceScript())
                    {
                        if (Player* target = Player::GetPlayer(*caster, targetGuid))
                            caster->CastSpell(target, SPELL_PENETRATING_BOLT_MISSILE, true, NULL, NULL, instance->GetData64(NPC_SHA_OF_FEAR));
                    }
                }
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_penetrating_bolt_SpellScript::CorrectRange, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
                OnEffectLaunch += SpellEffectFn(spell_penetrating_bolt_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_penetrating_bolt_SpellScript();
        }
};

// Ominous Cackle - 119593, 119692, 119693
class spell_ominous_caclke_target : public SpellScriptLoader
{
public:
    spell_ominous_caclke_target() : SpellScriptLoader("spell_ominous_caclke_target") {}

    class spell_impl : public SpellScript
    {
        PrepareSpellScript(spell_impl);

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            std::list<WorldObject *> assembledGroup;

            uint8 tankCnt = 1;
            uint8 dpsCnt = 3;
            uint8 healerCnt = 1;

            for (std::list<WorldObject*>::iterator itr = targets.begin(); itr != targets.end(); )
            {
                Player * player = (*itr)->ToPlayer();
                bool skip = true;

                if (player->HasAura(SPELL_CHAMPION_OF_LIGHT))
                    skip = false;
                else
                {
                    switch (player->GetRoleForGroup(player->GetActiveSpec()))
                    {
                        case ROLES_TANK:
                            if (tankCnt)
                            {
                                assembledGroup.push_back(*itr);
                                skip = false;
                                tankCnt--;
                            }
                            break;
                        case ROLES_HEALER:
                            if (healerCnt)
                            {
                                assembledGroup.push_back(*itr);
                                skip = false;
                                healerCnt--;
                            }
                            break;
                        case ROLES_DPS:
                            if (dpsCnt)
                            {
                                assembledGroup.push_back(*itr);
                                skip = false;
                                dpsCnt--;
                            }
                            break;
                        default:
                            break;
                    }
                }

                if (skip)
                    ++itr;
                else
                    itr = targets.erase(itr);
            }

            if (assembledGroup.empty())
                return;

            if (assembledGroup.size() < 5)
                Trinity::Containers::RandomResizeList(targets, 5 - assembledGroup.size());
            else
                targets.clear();

            targets.insert(targets.end(), assembledGroup.begin(), assembledGroup.end());


        }

        void ApplyMorph (SpellEffIndex effIndex)
        {
            Unit * caster = GetCaster();
            Player * victim = GetHitPlayer();

            if (!caster || !victim)
                return;

            victim->CastSpell(victim, 129147, true);
            // Works for players aswell. Should it?
            victim->GetMotionMaster()->MoveSplinePath(1, true, false, 20.0f, false, false, false);
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_impl::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
            OnEffectHitTarget += SpellEffectFn(spell_impl::ApplyMorph, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_impl();
    }
};


// Cheng Kang 61042, Yang Guoshi 61038, Jinlun Kun 61046
class npc_sha_of_fear_bowman : public CreatureScript
{
    enum
    {
        SPELL_DEATH_BLOSSOM             = 119888,
        SPELL_DREAD_SPRAY               = 119862,
        SPELL_SHOOT                     = 119862,
        SPELL_SHA_GLOBE                 = 129178,
        SPELL_DREAD_SPRAY_INIT          = 120047,
        SPELL_DREAD_SPRAY_CHANNEL       = 0,
        SPELL_FEARLESS_ENABLER          = 131504,
        SPELL_SHA_CORRUPTION            = 120000
    };

    enum
    {
        EVENT_DEATH_BLOSSOM             = 1,
        EVENT_DREAD_SPRAY,
        EVENT_SHOOT,
    };

    struct npc_sha_of_fear_bowmanAI : public ScriptedAI
    {
        npc_sha_of_fear_bowmanAI(Creature* creature) : ScriptedAI(creature) {}

        void Reset() override
        {
        }

        void UpdateAI(const uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
                case EVENT_DEATH_BLOSSOM:
                    break;
                case EVENT_DREAD_SPRAY:
                    break;
                case EVENT_SHOOT:
                    DoCastVictim(SPELL_SHOOT, false);
                    events.ScheduleEvent(EVENT_SHOOT, 1000);
                    break;
                default:
                    break;
            }
        }
    };

public:
    npc_sha_of_fear_bowman() : CreatureScript("npc_sha_of_fear_bowman") {}

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_sha_of_fear_bowmanAI(creature);
    }
};

// Dread spray - 119983
class spell_dread_spray_stackable : public SpellScriptLoader
{
    enum
    {
        SPELL_DREAD_AURA        = 119983,
        SPELL_FEAR              = 119985,
    };

    class script_impl : public AuraScript
    {
        PrepareAuraScript(script_impl);

        void onRefreshCharges(uint8 &newCharges)
        {
            if (Unit * owner = GetUnitOwner())
                if (newCharges == 2)
                {
                    ModStackAmount(-2);
                    owner->CastSpell(owner, SPELL_FEAR, true);
                }
        }

        void Register()
        {
            OnRefreshCharges += AuraRefreshChargesFn(script_impl::onRefreshCharges);
        }
    };

public:
    spell_dread_spray_stackable() : SpellScriptLoader("spell_dread_spray_stackable") {}

    AuraScript * GetAuraScript() const
    {
        return new script_impl;
    }
};

void AddSC_boss_sha_of_fear()
{
    new boss_sha_of_fear();
    new mob_pure_light_terrace();
    new mob_return_to_the_terrace();
    new mob_terror_spawn();
    new spell_champion_of_light();
    new spell_breath_of_fear();
    new spell_conjure_terror_spawn();
    new spell_penetrating_bolt();
    new spell_ominous_caclke_target();
    new npc_sha_of_fear_bowman();
    new spell_dread_spray_stackable();
}
