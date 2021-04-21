#include "pra_01.h"

/////// begin include (reflection.inc.c) /////

#include "world/common/UnkFunc2.inc.c"

#include "world/common/UnkFunc3.inc.c"

enum Reflection {
    REFLECTION_FLOOR_WALL,
    REFLECTION_FLOOR,
    REFLECTION_WALL,
};

extern s16 gCurrentCamID; // cam id

void func_80240128_D4D168(void);
void func_80240500_D4D540(void);
void func_802402F0_D4D330(PlayerStatus* playerStatus);

ApiStatus func_802400EC_D4D12C(ScriptInstance* script, s32 isInitialCall) {
    script->array[0] = (s32) create_dynamic_entity_world(NULL, &func_80240128_D4D168);
    return ApiStatus_DONE2;
}

EntityModel* get_entity_model(s32 idx);

void func_80240128_D4D168(void) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    s32 anim;
    EntityModel* entityModel;
    s32 renderMode = playerStatus->renderMode;
    RenderTask renderTask;
    RenderTask* renderTaskPtr = &renderTask;
    s32 screenX;
    s32 screenY;
    s32 screenZ;

    if (playerStatus->flags & 1) {
        entityModel = get_entity_model(get_shadow_by_index(playerStatus->shadowID)->unk_08);
        entityModel->flags |= 0x200;

        get_screen_coords(gCurrentCamID, playerStatus->position.x, playerStatus->position.y, -playerStatus->position.z,
                          &screenX, &screenY, &screenZ);

        anim = N(UnkFunc2)(playerStatus->trueAnimation);

        if (playerStatus->targetYaw > 135.0f && playerStatus->targetYaw < 225.0f) {
            anim = N(UnkFunc3)(anim);
        }

        // spr_update_player_sprite
        func_802DDA8C(2, anim, 1.0f);

        if (!(playerStatus->flags & 0x20000)) {
            if (playerStatus->alpha1 != D_802D9D70) {
                if (playerStatus->alpha1 < 254) {
                    renderMode = RENDER_MODE_SURFACE_XLU_LAYER1;
                    func_802DDEE4(2, -1, 7, 0, 0, 0, playerStatus->alpha1, 0);
                } else {
                    renderMode = RENDER_MODE_ALPHATEST;
                    func_802DDEE4(2, -1, 0, 0, 0, 0, 0, 0);
                }
            }
            D_802D9D70 = playerStatus->alpha1;
        } else {
            renderMode = RENDER_MODE_SURFACE_XLU_LAYER1;
            D_802D9D70 = 0;
        }

        renderTaskPtr->renderMode = renderMode;
        renderTaskPtr->appendGfxArg = playerStatus;
        renderTaskPtr->appendGfx = func_802402F0_D4D330;
        renderTaskPtr->distance = -screenZ;
        queue_render_task(renderTaskPtr);
    }
}

void func_802402F0_D4D330(PlayerStatus* playerStatus) {
    f32 yaw = -CAM(gCurrentCamID)->currentYaw;
    Matrix4f main;
    Matrix4f translation;
    Matrix4f rotation;
    Matrix4f scale;

    guRotateF(rotation, yaw, 0.0f, -1.0f, 0.0f);
    guRotateF(main, clamp_angle(playerStatus->unk_8C), 0.0f, 0.0f, 1.0f);
    guMtxCatF(rotation, main, main);
    guRotateF(rotation, yaw, 0.0f, 1.0f, 0.0f);
    guMtxCatF(main, rotation, main);
    guRotateF(rotation, playerStatus->spriteFacingAngle, 0.0f, 1.0f, 0.0f);
    guMtxCatF(main, rotation, main);
    guScaleF(scale, SPRITE_WORLD_SCALE, SPRITE_WORLD_SCALE, SPRITE_WORLD_SCALE);
    guMtxCatF(main, scale, main);
    guTranslateF(translation, playerStatus->position.x, playerStatus->position.y, -playerStatus->position.z - 3.0f);
    guMtxCatF(main, translation, main);
    render_sprite(2, 0, 0, NULL, main);
}

