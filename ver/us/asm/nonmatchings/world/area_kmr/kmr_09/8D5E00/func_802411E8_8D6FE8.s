.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel kmr_09_UnkFunc5
/* 8D6FE8 802411E8 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 8D6FEC 802411EC AFB00028 */  sw        $s0, 0x28($sp)
/* 8D6FF0 802411F0 00A0802D */  daddu     $s0, $a1, $zero
/* 8D6FF4 802411F4 AFB1002C */  sw        $s1, 0x2c($sp)
/* 8D6FF8 802411F8 00C0882D */  daddu     $s1, $a2, $zero
/* 8D6FFC 802411FC AFBF0034 */  sw        $ra, 0x34($sp)
/* 8D7000 80241200 AFB20030 */  sw        $s2, 0x30($sp)
/* 8D7004 80241204 AE200070 */  sw        $zero, 0x70($s1)
/* 8D7008 80241208 8C830000 */  lw        $v1, ($a0)
/* 8D700C 8024120C 2402FDFF */  addiu     $v0, $zero, -0x201
/* 8D7010 80241210 A480008E */  sh        $zero, 0x8e($a0)
/* 8D7014 80241214 00621824 */  and       $v1, $v1, $v0
/* 8D7018 80241218 34650800 */  ori       $a1, $v1, 0x800
/* 8D701C 8024121C AC850000 */  sw        $a1, ($a0)
/* 8D7020 80241220 8E0200D0 */  lw        $v0, 0xd0($s0)
/* 8D7024 80241224 8C420034 */  lw        $v0, 0x34($v0)
/* 8D7028 80241228 10400003 */  beqz      $v0, .L80241238
/* 8D702C 8024122C 00E0902D */   daddu    $s2, $a3, $zero
/* 8D7030 80241230 08090490 */  j         .L80241240
/* 8D7034 80241234 34620808 */   ori      $v0, $v1, 0x808
.L80241238:
/* 8D7038 80241238 2402FFF7 */  addiu     $v0, $zero, -9
/* 8D703C 8024123C 00A21024 */  and       $v0, $a1, $v0
.L80241240:
/* 8D7040 80241240 AC820000 */  sw        $v0, ($a0)
/* 8D7044 80241244 27A20024 */  addiu     $v0, $sp, 0x24
/* 8D7048 80241248 27A50018 */  addiu     $a1, $sp, 0x18
/* 8D704C 8024124C C4800038 */  lwc1      $f0, 0x38($a0)
/* 8D7050 80241250 C482003C */  lwc1      $f2, 0x3c($a0)
/* 8D7054 80241254 C4840040 */  lwc1      $f4, 0x40($a0)
/* 8D7058 80241258 3C01447A */  lui       $at, 0x447a
/* 8D705C 8024125C 44813000 */  mtc1      $at, $f6
/* 8D7060 80241260 27A6001C */  addiu     $a2, $sp, 0x1c
/* 8D7064 80241264 E7A00018 */  swc1      $f0, 0x18($sp)
/* 8D7068 80241268 E7A2001C */  swc1      $f2, 0x1c($sp)
/* 8D706C 8024126C E7A40020 */  swc1      $f4, 0x20($sp)
/* 8D7070 80241270 E7A60024 */  swc1      $f6, 0x24($sp)
/* 8D7074 80241274 AFA20010 */  sw        $v0, 0x10($sp)
/* 8D7078 80241278 8C840080 */  lw        $a0, 0x80($a0)
/* 8D707C 8024127C 0C0372DF */  jal       func_800DCB7C
/* 8D7080 80241280 27A70020 */   addiu    $a3, $sp, 0x20
/* 8D7084 80241284 C7A20024 */  lwc1      $f2, 0x24($sp)
/* 8D7088 80241288 3C014059 */  lui       $at, 0x4059
/* 8D708C 8024128C 44812800 */  mtc1      $at, $f5
/* 8D7090 80241290 44802000 */  mtc1      $zero, $f4
/* 8D7094 80241294 460010A1 */  cvt.d.s   $f2, $f2
/* 8D7098 80241298 46241082 */  mul.d     $f2, $f2, $f4
/* 8D709C 8024129C 00000000 */  nop
/* 8D70A0 802412A0 C7A0001C */  lwc1      $f0, 0x1c($sp)
/* 8D70A4 802412A4 46000021 */  cvt.d.s   $f0, $f0
/* 8D70A8 802412A8 46240002 */  mul.d     $f0, $f0, $f4
/* 8D70AC 802412AC 00000000 */  nop
/* 8D70B0 802412B0 3C013FE0 */  lui       $at, 0x3fe0
/* 8D70B4 802412B4 44812800 */  mtc1      $at, $f5
/* 8D70B8 802412B8 44802000 */  mtc1      $zero, $f4
/* 8D70BC 802412BC 00000000 */  nop
/* 8D70C0 802412C0 46241080 */  add.d     $f2, $f2, $f4
/* 8D70C4 802412C4 AE000074 */  sw        $zero, 0x74($s0)
/* 8D70C8 802412C8 46240000 */  add.d     $f0, $f0, $f4
/* 8D70CC 802412CC AE000090 */  sw        $zero, 0x90($s0)
/* 8D70D0 802412D0 4620120D */  trunc.w.d $f8, $f2
/* 8D70D4 802412D4 E6080078 */  swc1      $f8, 0x78($s0)
/* 8D70D8 802412D8 4620020D */  trunc.w.d $f8, $f0
/* 8D70DC 802412DC E6080088 */  swc1      $f8, 0x88($s0)
/* 8D70E0 802412E0 8E420014 */  lw        $v0, 0x14($s2)
/* 8D70E4 802412E4 AE220074 */  sw        $v0, 0x74($s1)
/* 8D70E8 802412E8 8E0200B0 */  lw        $v0, 0xb0($s0)
/* 8D70EC 802412EC 34420010 */  ori       $v0, $v0, 0x10
/* 8D70F0 802412F0 AE0200B0 */  sw        $v0, 0xb0($s0)
/* 8D70F4 802412F4 8FBF0034 */  lw        $ra, 0x34($sp)
/* 8D70F8 802412F8 8FB20030 */  lw        $s2, 0x30($sp)
/* 8D70FC 802412FC 8FB1002C */  lw        $s1, 0x2c($sp)
/* 8D7100 80241300 8FB00028 */  lw        $s0, 0x28($sp)
/* 8D7104 80241304 03E00008 */  jr        $ra
/* 8D7108 80241308 27BD0038 */   addiu    $sp, $sp, 0x38
