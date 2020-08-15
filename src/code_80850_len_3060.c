#include "common.h"

void sort_items(void);

void clear_player_data(void) {
    player_data* playerData = &gPlayerData;
    s32 i;

    D_8010CD10 = 0;
    D_8010CD12 = 0;

    playerData->hammerLevel = -1;
    playerData->curHP = 10;
    playerData->curMaxHP = 10;
    playerData->hardMaxHP = 10;
    playerData->curFP = 5;
    playerData->curMaxFP = 5;
    playerData->hardMaxFP = 5;
    playerData->maxBP = 3;
    playerData->level = 1;
    playerData->bootsLevel = 0;
    playerData->hasActionCommands = 0;
    playerData->coins = 0;
    playerData->fortressKeyCount = 0;
    playerData->starPieces = 0;
    playerData->starPoints = 0;
    playerData->unk_11 = 0;
    playerData->unk_288 = 0;
    playerData->merleeSpellType = 0;
    playerData->merleeCastsLeft = 0;
    playerData->merleeTurnCount = -1;
    playerData->maxStarPower = 0;
    playerData->specialBarsFilled = 0;
    playerData->unk_292[0] = 0;
    playerData->currentPartner = 0;

    for (i = 0; i < ARRAY_COUNT(playerData->partners); i++) {
        playerData->partners[i].enabled = 0;
        playerData->partners[i].level = 0;
        playerData->partners[i].unk_02[0] = 0;
        playerData->partners[i].unk_02[1] = 0;
        playerData->partners[i].unk_02[2] = 0;
    }

    for (i = ARRAY_COUNT(playerData->keyItems) - 1; i >= 0; i--) {
        playerData->keyItems[i] = 0;
    }

    for (i = ARRAY_COUNT(playerData->badges) - 1; i >= 0; i--) {
        playerData->badges[i] = 0;
    }

    for (i = ARRAY_COUNT(playerData->invItems) - 1; i >= 0; i--) {
        playerData->invItems[i] = 0;
    }

    for (i = ARRAY_COUNT(playerData->equippedBadges) - 1; i >= 0; i--) {
        playerData->equippedBadges[i] = 0;
    }

    for (i = ARRAY_COUNT(playerData->storedItems) - 1; i >= 0; i--) {
        playerData->storedItems[i] = 0;
    }

    playerData->otherHitsTaken = 0;
    playerData->unk_296 = 0;
    playerData->hitsTaken = 0;
    playerData->hitsBlocked = 0;
    playerData->playerFirstStrikes = 0;
    playerData->enemyFirstStrikes = 0;
    playerData->powerBounces = 0;
    playerData->battlesCount = 0;
    playerData->unk_2A4[0] = 0;
    playerData->unk_2A4[1] = 0;
    playerData->unk_2A4[2] = 0;
    playerData->unk_2A4[3] = 0;
    playerData->unk_2AC = 0;
    playerData->unk_2B0 = 0;
    playerData->idleFrameCounter = 0;
    playerData->totalCoinsEarned = 0;
    playerData->frameCounter = 0;
    playerData->quizzesAnswered = 0;
    playerData->quizzesCorrect = 0;

    for (i = 0; i < ARRAY_COUNT(playerData->unk_2C4); i++) {
        playerData->unk_2C4[i] = 0;
        playerData->unk_2F4[i] = 0;
    }

    playerData->unk_328 = 0;
    playerData->starPiecesCollected = 0;
    playerData->jumpGamePlays = 0;
    playerData->jumpGameTotal = 0;
    playerData->jumpGameRecord = 0;
    playerData->smashGamePlays = 0;
    playerData->smashGameTotal = 0;
    playerData->smashGameRecord = 0;
}

player_data* get_player_data(void) {
    return &gPlayerData;
}

s32 add_item(s32 itemID) {
    player_data* playerData = &gPlayerData;
    s32 i;

    sort_items();

    for (i = 0; i < ARRAY_COUNT(gPlayerData.invItems); i++) {
        if (playerData->invItems[i] == 0) {
            break;
        }
    }

    if (i == ARRAY_COUNT(gPlayerData.invItems)) {
        return -1;
    }

    playerData->invItems[i] = itemID;
    return i;
}

