.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel tik_07_UnkFunc5
/* 87C1B8 802425D8 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 87C1BC 802425DC AFB00028 */  sw        $s0, 0x28($sp)
/* 87C1C0 802425E0 00A0802D */  daddu     $s0, $a1, $zero
/* 87C1C4 802425E4 AFB1002C */  sw        $s1, 0x2c($sp)
/* 87C1C8 802425E8 00C0882D */  daddu     $s1, $a2, $zero
/* 87C1CC 802425EC AFBF0034 */  sw        $ra, 0x34($sp)
/* 87C1D0 802425F0 AFB20030 */  sw        $s2, 0x30($sp)
/* 87C1D4 802425F4 AE200070 */  sw        $zero, 0x70($s1)
/* 87C1D8 802425F8 8C830000 */  lw        $v1, ($a0)
/* 87C1DC 802425FC 2402FDFF */  addiu     $v0, $zero, -0x201
/* 87C1E0 80242600 A480008E */  sh        $zero, 0x8e($a0)
/* 87C1E4 80242604 00621824 */  and       $v1, $v1, $v0
/* 87C1E8 80242608 34650800 */  ori       $a1, $v1, 0x800
/* 87C1EC 8024260C AC850000 */  sw        $a1, ($a0)
/* 87C1F0 80242610 8E0200D0 */  lw        $v0, 0xd0($s0)
/* 87C1F4 80242614 8C420034 */  lw        $v0, 0x34($v0)
/* 87C1F8 80242618 10400003 */  beqz      $v0, .L80242628
/* 87C1FC 8024261C 00E0902D */   daddu    $s2, $a3, $zero
/* 87C200 80242620 0809098C */  j         .L80242630
/* 87C204 80242624 34620808 */   ori      $v0, $v1, 0x808
.L80242628:
/* 87C208 80242628 2402FFF7 */  addiu     $v0, $zero, -9
/* 87C20C 8024262C 00A21024 */  and       $v0, $a1, $v0
.L80242630:
/* 87C210 80242630 AC820000 */  sw        $v0, ($a0)
/* 87C214 80242634 27A20024 */  addiu     $v0, $sp, 0x24
/* 87C218 80242638 27A50018 */  addiu     $a1, $sp, 0x18
/* 87C21C 8024263C C4800038 */  lwc1      $f0, 0x38($a0)
/* 87C220 80242640 C482003C */  lwc1      $f2, 0x3c($a0)
/* 87C224 80242644 C4840040 */  lwc1      $f4, 0x40($a0)
/* 87C228 80242648 3C01447A */  lui       $at, 0x447a
/* 87C22C 8024264C 44813000 */  mtc1      $at, $f6
/* 87C230 80242650 27A6001C */  addiu     $a2, $sp, 0x1c
/* 87C234 80242654 E7A00018 */  swc1      $f0, 0x18($sp)
/* 87C238 80242658 E7A2001C */  swc1      $f2, 0x1c($sp)
/* 87C23C 8024265C E7A40020 */  swc1      $f4, 0x20($sp)
/* 87C240 80242660 E7A60024 */  swc1      $f6, 0x24($sp)
/* 87C244 80242664 AFA20010 */  sw        $v0, 0x10($sp)
/* 87C248 80242668 8C840080 */  lw        $a0, 0x80($a0)
/* 87C24C 8024266C 0C0372DF */  jal       func_800DCB7C
/* 87C250 80242670 27A70020 */   addiu    $a3, $sp, 0x20
/* 87C254 80242674 C7A20024 */  lwc1      $f2, 0x24($sp)
/* 87C258 80242678 3C014059 */  lui       $at, 0x4059
/* 87C25C 8024267C 44812800 */  mtc1      $at, $f5
/* 87C260 80242680 44802000 */  mtc1      $zero, $f4
/* 87C264 80242684 460010A1 */  cvt.d.s   $f2, $f2
/* 87C268 80242688 46241082 */  mul.d     $f2, $f2, $f4
/* 87C26C 8024268C 00000000 */  nop
/* 87C270 80242690 C7A0001C */  lwc1      $f0, 0x1c($sp)
/* 87C274 80242694 46000021 */  cvt.d.s   $f0, $f0
/* 87C278 80242698 46240002 */  mul.d     $f0, $f0, $f4
/* 87C27C 8024269C 00000000 */  nop
/* 87C280 802426A0 3C013FE0 */  lui       $at, 0x3fe0
/* 87C284 802426A4 44812800 */  mtc1      $at, $f5
/* 87C288 802426A8 44802000 */  mtc1      $zero, $f4
/* 87C28C 802426AC 00000000 */  nop
/* 87C290 802426B0 46241080 */  add.d     $f2, $f2, $f4
/* 87C294 802426B4 AE000074 */  sw        $zero, 0x74($s0)
/* 87C298 802426B8 46240000 */  add.d     $f0, $f0, $f4
/* 87C29C 802426BC AE000090 */  sw        $zero, 0x90($s0)
/* 87C2A0 802426C0 4620120D */  trunc.w.d $f8, $f2
/* 87C2A4 802426C4 E6080078 */  swc1      $f8, 0x78($s0)
/* 87C2A8 802426C8 4620020D */  trunc.w.d $f8, $f0
/* 87C2AC 802426CC E6080088 */  swc1      $f8, 0x88($s0)
/* 87C2B0 802426D0 8E420014 */  lw        $v0, 0x14($s2)
/* 87C2B4 802426D4 AE220074 */  sw        $v0, 0x74($s1)
/* 87C2B8 802426D8 8E0200B0 */  lw        $v0, 0xb0($s0)
/* 87C2BC 802426DC 34420010 */  ori       $v0, $v0, 0x10
/* 87C2C0 802426E0 AE0200B0 */  sw        $v0, 0xb0($s0)
/* 87C2C4 802426E4 8FBF0034 */  lw        $ra, 0x34($sp)
/* 87C2C8 802426E8 8FB20030 */  lw        $s2, 0x30($sp)
/* 87C2CC 802426EC 8FB1002C */  lw        $s1, 0x2c($sp)
/* 87C2D0 802426F0 8FB00028 */  lw        $s0, 0x28($sp)
/* 87C2D4 802426F4 03E00008 */  jr        $ra
/* 87C2D8 802426F8 27BD0038 */   addiu    $sp, $sp, 0x38
