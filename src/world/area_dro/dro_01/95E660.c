#include "dro_01.h"

INCLUDE_ASM(s32, "world/area_dro/dro_01/95E660", func_80243460_95E660);
/*
ApiStatus N(func_80243460_95E660)(ScriptInstance* script, s32 isInitialCall) {
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

#define NAMESPACE dup_dro_01
#include "world/common/GetItemName.inc.c"
#define NAMESPACE dro_01

INCLUDE_ASM(s32, "world/area_dro/dro_01/95E660", func_80243578_95E778);
