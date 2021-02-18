#ifndef _WORLD_PARTNERS_H
#define _WORLD_PARTNERS_H

#include "common.h"

typedef struct WorldPartner {
    /* 0x00 */ void* dmaStart;
    /* 0x04 */ void* dmaEnd;
    /* 0x08 */ void* dmaDest; ///< Always `0x802BD100`
    /* 0x0C */ s32 isFlying;
    /* 0x10 */ void (*init)(Npc* partner);
    /* 0x14 */ Bytecode* takeOut;
    /* 0x18 */ Bytecode* update;
    /* 0x1C */ Bytecode* useAbility;
    /* 0x20 */ Bytecode* putAway;
    /* 0x24 */ NpcAnimID idle;
    /* 0x28 */ UNK_FUN_PTR(testFirstStrike);
    /* 0x2C */ s32 (*canUseAbility)(Npc* partner);
    /* 0x30 */ s32 (*canPlayerPause)(Npc* partner);
    /* 0x34 */ void (*preBattle)(Npc* partner);
    /* 0x38 */ UNK_FUN_PTR(postBattle);
    /* 0x3C */ Bytecode* whileRiding;
} WorldPartner; // size = 0x40

/// Set to 0 when partner NPC loaded
extern s32 D_8010C954;
extern s32 D_8010CFD8;
extern WorldPartner wPartners[12]; // wPartners
extern WorldPartner* D_8010CFEC; // wPartner
extern NpcId D_8010CFD0; // wPartnerNpcIndex
extern Npc* D_8010C930; // wPartnerNpc

#endif
