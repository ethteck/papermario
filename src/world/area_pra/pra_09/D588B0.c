#include "pra_09.h"

#include "world/common/UnkFunc2.inc.c"

#include "world/common/UnkFunc3.inc.c"

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_802400EC_D5897C);

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_80240128_D589B8);

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_802402F0_D58B80);

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_8024049C_D58D2C);

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_80240500_D58D90);

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_8024068C_D58F1C);

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_80240870_D59100);

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_80240D3C_D595CC);

#include "world/common/SetPartnerFlagsA0000.inc.c"

#include "world/common/SetPartnerFlags80000.inc.c"

#include "world/common/SetPartnerFlags20000.inc.c"

#include "world/common/GetNpcCollisionHeight.inc.c"

#include "world/common/SomeXYZFuncTodoRename.inc.c"

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_8024114C_D599DC);
/*
ApiStatus N(func_8024114C_D599DC)(ScriptInstance* script, s32 isInitialCall) {
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

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_802411A0_D59A30);
/*
ApiStatus N(func_802411A0_D59A30)(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    
    D_80241CD0_BE0A60 = get_variable(script, *args);
    D_80241CCC_BE0A5C = 1;
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_802411D8_D59A68);
/*
ApiStatus N(func_802411D8_D59A68)(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32* temp_v0 = get_variable(script, *args);
    s32* ptr = temp_v0;
    s32 i;

    i = 0;
    if (ptr != NULL) {
        s32 new_var;
        for (new_var = ptr[0]; new_var != 0; i++) {
            *(N(D_8024F080) + i) = ptr[i];
        }
        N(D_8024F080)[i] = 0;
    } else {
        for (; i < 0x70; i++) {
            *(N(D_8024F080) + i) = i + 16;
            N(D_8024F080)[0x70] = 0;
        }
    }
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_80241274_D59B04);
/*
ApiStatus N(func_80241274_D59B04)(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32* temp_v0 = get_variable(script, *args);
    s32* ptr = temp_v0;
    s32 i;

    i = 0;
    if (ptr != NULL) {
        s32 new_var;
        for (new_var = ptr[0]; new_var != 0; i++) {
            *(N(D_8024F080) + i) = ptr[i];
        }
        N(D_8024F080)[i] = 0;
    } else {
        for (; i < 0x70; i++) {
            *(N(D_8024F080) + i) = i + 16;
            N(D_8024F080)[0x70] = 0;
        }
    }
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_80241310_D59BA0);

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_802413A4_D59C34);

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_802414F4_D59D84);

INCLUDE_ASM(s32, "world/area_pra/pra_09/D588B0", func_802415F8_D59E88);
