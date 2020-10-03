.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80072CF4
/* 4E0F4 80072CF4 3C013F80 */  lui       $at, 0x3f80
/* 4E0F8 80072CF8 44816000 */  mtc1      $at, $f12
/* 4E0FC 80072CFC 3C013F8C */  lui       $at, 0x3f8c
/* 4E100 80072D00 3421CCCD */  ori       $at, $at, 0xcccd
/* 4E104 80072D04 44817000 */  mtc1      $at, $f14
/* 4E108 80072D08 3C063F99 */  lui       $a2, 0x3f99
/* 4E10C 80072D0C 34C6999A */  ori       $a2, $a2, 0x999a
/* 4E110 80072D10 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 4E114 80072D14 AFBF0010 */  sw        $ra, 0x10($sp)
/* 4E118 80072D18 0C01CB3B */  jal       func_80072CEC
/* 4E11C 80072D1C 00000000 */   nop      
/* 4E120 80072D20 8FBF0010 */  lw        $ra, 0x10($sp)
/* 4E124 80072D24 03E00008 */  jr        $ra
/* 4E128 80072D28 27BD0018 */   addiu    $sp, $sp, 0x18
