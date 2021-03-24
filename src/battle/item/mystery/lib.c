#include "mystery.h"

extern s32 D_80108A64;
static MenuIcon* D_802A25C0;

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
        D_802A25C0 = create_icon(&D_80108A64);
        set_icon_render_pos(D_802A25C0, iconPosX + 36, iconPosY - 63);
    }

    script->varTable[0] = sleepTime;

    return ApiStatus_DONE2;
}

ApiStatus N(GiveRefundCleanup)(ScriptInstance* script, s32 isInitialCall) {
    BattleStatus* battleStatus = &gBattleStatus;
    Actor* player = battleStatus->playerActor;
    s32 sellValue = gItemTable[battleStatus->selectedItemID].sellValue;

    if (heroes_is_ability_active(player, Ability_REFUND) && sellValue > 0) {
        free_icon(D_802A25C0);
    }

    return ApiStatus_DONE2;
}

#ifdef NON_MATCHING

extern s32 D_802A25E4;
extern MenuIcon* D_802A25C8;
extern s32 D_802A25EC;

void N(func_802A123C_72C7EC)(void) {
    s32 i;
    MenuIcon** ptr;
    s32 var;
    s32* var2;

    if (D_802A25E4 < 6) {
        if (D_802A25E4 > 0) {
            draw_box(0, 7, 0x6A, 0x56, 0, 0x24, 0x24, 0xFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x140, 0xF0, 0);

            gDPSetScissor(gMasterGfxPos++, G_SC_NON_INTERLACE, 108, 90, 139, 118);

            ptr = &D_802A25C8;
            for (i = 0; i < 7; i++) {
                var2 = *ptr;
                var = (D_802A25EC / 100) - 0x68;
                ptr++;
                set_icon_render_pos(var2, 0x7C, (i * 0x1A) - var);
                draw_icon_2(var2);
            }

            var2 = D_802A25C8;
            var = (D_802A25EC / 100) - 0x68;
            set_icon_render_pos(var2, 0x7C, (i * 0x1A) - var);
            draw_icon_2(var2);
        }
    }
}
#else
INCLUDE_ASM(ApiStatus, "battle/item/mystery_72C5B0", battle_item_mystery_func_802A123C_72C7EC, ScriptInstance* script,
            s32 isInitialCall);
#endif

#ifdef NON_MATCHING

extern s32 D_802A25E4;
extern s32 D_802A25E8;
extern s32 D_802A25EC;
extern s32 D_802A25F0;
extern s32 D_802A25F4;
extern s32 D_802A25F8;
extern s16** D_802A25FC;
extern MenuIcon** D_802A25C8;
extern struct N(tempStc) D_8008A680[100];

ApiStatus N(func_802A13E4_72C994)(ScriptInstance* script, s32 isInitialCall) {
    BattleStatus* battleStatus = &gBattleStatus;

    if (isInitialCall) {
        D_802A25E4 = 0;
    }

    switch (D_802A25E4) {
        case 0: {
            s32* tablePtr;
            s32 i;
            f32 t0;
            f32 t1;
            MenuIcon* icon;
            MenuIcon** iconPtr;
            struct N(tempStc)* ic;
            StaticItem* itemTable;

            D_802A25F8 = bind_dynamic_entity_7(NULL, func_802A123C_72C7EC);
            D_802A25EC = rand_int(18200);
            D_802A25F0 = 1000;
            tablePtr = &D_802A25FC;
            *tablePtr = N(D_802A227C_72D82C);

            if (battleStatus->unk_432 > 0) {
                func_80137DC0(1, &t0, &t1);
                if (t1 >= 215.0f) {
                    *tablePtr = N(D_802A229C_72D84C);
                }
            }

            i = 0;
            ic = &D_8008A680;
            itemTable = gItemTable;
            iconPtr = &D_802A25C8;
            for (; i < 7; i++, iconPtr++) {
                icon = create_icon(ic[itemTable[D_802A25FC[i]].iconID].iconId);
                *iconPtr = icon;
                set_icon_flags(icon, 0x80);
            }
            D_802A25E4 = 1;
        }
        break;

        case 1: {
            s32* ECptr = &D_802A25EC;
            s32* F0ptr = &D_802A25F0;

            *ECptr += *F0ptr;
            if (*ECptr / 100 > 181) {
                s32* test = ECptr;
                *test -= 0x4718;
            }

            if (*F0ptr > 400) {
                *F0ptr -= 10;
            } else if (*F0ptr > 100) {
                *F0ptr -= 5;
            } else {
                *F0ptr -= 1;
            }

            if (D_802A25F0 < 10) {
                D_802A25E8 = D_802A25EC / 100;
                if (D_802A25E8 % 26 < 13) {
                    if (rand_int(100) < 80) {
                        D_802A25E4 = 2;
                    } else {
                        D_802A25E4 = 3;
                    }
                } else if (rand_int(100) < 60) {
                    D_802A25E4 = 3;
                } else {
                    D_802A25E4 = 2;
                }
            }
        }
        break;

        case 2: {
            s32* E8ptr = &D_802A25E8;
            s32 a, b, c, d;

            d = *E8ptr % 26;
            a = d;
            c = a + 3;
            if (c < 0) {
                c = a + 6;
            }
            d = c >> 2;
            *E8ptr -= d;
            D_802A25EC = *E8ptr * 100;
            if (d == 0) {
                D_802A25E4 = 4;
            }
        }
        break;

        case 3: {
            s32* E8ptr = &D_802A25E8;
            s32 a, b, c, d;

            d = *E8ptr % 26;
            if (d == 0) {
                D_802A25E4 = 4;
                break;
            }
            a = d;
            b = 26;
            b -= a;
            c = b + 3;
            if (c < 0) {
                c = b + 6;
            }
            c = c >> 2;
            *E8ptr += c;
            D_802A25EC = *E8ptr * 100;
        }
        break;

        case 4: {
            D_802A25F4 = 20;
            D_802A25E4 = 5;
        }
        break;

        case 5: {
            s32* F4ptr = &D_802A25F4;
            s32 i;
            s16 g;
            MenuIcon** iconPtr;

            if (*F4ptr != 0) {
                *F4ptr -= 1;
                break;
            }
            iconPtr = &D_802A25C8;
            i = D_802A25E8 / 26;
            g = D_802A25FC[i];
            battleStatus->selectedItemID = g;
            script->varTable[0] = g;
            func_801235C0(D_802A25F8);
            for (i = 0; i < 7; i++) {
                free_icon(*iconPtr++);
            }
        }
        return ApiStatus_DONE2;
    }

    return ApiStatus_BLOCK;
}
#else
INCLUDE_ASM(ApiStatus, "battle/item/mystery_72C5B0", battle_item_mystery_func_802A13E4_72C994, ScriptInstance* script,
            s32 isInitialCall);
#endif

ApiStatus N(func_802A188C_72CE3C)(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 a = get_variable(script, *args++);
    s32 b = get_variable(script, *args++);
    s32 c = get_variable(script, *args++);

    func_80070190(2, a, b, c, 0, -1.0f, 0, 5);

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
