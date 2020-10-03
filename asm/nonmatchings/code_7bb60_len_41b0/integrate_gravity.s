.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel integrate_gravity
/* 7C8F8 800E3448 3C048011 */  lui       $a0, %hi(gPlayerStatus)
/* 7C8FC 800E344C 2484EFC8 */  addiu     $a0, $a0, %lo(gPlayerStatus)
/* 7C900 800E3450 8C820000 */  lw        $v0, ($a0)
/* 7C904 800E3454 3C030004 */  lui       $v1, 4
/* 7C908 800E3458 00431024 */  and       $v0, $v0, $v1
/* 7C90C 800E345C 10400012 */  beqz      $v0, .L800E34A8
/* 7C910 800E3460 00000000 */   nop      
/* 7C914 800E3464 C480007C */  lwc1      $f0, 0x7c($a0)
/* 7C918 800E3468 3C013FD9 */  lui       $at, 0x3fd9
/* 7C91C 800E346C 3421999A */  ori       $at, $at, 0x999a
/* 7C920 800E3470 44812000 */  mtc1      $at, $f4
/* 7C924 800E3474 C4860078 */  lwc1      $f6, 0x78($a0)
/* 7C928 800E3478 46040003 */  div.s     $f0, $f0, $f4
/* 7C92C 800E347C 46003180 */  add.s     $f6, $f6, $f0
/* 7C930 800E3480 C4820074 */  lwc1      $f2, 0x74($a0)
/* 7C934 800E3484 46043003 */  div.s     $f0, $f6, $f4
/* 7C938 800E3488 46001080 */  add.s     $f2, $f2, $f0
/* 7C93C 800E348C C4800070 */  lwc1      $f0, 0x70($a0)
/* 7C940 800E3490 46041103 */  div.s     $f4, $f2, $f4
/* 7C944 800E3494 46040000 */  add.s     $f0, $f0, $f4
/* 7C948 800E3498 E4860078 */  swc1      $f6, 0x78($a0)
/* 7C94C 800E349C E4820074 */  swc1      $f2, 0x74($a0)
/* 7C950 800E34A0 08038D34 */  j         .L800E34D0
/* 7C954 800E34A4 E4800070 */   swc1     $f0, 0x70($a0)
.L800E34A8:
/* 7C958 800E34A8 C4840078 */  lwc1      $f4, 0x78($a0)
/* 7C95C 800E34AC C480007C */  lwc1      $f0, 0x7c($a0)
/* 7C960 800E34B0 46002100 */  add.s     $f4, $f4, $f0
/* 7C964 800E34B4 C4800074 */  lwc1      $f0, 0x74($a0)
/* 7C968 800E34B8 46040000 */  add.s     $f0, $f0, $f4
/* 7C96C 800E34BC C4820070 */  lwc1      $f2, 0x70($a0)
/* 7C970 800E34C0 46001080 */  add.s     $f2, $f2, $f0
/* 7C974 800E34C4 E4840078 */  swc1      $f4, 0x78($a0)
/* 7C978 800E34C8 E4800074 */  swc1      $f0, 0x74($a0)
/* 7C97C 800E34CC E4820070 */  swc1      $f2, 0x70($a0)
.L800E34D0:
/* 7C980 800E34D0 03E00008 */  jr        $ra
/* 7C984 800E34D4 C4800070 */   lwc1     $f0, 0x70($a0)
