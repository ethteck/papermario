#include "hustle_drink.h"

extern s32 D_80108A64;
static MenuIcon* D_802A1E70;

ApiStatus N(GiveRefund)(ScriptInstance* script, s32 isInitialCall) {
    BattleStatus* battleStatus = &gBattleStatus;
    Actor* player = battleStatus->playerActor;
    s32 sellValue = gItemTable[battleStatus->selectedItemID].sellValue;
    f32 facingAngleSign = 0.0f;
    s32 sleepTime = 0;
    f32 posX, posY, posZ;
    posY = player->currentPos.y + player->size.y;

    if (heroes_is_ability_active(player, Ability_REFUND) && sellValue > 0) {
        s32 i;
        s32 iconPosX, iconPosY, iconPosZ;

        sellValue = (sellValue * 75 + 99) / 100;

        for (i = 0; i < sellValue; i++) {
            posX = player->currentPos.x;
            posZ = player->currentPos.z;

            make_item_entity(ItemId_COIN, posX, posY, posZ, 0x17, (i * 3) + 1, facingAngleSign, 0);
            add_coins(1);
            facingAngleSign += 30.0f;
        }

        sleepTime = (i * 3) + 30;

        posX = player->currentPos.x;
        posY = player->currentPos.y;
        posZ = player->currentPos.z;
        get_screen_coords(gCurrentCameraID, posX, posY, posZ, &iconPosX, &iconPosY, &iconPosZ);
        D_802A1E70 = create_icon(&D_80108A64);
        set_icon_render_pos(D_802A1E70, iconPosX + 36, iconPosY - 63);
    }

    script->varTable[0] = sleepTime;

    return ApiStatus_DONE2;
}

ApiStatus N(GiveRefundCleanup)(ScriptInstance* script, s32 isInitialCall) {
    BattleStatus* battleStatus = &gBattleStatus;
    Actor* player = battleStatus->playerActor;
    s32 sellValue = gItemTable[battleStatus->selectedItemID].sellValue;

    if (heroes_is_ability_active(player, Ability_REFUND) && sellValue > 0) {
        free_icon(D_802A1E70);
    }

    return ApiStatus_DONE2;
}

ApiStatus N(func_802A123C_72619C)(ScriptInstance* script, s32 isInitialCall) {
    BattleStatus* battleStatus = &gBattleStatus;
    Actor* player = battleStatus->playerActor;

    if (player->debuff != 0) {
        player->debuffDuration = 0;
        player->debuff = 0;
        func_80047898(player->unk_436);
    }
    if (player->staticStatus != 0) {
        player->staticDuration = 0;
        player->staticStatus = 0;
        func_800479A0(player->unk_436);
    }
    if (player->stoneStatus != 0) {
        player->stoneDuration = 0;
        player->stoneStatus = 0;
    }
    if (player->transStatus != 0) {
        player->transDuration = 0;
        player->transStatus = 0;
    }

    return ApiStatus_DONE2;
}

ApiStatus N(func_802A12C4_726224)(ScriptInstance* script, s32 isInitialCall) {
    gBattleStatus.hustleTurns = 2;

    return ApiStatus_DONE2;
}

Script N(UseItemWithEffect) = SCRIPT({
    if (SI_VAR(1) == 0) {
        UseCamPreset(69);
        sleep 10;

        PlaySoundAtActor(ActorID_PLAYER, SoundId_208D);
        SetAnimation(ActorID_PLAYER, 0, PlayerAnim_GOT_ITEM);
        GetActorPos(ActorID_PLAYER, $x, $y, $z);
        $x += 18;
        SetActorSpeed(ActorID_PLAYER, 4.0);
        SetGoalPos(ActorID_PLAYER, $x, $y, $z);
        PlayerRunToGoal(0);

        $y += 45;
        $effectY = $y;
        $effectY += 10;
        $effectY += 2;
        PlayEffect(0x33, 1, $x, $effectY, $z, 1.0, 30, 0, 0, 0, 0, 0, 0, 0);
        MakeItemEntity(SI_VAR(10), $x, $y, $z, 1, 0);
        SI_VAR(10) = $x;

        N(GiveRefund)();
        sleep $x;

        sleep 15;

        N(GiveRefundCleanup)();
        RemoveItemEntity(SI_VAR(10));
    } else {
        GetActorPos(ActorID_PLAYER, $x, $y, $z);
        PlaySoundAtActor(ActorID_PLAYER, SoundId_208D);
        SetAnimation(ActorID_PLAYER, 0, PlayerAnim_GOT_ITEM);
        sleep 4;

        $y += 45;
        $effectY = $y;
        $effectY += 10;
        $effectY += 2;
        PlayEffect(0x33, 1, $x, $effectY, $z, 1.0, 30, 0, 0, 0, 0, 0, 0, 0);
        MakeItemEntity(SI_VAR(10), $x, $y, $z, 1, 0);
        SI_VAR(10) = $x;

        sleep 15;
        RemoveItemEntity(SI_VAR(10));
    }
});

Script N(UseItem) = SCRIPT({
    UseCamPreset(19);
    SetBattleCamTarget(-85, 1, 0);
    SetBattleCamOffsetZ(41);
    SetBattleCamZoom(248);
    MoveBattleCamOver(30);
    sleep 10;

    SetAnimation(ActorID_PLAYER, 0, PlayerAnim_GOT_ITEM);
    GetActorPos(ActorID_PLAYER, $x, $y, $z);
    $y += 45;
    MakeItemEntity(SI_VAR(10), $x, $y, $z, 1, 0);
    SI_VAR(14) = $x;

    N(GiveRefund)();
    sleep $x;

    sleep 15;

    N(GiveRefundCleanup)();
    RemoveItemEntity(SI_VAR(14));
});

Script N(PlayerGoHome) = SCRIPT({
    UseIdleAnimation(ActorID_PLAYER, 0);
    SetGoalToHome(ActorID_PLAYER);
    SetActorSpeed(ActorID_PLAYER, 8.0);
    SetAnimation(ActorID_PLAYER, 0, PlayerAnim_RUNNING);
    PlayerRunToGoal(0);

    SetAnimation(ActorID_PLAYER, 0, PlayerAnim_2);
    UseIdleAnimation(ActorID_PLAYER, 1);
});

Script N(EatItem) = SCRIPT({
    spawn {
        loop 4 {
            PlaySoundAtActor(ActorID_PLAYER, SoundId_2095);
            sleep 10;
        }
    }
    SetAnimation(ActorID_PLAYER, 0, PlayerAnim_EAT);
    sleep 45;
});

Script N(DrinkItem) = SCRIPT({
    spawn {
        loop 4 {
            PlaySoundAtActor(ActorID_PLAYER, SoundId_2095);
            sleep 10;
        }
    }
    SetAnimation(ActorID_PLAYER, 0, PlayerAnim_DRINK);
    sleep 45;
});
