#include "dgb_04.h"

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80240000_C36530);
/*
void N(func_80240000_C36530)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
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

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_802401B0_C366E0);

#include "world/common/UnkNpcAIFunc1.inc.c"

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80240898_C36DC8);
/*
void N(func_80240898_C36DC8)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);
    f32 posX, posY, posZ, posW;
    f32 temp_f24 = (f32)enemy->varTable[3] / 100.0;
    f32 temp_f26 = temp_f24 + (f32)((f32)enemy->varTable[7] / 100.0);
    s32 var;

    if (npc->duration > 0) {
        npc->duration--;
    }

    if (enemy->varTable[1] > 0) {
        f32 temp_f22 = (f32)enemy->varTable[1] / 100.0;
        f32 sin_degrees = sin_deg(enemy->varTable[2]);
        s32 phi_v0;

        if (npc->flags & 8) {
            phi_v0 = FALSE;
        } else {
            posX = npc->pos.x;
            posY = npc->pos.y;
            posZ = npc->pos.z;
            posW = 1000.0f;
            phi_v0 = func_800DCB7C(npc->unk_80, &posX, &posY, &posZ, &posW);
        }

        if (phi_v0) {
            npc->pos.y = posY + temp_f24 + (sin_degrees * temp_f22);
        } else {
            npc->pos.y = temp_f26 + (sin_degrees * temp_f22);
        }

        enemy->varTable[2] = clamp_angle(enemy->varTable[2] + 10);
    }

    if (enemy->varTable[9] <= 0) {
        if ((gPlayerStatusPtr->position.y < ((npc->pos.y + npc->collisionHeight) + 10.0)) && func_800490B4(shape, enemy, aiSettings->chaseRadius, aiSettings->unk_28.s, 1)) {
            fx_emote(0, npc, 0.0f, npc->collisionHeight, 1.0f, 2.0f, -20.0f, 12, &var);
            npc->moveToPos.y = npc->pos.y;
            func_800494C0(npc, 0x2F4, 0x200000);
            if (enemy->npcSettings->unk_2A & 1) {
                script->functionTemp[0].s = 10;
            } else {
                script->functionTemp[0].s = 12;
            }
            return;
        }
    } else {
        enemy->varTable[9]--;
    }

    if ((npc->unk_8C == 0) && (npc->duration <= 0)) {
        script->functionTemp[1].s--;
        if (script->functionTemp[1].s > 0) {
            if (!(enemy->npcSettings->unk_2A & 0x10)) {
                npc->yaw = clamp_angle(npc->yaw + 180.0f);
            }
            npc->duration = (rand_int(1000) % 11) + 5;
        } else {
            script->functionTemp[0].s = 0;
        }
    }
}
*/

