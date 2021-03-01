#include "common.h"
#include "battle/battle.h"

void dispatch_event_actor(Actor* actor, Event event);

s32 func_80276F50(Actor* actor) {
    ActorPart* partIt = actor->partsTable;
    s32 ret = FALSE;

    while (partIt != NULL) {
        if (partIt->eventFlags & 0xC0000) {
            ret = TRUE;
            break;
        } else {
            partIt = partIt->nextPart;
        }
    }

    return ret;
}

void dispatch_event_general(Actor* actor, Event event) {
    switch (actor->actorID & 0x700) {
        case ActorID_PLAYER:
            dispatch_event_player(event);
            break;
        case ActorID_PARTNER:
            dispatch_event_partner(event);
            break;
        case ActorID_ENEMY0:
            dispatch_event_actor(actor, event);
            break;
    }
}

INCLUDE_ASM(s32, "code_1A5830", play_hit_sound);

void dispatch_event_actor(Actor* actor, Event event) {
    ScriptInstance* onHitScript = actor->onHitScript;
    ScriptID onHitID = actor->onHitID;

    if (actor->onHitCode != NULL) {
        ScriptInstance* newScript;

        actor->lastEventType = event;
        newScript = start_script(actor->onHitCode, 0xA, 0x20);
        actor->onHitScript = newScript;
        actor->onHitID = newScript->id;
        newScript->owner1.actorID = actor->actorID;
    }

    if (actor->takeTurnScript != NULL) {
        get_script_by_index(actor->takeTurnID);
        kill_script_by_ID(actor->takeTurnID);
        actor->takeTurnScript = NULL;
    }

    if (onHitScript != NULL) {
        kill_script_by_ID(onHitID);
    }
}

INCLUDE_ASM(s32, "code_1A5830", calc_enemy_test_target);

INCLUDE_ASM(s32, "code_1A5830", calc_enemy_damage_target);

INCLUDE_ASM(s32, "code_1A5830", dispatch_damage_event_actor);

s32 dispatch_damage_event_actor_0(Actor* actor, s32 damageAmount, s32 event) {
    return dispatch_damage_event_actor(actor, damageAmount, event, FALSE);
}

s32 dispatch_damage_event_actor_1(Actor* actor, s32 damageAmount, s32 event) {
    return dispatch_damage_event_actor(actor, damageAmount, event, TRUE);
}

ApiStatus BindTakeTurn(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 var1;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    var1 = get_variable(script, *args++);
    get_actor(actorID)->takeTurnCode = var1;
    return ApiStatus_DONE2;
}

ApiStatus PauseTakeTurn(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    get_variable(script, *args++);
    suspend_all_script(get_actor(actorID)->takeTurnID);
    return ApiStatus_DONE2;
}

ApiStatus ResumeTakeTurn(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    get_variable(script, *args++);
    resume_all_script(get_actor(actorID)->takeTurnID);
    return ApiStatus_DONE2;
}

ApiStatus BindIdle(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    Bytecode* idleCode;
    Actor* actor;
    ScriptInstance* newScriptContext;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    idleCode = get_variable(script, *args++);
    actor = get_actor(actorID);

    if (actor->idleScript != 0) {
        kill_script_by_ID(actor->idleScriptID);
        actor->idleScript = 0;
    }

    actor->idleCode = idleCode;
    newScriptContext = start_script(idleCode, 10, 0);
    actor->idleScript = newScriptContext;
    actor->idleScriptID = newScriptContext->id;
    newScriptContext->owner1.actorID = actorID;
    return ApiStatus_DONE2;
}

ApiStatus EnableIdleScript(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 var1;
    Actor* actor;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    var1 = get_variable(script, *args++);
    actor = get_actor(actorID);

    if (actor->idleScript != NULL) {
        switch (var1) {
            case -1:
                restart_script(actor->idleScript);
                resume_all_script(actor->idleScriptID);
                break;
            case 1:
                resume_all_script(actor->idleScriptID);
                break;
            case 0:
                suspend_all_script(actor->idleScriptID);
                break;
        }
    }

    return ApiStatus_DONE2;
}

ApiStatus BindHandleEvent(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 var1;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    var1 = get_variable(script, *args++);
    get_actor(actorID)->onHitCode = var1;
    return ApiStatus_DONE2;
}