s32 get_item_count(void) {
    player_data* playerData = &gPlayerData;
    s32 i = 0;
    s32 sum = 0;

    for (i; i < ARRAY_COUNT(gPlayerData.invItems); i++) {
        if (playerData->invItems[i] != 0) {
            sum++;
        }
    }

    return sum;
}

s32 get_item_empty_count(void) {
    return ARRAY_COUNT(gPlayerData.invItems) - get_item_count();
}

s32 find_item(s32 itemID) {
    player_data* playerData = &gPlayerData;
    item_table_entry* item = &gItemTable[itemID];
    s32 i;

    if ((item->typeFlags & 8) != 0) {
        for (i = 0; i < ARRAY_COUNT(playerData->keyItems); i++) {
            if (playerData->keyItems[i] == itemID) {
                break;
            }
        }

        if (i >= ARRAY_COUNT(playerData->keyItems)) {
            return -1;
        }

        return i;
    }

    for (i = 0; i < ARRAY_COUNT(playerData->invItems); i++) {
        if (playerData->invItems[i] == itemID) {
            break;
        }
    }

    if (i == ARRAY_COUNT(playerData->invItems)) {
        return -1;
    }

    return i;
}

void sort_items(void) {
    player_data* playerData = &gPlayerData;
    int j;
    int i;

    for (i = ARRAY_COUNT(playerData->invItems) - 2; i >= 0; i--) {
        if (playerData->invItems[i] != 0) {
            for (j = ARRAY_COUNT(playerData->invItems) - 1; i < j; j--) {
                if (playerData->invItems[j] == 0) {
                    playerData->invItems[j] = playerData->invItems[i];
                    playerData->invItems[i] = 0;
                    break;
                }
            }
        }
    }
    return;
}

s32 add_badge(s32 itemID) {
    player_data* playerData = &gPlayerData;
    item_table_entry* item = &gItemTable[itemID];
    s32 i;

    if ((item->typeFlags & 0x40) == 0) {
        return add_item(itemID);
    }

    for (i = 0; i < ARRAY_COUNT(playerData->badges); i++) {
        if (playerData->badges[i] == 0) {
            break;
        }
    }

    if (i >= ARRAY_COUNT(playerData->badges)) {
        return 0;
    }

    playerData->badges[i] = itemID;
    return i;
}

s32 store_item(s32 itemID) {
    player_data* playerData = &gPlayerData;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gPlayerData.storedItems); i++) {
        if (playerData->storedItems[i] == 0) {
            break;
        }
    }

    if (i == ARRAY_COUNT(gPlayerData.storedItems)) {
        return -1;
    } else {
        playerData->storedItems[i] = itemID;
    }

    return i;
}

s32 get_stored_count(void) {
    player_data* playerData = &gPlayerData;
    s32 i = 0;
    s32 sum = 0;

    for (i; i < ARRAY_COUNT(gPlayerData.storedItems); i++) {
        if (playerData->storedItems[i] != 0) {
            sum++;
        }
    }

    return sum;
}

s32 get_stored_empty_count(void) {
    return ARRAY_COUNT(gPlayerData.storedItems) - get_stored_count();
}

void enforce_hpfp_limits(void) {
    player_data* playerData = &gPlayerData;
    player_data* playerData2 = &gPlayerData;

    playerData->curMaxHP = playerData->hardMaxHP + (is_ability_active(4) * 5);
    if (playerData->curMaxHP > 75) {
        playerData->curMaxHP = 75;
    }
    if (playerData->curHP > playerData->curMaxHP) {
        playerData->curHP = playerData->curMaxHP;
    }

    playerData2->curMaxFP = playerData2->hardMaxFP + (is_ability_active(12) * 5);
    if (playerData2->curMaxFP > 75) {
        playerData2->curMaxFP = 75;
    }
    if (playerData2->curFP > playerData2->curMaxFP) {
        playerData2->curFP = playerData2->curMaxFP;
    }
}

INCLUDE_ASM(code_80850_len_3060, initialize_status_menu);

INCLUDE_ASM(code_80850_len_3060, status_menu_draw_number);

