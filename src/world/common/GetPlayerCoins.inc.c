#include "common.h"
#include "map.h"

ApiStatus N(GetPlayerCoins)(ScriptInstance* script, s32 isInitialCall) {
    script->varTable[0] = gPlayerData.coins;
    return ApiStatus_DONE2;
}
