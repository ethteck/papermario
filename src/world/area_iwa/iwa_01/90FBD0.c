#include "iwa_01.h"

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80240520_90FBD0);

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80240710_90FDC0);

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80240854_90FF04);

#include "world/common/UnkSetDurationFunc.inc.c"

#include "world/common/UnkNpcAIFunc9.inc.c"

#include "world/common/UnkDurationCheck.inc.c"

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80240A7C_91012C);

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80240FB8_910668);

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80241414_910AC4);

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_802415E0_910C90);

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_802416F0_910DA0);

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_8024192C_910FDC);

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_802419C0_911070);

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80241A4C_9110FC);

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80241B74_911224);

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80241C78_911328);

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80241CF0_9113A0);

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80241D70_911420);

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80241F6C_91161C);

#include "world/common/GetEncounterEnemyIsOwner.inc.c"

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_802422C4_911974);

#include "world/common/UnkNpcAIFunc18.inc.c"

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80242498_911B48);
/*
void N(func_80242498_911B48)(ScriptInstance* script, s32 isInitialCall) {
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);
    s32 var;

    if (script->functionTemp[1].s <= 0) {
        script->functionTemp[1].s = aiSettings->unk_14;
        if (func_800490B4(shape, enemy, aiSettings->alertRadius * 0.85, aiSettings->unk_10.s, 0)) {
            npc->currentAnim = enemy->animList[9];
            fx_emote(0, npc, 0.0f, npc->collisionHeight, 1.0f, 2.0f, -20.0f, 15, &var);
            func_800494C0(npc, 0x2F4, 0x200000);
            npc->duration = 12;
            script->functionTemp[0].s = 2;
        }
    }

    script->functionTemp[1].s--;
}
*/

#include "world/common/UnkNpcAIFunc21.inc.c"

#include "world/common/UnkNpcAIFunc20.inc.c"

#include "world/common/UnkNpcAIFunc22.inc.c"

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80242794_911E44);
/*
void N(func_80242794_911E44)(ScriptInstance* script, s32 isInitialCall) {
    PlayerStatus** playerStatus;
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);
    s32 var;

    if (func_800490B4(shape, enemy, aiSettings->chaseRadius, aiSettings->unk_28.s, 0)) {
        playerStatus = &gPlayerStatusPtr;
        npc->yaw = atan2(npc->pos.x, npc->pos.z, (*playerStatus)->position.x, (*playerStatus)->position.z);
        script->functionTemp[0].s = 12;
    } else {
        npc->duration--;
        if (npc->duration <= 0) {
            script->functionTemp[1].s--;
            if (script->functionTemp[1].s > 0) {
                npc->yaw = clamp_angle(npc->yaw + 180.0f);
                npc->duration = aiSettings->waitTime / 2 + rand_int(aiSettings->waitTime / 2 + 1);
            } else {
                fx_emote(2, npc, 0.0f, npc->collisionHeight, 1.0f, 2.0f, -20.0f, 12, &var);
                npc->duration = 15;
                script->functionTemp[0].s = 0x28;
            }
        }
    }
}
*/

#include "world/common/UnkNpcAIFunc16.inc.c"

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80242958_912008);
/*
void N(func_80242958_912008)(ScriptInstance* script, s32 isInitialCall) {
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);
    PlayerStatus** playerStatus = &gPlayerStatusPtr;

    npc->yaw = atan2(npc->pos.x, npc->pos.z, (*playerStatus)->position.x, (*playerStatus)->position.z);
    if (npc->duration % 3 == 0) {
        fx_walk_normal(2, npc->pos.x, npc->pos.y, npc->pos.z + 2.0f, 0, 0);
    }

    npc->duration--;
    if (npc->duration <= 0) {
        playerStatus = &gPlayerStatusPtr;

        enemy->unk_10.x = npc->pos.x;
        enemy->unk_10.y = npc->pos.y;
        enemy->unk_10.z = npc->pos.z;
        enemy->unk_07 = 1;
        npc->moveSpeed = aiSettings->chaseSpeed;
        npc->duration = dist2D(npc->pos.x, npc->pos.z, (*playerStatus)->position.x, (*playerStatus)->position.z) / npc->moveSpeed + 0.9;
        if (npc->duration < 15) {
            npc->duration = 15;
        }
        script->functionTemp[0].s = 0x16;
    }
}
*/

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80242AF8_9121A8);
/*
void N(func_80242AF8_9121A8)(ScriptInstance* script, s32 isInitialCall) {
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);
    f32 posX, posY, posZ;
    s32 phi_s1;

    func_8003D660(npc, 1);
    npc_move_heading(npc, npc->moveSpeed, npc->yaw);

    phi_s1 = 0;
    if (is_point_within_region(enemy->territory->wander.unk_30, 
            enemy->territory->wander.detect.x, enemy->territory->wander.detect.z, 
            npc->pos.x, npc->pos.z, enemy->territory->wander.detectSizeX, 
            enemy->territory->wander.detectSizeZ)) {
        phi_s1 = 1;
    }

    posX = npc->pos.x;
    posY = npc->pos.y;
    posZ = npc->pos.z;

    if (func_800DDC44(npc->unk_80, &posX, &posY, &posZ, 
            1.0f, npc->yaw, npc->collisionHeight, npc->collisionRadius)) {
        phi_s1 = 1;
    }

    npc->duration--;
    if (npc->duration <= 0) {
        phi_s1 = 1;
    }
    if (phi_s1) {
        script->functionTemp[0].s = 4;
        enemy->unk_07 = 0;
    }
}
*/

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80242C48_9122F8);
/*
void N(func_80242C48_9122F8)(ScriptInstance* script, s32 isInitialCall) {
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);

    npc->duration--;
    if (npc->duration <= 0) {
        npc->currentAnim = enemy->animList[1];
        if (enemy->territory->wander.moveSpeedOverride < 0) {
            npc->moveSpeed = aiSettings->moveSpeed;
        } else {
            npc->moveSpeed = enemy->territory->wander.moveSpeedOverride / 32767.0;
        }
        script->functionTemp[0].s = 0x29;
    }
}
*/

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80242CF4_9123A4);
/*
void N(func_80242CF4_9123A4)(ScriptInstance* script, s32 isInitialCall) {
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);
    PlayerStatus** playerStatus = &gPlayerStatusPtr;

    if (func_800490B4(shape, enemy, aiSettings->chaseRadius, aiSettings->unk_28.s, 0)) {
        npc->yaw = atan2(npc->pos.x, npc->pos.z, (*playerStatus)->position.x, (*playerStatus)->position.z);
        script->functionTemp[0].s = 12;
    } else if (dist2D(npc->pos.x, npc->pos.z, enemy->territory->wander.point.x, enemy->territory->wander.point.z) <= npc->moveSpeed) {
        npc->duration = 10;
        script->functionTemp[0].s = 50;
    } else if (npc->unk_8C == 0) {
        npc->yaw = atan2(npc->pos.x, npc->pos.z, enemy->territory->wander.point.x, enemy->territory->wander.point.z);
        npc_move_heading(npc, npc->moveSpeed, npc->yaw);
    }
}
*/

#include "world/common/UnkNpcAIFunc19.inc.c"

#include "world/common/UnkNpcAIFunc17.inc.c"

#define NAMESPACE dup_iwa_01
#include "world/common/UnkDurationCheck.inc.c"
#define NAMESPACE iwa_01

INCLUDE_ASM(s32, "world/area_iwa/iwa_01/90FBD0", func_80242F54_912604);