INCLUDE_ASM(code_80850_len_3060, status_menu_draw_stat);

INCLUDE_ASM(code_80850_len_3060, update_status_menu);

void coin_counter_draw_content(UNK_TYPE arg0, s32 posX, s32 posY) {
    ui_status* uiStatus = &gUIStatus;
    s32 iconIndex;

    if ((gPlayerData.coins != uiStatus->displayCoins) && (((*gGameStatusPtr)->frameCounter % 3) == 0)) {
        play_sound(0x211);
    }

    iconIndex = uiStatus->iconIndex10;
    set_icon_render_pos(iconIndex, posX + 27, posY + 11);
    draw_icon_0(iconIndex);

    iconIndex = uiStatus->iconIndex11;
    set_icon_render_pos(iconIndex, posX + 15, posY + 11);
    draw_icon_0(iconIndex);

    draw_number(uiStatus->displayCoins, posX + 58, posY + 4, 1, 10, 255, 3);
}

void update_coin_counter(void) {
    ui_status* uiStatus = &gUIStatus;
    player_data* playerData = &gPlayerData;

    do {} while(0); // Needed to match

    if (uiStatus->unk_6C[1] != 0) {
        uiStatus->unk_6C[1] -= 1;
        if (((uiStatus->unk_6C[1] << 24) == 0) && (uiStatus->iconIndex12 >= 0)) {
            free_icon(uiStatus->iconIndex12);
            free_icon(uiStatus->iconIndex13);
            uiStatus->iconIndex12 = -1;
        }
        D_8010CD12 = 0;
    }

    if (uiStatus->unk_6C[0] != 0) {
        if ((uiStatus->displayCoins == playerData->coins) && (uiStatus->unk_6C[0] > 30)) {
            uiStatus->unk_6C[0] = 30;
        }

        if ((uiStatus->displayCoins == playerData->coins) || (uiStatus->unk_6C[0] <= 30)) {
            uiStatus->unk_6C[0] -= 1;
            if (uiStatus->unk_6C[0] == 0) {
                func_80147E7C(20, &D_80147574);
                uiStatus->unk_6C[1] = 15;
                D_8010CD10 = 0;
                D_8010CD12 = 1;
                uiStatus->iconIndex12 = uiStatus->iconIndex10;
                uiStatus->iconIndex13 = uiStatus->iconIndex11;
                uiStatus->displayCoins = playerData->coins;
                if (uiStatus->unk_6C[2] > -1) {
                    uiStatus->ignoreChanges = uiStatus->unk_6C[2];
                    uiStatus->unk_6C[2] = -1;
                }
            }
        }
    }
}

void show_coin_counter(void) {
    ui_status* uiStatus = &gUIStatus;
    s16* coinCounterUnk = &D_8010CD10;
    s32 index;

    if ((*coinCounterUnk != 0) || (D_8010CD12 != 0)) {
        func_80147E7C(0x14, 2);
        if (uiStatus->iconIndex12 > -1) {
            free_icon(uiStatus->iconIndex10);
            free_icon(uiStatus->iconIndex11);
            uiStatus->iconIndex12 = -1;
        }
        uiStatus->unk_6C[0] = 0;
        uiStatus->unk_6C[1] = 0;
        *coinCounterUnk = 0;
        D_8010CD12 = 0;
    }

    if (uiStatus->unk_6C[0]== 0) {
        func_80147CC8(0x14, 0x20, 0xa4, 0x40, 0x14, 0x15, &D_800E92D8, 0, -1);
        func_80147E7C(0x14, &D_80147474);
        index = create_icon(&D_80109270);
        uiStatus->iconIndex10 = index;
        set_icon_flags(index, 0x80);
        func_80144EFC(index, 0xff, 0xff, 0xff);
        index = create_icon(&D_80108558);
        uiStatus->iconIndex11 = index;
        set_icon_flags(index, 0x80);
        func_80144EFC(index, 0xff, 0xff, 0xff);
        uiStatus->unk_6C[0] = 0;

        if (uiStatus->unk_6C[2] < 0) {
            uiStatus->unk_6C[2] = uiStatus->ignoreChanges;
        }

        uiStatus->ignoreChanges = 1;
        D_8010CD10 = 1;
    }
    return;
}

