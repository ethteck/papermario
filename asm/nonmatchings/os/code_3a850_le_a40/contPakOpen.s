.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel contPakOpen
/* 3AAF8 8005F6F8 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 3AAFC 8005F6FC AFBF0014 */  sw        $ra, 0x14($sp)
/* 3AB00 8005F700 AFB00010 */  sw        $s0, 0x10($sp)
/* 3AB04 8005F704 8C90000C */  lw        $s0, 0xc($a0)
/* 3AB08 8005F708 8E050000 */  lw        $a1, ($s0)
/* 3AB0C 8005F70C AE00000C */  sw        $zero, 0xc($s0)
/* 3AB10 8005F710 8CA60008 */  lw        $a2, 8($a1)
/* 3AB14 8005F714 3C04800E */  lui       $a0, 0x800e
/* 3AB18 8005F718 2484AC78 */  addiu     $a0, $a0, -0x5388
/* 3AB1C 8005F71C 0C01A464 */  jal       osPfsInitPak
/* 3AB20 8005F720 00000000 */   nop      
/* 3AB24 8005F724 0040182D */  daddu     $v1, $v0, $zero
/* 3AB28 8005F728 14600002 */  bnez      $v1, .L8005F734
/* 3AB2C 8005F72C 24020001 */   addiu    $v0, $zero, 1
/* 3AB30 8005F730 AE02000C */  sw        $v0, 0xc($s0)
.L8005F734:
/* 3AB34 8005F734 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3AB38 8005F738 8FB00010 */  lw        $s0, 0x10($sp)
/* 3AB3C 8005F73C 0060102D */  daddu     $v0, $v1, $zero
/* 3AB40 8005F740 03E00008 */  jr        $ra
/* 3AB44 8005F744 27BD0018 */   addiu    $sp, $sp, 0x18
