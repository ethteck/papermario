.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800394A8
/* 148A8 800394A8 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 148AC 800394AC AFB00030 */  sw        $s0, 0x30($sp)
/* 148B0 800394B0 0080802D */  daddu     $s0, $a0, $zero
/* 148B4 800394B4 AFBF0034 */  sw        $ra, 0x34($sp)
/* 148B8 800394B8 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 148BC 800394BC 8E030000 */  lw        $v1, ($s0)
/* 148C0 800394C0 44852000 */  mtc1      $a1, $f4
/* 148C4 800394C4 30620208 */  andi      $v0, $v1, 0x208
/* 148C8 800394C8 14400044 */  bnez      $v0, .L800395DC
/* 148CC 800394CC 0000102D */   daddu    $v0, $zero, $zero
/* 148D0 800394D0 30620800 */  andi      $v0, $v1, 0x800
/* 148D4 800394D4 10400005 */  beqz      $v0, .L800394EC
/* 148D8 800394D8 2402EFFF */   addiu    $v0, $zero, -0x1001
/* 148DC 800394DC 00621024 */  and       $v0, $v1, $v0
/* 148E0 800394E0 AE020000 */  sw        $v0, ($s0)
/* 148E4 800394E4 0800E577 */  j         .L800395DC
/* 148E8 800394E8 0000102D */   daddu    $v0, $zero, $zero
.L800394EC:
/* 148EC 800394EC C6000038 */  lwc1      $f0, 0x38($s0)
/* 148F0 800394F0 3C014180 */  lui       $at, 0x4180
/* 148F4 800394F4 44811000 */  mtc1      $at, $f2
/* 148F8 800394F8 E7A00020 */  swc1      $f0, 0x20($sp)
/* 148FC 800394FC 46002005 */  abs.s     $f0, $f4
/* 14900 80039500 46020500 */  add.s     $f20, $f0, $f2
/* 14904 80039504 C600003C */  lwc1      $f0, 0x3c($s0)
/* 14908 80039508 3C014150 */  lui       $at, 0x4150
/* 1490C 8003950C 44811000 */  mtc1      $at, $f2
/* 14910 80039510 C6040040 */  lwc1      $f4, 0x40($s0)
/* 14914 80039514 46020000 */  add.s     $f0, $f0, $f2
/* 14918 80039518 E7A40028 */  swc1      $f4, 0x28($sp)
/* 1491C 8003951C E7B4002C */  swc1      $f20, 0x2c($sp)
/* 14920 80039520 E7A00024 */  swc1      $f0, 0x24($sp)
/* 14924 80039524 8E020000 */  lw        $v0, ($s0)
/* 14928 80039528 3C030400 */  lui       $v1, 0x400
/* 1492C 8003952C 00431024 */  and       $v0, $v0, $v1
/* 14930 80039530 14400009 */  bnez      $v0, .L80039558
/* 14934 80039534 27A2002C */   addiu    $v0, $sp, 0x2c
/* 14938 80039538 27A50020 */  addiu     $a1, $sp, 0x20
/* 1493C 8003953C 27A60024 */  addiu     $a2, $sp, 0x24
/* 14940 80039540 AFA20010 */  sw        $v0, 0x10($sp)
/* 14944 80039544 8E040080 */  lw        $a0, 0x80($s0)
/* 14948 80039548 0C0372D7 */  jal       func_800DCB5C
/* 1494C 8003954C 27A70028 */   addiu    $a3, $sp, 0x28
/* 14950 80039550 0800E563 */  j         .L8003958C
/* 14954 80039554 00000000 */   nop
.L80039558:
/* 14958 80039558 AFA20010 */  sw        $v0, 0x10($sp)
/* 1495C 8003955C C600000C */  lwc1      $f0, 0xc($s0)
/* 14960 80039560 27A50020 */  addiu     $a1, $sp, 0x20
/* 14964 80039564 E7A00014 */  swc1      $f0, 0x14($sp)
/* 14968 80039568 860200A6 */  lh        $v0, 0xa6($s0)
/* 1496C 8003956C 27A60024 */  addiu     $a2, $sp, 0x24
/* 14970 80039570 44820000 */  mtc1      $v0, $f0
/* 14974 80039574 00000000 */  nop
/* 14978 80039578 46800020 */  cvt.s.w   $f0, $f0
/* 1497C 8003957C E7A00018 */  swc1      $f0, 0x18($sp)
/* 14980 80039580 8E040080 */  lw        $a0, 0x80($s0)
/* 14984 80039584 0C0371D6 */  jal       func_800DC758
/* 14988 80039588 27A70028 */   addiu    $a3, $sp, 0x28
.L8003958C:
/* 1498C 8003958C 1040000F */  beqz      $v0, .L800395CC
/* 14990 80039590 0000102D */   daddu    $v0, $zero, $zero
/* 14994 80039594 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* 14998 80039598 4614003E */  c.le.s    $f0, $f20
/* 1499C 8003959C 00000000 */  nop
/* 149A0 800395A0 45000009 */  bc1f      .L800395C8
/* 149A4 800395A4 24020001 */   addiu    $v0, $zero, 1
/* 149A8 800395A8 C7A00024 */  lwc1      $f0, 0x24($sp)
/* 149AC 800395AC 8E030000 */  lw        $v1, ($s0)
/* 149B0 800395B0 3C048011 */  lui       $a0, %hi(D_8010CB3A)
/* 149B4 800395B4 9484CB3A */  lhu       $a0, %lo(D_8010CB3A)($a0)
/* 149B8 800395B8 34631000 */  ori       $v1, $v1, 0x1000
/* 149BC 800395BC E600003C */  swc1      $f0, 0x3c($s0)
/* 149C0 800395C0 0800E576 */  j         .L800395D8
/* 149C4 800395C4 A6040084 */   sh       $a0, 0x84($s0)
.L800395C8:
/* 149C8 800395C8 0000102D */  daddu     $v0, $zero, $zero
.L800395CC:
/* 149CC 800395CC 8E030000 */  lw        $v1, ($s0)
/* 149D0 800395D0 2404EFFF */  addiu     $a0, $zero, -0x1001
/* 149D4 800395D4 00641824 */  and       $v1, $v1, $a0
.L800395D8:
/* 149D8 800395D8 AE030000 */  sw        $v1, ($s0)
.L800395DC:
/* 149DC 800395DC 8FBF0034 */  lw        $ra, 0x34($sp)
/* 149E0 800395E0 8FB00030 */  lw        $s0, 0x30($sp)
/* 149E4 800395E4 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 149E8 800395E8 03E00008 */  jr        $ra
/* 149EC 800395EC 27BD0040 */   addiu    $sp, $sp, 0x40