void hide_coin_counter(void) {
    ui_status* uiStatus = &gUIStatus;

    if ((D_8010CD10 != 0) && (uiStatus->unk_6C[0]== 0)) {
        uiStatus->unk_6C[0] = 60;
    }
}

void func_800E96C8(void) {
    ui_status* uiStatus = &gUIStatus;

    if ((D_8010CD10 != 0) && (uiStatus->unk_6C[0]== 0)) {
        uiStatus->unk_6C[0]= 1;
    }
}

s32 ShowCoinCounter(script_context* script) {
    if (get_variable(script, *script->ptrReadPos)) {
        show_coin_counter();
    } else {
        hide_coin_counter();
    }
    return 2;
}

void func_800E973C(void) {
    update_status_menu();
    update_coin_counter();
}

void open_status_menu_long(void) {
    ui_status* uiStatus = &gUIStatus;

    if (uiStatus->hidden) {
        uiStatus->showTimer = 210;
        uiStatus->hidden = 0;
        uiStatus->unk_3B[0] = 1;
    }
}

void open_status_menu_short(void) {
    ui_status* uiStatus = &gUIStatus;

    if (uiStatus->hidden) {
        uiStatus->showTimer = 105;
        uiStatus->hidden = 0;
        uiStatus->unk_3B[0] = 1;
    }
}

void func_800E97B8(void) {
    ui_status* uiStatus = &gUIStatus;

    if (uiStatus->hidden != 1) {
        uiStatus->hidden = 1;
        uiStatus->showTimer = 0;
        uiStatus->unk_3B[0] = 1;
    }
}

void func_800E97E4(void) {
    ui_status* uiStatus = &gUIStatus;

    uiStatus->drawPosY = -100;
    uiStatus->ignoreChanges = 0;
    uiStatus->showTimer = 0;
    uiStatus->hidden = 1;
    uiStatus->unk_3B[0] = 0;
    uiStatus->unk_3B[1] = 0;
}

void func_800E9810(void) {
    ui_status* uiStatus = &gUIStatus;

    uiStatus->showTimer = 210;
    uiStatus->drawPosY = 0;
    uiStatus->ignoreChanges = 0;
    uiStatus->hidden = 0;
    uiStatus->unk_3B[0] = 1;
    uiStatus->unk_3B[1] = 0;
}

void func_800E983C(void) {
    gUIStatus.unk_45[0] = 0;
}

void func_800E984C(void) {
    gUIStatus.unk_45[0] = 1;
}

s32 func_800E9860(void) {
    ui_status* uiStatus = &gUIStatus;
    ui_status* uiStatus2 = &gUIStatus;
    s32 ret = 1 - uiStatus->unk_45[0];

    if (uiStatus->unk_45[1] != 0) {
        ret = 0;
    }
    if (uiStatus2->ignoreChanges) {
        ret = 0;
    }
    return ret;
}

void status_menu_enable_ignore_changes(void) {
    gUIStatus.ignoreChanges = 1;
}

void func_800E98A8(void) {
    ui_status* uiStatus = &gUIStatus;

    uiStatus->ignoreChanges = 1;
    uiStatus->drawPosY = 18;
}

void status_menu_disable_ignore_changes(void) {
    gUIStatus.ignoreChanges = 0;
}

s32 func_800E98D4(void) {
    ui_status* uiStatus = &gUIStatus;

    return uiStatus->unk_45[1] + uiStatus->ignoreChanges;
}

void func_800E98EC(void) {
    gUIStatus.unk_45[1] = 1;
}

void func_800E9900(void) {
    gUIStatus.unk_45[1] = 0;
}

s32 is_status_menu_visible(void) {
    return !gUIStatus.hidden;
}

void status_menu_start_blinking_hp(void) {
    game_status* gameStatus = (*gGameStatusPtr);
    ui_status* uiStatus = &gUIStatus;
    ui_status* uiStatus2 = &gUIStatus;

    if (gameStatus->isBattle == 0) {
        uiStatus->hpBlinkTimer = 120;
    }

    if (uiStatus2->hpBlinking != 1) {
        uiStatus2->hpBlinking = 1;
        uiStatus2->hpBlinkCounter = 0;
    }
}

