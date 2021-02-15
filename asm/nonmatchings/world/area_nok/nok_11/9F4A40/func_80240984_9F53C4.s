.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240984_9F53C4
/* 9F53C4 80240984 27BDFF80 */  addiu     $sp, $sp, -0x80
/* 9F53C8 80240988 AFB3004C */  sw        $s3, 0x4c($sp)
/* 9F53CC 8024098C 0080982D */  daddu     $s3, $a0, $zero
/* 9F53D0 80240990 AFBF0058 */  sw        $ra, 0x58($sp)
/* 9F53D4 80240994 AFB50054 */  sw        $s5, 0x54($sp)
/* 9F53D8 80240998 AFB40050 */  sw        $s4, 0x50($sp)
/* 9F53DC 8024099C AFB20048 */  sw        $s2, 0x48($sp)
/* 9F53E0 802409A0 AFB10044 */  sw        $s1, 0x44($sp)
/* 9F53E4 802409A4 AFB00040 */  sw        $s0, 0x40($sp)
/* 9F53E8 802409A8 F7BA0078 */  sdc1      $f26, 0x78($sp)
/* 9F53EC 802409AC F7B80070 */  sdc1      $f24, 0x70($sp)
/* 9F53F0 802409B0 F7B60068 */  sdc1      $f22, 0x68($sp)
/* 9F53F4 802409B4 F7B40060 */  sdc1      $f20, 0x60($sp)
/* 9F53F8 802409B8 8E710148 */  lw        $s1, 0x148($s3)
/* 9F53FC 802409BC 00A0902D */  daddu     $s2, $a1, $zero
/* 9F5400 802409C0 86240008 */  lh        $a0, 8($s1)
/* 9F5404 802409C4 0C00EABB */  jal       get_npc_unsafe
/* 9F5408 802409C8 00C0A82D */   daddu    $s5, $a2, $zero
/* 9F540C 802409CC 0040802D */  daddu     $s0, $v0, $zero
/* 9F5410 802409D0 0000A02D */  daddu     $s4, $zero, $zero
/* 9F5414 802409D4 C624007C */  lwc1      $f4, 0x7c($s1)
/* 9F5418 802409D8 46802120 */  cvt.s.w   $f4, $f4
/* 9F541C 802409DC C6220088 */  lwc1      $f2, 0x88($s1)
/* 9F5420 802409E0 468010A0 */  cvt.s.w   $f2, $f2
/* 9F5424 802409E4 460010A1 */  cvt.d.s   $f2, $f2
/* 9F5428 802409E8 46002121 */  cvt.d.s   $f4, $f4
/* 9F542C 802409EC C600003C */  lwc1      $f0, 0x3c($s0)
/* 9F5430 802409F0 3C014059 */  lui       $at, 0x4059
/* 9F5434 802409F4 44813800 */  mtc1      $at, $f7
/* 9F5438 802409F8 44803000 */  mtc1      $zero, $f6
/* 9F543C 802409FC 46000021 */  cvt.d.s   $f0, $f0
/* 9F5440 80240A00 46260002 */  mul.d     $f0, $f0, $f6
/* 9F5444 80240A04 00000000 */  nop
/* 9F5448 80240A08 24020001 */  addiu     $v0, $zero, 1
/* 9F544C 80240A0C 8E24006C */  lw        $a0, 0x6c($s1)
/* 9F5450 80240A10 46261083 */  div.d     $f2, $f2, $f6
/* 9F5454 80240A14 462010A0 */  cvt.s.d   $f2, $f2
/* 9F5458 80240A18 46262103 */  div.d     $f4, $f4, $f6
/* 9F545C 80240A1C 46202520 */  cvt.s.d   $f20, $f4
/* 9F5460 80240A20 30830011 */  andi      $v1, $a0, 0x11
/* 9F5464 80240A24 4620020D */  trunc.w.d $f8, $f0
/* 9F5468 80240A28 E628007C */  swc1      $f8, 0x7c($s1)
/* 9F546C 80240A2C C6200078 */  lwc1      $f0, 0x78($s1)
/* 9F5470 80240A30 46800020 */  cvt.s.w   $f0, $f0
/* 9F5474 80240A34 46000021 */  cvt.d.s   $f0, $f0
/* 9F5478 80240A38 46260003 */  div.d     $f0, $f0, $f6
/* 9F547C 80240A3C 462006A0 */  cvt.s.d   $f26, $f0
/* 9F5480 80240A40 C6200070 */  lwc1      $f0, 0x70($s1)
/* 9F5484 80240A44 46800020 */  cvt.s.w   $f0, $f0
/* 9F5488 80240A48 46000021 */  cvt.d.s   $f0, $f0
/* 9F548C 80240A4C 46260003 */  div.d     $f0, $f0, $f6
/* 9F5490 80240A50 462005A0 */  cvt.s.d   $f22, $f0
/* 9F5494 80240A54 14620025 */  bne       $v1, $v0, .L80240AEC
/* 9F5498 80240A58 4602D600 */   add.s    $f24, $f26, $f2
/* 9F549C 80240A5C 8E020000 */  lw        $v0, ($s0)
/* 9F54A0 80240A60 30420008 */  andi      $v0, $v0, 8
/* 9F54A4 80240A64 10400009 */  beqz      $v0, .L80240A8C
/* 9F54A8 80240A68 27A50028 */   addiu    $a1, $sp, 0x28
/* 9F54AC 80240A6C C600003C */  lwc1      $f0, 0x3c($s0)
/* 9F54B0 80240A70 4600C001 */  sub.s     $f0, $f24, $f0
/* 9F54B4 80240A74 4600B03C */  c.lt.s    $f22, $f0
/* 9F54B8 80240A78 00000000 */  nop
/* 9F54BC 80240A7C 4500001B */  bc1f      .L80240AEC
/* 9F54C0 80240A80 34820010 */   ori      $v0, $a0, 0x10
/* 9F54C4 80240A84 080902BB */  j         .L80240AEC
/* 9F54C8 80240A88 AE22006C */   sw       $v0, 0x6c($s1)
.L80240A8C:
/* 9F54CC 80240A8C 27A6002C */  addiu     $a2, $sp, 0x2c
/* 9F54D0 80240A90 C6000038 */  lwc1      $f0, 0x38($s0)
/* 9F54D4 80240A94 C602003C */  lwc1      $f2, 0x3c($s0)
/* 9F54D8 80240A98 C6040040 */  lwc1      $f4, 0x40($s0)
/* 9F54DC 80240A9C 3C01447A */  lui       $at, 0x447a
/* 9F54E0 80240AA0 44813000 */  mtc1      $at, $f6
/* 9F54E4 80240AA4 27A20034 */  addiu     $v0, $sp, 0x34
/* 9F54E8 80240AA8 E7A00028 */  swc1      $f0, 0x28($sp)
/* 9F54EC 80240AAC E7A2002C */  swc1      $f2, 0x2c($sp)
/* 9F54F0 80240AB0 E7A40030 */  swc1      $f4, 0x30($sp)
/* 9F54F4 80240AB4 E7A60034 */  swc1      $f6, 0x34($sp)
/* 9F54F8 80240AB8 AFA20010 */  sw        $v0, 0x10($sp)
/* 9F54FC 80240ABC 8E040080 */  lw        $a0, 0x80($s0)
/* 9F5500 80240AC0 0C0372DF */  jal       func_800DCB7C
/* 9F5504 80240AC4 27A70030 */   addiu    $a3, $sp, 0x30
/* 9F5508 80240AC8 C7A00034 */  lwc1      $f0, 0x34($sp)
/* 9F550C 80240ACC 4600D001 */  sub.s     $f0, $f26, $f0
/* 9F5510 80240AD0 4600B03C */  c.lt.s    $f22, $f0
/* 9F5514 80240AD4 00000000 */  nop
/* 9F5518 80240AD8 45000004 */  bc1f      .L80240AEC
/* 9F551C 80240ADC 00000000 */   nop
/* 9F5520 80240AE0 8E22006C */  lw        $v0, 0x6c($s1)
/* 9F5524 80240AE4 34420010 */  ori       $v0, $v0, 0x10
/* 9F5528 80240AE8 AE22006C */  sw        $v0, 0x6c($s1)
.L80240AEC:
/* 9F552C 80240AEC 8E22006C */  lw        $v0, 0x6c($s1)
/* 9F5530 80240AF0 24030011 */  addiu     $v1, $zero, 0x11
/* 9F5534 80240AF4 30420011 */  andi      $v0, $v0, 0x11
/* 9F5538 80240AF8 14430039 */  bne       $v0, $v1, .L80240BE0
/* 9F553C 80240AFC 00000000 */   nop
/* 9F5540 80240B00 8E020000 */  lw        $v0, ($s0)
/* 9F5544 80240B04 30420008 */  andi      $v0, $v0, 8
/* 9F5548 80240B08 1040000A */  beqz      $v0, .L80240B34
/* 9F554C 80240B0C 4600C106 */   mov.s    $f4, $f24
/* 9F5550 80240B10 4614C081 */  sub.s     $f2, $f24, $f20
/* 9F5554 80240B14 3C018024 */  lui       $at, %hi(D_80245D58_9FA798)
/* 9F5558 80240B18 D4205D58 */  ldc1      $f0, %lo(D_80245D58_9FA798)($at)
/* 9F555C 80240B1C 460010A1 */  cvt.d.s   $f2, $f2
/* 9F5560 80240B20 46201082 */  mul.d     $f2, $f2, $f0
/* 9F5564 80240B24 00000000 */  nop
/* 9F5568 80240B28 4600A021 */  cvt.d.s   $f0, $f20
/* 9F556C 80240B2C 080902E6 */  j         .L80240B98
/* 9F5570 80240B30 46220000 */   add.d    $f0, $f0, $f2
.L80240B34:
/* 9F5574 80240B34 27A50028 */  addiu     $a1, $sp, 0x28
/* 9F5578 80240B38 27A6002C */  addiu     $a2, $sp, 0x2c
/* 9F557C 80240B3C C6000038 */  lwc1      $f0, 0x38($s0)
/* 9F5580 80240B40 C6020040 */  lwc1      $f2, 0x40($s0)
/* 9F5584 80240B44 3C01447A */  lui       $at, 0x447a
/* 9F5588 80240B48 44812000 */  mtc1      $at, $f4
/* 9F558C 80240B4C 27A20034 */  addiu     $v0, $sp, 0x34
/* 9F5590 80240B50 E7B4002C */  swc1      $f20, 0x2c($sp)
/* 9F5594 80240B54 E7A00028 */  swc1      $f0, 0x28($sp)
/* 9F5598 80240B58 E7A20030 */  swc1      $f2, 0x30($sp)
/* 9F559C 80240B5C E7A40034 */  swc1      $f4, 0x34($sp)
/* 9F55A0 80240B60 AFA20010 */  sw        $v0, 0x10($sp)
/* 9F55A4 80240B64 8E040080 */  lw        $a0, 0x80($s0)
/* 9F55A8 80240B68 0C0372DF */  jal       func_800DCB7C
/* 9F55AC 80240B6C 27A70030 */   addiu    $a3, $sp, 0x30
/* 9F55B0 80240B70 C7A4002C */  lwc1      $f4, 0x2c($sp)
/* 9F55B4 80240B74 461A2100 */  add.s     $f4, $f4, $f26
/* 9F55B8 80240B78 46142081 */  sub.s     $f2, $f4, $f20
/* 9F55BC 80240B7C 3C018024 */  lui       $at, %hi(D_80245D60_9FA7A0)
/* 9F55C0 80240B80 D4205D60 */  ldc1      $f0, %lo(D_80245D60_9FA7A0)($at)
/* 9F55C4 80240B84 460010A1 */  cvt.d.s   $f2, $f2
/* 9F55C8 80240B88 46201082 */  mul.d     $f2, $f2, $f0
/* 9F55CC 80240B8C 00000000 */  nop
/* 9F55D0 80240B90 4600A021 */  cvt.d.s   $f0, $f20
/* 9F55D4 80240B94 46220000 */  add.d     $f0, $f0, $f2
.L80240B98:
/* 9F55D8 80240B98 46200020 */  cvt.s.d   $f0, $f0
/* 9F55DC 80240B9C E600003C */  swc1      $f0, 0x3c($s0)
/* 9F55E0 80240BA0 C600003C */  lwc1      $f0, 0x3c($s0)
/* 9F55E4 80240BA4 46002001 */  sub.s     $f0, $f4, $f0
/* 9F55E8 80240BA8 3C013FF0 */  lui       $at, 0x3ff0
/* 9F55EC 80240BAC 44811800 */  mtc1      $at, $f3
/* 9F55F0 80240BB0 44801000 */  mtc1      $zero, $f2
/* 9F55F4 80240BB4 46000005 */  abs.s     $f0, $f0
/* 9F55F8 80240BB8 46000021 */  cvt.d.s   $f0, $f0
/* 9F55FC 80240BBC 4622003C */  c.lt.d    $f0, $f2
/* 9F5600 80240BC0 00000000 */  nop
/* 9F5604 80240BC4 45000036 */  bc1f      .L80240CA0
/* 9F5608 80240BC8 2403FFEF */   addiu    $v1, $zero, -0x11
/* 9F560C 80240BCC E604003C */  swc1      $f4, 0x3c($s0)
/* 9F5610 80240BD0 8E22006C */  lw        $v0, 0x6c($s1)
/* 9F5614 80240BD4 00431024 */  and       $v0, $v0, $v1
/* 9F5618 80240BD8 08090328 */  j         .L80240CA0
/* 9F561C 80240BDC AE22006C */   sw       $v0, 0x6c($s1)
.L80240BE0:
/* 9F5620 80240BE0 8E220070 */  lw        $v0, 0x70($s1)
/* 9F5624 80240BE4 1840002E */  blez      $v0, .L80240CA0
/* 9F5628 80240BE8 00000000 */   nop
/* 9F562C 80240BEC C62C0074 */  lwc1      $f12, 0x74($s1)
/* 9F5630 80240BF0 0C00A8BB */  jal       sin_deg
/* 9F5634 80240BF4 46806320 */   cvt.s.w  $f12, $f12
/* 9F5638 80240BF8 8E020000 */  lw        $v0, ($s0)
/* 9F563C 80240BFC 30420008 */  andi      $v0, $v0, 8
/* 9F5640 80240C00 10400003 */  beqz      $v0, .L80240C10
/* 9F5644 80240C04 46000506 */   mov.s    $f20, $f0
/* 9F5648 80240C08 08090314 */  j         .L80240C50
/* 9F564C 80240C0C 0000102D */   daddu    $v0, $zero, $zero
.L80240C10:
/* 9F5650 80240C10 27A50028 */  addiu     $a1, $sp, 0x28
/* 9F5654 80240C14 27A6002C */  addiu     $a2, $sp, 0x2c
/* 9F5658 80240C18 C6000038 */  lwc1      $f0, 0x38($s0)
/* 9F565C 80240C1C C602003C */  lwc1      $f2, 0x3c($s0)
/* 9F5660 80240C20 C6040040 */  lwc1      $f4, 0x40($s0)
/* 9F5664 80240C24 3C01447A */  lui       $at, 0x447a
/* 9F5668 80240C28 44813000 */  mtc1      $at, $f6
/* 9F566C 80240C2C 27A20034 */  addiu     $v0, $sp, 0x34
/* 9F5670 80240C30 E7A00028 */  swc1      $f0, 0x28($sp)
/* 9F5674 80240C34 E7A2002C */  swc1      $f2, 0x2c($sp)
/* 9F5678 80240C38 E7A40030 */  swc1      $f4, 0x30($sp)
/* 9F567C 80240C3C E7A60034 */  swc1      $f6, 0x34($sp)
/* 9F5680 80240C40 AFA20010 */  sw        $v0, 0x10($sp)
/* 9F5684 80240C44 8E040080 */  lw        $a0, 0x80($s0)
/* 9F5688 80240C48 0C0372DF */  jal       func_800DCB7C
/* 9F568C 80240C4C 27A70030 */   addiu    $a3, $sp, 0x30
.L80240C50:
/* 9F5690 80240C50 10400007 */  beqz      $v0, .L80240C70
/* 9F5694 80240C54 00000000 */   nop
/* 9F5698 80240C58 4616A082 */  mul.s     $f2, $f20, $f22
/* 9F569C 80240C5C 00000000 */  nop
/* 9F56A0 80240C60 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* 9F56A4 80240C64 461A0000 */  add.s     $f0, $f0, $f26
/* 9F56A8 80240C68 0809031F */  j         .L80240C7C
/* 9F56AC 80240C6C 46020000 */   add.s    $f0, $f0, $f2
.L80240C70:
/* 9F56B0 80240C70 4616A002 */  mul.s     $f0, $f20, $f22
/* 9F56B4 80240C74 00000000 */  nop
/* 9F56B8 80240C78 4600C000 */  add.s     $f0, $f24, $f0
.L80240C7C:
/* 9F56BC 80240C7C E600003C */  swc1      $f0, 0x3c($s0)
/* 9F56C0 80240C80 8E220074 */  lw        $v0, 0x74($s1)
/* 9F56C4 80240C84 2442000A */  addiu     $v0, $v0, 0xa
/* 9F56C8 80240C88 44826000 */  mtc1      $v0, $f12
/* 9F56CC 80240C8C 00000000 */  nop
/* 9F56D0 80240C90 0C00A6C9 */  jal       clamp_angle
/* 9F56D4 80240C94 46806320 */   cvt.s.w  $f12, $f12
/* 9F56D8 80240C98 4600020D */  trunc.w.s $f8, $f0
/* 9F56DC 80240C9C E6280074 */  swc1      $f8, 0x74($s1)
.L80240CA0:
/* 9F56E0 80240CA0 8E220090 */  lw        $v0, 0x90($s1)
/* 9F56E4 80240CA4 1C40004A */  bgtz      $v0, .L80240DD0
/* 9F56E8 80240CA8 2442FFFF */   addiu    $v0, $v0, -1
/* 9F56EC 80240CAC 8E430014 */  lw        $v1, 0x14($s2)
/* 9F56F0 80240CB0 04600048 */  bltz      $v1, .L80240DD4
/* 9F56F4 80240CB4 00000000 */   nop
/* 9F56F8 80240CB8 8E620074 */  lw        $v0, 0x74($s3)
/* 9F56FC 80240CBC 1C400042 */  bgtz      $v0, .L80240DC8
/* 9F5700 80240CC0 2442FFFF */   addiu    $v0, $v0, -1
/* 9F5704 80240CC4 AE630074 */  sw        $v1, 0x74($s3)
/* 9F5708 80240CC8 860200A8 */  lh        $v0, 0xa8($s0)
/* 9F570C 80240CCC C602003C */  lwc1      $f2, 0x3c($s0)
/* 9F5710 80240CD0 44820000 */  mtc1      $v0, $f0
/* 9F5714 80240CD4 00000000 */  nop
/* 9F5718 80240CD8 46800020 */  cvt.s.w   $f0, $f0
/* 9F571C 80240CDC 46001080 */  add.s     $f2, $f2, $f0
/* 9F5720 80240CE0 3C014024 */  lui       $at, 0x4024
/* 9F5724 80240CE4 44810800 */  mtc1      $at, $f1
/* 9F5728 80240CE8 44800000 */  mtc1      $zero, $f0
/* 9F572C 80240CEC 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 9F5730 80240CF0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 9F5734 80240CF4 460010A1 */  cvt.d.s   $f2, $f2
/* 9F5738 80240CF8 46201080 */  add.d     $f2, $f2, $f0
/* 9F573C 80240CFC C440002C */  lwc1      $f0, 0x2c($v0)
/* 9F5740 80240D00 46000021 */  cvt.d.s   $f0, $f0
/* 9F5744 80240D04 4622003C */  c.lt.d    $f0, $f2
/* 9F5748 80240D08 00000000 */  nop
/* 9F574C 80240D0C 4500002C */  bc1f      .L80240DC0
/* 9F5750 80240D10 02A0202D */   daddu    $a0, $s5, $zero
/* 9F5754 80240D14 AFA00010 */  sw        $zero, 0x10($sp)
/* 9F5758 80240D18 8E46000C */  lw        $a2, 0xc($s2)
/* 9F575C 80240D1C 8E470010 */  lw        $a3, 0x10($s2)
/* 9F5760 80240D20 0C01242D */  jal       func_800490B4
/* 9F5764 80240D24 0220282D */   daddu    $a1, $s1, $zero
/* 9F5768 80240D28 10400025 */  beqz      $v0, .L80240DC0
/* 9F576C 80240D2C 0000202D */   daddu    $a0, $zero, $zero
/* 9F5770 80240D30 0200282D */  daddu     $a1, $s0, $zero
/* 9F5774 80240D34 0000302D */  daddu     $a2, $zero, $zero
/* 9F5778 80240D38 2412000C */  addiu     $s2, $zero, 0xc
/* 9F577C 80240D3C 860300A8 */  lh        $v1, 0xa8($s0)
/* 9F5780 80240D40 3C013F80 */  lui       $at, 0x3f80
/* 9F5784 80240D44 44810000 */  mtc1      $at, $f0
/* 9F5788 80240D48 3C014000 */  lui       $at, 0x4000
/* 9F578C 80240D4C 44811000 */  mtc1      $at, $f2
/* 9F5790 80240D50 3C01C1A0 */  lui       $at, 0xc1a0
/* 9F5794 80240D54 44812000 */  mtc1      $at, $f4
/* 9F5798 80240D58 44834000 */  mtc1      $v1, $f8
/* 9F579C 80240D5C 00000000 */  nop
/* 9F57A0 80240D60 46804220 */  cvt.s.w   $f8, $f8
/* 9F57A4 80240D64 44074000 */  mfc1      $a3, $f8
/* 9F57A8 80240D68 27A20038 */  addiu     $v0, $sp, 0x38
/* 9F57AC 80240D6C AFB2001C */  sw        $s2, 0x1c($sp)
/* 9F57B0 80240D70 AFA20020 */  sw        $v0, 0x20($sp)
/* 9F57B4 80240D74 E7A00010 */  swc1      $f0, 0x10($sp)
/* 9F57B8 80240D78 E7A20014 */  swc1      $f2, 0x14($sp)
/* 9F57BC 80240D7C 0C01BFA4 */  jal       fx_emote
/* 9F57C0 80240D80 E7A40018 */   swc1     $f4, 0x18($sp)
/* 9F57C4 80240D84 0200202D */  daddu     $a0, $s0, $zero
/* 9F57C8 80240D88 240502F4 */  addiu     $a1, $zero, 0x2f4
/* 9F57CC 80240D8C C480003C */  lwc1      $f0, 0x3c($a0)
/* 9F57D0 80240D90 3C060020 */  lui       $a2, 0x20
/* 9F57D4 80240D94 0C012530 */  jal       func_800494C0
/* 9F57D8 80240D98 E4800064 */   swc1     $f0, 0x64($a0)
/* 9F57DC 80240D9C 8E220018 */  lw        $v0, 0x18($s1)
/* 9F57E0 80240DA0 9442002A */  lhu       $v0, 0x2a($v0)
/* 9F57E4 80240DA4 30420001 */  andi      $v0, $v0, 1
/* 9F57E8 80240DA8 10400003 */  beqz      $v0, .L80240DB8
/* 9F57EC 80240DAC 2402000A */   addiu    $v0, $zero, 0xa
/* 9F57F0 80240DB0 080903DE */  j         .L80240F78
/* 9F57F4 80240DB4 AE620070 */   sw       $v0, 0x70($s3)
.L80240DB8:
/* 9F57F8 80240DB8 080903DE */  j         .L80240F78
/* 9F57FC 80240DBC AE720070 */   sw       $s2, 0x70($s3)
.L80240DC0:
/* 9F5800 80240DC0 8E620074 */  lw        $v0, 0x74($s3)
/* 9F5804 80240DC4 2442FFFF */  addiu     $v0, $v0, -1
.L80240DC8:
/* 9F5808 80240DC8 08090375 */  j         .L80240DD4
/* 9F580C 80240DCC AE620074 */   sw       $v0, 0x74($s3)
.L80240DD0:
/* 9F5810 80240DD0 AE220090 */  sw        $v0, 0x90($s1)
.L80240DD4:
/* 9F5814 80240DD4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9F5818 80240DD8 C6000040 */  lwc1      $f0, 0x40($s0)
/* 9F581C 80240DDC C4620000 */  lwc1      $f2, ($v1)
/* 9F5820 80240DE0 468010A0 */  cvt.s.w   $f2, $f2
/* 9F5824 80240DE4 C4640008 */  lwc1      $f4, 8($v1)
/* 9F5828 80240DE8 46802120 */  cvt.s.w   $f4, $f4
/* 9F582C 80240DEC E7A00010 */  swc1      $f0, 0x10($sp)
/* 9F5830 80240DF0 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9F5834 80240DF4 44051000 */  mfc1      $a1, $f2
/* 9F5838 80240DF8 C440000C */  lwc1      $f0, 0xc($v0)
/* 9F583C 80240DFC 46800020 */  cvt.s.w   $f0, $f0
/* 9F5840 80240E00 E7A00014 */  swc1      $f0, 0x14($sp)
/* 9F5844 80240E04 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9F5848 80240E08 44062000 */  mfc1      $a2, $f4
/* 9F584C 80240E0C C4400010 */  lwc1      $f0, 0x10($v0)
/* 9F5850 80240E10 46800020 */  cvt.s.w   $f0, $f0
/* 9F5854 80240E14 E7A00018 */  swc1      $f0, 0x18($sp)
/* 9F5858 80240E18 8C640018 */  lw        $a0, 0x18($v1)
/* 9F585C 80240E1C 0C0123F5 */  jal       is_point_within_region
/* 9F5860 80240E20 8E070038 */   lw       $a3, 0x38($s0)
/* 9F5864 80240E24 1040001A */  beqz      $v0, .L80240E90
/* 9F5868 80240E28 00000000 */   nop
/* 9F586C 80240E2C 8E060038 */  lw        $a2, 0x38($s0)
/* 9F5870 80240E30 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9F5874 80240E34 8E070040 */  lw        $a3, 0x40($s0)
/* 9F5878 80240E38 C44C0000 */  lwc1      $f12, ($v0)
/* 9F587C 80240E3C 46806320 */  cvt.s.w   $f12, $f12
/* 9F5880 80240E40 C44E0008 */  lwc1      $f14, 8($v0)
/* 9F5884 80240E44 0C00A7B5 */  jal       dist2D
/* 9F5888 80240E48 468073A0 */   cvt.s.w  $f14, $f14
/* 9F588C 80240E4C C6020018 */  lwc1      $f2, 0x18($s0)
/* 9F5890 80240E50 4600103C */  c.lt.s    $f2, $f0
/* 9F5894 80240E54 00000000 */  nop
/* 9F5898 80240E58 4500000D */  bc1f      .L80240E90
/* 9F589C 80240E5C E7A00034 */   swc1     $f0, 0x34($sp)
/* 9F58A0 80240E60 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 9F58A4 80240E64 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9F58A8 80240E68 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 9F58AC 80240E6C C4480000 */  lwc1      $f8, ($v0)
/* 9F58B0 80240E70 46804220 */  cvt.s.w   $f8, $f8
/* 9F58B4 80240E74 44064000 */  mfc1      $a2, $f8
/* 9F58B8 80240E78 C4480008 */  lwc1      $f8, 8($v0)
/* 9F58BC 80240E7C 46804220 */  cvt.s.w   $f8, $f8
/* 9F58C0 80240E80 44074000 */  mfc1      $a3, $f8
/* 9F58C4 80240E84 0C00A720 */  jal       atan2
/* 9F58C8 80240E88 24140001 */   addiu    $s4, $zero, 1
/* 9F58CC 80240E8C E600000C */  swc1      $f0, 0xc($s0)
.L80240E90:
/* 9F58D0 80240E90 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9F58D4 80240E94 8C43000C */  lw        $v1, 0xc($v0)
/* 9F58D8 80240E98 8C420010 */  lw        $v0, 0x10($v0)
/* 9F58DC 80240E9C 00621825 */  or        $v1, $v1, $v0
/* 9F58E0 80240EA0 00741825 */  or        $v1, $v1, $s4
/* 9F58E4 80240EA4 10600008 */  beqz      $v1, .L80240EC8
/* 9F58E8 80240EA8 00000000 */   nop
/* 9F58EC 80240EAC 8602008C */  lh        $v0, 0x8c($s0)
/* 9F58F0 80240EB0 14400031 */  bnez      $v0, .L80240F78
/* 9F58F4 80240EB4 00000000 */   nop
/* 9F58F8 80240EB8 8E050018 */  lw        $a1, 0x18($s0)
/* 9F58FC 80240EBC 8E06000C */  lw        $a2, 0xc($s0)
/* 9F5900 80240EC0 0C00EA95 */  jal       npc_move_heading
/* 9F5904 80240EC4 0200202D */   daddu    $a0, $s0, $zero
.L80240EC8:
/* 9F5908 80240EC8 C600003C */  lwc1      $f0, 0x3c($s0)
/* 9F590C 80240ECC 3C014059 */  lui       $at, 0x4059
/* 9F5910 80240ED0 44811800 */  mtc1      $at, $f3
/* 9F5914 80240ED4 44801000 */  mtc1      $zero, $f2
/* 9F5918 80240ED8 46000021 */  cvt.d.s   $f0, $f0
/* 9F591C 80240EDC 46220002 */  mul.d     $f0, $f0, $f2
/* 9F5920 80240EE0 00000000 */  nop
/* 9F5924 80240EE4 4620020D */  trunc.w.d $f8, $f0
/* 9F5928 80240EE8 E628007C */  swc1      $f8, 0x7c($s1)
/* 9F592C 80240EEC 8E420004 */  lw        $v0, 4($s2)
/* 9F5930 80240EF0 18400021 */  blez      $v0, .L80240F78
/* 9F5934 80240EF4 00000000 */   nop
/* 9F5938 80240EF8 8602008E */  lh        $v0, 0x8e($s0)
/* 9F593C 80240EFC 9603008E */  lhu       $v1, 0x8e($s0)
/* 9F5940 80240F00 18400005 */  blez      $v0, .L80240F18
/* 9F5944 80240F04 2462FFFF */   addiu    $v0, $v1, -1
/* 9F5948 80240F08 A602008E */  sh        $v0, 0x8e($s0)
/* 9F594C 80240F0C 00021400 */  sll       $v0, $v0, 0x10
/* 9F5950 80240F10 1C400019 */  bgtz      $v0, .L80240F78
/* 9F5954 80240F14 00000000 */   nop
.L80240F18:
/* 9F5958 80240F18 240403E8 */  addiu     $a0, $zero, 0x3e8
/* 9F595C 80240F1C 24020002 */  addiu     $v0, $zero, 2
/* 9F5960 80240F20 0C00A67F */  jal       rand_int
/* 9F5964 80240F24 AE620070 */   sw       $v0, 0x70($s3)
/* 9F5968 80240F28 3C035555 */  lui       $v1, 0x5555
/* 9F596C 80240F2C 34635556 */  ori       $v1, $v1, 0x5556
/* 9F5970 80240F30 00430018 */  mult      $v0, $v1
/* 9F5974 80240F34 000227C3 */  sra       $a0, $v0, 0x1f
/* 9F5978 80240F38 00004010 */  mfhi      $t0
/* 9F597C 80240F3C 01042023 */  subu      $a0, $t0, $a0
/* 9F5980 80240F40 00041840 */  sll       $v1, $a0, 1
/* 9F5984 80240F44 00641821 */  addu      $v1, $v1, $a0
/* 9F5988 80240F48 00431023 */  subu      $v0, $v0, $v1
/* 9F598C 80240F4C 24430002 */  addiu     $v1, $v0, 2
/* 9F5990 80240F50 AE630074 */  sw        $v1, 0x74($s3)
/* 9F5994 80240F54 8E42002C */  lw        $v0, 0x2c($s2)
/* 9F5998 80240F58 58400007 */  blezl     $v0, .L80240F78
/* 9F599C 80240F5C AE600070 */   sw       $zero, 0x70($s3)
/* 9F59A0 80240F60 8E420008 */  lw        $v0, 8($s2)
/* 9F59A4 80240F64 18400003 */  blez      $v0, .L80240F74
/* 9F59A8 80240F68 28620003 */   slti     $v0, $v1, 3
/* 9F59AC 80240F6C 10400002 */  beqz      $v0, .L80240F78
/* 9F59B0 80240F70 00000000 */   nop
.L80240F74:
/* 9F59B4 80240F74 AE600070 */  sw        $zero, 0x70($s3)
.L80240F78:
/* 9F59B8 80240F78 8FBF0058 */  lw        $ra, 0x58($sp)
/* 9F59BC 80240F7C 8FB50054 */  lw        $s5, 0x54($sp)
/* 9F59C0 80240F80 8FB40050 */  lw        $s4, 0x50($sp)
/* 9F59C4 80240F84 8FB3004C */  lw        $s3, 0x4c($sp)
/* 9F59C8 80240F88 8FB20048 */  lw        $s2, 0x48($sp)
/* 9F59CC 80240F8C 8FB10044 */  lw        $s1, 0x44($sp)
/* 9F59D0 80240F90 8FB00040 */  lw        $s0, 0x40($sp)
/* 9F59D4 80240F94 D7BA0078 */  ldc1      $f26, 0x78($sp)
/* 9F59D8 80240F98 D7B80070 */  ldc1      $f24, 0x70($sp)
/* 9F59DC 80240F9C D7B60068 */  ldc1      $f22, 0x68($sp)
/* 9F59E0 80240FA0 D7B40060 */  ldc1      $f20, 0x60($sp)
/* 9F59E4 80240FA4 03E00008 */  jr        $ra
/* 9F59E8 80240FA8 27BD0080 */   addiu    $sp, $sp, 0x80
