.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240570_B285A0
/* B285A0 80240570 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* B285A4 80240574 AFB3004C */  sw        $s3, 0x4c($sp)
/* B285A8 80240578 0080982D */  daddu     $s3, $a0, $zero
/* B285AC 8024057C AFBF0054 */  sw        $ra, 0x54($sp)
/* B285B0 80240580 AFB40050 */  sw        $s4, 0x50($sp)
/* B285B4 80240584 AFB20048 */  sw        $s2, 0x48($sp)
/* B285B8 80240588 AFB10044 */  sw        $s1, 0x44($sp)
/* B285BC 8024058C AFB00040 */  sw        $s0, 0x40($sp)
/* B285C0 80240590 F7B40058 */  sdc1      $f20, 0x58($sp)
/* B285C4 80240594 8E710148 */  lw        $s1, 0x148($s3)
/* B285C8 80240598 00A0A02D */  daddu     $s4, $a1, $zero
/* B285CC 8024059C 86240008 */  lh        $a0, 8($s1)
/* B285D0 802405A0 0C00EABB */  jal       get_npc_unsafe
/* B285D4 802405A4 00C0902D */   daddu    $s2, $a2, $zero
/* B285D8 802405A8 8E830014 */  lw        $v1, 0x14($s4)
/* B285DC 802405AC 04600034 */  bltz      $v1, .L80240680
/* B285E0 802405B0 0040802D */   daddu    $s0, $v0, $zero
/* B285E4 802405B4 8E620074 */  lw        $v0, 0x74($s3)
/* B285E8 802405B8 1C400030 */  bgtz      $v0, .L8024067C
/* B285EC 802405BC 2442FFFF */   addiu    $v0, $v0, -1
/* B285F0 802405C0 0240202D */  daddu     $a0, $s2, $zero
/* B285F4 802405C4 AE630074 */  sw        $v1, 0x74($s3)
/* B285F8 802405C8 AFA00010 */  sw        $zero, 0x10($sp)
/* B285FC 802405CC 8E86000C */  lw        $a2, 0xc($s4)
/* B28600 802405D0 8E870010 */  lw        $a3, 0x10($s4)
/* B28604 802405D4 0C01242D */  jal       func_800490B4
/* B28608 802405D8 0220282D */   daddu    $a1, $s1, $zero
/* B2860C 802405DC 10400025 */  beqz      $v0, .L80240674
/* B28610 802405E0 0000202D */   daddu    $a0, $zero, $zero
/* B28614 802405E4 0200282D */  daddu     $a1, $s0, $zero
/* B28618 802405E8 0000302D */  daddu     $a2, $zero, $zero
/* B2861C 802405EC 860300A8 */  lh        $v1, 0xa8($s0)
/* B28620 802405F0 3C013F80 */  lui       $at, 0x3f80
/* B28624 802405F4 44810000 */  mtc1      $at, $f0
/* B28628 802405F8 3C014000 */  lui       $at, 0x4000
/* B2862C 802405FC 44811000 */  mtc1      $at, $f2
/* B28630 80240600 3C01C1A0 */  lui       $at, 0xc1a0
/* B28634 80240604 44812000 */  mtc1      $at, $f4
/* B28638 80240608 2402000F */  addiu     $v0, $zero, 0xf
/* B2863C 8024060C AFA2001C */  sw        $v0, 0x1c($sp)
/* B28640 80240610 44835000 */  mtc1      $v1, $f10
/* B28644 80240614 00000000 */  nop
/* B28648 80240618 468052A0 */  cvt.s.w   $f10, $f10
/* B2864C 8024061C 44075000 */  mfc1      $a3, $f10
/* B28650 80240620 27A20028 */  addiu     $v0, $sp, 0x28
/* B28654 80240624 AFA20020 */  sw        $v0, 0x20($sp)
/* B28658 80240628 E7A00010 */  swc1      $f0, 0x10($sp)
/* B2865C 8024062C E7A20014 */  swc1      $f2, 0x14($sp)
/* B28660 80240630 0C01BFA4 */  jal       fx_emote
/* B28664 80240634 E7A40018 */   swc1     $f4, 0x18($sp)
/* B28668 80240638 0200202D */  daddu     $a0, $s0, $zero
/* B2866C 8024063C 240502F4 */  addiu     $a1, $zero, 0x2f4
/* B28670 80240640 0C012530 */  jal       ai_enemy_play_sound
/* B28674 80240644 3C060020 */   lui      $a2, 0x20
/* B28678 80240648 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* B2867C 8024064C 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* B28680 80240650 C60C0038 */  lwc1      $f12, 0x38($s0)
/* B28684 80240654 C60E0040 */  lwc1      $f14, 0x40($s0)
/* B28688 80240658 8C460028 */  lw        $a2, 0x28($v0)
/* B2868C 8024065C 0C00A720 */  jal       atan2
/* B28690 80240660 8C470030 */   lw       $a3, 0x30($v0)
/* B28694 80240664 2402000C */  addiu     $v0, $zero, 0xc
/* B28698 80240668 E600000C */  swc1      $f0, 0xc($s0)
/* B2869C 8024066C 08090221 */  j         .L80240884
/* B286A0 80240670 AE620070 */   sw       $v0, 0x70($s3)
.L80240674:
/* B286A4 80240674 8E620074 */  lw        $v0, 0x74($s3)
/* B286A8 80240678 2442FFFF */  addiu     $v0, $v0, -1
.L8024067C:
/* B286AC 8024067C AE620074 */  sw        $v0, 0x74($s3)
.L80240680:
/* B286B0 80240680 C6000018 */  lwc1      $f0, 0x18($s0)
/* B286B4 80240684 44801000 */  mtc1      $zero, $f2
/* B286B8 80240688 44801800 */  mtc1      $zero, $f3
/* B286BC 8024068C 46000021 */  cvt.d.s   $f0, $f0
/* B286C0 80240690 4620103C */  c.lt.d    $f2, $f0
/* B286C4 80240694 00000000 */  nop
/* B286C8 80240698 45000025 */  bc1f      .L80240730
/* B286CC 8024069C 27A5002C */   addiu    $a1, $sp, 0x2c
/* B286D0 802406A0 C6000038 */  lwc1      $f0, 0x38($s0)
/* B286D4 802406A4 860200A6 */  lh        $v0, 0xa6($s0)
/* B286D8 802406A8 3C018024 */  lui       $at, %hi(D_802443F0_B2C420)
/* B286DC 802406AC D42243F0 */  ldc1      $f2, %lo(D_802443F0_B2C420)($at)
/* B286E0 802406B0 27A60030 */  addiu     $a2, $sp, 0x30
/* B286E4 802406B4 E7A0002C */  swc1      $f0, 0x2c($sp)
/* B286E8 802406B8 44820000 */  mtc1      $v0, $f0
/* B286EC 802406BC 00000000 */  nop
/* B286F0 802406C0 46800020 */  cvt.s.w   $f0, $f0
/* B286F4 802406C4 46000021 */  cvt.d.s   $f0, $f0
/* B286F8 802406C8 C604003C */  lwc1      $f4, 0x3c($s0)
/* B286FC 802406CC C6060040 */  lwc1      $f6, 0x40($s0)
/* B28700 802406D0 C6080018 */  lwc1      $f8, 0x18($s0)
/* B28704 802406D4 860200A8 */  lh        $v0, 0xa8($s0)
/* B28708 802406D8 46220002 */  mul.d     $f0, $f0, $f2
/* B2870C 802406DC 00000000 */  nop
/* B28710 802406E0 E7A40030 */  swc1      $f4, 0x30($sp)
/* B28714 802406E4 E7A60034 */  swc1      $f6, 0x34($sp)
/* B28718 802406E8 E7A80010 */  swc1      $f8, 0x10($sp)
/* B2871C 802406EC C604000C */  lwc1      $f4, 0xc($s0)
/* B28720 802406F0 44821000 */  mtc1      $v0, $f2
/* B28724 802406F4 00000000 */  nop
/* B28728 802406F8 468010A0 */  cvt.s.w   $f2, $f2
/* B2872C 802406FC E7A20018 */  swc1      $f2, 0x18($sp)
/* B28730 80240700 E7A40014 */  swc1      $f4, 0x14($sp)
/* B28734 80240704 46200020 */  cvt.s.d   $f0, $f0
/* B28738 80240708 E7A0001C */  swc1      $f0, 0x1c($sp)
/* B2873C 8024070C 8E040080 */  lw        $a0, 0x80($s0)
/* B28740 80240710 0C037711 */  jal       npc_test_move_simple_with_slipping
/* B28744 80240714 27A70034 */   addiu    $a3, $sp, 0x34
/* B28748 80240718 54400005 */  bnel      $v0, $zero, .L80240730
/* B2874C 8024071C AE000018 */   sw       $zero, 0x18($s0)
/* B28750 80240720 8E050018 */  lw        $a1, 0x18($s0)
/* B28754 80240724 8E06000C */  lw        $a2, 0xc($s0)
/* B28758 80240728 0C00EA95 */  jal       npc_move_heading
/* B2875C 8024072C 0200202D */   daddu    $a0, $s0, $zero
.L80240730:
/* B28760 80240730 C600001C */  lwc1      $f0, 0x1c($s0)
/* B28764 80240734 44801000 */  mtc1      $zero, $f2
/* B28768 80240738 44801800 */  mtc1      $zero, $f3
/* B2876C 8024073C 46000021 */  cvt.d.s   $f0, $f0
/* B28770 80240740 4622003C */  c.lt.d    $f0, $f2
/* B28774 80240744 00000000 */  nop
/* B28778 80240748 45000047 */  bc1f      .L80240868
/* B2877C 8024074C 27A5002C */   addiu    $a1, $sp, 0x2c
/* B28780 80240750 27A60030 */  addiu     $a2, $sp, 0x30
/* B28784 80240754 27A20038 */  addiu     $v0, $sp, 0x38
/* B28788 80240758 C602003C */  lwc1      $f2, 0x3c($s0)
/* B2878C 8024075C C6060038 */  lwc1      $f6, 0x38($s0)
/* B28790 80240760 3C01402A */  lui       $at, 0x402a
/* B28794 80240764 4481A800 */  mtc1      $at, $f21
/* B28798 80240768 4480A000 */  mtc1      $zero, $f20
/* B2879C 8024076C 460010A1 */  cvt.d.s   $f2, $f2
/* B287A0 80240770 46341080 */  add.d     $f2, $f2, $f20
/* B287A4 80240774 C600001C */  lwc1      $f0, 0x1c($s0)
/* B287A8 80240778 C6040040 */  lwc1      $f4, 0x40($s0)
/* B287AC 8024077C 46000005 */  abs.s     $f0, $f0
/* B287B0 80240780 E7A40034 */  swc1      $f4, 0x34($sp)
/* B287B4 80240784 3C014030 */  lui       $at, 0x4030
/* B287B8 80240788 44812800 */  mtc1      $at, $f5
/* B287BC 8024078C 44802000 */  mtc1      $zero, $f4
/* B287C0 80240790 46000021 */  cvt.d.s   $f0, $f0
/* B287C4 80240794 E7A6002C */  swc1      $f6, 0x2c($sp)
/* B287C8 80240798 46240000 */  add.d     $f0, $f0, $f4
/* B287CC 8024079C 462010A0 */  cvt.s.d   $f2, $f2
/* B287D0 802407A0 E7A20030 */  swc1      $f2, 0x30($sp)
/* B287D4 802407A4 46200020 */  cvt.s.d   $f0, $f0
/* B287D8 802407A8 E7A00038 */  swc1      $f0, 0x38($sp)
/* B287DC 802407AC AFA20010 */  sw        $v0, 0x10($sp)
/* B287E0 802407B0 8E040080 */  lw        $a0, 0x80($s0)
/* B287E4 802407B4 0C0372DF */  jal       npc_raycast_down_sides
/* B287E8 802407B8 27A70034 */   addiu    $a3, $sp, 0x34
/* B287EC 802407BC 1040002A */  beqz      $v0, .L80240868
/* B287F0 802407C0 00000000 */   nop
/* B287F4 802407C4 C600001C */  lwc1      $f0, 0x1c($s0)
/* B287F8 802407C8 C7A20038 */  lwc1      $f2, 0x38($sp)
/* B287FC 802407CC 46000005 */  abs.s     $f0, $f0
/* B28800 802407D0 46000021 */  cvt.d.s   $f0, $f0
/* B28804 802407D4 46340000 */  add.d     $f0, $f0, $f20
/* B28808 802407D8 460010A1 */  cvt.d.s   $f2, $f2
/* B2880C 802407DC 4620103E */  c.le.d    $f2, $f0
/* B28810 802407E0 00000000 */  nop
/* B28814 802407E4 45000020 */  bc1f      .L80240868
/* B28818 802407E8 240403E8 */   addiu    $a0, $zero, 0x3e8
/* B2881C 802407EC C7A00030 */  lwc1      $f0, 0x30($sp)
/* B28820 802407F0 8E020000 */  lw        $v0, ($s0)
/* B28824 802407F4 2403F7FF */  addiu     $v1, $zero, -0x801
/* B28828 802407F8 AE00001C */  sw        $zero, 0x1c($s0)
/* B2882C 802407FC 00431024 */  and       $v0, $v0, $v1
/* B28830 80240800 AE020000 */  sw        $v0, ($s0)
/* B28834 80240804 24020002 */  addiu     $v0, $zero, 2
/* B28838 80240808 E600003C */  swc1      $f0, 0x3c($s0)
/* B2883C 8024080C 0C00A67F */  jal       rand_int
/* B28840 80240810 AE620070 */   sw       $v0, 0x70($s3)
/* B28844 80240814 3C035555 */  lui       $v1, 0x5555
/* B28848 80240818 34635556 */  ori       $v1, $v1, 0x5556
/* B2884C 8024081C 00430018 */  mult      $v0, $v1
/* B28850 80240820 000227C3 */  sra       $a0, $v0, 0x1f
/* B28854 80240824 00004010 */  mfhi      $t0
/* B28858 80240828 01042023 */  subu      $a0, $t0, $a0
/* B2885C 8024082C 00041840 */  sll       $v1, $a0, 1
/* B28860 80240830 00641821 */  addu      $v1, $v1, $a0
/* B28864 80240834 00431023 */  subu      $v0, $v0, $v1
/* B28868 80240838 24430002 */  addiu     $v1, $v0, 2
/* B2886C 8024083C AE630074 */  sw        $v1, 0x74($s3)
/* B28870 80240840 8E82002C */  lw        $v0, 0x2c($s4)
/* B28874 80240844 5840000F */  blezl     $v0, .L80240884
/* B28878 80240848 AE600070 */   sw       $zero, 0x70($s3)
/* B2887C 8024084C 8E820004 */  lw        $v0, 4($s4)
/* B28880 80240850 5840000C */  blezl     $v0, .L80240884
/* B28884 80240854 AE600070 */   sw       $zero, 0x70($s3)
/* B28888 80240858 1460000A */  bnez      $v1, .L80240884
/* B2888C 8024085C 00000000 */   nop
/* B28890 80240860 08090221 */  j         .L80240884
/* B28894 80240864 AE600070 */   sw       $zero, 0x70($s3)
.L80240868:
/* B28898 80240868 C604003C */  lwc1      $f4, 0x3c($s0)
/* B2889C 8024086C C600001C */  lwc1      $f0, 0x1c($s0)
/* B288A0 80240870 46002100 */  add.s     $f4, $f4, $f0
/* B288A4 80240874 C6020014 */  lwc1      $f2, 0x14($s0)
/* B288A8 80240878 46020001 */  sub.s     $f0, $f0, $f2
/* B288AC 8024087C E604003C */  swc1      $f4, 0x3c($s0)
/* B288B0 80240880 E600001C */  swc1      $f0, 0x1c($s0)
.L80240884:
/* B288B4 80240884 8FBF0054 */  lw        $ra, 0x54($sp)
/* B288B8 80240888 8FB40050 */  lw        $s4, 0x50($sp)
/* B288BC 8024088C 8FB3004C */  lw        $s3, 0x4c($sp)
/* B288C0 80240890 8FB20048 */  lw        $s2, 0x48($sp)
/* B288C4 80240894 8FB10044 */  lw        $s1, 0x44($sp)
/* B288C8 80240898 8FB00040 */  lw        $s0, 0x40($sp)
/* B288CC 8024089C D7B40058 */  ldc1      $f20, 0x58($sp)
/* B288D0 802408A0 03E00008 */  jr        $ra
/* B288D4 802408A4 27BD0060 */   addiu    $sp, $sp, 0x60
