#include "common.h"

typedef struct struct802E10F4 {
    char unk_0[4];
    s16 angle;
} struct802E10F4;

void create_shadow_callback(Shadow* shadow) {
    shadow->scale.x = 0.1f;
    shadow->scale.y = 0.1f;
    shadow->scale.z = 0.1f;
}

//TODO: make sure this is the right struct for this.
s32 func_802E0DB0(Shadow* shadow) {
    if ((shadow->unk_06 & 4) && (gPlayerStatus.flags & 2)) {
        return TRUE;
    }
    return FALSE;
}

INCLUDE_ASM(s32, "102610_len_2330", func_802E0DE0);

void func_802E10F4(Entity* entity) {
    struct802E10F4* temp;

    temp = (struct802E10F4*)entity->dataBuf;
    temp->angle = clamp_angle(temp->angle + 6);
    func_802E3650(entity);
}

void func_802E114C(void) {
    set_time_freeze_mode(1);
    disable_player_input();
    gPlayerStatusPtr->currentSpeed = 0.0f;
}

void func_802E117C(void) {
    set_time_freeze_mode(0);
    enable_player_input();
}

void save_game_at_player_position(void) {
    gGameStatusPtr->savedPos.x = gPlayerStatusPtr->position.x;
    gGameStatusPtr->savedPos.y = gPlayerStatusPtr->position.y;
    gGameStatusPtr->savedPos.z = gPlayerStatusPtr->position.z;
    fio_save_game(gGameStatusPtr->saveSlot);
}

void func_802E1204(Entity* entity) {
    if (!get_global_flag(SI_SAVE_FLAG(95))) {
        D_802EB390 = FALSE;
        load_string(0x1D0000, &D_802EB390);
        set_global_flag(SI_SAVE_FLAG(95));
        return;
    }

    exec_entity_updatecmd(entity);
    exec_entity_updatecmd(entity);
}

void func_802E1270(Entity* entity) {
    if (D_802EB390) {
        exec_entity_updatecmd(entity);
    }
}

void func_802E1298(void) {
    D_802EB390 = FALSE;
    D_802EB394 = FALSE;
    D_802EB39C = load_string(0x1D0004, &D_802EB394);
    D_802EB398 = load_string(0x1E000A, &D_802EB390);
}

void func_802E12F8(void) {
    load_message_to_printer(0x1D0005, D_802EB39C);
    sfx_play_sound(0x10);
}

void func_802E1328(Entity* entity) {
    if (D_802EB394) {
        exec_entity_updatecmd(entity);
    }
}

void func_802E1350(Entity* entity) {
    if (D_802EB390) {
        if (D_802EB398->currentOption == 1) {
            set_entity_commandlist(entity, &D_802E99DC);
        } else {
            exec_entity_updatecmd(entity);
        }
        close_message(D_802EB39C);
    }
}

void func_802E13B8(Entity* entity) {
    struct802E3650* temp = entity->dataBuf;

    entity_init_Hammer23Block_normal(entity);
    entity->renderSetupFunc = func_802E0DE0;
    temp->unk_04 = 8;
}