void status_menu_stop_blinking_hp(void) {
    ui_status* uiStatus = &gUIStatus;

    if (uiStatus->hpBlinking != 0) {
        uiStatus->hpBlinking = 0;
        uiStatus->hpBlinkCounter = 0;
        uiStatus->hpBlinkTimer = 0;
    }
}

void status_menu_start_blinking_fp(void) {
    game_status* gameStatus = (*gGameStatusPtr);
    ui_status* uiStatus = &gUIStatus;
    ui_status* uiStatus2 = &gUIStatus;

    if (gameStatus->isBattle == 0) {
        uiStatus->fpBlinkTimer = 120;
    }

    if (uiStatus2->fpBlinking != 1) {
        uiStatus2->fpBlinking = 1;
        uiStatus2->fpBlinkCounter = 0;
    }
}

void status_menu_stop_blinking_fp(void) {
    ui_status* uiStatus = &gUIStatus;

    if (uiStatus->fpBlinking != 0) {
        uiStatus->fpBlinking = 0;
        uiStatus->fpBlinkCounter = 0;
    }
}

void status_menu_start_blinking_coins(void) {
    game_status* gameStatus = (*gGameStatusPtr);
    ui_status* uiStatus = &gUIStatus;
    ui_status* uiStatus2 = &gUIStatus;

    if (gameStatus->isBattle == 0) {
        uiStatus->coinsBlinkTimer = 120;
    }

    if (uiStatus2->coinsBlinking != 1) {
        uiStatus2->coinsBlinking = 1;
        uiStatus2->coinsBlinkCounter = 0;
    }
}

void status_menu_stop_blinking_coins(void) {
    ui_status* uiStatus = &gUIStatus;

    if (uiStatus->coinsBlinking != 0) {
        uiStatus->coinsBlinking = 0;
        uiStatus->coinsBlinkCounter = 0;
        uiStatus->coinsBlinkTimer = 0;
    }
}

void status_menu_start_blinking_sp(void) {
    player_data* playerData = &gPlayerData;
    ui_status* uiStatus = &gUIStatus;

    uiStatus->spBarsToBlink = playerData->maxStarPower;
    if (uiStatus->spBlinking != 1) {
        uiStatus->spBlinking = 1;
        uiStatus->spBlinkCounter = 0;
    }
}

void status_menu_stop_blinking_sp(void) {
    ui_status* uiStatus = &gUIStatus;

    if (uiStatus->spBlinking != 0) {
        uiStatus->spBlinking = 0;
        uiStatus->spBlinkCounter = 0;
    }
}

void status_menu_start_blinking_sp_bars(s8 numBarsToBlink) {
    ui_status* uiStatus = &gUIStatus;

    uiStatus->spBarsToBlink = numBarsToBlink;
    if (uiStatus->spBlinking != 1) {
        uiStatus->spBlinking = 1;
        uiStatus->spBlinkCounter = 0;
    }
}

void status_menu_start_blinking_starpoints(void) {
    ui_status* uiStatus = &gUIStatus;

    if (uiStatus->starpointsBlinking != 1) {
        uiStatus->starpointsBlinking = 1;
        uiStatus->starpointsBlinkCounter = 0;
    }
}

void status_menu_stop_blinking_starpoints(void) {
    ui_status* uiStatus = &gUIStatus;

    if (uiStatus->starpointsBlinking != 0) {
        uiStatus->starpointsBlinking = 0;
        uiStatus->starpointsBlinkCounter = 0;
    }
}

void decrement_status_menu_disabled(void) {
    ui_status* uiStatus = &gUIStatus;

    if (uiStatus->disabled > 0) {
        uiStatus->disabled--;
    }
}

void increment_status_menu_disabled(void) {
    ui_status* uiStatus = &gUIStatus;

    uiStatus->disabled++;
}

void sync_status_menu(void) {
    player_data* playerData = &gPlayerData;
    ui_status* uiStatus = &gUIStatus;

    uiStatus->displayHP = playerData->curHP;
    uiStatus->displayFP = playerData->curFP;
    uiStatus->displaySP = playerData->specialBarsFilled;
    uiStatus->displayCoins = playerData->coins;
    uiStatus->displayStarpoints = playerData->starPoints;
}

