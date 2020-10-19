.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel update_starpoints_display_D18B9C
/* D18B9C 802403BC 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* D18BA0 802403C0 AFB40028 */  sw        $s4, 0x28($sp)
/* D18BA4 802403C4 0080A02D */  daddu     $s4, $a0, $zero
/* D18BA8 802403C8 AFBF002C */  sw        $ra, 0x2c($sp)
/* D18BAC 802403CC AFB30024 */  sw        $s3, 0x24($sp)
/* D18BB0 802403D0 AFB20020 */  sw        $s2, 0x20($sp)
/* D18BB4 802403D4 AFB1001C */  sw        $s1, 0x1c($sp)
/* D18BB8 802403D8 AFB00018 */  sw        $s0, 0x18($sp)
/* D18BBC 802403DC 8E910148 */  lw        $s1, 0x148($s4)
/* D18BC0 802403E0 86240008 */  lh        $a0, 8($s1)
/* D18BC4 802403E4 0C00EABB */  jal       get_npc_unsafe
/* D18BC8 802403E8 00A0802D */   daddu    $s0, $a1, $zero
/* D18BCC 802403EC 16000005 */  bnez      $s0, .L80240404
/* D18BD0 802403F0 0040902D */   daddu    $s2, $v0, $zero
/* D18BD4 802403F4 8E2200B0 */  lw        $v0, 0xb0($s1)
/* D18BD8 802403F8 30420004 */  andi      $v0, $v0, 4
/* D18BDC 802403FC 10400015 */  beqz      $v0, .L80240454
/* D18BE0 80240400 00000000 */   nop      
.L80240404:
/* D18BE4 80240404 AE800070 */  sw        $zero, 0x70($s4)
/* D18BE8 80240408 8E420000 */  lw        $v0, ($s2)
/* D18BEC 8024040C 3C031F30 */  lui       $v1, 0x1f30
/* D18BF0 80240410 A640008E */  sh        $zero, 0x8e($s2)
/* D18BF4 80240414 34420102 */  ori       $v0, $v0, 0x102
/* D18BF8 80240418 AE420000 */  sw        $v0, ($s2)
/* D18BFC 8024041C 8E220000 */  lw        $v0, ($s1)
/* D18C00 80240420 3C01C47A */  lui       $at, 0xc47a
/* D18C04 80240424 44810000 */  mtc1      $at, $f0
/* D18C08 80240428 00431025 */  or        $v0, $v0, $v1
/* D18C0C 8024042C AE220000 */  sw        $v0, ($s1)
/* D18C10 80240430 AE400038 */  sw        $zero, 0x38($s2)
/* D18C14 80240434 E640003C */  swc1      $f0, 0x3c($s2)
/* D18C18 80240438 AE400040 */  sw        $zero, 0x40($s2)
/* D18C1C 8024043C 8E2300B0 */  lw        $v1, 0xb0($s1)
/* D18C20 80240440 30620004 */  andi      $v0, $v1, 4
/* D18C24 80240444 10400003 */  beqz      $v0, .L80240454
/* D18C28 80240448 2402FFFB */   addiu    $v0, $zero, -5
/* D18C2C 8024044C 00621024 */  and       $v0, $v1, $v0
/* D18C30 80240450 AE2200B0 */  sw        $v0, 0xb0($s1)
.L80240454:
/* D18C34 80240454 8E930070 */  lw        $s3, 0x70($s4)
/* D18C38 80240458 12600005 */  beqz      $s3, .L80240470
/* D18C3C 8024045C 24020001 */   addiu    $v0, $zero, 1
/* D18C40 80240460 12620048 */  beq       $s3, $v0, .L80240584
/* D18C44 80240464 00000000 */   nop      
/* D18C48 80240468 0809017E */  j         .L802405F8
/* D18C4C 8024046C 00000000 */   nop      
.L80240470:
/* D18C50 80240470 86240008 */  lh        $a0, 8($s1)
/* D18C54 80240474 0C00FB3A */  jal       get_enemy
/* D18C58 80240478 2484FFFF */   addiu    $a0, $a0, -1
/* D18C5C 8024047C 0040802D */  daddu     $s0, $v0, $zero
/* D18C60 80240480 0C00EABB */  jal       get_npc_unsafe
/* D18C64 80240484 86040008 */   lh       $a0, 8($s0)
/* D18C68 80240488 24030001 */  addiu     $v1, $zero, 1
/* D18C6C 8024048C 0040982D */  daddu     $s3, $v0, $zero
/* D18C70 80240490 A2230007 */  sb        $v1, 7($s1)
/* D18C74 80240494 8E03006C */  lw        $v1, 0x6c($s0)
/* D18C78 80240498 24020003 */  addiu     $v0, $zero, 3
/* D18C7C 8024049C 14620056 */  bne       $v1, $v0, .L802405F8
/* D18C80 802404A0 00000000 */   nop      
/* D18C84 802404A4 8E2500A8 */  lw        $a1, 0xa8($s1)
/* D18C88 802404A8 10A00003 */  beqz      $a1, .L802404B8
/* D18C8C 802404AC 0260202D */   daddu    $a0, $s3, $zero
/* D18C90 802404B0 0C012530 */  jal       func_800494C0
/* D18C94 802404B4 0000302D */   daddu    $a2, $zero, $zero
.L802404B8:
/* D18C98 802404B8 27A40010 */  addiu     $a0, $sp, 0x10
/* D18C9C 802404BC C6280070 */  lwc1      $f8, 0x70($s1)
/* D18CA0 802404C0 46804220 */  cvt.s.w   $f8, $f8
/* D18CA4 802404C4 C6620034 */  lwc1      $f2, 0x34($s3)
/* D18CA8 802404C8 3C014387 */  lui       $at, 0x4387
/* D18CAC 802404CC 44810000 */  mtc1      $at, $f0
/* D18CB0 802404D0 44064000 */  mfc1      $a2, $f8
/* D18CB4 802404D4 46020001 */  sub.s     $f0, $f0, $f2
/* D18CB8 802404D8 C6660038 */  lwc1      $f6, 0x38($s3)
/* D18CBC 802404DC C6640040 */  lwc1      $f4, 0x40($s3)
/* D18CC0 802404E0 44070000 */  mfc1      $a3, $f0
/* D18CC4 802404E4 27A50014 */  addiu     $a1, $sp, 0x14
/* D18CC8 802404E8 E7A60010 */  swc1      $f6, 0x10($sp)
/* D18CCC 802404EC 0C00A7E7 */  jal       add_vec2D_polar
/* D18CD0 802404F0 E7A40014 */   swc1     $f4, 0x14($sp)
/* D18CD4 802404F4 C7A00010 */  lwc1      $f0, 0x10($sp)
/* D18CD8 802404F8 4600020D */  trunc.w.s $f8, $f0
/* D18CDC 802404FC 44024000 */  mfc1      $v0, $f8
/* D18CE0 80240500 E6400038 */  swc1      $f0, 0x38($s2)
/* D18CE4 80240504 A6220010 */  sh        $v0, 0x10($s1)
/* D18CE8 80240508 C660003C */  lwc1      $f0, 0x3c($s3)
/* D18CEC 8024050C C622006C */  lwc1      $f2, 0x6c($s1)
/* D18CF0 80240510 468010A0 */  cvt.s.w   $f2, $f2
/* D18CF4 80240514 46020000 */  add.s     $f0, $f0, $f2
/* D18CF8 80240518 3C03800F */  lui       $v1, %hi(gPlayerStatusPtr)
/* D18CFC 8024051C 8C637B30 */  lw        $v1, %lo(gPlayerStatusPtr)($v1)
/* D18D00 80240520 E640003C */  swc1      $f0, 0x3c($s2)
/* D18D04 80240524 C7A20014 */  lwc1      $f2, 0x14($sp)
/* D18D08 80240528 4600020D */  trunc.w.s $f8, $f0
/* D18D0C 8024052C 44024000 */  mfc1      $v0, $f8
/* D18D10 80240530 00000000 */  nop       
/* D18D14 80240534 A6220012 */  sh        $v0, 0x12($s1)
/* D18D18 80240538 4600120D */  trunc.w.s $f8, $f2
/* D18D1C 8024053C 44024000 */  mfc1      $v0, $f8
/* D18D20 80240540 E6420040 */  swc1      $f2, 0x40($s2)
/* D18D24 80240544 A6220014 */  sh        $v0, 0x14($s1)
/* D18D28 80240548 8C660028 */  lw        $a2, 0x28($v1)
/* D18D2C 8024054C 8C670030 */  lw        $a3, 0x30($v1)
/* D18D30 80240550 C64C0038 */  lwc1      $f12, 0x38($s2)
/* D18D34 80240554 0C00A720 */  jal       atan2
/* D18D38 80240558 C64E0040 */   lwc1     $f14, 0x40($s2)
/* D18D3C 8024055C 3C03E0EF */  lui       $v1, 0xe0ef
/* D18D40 80240560 E640000C */  swc1      $f0, 0xc($s2)
/* D18D44 80240564 8E220000 */  lw        $v0, ($s1)
/* D18D48 80240568 3463FFFF */  ori       $v1, $v1, 0xffff
/* D18D4C 8024056C 00431024 */  and       $v0, $v0, $v1
/* D18D50 80240570 AE220000 */  sw        $v0, ($s1)
/* D18D54 80240574 24020001 */  addiu     $v0, $zero, 1
/* D18D58 80240578 A640008E */  sh        $zero, 0x8e($s2)
/* D18D5C 8024057C 0809017E */  j         .L802405F8
/* D18D60 80240580 AE820070 */   sw       $v0, 0x70($s4)
.L80240584:
/* D18D64 80240584 86240008 */  lh        $a0, 8($s1)
/* D18D68 80240588 0C00FB3A */  jal       get_enemy
/* D18D6C 8024058C 2484FFFF */   addiu    $a0, $a0, -1
/* D18D70 80240590 0040802D */  daddu     $s0, $v0, $zero
/* D18D74 80240594 0C00EABB */  jal       get_npc_unsafe
/* D18D78 80240598 86040008 */   lh       $a0, 8($s0)
/* D18D7C 8024059C 9642008E */  lhu       $v0, 0x8e($s2)
/* D18D80 802405A0 24420001 */  addiu     $v0, $v0, 1
/* D18D84 802405A4 A642008E */  sh        $v0, 0x8e($s2)
/* D18D88 802405A8 00021400 */  sll       $v0, $v0, 0x10
/* D18D8C 802405AC 8E23007C */  lw        $v1, 0x7c($s1)
/* D18D90 802405B0 00021403 */  sra       $v0, $v0, 0x10
/* D18D94 802405B4 0043102A */  slt       $v0, $v0, $v1
/* D18D98 802405B8 50400001 */  beql      $v0, $zero, .L802405C0
/* D18D9C 802405BC A2200007 */   sb       $zero, 7($s1)
.L802405C0:
/* D18DA0 802405C0 8E03006C */  lw        $v1, 0x6c($s0)
/* D18DA4 802405C4 24020004 */  addiu     $v0, $zero, 4
/* D18DA8 802405C8 1462000B */  bne       $v1, $v0, .L802405F8
/* D18DAC 802405CC 3C021F10 */   lui      $v0, 0x1f10
/* D18DB0 802405D0 8E230000 */  lw        $v1, ($s1)
/* D18DB4 802405D4 3C01C47A */  lui       $at, 0xc47a
/* D18DB8 802405D8 44810000 */  mtc1      $at, $f0
/* D18DBC 802405DC 00621825 */  or        $v1, $v1, $v0
/* D18DC0 802405E0 AE230000 */  sw        $v1, ($s1)
/* D18DC4 802405E4 AE400038 */  sw        $zero, 0x38($s2)
/* D18DC8 802405E8 E640003C */  swc1      $f0, 0x3c($s2)
/* D18DCC 802405EC AE400040 */  sw        $zero, 0x40($s2)
/* D18DD0 802405F0 A2330007 */  sb        $s3, 7($s1)
/* D18DD4 802405F4 AE800070 */  sw        $zero, 0x70($s4)
.L802405F8:
/* D18DD8 802405F8 8FBF002C */  lw        $ra, 0x2c($sp)
/* D18DDC 802405FC 8FB40028 */  lw        $s4, 0x28($sp)
/* D18DE0 80240600 8FB30024 */  lw        $s3, 0x24($sp)
/* D18DE4 80240604 8FB20020 */  lw        $s2, 0x20($sp)
/* D18DE8 80240608 8FB1001C */  lw        $s1, 0x1c($sp)
/* D18DEC 8024060C 8FB00018 */  lw        $s0, 0x18($sp)
/* D18DF0 80240610 0000102D */  daddu     $v0, $zero, $zero
/* D18DF4 80240614 03E00008 */  jr        $ra
/* D18DF8 80240618 27BD0030 */   addiu    $sp, $sp, 0x30
