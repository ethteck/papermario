.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802E578C
/* 10700C 802E578C 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 107010 802E5790 AFB00010 */  sw        $s0, 0x10($sp)
/* 107014 802E5794 0080802D */  daddu     $s0, $a0, $zero
/* 107018 802E5798 AFBF0018 */  sw        $ra, 0x18($sp)
/* 10701C 802E579C AFB10014 */  sw        $s1, 0x14($sp)
/* 107020 802E57A0 0C0B8DB9 */  jal       entity_init_Hammer23Block_normal
/* 107024 802E57A4 8E110040 */   lw       $s1, 0x40($s0)
/* 107028 802E57A8 C6000064 */  lwc1      $f0, 0x64($s0)
/* 10702C 802E57AC 3C014334 */  lui       $at, 0x4334
/* 107030 802E57B0 44811000 */  mtc1      $at, $f2
/* 107034 802E57B4 00000000 */  nop       
/* 107038 802E57B8 46020000 */  add.s     $f0, $f0, $f2
/* 10703C 802E57BC 3402FFFF */  ori       $v0, $zero, 0xffff
/* 107040 802E57C0 E6000064 */  swc1      $f0, 0x64($s0)
/* 107044 802E57C4 A622000A */  sh        $v0, 0xa($s1)
/* 107048 802E57C8 2402FFFF */  addiu     $v0, $zero, -1
/* 10704C 802E57CC A6220012 */  sh        $v0, 0x12($s1)
/* 107050 802E57D0 8FBF0018 */  lw        $ra, 0x18($sp)
/* 107054 802E57D4 8FB10014 */  lw        $s1, 0x14($sp)
/* 107058 802E57D8 8FB00010 */  lw        $s0, 0x10($sp)
/* 10705C 802E57DC 03E00008 */  jr        $ra
/* 107060 802E57E0 27BD0020 */   addiu    $sp, $sp, 0x20