void reset_status_menu(void) {
    player_data* playerData = &gPlayerData;
    ui_status* uiStatus = &gUIStatus;
    s32 i;

    uiStatus->drawPosX = 12;
    uiStatus->drawPosY = -100;
    uiStatus->hidden = 0;
    uiStatus->showTimer = 210;
    uiStatus->unk_3B[0] = 0;
    uiStatus->ignoreChanges = 0;
    uiStatus->unk_45[0] = 0;
    uiStatus->unk_45[1] = 0;
    uiStatus->hpBlinking = 0;
    uiStatus->hpBlinkCounter = 0;
    uiStatus->hpBlinkTimer = 0;
    uiStatus->fpBlinking = 0;
    uiStatus->fpBlinkCounter = 0;
    uiStatus->fpBlinkTimer = 0;
    uiStatus->coinsBlinking = 0;
    uiStatus->coinsBlinkCounter = 0;
    uiStatus->coinsBlinkTimer = 0;
    uiStatus->spBlinking = 0;
    uiStatus->spBlinkCounter = 0;
    uiStatus->disabled = 0;
    uiStatus->starpointsBlinking = 0;
    uiStatus->starpointsBlinkCounter = 0;
    uiStatus->unk_6C[2] = -1;
    uiStatus->displayHP = playerData->curHP;
    uiStatus->displayFP = playerData->curFP;
    uiStatus->displayCoins = playerData->coins;
    uiStatus->displayStarpoints = playerData->starPoints;
    uiStatus->displaySP = playerData->specialBarsFilled;
    uiStatus->unk_3B[1] = 0;

    for (i = 0; i < 2; i++) {
        func_801452B4(uiStatus->hpIconIndexes[i], uiStatus->hpIconIndexes[i]);
    }

    for (i = 0; i < 2; i++) {
        func_801452B4(uiStatus->fpIconIndexes[i], uiStatus->fpIconIndexes[i]);
    }
    
    func_801452B4(uiStatus->coinIconIndex, uiStatus->coinIconIndex);
    func_801452B4(uiStatus->coinIconIndex2, uiStatus->coinIconIndex2);
    func_801452B4(uiStatus->starpointsIconIndex, uiStatus->starpointsIconIndex);
    func_801452B4(uiStatus->starpointsIconIndex2, uiStatus->starpointsIconIndex2);
    func_801452B4(uiStatus->iconIndex8, uiStatus->iconIndex8);
    func_801452B4(uiStatus->iconIndex9, uiStatus->iconIndex9);
    func_801452B4(uiStatus->iconIndexA, uiStatus->iconIndexA);
    func_801452B4(uiStatus->iconIndexB, uiStatus->iconIndexB);
    func_801452B4(uiStatus->iconIndexC, uiStatus->iconIndexC);
}

// uses a jumptable, which we need .rodata support for.
INCLUDE_ASM(code_80850_len_3060, is_ability_active);

s32 is_partner_ability_active(void) {
    return 0;
}

s16 add_coins(s32 amt) {
    player_data* playerData = &gPlayerData;
    s16 newCoins = playerData->coins + amt;

    playerData->coins = newCoins;
    if (newCoins > 999) {
        playerData->coins = 999;
    }
    if (playerData->coins < 0) {
        playerData->coins = 0;
    }

    if (amt > 0) {
        playerData->totalCoinsEarned += amt;
        if (playerData->totalCoinsEarned > 99999) {
            playerData->totalCoinsEarned = 99999;
        }
    }
    return playerData->coins;
}

s8 add_star_points(s32 amt) {
    player_data* playerData = &gPlayerData;
    player_data* playerData2 = &gPlayerData;
    s8 newSP = playerData->starPoints + amt;

    // TODO: probably a macro!
    playerData2->starPoints = newSP;
    if (newSP > 100) {
        playerData2->starPoints = 100;
    }

    // TODO: probably a macro!
    newSP = playerData2->starPoints;
    if (newSP < 0) {
        playerData2->starPoints = 0;
    }
    return gPlayerData.starPoints;
}

