#include "mushroom.h"

Script N(script6) = SCRIPT({
    SetActorYaw(ActorID_PLAYER, 30);
    sleep 1;
    SetActorYaw(ActorID_PLAYER, 60);
    sleep 1;
    SetActorYaw(ActorID_PLAYER, 90);
    sleep 1;
    SetActorYaw(ActorID_PLAYER, 120);
    sleep 1;
    SetActorYaw(ActorID_PLAYER, 150);
    sleep 1;
    SetActorYaw(ActorID_PLAYER, 180);
    sleep 10;
    SI_VAR(1) = SI_VAR(15);
    await N(UseItem);
    SI_VAR(14) = SI_VAR(10);
    SetAnimation(ActorID_PLAYER, 0, PlayerAnim_THROW);
    spawn {
        sleep 20;
        SetAnimation(ActorID_PLAYER, 0, PlayerAnim_2);
    }
    func_802D3474(SI_VAR(10), 0x80283EE8);
    GetActorPos(ActorID_PLAYER, SI_VAR(0), SI_VAR(1), SI_VAR(2));
    SI_VAR(0) += 0;
    SI_VAR(1) += 30;
    SI_VAR(2) += 5;
    func_802D36E0(SI_VAR(10), SI_VAR(0), SI_VAR(1), SI_VAR(2));
    func_802D3F74(SI_VAR(10), 32);
    spawn {
        GetActorPos(ActorID_PLAYER, SI_VAR(0), SI_VAR(1), SI_VAR(2));
        SI_VAR(1) += 45;
        MakeItemEntity(SI_VAR(14), SI_VAR(0), SI_VAR(1), SI_VAR(2), 1, 0);
        SI_VAR(14) = SI_VAR(0);
        loop 25 {
            func_802D378C(SI_VAR(10), SI_VAR(0), SI_VAR(1), SI_VAR(2));
            N(func_802A123C_715A8C)(SI_VAR(0), SI_VAR(1), SI_VAR(2));
            sleep 1;
        }
        RemoveItemEntity(SI_VAR(14));
    }
    InitTargetIterator();
    SetGoalToTarget(ActorID_SELF);
    GetGoalPos(ActorID_SELF, SI_VAR(0), SI_VAR(1), SI_VAR(2));
    SetBattleCamTarget(0xFFFFFF83, 1, 0);
    SetBattleCamOffsetZ(41);
    SetBattleCamZoom(248);
    MoveBattleCamOver(25);
    func_802D39FC(SI_VAR(10), 0.400390625);
    SI_VAR(2) += 5;
    func_802D3C58(SI_VAR(10), SI_VAR(0), SI_VAR(1), SI_VAR(2), 25);
    AddBattleCamZoom(100);
    MoveBattleCamOver(30);
    GetActorPos(ActorID_PARTNER, SI_VAR(0), SI_VAR(1), SI_VAR(2));
    SI_VAR(1) += 25;
    func_802D7520(SI_VAR(0), SI_VAR(1), SI_VAR(2), SI_VAR(11));
    if (SI_VAR(11) > 0) {
        N(func_802A12EC_715B3C)(SI_VAR(11));
    }
    sleep 30;
    GetActorPos(ActorID_PARTNER, SI_VAR(0), SI_VAR(1), SI_VAR(2));
    func_802D75D8(SI_VAR(0), SI_VAR(1), SI_VAR(2), SI_VAR(11));
    sleep 20;
    SetActorYaw(ActorID_PLAYER, 150);
    sleep 1;
    SetActorYaw(ActorID_PLAYER, 120);
    sleep 1;
    SetActorYaw(ActorID_PLAYER, 90);
    sleep 1;
    SetActorYaw(ActorID_PLAYER, 60);
    sleep 1;
    SetActorYaw(ActorID_PLAYER, 30);
    sleep 1;
    SetActorYaw(ActorID_PLAYER, 0);
    sleep 10;
});

Script N(main) = SCRIPT({
    SI_VAR(14) = SI_VAR(1);
    GetMenuSelection(SI_VAR(0), SI_VAR(1), SI_VAR(2));
    SI_VAR(10) = SI_VAR(1);
    N(func_802A15A0_715DF0)(SI_VAR(10));
    InitTargetIterator();
    GetOwnerTarget(SI_VAR(0), SI_VAR(1));
    if (SI_VAR(0) == ActorID_PARTNER) {
        await N(script6);
        return;
    }
    SI_VAR(1) = SI_VAR(14);
    await N(UseItemWithEffect);
    await N(EatItem);
    if (SI_VAR(15) == 1) {
        SetAnimation(ActorID_PLAYER, 0, PlayerAnim_STICK_OUT_TONGUE);
    }
    if (SI_VAR(11) > 0) {
        GetActorPos(ActorID_PLAYER, SI_VAR(0), SI_VAR(1), SI_VAR(2));
        SI_VAR(0) += 0;
        SI_VAR(1) += 35;
        N(func_802A1378_715BC8)(SI_VAR(0), SI_VAR(1), SI_VAR(2), SI_VAR(11));
    }
    if (SI_VAR(12) > 0) {
        GetActorPos(ActorID_PLAYER, SI_VAR(0), SI_VAR(1), SI_VAR(2));
        SI_VAR(0) += 20;
        SI_VAR(1) += 25;
        N(func_802A1438_715C88)(SI_VAR(0), SI_VAR(1), SI_VAR(2), SI_VAR(12));
    }
    GetActorPos(ActorID_PLAYER, SI_VAR(0), SI_VAR(1), SI_VAR(2));
    SI_VAR(1) += 25;
    func_802D7520(SI_VAR(0), SI_VAR(1), SI_VAR(2), SI_VAR(11));
    if (SI_VAR(11) != 0) {
        N(AddHP)(SI_VAR(11));
    }
    if (SI_VAR(12) != 0) {
        N(AddFP)(SI_VAR(12));
    }
    if (SI_VAR(15) == 0) {
        sleep 10;
        SetAnimation(ActorID_PLAYER, 0, PlayerAnim_THUMBS_UP);
        sleep 30;
    } else {
        sleep 30;
    }
    GetActorPos(ActorID_PLAYER, SI_VAR(0), SI_VAR(1), SI_VAR(2));
    func_802D75D8(SI_VAR(0), SI_VAR(1), SI_VAR(2), SI_VAR(11));
    SetAnimation(ActorID_PLAYER, 0, PlayerAnim_2);
    sleep 20;
    await N(PlayerGoHome);
});
