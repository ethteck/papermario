#include "common.h"
#include "map.h"

ApiStatus N(UnkTexturePanFunc2)(ScriptInstance* script, s32 isInitialCall) {
    if (isInitialCall) {
        script->functionTemp[0].s = 0;
        script->functionTemp[1].s = 0;
        script->functionTemp[2].s = 0;
        script->functionTemp[3].s = 0;
    }

    if (script->functionTemp[0].s == 0) {
        script->varTable[9].s += script->varTable[1].s;
        if (script->varTable[9].s < 0) {
            script->varTable[9].s += 0x20000;
        } else if (script->varTable[9].s > 0x20000) {
            script->varTable[9].s -= 0x20000;
        }
    }

    if (script->functionTemp[1].s == 0) {
        script->varTable[10].s += script->varTable[2].s;
        if (script->varTable[10].s < 0) {
            script->varTable[10].s += 0x20000;
        } else if (script->varTable[10].s > 0x20000) {
            script->varTable[10].s -= 0x20000;
        }
    }

    if (script->functionTemp[2].s == 0) {
        script->varTable[11].s += script->varTable[3].s;
        if (script->varTable[11].s < 0) {
            script->varTable[11].s += 0x20000;
        } else if (script->varTable[11].s > 0x20000) {
            script->varTable[11].s -= 0x20000;
        }
    }

    if (script->functionTemp[3].s == 0) {
        script->varTable[12].s += script->varTable[4].s;
        if (script->varTable[12].s < 0) {
            script->varTable[12].s += 0x20000;
        } else if (script->varTable[12].s > 0x20000) {
            script->varTable[12].s -= 0x20000;
        }
    }

    set_main_pan_u(script->varTable[0].s, script->varTable[9].s);
    set_main_pan_v(script->varTable[0].s, script->varTable[10].s);
    set_aux_pan_u(script->varTable[0].s, script->varTable[11].s);
    set_aux_pan_v(script->varTable[0].s, script->varTable[12].s);

    script->functionTemp[0].s++;
    script->functionTemp[1].s++;
    script->functionTemp[2].s++;
    script->functionTemp[3].s++;

    if (script->functionTemp[0].s >= script->varTable[5].s) {
        script->functionTemp[0].s = 0;
    }
    if (script->functionTemp[1].s >= script->varTable[6].s) {
        script->functionTemp[1].s = 0;
    }
    if (script->functionTemp[2].s >= script->varTable[7].s) {
        script->functionTemp[2].s = 0;
    }
    if (script->functionTemp[3].s >= script->varTable[8].s) {
        script->functionTemp[3].s = 0;
    }

    return ApiStatus_BLOCK;
}
