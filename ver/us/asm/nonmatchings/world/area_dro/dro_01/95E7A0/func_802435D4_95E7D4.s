.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel dro_01_UnkFunc25
/* 95E7D4 802435D4 3C038016 */  lui       $v1, %hi(gCollisionStatus+0x2)
/* 95E7D8 802435D8 8463A552 */  lh        $v1, %lo(gCollisionStatus+0x2)($v1)
/* 95E7DC 802435DC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 95E7E0 802435E0 AFB00010 */  sw        $s0, 0x10($sp)
/* 95E7E4 802435E4 0080802D */  daddu     $s0, $a0, $zero
/* 95E7E8 802435E8 AFBF0014 */  sw        $ra, 0x14($sp)
/* 95E7EC 802435EC 8E0200B0 */  lw        $v0, 0xb0($s0)
/* 95E7F0 802435F0 10620003 */  beq       $v1, $v0, .L80243600
/* 95E7F4 802435F4 24020002 */   addiu    $v0, $zero, 2
/* 95E7F8 802435F8 08090DA0 */  j         .L80243680
/* 95E7FC 802435FC AE000084 */   sw       $zero, 0x84($s0)
.L80243600:
/* 95E800 80243600 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* 95E804 80243604 8C63419C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* 95E808 80243608 80620040 */  lb        $v0, 0x40($v1)
/* 95E80C 8024360C 80670044 */  lb        $a3, 0x44($v1)
/* 95E810 80243610 04420001 */  bltzl     $v0, .L80243618
/* 95E814 80243614 00021023 */   negu     $v0, $v0
.L80243618:
/* 95E818 80243618 14400003 */  bnez      $v0, .L80243628
/* 95E81C 8024361C 00000000 */   nop
/* 95E820 80243620 50E00017 */  beql      $a3, $zero, .L80243680
/* 95E824 80243624 0000102D */   daddu    $v0, $zero, $zero
.L80243628:
/* 95E828 80243628 44822000 */  mtc1      $v0, $f4
/* 95E82C 8024362C 00000000 */  nop
/* 95E830 80243630 46802120 */  cvt.s.w   $f4, $f4
/* 95E834 80243634 44062000 */  mfc1      $a2, $f4
/* 95E838 80243638 44872000 */  mtc1      $a3, $f4
/* 95E83C 8024363C 00000000 */  nop
/* 95E840 80243640 46802120 */  cvt.s.w   $f4, $f4
/* 95E844 80243644 44806000 */  mtc1      $zero, $f12
/* 95E848 80243648 44072000 */  mfc1      $a3, $f4
/* 95E84C 8024364C 0C00A720 */  jal       atan2
/* 95E850 80243650 46006386 */   mov.s    $f14, $f12
/* 95E854 80243654 3C014270 */  lui       $at, 0x4270
/* 95E858 80243658 44811000 */  mtc1      $at, $f2
/* 95E85C 8024365C 00000000 */  nop
/* 95E860 80243660 4602003C */  c.lt.s    $f0, $f2
/* 95E864 80243664 00000000 */  nop
/* 95E868 80243668 45000004 */  bc1f      .L8024367C
/* 95E86C 8024366C 24020001 */   addiu    $v0, $zero, 1
/* 95E870 80243670 AE020084 */  sw        $v0, 0x84($s0)
/* 95E874 80243674 08090DA0 */  j         .L80243680
/* 95E878 80243678 24020002 */   addiu    $v0, $zero, 2
.L8024367C:
/* 95E87C 8024367C 0000102D */  daddu     $v0, $zero, $zero
.L80243680:
/* 95E880 80243680 8FBF0014 */  lw        $ra, 0x14($sp)
/* 95E884 80243684 8FB00010 */  lw        $s0, 0x10($sp)
/* 95E888 80243688 03E00008 */  jr        $ra
/* 95E88C 8024368C 27BD0018 */   addiu    $sp, $sp, 0x18