ApiStatus func_8024049C_D4D4DC(ScriptInstance* script, s32 isInitialCall) {
    switch (script->varTable[0]) {
        case REFLECTION_FLOOR_WALL:
        case REFLECTION_FLOOR:
            script->array[0] = create_dynamic_entity_world(NULL, &func_80240500_D4D540);
            OVERRIDE_FLAG_SET(0x80);
            break;
        case REFLECTION_WALL:
            break;
    }

    return ApiStatus_DONE2;
}

/*
#new:Script $Script_802415D0
{
    0:  NewArray  00000010 *VarA
   10:  If  *Var1  ==  00000000
   20:      Switch  *Var0
   2C:          Case  ==  00000000
   38:              Call  $Function_802400EC ( )
   44:          Case  ==  00000001
   50:          Case  ==  00000002
   5C:              Call  $Function_802400EC ( )
   68:      EndSwitch
   70:  EndIf
   78:  Call  $Function_8024049C    ( *Var0 )
   88:  Call  $Function_80240D3C    ( *Var0 )
   98:  Return
   A0:  End
}
*/

void func_80240870_D4D8B0(PlayerStatus* playerStatus);
void func_8024068C_D4D6CC(PlayerStatus* playerStatus);

void func_80240500_D4D540(void) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    EntityModel* entityModel;
    s32 renderMode = playerStatus->renderMode;
    RenderTask renderTask;
    RenderTask* renderTaskPtr = &renderTask;
    s32 screenX;
    s32 screenY;
    s32 screenZ;

    if (playerStatus->flags & 1) {
        entityModel = get_entity_model(get_shadow_by_index(playerStatus->shadowID)->unk_08);

        get_screen_coords(gCurrentCamID, playerStatus->position.x, -playerStatus->position.y, playerStatus->position.z,
                          &screenX, &screenY, &screenZ);

        func_802DDA8C(1, playerStatus->trueAnimation, 1.0f);

        if (!(playerStatus->flags & 0x20000)) {
            if (playerStatus->alpha1 != D_802D9D71) {
                if (playerStatus->alpha1 < 254) {
                    renderMode = RENDER_MODE_SURFACE_XLU_LAYER1;
                    func_802DDEE4(1, -1, 7, 0, 0, 0, playerStatus->alpha1, 0);
                } else {
                    renderMode = RENDER_MODE_ALPHATEST;
                    func_802DDEE4(1, -1, 0, 0, 0, 0, 0, 0);
                }
            }
            D_802D9D71 = playerStatus->alpha1;
        } else {
            renderMode = RENDER_MODE_SURFACE_XLU_LAYER1;
            D_802D9D71 = 0;
        }

        renderTaskPtr->renderMode = renderMode;
        renderTaskPtr->appendGfxArg = playerStatus;
        renderTaskPtr->distance = -screenZ;
        renderTaskPtr->appendGfx = !(playerStatus->flags & 0x20000) ? func_8024068C_D4D6CC : func_80240870_D4D8B0;
        queue_render_task(renderTaskPtr);
    }
}

void func_8024068C_D4D6CC(PlayerStatus *playerStatus) {
    f32 yaw = -CAM(gCurrentCamID)->currentYaw;
    Matrix4f main;
    Matrix4f translation;
    Matrix4f rotation;
    Matrix4f scale;
    s32 flags;

    guRotateF(rotation, yaw, 0.0f, -1.0f, 0.0f);
    guRotateF(main, clamp_angle(playerStatus->unk_8C), 0.0f, 0.0f, 1.0f);
    guMtxCatF(rotation, main, main);
    guRotateF(rotation, yaw, 0.0f, 1.0f, 0.0f);
    guMtxCatF(main, rotation, main);
    guRotateF(rotation, playerStatus->spriteFacingAngle, 0.0f, 1.0f, 0.0f);
    guMtxCatF(main, rotation, main);
    guScaleF(scale, SPRITE_WORLD_SCALE, -SPRITE_WORLD_SCALE, SPRITE_WORLD_SCALE);
    guMtxCatF(main, scale, main);
    guTranslateF(translation, playerStatus->position.x, -playerStatus->position.y, playerStatus->position.z);
    guMtxCatF(main, translation, main);

    if (playerStatus->spriteFacingAngle >= 90.0f && playerStatus->spriteFacingAngle < 270.0f) {
        flags = 0x10000001;
    } else {
        flags = 1;
    }

    render_sprite(flags, 0, 0, NULL, main);
}

