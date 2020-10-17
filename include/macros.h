#ifndef _MACROS_H_
#define _MACROS_H_

#include "common.h"

#ifndef SPLAT
#define INCLUDE_ASM(TYPE, FOLDER, NAME, ARGS...) \
  TYPE __attribute__((naked)) NAME(ARGS) { __asm__( ".include \"include/macro.inc\"\n.include \"asm/nonmatchings/"FOLDER"/"#NAME".s\"\n.set reorder\n.set at"); }
#else
#define INCLUDE_ASM(TYPE, FOLDER, NAME, ARGS...)
#endif

#define ARRAY_COUNT(arr) (s32)(sizeof(arr) / sizeof(arr[0]))
#define ARRAY_COUNTU(arr) (u32)(sizeof(arr) / sizeof(arr[0]))

#define ASSERT(condition) if (!(condition)) { while (1) {} }
#define PANIC() ASSERT(0)

#define GAME_STATUS (*gGameStatusPtr)

#define MAX_MAPVARS 16
#define MAX_MAPFLAGS 3

#define MAX_SCRIPTS 128

//NOTE: SCRIPT_ALLOC is probably not quite correct, but this is the closest thing to matching for the functions its used in. Needs more work.
#define SCRIPT_ALLOC(new, index) \
{ \
    ScriptList** temp = &gCurrentScriptListPtr; \
    s32 *numScripts = &gNumScripts; \
    new = heap_malloc(sizeof(ScriptInstance)); \
    (**temp)[index] = new; \
    (*numScripts)++; \
    ASSERT(new != NULL); \
}

#define SCRIPT_FREE(index) \
{ \
    ScriptList** temp = &gCurrentScriptListPtr; \
    s32 *numScripts = &gNumScripts; \
    heap_free((**temp)[index]); \
    (**temp)[index] = NULL; \
    (*numScripts)--; \
}

#define SQ(x) (x*x)

#endif
