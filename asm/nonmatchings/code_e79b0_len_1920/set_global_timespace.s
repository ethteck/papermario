.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel set_global_timespace
/* E8BB0 802C4200 3C01802E */  lui       $at, 0x802e
/* E8BB4 802C4204 03E00008 */  jr        $ra
/* E8BB8 802C4208 E42C9CA8 */   swc1     $f12, -0x6358($at)
