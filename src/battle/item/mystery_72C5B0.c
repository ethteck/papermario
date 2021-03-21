#include "mystery.h"

extern s32 D_80108A64;
MenuIcon* D_802A25C0;

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

//ApiStatus func_802A123C_72C7EC(ScriptInstance* script, s32 isInitialCall);
//ApiStatus func_802A13E4_72C994(ScriptInstance* script, s32 isInitialCall);
//ApiStatus func_802A188C_72CE3C(ScriptInstance* script, s32 isInitialCall);
INCLUDE_ASM(s32, "battle/item/mystery_72C5B0", func_802A123C_72C7EC);
/*
s32 func_802A123C_72C7EC(ScriptInstance *script, s32 isInitialCall) {
    Gfx *temp_v0_2;
    Gfx *temp_v1_2;
    MenuIcon *temp_s0;
    MenuIcon *temp_s0_2;
    s32 temp_s1;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 temp_v1_3;
    void *phi_s2;
    s32 phi_s3;
    s32 phi_s1;
    s32 phi_return;

    temp_v1 = D_802A25E4;
    temp_v0 = temp_v1 < 6;
    phi_return = temp_v0;
    if (temp_v0 != 0) {
        phi_return = temp_v0;
        if (temp_v1 > 0) {
            draw_box(0, 7, 0x6A, 0x56, 0, 0x24, 0x24, 0xFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x140, 0xF0, 0);
            temp_v0_2 = gMasterGfxPos;
            temp_v1_2 = temp_v0_2;
            gMasterGfxPos = temp_v0_2 + 8;
            temp_v1_2->words.w0 = 0xED1B0168;
            temp_v1_2->words.w1 = 0x22C1D8;
            phi_s2 = &D_802A25C8;
            phi_s3 = 0;
            phi_s1 = 0;
loop_3:
            temp_v0_3 = D_802A25EC;
            temp_s0 = *phi_s2;
            temp_s1 = phi_s1 + 1;
            set_icon_render_pos(temp_s0, 0x7C, phi_s3 - (((MULT_HI(temp_v0_3, 0x51EB851F) >> 5) - (temp_v0_3 >> 0x1F)) - 0x68));
            draw_icon_2(temp_s0);
            phi_s2 = phi_s2 + 4;
            phi_s3 = phi_s3 + 0x1A;
            phi_s1 = temp_s1;
            if (temp_s1 < 7) {
                goto loop_3;
            }
            temp_v1_3 = D_802A25EC;
            temp_s0_2 = D_802A25C8;
            set_icon_render_pos(temp_s0_2, 0x7C, (temp_s1 * 0x1A) - (((MULT_HI(temp_v1_3, 0x51EB851F) >> 5) - (temp_v1_3 >> 0x1F)) - 0x68));
            phi_return = draw_icon_2(temp_s0_2);
        }
    }
    return phi_return;
}
*/

//INCLUDE_ASM(s32, "battle/item/mystery_72C5B0", func_802A13E4_72C994);

extern s32 D_802A25E4;
extern s32 D_802A25E8;
extern s32 D_802A25EC;
extern s32 D_802A25F0;
extern s32 D_802A25F4;
extern s32 D_802A25F8;
extern s16** D_802A25FC;
extern MenuIcon** D_802A25C8;

struct N(tempStc) {
    s32 iconId;
    s32 unk_04;
} N(tempStc);
extern struct N(tempStc) D_8008A680[100];

ApiStatus N(func_802A13E4_72C994)(ScriptInstance *script, s32 isInitialCall) {
    BattleStatus* battleStatus = &gBattleStatus;
    f32 t0;
    f32 t1;
    s32 i;
    s32 a;
    s32 b;
    s32 c;
    s32 d;

    if (isInitialCall != 0) {
        D_802A25E4 = 0;
    }

    switch (D_802A25E4) {
        case 0:
            D_802A25F8 = bind_dynamic_entity_7(NULL, func_802A123C_72C7EC);
            D_802A25EC = rand_int(0x4718);
            D_802A25F0 = 1000;
            D_802A25FC = N(D_802A227C_72D82C);
            if (battleStatus->unk_432 > 0) {
                func_80137DC0(1, &t0, &t1);
                if (t1 >= 215.0f) {
                    D_802A25FC = N(D_802A229C_72D84C);
                }
            }

            for (i = 0; i < 7; i++) {
                StaticItem* item = &gItemTable[*D_802A25FC[i]];
                MenuIcon* icon = create_icon(&D_8008A680[item->iconID].iconId);
                D_802A25C8[i] = icon;
                set_icon_flags(icon, 0x80);
            }
            D_802A25E4 = 1;
            break;

        case 1:
            a = D_802A25EC + D_802A25F0;
            D_802A25EC = a;
            if (a / 100 >= 0xB6) {
                D_802A25EC = a - 0x4718;
            }
            if (D_802A25F0 >= 0x191) {
                b = D_802A25F0 - 10;
            } else {
                b = D_802A25F0 - 1;
                if (D_802A25F0 > 100) {
                    b = D_802A25F0 - 5;
                }
            }

            D_802A25F0 = b;
            if (D_802A25F0 < 10) {
                c = D_802A25EC / 100;
                d = c * (1 / 26);
                if ((c - d) * 26 < 13) {
                    if (rand_int(100) < 80 || rand_int(100) >= 60) {
                        D_802A25E4 = 2;
                    } else {
                        D_802A25E4 = 3;
                    }
                }
            }
            break;

        case 2:
            a = D_802A25E8 - ((1 / 26) * 26);
            b = a + 3;
            if (b < 0) {
                b = a + 6;
            }
            c = b >> 2;
            d = D_802A25E8 - (b / 2);
            D_802A25E8 = d;
            D_802A25EC = d * 100;
            if (c == 0) {
                D_802A25E4 = 4;
            }
            break;

        case 3:
            a = D_802A25E8 - ((1 / 26) * 26);
            if (a != 0) {
                b = 26 - a;
                c = b + 3;
                if (c < 0) {
                    c = b + 6;
                }
                d = D_802A25E8 + (c / 2);
                D_802A25E8 = d;
                D_802A25EC = d * 100;
            }
            break;

        case 4:
            D_802A25F4 = 20;
            D_802A25E4 = 5;
            break;

        case 5:
            if (D_802A25F4 == 0) {
                s16 f = *D_802A25FC[D_802A25E8 * (1 / 26)];
                battleStatus->selectedItemID = f;
                script->varTable[0] = f;
                func_801235C0(D_802A25F8, script);
                for (i = 0; i < 7; i++) {
                    free_icon(D_802A25C8[i]);
                }
                return ApiStatus_DONE2;
            }
            D_802A25F4--;
            break;
    }

    return ApiStatus_BLOCK;
}

