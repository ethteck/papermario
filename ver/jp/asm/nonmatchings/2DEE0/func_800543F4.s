.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800543F4
/* 2F7F4 800543F4 0000182D */  daddu     $v1, $zero, $zero
/* 2F7F8 800543F8 3C06800A */  lui       $a2, %hi(D_8009A5A0)
/* 2F7FC 800543FC 8CC6A5A0 */  lw        $a2, %lo(D_8009A5A0)($a2)
/* 2F800 80054400 2484FFFF */  addiu     $a0, $a0, -1
/* 2F804 80054404 2C820006 */  sltiu     $v0, $a0, 6
/* 2F808 80054408 10400019 */  beqz      $v0, .L80054470
/* 2F80C 8005440C 00052900 */   sll      $a1, $a1, 4
/* 2F810 80054410 00041080 */  sll       $v0, $a0, 2
/* 2F814 80054414 3C01800A */  lui       $at, %hi(D_800988D0)
/* 2F818 80054418 00220821 */  addu      $at, $at, $v0
/* 2F81C 8005441C 8C2288D0 */  lw        $v0, %lo(D_800988D0)($at)
/* 2F820 80054420 00400008 */  jr        $v0
/* 2F824 80054424 00000000 */   nop
/* 2F828 80054428 00051080 */  sll       $v0, $a1, 2
/* 2F82C 8005442C 0801511B */  j         .L8005446C
/* 2F830 80054430 244204EC */   addiu    $v0, $v0, 0x4ec
/* 2F834 80054434 00051080 */  sll       $v0, $a1, 2
/* 2F838 80054438 0801511B */  j         .L8005446C
/* 2F83C 8005443C 244205EC */   addiu    $v0, $v0, 0x5ec
/* 2F840 80054440 00051080 */  sll       $v0, $a1, 2
/* 2F844 80054444 0801511B */  j         .L8005446C
/* 2F848 80054448 244209EC */   addiu    $v0, $v0, 0x9ec
/* 2F84C 8005444C 00051080 */  sll       $v0, $a1, 2
/* 2F850 80054450 0801511B */  j         .L8005446C
/* 2F854 80054454 24420DEC */   addiu    $v0, $v0, 0xdec
/* 2F858 80054458 00051080 */  sll       $v0, $a1, 2
/* 2F85C 8005445C 0801511B */  j         .L8005446C
/* 2F860 80054460 244211EC */   addiu    $v0, $v0, 0x11ec
/* 2F864 80054464 00051080 */  sll       $v0, $a1, 2
/* 2F868 80054468 244200EC */  addiu     $v0, $v0, 0xec
.L8005446C:
/* 2F86C 8005446C 00C21821 */  addu      $v1, $a2, $v0
.L80054470:
/* 2F870 80054470 03E00008 */  jr        $ra
/* 2F874 80054474 0060102D */   daddu    $v0, $v1, $zero
