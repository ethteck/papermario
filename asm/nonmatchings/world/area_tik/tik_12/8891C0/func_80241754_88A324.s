.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241754_88A324
/* 88A324 80241754 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 88A328 80241758 AFB10014 */  sw        $s1, 0x14($sp)
/* 88A32C 8024175C 0080882D */  daddu     $s1, $a0, $zero
/* 88A330 80241760 AFB20018 */  sw        $s2, 0x18($sp)
/* 88A334 80241764 AFBF001C */  sw        $ra, 0x1c($sp)
/* 88A338 80241768 AFB00010 */  sw        $s0, 0x10($sp)
/* 88A33C 8024176C 8E30000C */  lw        $s0, 0xc($s1)
/* 88A340 80241770 10A00010 */  beqz      $a1, .L802417B4
/* 88A344 80241774 0000902D */   daddu    $s2, $zero, $zero
/* 88A348 80241778 8E050000 */  lw        $a1, ($s0)
/* 88A34C 8024177C 0C0B1EAF */  jal       get_variable
/* 88A350 80241780 26100004 */   addiu    $s0, $s0, 4
/* 88A354 80241784 AE220084 */  sw        $v0, 0x84($s1)
/* 88A358 80241788 8E050000 */  lw        $a1, ($s0)
/* 88A35C 8024178C 0C0B1EAF */  jal       get_variable
/* 88A360 80241790 0220202D */   daddu    $a0, $s1, $zero
/* 88A364 80241794 0240202D */  daddu     $a0, $s2, $zero
/* 88A368 80241798 240500D0 */  addiu     $a1, $zero, 0xd0
/* 88A36C 8024179C 00A0302D */  daddu     $a2, $a1, $zero
/* 88A370 802417A0 00A0382D */  daddu     $a3, $a1, $zero
/* 88A374 802417A4 AE220088 */  sw        $v0, 0x88($s1)
/* 88A378 802417A8 AE200070 */  sw        $zero, 0x70($s1)
/* 88A37C 802417AC 0C04DF84 */  jal       set_transition_stencil_color
/* 88A380 802417B0 AE200074 */   sw       $zero, 0x74($s1)
.L802417B4:
/* 88A384 802417B4 8E230070 */  lw        $v1, 0x70($s1)
/* 88A388 802417B8 24040001 */  addiu     $a0, $zero, 1
/* 88A38C 802417BC 10640019 */  beq       $v1, $a0, .L80241824
/* 88A390 802417C0 28620002 */   slti     $v0, $v1, 2
/* 88A394 802417C4 10400005 */  beqz      $v0, .L802417DC
/* 88A398 802417C8 24020002 */   addiu    $v0, $zero, 2
/* 88A39C 802417CC 10600007 */  beqz      $v1, .L802417EC
/* 88A3A0 802417D0 240500FF */   addiu    $a1, $zero, 0xff
/* 88A3A4 802417D4 08090619 */  j         .L80241864
/* 88A3A8 802417D8 00000000 */   nop
.L802417DC:
/* 88A3AC 802417DC 10620019 */  beq       $v1, $v0, .L80241844
/* 88A3B0 802417E0 00000000 */   nop
/* 88A3B4 802417E4 08090619 */  j         .L80241864
/* 88A3B8 802417E8 00000000 */   nop
.L802417EC:
/* 88A3BC 802417EC 8E220074 */  lw        $v0, 0x74($s1)
/* 88A3C0 802417F0 14450004 */  bne       $v0, $a1, .L80241804
/* 88A3C4 802417F4 00000000 */   nop
/* 88A3C8 802417F8 AE240070 */  sw        $a0, 0x70($s1)
/* 88A3CC 802417FC AE200078 */  sw        $zero, 0x78($s1)
/* 88A3D0 80241800 8E220074 */  lw        $v0, 0x74($s1)
.L80241804:
/* 88A3D4 80241804 8E230084 */  lw        $v1, 0x84($s1)
/* 88A3D8 80241808 00431021 */  addu      $v0, $v0, $v1
/* 88A3DC 8024180C AE220074 */  sw        $v0, 0x74($s1)
/* 88A3E0 80241810 28420100 */  slti      $v0, $v0, 0x100
/* 88A3E4 80241814 50400013 */  beql      $v0, $zero, .L80241864
/* 88A3E8 80241818 AE250074 */   sw       $a1, 0x74($s1)
/* 88A3EC 8024181C 08090619 */  j         .L80241864
/* 88A3F0 80241820 00000000 */   nop
.L80241824:
/* 88A3F4 80241824 8E220078 */  lw        $v0, 0x78($s1)
/* 88A3F8 80241828 24420001 */  addiu     $v0, $v0, 1
/* 88A3FC 8024182C AE220078 */  sw        $v0, 0x78($s1)
/* 88A400 80241830 28420002 */  slti      $v0, $v0, 2
/* 88A404 80241834 1440000B */  bnez      $v0, .L80241864
/* 88A408 80241838 24020002 */   addiu    $v0, $zero, 2
/* 88A40C 8024183C 08090619 */  j         .L80241864
/* 88A410 80241840 AE220070 */   sw       $v0, 0x70($s1)
.L80241844:
/* 88A414 80241844 8E230074 */  lw        $v1, 0x74($s1)
/* 88A418 80241848 50600001 */  beql      $v1, $zero, .L80241850
/* 88A41C 8024184C 24120001 */   addiu    $s2, $zero, 1
.L80241850:
/* 88A420 80241850 8E220088 */  lw        $v0, 0x88($s1)
/* 88A424 80241854 00621023 */  subu      $v0, $v1, $v0
/* 88A428 80241858 04410002 */  bgez      $v0, .L80241864
/* 88A42C 8024185C AE220074 */   sw       $v0, 0x74($s1)
/* 88A430 80241860 AE200074 */  sw        $zero, 0x74($s1)
.L80241864:
/* 88A434 80241864 C6200074 */  lwc1      $f0, 0x74($s1)
/* 88A438 80241868 46800020 */  cvt.s.w   $f0, $f0
/* 88A43C 8024186C 44050000 */  mfc1      $a1, $f0
/* 88A440 80241870 0C04DF62 */  jal       set_transition_stencil_zoom_0
/* 88A444 80241874 24040001 */   addiu    $a0, $zero, 1
/* 88A448 80241878 0240102D */  daddu     $v0, $s2, $zero
/* 88A44C 8024187C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 88A450 80241880 8FB20018 */  lw        $s2, 0x18($sp)
/* 88A454 80241884 8FB10014 */  lw        $s1, 0x14($sp)
/* 88A458 80241888 8FB00010 */  lw        $s0, 0x10($sp)
/* 88A45C 8024188C 03E00008 */  jr        $ra
/* 88A460 80241890 27BD0020 */   addiu    $sp, $sp, 0x20