f32 func_800E5938(s32 lag, s32* x, s32* y, s32* z);

void func_80240870_D4D8B0(PlayerStatus *playerStatus) {
    Matrix4f main;
    Matrix4f translation;
    Matrix4f rotation;
    Matrix4f scale;
    f32 yaw;
    f32 blurAngle;
    s32 tint;
    f32 px;
    f32 py;
    f32 pz;
    s32 x;
    s32 y;
    s32 z;
    s32 i;
    s32 flags;

    for (i = 0; i < 2; i++) {
        yaw = -CAM(gCurrentCamID)->currentYaw;

        if (i == 0) {
            if ((playerStatus->spriteFacingAngle > 90.0f) && (playerStatus->spriteFacingAngle <= 180.0f)) {
                yaw = 180.0f - playerStatus->spriteFacingAngle;
            } else {
                if ((playerStatus->spriteFacingAngle > 180.0f) && (playerStatus->spriteFacingAngle <= 270.0f)) {
                    yaw = playerStatus->spriteFacingAngle - 180.0f;
                } else if ((playerStatus->spriteFacingAngle > 270.0f) && (playerStatus->spriteFacingAngle <= 360.0f)) {
                    yaw = 360.0f - playerStatus->spriteFacingAngle;
                } else {
                    yaw = playerStatus->spriteFacingAngle;
                }
            }

            tint = yaw / 25.0f;
            tint = 255 - (tint * 60);
            if (tint < 100) {
                tint = 100;
            }

            func_802DDEE4(1, -1, 6, tint, tint, tint, 255, 0);

            guRotateF(rotation, yaw, 0.0f, -1.0f, 0.0f);
            guRotateF(main, clamp_angle(playerStatus->unk_8C), 0.0f, 0.0f, 1.0f);
            guMtxCatF(rotation, main, main);
            px = playerStatus->position.x;
            py = playerStatus->position.y;
            pz = playerStatus->position.z;
        } else {
            // Spinning blur animation

            blurAngle = func_800E5938(i, &x, &y, &z);

            if (y == 0x80000000) {
                py = playerStatus->position.y;
            } else {
                py = y;
            }

            px = playerStatus->position.x;
            pz = playerStatus->position.z;
            func_802DDEE4(1, -1, 7, 0, 0, 0, 0x40, 0);
            guRotateF(main, yaw, 0.0f, -1.0f, 0.0f);
            guRotateF(rotation, yaw, 0.0f, -1.0f, 0.0f);
            guRotateF(main, blurAngle, 0.0f, 1.0f, 0.0f);
            guMtxCatF(rotation, main, main);
        }

        guTranslateF(translation, 0.0f, -playerStatus->colliderHeight * 0.5f, 0.0f);
        guMtxCatF(translation, main, main);
        guRotateF(rotation, yaw, 0.0f, 1.0f, 0.0f);
        guMtxCatF(main, rotation, main);
        guRotateF(rotation, playerStatus->spriteFacingAngle, 0.0f, 1.0f, 0.0f);
        guMtxCatF(main, rotation, main);
        guTranslateF(translation, 0.0f, playerStatus->colliderHeight * 0.5f, 0.0f);
        guMtxCatF(main, translation, main);
        guScaleF(scale, SPRITE_WORLD_SCALE, -SPRITE_WORLD_SCALE, SPRITE_WORLD_SCALE);
        guMtxCatF(main, scale, main);
        guTranslateF(translation, px, -py, pz);
        guMtxCatF(main, translation, main);

        if (playerStatus->spriteFacingAngle >= 90.0f && playerStatus->spriteFacingAngle < 270.0f) {
            flags = 0x10000001;
        } else {
            flags = 1;
        }

        render_sprite(flags, 0, 0, 0, &main);
    }
}

