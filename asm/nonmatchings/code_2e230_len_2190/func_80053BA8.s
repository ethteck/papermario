.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80053BA8
/* 2EFA8 80053BA8 9482001A */  lhu       $v0, 0x1a($a0)
/* 2EFAC 80053BAC 2442FFFF */  addiu     $v0, $v0, -1
/* 2EFB0 80053BB0 A482001A */  sh        $v0, 0x1a($a0)
/* 2EFB4 80053BB4 00021400 */  sll       $v0, $v0, 0x10
/* 2EFB8 80053BB8 10400006 */  beqz      $v0, .L80053BD4
/* 2EFBC 80053BBC 00000000 */   nop      
/* 2EFC0 80053BC0 8C820010 */  lw        $v0, 0x10($a0)
/* 2EFC4 80053BC4 8C830014 */  lw        $v1, 0x14($a0)
/* 2EFC8 80053BC8 00431021 */  addu      $v0, $v0, $v1
/* 2EFCC 80053BCC 03E00008 */  jr        $ra
/* 2EFD0 80053BD0 AC820010 */   sw       $v0, 0x10($a0)
.L80053BD4:
/* 2EFD4 80053BD4 84820018 */  lh        $v0, 0x18($a0)
/* 2EFD8 80053BD8 AC800014 */  sw        $zero, 0x14($a0)
/* 2EFDC 80053BDC 00021400 */  sll       $v0, $v0, 0x10
/* 2EFE0 80053BE0 03E00008 */  jr        $ra
/* 2EFE4 80053BE4 AC820010 */   sw       $v0, 0x10($a0)
