#include "flo_09.h"

INCLUDE_ASM(s32, "world/area_flo/flo_09/CB5040", func_80240040_CB5040);
/*
ApiStatus N(func_80240040_CB5040)(ScriptInstance *script, s32 isInitialCall) {
    f32 var1 = script->varTable[0] - script->varTable[3];
    f32 var2 = script->varTable[1] - script->varTable[4];
    f32 var3 = script->varTable[2] - script->varTable[5];
    s32 flag = TRUE;
    
    if (!((SQ(var1) + SQ(var2) + SQ(var3)) < 3600.0f)) {
        flag = FALSE;
    }
    script->varTable[0] = flag;

    return ApiStatus_DONE2;
}
*/