void pra_01_SetPartnerFlagsA0000(void);
void pra_01_SetPartnerFlags80000(void);
void pra_01_SetPartnerFlags20000(void);

s32 create_dynamic_entity_world(void (*updateFunc)(void), void (*drawFunc)(void));

/// int var0 = reflection type
/// bool var1 = enable wall reflection
ApiStatus func_80240D3C_D4DD7C(ScriptInstance *script, s32 isInitialCall) {
    Npc* partner;

    if (script->varTable[1] == FALSE) {
        switch (script->varTable[0]) {
            case REFLECTION_FLOOR_WALL:
                script->array[1] = create_dynamic_entity_world(pra_01_SetPartnerFlagsA0000, NULL);
                break;
            case REFLECTION_FLOOR:
                script->array[1] = create_dynamic_entity_world(pra_01_SetPartnerFlags80000, NULL);
                break;
            case REFLECTION_WALL:
                script->array[1] = create_dynamic_entity_world(pra_01_SetPartnerFlags20000, NULL);
                break;
        }
    } else {
        switch (script->varTable[0]) {
            case REFLECTION_FLOOR_WALL:
            case REFLECTION_FLOOR:
                script->array[1] = create_dynamic_entity_world(pra_01_SetPartnerFlags80000, NULL);
                break;
            case REFLECTION_WALL:
                break;
        }
    }

    partner = get_npc_safe(NPC_PARTNER);

    if (partner == NULL) {
        return ApiStatus_DONE2;
    }

    if (script->varTable[1] == FALSE) {
        switch (script->varTable[0]) {
            case REFLECTION_FLOOR_WALL:
                partner->flags |= 0x80000 | 0x20000;
                break;
            case REFLECTION_FLOOR:
                partner->flags |= 0x80000;
                break;
            case REFLECTION_WALL:
                partner->flags |= 0x20000;
                break;
        }
    } else {
        switch (script->varTable[0]) {
            case REFLECTION_FLOOR_WALL:
            case REFLECTION_FLOOR:
                partner->flags |= 0x80000;
                break;
            case REFLECTION_WALL:
                break;
        }
    }

    return ApiStatus_DONE2;
}

//INCLUDE_ASM(ApiStatus, "world/area_pra/pra_01/D4D060", func_80240D3C_D4DD7C, ScriptInstance* script, s32 isInitialCall);

#include "world/common/SetPartnerFlagsA0000.inc.c"

#include "world/common/SetPartnerFlags80000.inc.c"

#include "world/common/SetPartnerFlags20000.inc.c"

//////////// end of include ///////////////

INCLUDE_ASM(s32, "world/area_pra/pra_01/D4D060", func_80240F20_D4DF60);

ApiStatus func_80240F60_D4DFA0(ScriptInstance* script, s32 isInitialCall) {
    OVERRIDE_FLAG_UNSET(0x80);
    return ApiStatus_DONE2;
}

#include "world/common/GetNpcCollisionHeight.inc.c"

#include "world/common/AddPlayerHandsOffset.inc.c"

INCLUDE_ASM(s32, "world/area_pra/pra_01/D4D060", func_802411AC_D4E1EC);
/*
ApiStatus N(func_802411AC_D4E1EC)(ScriptInstance* script, s32 isInitialCall) {
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

INCLUDE_ASM(s32, "world/area_pra/pra_01/D4D060", func_80241200_D4E240);
/*
ApiStatus N(func_80241200_D4E240)(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    D_80241CD0_BE0A60 = get_variable(script, *args);
    D_80241CCC_BE0A5C = 1;
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_pra/pra_01/D4D060", func_80241238_D4E278);

INCLUDE_ASM(s32, "world/area_pra/pra_01/D4D060", func_802412D4_D4E314);

ApiStatus PostChapter7StatUpdate(ScriptInstance* script, s32 isInitialCall) {
    PlayerData* playerData = &gPlayerData;

    set_max_SP(7);
    playerData->curHP = playerData->curMaxHP;
    playerData->curFP = playerData->curMaxFP;
    sync_status_menu();
    return ApiStatus_DONE2;
}
