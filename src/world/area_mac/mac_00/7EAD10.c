#include "mac_00.h"

#include "world/common/SetPlayerStatusAnimFlags100000.inc.c"

#include "world/common/GetCurrentFloor.inc.c"

ApiStatus func_80240034_7EAD44(ScriptInstance* script, s32 isInitialCall) {
    s32 stickX;
    s32 stickY;

    if (gCollisionStatus.currentFloor != script->varTable[11]) {
        script->varTable[0] = 0;
        return ApiStatus_DONE2;
    }

    stickX = abs(gGameStatusPtr->stickX);
    stickY = gGameStatusPtr->stickY;

    if (stickX == 0 && stickY == 0) {
        return ApiStatus_BLOCK;
    }

    if (!(atan2(0.0f, 0.0f, stickX, stickY) < 60.0f)) {
        return ApiStatus_BLOCK;
    }

    script->varTable[0] = 1;
    return ApiStatus_DONE2;
}

#include "world/common/GetEntryPos.inc.c"

#include "world/common/GetCurrentCameraYawClamped180.inc.c"

#include "world/common/SomeXYZFunc2.inc.c"

#include "world/common/UnkTexturePanFunc.inc.c"

#include "world/common/UnkTexturePanFunc2.inc.c"

ApiStatus func_802405EC_7EB2FC(ScriptInstance* script, s32 isInitialCall) {
    f32 x;
    f32 y;
    f32 z;

    get_collider_center(get_variable(script, *script->ptrReadPos), &x, &y, &z);
    return ApiStatus_DONE2;
}

ApiStatus func_80240624_7EB334(ScriptInstance* script, s32 isInitialCall) {
    return ApiStatus_DONE2;
}
