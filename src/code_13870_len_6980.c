#include "common.h"
#include "map.h"

void NOP_npc_callback(void) {
}

void mtx_ident_mirror_y(Matrix4f* mtx) {
    guMtxIdentF(*mtx);
    (*mtx)[0][0] = 1.0f;
    (*mtx)[1][1] = -1.0f;
    (*mtx)[2][2] = 1.0f;
    (*mtx)[3][3] = 1.0f;
}

INCLUDE_ASM(s32, "code_13870_len_6980", clear_npcs);

void init_npc_list(void) {
    if (!gGameStatusPtr->isBattle) {
        gCurrentNpcListPtr = &gWorldNpcList;
    } else {
        gCurrentNpcListPtr = &gBattleNpcList;
    }
    D_8009A604 = 0;
    D_800A0B94 = 1;
}

//pointless function called by step_game_loop
void func_8003857C(void) {
    s32 phi_v1 = 0;
    s32 temp_v0 = phi_v1 < 0x40;

    while (temp_v0) {
        phi_v1++;
        temp_v0 = phi_v1 < 0x40;
    }
}

INCLUDE_ASM(s32, "code_13870_len_6980", _create_npc, NpcBlueprint* blueprint, s32 animList[], s32 skipLoadingAnims);

void create_basic_npc(s32* arg0) {
    _create_npc(arg0, 0, 0);
}

void create_standard_npc(s32* arg0, s32 arg1) {
    _create_npc(arg0, arg1, 0);
}

void create_partner_npc(NpcBlueprint* blueprint) {
    _create_npc(blueprint, NULL, TRUE);
}

INCLUDE_ASM(s32, "code_13870_len_6980", free_npc_by_index);

INCLUDE_ASM(s32, "code_13870_len_6980", free_npc);

Npc* get_npc_by_index(s32 listIndex) {
    return gCurrentNpcListPtr[0][listIndex & ~0x800];
}

INCLUDE_ASM(s32, "code_13870_len_6980", npc_do_world_collision);

INCLUDE_ASM(s32, "code_13870_len_6980", npc_do_other_npc_collision);

INCLUDE_ASM(s32, "code_13870_len_6980", npc_do_player_collision);

INCLUDE_ASM(s32, "code_13870_len_6980", func_80039688);

INCLUDE_ASM(s32, "code_13870_len_6980", func_800397E8);

INCLUDE_ASM(s32, "code_13870_len_6980", update_npcs);

INCLUDE_ASM(s32, "code_13870_len_6980", func_80039DA4);

INCLUDE_ASM(s32, "code_13870_len_6980", appendGfx_npc);

INCLUDE_ASM(s32, "code_13870_len_6980", render_npcs);

void npc_move_heading(Npc* npc, f32 speed, f32 yaw) {
    f32 angle = (yaw * TAU) / 360.0f;
    f32 sin = sin_rad(angle);
    f32 cos = cos_rad(angle);

    npc->pos.x += speed * sin;
    npc->pos.z += -speed * cos;
}

INCLUDE_ASM(Npc*, "code_13870_len_6980", get_npc_unsafe, NpcId npcId);

INCLUDE_ASM(Npc*, "code_13870_len_6980", get_npc_safe, NpcId npcId);

void enable_npc_shadow(Npc* npc) {
    Shadow* shadow;

    if (!(npc->flags & 0x10)) {
        shadow = get_shadow_by_index(npc->shadowIndex);
        shadow->flags &= ~1;
        npc->flags = npc->flags | 0x10010;
    }
}

void disable_npc_shadow(Npc* npc) {
    Shadow* shadow;

    if (npc->flags & 0x10) {
        shadow = get_shadow_by_index(npc->shadowIndex);
        shadow->flags |= 1;
        npc->flags &= ~0x10;
        npc->flags &= ~0x10000;
    }
}

func_802DE2AC(s32 arg0, s32 arg1, f32 arg2);

void set_npc_sprite(Npc* npc, s32 arg1, s32 arg2) {
    s32 flagsTemp;

    ASSERT(((npc->flags & 0x1000000)) || (func_802DE5E8(npc->unk_24) == 0));
    npc->unk_B0 = arg2;
    if (!(npc->flags & 0x1000000)) {
        npc->unk_24 = func_802DE0EC(arg1, arg2);
        ASSERT(!(npc->unk_24 < 0));
    }
    flagsTemp = npc->flags;
    npc->currentAnim = arg1;
    if (!(flagsTemp & 0x40000000)) {
        if (!(flagsTemp & 0x1000000)) {
            func_802DE2AC(npc->unk_24, arg1, npc->animationSpeed);
        }
    }
}

