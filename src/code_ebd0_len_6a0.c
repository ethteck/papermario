#include "code_ebd0_len_6a0.h"

void intro_logos_set_fade_alpha(s16 alpha) {
    GameStatus* gameStatus = *gGameStatusPtr;

    gameStatus->bootAlpha = alpha;
}

void intro_logos_set_fade_color(s16 color) {
    GameStatus* gameStatus = *gGameStatusPtr;

    gameStatus->bootRed = color;
    gameStatus->bootGreen = color;
    gameStatus->bootBlue = color;
}

s16 intro_logos_fade_in(s16 subtractAlpha) {
    GameStatus* gameStatus = *gGameStatusPtr;

    if (gameStatus->bootAlpha != 0) {
        gameStatus->bootAlpha -= subtractAlpha;
        if (gameStatus->bootAlpha << 16 < 0) {
            gameStatus->bootAlpha = 0;
        }
    } else {
        return 1;
    }
    return 0;
}

s16 intro_logos_fade_out(s16 addAlpha) {
    GameStatus* gameStatus = *gGameStatusPtr;

    if (gameStatus->bootAlpha != 0xFF) {
        gameStatus->bootAlpha += addAlpha;
        if ((gameStatus->bootAlpha > 0xFF)) {
            gameStatus->bootAlpha = 0xFF;
        }
    } else {
        return 1;
    }
    return 0;
}

void intro_logos_update_fade(void) {
    set_transition_stencil_zoom_0(0, (*gGameStatusPtr)->bootAlpha);
    set_transition_stencil_color(0, (*gGameStatusPtr)->bootBlue, (*gGameStatusPtr)->bootGreen, (*gGameStatusPtr)->bootRed);
}

void begin_state_battle(void) {
    D_800A0900 = 5;
}

INCLUDE_ASM(s32, "code_ebd0_len_6a0", step_battle);

void func_80033B54(void) {
    draw_encounter_ui();
    if (D_800A0900 < 0) {
        draw_main_battle_ui();
    }
}

void func_80033B88(void) {
    D_8009A650[0] |= 0x08;
    nuContRmbForceStop();
    D_800A0900 = 5;
}

INCLUDE_ASM(s32, "code_ebd0_len_6a0", func_80033BC0);

void func_80033E64(void) {
}
