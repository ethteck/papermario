.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800472B4
/* 226B4 800472B4 3C04800A */  lui       $a0, %hi(D_8009ED54)
/* 226B8 800472B8 8C84ED54 */  lw        $a0, %lo(D_8009ED54)($a0)
/* 226BC 800472BC 0000282D */  daddu     $a1, $zero, $zero
.L800472C0:
/* 226C0 800472C0 8C820000 */  lw        $v0, ($a0)
/* 226C4 800472C4 10400006 */  beqz      $v0, .L800472E0
/* 226C8 800472C8 28A20040 */   slti     $v0, $a1, 0x40
/* 226CC 800472CC 24A50001 */  addiu     $a1, $a1, 1
/* 226D0 800472D0 28A20040 */  slti      $v0, $a1, 0x40
/* 226D4 800472D4 1440FFFA */  bnez      $v0, .L800472C0
/* 226D8 800472D8 248400B0 */   addiu    $a0, $a0, 0xb0
/* 226DC 800472DC 28A20040 */  slti      $v0, $a1, 0x40
.L800472E0:
/* 226E0 800472E0 14400003 */  bnez      $v0, .L800472F0
/* 226E4 800472E4 24030001 */   addiu    $v1, $zero, 1
.L800472E8:
/* 226E8 800472E8 08011CBA */  j         .L800472E8
/* 226EC 800472EC 00000000 */   nop
.L800472F0:
/* 226F0 800472F0 3C028007 */  lui       $v0, %hi(D_8007417C)
/* 226F4 800472F4 8C42417C */  lw        $v0, %lo(D_8007417C)($v0)
/* 226F8 800472F8 AC830000 */  sw        $v1, ($a0)
/* 226FC 800472FC 80420070 */  lb        $v0, 0x70($v0)
/* 22700 80047300 10400002 */  beqz      $v0, .L8004730C
/* 22704 80047304 24020003 */   addiu    $v0, $zero, 3
/* 22708 80047308 AC820000 */  sw        $v0, ($a0)
.L8004730C:
/* 2270C 8004730C 00A0102D */  daddu     $v0, $a1, $zero
/* 22710 80047310 AC800004 */  sw        $zero, 4($a0)
/* 22714 80047314 AC800008 */  sw        $zero, 8($a0)
/* 22718 80047318 AC80000C */  sw        $zero, 0xc($a0)
/* 2271C 8004731C AC800010 */  sw        $zero, 0x10($a0)
/* 22720 80047320 AC800014 */  sw        $zero, 0x14($a0)
/* 22724 80047324 AC800018 */  sw        $zero, 0x18($a0)
/* 22728 80047328 AC80001C */  sw        $zero, 0x1c($a0)
/* 2272C 8004732C AC800020 */  sw        $zero, 0x20($a0)
/* 22730 80047330 AC800024 */  sw        $zero, 0x24($a0)
/* 22734 80047334 AC800028 */  sw        $zero, 0x28($a0)
/* 22738 80047338 AC80002C */  sw        $zero, 0x2c($a0)
/* 2273C 8004733C A0800038 */  sb        $zero, 0x38($a0)
/* 22740 80047340 A0800039 */  sb        $zero, 0x39($a0)
/* 22744 80047344 A080003A */  sb        $zero, 0x3a($a0)
/* 22748 80047348 A080003B */  sb        $zero, 0x3b($a0)
/* 2274C 8004734C A0800048 */  sb        $zero, 0x48($a0)
/* 22750 80047350 A0800049 */  sb        $zero, 0x49($a0)
/* 22754 80047354 A080004A */  sb        $zero, 0x4a($a0)
/* 22758 80047358 A080004B */  sb        $zero, 0x4b($a0)
/* 2275C 8004735C A0800058 */  sb        $zero, 0x58($a0)
/* 22760 80047360 A0800059 */  sb        $zero, 0x59($a0)
/* 22764 80047364 A080005A */  sb        $zero, 0x5a($a0)
/* 22768 80047368 A080005B */  sb        $zero, 0x5b($a0)
/* 2276C 8004736C A0800068 */  sb        $zero, 0x68($a0)
/* 22770 80047370 A0800069 */  sb        $zero, 0x69($a0)
/* 22774 80047374 A080006A */  sb        $zero, 0x6a($a0)
/* 22778 80047378 A080006B */  sb        $zero, 0x6b($a0)
/* 2277C 8004737C A0800078 */  sb        $zero, 0x78($a0)
/* 22780 80047380 A0800079 */  sb        $zero, 0x79($a0)
/* 22784 80047384 A0800084 */  sb        $zero, 0x84($a0)
/* 22788 80047388 A0800085 */  sb        $zero, 0x85($a0)
/* 2278C 8004738C A0800090 */  sb        $zero, 0x90($a0)
/* 22790 80047390 A0800098 */  sb        $zero, 0x98($a0)
/* 22794 80047394 A08000A0 */  sb        $zero, 0xa0($a0)
/* 22798 80047398 03E00008 */  jr        $ra
/* 2279C 8004739C A08000A8 */   sb       $zero, 0xa8($a0)