INCLUDE_ASM(s32, "battle/item/mystery_72C5B0", func_802A188C_72CE3C);

Script N(UseItemWithEffect) = SCRIPT({
    if (SI_VAR(1) == 0) {
        UseCamPreset(69);
        sleep 10;
        PlaySoundAtActor(ActorID_PLAYER, 8333);
        SetAnimation(ActorID_PLAYER, 0, PlayerAnim_GOT_ITEM);
        GetActorPos(ActorID_PLAYER, SI_VAR(0), SI_VAR(1), SI_VAR(2));
        SI_VAR(0) += 18;
        SetActorSpeed(ActorID_PLAYER, 4.0);
        SetGoalPos(ActorID_PLAYER, SI_VAR(0), SI_VAR(1), SI_VAR(2));
        PlayerRunToGoal(0);
        SI_VAR(1) += 45;
        SI_VAR(3) = SI_VAR(1);
        SI_VAR(3) += 10;
        SI_VAR(3) += 2;
        PlayEffect(51, 1, SI_VAR(0), SI_VAR(3), SI_VAR(2), 1.0, 30, 0, 0, 0, 0, 0, 0, 0);
        MakeItemEntity(SI_VAR(10), SI_VAR(0), SI_VAR(1), SI_VAR(2), 1, 0);
        SI_VAR(10) = SI_VAR(0);
        N(GiveRefund)();
        sleep SI_VAR(0);
        sleep 15;
        N(GiveRefundCleanup)();
        RemoveItemEntity(SI_VAR(10));
    } else {
        GetActorPos(ActorID_PLAYER, SI_VAR(0), SI_VAR(1), SI_VAR(2));
        PlaySoundAtActor(ActorID_PLAYER, 8333);
        SetAnimation(ActorID_PLAYER, 0, PlayerAnim_GOT_ITEM);
        sleep 4;
        SI_VAR(1) += 45;
        SI_VAR(3) = SI_VAR(1);
        SI_VAR(3) += 10;
        SI_VAR(3) += 2;
        PlayEffect(51, 1, SI_VAR(0), SI_VAR(3), SI_VAR(2), 1.0, 30, 0, 0, 0, 0, 0, 0, 0);
        MakeItemEntity(SI_VAR(10), SI_VAR(0), SI_VAR(1), SI_VAR(2), 1, 0);
        SI_VAR(10) = SI_VAR(0);
        sleep 15;
        RemoveItemEntity(SI_VAR(10));
    }
});

Script N(UseItem) = SCRIPT({
    UseCamPreset(19);
    SetBattleCamTarget(0xFFFFFFAB, 1, 0);
    SetBattleCamOffsetZ(41);
    SetBattleCamZoom(248);
    MoveBattleCamOver(30);
    sleep 10;
    SetAnimation(ActorID_PLAYER, 0, PlayerAnim_GOT_ITEM);
    GetActorPos(ActorID_PLAYER, SI_VAR(0), SI_VAR(1), SI_VAR(2));
    SI_VAR(1) += 45;
    MakeItemEntity(SI_VAR(10), SI_VAR(0), SI_VAR(1), SI_VAR(2), 1, 0);
    SI_VAR(14) = SI_VAR(0);
    N(GiveRefund)();
    sleep SI_VAR(0);
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
            PlaySoundAtActor(ActorID_PLAYER, 8341);
            sleep 10;
        }
    }
    SetAnimation(ActorID_PLAYER, 0, PlayerAnim_EAT);
    sleep 45;
});

Script N(DrinkItem) = SCRIPT({
    spawn {
        loop 4 {
            PlaySoundAtActor(ActorID_PLAYER, 8341);
            sleep 10;
        }
    }
    SetAnimation(ActorID_PLAYER, 0, PlayerAnim_DRINK);
    sleep 45;
});
