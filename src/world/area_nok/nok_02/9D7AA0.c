#include "nok_02.h"

#define UNK_ALPHA_FUNC_NPC 19

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80240A80_9D7AA0);
/*
ApiStatus N(func_80240A80_9D7AA0)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);
    f32 ret;
    f32 max;
    f32 posX;
    f32 posZ;
    s32 i;
    s32 j;

    script->functionTemp[1].s = 0;
    max = 32767.0f;
    posX = npc->pos.x;
    posZ = npc->pos.z;
    script->functionTemp[2].s = 0;

    for (i = 0, j = 0; i < enemy->territory->patrol.numPoints; i++, j++) {
        ret = dist2D(posX, posZ, i[enemy->territory->patrol.points].x, i[enemy->territory->patrol.points].z);
        if (ret < max) {
            max = ret;
            script->functionTemp[2].s = j;
        }
    }

    npc->currentAnim = enemy->animList[1];
    if (enemy->territory->patrol.moveSpeedOverride < 0) {
        npc->moveSpeed = aiSettings->moveSpeed;
    } else {
        npc->moveSpeed = enemy->territory->patrol.moveSpeedOverride / 32767.0;
    }

    script->functionTemp[0].s = 1;
    return ApiStatus_DONE1;
}
*/

#include "world/common/UnkFunc13.inc.c"

#include "world/common/UnkNpcAIFunc1.inc.c"

#include "world/common/UnkFunc14.inc.c"

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_802410FC_9D811C);
/*
ApiStatus N(func_802410FC_9D811C)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);

    script->functionTemp[2].s++;
    if (script->functionTemp[2].s >= enemy->territory->patrol.numPoints) {
        script->functionTemp[2].s = 0;
    }
    npc->currentAnim = enemy->animList[1];
    if (enemy->territory->patrol.moveSpeedOverride < 0) {
        npc->moveSpeed = aiSettings->moveSpeed;
    } else {
        npc->moveSpeed = enemy->territory->patrol.moveSpeedOverride / 32767.0;
    }
    script->functionTemp[0].s = 1;
    return ApiStatus_DONE1;
}
*/

#include "world/common/NpcJumpFunc2.inc.c"

#include "world/common/NpcJumpFunc.inc.c"

#include "world/common/UnkNpcAIFunc13.inc.c"

#include "world/common/UnkFunc15.inc.c"

#include "world/common/UnkNpcDurationFlagFunc.inc.c"

