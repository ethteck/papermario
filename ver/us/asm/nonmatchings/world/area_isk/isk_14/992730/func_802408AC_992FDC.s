.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802408AC_992FDC
/* 992FDC 802408AC 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 992FE0 802408B0 AFB40050 */  sw        $s4, 0x50($sp)
/* 992FE4 802408B4 0080A02D */  daddu     $s4, $a0, $zero
/* 992FE8 802408B8 AFBF0060 */  sw        $ra, 0x60($sp)
/* 992FEC 802408BC AFB7005C */  sw        $s7, 0x5c($sp)
/* 992FF0 802408C0 AFB60058 */  sw        $s6, 0x58($sp)
/* 992FF4 802408C4 AFB50054 */  sw        $s5, 0x54($sp)
/* 992FF8 802408C8 AFB3004C */  sw        $s3, 0x4c($sp)
/* 992FFC 802408CC AFB20048 */  sw        $s2, 0x48($sp)
/* 993000 802408D0 AFB10044 */  sw        $s1, 0x44($sp)
/* 993004 802408D4 AFB00040 */  sw        $s0, 0x40($sp)
/* 993008 802408D8 F7B40068 */  sdc1      $f20, 0x68($sp)
/* 99300C 802408DC 8E950148 */  lw        $s5, 0x148($s4)
/* 993010 802408E0 00A0B02D */  daddu     $s6, $a1, $zero
/* 993014 802408E4 86A40008 */  lh        $a0, 8($s5)
/* 993018 802408E8 0C00EABB */  jal       get_npc_unsafe
/* 99301C 802408EC 00C0B82D */   daddu    $s7, $a2, $zero
/* 993020 802408F0 0040982D */  daddu     $s3, $v0, $zero
/* 993024 802408F4 C6600018 */  lwc1      $f0, 0x18($s3)
/* 993028 802408F8 44801000 */  mtc1      $zero, $f2
/* 99302C 802408FC 44801800 */  mtc1      $zero, $f3
/* 993030 80240900 46000021 */  cvt.d.s   $f0, $f0
/* 993034 80240904 4620103C */  c.lt.d    $f2, $f0
/* 993038 80240908 00000000 */  nop
/* 99303C 8024090C 45000021 */  bc1f      .L80240994
/* 993040 80240910 27A50028 */   addiu    $a1, $sp, 0x28
/* 993044 80240914 C6600038 */  lwc1      $f0, 0x38($s3)
/* 993048 80240918 C662003C */  lwc1      $f2, 0x3c($s3)
/* 99304C 8024091C C6640040 */  lwc1      $f4, 0x40($s3)
/* 993050 80240920 C6660018 */  lwc1      $f6, 0x18($s3)
/* 993054 80240924 E7A00028 */  swc1      $f0, 0x28($sp)
/* 993058 80240928 E7A2002C */  swc1      $f2, 0x2c($sp)
/* 99305C 8024092C E7A40030 */  swc1      $f4, 0x30($sp)
/* 993060 80240930 E7A60010 */  swc1      $f6, 0x10($sp)
/* 993064 80240934 C660000C */  lwc1      $f0, 0xc($s3)
/* 993068 80240938 E7A00014 */  swc1      $f0, 0x14($sp)
/* 99306C 8024093C 866200A8 */  lh        $v0, 0xa8($s3)
/* 993070 80240940 44820000 */  mtc1      $v0, $f0
/* 993074 80240944 00000000 */  nop
/* 993078 80240948 46800020 */  cvt.s.w   $f0, $f0
/* 99307C 8024094C E7A00018 */  swc1      $f0, 0x18($sp)
/* 993080 80240950 866200A6 */  lh        $v0, 0xa6($s3)
/* 993084 80240954 27A6002C */  addiu     $a2, $sp, 0x2c
/* 993088 80240958 44820000 */  mtc1      $v0, $f0
/* 99308C 8024095C 00000000 */  nop
/* 993090 80240960 46800020 */  cvt.s.w   $f0, $f0
/* 993094 80240964 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 993098 80240968 8E640080 */  lw        $a0, 0x80($s3)
/* 99309C 8024096C 0C037711 */  jal       npc_test_move_simple_with_slipping
/* 9930A0 80240970 27A70030 */   addiu    $a3, $sp, 0x30
/* 9930A4 80240974 10400003 */  beqz      $v0, .L80240984
/* 9930A8 80240978 00000000 */   nop
/* 9930AC 8024097C 08090265 */  j         .L80240994
/* 9930B0 80240980 AE600018 */   sw       $zero, 0x18($s3)
.L80240984:
/* 9930B4 80240984 8E650018 */  lw        $a1, 0x18($s3)
/* 9930B8 80240988 8E66000C */  lw        $a2, 0xc($s3)
/* 9930BC 8024098C 0C00EA95 */  jal       npc_move_heading
/* 9930C0 80240990 0260202D */   daddu    $a0, $s3, $zero
.L80240994:
/* 9930C4 80240994 C660001C */  lwc1      $f0, 0x1c($s3)
/* 9930C8 80240998 44801000 */  mtc1      $zero, $f2
/* 9930CC 8024099C 44801800 */  mtc1      $zero, $f3
/* 9930D0 802409A0 46000021 */  cvt.d.s   $f0, $f0
/* 9930D4 802409A4 4622003C */  c.lt.d    $f0, $f2
/* 9930D8 802409A8 00000000 */  nop
/* 9930DC 802409AC 4500006C */  bc1f      .L80240B60
/* 9930E0 802409B0 27B00028 */   addiu    $s0, $sp, 0x28
/* 9930E4 802409B4 0200282D */  daddu     $a1, $s0, $zero
/* 9930E8 802409B8 27A60034 */  addiu     $a2, $sp, 0x34
/* 9930EC 802409BC 27B20038 */  addiu     $s2, $sp, 0x38
/* 9930F0 802409C0 C6600038 */  lwc1      $f0, 0x38($s3)
/* 9930F4 802409C4 3C0142C8 */  lui       $at, 0x42c8
/* 9930F8 802409C8 44811000 */  mtc1      $at, $f2
/* 9930FC 802409CC C6640040 */  lwc1      $f4, 0x40($s3)
/* 993100 802409D0 3C01447A */  lui       $at, 0x447a
/* 993104 802409D4 44813000 */  mtc1      $at, $f6
/* 993108 802409D8 27B10030 */  addiu     $s1, $sp, 0x30
/* 99310C 802409DC E7A00028 */  swc1      $f0, 0x28($sp)
/* 993110 802409E0 E7A20034 */  swc1      $f2, 0x34($sp)
/* 993114 802409E4 E7A40030 */  swc1      $f4, 0x30($sp)
/* 993118 802409E8 E7A60038 */  swc1      $f6, 0x38($sp)
/* 99311C 802409EC AFB20010 */  sw        $s2, 0x10($sp)
/* 993120 802409F0 8E640080 */  lw        $a0, 0x80($s3)
/* 993124 802409F4 0C0372DF */  jal       npc_raycast_down_sides
/* 993128 802409F8 0220382D */   daddu    $a3, $s1, $zero
/* 99312C 802409FC 0200282D */  daddu     $a1, $s0, $zero
/* 993130 80240A00 27A6002C */  addiu     $a2, $sp, 0x2c
/* 993134 80240A04 C662003C */  lwc1      $f2, 0x3c($s3)
/* 993138 80240A08 C6660038 */  lwc1      $f6, 0x38($s3)
/* 99313C 80240A0C 3C01402A */  lui       $at, 0x402a
/* 993140 80240A10 4481A800 */  mtc1      $at, $f21
/* 993144 80240A14 4480A000 */  mtc1      $zero, $f20
/* 993148 80240A18 460010A1 */  cvt.d.s   $f2, $f2
/* 99314C 80240A1C 46341080 */  add.d     $f2, $f2, $f20
/* 993150 80240A20 C660001C */  lwc1      $f0, 0x1c($s3)
/* 993154 80240A24 C6640040 */  lwc1      $f4, 0x40($s3)
/* 993158 80240A28 46000005 */  abs.s     $f0, $f0
/* 99315C 80240A2C E7A40030 */  swc1      $f4, 0x30($sp)
/* 993160 80240A30 3C014030 */  lui       $at, 0x4030
/* 993164 80240A34 44812800 */  mtc1      $at, $f5
/* 993168 80240A38 44802000 */  mtc1      $zero, $f4
/* 99316C 80240A3C 46000021 */  cvt.d.s   $f0, $f0
/* 993170 80240A40 E7A60028 */  swc1      $f6, 0x28($sp)
/* 993174 80240A44 46240000 */  add.d     $f0, $f0, $f4
/* 993178 80240A48 462010A0 */  cvt.s.d   $f2, $f2
/* 99317C 80240A4C E7A2002C */  swc1      $f2, 0x2c($sp)
/* 993180 80240A50 46200020 */  cvt.s.d   $f0, $f0
/* 993184 80240A54 E7A00038 */  swc1      $f0, 0x38($sp)
/* 993188 80240A58 AFB20010 */  sw        $s2, 0x10($sp)
/* 99318C 80240A5C 8E640080 */  lw        $a0, 0x80($s3)
/* 993190 80240A60 0C0372DF */  jal       npc_raycast_down_sides
/* 993194 80240A64 0220382D */   daddu    $a3, $s1, $zero
/* 993198 80240A68 1040003D */  beqz      $v0, .L80240B60
/* 99319C 80240A6C 00000000 */   nop
/* 9931A0 80240A70 C660001C */  lwc1      $f0, 0x1c($s3)
/* 9931A4 80240A74 C7A20038 */  lwc1      $f2, 0x38($sp)
/* 9931A8 80240A78 46000005 */  abs.s     $f0, $f0
/* 9931AC 80240A7C 46000021 */  cvt.d.s   $f0, $f0
/* 9931B0 80240A80 46340000 */  add.d     $f0, $f0, $f20
/* 9931B4 80240A84 460010A1 */  cvt.d.s   $f2, $f2
/* 9931B8 80240A88 4620103E */  c.le.d    $f2, $f0
/* 9931BC 80240A8C 00000000 */  nop
/* 9931C0 80240A90 45000033 */  bc1f      .L80240B60
/* 9931C4 80240A94 2403F7FF */   addiu    $v1, $zero, -0x801
/* 9931C8 80240A98 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* 9931CC 80240A9C 8E620000 */  lw        $v0, ($s3)
/* 9931D0 80240AA0 AE60001C */  sw        $zero, 0x1c($s3)
/* 9931D4 80240AA4 00431024 */  and       $v0, $v0, $v1
/* 9931D8 80240AA8 E660003C */  swc1      $f0, 0x3c($s3)
/* 9931DC 80240AAC AE620000 */  sw        $v0, ($s3)
/* 9931E0 80240AB0 AFA00010 */  sw        $zero, 0x10($sp)
/* 9931E4 80240AB4 AFA00014 */  sw        $zero, 0x14($sp)
/* 9931E8 80240AB8 8E650038 */  lw        $a1, 0x38($s3)
/* 9931EC 80240ABC 8E66003C */  lw        $a2, 0x3c($s3)
/* 9931F0 80240AC0 8E670040 */  lw        $a3, 0x40($s3)
/* 9931F4 80240AC4 0C01BECC */  jal       fx_walk
/* 9931F8 80240AC8 24040002 */   addiu    $a0, $zero, 2
/* 9931FC 80240ACC 02E0202D */  daddu     $a0, $s7, $zero
/* 993200 80240AD0 2402000C */  addiu     $v0, $zero, 0xc
/* 993204 80240AD4 AE820070 */  sw        $v0, 0x70($s4)
/* 993208 80240AD8 24020001 */  addiu     $v0, $zero, 1
/* 99320C 80240ADC AFA20010 */  sw        $v0, 0x10($sp)
/* 993210 80240AE0 8EC60024 */  lw        $a2, 0x24($s6)
/* 993214 80240AE4 8EC70028 */  lw        $a3, 0x28($s6)
/* 993218 80240AE8 0C01242D */  jal       func_800490B4
/* 99321C 80240AEC 02A0282D */   daddu    $a1, $s5, $zero
/* 993220 80240AF0 14400022 */  bnez      $v0, .L80240B7C
/* 993224 80240AF4 24040002 */   addiu    $a0, $zero, 2
/* 993228 80240AF8 0260282D */  daddu     $a1, $s3, $zero
/* 99322C 80240AFC 0000302D */  daddu     $a2, $zero, $zero
/* 993230 80240B00 866300A8 */  lh        $v1, 0xa8($s3)
/* 993234 80240B04 3C013F80 */  lui       $at, 0x3f80
/* 993238 80240B08 44810000 */  mtc1      $at, $f0
/* 99323C 80240B0C 3C014000 */  lui       $at, 0x4000
/* 993240 80240B10 44811000 */  mtc1      $at, $f2
/* 993244 80240B14 3C01C1A0 */  lui       $at, 0xc1a0
/* 993248 80240B18 44812000 */  mtc1      $at, $f4
/* 99324C 80240B1C 2402000F */  addiu     $v0, $zero, 0xf
/* 993250 80240B20 AFA2001C */  sw        $v0, 0x1c($sp)
/* 993254 80240B24 44834000 */  mtc1      $v1, $f8
/* 993258 80240B28 00000000 */  nop
/* 99325C 80240B2C 46804220 */  cvt.s.w   $f8, $f8
/* 993260 80240B30 44074000 */  mfc1      $a3, $f8
/* 993264 80240B34 27A2003C */  addiu     $v0, $sp, 0x3c
/* 993268 80240B38 AFA20020 */  sw        $v0, 0x20($sp)
/* 99326C 80240B3C E7A00010 */  swc1      $f0, 0x10($sp)
/* 993270 80240B40 E7A20014 */  swc1      $f2, 0x14($sp)
/* 993274 80240B44 0C01BFA4 */  jal       fx_emote
/* 993278 80240B48 E7A40018 */   swc1     $f4, 0x18($sp)
/* 99327C 80240B4C 24020019 */  addiu     $v0, $zero, 0x19
/* 993280 80240B50 A662008E */  sh        $v0, 0x8e($s3)
/* 993284 80240B54 2402000E */  addiu     $v0, $zero, 0xe
/* 993288 80240B58 080902DF */  j         .L80240B7C
/* 99328C 80240B5C AE820070 */   sw       $v0, 0x70($s4)
.L80240B60:
/* 993290 80240B60 C664003C */  lwc1      $f4, 0x3c($s3)
/* 993294 80240B64 C660001C */  lwc1      $f0, 0x1c($s3)
/* 993298 80240B68 46002100 */  add.s     $f4, $f4, $f0
/* 99329C 80240B6C C6620014 */  lwc1      $f2, 0x14($s3)
/* 9932A0 80240B70 46020001 */  sub.s     $f0, $f0, $f2
/* 9932A4 80240B74 E664003C */  swc1      $f4, 0x3c($s3)
/* 9932A8 80240B78 E660001C */  swc1      $f0, 0x1c($s3)
.L80240B7C:
/* 9932AC 80240B7C 8FBF0060 */  lw        $ra, 0x60($sp)
/* 9932B0 80240B80 8FB7005C */  lw        $s7, 0x5c($sp)
/* 9932B4 80240B84 8FB60058 */  lw        $s6, 0x58($sp)
/* 9932B8 80240B88 8FB50054 */  lw        $s5, 0x54($sp)
/* 9932BC 80240B8C 8FB40050 */  lw        $s4, 0x50($sp)
/* 9932C0 80240B90 8FB3004C */  lw        $s3, 0x4c($sp)
/* 9932C4 80240B94 8FB20048 */  lw        $s2, 0x48($sp)
/* 9932C8 80240B98 8FB10044 */  lw        $s1, 0x44($sp)
/* 9932CC 80240B9C 8FB00040 */  lw        $s0, 0x40($sp)
/* 9932D0 80240BA0 D7B40068 */  ldc1      $f20, 0x68($sp)
/* 9932D4 80240BA4 03E00008 */  jr        $ra
/* 9932D8 80240BA8 27BD0070 */   addiu    $sp, $sp, 0x70
