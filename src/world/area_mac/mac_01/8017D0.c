#include "mac_01.h"

#define UNK_ALPHA_FUNC_NPC 5

extern u8 D_80258407_818C87;

#include "world/common/UnkMusicFunc.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80241080_801900);
/*
ApiStatus N(func_80241080_801900)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
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

#define NAMESPACE dup_mac_01
#include "world/common/UnkNpcAIFunc1.inc.c"
#define NAMESPACE mac_01

#include "world/common/UnkFunc14.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_802416FC_801F7C);
/*
ApiStatus N(func_802416FC_801F7C)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
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

#define NAMESPACE dup_mac_01
#include "world/common/NpcJumpFunc2.inc.c"
#define NAMESPACE mac_01

#define NAMESPACE dup_mac_01
#include "world/common/NpcJumpFunc.inc.c"
#define NAMESPACE mac_01

#define NAMESPACE dup_mac_01
#include "world/common/UnkNpcAIFunc13.inc.c"
#define NAMESPACE mac_01

#include "world/common/UnkFunc15.inc.c"

#define NAMESPACE dup_mac_01
#include "world/common/UnkNpcDurationFlagFunc.inc.c"
#define NAMESPACE mac_01

#include "world/common/UnkFunc16.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80241C14_802494);
/*
ApiStatus N(func_80241C14_802494)(ScriptInstance* script, s32 isInitialCall) {
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
            N(func_80241080_801900)(script, npcAISettings, territoryPtr);
        case 1:
            N(func_802411D8_801A58)(script, npcAISettings, territoryPtr);
            break;
        case 2:
            dup_UnkNpcAIFunc1(script, npcAISettings, territoryPtr);
        case 3:
            N(func_80241540_801DC0)(script, npcAISettings, territoryPtr);
            break;
        case 4:
            N(func_802416FC_801F7C)(script, npcAISettings, territoryPtr);
            break;
        case 10:
            dup_NpcJumpFunc2(script, npcAISettings, territoryPtr);
        case 11:
            dup_NpcJumpFunc(script, npcAISettings, territoryPtr);
            break;
        case 12:
            dup_UnkNpcAIFunc13(script, npcAISettings, territoryPtr);
        case 13:
            N(func_802419CC_80224C)(script, npcAISettings, territoryPtr);
            break;
        case 14:
            dup_UnkNpcDurationFlagFunc(script, npcAISettings, territoryPtr);
            break;
        case 15:
            N(func_80241B54_8023D4)(script, npcAISettings, territoryPtr);
            break;
        case 99:
            func_8004A73C(script);
    }
    return ApiStatus_BLOCK;
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80241F10_802790);
/*
ApiStatus N(func_80241F10_802790)(ScriptInstance* script, s32 isInitialCall) {
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

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_8024204C_8028CC);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80242270_802AF0);

#include "world/common/GetNpcUnsafeOwner2.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_802422DC_802B5C);

#include "world/common/UnkAlphaFunc.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80242488_802D08);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_802425FC_802E7C);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80242680_802F00);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80242898_803118);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_8024294C_8031CC);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80242980_803200);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80242A00_803280);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80242A18_803298);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80242A34_8032B4);

#include "world/common/GetGameStatus75.inc.c"

#include "world/common/SetCamVfov.inc.c"

#include "world/common/GetCamVfov.inc.c"

#include "world/common/UnkCameraFunc.inc.c"

#include "world/common/UnkRotatePlayer.inc.c"

#include "world/common/UnkPartnerFuncs.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80242F08_803788);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80242F74_8037F4);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80242FA4_803824);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80243380_803C00);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80243494_803D14);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80243500_803D80);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_802435C0_803E40);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80243680_803F00);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80243740_803FC0);

#include "world/common/Call800E9894.inc.c"

#include "world/common/Call800E98C4SyncStatusMenu.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", pause_tutorial_draw_contents_804074);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80243870_8040F0);

#include "world/common/AwaitScriptComplete.inc.c"

#include "world/common/PartnerToggleAbilityScript.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_8024396C_8041EC);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_802439C0_804240);

#include "world/common/GetPartnerCall800EB168.inc.c"

ApiStatus func_80243AA0_804320(ScriptInstance* script, s32 isInitialCall) {
    return ApiStatus_DONE2;
}

#include "world/common/GetNpcCollisionHeight.inc.c"

#include "world/common/AddPlayerHandsOffset.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80243CD4_804554);
/*
ApiStatus N(func_80243CD4_804554)(ScriptInstance* script, s32 isInitialCall) {
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

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80243D28_8045A8);
/*
ApiStatus N(func_80243D28_8045A8)(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    D_80241CD0_BE0A60 = get_variable(script, *args);
    D_80241CCC_BE0A5C = 1;
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80243D60_8045E0);

#include "world/common/SetManyVars.inc.c"

#include "world/common/UnkYawFunc.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80244078_8048F8);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_802440BC_80493C);

#include "world/common/GetPlayerCoins.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_802440FC_80497C);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_802441EC_804A6C);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80244308_804B88);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_802443E0_804C60);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_802446AC_804F2C);

#include "world/common/UnkPositionFunc.inc.c"

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_802447E0_805060);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80244848_8050C8);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_802448A0_805120);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80244984_805204);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_802449F8_805278);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", pause_tabs_draw_stats_805418);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", pause_tabs_draw_badges_805540);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80244D68_8055E8);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80244E10_805690);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80244E90_805710);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80244F5C_8057DC);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80245018_805898);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80245028_8058A8);

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_8024522C_805AAC);

ApiStatus func_80245440_805CC0(ScriptInstance* script, s32 isInitialCall) {
    if (gPlayerData.currentPartner == script->varTable[10]) {
        script->varTable[1] = 0;
        return ApiStatus_DONE2;
    }

    func_800EB168(script->varTable[10]);
    script->varTable[1] = 1;
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "world/area_mac/mac_01/8017D0", func_80245488_805D08);

void func_802454B4_805D34(void) {
    gDPSetCombineLERP(gMasterGfxPos++, 0, 0, 0, 1, SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, SHADE, 0, PRIMITIVE, 0);
    gDPSetPrimColor(gMasterGfxPos++, 0, 0, 0, 0, 0, D_80258407_818C87);
}

ApiStatus func_80245504_805D84(ScriptInstance* script, s32 isInitialCall) {
    set_partner_tether_distance(20.0f);
    return ApiStatus_DONE2;
}

ApiStatus func_8024552C_805DAC(ScriptInstance* script, s32 isInitialCall) {
    reset_partner_tether_distance();
    return ApiStatus_DONE2;
}