void enable_npc_blur(Npc* npc) {
    NpcBlurData* blurData;
    s32 i;

    if (!(npc->flags & 0x100000)) {
        npc->flags |= 0x100000;
        blurData = heap_malloc(sizeof(NpcBlurData));
        npc->blurData = blurData;
        ASSERT(blurData != NULL);
        blurData->unk_00 = 0;
        blurData->unk_01 = 0;

        for (i = 0; i < ARRAY_COUNT(blurData->xpos); i++) {
            blurData->xpos[i] = npc->pos.x;
            blurData->ypos[i] = npc->pos.y;
            blurData->zpos[i] = npc->pos.z;
        }
    }
}

void disable_npc_blur(Npc* npc) {
    if (npc->flags & 0x100000) {
        npc->flags &= ~0x100000;
        heap_free(npc->blurData);
        npc->blurData = NULL;
    }
}

void update_npc_blur(Npc* npc) {
    NpcBlurData* blurData = npc->blurData;
    s32 index = blurData->unk_01;

    blurData->xpos[index] = npc->pos.x;
    blurData->ypos[index] = npc->pos.y;
    blurData->zpos[index] = npc->pos.z;

    index++;
    if (index >= 20) {
        index = 0;
    }

    blurData->unk_01 = index;
}

INCLUDE_ASM(s32, "code_13870_len_6980", appedGfx_npc_blur);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003B184);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003B198);

void func_8003B1A8(void) {
}

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003B1B0);

void set_npc_yaw(Npc* npc, f32 angle) {
    npc->yaw = angle;

    if (get_clamped_angle_diff(gCameras[gCurrentCameraID].currentYaw, angle) >= 0.0f) {
        npc->yawCamOffset = 180;
        npc->isFacingAway = TRUE;
    } else {
        npc->yawCamOffset = 0;
        npc->isFacingAway = FALSE;
    }
}

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003B3D0);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003B3F8);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003B420);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003B44C);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003B464);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003B47C);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003B500);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003B5B4);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003B96C);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003BA60);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003BED8);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003C3D8);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003C428);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003C444);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003C53C);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003C61C);

void func_8003C658(void) {
}

void func_8003C660(void) {
}

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003C668);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003C78C);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003C7A8);

void func_8003C8AC(void) {
}

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003C8B4);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003C984);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003C9A8);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003CB20);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003CB44);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003CC8C);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003CCB0);

void func_8003CFA0(void) {
}

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003CFA8);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003CFB4);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003D0C4);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003D1D4);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003D2F8);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003D3BC);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003D624);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003D660);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003D788);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003DA38);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003DC38);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003DFA0);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003E0D4);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003E1D0);

INCLUDE_ASM(s32, "code_13870_len_6980", COPY_set_defeated);

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003E338);

INCLUDE_ASM(s32, "code_13870_len_6980", clear_encounter_status);

void func_8003E50C(void) {
}

INCLUDE_ASM(s32, "code_13870_len_6980", func_8003E514);

INCLUDE_ASM(s32, "code_13870_len_6980", update_counters);

INCLUDE_ASM(s32, "code_13870_len_6980", draw_encounter_ui);

INCLUDE_ASM(s32, "code_13870_len_6980", draw_first_strike_ui);

void func_8003E670(void) {
}

INCLUDE_ASM(s32, "code_13870_len_6980", make_npcs);

INCLUDE_ASM(s32, "code_13870_len_6980", kill_encounter);

INCLUDE_ASM(s32, "code_13870_len_6980", kill_enemy);

INCLUDE_ASM(s32, "code_13870_len_6980", bind_enemy_ai);

INCLUDE_ASM(s32, "code_13870_len_6980", bind_enemy_aux);

INCLUDE_ASM(s32, "code_13870_len_6980", bind_enemy_interact);

INCLUDE_ASM(s32, "code_13870_len_6980", bind_npc_ai);

INCLUDE_ASM(s32, "code_13870_len_6980", bind_npc_aux);

INCLUDE_ASM(s32, "code_13870_len_6980", bind_npc_interact);

INCLUDE_ASM(Enemy*, "code_13870_len_6980", get_enemy, NpcId npcId);

INCLUDE_ASM(s32, "code_13870_len_6980", get_enemy_safe);
