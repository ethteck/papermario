.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024032C_89A67C
/* 89A67C 8024032C 3C028016 */  lui       $v0, 0x8016
/* 89A680 80240330 8442A552 */  lh        $v0, -0x5aae($v0)
/* 89A684 80240334 AC820084 */  sw        $v0, 0x84($a0)
/* 89A688 80240338 03E00008 */  jr        $ra
/* 89A68C 8024033C 24020002 */   addiu    $v0, $zero, 2
