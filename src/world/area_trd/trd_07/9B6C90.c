#include "trd_07.h"

#include "world/common/set_script_owner_npc_anim.inc.c"

INCLUDE_ASM(s32, "world/area_trd/trd_07/9B6C90", func_8024038C_9B6D0C);

#include "world/common/UnkNpcAIFunc12.inc.c"

#include "world/common/set_script_owner_npc_col_height.inc.c"

INCLUDE_ASM(s32, "world/area_trd/trd_07/9B6C90", func_802406A4_9B7024);

INCLUDE_ASM(s32, "world/area_trd/trd_07/9B6C90", func_80240AE4_9B7464);
/*
void N(func_80240AE4_9B7464)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);

    npc->duration = aiSettings->moveTime / 2 + rand_int(aiSettings->moveTime / 2 + 1);
    if (is_point_within_region(enemy->territory->wander.wanderShape,
            enemy->territory->wander.point.x, enemy->territory->wander.point.z,
            npc->pos.x, npc->pos.z,
            enemy->territory->wander.wanderSizeX, enemy->territory->wander.wanderSizeZ)) {
        npc->yaw = atan2(npc->pos.x, npc->pos.z, enemy->territory->wander.point.x, enemy->territory->wander.point.z);
    } else {
        npc->yaw = clamp_angle((npc->yaw + rand_int(60)) - 30.0f);
    }
    npc->currentAnim = enemy->animList[1];
    script->functionTemp[1].s = 0;
    if (enemy->territory->wander.moveSpeedOverride < 0) {
        npc->moveSpeed = aiSettings->moveSpeed;
    } else {
        npc->moveSpeed = enemy->territory->wander.moveSpeedOverride / 32767.0;
    }
    enemy->varTable[4] = npc->pos.y * 100.0;
    script->functionTemp[0].s = 1;
}
*/

INCLUDE_ASM(s32, "world/area_trd/trd_07/9B6C90", func_80240C94_9B7614);

#include "world/common/UnkNpcAIFunc1.inc.c"

#include "world/common/UnkFunc4.inc.c"

#include "world/common/UnkNpcAIFunc2.inc.c"

INCLUDE_ASM(s32, "world/area_trd/trd_07/9B6C90", func_80241738_9B80B8);
/*
void N(func_80241738_9B80B8)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);

    npc->pos.y += N(D_802436DC_BE6E8C)[npc->duration++];
    if (npc->duration >= 5) {
        script->functionTemp[0].s = 12;
    }
}
*/

#include "world/common/UnkNpcAIFunc14.inc.c"

#include "world/common/UnkNpcAIFunc3.inc.c"

#include "world/common/UnkFunc6.inc.c"

#include "world/common/UnkFunc5.inc.c"

INCLUDE_ASM(s32, "world/area_trd/trd_07/9B6C90", func_80241DF0_9B8770);
/*
ApiStatus N(func_80241DF0_9B8770)(ScriptInstance* script, s32 isInitialCall) {
    Enemy* enemy = script->owner1.enemy;
    Bytecode* args = script->ptrReadPos;
    Npc* npc = get_npc_unsafe(enemy->npcID);
    EnemyTerritoryThing territory;
    EnemyTerritoryThing* territoryPtr = &territory;
    NpcAISettings* aiSettings = get_variable(script, *args);

    territory.unk_00 = 0;
    territory.shape = enemy->territory->wander.detectShape;
    territory.pointX = enemy->territory->wander.detect.x;
    territory.pointZ = enemy->territory->wander.detect.z;
    territory.sizeX = enemy->territory->wander.detectSizeX;
    territory.sizeZ = enemy->territory->wander.detectSizeZ;
    territory.unk_34 = 120.0f;
    territory.unk_1C = 0;

    if (isInitialCall) {
        N(func_80241CCC_9B864C)(npc, enemy, script, aiSettings);
    }

    npc->unk_AB = -2;

    if (enemy->unk_B0 & 4) {
        if (enemy->unk_B4 != 0) {
            return ApiStatus_BLOCK;
        }
        enemy->unk_B0 &= ~4;
    }

    switch (script->functionTemp[0].s) {
        case 0:
            N(func_80240AE4_9B7464)(script, aiSettings, territoryPtr);
        case 1:
            N(func_80240C94_9B7614)(script, aiSettings, territoryPtr);
            break;
        case 2:
            N(UnkNpcAIFunc1)(script, aiSettings, territoryPtr);
        case 3:
            N(func_8024137C_9B7CFC)(script, aiSettings, territoryPtr);
            break;
        case 10:
            N(UnkNpcAIFunc2)(script, aiSettings, territoryPtr);
        case 11:
            N(func_80241738_9B80B8)(script, aiSettings, territoryPtr);
            break;
        case 12:
            N(UnkNpcAIFunc14)(script, aiSettings, territoryPtr);
            break;
        case 13:
            N(UnkNpcAIFunc3)(script, aiSettings, territoryPtr);
            break;
        case 14:
            N(func_8024193C_9B82BC)(script, aiSettings, territoryPtr);
            break;
    }

    return ApiStatus_BLOCK;
}
*/

INCLUDE_ASM(s32, "world/area_trd/trd_07/9B6C90", func_80241FDC_9B895C);

INCLUDE_ASM(s32, "world/area_trd/trd_07/9B6C90", func_80242104_9B8A84);

INCLUDE_ASM(s32, "world/area_trd/trd_07/9B6C90", func_802421C0_9B8B40);

#include "world/common/UnkDurationCheck.inc.c"

INCLUDE_ASM(s32, "world/area_trd/trd_07/9B6C90", func_8024231C_9B8C9C);

INCLUDE_ASM(s32, "world/area_trd/trd_07/9B6C90", func_8024256C_9B8EEC);

INCLUDE_ASM(s32, "world/area_trd/trd_07/9B6C90", func_80242600_9B8F80);

INCLUDE_ASM(s32, "world/area_trd/trd_07/9B6C90", func_802427FC_9B917C);
