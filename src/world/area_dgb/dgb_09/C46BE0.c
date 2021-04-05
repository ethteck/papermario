#include "dgb_09.h"

#include "world/common/UnkNpcAIFunc6.inc.c"

#include "world/common/UnkNpcAIFunc7.inc.c"

#include "world/common/UnkNpcAIFunc8.inc.c"

#include "world/common/UnkNpcAIFunc5.inc.c"

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80240208_C46DE8);
/*
s32 N(func_80240208_C46DE8)(ScriptInstance *script) {
    PlayerStatus** playerStatus = &gPlayerStatusPtr;
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);
    Camera* camera = CAM2(D_8009A634);
    Enemy* enemy2 = get_enemy(enemy->npcID + 1);
    f32 phi_f20;
    s32 ret = TRUE;

    if (dist2D(npc->pos.x, npc->pos.z, (*playerStatus)->position.x, (*playerStatus)->position.z) > enemy2->varTable[2]) {
        ret = FALSE;
    }

    if (clamp_angle(get_clamped_angle_diff(camera->currentYaw, npc->yaw)) < 180.0) {
        phi_f20 = 90.0f;
    } else {
        phi_f20 = 270.0f;
    }

    if (fabsf(get_clamped_angle_diff(phi_f20, atan2(npc->pos.x, npc->pos.z, (*playerStatus)->position.x, (*playerStatus)->position.z))) > enemy2->varTable[3]) {
        ret = FALSE;
    }

    if ((2.0 * npc->collisionHeight) <= fabsf(npc->pos.y - (*playerStatus)->position.y)) {
        ret = FALSE;
    }

    if (D_8010EBB0.unk_03 == 9) {
        ret = FALSE;
    }

    if (D_8010EBB0.unk_03 == 7) {
        ret = FALSE;
    }

    return ret;
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", update_starpoints_display_C46F9C);
/*
ApiStatus N(update_starpoints_display_C46F9C)(ScriptInstance *script, s32 isInitialCall) {
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);
    Enemy* enemy2;
    Npc* npc2;
    f32 posX, posZ;
    s32 func;

    if (isInitialCall || (enemy->unk_B0 & 4)) {
        script->functionTemp[0].s = 0;
        npc->duration = 0;
        npc->flags |= 0x102;
        enemy->flags |= 0x1F300000;
        npc->pos.x = 0.0f;
        npc->pos.y = -1000.0f;
        npc->pos.z = 0.0f;
        if (enemy->unk_B0 & 4) {
            enemy->unk_B0 &= ~4;
        }
    }

    func = script->functionTemp[0].s;
    switch (func) {
        case 0:
            enemy2 = get_enemy(enemy->npcID - 1);
            npc2 = get_npc_unsafe(enemy2->npcID);
            enemy->unk_07 = 1;
            if (enemy2->varTable[0] == 3) {
                if (enemy->varTable[15] != 0) {
                    func_800494C0(npc2, enemy->varTable[15], 0);
                }
                posX = npc2->pos.x;
                posZ = npc2->pos.z;
                add_vec2D_polar(&posX, &posZ, enemy->varTable[1], 270.0f - npc2->unk_34);
                
                npc->pos.x = posX;
                enemy->unk_10.x = npc->pos.x;

                npc->pos.y = npc2->pos.y + enemy->varTable[0];
                enemy->unk_10.y = npc->pos.y;
                
                npc->pos.z = posZ;
                enemy->unk_10.z = npc->pos.z;
                
                npc->yaw = atan2(npc->pos.x, npc->pos.z, gPlayerStatusPtr->position.x, gPlayerStatusPtr->position.z);
                enemy->flags &= 0xE0EFFFFF;
                npc->duration = 0;
                script->functionTemp[0].s = 1;
            }
            break;

        case 1:
            enemy2 = get_enemy(enemy->npcID - 1);
            get_npc_unsafe(enemy2->npcID);
            npc->duration++;
            if (npc->duration >= enemy->varTable[4]) {
                enemy->unk_07 = 0;
            }
            if (enemy2->varTable[0] == 4) {
                enemy->flags |= 0x1F100000;
                npc->pos.x = 0.0f;
                npc->pos.y = -1000.0f;
                npc->pos.z = 0.0f;
                enemy->unk_07 = func;
                script->functionTemp[0].s = 0;
            }
            break; 
    }

    return ApiStatus_BLOCK;
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_8024061C_C471FC);

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_802408D0_C474B0);
/*
void N(func_802408D0_C474B0)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);

    if (npc->duration > 0) {
        npc->duration--;
    }

    if (npc->duration == 1) {
        npc->currentAnim = enemy->animList[12];
    } else if (npc->duration <= 0) {
        npc->currentAnim = enemy->animList[10];
        npc->duration = 0;
        script->functionTemp[0].s = 1;
    }
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80240958_C47538);
/*
void N(func_80240958_C47538)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);
    PlayerData* playerData = get_player_data();
    s32 phi_s2 = FALSE;
    s32 var;
    f32 posX, posZ;

    if (func_800490B4(territory, enemy, 80.0f, 0.0f, 0)) {
        if ((gPlayerStatusPtr->actionState ==  2) || (gPlayerStatusPtr->actionState == 26) || 
            (gPlayerStatusPtr->actionState ==  3) || (gPlayerStatusPtr->actionState == 14) || 
            (gPlayerStatusPtr->actionState == 16) || (gPlayerStatusPtr->actionState == 11) || 
            (gPlayerStatusPtr->actionState == 10) || (gPlayerStatusPtr->actionState == 18) || 
            (gPlayerStatusPtr->actionState == 19) || (gPlayerStatusPtr->actionState == 37)) {
            phi_s2 = TRUE;
        }

        if (playerData->currentPartner == 2) {
            if (D_8010EBB0.unk_00 == playerData->currentPartner) {
                phi_s2 = TRUE;
            }
        }
    }

    if (((playerData->currentPartner == 1) && (D_8010EBB0.unk_00 != 0)) || 
        ((playerData->currentPartner == 3) && (D_8010EBB0.unk_00 == 2))) {
        posX = npc->pos.x;
        posZ = npc->pos.z;
        add_vec2D_polar(&posX, &posZ, 0.0f, npc->yaw);
        if (dist2D(posX, posZ, wPartnerNpc->pos.x, wPartnerNpc->pos.z) <= 80.0f) {
            phi_s2 = TRUE;
        }
    }

    if (phi_s2) {
        func_800494C0(npc, 0xB000000E, 0);
        npc->currentAnim = enemy->animList[11];
        npc->duration = 10;
        fx_emote(0, npc, 0.0f, npc->collisionHeight, 1.0f, 2.0f, -20.0f, 15, &var);
        func_800494C0(npc, 0x2F4, 0x200000);
        script->functionTemp[0].s = 2;
    }

    npc->duration++;
    if (npc->duration == 27) {
        func_800494C0(npc, 0xB000000C, 0);
    } else if (npc->duration == 57) {
        func_800494C0(npc, 0xB000000D, 0);
    } else if (npc->duration == 59) {
        npc->currentAnim = enemy->animList[12];
    } else if (npc->duration == 60) {
        npc->currentAnim = enemy->animList[10];
        npc->duration = 0;
    }
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80240C10_C477F0);
/*
void N(func_80240C10_C477F0)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);

    npc->duration--;
    if (npc->duration <= 0) {
        npc->duration = 1;
        enemy->varTable[7] = 40;
        script->functionTemp[0].s = 3;
    }
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80240C74_C47854);
/*
void N(func_80240C74_C47854)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);

    npc->yaw = clamp_angle((npc->yaw + rand_int(180)) - 90.0f);
    npc->currentAnim = enemy->animList[0];
    script->functionTemp[1].s = (rand_int(1000) % 2) + 2;
    script->functionTemp[0].s = 4;
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80240D1C_C478FC);
/*
void N(func_80240D1C_C478FC)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);
    s32 var;

    if (func_800490B4(territory, enemy, aiSettings->chaseRadius, aiSettings->unk_28.f, 0)) {
        npc->yaw = atan2(npc->pos.x, npc->pos.z, gPlayerStatusPtr->position.x, gPlayerStatusPtr->position.z);
        script->functionTemp[0].s = 12;
        return;
    }

    npc->duration--;
    if (npc->duration <= 0) {
        script->functionTemp[1].s--;
        if (script->functionTemp[1].s > 0) {
            npc->yaw = clamp_angle(npc->yaw + 180.0f);
            npc->duration = aiSettings->waitTime / 2 + rand_int(aiSettings->waitTime / 2 + 1);
            return;
        }

        var = enemy->varTable[7];
        if (var == 40) {
            npc->duration = 20;
            script->functionTemp[0].s = var;
        } else if (var == 50) {
            npc->duration = 25;
            script->functionTemp[0].s = var;
        }
    }
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80240E54_C47A34);
/*
void N(func_80240E54_C47A34)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
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

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80240F00_C47AE0);
/*
void N(func_80240F00_C47AE0)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);
    f32 var;

    if (func_800490B4(territory, enemy, aiSettings->chaseRadius, aiSettings->unk_28.f, 0)) {
        npc->yaw = atan2(npc->pos.x, npc->pos.z, gPlayerStatusPtr->position.x, gPlayerStatusPtr->position.z);
        script->functionTemp[0].s = 12;
    } else if (dist2D(npc->pos.x, npc->pos.z, enemy->territory->wander.point.x, enemy->territory->wander.point.z) <= npc->moveSpeed) {
        npc->currentAnim = enemy->animList[0];
        npc->duration = 15;
        enemy->varTable[7] = 50;
        script->functionTemp[0].s = 3;
    } else if (npc->unk_8C == 0) {
        var = npc->yaw;
        func_8004A784(npc, 5.0f, &var, 0, 0, 0);
        npc->yaw = var;
        npc->yaw = atan2(npc->pos.x, npc->pos.z, enemy->territory->wander.point.x, enemy->territory->wander.point.z);
        npc_move_heading(npc, npc->moveSpeed, npc->yaw);
    }
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80241078_C47C58);
/*
void N(func_80241078_C47C58)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc *npc = get_npc_unsafe(enemy->npcID);

    if (npc->unk_8C == 0) {
        npc->duration--;
        if (npc->duration <= 0) {
            npc->duration = 0;
            script->functionTemp[0].s = 0;
        }
    }
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_802410D4_C47CB4);

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80241424_C48004);
/*
void N(func_80241424_C48004)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
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

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_802415D4_C481B4);

#include "world/common/UnkNpcAIFunc1.inc.c"

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80241CBC_C4889C);
/*
void N(func_80241CBC_C4889C)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
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
        if ((gPlayerStatusPtr->position.y < ((npc->pos.y + npc->collisionHeight) + 10.0)) && func_800490B4(territory, enemy, aiSettings->chaseRadius, aiSettings->unk_28.f, 1)) {
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

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80242078_C48C58);
/*
void N(func_80242078_C48C58)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
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

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_8024227C_C48E5C);
/*
void N(func_8024227C_C48E5C)(ScriptInstance* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
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
            if (aiSettings->unk_1C.s < fabsf(temp_f0_2)) {
                phi_f20 = npc->yaw;
                if (temp_f0_2 < 0.0f) {
                    phi_f20 += -aiSettings->unk_1C.s;
                } else {
                    phi_f20 += aiSettings->unk_1C.s;
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

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_8024260C_C491EC);
/*
void N(func_8024260C_C491EC)(Npc *npc, Enemy *enemy, ScriptInstance *script, NpcAISettings *aiSettings) {
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

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80242730_C49310);

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_8024291C_C494FC);
/*
void N(func_8024291C_C494FC)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);
    f32 temp_f0;
    f32 phi_f20;

    npc->duration--;
    if (npc->duration <= 0) {
        npc->flags &= 0xFFDFFFFF;
        npc->duration = aiSettings->unk_20 / 2 + rand_int(aiSettings->unk_20 / 2 + 1);
        npc->currentAnim = enemy->animList[8];
        npc->moveSpeed = aiSettings->chaseSpeed;
        phi_f20 = atan2(npc->pos.x, npc->pos.z, gPlayerStatusPtr->position.x, gPlayerStatusPtr->position.z);
        temp_f0 = get_clamped_angle_diff(npc->yaw, phi_f20);
        if (aiSettings->unk_1C.s < fabsf(temp_f0)) {
            phi_f20 = npc->yaw;
            if (temp_f0 < 0.0f) {
                phi_f20 += -aiSettings->unk_1C.s;
            } else {
                phi_f20 += aiSettings->unk_1C.s;
            }
        }
        npc->yaw = clamp_angle(phi_f20);
        script->functionTemp[0].s = 13;
    }
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80242A74_C49654);
/*
void N(func_80242A74_C49654)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);

    if (func_800490B4(territory, enemy, aiSettings->chaseRadius, aiSettings->unk_28.f, 1)) {
        npc_move_heading(npc, npc->moveSpeed, npc->yaw);
        if (dist2D(npc->pos.x, npc->pos.z, gPlayerStatusPtr->position.x, gPlayerStatusPtr->position.z) <= (npc->moveSpeed * 2.5)) {
            npc->duration = 0;
            script->functionTemp[0].s = 14;
        } else {
            npc->duration--;
            if (npc->duration <= 0) {
                npc->flags |= 0x200000;
                script->functionTemp[0].s = 12;
            }
        }
    } else {
        script->functionTemp[0].s = 16;
    }

}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80242B78_C49758);

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80242C1C_C497FC);
/*
void N(func_80242C1C_C497FC)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);
    f32 posX, posY, posZ, posW;
    s32 temp_f8_2;

    sfx_adjust_env_sound_pos(0x80000011, 2, npc->pos.x, npc->pos.y, npc->pos.z);
    if (!func_800490B4(territory, enemy, aiSettings->chaseRadius, aiSettings->unk_28.f, 1)) {
        enemy->varTable[0] &= ~0x100;
        npc->rotation.y = 0.0f;
        npc->flags &= 0xFFDFFFFF;
        script->functionTemp[0].s = 16;
    } else {
        PlayerStatus** playerStatus = &gPlayerStatusPtr;

        npc->pos.x = (*playerStatus)->position.x;
        npc->pos.z = (*playerStatus)->position.z + 2.0f;
        npc->rotation.y += 25.0f;
        if (npc->rotation.y > 360.0) {
            npc->rotation.y -= 360.0;
        }
        temp_f8_2 = 255.0f - (cosine((s32)npc->rotation.y % 180) * 56.0f);
        func_802DE894(npc->unk_24, 6, temp_f8_2, temp_f8_2, temp_f8_2, 255, 0);
        
        posX = (*playerStatus)->position.x;
        posY = (*playerStatus)->position.y;
        posZ = (*playerStatus)->position.z;
        posW = 1000.0f;
        func_800DCB7C(npc->unk_80, &posX, &posY, &posZ, &posW);
        if (fabsf(npc->pos.y - posY) > 24.0) {
            npc->pos.y -= 1.8;
        } else {
            npc->rotation.y = 0.0f;
            npc->flags &= 0xFFDFFFFF;
            if (D_8010EBB0.unk_03 != 9) {
                disable_player_input();
                func_800EF628();
                npc->duration = 0;
                script->functionTemp[0].s = 20;
            } else {
                script->functionTemp[0].s = 16;
            }
        }
    }
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80242EB8_C49A98);
/*
void N(func_80242EB8_C49A98)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);

    enemy->varTable[0] &= ~0x100;
    func_802DE894(npc->unk_24, 0, 0, 0, 0, 0, 0);
    if (enemy->varTable[0] & 0x1000) {
        sfx_stop_sound(0x80000011);
        enemy->varTable[0] &= ~0x1000;
    }
    npc->currentAnim = enemy->animList[9];
    npc->duration = 20;
    script->functionTemp[0].s = 17;
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80242F70_C49B50);
/*
void N(func_80242F70_C49B50)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);
    f32 posX, posY, posZ, posW;
    f32 tmp = enemy->varTable[3];
    f32 temp_f20 = tmp / 100.0;
    s32 var;

    npc->pos.y += 2.5;
    posX = npc->pos.x;
    posY = npc->pos.y;
    posZ = npc->pos.z;
    posW = 1000.0f;
    func_800DCB7C(npc->unk_80, &posX, &posY, &posZ, &posW);
    if (!(npc->pos.y < (posY + temp_f20))) {
        npc->yaw = atan2(npc->pos.x, npc->pos.z, enemy->territory->wander.point.x, enemy->territory->wander.point.z);
        npc->pos.y = posY + temp_f20;
        fx_emote(2, npc, 0.0f, npc->collisionHeight, 1.0f, 2.0f, -20.0f, 10, &var);
        npc->duration = 10;
        script->functionTemp[0].s = 18;
    }
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_802430F0_C49CD0);
/*
void N(func_802430F0_C49CD0)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);

    npc->duration--;
    if (npc->duration <= 0) {
        script->functionTemp[0].s = 30;
    }
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80243138_C49D18);
/*
void N(func_80243138_C49D18)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);

    npc->duration++;
    if (npc->duration >= 3) {
        if (D_8010EBB0.unk_03 != 9) {
            npc->duration = 0;
            script->functionTemp[0].s = 100;
        } else {
            enable_player_input();
            func_800EF600();
            script->functionTemp[0].s = 16;
        }
    }
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_802431B8_C49D98);
/*
void N(func_802431B8_C49D98)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);

    enemy->varTable[0] &= ~0x100;
    npc->flags &= 0xFFDFFFFF;
    npc->moveSpeed = 2.0 * aiSettings->moveSpeed;
    enemy->varTable[2] = 0;
    enemy->varTable[4] = npc->pos.y * 100.0;
    script->functionTemp[1].s = 0x1E;
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80243260_C49E40);
/*
void N(func_80243260_C49E40)(ScriptInstance *script, NpcAISettings *aiSettings, EnemyTerritoryThing *territory) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);
    f32 posX = npc->pos.x;
    f32 posY = npc->pos.y;
    f32 posZ = npc->pos.z;
    f32 posW = 1000.0f;
    f32 temp_f26 = (f32)enemy->varTable[3] / 100.0;
    f32 temp_f24 = temp_f26 + (f32)((f32)enemy->varTable[7] / 100.0);
    f32 temp_f22 = (f32)enemy->varTable[1] / 100.0;
    f32 temp_f20 = sin_deg(enemy->varTable[2]);
    s32 var;
    s32 var2;

    if (func_800DCB7C(npc->unk_80, &posX, &posY, &posZ, &posW)) {
        npc->pos.y = posY + temp_f26 + (temp_f20 * temp_f22);
    } else {
        npc->pos.y = temp_f24 + (temp_f20 * temp_f22);
    }

    enemy->varTable[2] = clamp_angle(enemy->varTable[2] + 12);
    if (script->functionTemp[1].s <= 0) {
        script->functionTemp[1].s = aiSettings->unk_14;
        if (func_800490B4(territory, enemy, aiSettings->alertRadius * 0.5, aiSettings->unk_10.f * 0.5, 0)) {
            fx_emote(0, npc, 0.0f, npc->collisionHeight, 1.0f, 2.0f, -20.0f, 12, &var);
            func_800494C0(npc, 0x2F4, 0x200000);
            npc->moveToPos.y = npc->pos.y;
            script->functionTemp[0].s = 12;
            return;
        }
    }

    script->functionTemp[1].s--;
    if (npc->unk_8C == 0) {
        npc->yaw = atan2(npc->pos.x, npc->pos.z, enemy->territory->wander.point.x, enemy->territory->wander.point.z);
        npc_move_heading(npc, npc->moveSpeed, npc->yaw);
        posW = dist2D(npc->pos.x, npc->pos.z, enemy->territory->wander.point.x, enemy->territory->wander.point.z);
        if (posW <= (2.0f * npc->moveSpeed)) {
            script->functionTemp[1].s = (rand_int(1000) % 3) + 2;
            script->functionTemp[0].s = 2;
        }
    }
}
*/

INCLUDE_ASM(s32, "world/area_dgb/dgb_09/C46BE0", func_80243578_C4A158);