#include "common.h"

void begin_state_init(void) {
    OVERRIDE_FLAG_SET(0x8);
    gGameStatusPtr->loadMenuState = 3;
}

void step_init_state(void) {
    GameStatus** gameStatusPtr = &gGameStatusPtr;
    GameStatus* gameStatus = *gameStatusPtr;
    s32 i;

    if (gameStatus->loadMenuState != 0) {
        gameStatus->loadMenuState--;
        return;
    }

    gOverrideFlags = 0;
    (*gameStatusPtr)->areaID = 0;
    (*gameStatusPtr)->isBattle = 0;
    gameStatus->prevArea = -1;
    gameStatus->mapID = 0;
    gameStatus->entryID = 0;
    (*gameStatusPtr)->unk_76 = 0;
    (*gameStatusPtr)->disableScripts = 0;
    (*gameStatusPtr)->unk_7D = 0;
    (*gameStatusPtr)->unk_A8 = -1;
    (*gameStatusPtr)->unk_AA = 0;
    (*gameStatusPtr)->unk_A9 = -1;
    (*gameStatusPtr)->demoState = 0;

    general_heap_create();
    func_8011D890();
    clear_dynamic_entity_list();
    clear_script_list();
    create_cameras_a();
    func_802DD8F8(0);
    clear_entity_models();
    func_8011E224();
    clear_model_data();
    func_80148040();
    use_default_background_settings();
    func_801452E8(0, 0);
    func_80141100();
    clear_trigger_data();
    clear_printers();
    clear_entity_data(0);
    clear_transition_stencil();
    clear_player_status();
    clear_npcs();
    clear_player_data();
    func_80072B30();
    func_8003E338();
    clear_effect_data();
    clear_item_entity_data();
    clear_saved_variables();
    initialize_collision();
    bgm_init_music_players();
    clear_windows();
    partner_initialize_data();
    sfx_clear_sounds();
    bgm_reset_volume();
    initialize_curtains();

    for (i = 0; i < 4; i++) {
        (*gameStatusPtr)->unk_50[i] = 4;
        (*gameStatusPtr)->unk_48[i] = 0xF;
    }

    fio_has_valid_backup();

    if (D_800D9620 == 0) {
        gGameStatusPtr->unk_AB = 1;
        func_8005615C();
    } else {
        gGameStatusPtr->unk_AB = 0;
        func_80056180();
    }

    OVERRIDE_FLAG_UNSET(0x8);
    set_game_mode(1);
}

void state_drawUI_startup(void) {
    func_8002AB5C(0, 0, 0x13F, 0xEF, 0, 0, 0, 0xFF);
}
