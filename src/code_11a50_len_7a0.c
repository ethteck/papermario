#include "code_11a50_len_7a0.h"

void begin_state_intro(void) {
    GameStatus** gameStatus = &gGameStatusPtr;
    s8 unk_A8;
    u8* mystery;

    (*gameStatus)->loadMenuState = 0;

    set_curtain_scale_goal(1.0f);
    set_curtain_fade_goal(0.3f);

    unk_A8 = (*gameStatus)->unk_A8;
    switch (unk_A8) {
        case 0:
            intro_logos_set_fade_alpha(0);

            D_800A0954 = 0xFF;
            D_800A0956 = 0x10;
            D_800A0958 = 4;
            D_800A0960 = 0;
            D_800A095A = 0xD0;
            D_800A095C = 0xD0;
            D_800A095E = 0xD0;
            D_800A0964 = 0;

            // hos_05 (Star Sanctuary)
            (*gameStatus)->areaID = AREA_HOS;
            (*gameStatus)->mapID = 5;
            (*gameStatus)->entryID = 3;
            break;
        case 1:
            intro_logos_set_fade_alpha(0);

            D_800A0954 = 0;
            D_800A0956 = 0xC;
            D_800A0958 = 4;
            D_800A0960 = unk_A8;
            D_800A095A = 0;
            D_800A095C = 0;
            D_800A095E = 0;
            D_800A0964 = 0;

            // hos_04 (Outside the Sanctuary)
            (*gameStatus)->areaID = AREA_HOS;
            (*gameStatus)->mapID = 4;
            (*gameStatus)->entryID = 4;
            break;
        default:
            intro_logos_set_fade_alpha(0);
            intro_logos_set_fade_color(208);

            mystery = &D_800779B0;

            gGameStatusPtr->unk_A8 = -1;

            D_800A0956 = 6;
            D_800A0958 = 6;

            ++*mystery;
            if (*mystery >= 4) {
                *mystery = 0;
            }

            D_800A0964 = 3;
            break;
    }

    set_transition_stencil_zoom_1(D_800A0963, D_800A0954);
    set_transition_stencil_color(1, D_800A095B, D_800A095D, D_800A095F);

    intro_logos_update_fade();
}

INCLUDE_ASM(s32, "code_11a50_len_7a0", step_intro);

void func_80036DE0(void) {
}
