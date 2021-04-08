.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel jan_06_UnkFunc7
/* B54408 80241BD8 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* B5440C 80241BDC AFB40028 */  sw        $s4, 0x28($sp)
/* B54410 80241BE0 0080A02D */  daddu     $s4, $a0, $zero
/* B54414 80241BE4 AFBF002C */  sw        $ra, 0x2c($sp)
/* B54418 80241BE8 AFB30024 */  sw        $s3, 0x24($sp)
/* B5441C 80241BEC AFB20020 */  sw        $s2, 0x20($sp)
/* B54420 80241BF0 AFB1001C */  sw        $s1, 0x1c($sp)
/* B54424 80241BF4 AFB00018 */  sw        $s0, 0x18($sp)
/* B54428 80241BF8 8E910148 */  lw        $s1, 0x148($s4)
/* B5442C 80241BFC 86240008 */  lh        $a0, 8($s1)
/* B54430 80241C00 0C00EABB */  jal       get_npc_unsafe
/* B54434 80241C04 00A0802D */   daddu    $s0, $a1, $zero
/* B54438 80241C08 16000005 */  bnez      $s0, .L80241C20
/* B5443C 80241C0C 0040902D */   daddu    $s2, $v0, $zero
/* B54440 80241C10 8E2200B0 */  lw        $v0, 0xb0($s1)
/* B54444 80241C14 30420004 */  andi      $v0, $v0, 4
/* B54448 80241C18 10400015 */  beqz      $v0, .L80241C70
/* B5444C 80241C1C 00000000 */   nop
.L80241C20:
/* B54450 80241C20 AE800070 */  sw        $zero, 0x70($s4)
/* B54454 80241C24 8E420000 */  lw        $v0, ($s2)
/* B54458 80241C28 3C031F30 */  lui       $v1, 0x1f30
/* B5445C 80241C2C A640008E */  sh        $zero, 0x8e($s2)
/* B54460 80241C30 34420102 */  ori       $v0, $v0, 0x102
/* B54464 80241C34 AE420000 */  sw        $v0, ($s2)
/* B54468 80241C38 8E220000 */  lw        $v0, ($s1)
/* B5446C 80241C3C 3C01C47A */  lui       $at, 0xc47a
/* B54470 80241C40 44810000 */  mtc1      $at, $f0
/* B54474 80241C44 00431025 */  or        $v0, $v0, $v1
/* B54478 80241C48 AE220000 */  sw        $v0, ($s1)
/* B5447C 80241C4C AE400038 */  sw        $zero, 0x38($s2)
/* B54480 80241C50 E640003C */  swc1      $f0, 0x3c($s2)
/* B54484 80241C54 AE400040 */  sw        $zero, 0x40($s2)
/* B54488 80241C58 8E2300B0 */  lw        $v1, 0xb0($s1)
/* B5448C 80241C5C 30620004 */  andi      $v0, $v1, 4
/* B54490 80241C60 10400003 */  beqz      $v0, .L80241C70
/* B54494 80241C64 2402FFFB */   addiu    $v0, $zero, -5
/* B54498 80241C68 00621024 */  and       $v0, $v1, $v0
/* B5449C 80241C6C AE2200B0 */  sw        $v0, 0xb0($s1)
.L80241C70:
/* B544A0 80241C70 8E930070 */  lw        $s3, 0x70($s4)
/* B544A4 80241C74 12600005 */  beqz      $s3, .L80241C8C
/* B544A8 80241C78 24020001 */   addiu    $v0, $zero, 1
/* B544AC 80241C7C 12620048 */  beq       $s3, $v0, .L80241DA0
/* B544B0 80241C80 00000000 */   nop
/* B544B4 80241C84 08090785 */  j         .L80241E14
/* B544B8 80241C88 00000000 */   nop
.L80241C8C:
/* B544BC 80241C8C 86240008 */  lh        $a0, 8($s1)
/* B544C0 80241C90 0C00FB3A */  jal       get_enemy
/* B544C4 80241C94 2484FFFF */   addiu    $a0, $a0, -1
/* B544C8 80241C98 0040802D */  daddu     $s0, $v0, $zero
/* B544CC 80241C9C 0C00EABB */  jal       get_npc_unsafe
/* B544D0 80241CA0 86040008 */   lh       $a0, 8($s0)
/* B544D4 80241CA4 24030001 */  addiu     $v1, $zero, 1
/* B544D8 80241CA8 0040982D */  daddu     $s3, $v0, $zero
/* B544DC 80241CAC A2230007 */  sb        $v1, 7($s1)
/* B544E0 80241CB0 8E03006C */  lw        $v1, 0x6c($s0)
/* B544E4 80241CB4 24020003 */  addiu     $v0, $zero, 3
/* B544E8 80241CB8 14620056 */  bne       $v1, $v0, .L80241E14
/* B544EC 80241CBC 00000000 */   nop
/* B544F0 80241CC0 8E2500A8 */  lw        $a1, 0xa8($s1)
/* B544F4 80241CC4 10A00003 */  beqz      $a1, .L80241CD4
/* B544F8 80241CC8 0260202D */   daddu    $a0, $s3, $zero
/* B544FC 80241CCC 0C012530 */  jal       func_800494C0
/* B54500 80241CD0 0000302D */   daddu    $a2, $zero, $zero
.L80241CD4:
/* B54504 80241CD4 27A40010 */  addiu     $a0, $sp, 0x10
/* B54508 80241CD8 C6280070 */  lwc1      $f8, 0x70($s1)
/* B5450C 80241CDC 46804220 */  cvt.s.w   $f8, $f8
/* B54510 80241CE0 C6620034 */  lwc1      $f2, 0x34($s3)
/* B54514 80241CE4 3C014387 */  lui       $at, 0x4387
/* B54518 80241CE8 44810000 */  mtc1      $at, $f0
/* B5451C 80241CEC 44064000 */  mfc1      $a2, $f8
/* B54520 80241CF0 46020001 */  sub.s     $f0, $f0, $f2
/* B54524 80241CF4 C6660038 */  lwc1      $f6, 0x38($s3)
/* B54528 80241CF8 C6640040 */  lwc1      $f4, 0x40($s3)
/* B5452C 80241CFC 44070000 */  mfc1      $a3, $f0
/* B54530 80241D00 27A50014 */  addiu     $a1, $sp, 0x14
/* B54534 80241D04 E7A60010 */  swc1      $f6, 0x10($sp)
/* B54538 80241D08 0C00A7E7 */  jal       add_vec2D_polar
/* B5453C 80241D0C E7A40014 */   swc1     $f4, 0x14($sp)
/* B54540 80241D10 C7A00010 */  lwc1      $f0, 0x10($sp)
/* B54544 80241D14 4600020D */  trunc.w.s $f8, $f0
/* B54548 80241D18 44024000 */  mfc1      $v0, $f8
/* B5454C 80241D1C E6400038 */  swc1      $f0, 0x38($s2)
/* B54550 80241D20 A6220010 */  sh        $v0, 0x10($s1)
/* B54554 80241D24 C660003C */  lwc1      $f0, 0x3c($s3)
/* B54558 80241D28 C622006C */  lwc1      $f2, 0x6c($s1)
/* B5455C 80241D2C 468010A0 */  cvt.s.w   $f2, $f2
/* B54560 80241D30 46020000 */  add.s     $f0, $f0, $f2
/* B54564 80241D34 3C03800F */  lui       $v1, %hi(gPlayerStatusPtr)
/* B54568 80241D38 8C637B30 */  lw        $v1, %lo(gPlayerStatusPtr)($v1)
/* B5456C 80241D3C E640003C */  swc1      $f0, 0x3c($s2)
/* B54570 80241D40 C7A20014 */  lwc1      $f2, 0x14($sp)
/* B54574 80241D44 4600020D */  trunc.w.s $f8, $f0
/* B54578 80241D48 44024000 */  mfc1      $v0, $f8
/* B5457C 80241D4C 00000000 */  nop
/* B54580 80241D50 A6220012 */  sh        $v0, 0x12($s1)
/* B54584 80241D54 4600120D */  trunc.w.s $f8, $f2
/* B54588 80241D58 44024000 */  mfc1      $v0, $f8
/* B5458C 80241D5C E6420040 */  swc1      $f2, 0x40($s2)
/* B54590 80241D60 A6220014 */  sh        $v0, 0x14($s1)
/* B54594 80241D64 8C660028 */  lw        $a2, 0x28($v1)
/* B54598 80241D68 8C670030 */  lw        $a3, 0x30($v1)
/* B5459C 80241D6C C64C0038 */  lwc1      $f12, 0x38($s2)
/* B545A0 80241D70 0C00A720 */  jal       atan2
/* B545A4 80241D74 C64E0040 */   lwc1     $f14, 0x40($s2)
/* B545A8 80241D78 3C03E0EF */  lui       $v1, 0xe0ef
/* B545AC 80241D7C E640000C */  swc1      $f0, 0xc($s2)
/* B545B0 80241D80 8E220000 */  lw        $v0, ($s1)
/* B545B4 80241D84 3463FFFF */  ori       $v1, $v1, 0xffff
/* B545B8 80241D88 00431024 */  and       $v0, $v0, $v1
/* B545BC 80241D8C AE220000 */  sw        $v0, ($s1)
/* B545C0 80241D90 24020001 */  addiu     $v0, $zero, 1
/* B545C4 80241D94 A640008E */  sh        $zero, 0x8e($s2)
/* B545C8 80241D98 08090785 */  j         .L80241E14
/* B545CC 80241D9C AE820070 */   sw       $v0, 0x70($s4)
.L80241DA0:
/* B545D0 80241DA0 86240008 */  lh        $a0, 8($s1)
/* B545D4 80241DA4 0C00FB3A */  jal       get_enemy
/* B545D8 80241DA8 2484FFFF */   addiu    $a0, $a0, -1
/* B545DC 80241DAC 0040802D */  daddu     $s0, $v0, $zero
/* B545E0 80241DB0 0C00EABB */  jal       get_npc_unsafe
/* B545E4 80241DB4 86040008 */   lh       $a0, 8($s0)
/* B545E8 80241DB8 9642008E */  lhu       $v0, 0x8e($s2)
/* B545EC 80241DBC 24420001 */  addiu     $v0, $v0, 1
/* B545F0 80241DC0 A642008E */  sh        $v0, 0x8e($s2)
/* B545F4 80241DC4 00021400 */  sll       $v0, $v0, 0x10
/* B545F8 80241DC8 8E23007C */  lw        $v1, 0x7c($s1)
/* B545FC 80241DCC 00021403 */  sra       $v0, $v0, 0x10
/* B54600 80241DD0 0043102A */  slt       $v0, $v0, $v1
/* B54604 80241DD4 50400001 */  beql      $v0, $zero, .L80241DDC
/* B54608 80241DD8 A2200007 */   sb       $zero, 7($s1)
.L80241DDC:
/* B5460C 80241DDC 8E03006C */  lw        $v1, 0x6c($s0)
/* B54610 80241DE0 24020004 */  addiu     $v0, $zero, 4
/* B54614 80241DE4 1462000B */  bne       $v1, $v0, .L80241E14
/* B54618 80241DE8 3C021F10 */   lui      $v0, 0x1f10
/* B5461C 80241DEC 8E230000 */  lw        $v1, ($s1)
/* B54620 80241DF0 3C01C47A */  lui       $at, 0xc47a
/* B54624 80241DF4 44810000 */  mtc1      $at, $f0
/* B54628 80241DF8 00621825 */  or        $v1, $v1, $v0
/* B5462C 80241DFC AE230000 */  sw        $v1, ($s1)
/* B54630 80241E00 AE400038 */  sw        $zero, 0x38($s2)
/* B54634 80241E04 E640003C */  swc1      $f0, 0x3c($s2)
/* B54638 80241E08 AE400040 */  sw        $zero, 0x40($s2)
/* B5463C 80241E0C A2330007 */  sb        $s3, 7($s1)
/* B54640 80241E10 AE800070 */  sw        $zero, 0x70($s4)
.L80241E14:
/* B54644 80241E14 8FBF002C */  lw        $ra, 0x2c($sp)
/* B54648 80241E18 8FB40028 */  lw        $s4, 0x28($sp)
/* B5464C 80241E1C 8FB30024 */  lw        $s3, 0x24($sp)
/* B54650 80241E20 8FB20020 */  lw        $s2, 0x20($sp)
/* B54654 80241E24 8FB1001C */  lw        $s1, 0x1c($sp)
/* B54658 80241E28 8FB00018 */  lw        $s0, 0x18($sp)
/* B5465C 80241E2C 0000102D */  daddu     $v0, $zero, $zero
/* B54660 80241E30 03E00008 */  jr        $ra
/* B54664 80241E34 27BD0030 */   addiu    $sp, $sp, 0x30
