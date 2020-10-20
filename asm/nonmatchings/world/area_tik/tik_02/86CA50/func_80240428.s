.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240428
/* 86CB68 80240428 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 86CB6C 8024042C AFB10014 */  sw        $s1, 0x14($sp)
/* 86CB70 80240430 0080882D */  daddu     $s1, $a0, $zero
/* 86CB74 80240434 AFBF001C */  sw        $ra, 0x1c($sp)
/* 86CB78 80240438 AFB20018 */  sw        $s2, 0x18($sp)
/* 86CB7C 8024043C AFB00010 */  sw        $s0, 0x10($sp)
/* 86CB80 80240440 8E240084 */  lw        $a0, 0x84($s1)
/* 86CB84 80240444 0C04C3D6 */  jal       get_item_entity
/* 86CB88 80240448 00A0802D */   daddu    $s0, $a1, $zero
/* 86CB8C 8024044C 12000005 */  beqz      $s0, .L80240464
/* 86CB90 80240450 0040902D */   daddu    $s2, $v0, $zero
/* 86CB94 80240454 C640000C */  lwc1      $f0, 0xc($s2)
/* 86CB98 80240458 AE200074 */  sw        $zero, 0x74($s1)
/* 86CB9C 8024045C AE20007C */  sw        $zero, 0x7c($s1)
/* 86CBA0 80240460 E6200078 */  swc1      $f0, 0x78($s1)
.L80240464:
/* 86CBA4 80240464 8E230074 */  lw        $v1, 0x74($s1)
/* 86CBA8 80240468 10600005 */  beqz      $v1, .L80240480
/* 86CBAC 8024046C 24020001 */   addiu    $v0, $zero, 1
/* 86CBB0 80240470 10620024 */  beq       $v1, $v0, .L80240504
/* 86CBB4 80240474 00000000 */   nop      
/* 86CBB8 80240478 08090157 */  j         .L8024055C
/* 86CBBC 8024047C 00000000 */   nop      
.L80240480:
/* 86CBC0 80240480 3C013FC9 */  lui       $at, 0x3fc9
/* 86CBC4 80240484 34210FD8 */  ori       $at, $at, 0xfd8
/* 86CBC8 80240488 44810000 */  mtc1      $at, $f0
/* 86CBCC 8024048C C62C007C */  lwc1      $f12, 0x7c($s1)
/* 86CBD0 80240490 46806320 */  cvt.s.w   $f12, $f12
/* 86CBD4 80240494 46006302 */  mul.s     $f12, $f12, $f0
/* 86CBD8 80240498 00000000 */  nop       
/* 86CBDC 8024049C 3C0141F0 */  lui       $at, 0x41f0
/* 86CBE0 802404A0 44810000 */  mtc1      $at, $f0
/* 86CBE4 802404A4 0C00A874 */  jal       cos_rad
/* 86CBE8 802404A8 46006303 */   div.s    $f12, $f12, $f0
/* 86CBEC 802404AC 3C013F80 */  lui       $at, 0x3f80
/* 86CBF0 802404B0 44811000 */  mtc1      $at, $f2
/* 86CBF4 802404B4 00000000 */  nop       
/* 86CBF8 802404B8 46001081 */  sub.s     $f2, $f2, $f0
/* 86CBFC 802404BC 3C0141A0 */  lui       $at, 0x41a0
/* 86CC00 802404C0 44810000 */  mtc1      $at, $f0
/* 86CC04 802404C4 00000000 */  nop       
/* 86CC08 802404C8 46001082 */  mul.s     $f2, $f2, $f0
/* 86CC0C 802404CC 00000000 */  nop       
/* 86CC10 802404D0 C6200078 */  lwc1      $f0, 0x78($s1)
/* 86CC14 802404D4 46020000 */  add.s     $f0, $f0, $f2
/* 86CC18 802404D8 E640000C */  swc1      $f0, 0xc($s2)
/* 86CC1C 802404DC 8E23007C */  lw        $v1, 0x7c($s1)
/* 86CC20 802404E0 2402001E */  addiu     $v0, $zero, 0x1e
/* 86CC24 802404E4 14620005 */  bne       $v1, $v0, .L802404FC
/* 86CC28 802404E8 24620001 */   addiu    $v0, $v1, 1
/* 86CC2C 802404EC 24020001 */  addiu     $v0, $zero, 1
/* 86CC30 802404F0 AE220074 */  sw        $v0, 0x74($s1)
/* 86CC34 802404F4 08090157 */  j         .L8024055C
/* 86CC38 802404F8 AE20007C */   sw       $zero, 0x7c($s1)
.L802404FC:
/* 86CC3C 802404FC 08090157 */  j         .L8024055C
/* 86CC40 80240500 AE22007C */   sw       $v0, 0x7c($s1)
.L80240504:
/* 86CC44 80240504 C62C007C */  lwc1      $f12, 0x7c($s1)
/* 86CC48 80240508 0C00A8D4 */  jal       cos_deg
/* 86CC4C 8024050C 46806320 */   cvt.s.w  $f12, $f12
/* 86CC50 80240510 3C014040 */  lui       $at, 0x4040
/* 86CC54 80240514 44811000 */  mtc1      $at, $f2
/* 86CC58 80240518 00000000 */  nop       
/* 86CC5C 8024051C 46020002 */  mul.s     $f0, $f0, $f2
/* 86CC60 80240520 00000000 */  nop       
/* 86CC64 80240524 3C014188 */  lui       $at, 0x4188
/* 86CC68 80240528 44812000 */  mtc1      $at, $f4
/* 86CC6C 8024052C C6220078 */  lwc1      $f2, 0x78($s1)
/* 86CC70 80240530 46041080 */  add.s     $f2, $f2, $f4
/* 86CC74 80240534 46001080 */  add.s     $f2, $f2, $f0
/* 86CC78 80240538 E642000C */  swc1      $f2, 0xc($s2)
/* 86CC7C 8024053C 8E22007C */  lw        $v0, 0x7c($s1)
/* 86CC80 80240540 24420009 */  addiu     $v0, $v0, 9
/* 86CC84 80240544 44826000 */  mtc1      $v0, $f12
/* 86CC88 80240548 00000000 */  nop       
/* 86CC8C 8024054C 0C00A6C9 */  jal       clamp_angle
/* 86CC90 80240550 46806320 */   cvt.s.w  $f12, $f12
/* 86CC94 80240554 4600018D */  trunc.w.s $f6, $f0
/* 86CC98 80240558 E626007C */  swc1      $f6, 0x7c($s1)
.L8024055C:
/* 86CC9C 8024055C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 86CCA0 80240560 8FB20018 */  lw        $s2, 0x18($sp)
/* 86CCA4 80240564 8FB10014 */  lw        $s1, 0x14($sp)
/* 86CCA8 80240568 8FB00010 */  lw        $s0, 0x10($sp)
/* 86CCAC 8024056C 0000102D */  daddu     $v0, $zero, $zero
/* 86CCB0 80240570 03E00008 */  jr        $ra
/* 86CCB4 80240574 27BD0020 */   addiu    $sp, $sp, 0x20