#include "common.h"

void func_800287F0(void) {
    // TODO: Figure out macros
    GameStatus* gameStatus;
    GameStatus* gameStatus2;

    gameStatus = GAME_STATUS;
    gameStatus->stickX = 0;
    gameStatus2 = GAME_STATUS;
    gameStatus->currentButtons = 0;
    gameStatus->pressedButtons = 0;
    gameStatus->heldButtons = 0;
    gameStatus2->stickY = 0;

    // TODO: macro
    {
        GameStatus* gameStatus = GAME_STATUS;
        gameStatus->prevButtons = 0;
        gameStatus->unk_50[0] = 4;
        gameStatus->unk_48[0] = 15;
        gameStatus->unk_60 = 0;
        gameStatus->unk_58 = 0;
    }
}

void func_80028838(void) {
    func_800287F0();
    D_8009A6A0 = 0;
    D_8009A6A2 = 0;
    D_8009A6A4 = 0;
    D_8009A6A6 = 0;
}

INCLUDE_ASM(s32, "code_3bf0_len_6f0", update_input);
