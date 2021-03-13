.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel D_802EB320
.double 0.7

glabel D_802EB328
.double 0.4

.section .text

glabel func_802E75E4
/* 108E64 802E75E4 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 108E68 802E75E8 AFB00028 */  sw        $s0, 0x28($sp)
/* 108E6C 802E75EC 0080802D */  daddu     $s0, $a0, $zero
/* 108E70 802E75F0 AFBF0034 */  sw        $ra, 0x34($sp)
/* 108E74 802E75F4 AFB20030 */  sw        $s2, 0x30($sp)
/* 108E78 802E75F8 AFB1002C */  sw        $s1, 0x2c($sp)
/* 108E7C 802E75FC F7BC0058 */  sdc1      $f28, 0x58($sp)
/* 108E80 802E7600 F7BA0050 */  sdc1      $f26, 0x50($sp)
/* 108E84 802E7604 F7B80048 */  sdc1      $f24, 0x48($sp)
/* 108E88 802E7608 F7B60040 */  sdc1      $f22, 0x40($sp)
/* 108E8C 802E760C F7B40038 */  sdc1      $f20, 0x38($sp)
/* 108E90 802E7610 8E110040 */  lw        $s1, 0x40($s0)
/* 108E94 802E7614 8E220010 */  lw        $v0, 0x10($s1)
/* 108E98 802E7618 3C128011 */  lui       $s2, %hi(gPlayerStatus)
/* 108E9C 802E761C 2652EFC8 */  addiu     $s2, $s2, %lo(gPlayerStatus)
/* 108EA0 802E7620 10400006 */  beqz      $v0, .L802E763C
/* 108EA4 802E7624 00000000 */   nop
/* 108EA8 802E7628 8E240014 */  lw        $a0, 0x14($s1)
/* 108EAC 802E762C 8E250018 */  lw        $a1, 0x18($s1)
/* 108EB0 802E7630 8E26001C */  lw        $a2, 0x1c($s1)
/* 108EB4 802E7634 0C04D083 */  jal       set_item_entity_position
/* 108EB8 802E7638 8E270020 */   lw       $a3, 0x20($s1)
.L802E763C:
/* 108EBC 802E763C 0C0B9C8C */  jal       func_802E7230
/* 108EC0 802E7640 0200202D */   daddu    $a0, $s0, $zero
/* 108EC4 802E7644 92230004 */  lbu       $v1, 4($s1)
/* 108EC8 802E7648 24020001 */  addiu     $v0, $zero, 1
/* 108ECC 802E764C 1062001E */  beq       $v1, $v0, .L802E76C8
/* 108ED0 802E7650 28620002 */   slti     $v0, $v1, 2
/* 108ED4 802E7654 50400005 */  beql      $v0, $zero, .L802E766C
/* 108ED8 802E7658 24020002 */   addiu    $v0, $zero, 2
/* 108EDC 802E765C 10600009 */  beqz      $v1, .L802E7684
/* 108EE0 802E7660 00000000 */   nop
/* 108EE4 802E7664 080B9EAE */  j         .L802E7AB8
/* 108EE8 802E7668 00000000 */   nop
.L802E766C:
/* 108EEC 802E766C 1062002C */  beq       $v1, $v0, .L802E7720
/* 108EF0 802E7670 24020003 */   addiu    $v0, $zero, 3
/* 108EF4 802E7674 10620107 */  beq       $v1, $v0, .L802E7A94
/* 108EF8 802E7678 00000000 */   nop
/* 108EFC 802E767C 080B9EAE */  j         .L802E7AB8
/* 108F00 802E7680 00000000 */   nop
.L802E7684:
/* 108F04 802E7684 96220002 */  lhu       $v0, 2($s1)
/* 108F08 802E7688 2442FFFF */  addiu     $v0, $v0, -1
/* 108F0C 802E768C A6220002 */  sh        $v0, 2($s1)
/* 108F10 802E7690 00021400 */  sll       $v0, $v0, 0x10
/* 108F14 802E7694 14400108 */  bnez      $v0, .L802E7AB8
/* 108F18 802E7698 00000000 */   nop
/* 108F1C 802E769C 92220004 */  lbu       $v0, 4($s1)
/* 108F20 802E76A0 3C0141A0 */  lui       $at, 0x41a0
/* 108F24 802E76A4 44810000 */  mtc1      $at, $f0
/* 108F28 802E76A8 3C014100 */  lui       $at, 0x4100
/* 108F2C 802E76AC 44811000 */  mtc1      $at, $f2
/* 108F30 802E76B0 AE200024 */  sw        $zero, 0x24($s1)
/* 108F34 802E76B4 24420001 */  addiu     $v0, $v0, 1
/* 108F38 802E76B8 A2220004 */  sb        $v0, 4($s1)
/* 108F3C 802E76BC E6200028 */  swc1      $f0, 0x28($s1)
/* 108F40 802E76C0 080B9EAE */  j         .L802E7AB8
/* 108F44 802E76C4 E622002C */   swc1     $f2, 0x2c($s1)
.L802E76C8:
/* 108F48 802E76C8 C620002C */  lwc1      $f0, 0x2c($s1)
/* 108F4C 802E76CC 3C01802F */  lui       $at, %hi(D_802EB320)
/* 108F50 802E76D0 D422B320 */  ldc1      $f2, %lo(D_802EB320)($at)
/* 108F54 802E76D4 C624001C */  lwc1      $f4, 0x1c($s1)
/* 108F58 802E76D8 46000021 */  cvt.d.s   $f0, $f0
/* 108F5C 802E76DC 46220001 */  sub.d     $f0, $f0, $f2
/* 108F60 802E76E0 C622002C */  lwc1      $f2, 0x2c($s1)
/* 108F64 802E76E4 46022100 */  add.s     $f4, $f4, $f2
/* 108F68 802E76E8 3C014000 */  lui       $at, 0x4000
/* 108F6C 802E76EC 44811000 */  mtc1      $at, $f2
/* 108F70 802E76F0 46200020 */  cvt.s.d   $f0, $f0
/* 108F74 802E76F4 4602003E */  c.le.s    $f0, $f2
/* 108F78 802E76F8 E620002C */  swc1      $f0, 0x2c($s1)
/* 108F7C 802E76FC 450000EE */  bc1f      .L802E7AB8
/* 108F80 802E7700 E624001C */   swc1     $f4, 0x1c($s1)
/* 108F84 802E7704 92220004 */  lbu       $v0, 4($s1)
/* 108F88 802E7708 3C0140C0 */  lui       $at, 0x40c0
/* 108F8C 802E770C 44810000 */  mtc1      $at, $f0
/* 108F90 802E7710 24420001 */  addiu     $v0, $v0, 1
/* 108F94 802E7714 E620002C */  swc1      $f0, 0x2c($s1)
/* 108F98 802E7718 080B9EAE */  j         .L802E7AB8
/* 108F9C 802E771C A2220004 */   sb       $v0, 4($s1)
.L802E7720:
/* 108FA0 802E7720 C6220028 */  lwc1      $f2, 0x28($s1)
/* 108FA4 802E7724 3C01430C */  lui       $at, 0x430c
/* 108FA8 802E7728 44810000 */  mtc1      $at, $f0
/* 108FAC 802E772C 00000000 */  nop
/* 108FB0 802E7730 4600103C */  c.lt.s    $f2, $f0
/* 108FB4 802E7734 00000000 */  nop
/* 108FB8 802E7738 45000014 */  bc1f      .L802E778C
/* 108FBC 802E773C 00000000 */   nop
/* 108FC0 802E7740 3C0140C9 */  lui       $at, 0x40c9
/* 108FC4 802E7744 34210FD0 */  ori       $at, $at, 0xfd0
/* 108FC8 802E7748 44816000 */  mtc1      $at, $f12
/* 108FCC 802E774C 00000000 */  nop
/* 108FD0 802E7750 460C1302 */  mul.s     $f12, $f2, $f12
/* 108FD4 802E7754 00000000 */  nop
/* 108FD8 802E7758 3C0143B4 */  lui       $at, 0x43b4
/* 108FDC 802E775C 44810000 */  mtc1      $at, $f0
/* 108FE0 802E7760 0C00A874 */  jal       cos_rad
/* 108FE4 802E7764 46006303 */   div.s    $f12, $f12, $f0
/* 108FE8 802E7768 3C014040 */  lui       $at, 0x4040
/* 108FEC 802E776C 44811000 */  mtc1      $at, $f2
/* 108FF0 802E7770 00000000 */  nop
/* 108FF4 802E7774 46020002 */  mul.s     $f0, $f0, $f2
/* 108FF8 802E7778 00000000 */  nop
/* 108FFC 802E777C C622001C */  lwc1      $f2, 0x1c($s1)
/* 109000 802E7780 46001080 */  add.s     $f2, $f2, $f0
/* 109004 802E7784 080B9DFC */  j         .L802E77F0
/* 109008 802E7788 E622001C */   swc1     $f2, 0x1c($s1)
.L802E778C:
/* 10900C 802E778C C626001C */  lwc1      $f6, 0x1c($s1)
/* 109010 802E7790 C640002C */  lwc1      $f0, 0x2c($s2)
/* 109014 802E7794 46003001 */  sub.s     $f0, $f6, $f0
/* 109018 802E7798 3C0141F0 */  lui       $at, 0x41f0
/* 10901C 802E779C 44811000 */  mtc1      $at, $f2
/* 109020 802E77A0 00000000 */  nop
/* 109024 802E77A4 46020001 */  sub.s     $f0, $f0, $f2
/* 109028 802E77A8 3C013E80 */  lui       $at, 0x3e80
/* 10902C 802E77AC 44811000 */  mtc1      $at, $f2
/* 109030 802E77B0 00000000 */  nop
/* 109034 802E77B4 46020102 */  mul.s     $f4, $f0, $f2
/* 109038 802E77B8 00000000 */  nop
/* 10903C 802E77BC 3C01802F */  lui       $at, %hi(D_802EB328)
/* 109040 802E77C0 D422B328 */  ldc1      $f2, %lo(D_802EB328)($at)
/* 109044 802E77C4 46002021 */  cvt.d.s   $f0, $f4
/* 109048 802E77C8 4622003E */  c.le.d    $f0, $f2
/* 10904C 802E77CC 00000000 */  nop
/* 109050 802E77D0 45020006 */  bc1fl     .L802E77EC
/* 109054 802E77D4 46043001 */   sub.s    $f0, $f6, $f4
/* 109058 802E77D8 3C013ECC */  lui       $at, 0x3ecc
/* 10905C 802E77DC 3421CCCD */  ori       $at, $at, 0xcccd
/* 109060 802E77E0 44812000 */  mtc1      $at, $f4
/* 109064 802E77E4 00000000 */  nop
/* 109068 802E77E8 46043001 */  sub.s     $f0, $f6, $f4
.L802E77EC:
/* 10906C 802E77EC E620001C */  swc1      $f0, 0x1c($s1)
.L802E77F0:
/* 109070 802E77F0 C62C0024 */  lwc1      $f12, 0x24($s1)
/* 109074 802E77F4 3C0140C9 */  lui       $at, 0x40c9
/* 109078 802E77F8 34210FD0 */  ori       $at, $at, 0xfd0
/* 10907C 802E77FC 4481D000 */  mtc1      $at, $f26
/* 109080 802E7800 00000000 */  nop
/* 109084 802E7804 461A6302 */  mul.s     $f12, $f12, $f26
/* 109088 802E7808 00000000 */  nop
/* 10908C 802E780C 3C0143B4 */  lui       $at, 0x43b4
/* 109090 802E7810 4481E000 */  mtc1      $at, $f28
/* 109094 802E7814 0C00A85B */  jal       sin_rad
/* 109098 802E7818 461C6303 */   div.s    $f12, $f12, $f28
/* 10909C 802E781C C60C0048 */  lwc1      $f12, 0x48($s0)
/* 1090A0 802E7820 8E460028 */  lw        $a2, 0x28($s2)
/* 1090A4 802E7824 8E470030 */  lw        $a3, 0x30($s2)
/* 1090A8 802E7828 C60E0050 */  lwc1      $f14, 0x50($s0)
/* 1090AC 802E782C 0C00A720 */  jal       atan2
/* 1090B0 802E7830 46000606 */   mov.s    $f24, $f0
/* 1090B4 802E7834 0C00A6C9 */  jal       clamp_angle
/* 1090B8 802E7838 46000306 */   mov.s    $f12, $f0
/* 1090BC 802E783C 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 1090C0 802E7840 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 1090C4 802E7844 3C014080 */  lui       $at, 0x4080
/* 1090C8 802E7848 4481B000 */  mtc1      $at, $f22
/* 1090CC 802E784C 84430086 */  lh        $v1, 0x86($v0)
/* 1090D0 802E7850 24020012 */  addiu     $v0, $zero, 0x12
/* 1090D4 802E7854 14620003 */  bne       $v1, $v0, .L802E7864
/* 1090D8 802E7858 00000000 */   nop
/* 1090DC 802E785C 3C014040 */  lui       $at, 0x4040
/* 1090E0 802E7860 4481B000 */  mtc1      $at, $f22
.L802E7864:
/* 1090E4 802E7864 461A0502 */  mul.s     $f20, $f0, $f26
/* 1090E8 802E7868 00000000 */  nop
/* 1090EC 802E786C 461CA503 */  div.s     $f20, $f20, $f28
/* 1090F0 802E7870 0C00A85B */  jal       sin_rad
/* 1090F4 802E7874 4600A306 */   mov.s    $f12, $f20
/* 1090F8 802E7878 4600B002 */  mul.s     $f0, $f22, $f0
/* 1090FC 802E787C 00000000 */  nop
/* 109100 802E7880 46180002 */  mul.s     $f0, $f0, $f24
/* 109104 802E7884 00000000 */  nop
/* 109108 802E7888 C6220018 */  lwc1      $f2, 0x18($s1)
/* 10910C 802E788C 46001080 */  add.s     $f2, $f2, $f0
/* 109110 802E7890 4600A306 */  mov.s     $f12, $f20
/* 109114 802E7894 0C00A874 */  jal       cos_rad
/* 109118 802E7898 E6220018 */   swc1     $f2, 0x18($s1)
/* 10911C 802E789C 4600B002 */  mul.s     $f0, $f22, $f0
/* 109120 802E78A0 00000000 */  nop
/* 109124 802E78A4 46180002 */  mul.s     $f0, $f0, $f24
/* 109128 802E78A8 00000000 */  nop
/* 10912C 802E78AC C6240024 */  lwc1      $f4, 0x24($s1)
/* 109130 802E78B0 3C014100 */  lui       $at, 0x4100
/* 109134 802E78B4 44811000 */  mtc1      $at, $f2
/* 109138 802E78B8 00000000 */  nop
/* 10913C 802E78BC 46022100 */  add.s     $f4, $f4, $f2
/* 109140 802E78C0 C6220020 */  lwc1      $f2, 0x20($s1)
/* 109144 802E78C4 3C014334 */  lui       $at, 0x4334
/* 109148 802E78C8 4481A000 */  mtc1      $at, $f20
/* 10914C 802E78CC 46001081 */  sub.s     $f2, $f2, $f0
/* 109150 802E78D0 E6240024 */  swc1      $f4, 0x24($s1)
/* 109154 802E78D4 4604A03E */  c.le.s    $f20, $f4
/* 109158 802E78D8 00000000 */  nop
/* 10915C 802E78DC 45000002 */  bc1f      .L802E78E8
/* 109160 802E78E0 E6220020 */   swc1     $f2, 0x20($s1)
/* 109164 802E78E4 E6340024 */  swc1      $f20, 0x24($s1)
.L802E78E8:
/* 109168 802E78E8 C6200028 */  lwc1      $f0, 0x28($s1)
/* 10916C 802E78EC 3C014150 */  lui       $at, 0x4150
/* 109170 802E78F0 44811000 */  mtc1      $at, $f2
/* 109174 802E78F4 00000000 */  nop
/* 109178 802E78F8 46020000 */  add.s     $f0, $f0, $f2
/* 10917C 802E78FC 4600A03E */  c.le.s    $f20, $f0
/* 109180 802E7900 00000000 */  nop
/* 109184 802E7904 4500006C */  bc1f      .L802E7AB8
/* 109188 802E7908 E6200028 */   swc1     $f0, 0x28($s1)
/* 10918C 802E790C 24020007 */  addiu     $v0, $zero, 7
/* 109190 802E7910 A6220002 */  sh        $v0, 2($s1)
/* 109194 802E7914 92220004 */  lbu       $v0, 4($s1)
/* 109198 802E7918 8E230010 */  lw        $v1, 0x10($s1)
/* 10919C 802E791C E6340028 */  swc1      $f20, 0x28($s1)
/* 1091A0 802E7920 24420001 */  addiu     $v0, $v0, 1
/* 1091A4 802E7924 10600064 */  beqz      $v1, .L802E7AB8
/* 1091A8 802E7928 A2220004 */   sb       $v0, 4($s1)
/* 1091AC 802E792C 3C040006 */  lui       $a0, 6
/* 1091B0 802E7930 0C037FDE */  jal       func_800DFF78
/* 1091B4 802E7934 3484000C */   ori      $a0, $a0, 0xc
/* 1091B8 802E7938 3C10800B */  lui       $s0, %hi(gCameras)
/* 1091BC 802E793C 26101D80 */  addiu     $s0, $s0, %lo(gCameras)
/* 1091C0 802E7940 C600006C */  lwc1      $f0, 0x6c($s0)
/* 1091C4 802E7944 3C0142B4 */  lui       $at, 0x42b4
/* 1091C8 802E7948 44816000 */  mtc1      $at, $f12
/* 1091CC 802E794C 00000000 */  nop
/* 1091D0 802E7950 46006301 */  sub.s     $f12, $f12, $f0
/* 1091D4 802E7954 461A6302 */  mul.s     $f12, $f12, $f26
/* 1091D8 802E7958 00000000 */  nop
/* 1091DC 802E795C 27A50018 */  addiu     $a1, $sp, 0x18
/* 1091E0 802E7960 27A6001C */  addiu     $a2, $sp, 0x1c
/* 1091E4 802E7964 0C00A82D */  jal       sin_cos_rad
/* 1091E8 802E7968 461C6303 */   div.s    $f12, $f12, $f28
/* 1091EC 802E796C C60C006C */  lwc1      $f12, 0x6c($s0)
/* 1091F0 802E7970 460CA301 */  sub.s     $f12, $f20, $f12
/* 1091F4 802E7974 461A6302 */  mul.s     $f12, $f12, $f26
/* 1091F8 802E7978 00000000 */  nop
/* 1091FC 802E797C 27A50020 */  addiu     $a1, $sp, 0x20
/* 109200 802E7980 27A60024 */  addiu     $a2, $sp, 0x24
/* 109204 802E7984 0C00A82D */  jal       sin_cos_rad
/* 109208 802E7988 461C6303 */   div.s    $f12, $f12, $f28
/* 10920C 802E798C 4480B000 */  mtc1      $zero, $f22
/* 109210 802E7990 C7A60018 */  lwc1      $f6, 0x18($sp)
/* 109214 802E7994 46163182 */  mul.s     $f6, $f6, $f22
/* 109218 802E7998 00000000 */  nop
/* 10921C 802E799C 3C014080 */  lui       $at, 0x4080
/* 109220 802E79A0 4481A000 */  mtc1      $at, $f20
/* 109224 802E79A4 C7A20020 */  lwc1      $f2, 0x20($sp)
/* 109228 802E79A8 46141082 */  mul.s     $f2, $f2, $f20
/* 10922C 802E79AC 00000000 */  nop
/* 109230 802E79B0 C620001C */  lwc1      $f0, 0x1c($s1)
/* 109234 802E79B4 3C014140 */  lui       $at, 0x4140
/* 109238 802E79B8 4481C000 */  mtc1      $at, $f24
/* 10923C 802E79BC 00000000 */  nop
/* 109240 802E79C0 46180000 */  add.s     $f0, $f0, $f24
/* 109244 802E79C4 C7A4001C */  lwc1      $f4, 0x1c($sp)
/* 109248 802E79C8 46162102 */  mul.s     $f4, $f4, $f22
/* 10924C 802E79CC 00000000 */  nop
/* 109250 802E79D0 44060000 */  mfc1      $a2, $f0
/* 109254 802E79D4 C6200018 */  lwc1      $f0, 0x18($s1)
/* 109258 802E79D8 46060000 */  add.s     $f0, $f0, $f6
/* 10925C 802E79DC 46020001 */  sub.s     $f0, $f0, $f2
/* 109260 802E79E0 C7A80024 */  lwc1      $f8, 0x24($sp)
/* 109264 802E79E4 46144202 */  mul.s     $f8, $f8, $f20
/* 109268 802E79E8 00000000 */  nop
/* 10926C 802E79EC 44050000 */  mfc1      $a1, $f0
/* 109270 802E79F0 C6200020 */  lwc1      $f0, 0x20($s1)
/* 109274 802E79F4 46040001 */  sub.s     $f0, $f0, $f4
/* 109278 802E79F8 46080000 */  add.s     $f0, $f0, $f8
/* 10927C 802E79FC 0000202D */  daddu     $a0, $zero, $zero
/* 109280 802E7A00 3C013F80 */  lui       $at, 0x3f80
/* 109284 802E7A04 4481D000 */  mtc1      $at, $f26
/* 109288 802E7A08 44070000 */  mfc1      $a3, $f0
/* 10928C 802E7A0C 24020064 */  addiu     $v0, $zero, 0x64
/* 109290 802E7A10 E7BA0010 */  swc1      $f26, 0x10($sp)
/* 109294 802E7A14 0C01C2EC */  jal       func_80070BB0
/* 109298 802E7A18 AFA20014 */   sw       $v0, 0x14($sp)
/* 10929C 802E7A1C C7A60018 */  lwc1      $f6, 0x18($sp)
/* 1092A0 802E7A20 46163182 */  mul.s     $f6, $f6, $f22
/* 1092A4 802E7A24 00000000 */  nop
/* 1092A8 802E7A28 C7A20020 */  lwc1      $f2, 0x20($sp)
/* 1092AC 802E7A2C 46141082 */  mul.s     $f2, $f2, $f20
/* 1092B0 802E7A30 00000000 */  nop
/* 1092B4 802E7A34 C620001C */  lwc1      $f0, 0x1c($s1)
/* 1092B8 802E7A38 46180000 */  add.s     $f0, $f0, $f24
/* 1092BC 802E7A3C C7A4001C */  lwc1      $f4, 0x1c($sp)
/* 1092C0 802E7A40 46162102 */  mul.s     $f4, $f4, $f22
/* 1092C4 802E7A44 00000000 */  nop
/* 1092C8 802E7A48 44060000 */  mfc1      $a2, $f0
/* 1092CC 802E7A4C C6200018 */  lwc1      $f0, 0x18($s1)
/* 1092D0 802E7A50 46060000 */  add.s     $f0, $f0, $f6
/* 1092D4 802E7A54 46020001 */  sub.s     $f0, $f0, $f2
/* 1092D8 802E7A58 C7A80024 */  lwc1      $f8, 0x24($sp)
/* 1092DC 802E7A5C 46144202 */  mul.s     $f8, $f8, $f20
/* 1092E0 802E7A60 00000000 */  nop
/* 1092E4 802E7A64 44050000 */  mfc1      $a1, $f0
/* 1092E8 802E7A68 C6200020 */  lwc1      $f0, 0x20($s1)
/* 1092EC 802E7A6C 46040001 */  sub.s     $f0, $f0, $f4
/* 1092F0 802E7A70 46080000 */  add.s     $f0, $f0, $f8
/* 1092F4 802E7A74 0000202D */  daddu     $a0, $zero, $zero
/* 1092F8 802E7A78 44070000 */  mfc1      $a3, $f0
/* 1092FC 802E7A7C 26220034 */  addiu     $v0, $s1, 0x34
/* 109300 802E7A80 E7BA0010 */  swc1      $f26, 0x10($sp)
/* 109304 802E7A84 0C01C0AC */  jal       func_800702B0
/* 109308 802E7A88 AFA20014 */   sw       $v0, 0x14($sp)
/* 10930C 802E7A8C 080B9EAE */  j         .L802E7AB8
/* 109310 802E7A90 00000000 */   nop
.L802E7A94:
/* 109314 802E7A94 96220002 */  lhu       $v0, 2($s1)
/* 109318 802E7A98 2442FFFF */  addiu     $v0, $v0, -1
/* 10931C 802E7A9C A6220002 */  sh        $v0, 2($s1)
/* 109320 802E7AA0 00021400 */  sll       $v0, $v0, 0x10
/* 109324 802E7AA4 14400004 */  bnez      $v0, .L802E7AB8
/* 109328 802E7AA8 00000000 */   nop
/* 10932C 802E7AAC 0C043F5A */  jal       exec_entity_updatecmd
/* 109330 802E7AB0 0200202D */   daddu    $a0, $s0, $zero
/* 109334 802E7AB4 A2200004 */  sb        $zero, 4($s1)
.L802E7AB8:
/* 109338 802E7AB8 8FBF0034 */  lw        $ra, 0x34($sp)
/* 10933C 802E7ABC 8FB20030 */  lw        $s2, 0x30($sp)
/* 109340 802E7AC0 8FB1002C */  lw        $s1, 0x2c($sp)
/* 109344 802E7AC4 8FB00028 */  lw        $s0, 0x28($sp)
/* 109348 802E7AC8 D7BC0058 */  ldc1      $f28, 0x58($sp)
/* 10934C 802E7ACC D7BA0050 */  ldc1      $f26, 0x50($sp)
/* 109350 802E7AD0 D7B80048 */  ldc1      $f24, 0x48($sp)
/* 109354 802E7AD4 D7B60040 */  ldc1      $f22, 0x40($sp)
/* 109358 802E7AD8 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 10935C 802E7ADC 03E00008 */  jr        $ra
/* 109360 802E7AE0 27BD0060 */   addiu    $sp, $sp, 0x60
