.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240320_D57750
/* D57750 80240320 3C03800A */  lui       $v1, 0x800a
/* D57754 80240324 8463A634 */  lh        $v1, -0x59cc($v1)
/* D57758 80240328 3C07BF80 */  lui       $a3, 0xbf80
/* D5775C 8024032C 27BDFEC0 */  addiu     $sp, $sp, -0x140
/* D57760 80240330 F7B40128 */  sdc1      $f20, 0x128($sp)
/* D57764 80240334 4480A000 */  mtc1      $zero, $f20
/* D57768 80240338 AFB1011C */  sw        $s1, 0x11c($sp)
/* D5776C 8024033C 0080882D */  daddu     $s1, $a0, $zero
/* D57770 80240340 AFB00118 */  sw        $s0, 0x118($sp)
/* D57774 80240344 27B00098 */  addiu     $s0, $sp, 0x98
/* D57778 80240348 AFBF0120 */  sw        $ra, 0x120($sp)
/* D5777C 8024034C F7B80138 */  sdc1      $f24, 0x138($sp)
/* D57780 80240350 F7B60130 */  sdc1      $f22, 0x130($sp)
/* D57784 80240354 00031080 */  sll       $v0, $v1, 2
/* D57788 80240358 00431021 */  addu      $v0, $v0, $v1
/* D5778C 8024035C 00021080 */  sll       $v0, $v0, 2
/* D57790 80240360 00431023 */  subu      $v0, $v0, $v1
/* D57794 80240364 000218C0 */  sll       $v1, $v0, 3
/* D57798 80240368 00431021 */  addu      $v0, $v0, $v1
/* D5779C 8024036C 000210C0 */  sll       $v0, $v0, 3
/* D577A0 80240370 3C01800B */  lui       $at, 0x800b
/* D577A4 80240374 00220821 */  addu      $at, $at, $v0
/* D577A8 80240378 C4361DEC */  lwc1      $f22, 0x1dec($at)
/* D577AC 8024037C 4406A000 */  mfc1      $a2, $f20
/* D577B0 80240380 4600B587 */  neg.s     $f22, $f22
/* D577B4 80240384 4405B000 */  mfc1      $a1, $f22
/* D577B8 80240388 0200202D */  daddu     $a0, $s0, $zero
/* D577BC 8024038C 0C019EC8 */  jal       guRotateF
/* D577C0 80240390 E7B40010 */   swc1     $f20, 0x10($sp)
/* D577C4 80240394 C62C008C */  lwc1      $f12, 0x8c($s1)
/* D577C8 80240398 0C00A6C9 */  jal       clamp_angle
/* D577CC 8024039C 00000000 */   nop      
/* D577D0 802403A0 44050000 */  mfc1      $a1, $f0
/* D577D4 802403A4 4406A000 */  mfc1      $a2, $f20
/* D577D8 802403A8 4407A000 */  mfc1      $a3, $f20
/* D577DC 802403AC 3C013F80 */  lui       $at, 0x3f80
/* D577E0 802403B0 4481C000 */  mtc1      $at, $f24
/* D577E4 802403B4 27A40018 */  addiu     $a0, $sp, 0x18
/* D577E8 802403B8 0C019EC8 */  jal       guRotateF
/* D577EC 802403BC E7B80010 */   swc1     $f24, 0x10($sp)
/* D577F0 802403C0 0200202D */  daddu     $a0, $s0, $zero
/* D577F4 802403C4 27A50018 */  addiu     $a1, $sp, 0x18
/* D577F8 802403C8 0C019D80 */  jal       guMtxCatF
/* D577FC 802403CC 00A0302D */   daddu    $a2, $a1, $zero
/* D57800 802403D0 4405B000 */  mfc1      $a1, $f22
/* D57804 802403D4 4406A000 */  mfc1      $a2, $f20
/* D57808 802403D8 4407C000 */  mfc1      $a3, $f24
/* D5780C 802403DC 0200202D */  daddu     $a0, $s0, $zero
/* D57810 802403E0 0C019EC8 */  jal       guRotateF
/* D57814 802403E4 E7B40010 */   swc1     $f20, 0x10($sp)
/* D57818 802403E8 27A40018 */  addiu     $a0, $sp, 0x18
/* D5781C 802403EC 0200282D */  daddu     $a1, $s0, $zero
/* D57820 802403F0 0C019D80 */  jal       guMtxCatF
/* D57824 802403F4 0080302D */   daddu    $a2, $a0, $zero
/* D57828 802403F8 E7B40010 */  swc1      $f20, 0x10($sp)
/* D5782C 802403FC 8E2500A8 */  lw        $a1, 0xa8($s1)
/* D57830 80240400 4406A000 */  mfc1      $a2, $f20
/* D57834 80240404 4407C000 */  mfc1      $a3, $f24
/* D57838 80240408 0C019EC8 */  jal       guRotateF
/* D5783C 8024040C 0200202D */   daddu    $a0, $s0, $zero
/* D57840 80240410 27A40018 */  addiu     $a0, $sp, 0x18
/* D57844 80240414 0200282D */  daddu     $a1, $s0, $zero
/* D57848 80240418 0C019D80 */  jal       guMtxCatF
/* D5784C 8024041C 0080302D */   daddu    $a2, $a0, $zero
/* D57850 80240420 3C013F36 */  lui       $at, 0x3f36
/* D57854 80240424 3421DB6E */  ori       $at, $at, 0xdb6e
/* D57858 80240428 44810000 */  mtc1      $at, $f0
/* D5785C 8024042C 27B000D8 */  addiu     $s0, $sp, 0xd8
/* D57860 80240430 44050000 */  mfc1      $a1, $f0
/* D57864 80240434 0200202D */  daddu     $a0, $s0, $zero
/* D57868 80240438 00A0302D */  daddu     $a2, $a1, $zero
/* D5786C 8024043C 0C019DF0 */  jal       guScaleF
/* D57870 80240440 00A0382D */   daddu    $a3, $a1, $zero
/* D57874 80240444 27A40018 */  addiu     $a0, $sp, 0x18
/* D57878 80240448 0200282D */  daddu     $a1, $s0, $zero
/* D5787C 8024044C 0C019D80 */  jal       guMtxCatF
/* D57880 80240450 0080302D */   daddu    $a2, $a0, $zero
/* D57884 80240454 27B00058 */  addiu     $s0, $sp, 0x58
/* D57888 80240458 C6200030 */  lwc1      $f0, 0x30($s1)
/* D5788C 8024045C 3C014040 */  lui       $at, 0x4040
/* D57890 80240460 44811000 */  mtc1      $at, $f2
/* D57894 80240464 46000007 */  neg.s     $f0, $f0
/* D57898 80240468 46020001 */  sub.s     $f0, $f0, $f2
/* D5789C 8024046C 8E250028 */  lw        $a1, 0x28($s1)
/* D578A0 80240470 8E26002C */  lw        $a2, 0x2c($s1)
/* D578A4 80240474 44070000 */  mfc1      $a3, $f0
/* D578A8 80240478 0C019E40 */  jal       guTranslateF
/* D578AC 8024047C 0200202D */   daddu    $a0, $s0, $zero
/* D578B0 80240480 27A40018 */  addiu     $a0, $sp, 0x18
/* D578B4 80240484 0200282D */  daddu     $a1, $s0, $zero
/* D578B8 80240488 0C019D80 */  jal       guMtxCatF
/* D578BC 8024048C 0080302D */   daddu    $a2, $a0, $zero
/* D578C0 80240490 24040002 */  addiu     $a0, $zero, 2
/* D578C4 80240494 0000282D */  daddu     $a1, $zero, $zero
/* D578C8 80240498 00A0302D */  daddu     $a2, $a1, $zero
/* D578CC 8024049C 00A0382D */  daddu     $a3, $a1, $zero
/* D578D0 802404A0 27A20018 */  addiu     $v0, $sp, 0x18
/* D578D4 802404A4 0C0B7710 */  jal       render_sprite
/* D578D8 802404A8 AFA20010 */   sw       $v0, 0x10($sp)
/* D578DC 802404AC 8FBF0120 */  lw        $ra, 0x120($sp)
/* D578E0 802404B0 8FB1011C */  lw        $s1, 0x11c($sp)
/* D578E4 802404B4 8FB00118 */  lw        $s0, 0x118($sp)
/* D578E8 802404B8 D7B80138 */  ldc1      $f24, 0x138($sp)
/* D578EC 802404BC D7B60130 */  ldc1      $f22, 0x130($sp)
/* D578F0 802404C0 D7B40128 */  ldc1      $f20, 0x128($sp)
/* D578F4 802404C4 03E00008 */  jr        $ra
/* D578F8 802404C8 27BD0140 */   addiu    $sp, $sp, 0x140
