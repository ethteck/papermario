#include "thunder_bolt.h"

Script N(main) = SCRIPT({
    SI_VAR(10) = c ItemId_THUNDER_BOLT;
    await N(UseItemWithEffect);
    spawn {
        sleep 5;
        UseCamPreset(2);
        MoveBattleCamOver(20);
    }
    N(FadeBackgroundToBlack)();
    PlaySound(SoundId_365);
    sleep 10;
    InitTargetIterator();
    SetGoalToTarget(ActorID_SELF);
    ItemCheckHit(SI_VAR(0), 0x10000000, 0, SI_VAR(0), 0);
    if (SI_VAR(0) == 6) {
        goto 1;
    }
    N(func_802A123C_722D7C)();
    sleep 5;
    StartRumble(10);
    ShakeCam(1, 0, 5, 1.0);
    GetItemPower(ItemId_THUNDER_RAGE, SI_VAR(0), SI_VAR(1));
    ItemDamageEnemy(SI_VAR(0), 0x38000020, 0, SI_VAR(0), 32);
1:
    sleep 5;
    UseCamPreset(3);
    MoveBattleCamOver(20);
    SetAnimation(ActorID_PLAYER, 0, PlayerAnim_2);
    sleep 30;
    N(func_802A1420_722F60)();
    await N(PlayerGoHome);
});
