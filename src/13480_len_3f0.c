#include "common.h"

void state_init_demo(void) {
    if (gGameStatusPtr->demoState == 0) {
        gGameStatusPtr->nextDemoScene = 0;
        gGameStatusPtr->demoState = 1;
    }

    gGameStatusPtr->demoButtonInput = 0;
    gGameStatusPtr->demoStickX = 0;
    gGameStatusPtr->demoStickY = 0;

    func_80056228();
    set_map_transition_effect(2);
    set_screen_overlay_params_front(0, 255.0f);
    clear_saved_variables();
    clear_script_list();
}

INCLUDE_ASM(void, "13480_len_3f0", state_step_demo, void);

void state_drawUI_demo(void) {

}
