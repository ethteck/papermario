.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240340_B28370
/* B28370 80240340 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* B28374 80240344 AFB00030 */  sw        $s0, 0x30($sp)
/* B28378 80240348 0080802D */  daddu     $s0, $a0, $zero
/* B2837C 8024034C AFBF0040 */  sw        $ra, 0x40($sp)
/* B28380 80240350 AFB3003C */  sw        $s3, 0x3c($sp)
/* B28384 80240354 AFB20038 */  sw        $s2, 0x38($sp)
/* B28388 80240358 AFB10034 */  sw        $s1, 0x34($sp)
/* B2838C 8024035C F7B60050 */  sdc1      $f22, 0x50($sp)
/* B28390 80240360 F7B40048 */  sdc1      $f20, 0x48($sp)
/* B28394 80240364 8E130148 */  lw        $s3, 0x148($s0)
/* B28398 80240368 00A0882D */  daddu     $s1, $a1, $zero
/* B2839C 8024036C 86640008 */  lh        $a0, 8($s3)
/* B283A0 80240370 0C00EABB */  jal       get_npc_unsafe
/* B283A4 80240374 00C0902D */   daddu    $s2, $a2, $zero
/* B283A8 80240378 0200202D */  daddu     $a0, $s0, $zero
/* B283AC 8024037C 0220282D */  daddu     $a1, $s1, $zero
/* B283B0 80240380 0240302D */  daddu     $a2, $s2, $zero
/* B283B4 80240384 0C012568 */  jal       func_800495A0
/* B283B8 80240388 0040802D */   daddu    $s0, $v0, $zero
/* B283BC 8024038C 8E020000 */  lw        $v0, ($s0)
/* B283C0 80240390 2404002D */  addiu     $a0, $zero, 0x2d
/* B283C4 80240394 34420800 */  ori       $v0, $v0, 0x800
/* B283C8 80240398 0C00A67F */  jal       rand_int
/* B283CC 8024039C AE020000 */   sw       $v0, ($s0)
/* B283D0 802403A0 0200202D */  daddu     $a0, $s0, $zero
/* B283D4 802403A4 3C05B000 */  lui       $a1, 0xb000
/* B283D8 802403A8 34A50017 */  ori       $a1, $a1, 0x17
/* B283DC 802403AC 44820000 */  mtc1      $v0, $f0
/* B283E0 802403B0 00000000 */  nop
/* B283E4 802403B4 46800021 */  cvt.d.w   $f0, $f0
/* B283E8 802403B8 3C014024 */  lui       $at, 0x4024
/* B283EC 802403BC 44811800 */  mtc1      $at, $f3
/* B283F0 802403C0 44801000 */  mtc1      $zero, $f2
/* B283F4 802403C4 3C014020 */  lui       $at, 0x4020
/* B283F8 802403C8 44812800 */  mtc1      $at, $f5
/* B283FC 802403CC 44802000 */  mtc1      $zero, $f4
/* B28400 802403D0 46220003 */  div.d     $f0, $f0, $f2
/* B28404 802403D4 46240000 */  add.d     $f0, $f0, $f4
/* B28408 802403D8 3C013FC0 */  lui       $at, 0x3fc0
/* B2840C 802403DC 44811000 */  mtc1      $at, $f2
/* B28410 802403E0 0000302D */  daddu     $a2, $zero, $zero
/* B28414 802403E4 E6020014 */  swc1      $f2, 0x14($s0)
/* B28418 802403E8 46200020 */  cvt.s.d   $f0, $f0
/* B2841C 802403EC 0C012530 */  jal       ai_enemy_play_sound
/* B28420 802403F0 E600001C */   swc1     $f0, 0x1c($s0)
/* B28424 802403F4 8E6300D0 */  lw        $v1, 0xd0($s3)
/* B28428 802403F8 C6000040 */  lwc1      $f0, 0x40($s0)
/* B2842C 802403FC C4620000 */  lwc1      $f2, ($v1)
/* B28430 80240400 468010A0 */  cvt.s.w   $f2, $f2
/* B28434 80240404 C4640008 */  lwc1      $f4, 8($v1)
/* B28438 80240408 46802120 */  cvt.s.w   $f4, $f4
/* B2843C 8024040C E7A00010 */  swc1      $f0, 0x10($sp)
/* B28440 80240410 8E6200D0 */  lw        $v0, 0xd0($s3)
/* B28444 80240414 44051000 */  mfc1      $a1, $f2
/* B28448 80240418 C440000C */  lwc1      $f0, 0xc($v0)
/* B2844C 8024041C 46800020 */  cvt.s.w   $f0, $f0
/* B28450 80240420 E7A00014 */  swc1      $f0, 0x14($sp)
/* B28454 80240424 8E6200D0 */  lw        $v0, 0xd0($s3)
/* B28458 80240428 44062000 */  mfc1      $a2, $f4
/* B2845C 8024042C C4400010 */  lwc1      $f0, 0x10($v0)
/* B28460 80240430 46800020 */  cvt.s.w   $f0, $f0
/* B28464 80240434 E7A00018 */  swc1      $f0, 0x18($sp)
/* B28468 80240438 8C640018 */  lw        $a0, 0x18($v1)
/* B2846C 8024043C 0C0123F5 */  jal       is_point_within_region
/* B28470 80240440 8E070038 */   lw       $a3, 0x38($s0)
/* B28474 80240444 10400035 */  beqz      $v0, .L8024051C
/* B28478 80240448 00000000 */   nop
/* B2847C 8024044C C60C0038 */  lwc1      $f12, 0x38($s0)
/* B28480 80240450 3C0141C8 */  lui       $at, 0x41c8
/* B28484 80240454 4481B000 */  mtc1      $at, $f22
/* B28488 80240458 8E6200D0 */  lw        $v0, 0xd0($s3)
/* B2848C 8024045C C60E0040 */  lwc1      $f14, 0x40($s0)
/* B28490 80240460 C4480000 */  lwc1      $f8, ($v0)
/* B28494 80240464 46804220 */  cvt.s.w   $f8, $f8
/* B28498 80240468 44064000 */  mfc1      $a2, $f8
/* B2849C 8024046C C4480008 */  lwc1      $f8, 8($v0)
/* B284A0 80240470 46804220 */  cvt.s.w   $f8, $f8
/* B284A4 80240474 44074000 */  mfc1      $a3, $f8
/* B284A8 80240478 3C01403E */  lui       $at, 0x403e
/* B284AC 8024047C 4481A800 */  mtc1      $at, $f21
/* B284B0 80240480 4480A000 */  mtc1      $zero, $f20
/* B284B4 80240484 0C00A720 */  jal       atan2
/* B284B8 80240488 0000882D */   daddu    $s1, $zero, $zero
/* B284BC 8024048C C6020038 */  lwc1      $f2, 0x38($s0)
/* B284C0 80240490 C604003C */  lwc1      $f4, 0x3c($s0)
/* B284C4 80240494 C6060040 */  lwc1      $f6, 0x40($s0)
/* B284C8 80240498 E600000C */  swc1      $f0, 0xc($s0)
/* B284CC 8024049C E7A20020 */  swc1      $f2, 0x20($sp)
/* B284D0 802404A0 E7A40024 */  swc1      $f4, 0x24($sp)
/* B284D4 802404A4 E7A60028 */  swc1      $f6, 0x28($sp)
.L802404A8:
/* B284D8 802404A8 E7B60010 */  swc1      $f22, 0x10($sp)
/* B284DC 802404AC C600000C */  lwc1      $f0, 0xc($s0)
/* B284E0 802404B0 E7A00014 */  swc1      $f0, 0x14($sp)
/* B284E4 802404B4 860200A8 */  lh        $v0, 0xa8($s0)
/* B284E8 802404B8 27A50020 */  addiu     $a1, $sp, 0x20
/* B284EC 802404BC 44820000 */  mtc1      $v0, $f0
/* B284F0 802404C0 00000000 */  nop
/* B284F4 802404C4 46800020 */  cvt.s.w   $f0, $f0
/* B284F8 802404C8 E7A00018 */  swc1      $f0, 0x18($sp)
/* B284FC 802404CC 860200A6 */  lh        $v0, 0xa6($s0)
/* B28500 802404D0 27A60024 */  addiu     $a2, $sp, 0x24
/* B28504 802404D4 44820000 */  mtc1      $v0, $f0
/* B28508 802404D8 00000000 */  nop
/* B2850C 802404DC 46800020 */  cvt.s.w   $f0, $f0
/* B28510 802404E0 E7A0001C */  swc1      $f0, 0x1c($sp)
/* B28514 802404E4 8E040080 */  lw        $a0, 0x80($s0)
/* B28518 802404E8 0C037711 */  jal       npc_test_move_simple_with_slipping
/* B2851C 802404EC 27A70028 */   addiu    $a3, $sp, 0x28
/* B28520 802404F0 10400016 */  beqz      $v0, .L8024054C
/* B28524 802404F4 26310001 */   addiu    $s1, $s1, 1
/* B28528 802404F8 C600000C */  lwc1      $f0, 0xc($s0)
/* B2852C 802404FC 46000021 */  cvt.d.s   $f0, $f0
/* B28530 80240500 46340000 */  add.d     $f0, $f0, $f20
/* B28534 80240504 2A220006 */  slti      $v0, $s1, 6
/* B28538 80240508 46200020 */  cvt.s.d   $f0, $f0
/* B2853C 8024050C 1440FFE6 */  bnez      $v0, .L802404A8
/* B28540 80240510 E600000C */   swc1     $f0, 0xc($s0)
/* B28544 80240514 08090153 */  j         .L8024054C
/* B28548 80240518 00000000 */   nop
.L8024051C:
/* B2854C 8024051C 0C00A67F */  jal       rand_int
/* B28550 80240520 2404003C */   addiu    $a0, $zero, 0x3c
/* B28554 80240524 C60C000C */  lwc1      $f12, 0xc($s0)
/* B28558 80240528 44820000 */  mtc1      $v0, $f0
/* B2855C 8024052C 00000000 */  nop
/* B28560 80240530 46800020 */  cvt.s.w   $f0, $f0
/* B28564 80240534 46006300 */  add.s     $f12, $f12, $f0
/* B28568 80240538 3C0141F0 */  lui       $at, 0x41f0
/* B2856C 8024053C 44810000 */  mtc1      $at, $f0
/* B28570 80240540 0C00A6C9 */  jal       clamp_angle
/* B28574 80240544 46006301 */   sub.s    $f12, $f12, $f0
/* B28578 80240548 E600000C */  swc1      $f0, 0xc($s0)
.L8024054C:
/* B2857C 8024054C 8FBF0040 */  lw        $ra, 0x40($sp)
/* B28580 80240550 8FB3003C */  lw        $s3, 0x3c($sp)
/* B28584 80240554 8FB20038 */  lw        $s2, 0x38($sp)
/* B28588 80240558 8FB10034 */  lw        $s1, 0x34($sp)
/* B2858C 8024055C 8FB00030 */  lw        $s0, 0x30($sp)
/* B28590 80240560 D7B60050 */  ldc1      $f22, 0x50($sp)
/* B28594 80240564 D7B40048 */  ldc1      $f20, 0x48($sp)
/* B28598 80240568 03E00008 */  jr        $ra
/* B2859C 8024056C 27BD0058 */   addiu    $sp, $sp, 0x58
