#include "fire_flower.h"

extern s32 D_80108A64;
static MenuIcon* D_802A1D70;

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
        D_802A1D70 = create_icon(&D_80108A64);
        set_icon_render_pos(D_802A1D70, iconPosX + 36, iconPosY - 63);
    }

    script->varTable[0] = sleepTime;

    return ApiStatus_DONE2;
}

ApiStatus N(GiveRefundCleanup)(ScriptInstance* script, s32 isInitialCall) {
    BattleStatus* battleStatus = &gBattleStatus;
    Actor* player = battleStatus->playerActor;
    s32 sellValue = gItemTable[battleStatus->selectedItemID].sellValue;

    if (heroes_is_ability_active(player, Ability_REFUND) && sellValue > 0) {
        free_icon(D_802A1D70);
    }

    return ApiStatus_DONE2;
}

ApiStatus N(func_802A123C_716E9C)(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 a = get_variable(script, *args++);
    s32 b = get_variable(script, *args++);
    s32 c = get_variable(script, *args++);

    func_80071030(0, a, b, c, 0);

    return ApiStatus_DONE2;
}

#include "common/FadeBackgroundToBlack.inc.c"

ApiStatus N(func_802A1378_716FD8)(ScriptInstance* script, s32 isInitialCall) {
    if (isInitialCall) {
        script->functionTemp[0].s = 20;
    }

    set_background_color_blend(0, 0, 0, (script->functionTemp[0].s * 10) & 254);

    script->functionTemp[0].s--;
    if (script->functionTemp[0].s == 0) {
        set_background_color_blend(0, 0, 0, 0);
        return ApiStatus_DONE2;
    }

    return ApiStatus_BLOCK;
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