#include "world/common/UnkNpcAIFunc2.inc.c"

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80240C54_C37184);
/*
void N(func_80240C54_C37184)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
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

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80240E58_C37388);
/*
void N(func_80240E58_C37388)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);
    f32 posX, posY, posZ, posW;
    f32 temp_f0_2;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f2;
    s32 phi_v0;
    f32 phi_f20;
    f32 a = enemy->varTable[3];
    f32 b = enemy->varTable[7];

    npc->jumpVelocity += npc->jumpScale;
    temp_f20 = a / 100.0;
    temp_f22 = b / 100.0;
    npc_move_heading(npc, npc->moveSpeed, npc->yaw);

    if (npc->jumpVelocity >= 0.0) {
        npc->pos.y += npc->jumpVelocity;
        npc->currentAnim = enemy->animList[9];
        enemy->unk_07 = 0;
        if (!(npc->flags & 8)) {
            posX = npc->pos.x;
            posY = npc->pos.y; 
            posZ = npc->pos.z; 
            posW = 1000.0f;
            phi_v0 = func_800DCB7C(npc->unk_80, &posX, &posY, &posZ, &posW);
        } else {
            phi_v0 = FALSE;
        }
        if (phi_v0) {
            temp_f2 = posY + temp_f20;
            if (temp_f2 <= npc->pos.y) {
                npc->pos.y = temp_f2;
                script->functionTemp[0].s = 0;
            }
        } else if (npc->pos.y >= npc->moveToPos.y) {
            script->functionTemp[0].s = 0;
        }
    } else if (npc->jumpVelocity < 0.0) {
        npc->duration++;
        if (npc->duration >= aiSettings->unk_20) {
            npc->duration = 0;
            phi_f20 = atan2(npc->pos.x, npc->pos.z, gPlayerStatusPtr->position.x, gPlayerStatusPtr->position.z);
            temp_f0_2 = get_clamped_angle_diff(npc->yaw, phi_f20);
            if (aiSettings->unk_1C < fabsf(temp_f0_2)) {
                phi_f20 = npc->yaw;
                if (temp_f0_2 < 0.0f) {
                    phi_f20 += -aiSettings->unk_1C;
                } else {
                    phi_f20 += aiSettings->unk_1C;
                }
            }
            npc->yaw = clamp_angle(phi_f20);
        }

        if (npc->flags & 8) {
            if (npc->pos.y + npc->jumpVelocity < temp_f22) {
                npc->pos.y = temp_f22;
                npc->jumpVelocity = 0.0f;
            } else {
                npc->pos.y += npc->jumpVelocity;
            }
            return;
        }

        posX = npc->pos.x;
        posY = npc->pos.y + npc->collisionHeight; 
        posZ = npc->pos.z; 
        posW = (fabsf(npc->jumpVelocity) + npc->collisionHeight) + 10.0;
        if (func_800DCB7C(npc->unk_80, &posX, &posY, &posZ, &posW)) {
            if (posW <= (npc->collisionHeight + fabsf(npc->jumpVelocity))) {
                npc->jumpVelocity = 0.0f;
                npc->pos.y = posY;
            } else {
                npc->pos.y += npc->jumpVelocity;
            }
            return;
        } else if (fabsf(npc->jumpVelocity) < ((npc->pos.y - temp_f22) + npc->collisionHeight)) {
            npc->pos.y = npc->pos.y + npc->jumpVelocity;
            return;
        }
        npc->jumpVelocity = 0.0f;
    }
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_802411E8_C37718);
/*
void N(func_802411E8_C37718)(Npc *npc, Enemy *enemy, ScriptInstance *script, NpcAISettings *aiSettings) {
    f32 posX, posY, posZ, posW;
    s32 temp_a1;
    s32 temp_v1;
    s32 phi_v0;

    script->functionTemp[0].s = 0;
    npc->duration = 0;
    temp_v1 = npc->flags & ~0x200;
    npc->flags = (npc->flags & ~0x200) | 0x800;
    if (enemy->territory->wander.isFlying) {
        npc->flags = temp_v1 | 0x808;
    } else {
        npc->flags = npc->flags & ~8;
    }

    posX = npc->pos.x;
    posY = npc->pos.y;
    posZ = npc->pos.z;
    posW = 1000.0f;
    func_800DCB7C(npc->unk_80, &posX, &posY, &posZ, &posW);
    enemy->varTable[2] = 0;
    enemy->varTable[9] = 0;
    enemy->varTable[3] = ((posW * 100.0) + 0.5);
    enemy->varTable[7] = ((posY * 100.0) + 0.5);
    script->functionTemp[1].s = aiSettings->unk_14;
    enemy->unk_B0 |= 0x10;
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_8024130C_C3783C);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_802414F8_C37A28);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80241650_C37B80);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80241754_C37C84);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_802417F8_C37D28);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80241A94_C37FC4);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80241B4C_C3807C);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80241CCC_C381FC);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80241D14_C38244);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80241D94_C382C4);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80241E3C_C3836C);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80242154_C38684);

#include "world/common/SetOverrideFlags_40.inc.c"

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_802423EC_C3891C);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_8024240C_C3893C);
/*
s) {
    func_800EB168(get_variable(script, *script->ptrReadPos));
    return 2;
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80242438_C38968);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_802424A4_C389D4);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_802424F0_C38A20);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_8024259C_C38ACC);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_802427EC_C38D1C);
/*
s) {
    func_800EB168(get_variable(script, *script->ptrReadPos));
    return 2;
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80242818_C38D48);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80242850_C38D80);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_802428E0_C38E10);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80242914_C38E44);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80242978_C38EA8);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_802429D0_C38F00);

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_80242F08_C39438);

#include "world/common/UnkPartnerPosFuncs.inc.c"

INCLUDE_ASM(s32, "world/area_dgb/dgb_04/C36530", func_802430D8_C39608);
