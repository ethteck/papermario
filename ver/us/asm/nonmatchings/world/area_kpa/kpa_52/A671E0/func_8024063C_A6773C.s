.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024063C_A6773C
/* A6773C 8024063C 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* A67740 80240640 AFB7004C */  sw        $s7, 0x4c($sp)
/* A67744 80240644 0080B82D */  daddu     $s7, $a0, $zero
/* A67748 80240648 AFB10034 */  sw        $s1, 0x34($sp)
/* A6774C 8024064C 00A0882D */  daddu     $s1, $a1, $zero
/* A67750 80240650 AFBF0050 */  sw        $ra, 0x50($sp)
/* A67754 80240654 AFB60048 */  sw        $s6, 0x48($sp)
/* A67758 80240658 AFB50044 */  sw        $s5, 0x44($sp)
/* A6775C 8024065C AFB40040 */  sw        $s4, 0x40($sp)
/* A67760 80240660 AFB3003C */  sw        $s3, 0x3c($sp)
/* A67764 80240664 AFB20038 */  sw        $s2, 0x38($sp)
/* A67768 80240668 AFB00030 */  sw        $s0, 0x30($sp)
/* A6776C 8024066C 8EF30148 */  lw        $s3, 0x148($s7)
/* A67770 80240670 86640008 */  lh        $a0, 8($s3)
/* A67774 80240674 8EF0000C */  lw        $s0, 0xc($s7)
/* A67778 80240678 0C00FB5A */  jal       get_enemy_safe
/* A6777C 8024067C 0000B02D */   daddu    $s6, $zero, $zero
/* A67780 80240680 10400131 */  beqz      $v0, .L80240B48
/* A67784 80240684 24020005 */   addiu    $v0, $zero, 5
/* A67788 80240688 8E63006C */  lw        $v1, 0x6c($s3)
/* A6778C 8024068C 1062012F */  beq       $v1, $v0, .L80240B4C
/* A67790 80240690 0000102D */   daddu    $v0, $zero, $zero
/* A67794 80240694 8E050000 */  lw        $a1, ($s0)
/* A67798 80240698 0C0B1EAF */  jal       get_variable
/* A6779C 8024069C 02E0202D */   daddu    $a0, $s7, $zero
/* A677A0 802406A0 86640008 */  lh        $a0, 8($s3)
/* A677A4 802406A4 0C00EABB */  jal       get_npc_unsafe
/* A677A8 802406A8 0040A82D */   daddu    $s5, $v0, $zero
/* A677AC 802406AC 8E630070 */  lw        $v1, 0x70($s3)
/* A677B0 802406B0 30630002 */  andi      $v1, $v1, 2
/* A677B4 802406B4 10600008 */  beqz      $v1, .L802406D8
/* A677B8 802406B8 0040902D */   daddu    $s2, $v0, $zero
/* A677BC 802406BC 964200A8 */  lhu       $v0, 0xa8($s2)
/* A677C0 802406C0 00021400 */  sll       $v0, $v0, 0x10
/* A677C4 802406C4 00021C03 */  sra       $v1, $v0, 0x10
/* A677C8 802406C8 000217C2 */  srl       $v0, $v0, 0x1f
/* A677CC 802406CC 00621821 */  addu      $v1, $v1, $v0
/* A677D0 802406D0 00031843 */  sra       $v1, $v1, 1
/* A677D4 802406D4 A24300AB */  sb        $v1, 0xab($s2)
.L802406D8:
/* A677D8 802406D8 16200005 */  bnez      $s1, .L802406F0
/* A677DC 802406DC 3C030004 */   lui      $v1, 4
/* A677E0 802406E0 8E6200B0 */  lw        $v0, 0xb0($s3)
/* A677E4 802406E4 30420004 */  andi      $v0, $v0, 4
/* A677E8 802406E8 10400019 */  beqz      $v0, .L80240750
/* A677EC 802406EC 00000000 */   nop
.L802406F0:
/* A677F0 802406F0 34630102 */  ori       $v1, $v1, 0x102
/* A677F4 802406F4 AEE00070 */  sw        $zero, 0x70($s7)
/* A677F8 802406F8 8E420000 */  lw        $v0, ($s2)
/* A677FC 802406FC 0240202D */  daddu     $a0, $s2, $zero
/* A67800 80240700 A640008E */  sh        $zero, 0x8e($s2)
/* A67804 80240704 00431025 */  or        $v0, $v0, $v1
/* A67808 80240708 0C00EAFF */  jal       disable_npc_shadow
/* A6780C 8024070C AE420000 */   sw       $v0, ($s2)
/* A67810 80240710 3C041F30 */  lui       $a0, 0x1f30
/* A67814 80240714 8E420000 */  lw        $v0, ($s2)
/* A67818 80240718 2403F7FF */  addiu     $v1, $zero, -0x801
/* A6781C 8024071C 00431024 */  and       $v0, $v0, $v1
/* A67820 80240720 AE420000 */  sw        $v0, ($s2)
/* A67824 80240724 8E620000 */  lw        $v0, ($s3)
/* A67828 80240728 8E6300B0 */  lw        $v1, 0xb0($s3)
/* A6782C 8024072C 34840040 */  ori       $a0, $a0, 0x40
/* A67830 80240730 AE60006C */  sw        $zero, 0x6c($s3)
/* A67834 80240734 00441025 */  or        $v0, $v0, $a0
/* A67838 80240738 AE620000 */  sw        $v0, ($s3)
/* A6783C 8024073C 30620004 */  andi      $v0, $v1, 4
/* A67840 80240740 10400003 */  beqz      $v0, .L80240750
/* A67844 80240744 2402FFFB */   addiu    $v0, $zero, -5
/* A67848 80240748 00621024 */  and       $v0, $v1, $v0
/* A6784C 8024074C AE6200B0 */  sw        $v0, 0xb0($s3)
.L80240750:
/* A67850 80240750 8EE30070 */  lw        $v1, 0x70($s7)
/* A67854 80240754 24100001 */  addiu     $s0, $zero, 1
/* A67858 80240758 10700012 */  beq       $v1, $s0, .L802407A4
/* A6785C 8024075C 28620002 */   slti     $v0, $v1, 2
/* A67860 80240760 10400005 */  beqz      $v0, .L80240778
/* A67864 80240764 24020002 */   addiu    $v0, $zero, 2
/* A67868 80240768 10600007 */  beqz      $v1, .L80240788
/* A6786C 8024076C 0000102D */   daddu    $v0, $zero, $zero
/* A67870 80240770 080902D3 */  j         .L80240B4C
/* A67874 80240774 00000000 */   nop
.L80240778:
/* A67878 80240778 1062005B */  beq       $v1, $v0, .L802408E8
/* A6787C 8024077C 0000102D */   daddu    $v0, $zero, $zero
/* A67880 80240780 080902D3 */  j         .L80240B4C
/* A67884 80240784 00000000 */   nop
.L80240788:
/* A67888 80240788 8E420000 */  lw        $v0, ($s2)
/* A6788C 8024078C 0240202D */  daddu     $a0, $s2, $zero
/* A67890 80240790 34420002 */  ori       $v0, $v0, 2
/* A67894 80240794 0C00EAFF */  jal       disable_npc_shadow
/* A67898 80240798 AE420000 */   sw       $v0, ($s2)
/* A6789C 8024079C AE60006C */  sw        $zero, 0x6c($s3)
/* A678A0 802407A0 AEF00070 */  sw        $s0, 0x70($s7)
.L802407A4:
/* A678A4 802407A4 8E74006C */  lw        $s4, 0x6c($s3)
/* A678A8 802407A8 24020001 */  addiu     $v0, $zero, 1
/* A678AC 802407AC 168200E7 */  bne       $s4, $v0, .L80240B4C
/* A678B0 802407B0 0000102D */   daddu    $v0, $zero, $zero
/* A678B4 802407B4 8E64007C */  lw        $a0, 0x7c($s3)
/* A678B8 802407B8 24110002 */  addiu     $s1, $zero, 2
/* A678BC 802407BC 0C00EABB */  jal       get_npc_unsafe
/* A678C0 802407C0 AE71006C */   sw       $s1, 0x6c($s3)
/* A678C4 802407C4 0040802D */  daddu     $s0, $v0, $zero
/* A678C8 802407C8 C6000038 */  lwc1      $f0, 0x38($s0)
/* A678CC 802407CC E6400038 */  swc1      $f0, 0x38($s2)
/* A678D0 802407D0 C6000040 */  lwc1      $f0, 0x40($s0)
/* A678D4 802407D4 E6400040 */  swc1      $f0, 0x40($s2)
/* A678D8 802407D8 C6020034 */  lwc1      $f2, 0x34($s0)
/* A678DC 802407DC 3C014387 */  lui       $at, 0x4387
/* A678E0 802407E0 44810000 */  mtc1      $at, $f0
/* A678E4 802407E4 26440038 */  addiu     $a0, $s2, 0x38
/* A678E8 802407E8 46020001 */  sub.s     $f0, $f0, $f2
/* A678EC 802407EC C6680078 */  lwc1      $f8, 0x78($s3)
/* A678F0 802407F0 46804220 */  cvt.s.w   $f8, $f8
/* A678F4 802407F4 44064000 */  mfc1      $a2, $f8
/* A678F8 802407F8 44070000 */  mfc1      $a3, $f0
/* A678FC 802407FC 0C00A7E7 */  jal       add_vec2D_polar
/* A67900 80240800 26450040 */   addiu    $a1, $s2, 0x40
/* A67904 80240804 C600003C */  lwc1      $f0, 0x3c($s0)
/* A67908 80240808 C6620074 */  lwc1      $f2, 0x74($s3)
/* A6790C 8024080C 468010A0 */  cvt.s.w   $f2, $f2
/* A67910 80240810 46020000 */  add.s     $f0, $f0, $f2
/* A67914 80240814 E640003C */  swc1      $f0, 0x3c($s2)
/* A67918 80240818 A2740007 */  sb        $s4, 7($s3)
/* A6791C 8024081C C6400038 */  lwc1      $f0, 0x38($s2)
/* A67920 80240820 4600020D */  trunc.w.s $f8, $f0
/* A67924 80240824 44024000 */  mfc1      $v0, $f8
/* A67928 80240828 00000000 */  nop
/* A6792C 8024082C A6620010 */  sh        $v0, 0x10($s3)
/* A67930 80240830 C640003C */  lwc1      $f0, 0x3c($s2)
/* A67934 80240834 4600020D */  trunc.w.s $f8, $f0
/* A67938 80240838 44024000 */  mfc1      $v0, $f8
/* A6793C 8024083C 00000000 */  nop
/* A67940 80240840 A6620012 */  sh        $v0, 0x12($s3)
/* A67944 80240844 C6400040 */  lwc1      $f0, 0x40($s2)
/* A67948 80240848 4600020D */  trunc.w.s $f8, $f0
/* A6794C 8024084C 44024000 */  mfc1      $v0, $f8
/* A67950 80240850 00000000 */  nop
/* A67954 80240854 A6620014 */  sh        $v0, 0x14($s3)
/* A67958 80240858 AE400044 */  sw        $zero, 0x44($s2)
/* A6795C 8024085C AE400048 */  sw        $zero, 0x48($s2)
/* A67960 80240860 AE40004C */  sw        $zero, 0x4c($s2)
/* A67964 80240864 C6A00000 */  lwc1      $f0, ($s5)
/* A67968 80240868 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* A6796C 8024086C 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* A67970 80240870 C64C0038 */  lwc1      $f12, 0x38($s2)
/* A67974 80240874 C64E0040 */  lwc1      $f14, 0x40($s2)
/* A67978 80240878 E6400018 */  swc1      $f0, 0x18($s2)
/* A6797C 8024087C 8C460028 */  lw        $a2, 0x28($v0)
/* A67980 80240880 0C00A720 */  jal       atan2
/* A67984 80240884 8C470030 */   lw       $a3, 0x30($v0)
/* A67988 80240888 E640000C */  swc1      $f0, 0xc($s2)
/* A6798C 8024088C C6A0000C */  lwc1      $f0, 0xc($s5)
/* A67990 80240890 8E420000 */  lw        $v0, ($s2)
/* A67994 80240894 0240202D */  daddu     $a0, $s2, $zero
/* A67998 80240898 E640001C */  swc1      $f0, 0x1c($s2)
/* A6799C 8024089C C6A00010 */  lwc1      $f0, 0x10($s5)
/* A679A0 802408A0 2403FFFD */  addiu     $v1, $zero, -3
/* A679A4 802408A4 E6400014 */  swc1      $f0, 0x14($s2)
/* A679A8 802408A8 C600003C */  lwc1      $f0, 0x3c($s0)
/* A679AC 802408AC 00431024 */  and       $v0, $v0, $v1
/* A679B0 802408B0 AE420000 */  sw        $v0, ($s2)
/* A679B4 802408B4 0C00EAE8 */  jal       enable_npc_shadow
/* A679B8 802408B8 E6400064 */   swc1     $f0, 0x64($s2)
/* A679BC 802408BC 8E420000 */  lw        $v0, ($s2)
/* A679C0 802408C0 3C03E0FF */  lui       $v1, 0xe0ff
/* A679C4 802408C4 34420800 */  ori       $v0, $v0, 0x800
/* A679C8 802408C8 AE420000 */  sw        $v0, ($s2)
/* A679CC 802408CC 8E620000 */  lw        $v0, ($s3)
/* A679D0 802408D0 3463FFFF */  ori       $v1, $v1, 0xffff
/* A679D4 802408D4 00431024 */  and       $v0, $v0, $v1
/* A679D8 802408D8 AE620000 */  sw        $v0, ($s3)
/* A679DC 802408DC 2402005A */  addiu     $v0, $zero, 0x5a
/* A679E0 802408E0 A642008E */  sh        $v0, 0x8e($s2)
/* A679E4 802408E4 AEF10070 */  sw        $s1, 0x70($s7)
.L802408E8:
/* A679E8 802408E8 0000202D */  daddu     $a0, $zero, $zero
/* A679EC 802408EC 27B00020 */  addiu     $s0, $sp, 0x20
/* A679F0 802408F0 864200A8 */  lh        $v0, 0xa8($s2)
/* A679F4 802408F4 3C013FE0 */  lui       $at, 0x3fe0
/* A679F8 802408F8 44810800 */  mtc1      $at, $f1
/* A679FC 802408FC 44800000 */  mtc1      $zero, $f0
/* A67A00 80240900 44821000 */  mtc1      $v0, $f2
/* A67A04 80240904 00000000 */  nop
/* A67A08 80240908 468010A1 */  cvt.d.w   $f2, $f2
/* A67A0C 8024090C 46201082 */  mul.d     $f2, $f2, $f0
/* A67A10 80240910 00000000 */  nop
/* A67A14 80240914 0200282D */  daddu     $a1, $s0, $zero
/* A67A18 80240918 C6440038 */  lwc1      $f4, 0x38($s2)
/* A67A1C 8024091C C640003C */  lwc1      $f0, 0x3c($s2)
/* A67A20 80240920 27B10024 */  addiu     $s1, $sp, 0x24
/* A67A24 80240924 E7A40020 */  swc1      $f4, 0x20($sp)
/* A67A28 80240928 C6440040 */  lwc1      $f4, 0x40($s2)
/* A67A2C 8024092C 46000021 */  cvt.d.s   $f0, $f0
/* A67A30 80240930 46220000 */  add.d     $f0, $f0, $f2
/* A67A34 80240934 E7A40028 */  swc1      $f4, 0x28($sp)
/* A67A38 80240938 C6420018 */  lwc1      $f2, 0x18($s2)
/* A67A3C 8024093C 46200020 */  cvt.s.d   $f0, $f0
/* A67A40 80240940 E7A00024 */  swc1      $f0, 0x24($sp)
/* A67A44 80240944 E7A20010 */  swc1      $f2, 0x10($sp)
/* A67A48 80240948 C640000C */  lwc1      $f0, 0xc($s2)
/* A67A4C 8024094C 0220302D */  daddu     $a2, $s1, $zero
/* A67A50 80240950 E7A00014 */  swc1      $f0, 0x14($sp)
/* A67A54 80240954 864200A6 */  lh        $v0, 0xa6($s2)
/* A67A58 80240958 27B40028 */  addiu     $s4, $sp, 0x28
/* A67A5C 8024095C 44820000 */  mtc1      $v0, $f0
/* A67A60 80240960 00000000 */  nop
/* A67A64 80240964 46800020 */  cvt.s.w   $f0, $f0
/* A67A68 80240968 E7A00018 */  swc1      $f0, 0x18($sp)
/* A67A6C 8024096C 864200A8 */  lh        $v0, 0xa8($s2)
/* A67A70 80240970 0280382D */  daddu     $a3, $s4, $zero
/* A67A74 80240974 44820000 */  mtc1      $v0, $f0
/* A67A78 80240978 00000000 */  nop
/* A67A7C 8024097C 46800020 */  cvt.s.w   $f0, $f0
/* A67A80 80240980 0C0376B9 */  jal       npc_test_move_taller_with_slipping
/* A67A84 80240984 E7A0001C */   swc1     $f0, 0x1c($sp)
/* A67A88 80240988 54400001 */  bnel      $v0, $zero, .L80240990
/* A67A8C 8024098C 24160001 */   addiu    $s6, $zero, 1
.L80240990:
/* A67A90 80240990 0200282D */  daddu     $a1, $s0, $zero
/* A67A94 80240994 0220302D */  daddu     $a2, $s1, $zero
/* A67A98 80240998 C6400038 */  lwc1      $f0, 0x38($s2)
/* A67A9C 8024099C C642003C */  lwc1      $f2, 0x3c($s2)
/* A67AA0 802409A0 C6440040 */  lwc1      $f4, 0x40($s2)
/* A67AA4 802409A4 3C01447A */  lui       $at, 0x447a
/* A67AA8 802409A8 44813000 */  mtc1      $at, $f6
/* A67AAC 802409AC 27A2002C */  addiu     $v0, $sp, 0x2c
/* A67AB0 802409B0 E7A00020 */  swc1      $f0, 0x20($sp)
/* A67AB4 802409B4 E7A20024 */  swc1      $f2, 0x24($sp)
/* A67AB8 802409B8 E7A40028 */  swc1      $f4, 0x28($sp)
/* A67ABC 802409BC E7A6002C */  swc1      $f6, 0x2c($sp)
/* A67AC0 802409C0 AFA20010 */  sw        $v0, 0x10($sp)
/* A67AC4 802409C4 8E440080 */  lw        $a0, 0x80($s2)
/* A67AC8 802409C8 0C0372DF */  jal       npc_raycast_down_sides
/* A67ACC 802409CC 0280382D */   daddu    $a3, $s4, $zero
/* A67AD0 802409D0 10400019 */  beqz      $v0, .L80240A38
/* A67AD4 802409D4 00000000 */   nop
/* A67AD8 802409D8 C640001C */  lwc1      $f0, 0x1c($s2)
/* A67ADC 802409DC C7A2002C */  lwc1      $f2, 0x2c($sp)
/* A67AE0 802409E0 46000005 */  abs.s     $f0, $f0
/* A67AE4 802409E4 4600103C */  c.lt.s    $f2, $f0
/* A67AE8 802409E8 00000000 */  nop
/* A67AEC 802409EC 45000012 */  bc1f      .L80240A38
/* A67AF0 802409F0 00000000 */   nop
/* A67AF4 802409F4 C7A40024 */  lwc1      $f4, 0x24($sp)
/* A67AF8 802409F8 C6400064 */  lwc1      $f0, 0x64($s2)
/* A67AFC 802409FC 46002001 */  sub.s     $f0, $f4, $f0
/* A67B00 80240A00 3C014034 */  lui       $at, 0x4034
/* A67B04 80240A04 44811800 */  mtc1      $at, $f3
/* A67B08 80240A08 44801000 */  mtc1      $zero, $f2
/* A67B0C 80240A0C 46000005 */  abs.s     $f0, $f0
/* A67B10 80240A10 46000021 */  cvt.d.s   $f0, $f0
/* A67B14 80240A14 4622003C */  c.lt.d    $f0, $f2
/* A67B18 80240A18 00000000 */  nop
/* A67B1C 80240A1C 45000006 */  bc1f      .L80240A38
/* A67B20 80240A20 0240202D */   daddu    $a0, $s2, $zero
/* A67B24 80240A24 8E450018 */  lw        $a1, 0x18($s2)
/* A67B28 80240A28 8E46000C */  lw        $a2, 0xc($s2)
/* A67B2C 80240A2C 2416000A */  addiu     $s6, $zero, 0xa
/* A67B30 80240A30 0C00EA95 */  jal       npc_move_heading
/* A67B34 80240A34 E644003C */   swc1     $f4, 0x3c($s2)
.L80240A38:
/* A67B38 80240A38 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* A67B3C 80240A3C 3C013FF0 */  lui       $at, 0x3ff0
/* A67B40 80240A40 44811800 */  mtc1      $at, $f3
/* A67B44 80240A44 44801000 */  mtc1      $zero, $f2
/* A67B48 80240A48 46000021 */  cvt.d.s   $f0, $f0
/* A67B4C 80240A4C 4622003C */  c.lt.d    $f0, $f2
/* A67B50 80240A50 00000000 */  nop
/* A67B54 80240A54 45030001 */  bc1tl     .L80240A5C
/* A67B58 80240A58 2416000B */   addiu    $s6, $zero, 0xb
.L80240A5C:
/* A67B5C 80240A5C 9642008E */  lhu       $v0, 0x8e($s2)
/* A67B60 80240A60 2442FFFF */  addiu     $v0, $v0, -1
/* A67B64 80240A64 A642008E */  sh        $v0, 0x8e($s2)
/* A67B68 80240A68 00021400 */  sll       $v0, $v0, 0x10
/* A67B6C 80240A6C 58400001 */  blezl     $v0, .L80240A74
/* A67B70 80240A70 24160014 */   addiu    $s6, $zero, 0x14
.L80240A74:
/* A67B74 80240A74 56C00019 */  bnel      $s6, $zero, .L80240ADC
/* A67B78 80240A78 AFA00010 */   sw       $zero, 0x10($sp)
/* A67B7C 80240A7C 8E620070 */  lw        $v0, 0x70($s3)
/* A67B80 80240A80 30420001 */  andi      $v0, $v0, 1
/* A67B84 80240A84 10400009 */  beqz      $v0, .L80240AAC
/* A67B88 80240A88 00000000 */   nop
/* A67B8C 80240A8C C640004C */  lwc1      $f0, 0x4c($s2)
/* A67B90 80240A90 3C014044 */  lui       $at, 0x4044
/* A67B94 80240A94 44811800 */  mtc1      $at, $f3
/* A67B98 80240A98 44801000 */  mtc1      $zero, $f2
/* A67B9C 80240A9C 46000021 */  cvt.d.s   $f0, $f0
/* A67BA0 80240AA0 46220000 */  add.d     $f0, $f0, $f2
/* A67BA4 80240AA4 46200020 */  cvt.s.d   $f0, $f0
/* A67BA8 80240AA8 E640004C */  swc1      $f0, 0x4c($s2)
.L80240AAC:
/* A67BAC 80240AAC 8E450018 */  lw        $a1, 0x18($s2)
/* A67BB0 80240AB0 8E46000C */  lw        $a2, 0xc($s2)
/* A67BB4 80240AB4 0C00EA95 */  jal       npc_move_heading
/* A67BB8 80240AB8 0240202D */   daddu    $a0, $s2, $zero
/* A67BBC 80240ABC C644003C */  lwc1      $f4, 0x3c($s2)
/* A67BC0 80240AC0 C640001C */  lwc1      $f0, 0x1c($s2)
/* A67BC4 80240AC4 46002100 */  add.s     $f4, $f4, $f0
/* A67BC8 80240AC8 C6420014 */  lwc1      $f2, 0x14($s2)
/* A67BCC 80240ACC 46020001 */  sub.s     $f0, $f0, $f2
/* A67BD0 80240AD0 E644003C */  swc1      $f4, 0x3c($s2)
/* A67BD4 80240AD4 080902D2 */  j         .L80240B48
/* A67BD8 80240AD8 E640001C */   swc1     $f0, 0x1c($s2)
.L80240ADC:
/* A67BDC 80240ADC AFA00014 */  sw        $zero, 0x14($sp)
/* A67BE0 80240AE0 8E450038 */  lw        $a1, 0x38($s2)
/* A67BE4 80240AE4 8E46003C */  lw        $a2, 0x3c($s2)
/* A67BE8 80240AE8 8E470040 */  lw        $a3, 0x40($s2)
/* A67BEC 80240AEC 0C01BECC */  jal       fx_walk
/* A67BF0 80240AF0 24040002 */   addiu    $a0, $zero, 2
/* A67BF4 80240AF4 3C01C47A */  lui       $at, 0xc47a
/* A67BF8 80240AF8 44810000 */  mtc1      $at, $f0
/* A67BFC 80240AFC AE60006C */  sw        $zero, 0x6c($s3)
/* A67C00 80240B00 8E420000 */  lw        $v0, ($s2)
/* A67C04 80240B04 0240202D */  daddu     $a0, $s2, $zero
/* A67C08 80240B08 AE400038 */  sw        $zero, 0x38($s2)
/* A67C0C 80240B0C AE400040 */  sw        $zero, 0x40($s2)
/* A67C10 80240B10 AE40001C */  sw        $zero, 0x1c($s2)
/* A67C14 80240B14 34420002 */  ori       $v0, $v0, 2
/* A67C18 80240B18 E640003C */  swc1      $f0, 0x3c($s2)
/* A67C1C 80240B1C 0C00EAFF */  jal       disable_npc_shadow
/* A67C20 80240B20 AE420000 */   sw       $v0, ($s2)
/* A67C24 80240B24 8E420000 */  lw        $v0, ($s2)
/* A67C28 80240B28 2403F7FF */  addiu     $v1, $zero, -0x801
/* A67C2C 80240B2C 00431024 */  and       $v0, $v0, $v1
/* A67C30 80240B30 AE420000 */  sw        $v0, ($s2)
/* A67C34 80240B34 8E620000 */  lw        $v0, ($s3)
/* A67C38 80240B38 3C031F00 */  lui       $v1, 0x1f00
/* A67C3C 80240B3C 00431025 */  or        $v0, $v0, $v1
/* A67C40 80240B40 AE620000 */  sw        $v0, ($s3)
/* A67C44 80240B44 AEE00070 */  sw        $zero, 0x70($s7)
.L80240B48:
/* A67C48 80240B48 0000102D */  daddu     $v0, $zero, $zero
.L80240B4C:
/* A67C4C 80240B4C 8FBF0050 */  lw        $ra, 0x50($sp)
/* A67C50 80240B50 8FB7004C */  lw        $s7, 0x4c($sp)
/* A67C54 80240B54 8FB60048 */  lw        $s6, 0x48($sp)
/* A67C58 80240B58 8FB50044 */  lw        $s5, 0x44($sp)
/* A67C5C 80240B5C 8FB40040 */  lw        $s4, 0x40($sp)
/* A67C60 80240B60 8FB3003C */  lw        $s3, 0x3c($sp)
/* A67C64 80240B64 8FB20038 */  lw        $s2, 0x38($sp)
/* A67C68 80240B68 8FB10034 */  lw        $s1, 0x34($sp)
/* A67C6C 80240B6C 8FB00030 */  lw        $s0, 0x30($sp)
/* A67C70 80240B70 03E00008 */  jr        $ra
/* A67C74 80240B74 27BD0058 */   addiu    $sp, $sp, 0x58
