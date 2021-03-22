#include "common.h"

void init_demo_data(void) {
    GameStatus** gameStatus = &gGameStatusPtr;

    if ((*gameStatus)->demoState == 0) {
        (*gameStatus)->nextDemoScene = 0;
        (*gameStatus)->demoState = 1;
    }

    (*gameStatus)->demoButtonInput = 0;
    (*gameStatus)->demoStickX = 0;
    (*gameStatus)->demoStickY = 0;

    func_80056228();
    set_map_transition_effect(2);
    set_transition_stencil_zoom_0(0, 255.0f);
    clear_saved_variables();
    clear_script_list();
}

INCLUDE_ASM(s32, "code_13480_len_3f0", next_demo_scene);

void func_8003845C(void) {

}