#include "world/common/UnkFunc16.inc.c"

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80241614_9D8634);
/*
ApiStatus N(func_80241614_9D8634)(ScriptInstance* script, s32 isInitialCall) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);
    Bytecode* args = script->ptrReadPos;
    EnemyTerritoryThing territory;
    EnemyTerritoryThing* territoryPtr = &territory;
    NpcAISettings* npcAISettings = (NpcAISettings*)get_variable(script, *args++);
    f32 posX, posY, posZ, posW;

    territory.unk_00 = 0;
    territory.shape = enemy->territory->patrol.detectShape;
    territory.pointX = enemy->territory->patrol.detect.x;
    territory.pointZ = enemy->territory->patrol.detect.z;
    territory.sizeX = enemy->territory->patrol.detectSizeX;
    territory.sizeZ = enemy->territory->patrol.detectSizeZ;
    territory.unk_34 = 65.0f;
    territory.unk_1C = 0;

    if (isInitialCall || enemy->unk_B0 & 4) {
        script->functionTemp[0].s = 0;
        npc->duration = 0;
        npc->currentAnim = enemy->animList[0];
        npc->flags &= ~0x800;
        if (!enemy->territory->patrol.isFlying) {
            npc->flags = (npc->flags | 0x200) & ~8;
        } else {
            npc->flags = (npc->flags & ~0x200) | 8;
        }

        if (enemy->unk_B0 & 4) {
            script->functionTemp[0].s = 99;
            script->functionTemp[1].s = 0;
            enemy->unk_B0 &= ~4;
        } else if (enemy->flags & 0x40000000) {
            script->functionTemp[0].s = 12;
            enemy->flags &= 0xBFFFFFFF;
        }

        posX = npc->pos.x;
        posY = npc->pos.y + npc->collisionHeight;
        posZ = npc->pos.z;
        posW = 100.0f;

        if (func_800DCB7C(npc->unk_80, &posX, &posY, &posZ, &posW)) {
            npc->pos.y = posY;
        }
    }

    switch (script->functionTemp[0].s) {
        case 0:
            N(func_80240A80_9D7AA0)(script, npcAISettings, territoryPtr);
        case 1:
            N(func_80240BD8_9D7BF8)(script, npcAISettings, territoryPtr);
            break;
        case 2:
            N(UnkNpcAIFunc1)(script, npcAISettings, territoryPtr);
        case 3:
            N(func_80240F40_9D7F60)(script, npcAISettings, territoryPtr);
            break;
        case 4:
            N(func_802410FC_9D811C)(script, npcAISettings, territoryPtr);
            break;
        case 10:
            N(NpcJumpFunc2)(script, npcAISettings, territoryPtr);
        case 11:
            N(NpcJumpFunc)(script, npcAISettings, territoryPtr);
            break;
        case 12:
            N(UnkNpcAIFunc13)(script, npcAISettings, territoryPtr);
        case 13:
            N(func_802413CC_9D83EC)(script, npcAISettings, territoryPtr);
            break;
        case 14:
            N(UnkNpcDurationFlagFunc)(script, npcAISettings, territoryPtr);
            break;
        case 15:
            N(func_80241554_9D8574)(script, npcAISettings, territoryPtr);
            break;
        case 99:
            func_8004A73C(script);
    }
    return ApiStatus_BLOCK;
}
*/

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80241910_9D8930);
/*
ApiStatus N(func_80241910_9D8930)(ScriptInstance* script, s32 isInitialCall) {
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

#include "world/common/Set80151310.inc.c"

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80241A4C_9D8A6C);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80241C70_9D8C90);

#include "world/common/GetNpcUnsafeOwner2.inc.c"

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80241CDC_9D8CFC);

#include "world/common/UnkAlphaFunc.inc.c"

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80241E88_9D8EA8);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80241FFC_9D901C);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80242080_9D90A0);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80242298_9D92B8);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_8024234C_9D936C);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80242380_9D93A0);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80242400_9D9420);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80242418_9D9438);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80242434_9D9454);

#include "world/common/GetGameStatus75.inc.c"

#include "world/common/SetCamVfov.inc.c"

#include "world/common/GetCamVfov.inc.c"

#include "world/common/UnkCameraFunc.inc.c"

#include "world/common/UnkRotatePlayer.inc.c"

#include "world/common/UnkPartnerFuncs.inc.c"

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80242908_9D9928);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80242974_9D9994);

#include "world/common/GetNpcCollisionHeight.inc.c"

#include "world/common/SomeXYZFuncTodoRename.inc.c"

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80242BD0_9D9BF0);
/*
ApiStatus N(func_80242BD0_9D9BF0)(ScriptInstance* script, s32 isInitialCall) {
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

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80242C24_9D9C44);
/*
ApiStatus N(func_80242C24_9D9C44)(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    
    D_80241CD0_BE0A60 = get_variable(script, *args);
    D_80241CCC_BE0A5C = 1;
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80242C5C_9D9C7C);

#include "world/common/SetManyVars.inc.c"

#include "world/common/UnkYawFunc.inc.c"

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80242F74_9D9F94);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80242FB8_9D9FD8);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80242FE4_9DA004);
/*
ApiStatus N(func_80242FE4_9DA004)(ScriptInstance* script, s32 isInitialCall) {
    func_800EB168(get_variable(script, *script->ptrReadPos));
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80243010_9DA030);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_802430CC_9DA0EC);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80243214_9DA234);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80243294_9DA2B4);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_8024351C_9DA53C);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7AA0", func_80243754_9DA774);