ApiStatus BindNextTurn(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 var1;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    var1 = get_variable(script, *args++);
    get_actor(actorID)->onTurnChangeCode = var1;
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_1A5830", JumpToGoal);

INCLUDE_ASM(s32, "code_1A5830", IdleJumpToGoal);

INCLUDE_ASM(s32, "code_1A5830", JumpToGoalSimple2);

INCLUDE_ASM(s32, "code_1A5830", JumpWithBounce);

INCLUDE_ASM(s32, "code_1A5830", LandJump);

INCLUDE_ASM(s32, "code_1A5830", FallToGoal);

INCLUDE_ASM(s32, "code_1A5830", RunToGoal);

INCLUDE_ASM(s32, "code_1A5830", IdleRunToGoal);

INCLUDE_ASM(s32, "code_1A5830", JumpPartTo);

INCLUDE_ASM(s32, "code_1A5830", FallPartTo);

INCLUDE_ASM(s32, "code_1A5830", LandJumpPart);

INCLUDE_ASM(s32, "code_1A5830", RunPartTo);

INCLUDE_ASM(s32, "code_1A5830", update_lerp_battle);

INCLUDE_ASM(s32, "code_1A5830", FlyToGoal);

INCLUDE_ASM(s32, "code_1A5830", IdleFlyToGoal);

INCLUDE_ASM(s32, "code_1A5830", FlyPartTo);

ApiStatus GetLastEvent(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 outVar;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    outVar = *args++;
    set_variable(script, outVar, get_actor(actorID)->lastEventType);
    return ApiStatus_DONE2;
}

ApiStatus SetTargetActor(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 targetActorID;
    Actor* actor;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    targetActorID = get_variable(script, *args++);
    actor = get_actor(actorID);
    actor->targetActorID = targetActorID;
    actor->targetPartIndex = 1;
    return ApiStatus_DONE2;
}

ApiStatus SetEnemyHP(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s8 newHP;
    Actor* actor;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    newHP = get_variable(script, *args++);
    actor = get_actor(actorID);

    actor->currentHP = newHP;
    if (newHP > actor->maxHP) {
        actor->currentHP = actor->maxHP;
    }

    actor->hpFraction = (actor->currentHP * 25) / actor->maxHP;

    return ApiStatus_DONE2;
}

ApiStatus GetActorHP(ScriptInstance* script, s32 isInitialCall) {
    PlayerData* playerData = &gPlayerData;
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    Actor* actor;
    s32 outVar;
    s32 outVal;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }
    outVar = *args++;

    actor = get_actor(actorID);

    switch (actorID & 0x700) {
        case ActorID_PLAYER:
            outVal = playerData->curHP;
            break;
        case ActorID_PARTNER:
            outVal = 99;
            break;
        default:
            outVal = actor->currentHP;
            break;
    }

    set_variable(script, outVar, outVal);
    return ApiStatus_DONE2;
}

