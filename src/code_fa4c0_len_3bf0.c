#include "common.h"

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D5B10);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D5C70);

ApiStatus FadeOutMusic(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 itemID = get_variable(script, *args++);
    s32* ptrNextPos = args++;

    return (set_music_track(itemID, -1, 0, get_variable(script, *ptrNextPos++), 8) != 0) * 2;
}

ApiStatus SetMusicTrack(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 musicPlayer = get_variable(script, *args++);
    s32 songID = get_variable(script, *args++);
    s32 variation = get_variable(script, *args++);
    s16 volume = get_variable(script, *args++);

    return (set_music_track(musicPlayer, songID, variation, 0x1F4, volume) != 0) * 2;
}

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", FadeInMusic, ScriptInstance* script, s32 isInitialCall);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D5EE0);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D5F28);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D5FA4);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D5FD8);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D5FF8);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D6050);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D6070);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D6090);

//INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", ClearAmbientSounds);
ApiStatus ClearAmbientSounds(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 flags = get_variable(script, *args++);

    return (play_ambient_sounds(-1, flags) != 0) * 2;
}

ApiStatus PlayAmbientSounds(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 soundID = get_variable(script, *args++);

    return (play_ambient_sounds(soundID, 0xFA) != 0) * 2;
}

ApiStatus PlaySound(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 soundID = get_variable(script, *args++);

    play_sound(soundID);
    return ApiStatus_DONE2;
}

ApiStatus func_802D617C(ScriptInstance* script, s32 initialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 soundID = get_variable(script, *args++);
    s32 value2 = get_variable(script, *args++);

    _play_sound(soundID, value2 & 0xFF, 0, 0);
    return ApiStatus_DONE2;
}

ApiStatus PlaySoundAt(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 soundID = get_variable(script, *args++);
    s32 value2 = get_variable(script, *args++);
    s32 x = get_variable(script, *args++);
    s32 y = get_variable(script, *args++);
    s32 z = get_variable(script, *args++);

    play_sound_at_position(soundID, value2, x, y, z);
    return ApiStatus_DONE2;
}

ApiStatus StopSound(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    stop_sound(get_variable(script, *args++));
    return ApiStatus_DONE2;
}

ApiStatus func_802D62E4(ScriptInstance* script, s32 initialCall) {
    Bytecode* args = script->ptrReadPos;

    func_80149A6C(get_variable(script, *args++), 1);
    return ApiStatus_DONE2;
}

ApiStatus UseDoorSounds(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    gCurrentDoorSoundsSet = get_variable(script, *args++);
    return ApiStatus_DONE2;
}

ApiStatus func_802D6340(ScriptInstance* script, s32 initialCall) {
    Bytecode* args = script->ptrReadPos;

    D_80151308 = get_variable(script, *args++);
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", PlaySoundAtF, ScriptInstance* script, s32 isInitialCall);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D6420);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D663C);

ApiStatus RemoveKeyItemAt(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 index = get_variable(script, *args++);
    s16* ptrKeyItems = (s16*) &gPlayerData.keyItems;

    ptrKeyItems[index] = 0;
    return ApiStatus_DONE2;
}

ApiStatus RemoveItemAt(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 index = get_variable(script, *args++);
    s16* ptrInvItems = (s16*) &gPlayerData.invItems;

    ptrInvItems[index] = 0;
    sort_items();
    return ApiStatus_DONE2;
}

ApiStatus AddKeyItem(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 value = *args++;
    PlayerData* playerData = &gPlayerData;
    s32 itemID = get_variable(script, value);
    s32 i;

    if (itemID == ItemId_FORTRESS_KEY) {
        playerData->fortressKeyCount++;
        return ApiStatus_DONE2;
    }

    for (i = 0; i < ARRAY_COUNT(playerData->keyItems); i++) {
        if (playerData->keyItems[i] == 0) {
            break;
        }
    }

    if (i < ARRAY_COUNT(playerData->keyItems)) {
        playerData->keyItems[i] = itemID;
    }
    return ApiStatus_DONE2;
}

ApiStatus func_802D6954(ScriptInstance* script, s32 isInitialCall) {
    enable_player_input();
    enable_player_static_collisions();
    func_800EF600();
    D_8009A650[0] &= ~0x40;
    return ApiStatus_DONE2;
}

ApiStatus HasKeyItem(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 itemID = get_variable(script, *args++);
    s32 value = *args++;
    PlayerData* playerData = &gPlayerData;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(playerData->keyItems); i++) {
        if (playerData->keyItems[i] == itemID) {
            break;
        }
    }
    set_variable(script, value, i < ARRAY_COUNT(playerData->keyItems));
    return ApiStatus_DONE2;
}

ApiStatus FindKeyItem(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 itemID = get_variable(script, *args++);
    s32 value = *args++;
    PlayerData* playerData = &gPlayerData;
    s32 i;
    s32 itemIndex;

    for (i = 0; i < ARRAY_COUNT(playerData->keyItems); i++) {
        if (playerData->keyItems[i] == itemID) {
            break;
        }
    }

    itemIndex = -1;
    if (i != ARRAY_COUNT(playerData->keyItems)) {
        itemIndex = i;
    }

    set_variable(script, value, itemIndex);
    return ApiStatus_DONE2;
}

ApiStatus AddItem(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 itemID = get_variable(script, *args++);
    Bytecode outItemIdx = *args++;

    set_variable(script, outItemIdx, add_item(itemID));
    return ApiStatus_DONE2;
}

ApiStatus func_802D6AF0(ScriptInstance* script, s32 initialCall) {
    set_variable(script, *script->ptrReadPos, 0);
    return ApiStatus_DONE2;
}

