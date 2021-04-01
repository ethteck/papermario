#include "sbk_01.h"

#include "world/common/SpawnSunEffect.inc.c"

Script N(Main);
s32 N(npcGroupList_802407D8)[];

Vec4f N(entryList)[] = {
    { -475.0f, 0.0f, 0.0f, 90.0f },
    { 475.0f, 0.0f, 0.0f, 270.0f },
    { 0.0f, 0.0f, -475.0f, 180.0f },
    { 0.0f, 0.0f, 475.0f, 0.0f },
};

MapConfig N(config) = {
    .main = N(Main),
    .entryList = N(entryList),
    .entryCount = ENTRY_COUNT(N(entryList)),
    .background = &gBackgroundImage,
    .tattle = 0x190061,
};

Script N(ExitWalk_802400E0) = SCRIPT({
    group 27;
    UseExitHeading(60, 0);
    spawn ExitWalk;
    GotoMap("sbk_00", 1);
    sleep 100;
});

Script N(ExitWalk_8024013C) = SCRIPT({
    group 27;
    UseExitHeading(60, 1);
    spawn ExitWalk;
    GotoMap("sbk_02", 0);
    sleep 100;
});

Script N(ExitWalk_80240198) = SCRIPT({
    group 27;
    UseExitHeading(60, 3);
    spawn ExitWalk;
    GotoMap("sbk_11", 2);
    sleep 100;
});

Script N(Script_802401F4) = SCRIPT({
    bind N(ExitWalk_802400E0) to 524288 7;
    bind N(ExitWalk_8024013C) to 524288 3;
    bind N(ExitWalk_80240198) to 524288 5;
});

Script N(Main) = SCRIPT({
    WORLD_LOCATION = LOCATION_DRY_DRY_DESERT;
    SetSpriteShading(-1);
    if (STORY_PROGRESS == STORY_CH2_GOT_PULSE_STONE) {
        DisablePulseStone(0);
    }
    SetCamPerspective(0, 3, 25, 16, 4096);
    SetCamBGColor(0, 0, 0, 0);
    SetCamEnabled(0, 1);
    SetCamLeadPlayer(0, 0);
    MakeNpcs(0, N(npcGroupList_802407D8));
    N(SpawnSunEffect)();
    SetMusicTrack(0, SONG_DRY_DRY_DESERT, 0, 8);
    SI_VAR(0) = N(Script_802401F4);
    spawn EnterWalk;
});
