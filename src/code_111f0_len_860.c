#include "common.h"

void func_80035DF0(s16 arg0) {
    s16* tempPtr = &D_800A0942;

    *tempPtr = arg0;
}

INCLUDE_ASM(s32, "code_111f0_len_860", func_80035E00);

INCLUDE_ASM(s32, "code_111f0_len_860", func_80035E24);

INCLUDE_ASM(s32, "code_111f0_len_860", func_80035E54);

INCLUDE_ASM(s32, "code_111f0_len_860", func_80035EEC);

void func_800360FC(void) {
    GameStatus* gameStatus = GAME_STATUS;

    if (gameStatus->loadMenuState == 2) {
        draw_status_ui();
    }
}

void func_80036130(void) {
    GameStatus* gameStatus = GAME_STATUS;

    gMapTransitionAlpha = 0x00;
    D_800A0942 = 0x14;
    D_800A0944 = 0x00;

    if (gameStatus->prevArea != gameStatus->areaID) {
        gameStatus->changedArea = 1;
        gameStatus->prevArea = gameStatus->areaID;
    } else {
        gameStatus->changedArea = 0;
    }
}

INCLUDE_ASM(s32, "code_111f0_len_860", func_8003617C);

void func_800363FC(void) {
    if (D_800A0944 == 4 || D_800A0944 == 0) {
        draw_status_ui();
    }
}

s32 func_80036430(void) {
    PlayerStatus* playerStatus = &gPlayerStatus;

    gMapTransitionAlpha = 0xFF;
    D_800A0942 = 0x14;
    D_800A0944 = 0x01;

    playerStatus->flags |= 0x1000;

    return playerStatus->flags;
}

INCLUDE_ASM(s32, "code_111f0_len_860", func_8003646C);

void func_80036640(void) {
}