ApiStatus FindItem(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 itemID = get_variable(script, *args++);
    s32 value = *args++;
    PlayerData* playerData = &gPlayerData;
    s32 i;
    s32 itemIndex;

    for (i = 0; i < ARRAY_COUNT(playerData->invItems); i++) {
        if (playerData->invItems[i] == itemID) {
            break;
        }
    }

    itemIndex = -1;
    if (i != ARRAY_COUNT(playerData->invItems)) {
        itemIndex = i;
    }

    set_variable(script, value, itemIndex);
    return ApiStatus_DONE2;
}

ApiStatus RemoveItem(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 itemID = get_variable(script, *args++);
    s32 value = *args++;
    PlayerData* playerData = &gPlayerData;
    s32 i;
    s32 itemIndex;

    for (i = 0; i < ARRAY_COUNT(playerData->invItems); i++) {
        if (playerData->invItems[i] == itemID) {
            break;
        }
    }

    itemIndex = -1;
    if (i != ARRAY_COUNT(playerData->invItems)) {
        itemIndex = i;
    }

    if (itemIndex >= 0) {
        // This is `playerData->invItems[i]`, but we have to do weird
        // pointer math to get the output asm to exactly match :/
        *(playerData->invItems + i) = 0;
    }
    sort_items();

    set_variable(script, value, itemIndex);
    return ApiStatus_DONE2;
}

ApiStatus CountFortressKeys(ScriptInstance* script, s32 isInitialCall) {
    s32 outVar = *script->ptrReadPos;

    set_variable(script, outVar, get_fortress_key_count());
    return ApiStatus_DONE2;
}

ApiStatus RemoveFortressKeys(ScriptInstance* script, s32 isInitialCall) {
    s32 num = get_variable(script, *script->ptrReadPos);

    subtract_fortress_keys(num);
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", MakeItemEntity, ScriptInstance* script, s32 isInitialCall);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", DropItemEntity, ScriptInstance* script, s32 isInitialCall);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", DropItemEntityB, ScriptInstance* script, s32 isInitialCall);
/*
// Close to working
ApiStatus DropItemEntityB(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 itemID = get_variable(script, *args++);
    s32 x = get_variable(script, *args++);
    s32 y = get_variable(script, *args++);
    s32 z = get_variable(script, *args++);
    s32 itemSpawnMode = get_variable(script, *args++);
    s32 pickupFlag = get_variable(script, *args++);

    script->varTable[0] = make_item_entity_nodelay(itemID, x, y, z);
    set_item_entity_flags(script, 0x4000);
    return ApiStatus_DONE2;
}
*/

ApiStatus RemoveItemEntity(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 itemEntityIndex = get_variable(script, *args++);

    remove_item_entity_by_index(itemEntityIndex);
    return ApiStatus_DONE2;
}

ApiStatus AddBadge(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 badgeID = get_variable(script, *args++);
    Bytecode outBadgeIdx = *args++;

    set_variable(script, outBadgeIdx, add_badge(badgeID));
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", RemoveBadge, ScriptInstance* script, s32 isInitialCall);

ApiStatus SetItemPos(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ItemEntity* ptrItemEntity;
    s32 itemEntityIndex;
    s32 x, y, z;

    itemEntityIndex = get_variable(script, *args++);
    x = get_variable(script, *args++);
    y = get_variable(script, *args++);
    z = get_variable(script, *args++);

    ptrItemEntity = (ItemEntity*) get_item_entity(itemEntityIndex);
    ptrItemEntity->position.x = x;
    ptrItemEntity->position.y = y;
    ptrItemEntity->position.z = z;
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", SetItemFlags, ScriptInstance* script, s32 isInitialCall);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D721C);

ApiStatus AddCoin(ScriptInstance* script, s32 isInitialCall) {
    script->varTable[0] = add_coins(get_variable(script, *script->ptrReadPos));
    return ApiStatus_DONE2;
}

ApiStatus AddStarPoints(ScriptInstance* script, s32 isInitialCall) {
    script->varTable[0] = add_star_points(get_variable(script, *script->ptrReadPos));
    return ApiStatus_DONE2;
}

ApiStatus AddStarPieces(ScriptInstance* script, s32 isInitialCall) {
    script->varTable[0] = add_star_pieces(get_variable(script, *script->ptrReadPos));
    return ApiStatus_DONE2;
}

ApiStatus GetItemPower(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 itemIdx = get_variable(script, *args++);
    Bytecode out1 = *args++;
    Bytecode out2 = *args++;

    set_variable(script, out1, (&gItemTable[itemIdx])->potencyA);
    set_variable(script, out2, (&gItemTable[itemIdx])->potencyB);
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", ShowGotItem, ScriptInstance* script, s32 isInitialCall);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D7460);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D74C0);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D7520);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D75D8);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D7690);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", ShowEmote, ScriptInstance* script, s32 isInitialCall);

ApiStatus RemoveEffect(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    remove_effect(get_variable(script, *args++));
    return ApiStatus_DONE2;
}

ApiStatus func_802D7B10(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32* ptrValue = get_variable(script, *args++);

    *ptrValue |= 0x10;
    return ApiStatus_DONE2;
}

ApiStatus func_802D7B44(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32* ptrValue = get_variable(script, *args++);
    s32* ptrTemp = ptrValue[3];

    ptrTemp[5] = 10;
    return ApiStatus_DONE2;
}

ApiStatus func_802D7B74(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32* ptrValue = get_variable(script, *args++);
    s32* ptrTemp = ptrValue[3];

    ptrTemp[12] = 5;
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D7BA4);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D7CF8);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D7E08);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", ShowSleepBubble);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", func_802D8248);

INCLUDE_ASM(s32, "code_fa4c0_len_3bf0", PlayEffect);
