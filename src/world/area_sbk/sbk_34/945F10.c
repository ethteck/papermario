#include "sbk_34.h"

INCLUDE_ASM(s32, "world/area_sbk/sbk_34/945F10", func_80240040_945F10);
/*
ApiStatus N(func_80240040_945F10)(ScriptInstance* script, s32 isInitialCall) {
    s32** ptr = &N(D_80241C68_BE09F8);
    s32 i;
    s32* test;

    if (*ptr == NULL) {
        i = heap_malloc(16 * sizeof(s32));
        *ptr = i;
        for (i = 0, test = *ptr; i < 16; i++) {
            *test++ = script->varTable[i];
        }
    } else {
        for (i = 0, test = *ptr; i < 16; i++) {
            script->varTable[i] = *test++;
        }
        ptr = &N(D_80241C68_BE09F8);
        heap_free(*ptr);
        *ptr = NULL;
    }
    return ApiStatus_DONE2;
}
*/

#include "world/common/GetItemName.inc.c"

#include "world/common/GetNpcCollisionHeight.inc.c"

#include "world/common/AddPlayerHandsOffset.inc.c"

INCLUDE_ASM(s32, "world/area_sbk/sbk_34/945F10", func_80240384_946254);
/*
ApiStatus N(func_80240384_946254)(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32* ptr;

    if (isInitialCall) {
        ptr = &D_80241CCC_BE0A5C;
        *ptr = 0;
    }

    ptr = &D_80241CCC_BE0A5C;
    if (*ptr != NULL) {
        ptr = &D_80241CCC_BE0A5C;
        *ptr = 0;
        set_variable(script, *args, D_80241CD0_BE0A60);
        return ApiStatus_DONE2;
    }

    return ApiStatus_BLOCK;
}
*/

INCLUDE_ASM(s32, "world/area_sbk/sbk_34/945F10", func_802403D8_9462A8);
/*
ApiStatus N(func_802403D8_9462A8)(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    D_80241CD0_BE0A60 = get_variable(script, *args);
    D_80241CCC_BE0A5C = 1;
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_sbk/sbk_34/945F10", func_80240410_9462E0);

#include "world/common/SetManyVars.inc.c"

#include "world/common/UnkYawFunc.inc.c"

INCLUDE_ASM(s32, "world/area_sbk/sbk_34/945F10", func_80240728_9465F8);

INCLUDE_ASM(s32, "world/area_sbk/sbk_34/945F10", func_8024076C_94663C);