u8 add_star_pieces(s32 amt) {
    player_data* playerData = &gPlayerData;
    player_data* playerData2 = &gPlayerData;
    s32 newSP = playerData->starPieces;

    newSP += amt;
    if (newSP > 222) {
        newSP = 222;
    }
    if (newSP < 0) {
        newSP = 0;
    }
    playerData->starPieces = newSP;

    if (amt > 0) {
        playerData->starPiecesCollected += amt;
    }

    return playerData2->starPieces;
}

void increment_max_SP() {
    player_data* playerData = &gPlayerData;

    playerData->maxStarPower++;
    playerData->specialBarsFilled = playerData->maxStarPower * 256;
}

void set_max_SP(s8 newMaxSP) {
    player_data* playerData = &gPlayerData;

    playerData->maxStarPower = newMaxSP;
    playerData->specialBarsFilled = newMaxSP * 256;
}

void add_SP(s32 amt) {
    player_data* playerData = &gPlayerData;
    player_data* playerData2 = &gPlayerData;
    ui_status* uiStatus = &gUIStatus;
    ui_status* uiStatus2 = &gUIStatus;
    s32 phi_v1;
    s32 blah;

    uiStatus->unk_57[0] = 1;
    uiStatus->unk_57[1] = 60;

    phi_v1 = playerData->specialBarsFilled;
    if (phi_v1 < 0) {
        phi_v1 = playerData->specialBarsFilled + 31;
    }
    uiStatus->unk_57[2] = phi_v1 >> 5;

    playerData->specialBarsFilled += amt;

    blah = playerData->maxStarPower << 8;
    if (playerData->specialBarsFilled > blah) {
        playerData->specialBarsFilled = blah;
    }

    uiStatus2->displaySP = playerData2->specialBarsFilled;
}

s32 recover_fp(s32 amt) {
    player_data* playerData = &gPlayerData;
    s32 newFP = playerData->curFP;
    s32 ret;

    if (amt == -2) {
        playerData->curMaxFP += 1;
        playerData->curFP = playerData->curMaxFP;
        return playerData->curMaxFP;
    }

    if (amt > 0) {
        newFP += amt;
    }
    if ((amt == -1) || (ret = newFP, (playerData->curMaxFP < newFP))) {
        ret = playerData->curMaxFP;
    }

    playerData->curFP = ret;
    return ret;
}

s32 recover_hp(s32 amt) {
    player_data* playerData = &gPlayerData;
    s32 newHP = playerData->curHP;
    s32 ret;

    if (amt == -2) {
        playerData->curMaxHP += 1;
        playerData->curHP = playerData->curMaxHP;
        return playerData->curMaxHP;
    }

    if (amt > 0) {
        newHP += amt;
    }
    if ((amt == -1) || (ret = newHP, (playerData->curMaxHP < newHP))) {
        ret = playerData->curMaxHP;
    }

    playerData->curHP = ret;
    return ret;
}

void subtract_hp(s32 amt) {
    player_data* playerData = &gPlayerData;
    s32 newHP = playerData->curHP;

    if (amt > 0) {
        newHP -= amt;
    }
    if (amt < 0 || newHP < 1) {
        newHP = 1;
    }
    playerData->curHP = newHP;
}

s8 has_full_hp(void) {
    player_data* playerData = &gPlayerData;

    return playerData->curMaxHP == playerData->curHP;
}

s8 has_full_fp(void) {
    player_data* playerData = &gPlayerData;

    return playerData->curMaxFP == playerData->curFP;
}

s8 add_fortress_keys(s32 amt) {
    player_data* playerData = &gPlayerData;

    playerData->fortressKeyCount += amt;
    return playerData->fortressKeyCount;
}

s8 subtract_fortress_keys(s8 amt) {
    player_data* playerData = &gPlayerData;
    player_data* playerData2 = &gPlayerData; // required to match

    playerData->fortressKeyCount -= amt;
    if (playerData->fortressKeyCount < 0) {
        playerData->fortressKeyCount = 0;
    }

    return playerData2->fortressKeyCount; // required to use playerData2 here to match
}

s8 get_fortress_key_count(void) {
    return gPlayerData.fortressKeyCount;
}
