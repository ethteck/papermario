#include "omo_09.h"

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_802409E0_DCD6B0);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_80240A50_DCD720);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_80240B20_DCD7F0);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_80240BB8_DCD888);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_80240C18_DCD8E8);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_80240F4C_DCDC1C);
/*
ApiStatus N(func_80240F4C_DCDC1C)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
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

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_802415C8_DCE298);
/*
ApiStatus N(func_802415C8_DCE298)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
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

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_80241AE0_DCE7B0);
/*
ApiStatus N(func_80241AE0_DCE7B0)(ScriptInstance* script, s32 isInitialCall) {
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
            N(func_80240F4C_DCDC1C)(script, npcAISettings, territoryPtr);
        case 1:
            N(func_802410A4_DCDD74)(script, npcAISettings, territoryPtr);
            break;
        case 2:
            N(UnkNpcAIFunc1)(script, npcAISettings, territoryPtr);
        case 3:
            N(func_8024140C_DCE0DC)(script, npcAISettings, territoryPtr);
            break;
        case 4:
            N(func_802415C8_DCE298)(script, npcAISettings, territoryPtr);
            break;
        case 10:
            N(NpcJumpFunc2)(script, npcAISettings, territoryPtr);
        case 11:
            N(NpcJumpFunc)(script, npcAISettings, territoryPtr);
            break;
        case 12:
            N(UnkNpcAIFunc13)(script, npcAISettings, territoryPtr);
        case 13:
            N(func_80241898_DCE568)(script, npcAISettings, territoryPtr);
            break;
        case 14:
            N(UnkNpcDurationFlagFunc)(script, npcAISettings, territoryPtr);
            break;
        case 15:
            N(func_80241A20_DCE6F0)(script, npcAISettings, territoryPtr);
            break;
        case 99:
            func_8004A73C(script);
    }
    return ApiStatus_BLOCK;
}
*/

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_80241DDC_DCEAAC);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_80241E4C_DCEB1C);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_80241F1C_DCEBEC);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_80241FB4_DCEC84);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_80242014_DCECE4);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_80242358_DCF028);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_80242548_DCF218);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_8024268C_DCF35C);

#include "world/common/UnkSetDurationFunc.inc.c"

#include "world/common/UnkNpcAIFunc9.inc.c"

#include "world/common/UnkDurationCheck.inc.c"

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_802428B4_DCF584);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_80242DF0_DCFAC0);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_8024324C_DCFF1C);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_8024356C_DD023C);

#include "world/common/GetEncounterEnemyIsOwner.inc.c"

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_802435B8_DD0288);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_802435CC_DD029C);

INCLUDE_ASM(s32, "world/area_omo/omo_09/DCD6B0", func_802435E8_DD02B8);