ApiStatus GetEnemyMaxHP(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 outVar;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    outVar = *args++;
    set_variable(script, outVar, get_actor(actorID)->maxHP);
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_1A5830", RemoveActor);

INCLUDE_ASM(s32, "code_1A5830", DropStarPoints);

ApiStatus SetDefenseTable(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 partIndex;
    s32 var2;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    partIndex = get_variable(script, *args++);
    var2 = get_variable(script, *args++);
    get_actor_part(get_actor(actorID), partIndex)->defenseTable = var2;
    return ApiStatus_DONE2;
}

ApiStatus SetStatusTable(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 var1;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    var1 = get_variable(script, *args++);
    get_actor(actorID)->statusTable = var1;
    return ApiStatus_DONE2;
}

ApiStatus SetIdleAnimations(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 partIndex;
    s32 var2;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    partIndex = get_variable(script, *args++);
    var2 = get_variable(script, *args++);
    get_actor_part(get_actor(actorID), partIndex)->idleAnimations = var2;
    return ApiStatus_DONE2;
}

ApiStatus func_8027CC10(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 partIndex;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    partIndex = get_variable(script, *args++);

    // weirdly unused
    get_variable(script, *args++);
    get_variable(script, *args++);

    get_actor_part(get_actor(actorID), partIndex);
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_1A5830", EnemyDamageTarget);

ApiStatus EnemyFollowupAfflictTarget(ScriptInstance* script, s32 isInitialCall) {
    BattleStatus* battleStatus = &gBattleStatus;
    BattleStatus* anotherBattleStatus = &gBattleStatus;
    Bytecode* args = script->ptrReadPos;
    Actor* actor;
    s32 actorID = get_variable(script, *args++);
    s32 hitResults;
    s32 outVar;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    actor = get_actor(actorID);
    outVar = *args++;

    battleStatus->currentTargetID = actor->targetActorID;
    battleStatus->currentTargetPart = actor->targetPartIndex;
    battleStatus->statusChance = battleStatus->currentAttackStatus;

    if (battleStatus->statusChance == 0xFF) {
        battleStatus->statusChance = 0;
    }

    anotherBattleStatus->statusDuration = (anotherBattleStatus->currentAttackStatus & 0xF00) >> 8;
    hitResults = calc_enemy_damage_target(actor);

    if (hitResults < 0) {
        return ApiStatus_FINISH;
    }

    set_variable(script, outVar, hitResults);
    if (does_script_exist_by_ref(script) == NULL) {
        return ApiStatus_FINISH;
    }
    return ApiStatus_DONE2;
}


INCLUDE_ASM(s32, "code_1A5830", EnemyTestTarget);

ApiStatus DispatchDamageEvent(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    Actor* actor;
    s32 damageAmount;
    s32 scriptExists;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    actor = get_actor(actorID);
    damageAmount = get_variable(script, *args++);

    if (dispatch_damage_event_actor_0(actor, damageAmount, get_variable(script, *args++)) < 0) {
        return ApiStatus_BLOCK;
    }

    scriptExists = does_script_exist_by_ref(script) != 0;
    return scriptExists * ApiStatus_DONE2;
}

ApiStatus DispatchEvent(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    dispatch_event_actor(get_actor(actorID), get_variable(script, *args++));
    return ApiStatus_DONE2;
}

ApiStatus func_8027D2D8(ScriptInstance* script, s32 isInitialCall) {
    ActorID actorID = get_variable(script, *script->ptrReadPos);

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    func_80266ADC(get_actor(actorID));
    return ApiStatus_DONE2;
}

ApiStatus func_8027D32C(ScriptInstance* script, s32 isInitialCall) {
    ActorID actorID = get_variable(script, *script->ptrReadPos);

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    func_80266AF8(get_actor(actorID));
    return ApiStatus_DONE2;
}

ApiStatus SetTargetOffset(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 partIndex;
    ActorPart* part;
    s32 x;
    s32 y;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    partIndex = get_variable(script, *args++);
    part = get_actor_part(get_actor(actorID), partIndex);

    x = get_variable(script, *args++);
    y = get_variable(script, *args++);

    part->targetOffset.x = x;
    part->targetOffset.y = y;

    return ApiStatus_DONE2;
}

ApiStatus func_8027D434(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 partIndex;
    ActorPart* part;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    partIndex = get_variable(script, *args++);
    part = get_actor_part(get_actor(actorID), partIndex);
    part->unk_70 = get_variable(script, *args++);
    return ApiStatus_DONE2;
}

ApiStatus func_8027D4C8(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 partIndex;
    ActorPart* part;
    s32 temp;
    s32 temp2;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    partIndex = get_variable(script, *args++);
    part = get_actor_part(get_actor(actorID), partIndex);

    temp = get_variable(script, *args++);
    temp2 = get_variable(script, *args++);

    part->unk_75 = temp;
    part->unk_76 = temp2;

    return ApiStatus_DONE2;
}

ApiStatus EnableActorBlur(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 enable = get_variable(script, *args++);
    Actor* actor;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    actor = get_actor(actorID);

    if (enable == 0) {
        disable_actor_blur(actor);
    } else if (enable == 1) {
        enable_actor_blur(actor);
    } else {
        reset_actor_blur(actor);
    }
    return ApiStatus_DONE2;
}

ApiStatus func_8027D628(ScriptInstance* script, s32 isInitialCall) {
    ActorID actorID = get_variable(script, *script->ptrReadPos);

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    func_80254610(get_actor(actorID));
    return ApiStatus_DONE2;
}

ApiStatus AfflictActor(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    Actor* actor;
    s32 statusTypeKey;
    s32 duration;
    s32 statusDurationKey;

    statusTypeKey = get_variable(script, *args++);
    duration = get_variable(script, *args++);

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }
    actor = get_actor(actorID);

    switch (statusTypeKey) {
        case 7:
            statusDurationKey = 38;
            break;
        case 6:
            statusDurationKey = 32;
            break;
        case 5:
            statusDurationKey = 38;
            break;
        case 4:
            statusDurationKey = 36;
            break;
        default:
            statusDurationKey = 38;
            break;
    }

    inflict_status_set_duration(actor, statusTypeKey, statusDurationKey, duration);

    return ApiStatus_DONE2;
}

ApiStatus func_8027D75C(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 outVar = *args++;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    set_variable(script, outVar, get_actor(actorID)->unk_208);
    return ApiStatus_DONE2;
}

ApiStatus GetEncounterState(ScriptInstance* script, s32 isInitialCall) {
    set_variable(script, *script->ptrReadPos, gCurrentEncounter.hitType);
    return ApiStatus_DONE2;
}

ApiStatus YieldTurn(ScriptInstance* script, s32 isInitialCall) {
    gBattleStatus.flags1 |= 0x200000;
    return ApiStatus_DONE2;
}

ApiStatus SetActorSize(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 y = get_variable(script, *args++);
    s32 x = get_variable(script, *args++);
    Actor* actor;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    actor = get_actor(actorID);

    if (y != -250000000) {
        actor->size.y = y;
    }
    if (x != -250000000) {
        actor->size.x = x;
    }
    actor->shadowScale = actor->size.x / 24.0;

    return ApiStatus_DONE2;
}

ApiStatus GetActorSize(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 outY = *args++;
    s32 outX = *args++;
    Actor* actor;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    actor = get_actor(actorID);
    set_variable(script, outY, actor->size.y);
    set_variable(script, outX, actor->size.x);
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_1A5830", SetPartSize);

ApiStatus GetOriginalActorType(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 outVar = *args++;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    set_variable(script, outVar, get_actor(actorID)->staticActorData->type);
    return ApiStatus_DONE2;
}

ApiStatus GetCurrentActorType(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 outVar = *args++;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    set_variable(script, outVar, get_actor(actorID)->actorType);
    return ApiStatus_DONE2;
}

ApiStatus GetLastDamage(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 outVar;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }
    outVar = *args++;

    set_variable(script, outVar, get_actor(actorID)->lastDamageTaken);
    return ApiStatus_DONE2;
}

ApiStatus EnableActorGlow(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 flag;
    Actor* actor;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    flag = get_variable(script, *args++);
    actor = get_actor(actorID);
    actor->isGlowing = flag;

    if (!flag) {
        ActorPart* it = actor->partsTable;

        while (it != NULL) {
            if (it->idleAnimations != NULL) {
                func_802DE894(it->unk_84, 0, 0, 0, 0, 0, 0);
            }
            it = it->nextPart;
        }
        func_80266EE8(actor, 0);
    }

    return ApiStatus_DONE2;
}

ApiStatus WasStatusInflicted(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    BattleStatus* battleStatus = &gBattleStatus;
    s32 outVal;

    get_variable(script, *args++);

    if (script) { // can be args or script but not 1 or do while 0, nor does else work after
        outVal = battleStatus->wasStatusInflicted;
    }
    outVal = battleStatus->wasStatusInflicted;

    set_variable(script, *args++, outVal);

    return ApiStatus_DONE2;
}

ApiStatus CopyStatusEffects(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorIDTo;
    ActorID actorIDFrom;
    Actor* actorTo;
    Actor* actorFrom;

    actorIDFrom = get_variable(script, *args++);
    if (actorIDFrom == ActorID_SELF) {
        actorIDFrom = script->owner1.actorID;
    }
    actorFrom = get_actor(actorIDFrom);

    actorIDTo = get_variable(script, *args++);
    if (actorIDTo == ActorID_SELF) {
        actorIDTo = script->owner1.actorID;
    }
    actorTo = get_actor(actorIDTo);

    inflict_status(actorTo, actorFrom->debuff, actorFrom->debuffDuration);
    inflict_status(actorTo, actorFrom->staticStatus, actorFrom->staticDuration);
    inflict_status(actorTo, actorFrom->stoneStatus, actorFrom->stoneDuration);
    inflict_status(actorTo, actorFrom->koStatus, actorFrom->koDuration);
    inflict_status(actorTo, actorFrom->transStatus, actorFrom->transDuration);

    actorFrom->status = 0;
    actorTo->status = 0;

    return ApiStatus_DONE2;
}

ApiStatus ClearStatusEffects(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorID actorID = get_variable(script, *args++);
    s32 flag;
    Actor* actor;

    if (actorID == ActorID_SELF) {
        actorID = script->owner1.actorID;
    }

    actor = get_actor(actorID);

    if (actor->debuff != Debuff_END) {
        actor->debuffDuration = 0;
        actor->debuff = Debuff_END;
        func_80047898(actor->unk_436);
    }

    if (actor->staticStatus != 0) {
        actor->staticDuration = 0;
        actor->staticStatus = 0;
        func_800479A0(actor->unk_436);
    }

    if (actor->transStatus != 0) {
        actor->transDuration = 0;
        actor->transStatus = 0;
        func_80047AA8(actor->unk_436);
    }

    if (actor->stoneStatus != 0) {
        actor->stoneDuration = 0;
        actor->stoneStatus = 0;
    }

    actor->koStatus = 0;
    actor->koDuration = 0;
    actor->ptrDefuffIcon->ptrPropertyList[15] = 0;
    actor->attackBoost = 0;
    actor->defenseBoost = 0;
    actor->isGlowing = 0;

    return ApiStatus_DONE2;
}
