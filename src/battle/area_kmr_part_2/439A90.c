#include "common.h"
#include "battle/battle.h"

#define NAMESPACE b_area_kmr_part_2

#include "common/BattleAreaAngleStuff.inc.c"

#define NAMESPACE dup_b_area_kmr_part_2
#include "common/BattleAreaAngleStuff.inc.c"
#define NAMESPACE b_area_kmr_part_2

#define NAMESPACE dup2_b_area_kmr_part_2
#include "common/BattleAreaAngleStuff.inc.c"
#define NAMESPACE b_area_kmr_part_2

ApiStatus func_80218780_43A210(ScriptInstance* script, s32 isInitialCall) {
    ActorDesc* actorData = get_actor(script->owner1.actorID)->staticActorData;

    actorData->level /= 4;
    return ApiStatus_DONE2;
}

#define NAMESPACE dup3_b_area_kmr_part_2
#include "common/BattleAreaAngleStuff.inc.c"
#define NAMESPACE b_area_kmr_part_2

ApiStatus func_80218A30_43A4C0(ScriptInstance* script, s32 isInitialCall) {
    ActorDesc* actorData = get_actor(script->owner1.actorID)->staticActorData;

    actorData->level /= 4;
    return ApiStatus_DONE2;
}

ApiStatus func_80218A60_43A4F0(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 var1 = get_variable(script, *args++);
    s32 var2 = get_variable(script, *args++);

    fx_walk_large(2, var1, var2, get_variable(script, *args++), 0);
    return ApiStatus_DONE2;
}
