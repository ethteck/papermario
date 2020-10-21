#include "kmr_12.h"

EntryList entrances = {
    { -126.0f, 0.0f, 12.0f, 90.0f }, // west, towards Red/Blue Goomba miniboss room
    { 471.0f, 0.0f, 12.0f, 270.0f }, // east, towards Goomba King's Fortress
};

MapConfig config = {
    .main = Main,
    .entryList = entrances,
    .entryCount = ENTRY_COUNT(entrances),
    .background = &gBackgroundImage,
    .tattle = MessageID_TATTLE_KMR_12,
};

Script PlayMusic = {
    SI_CALL(SetMusicTrack, 0, Song_PLEASANT_PATH, 0, 8),
    SI_RETURN(),
    SI_END(),
};

ApiStatus GetGoomba(ScriptInstance* script, s32 isInitialCall) {
    script->varTable[0] = get_enemy_safe(NpcId_GOOMBA);
    return ApiStatus_DONE2;
}
