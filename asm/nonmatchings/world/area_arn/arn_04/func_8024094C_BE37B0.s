.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024094C_BE40FC
/* BE40FC 8024094C 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* BE4100 80240950 AFB3003C */  sw        $s3, 0x3c($sp)
/* BE4104 80240954 0080982D */  daddu     $s3, $a0, $zero
/* BE4108 80240958 AFBF0040 */  sw        $ra, 0x40($sp)
/* BE410C 8024095C AFB20038 */  sw        $s2, 0x38($sp)
/* BE4110 80240960 AFB10034 */  sw        $s1, 0x34($sp)
/* BE4114 80240964 AFB00030 */  sw        $s0, 0x30($sp)
/* BE4118 80240968 8E720148 */  lw        $s2, 0x148($s3)
/* BE411C 8024096C 00A0882D */  daddu     $s1, $a1, $zero
/* BE4120 80240970 86440008 */  lh        $a0, 8($s2)
/* BE4124 80240974 0C00EABB */  jal       get_npc_unsafe
/* BE4128 80240978 00C0802D */   daddu    $s0, $a2, $zero
/* BE412C 8024097C 0200202D */  daddu     $a0, $s0, $zero
/* BE4130 80240980 0240282D */  daddu     $a1, $s2, $zero
/* BE4134 80240984 24030001 */  addiu     $v1, $zero, 1
/* BE4138 80240988 AFA30010 */  sw        $v1, 0x10($sp)
/* BE413C 8024098C 8E260024 */  lw        $a2, 0x24($s1)
/* BE4140 80240990 8E270028 */  lw        $a3, 0x28($s1)
/* BE4144 80240994 0C01242D */  jal       func_800490B4
/* BE4148 80240998 0040802D */   daddu    $s0, $v0, $zero
/* BE414C 8024099C 1440001E */  bnez      $v0, .L80240A18
/* BE4150 802409A0 0200202D */   daddu    $a0, $s0, $zero
/* BE4154 802409A4 24040002 */  addiu     $a0, $zero, 2
/* BE4158 802409A8 0200282D */  daddu     $a1, $s0, $zero
/* BE415C 802409AC 0000302D */  daddu     $a2, $zero, $zero
/* BE4160 802409B0 860300A8 */  lh        $v1, 0xa8($s0)
/* BE4164 802409B4 3C013F80 */  lui       $at, 0x3f80
/* BE4168 802409B8 44810000 */  mtc1      $at, $f0
/* BE416C 802409BC 3C014000 */  lui       $at, 0x4000
/* BE4170 802409C0 44811000 */  mtc1      $at, $f2
/* BE4174 802409C4 3C01C1A0 */  lui       $at, 0xc1a0
/* BE4178 802409C8 44812000 */  mtc1      $at, $f4
/* BE417C 802409CC 2402000F */  addiu     $v0, $zero, 0xf
/* BE4180 802409D0 AFA2001C */  sw        $v0, 0x1c($sp)
/* BE4184 802409D4 44833000 */  mtc1      $v1, $f6
/* BE4188 802409D8 00000000 */  nop       
/* BE418C 802409DC 468031A0 */  cvt.s.w   $f6, $f6
/* BE4190 802409E0 44073000 */  mfc1      $a3, $f6
/* BE4194 802409E4 27A20028 */  addiu     $v0, $sp, 0x28
/* BE4198 802409E8 AFA20020 */  sw        $v0, 0x20($sp)
/* BE419C 802409EC E7A00010 */  swc1      $f0, 0x10($sp)
/* BE41A0 802409F0 E7A20014 */  swc1      $f2, 0x14($sp)
/* BE41A4 802409F4 0C01BFA4 */  jal       fx_emote
/* BE41A8 802409F8 E7A40018 */   swc1     $f4, 0x18($sp)
/* BE41AC 802409FC 8E4200CC */  lw        $v0, 0xcc($s2)
/* BE41B0 80240A00 8C430000 */  lw        $v1, ($v0)
/* BE41B4 80240A04 24020019 */  addiu     $v0, $zero, 0x19
/* BE41B8 80240A08 A602008E */  sh        $v0, 0x8e($s0)
/* BE41BC 80240A0C 2402000E */  addiu     $v0, $zero, 0xe
/* BE41C0 80240A10 08090293 */  j         .L80240A4C
/* BE41C4 80240A14 AE030028 */   sw       $v1, 0x28($s0)
.L80240A18:
/* BE41C8 80240A18 0C00F598 */  jal       func_8003D660
/* BE41CC 80240A1C 24050001 */   addiu    $a1, $zero, 1
/* BE41D0 80240A20 8E050018 */  lw        $a1, 0x18($s0)
/* BE41D4 80240A24 8E06000C */  lw        $a2, 0xc($s0)
/* BE41D8 80240A28 0C00EA95 */  jal       npc_move_heading
/* BE41DC 80240A2C 0200202D */   daddu    $a0, $s0, $zero
/* BE41E0 80240A30 8602008E */  lh        $v0, 0x8e($s0)
/* BE41E4 80240A34 9603008E */  lhu       $v1, 0x8e($s0)
/* BE41E8 80240A38 18400003 */  blez      $v0, .L80240A48
/* BE41EC 80240A3C 2462FFFF */   addiu    $v0, $v1, -1
/* BE41F0 80240A40 08090294 */  j         .L80240A50
/* BE41F4 80240A44 A602008E */   sh       $v0, 0x8e($s0)
.L80240A48:
/* BE41F8 80240A48 2402000C */  addiu     $v0, $zero, 0xc
.L80240A4C:
/* BE41FC 80240A4C AE620070 */  sw        $v0, 0x70($s3)
.L80240A50:
/* BE4200 80240A50 8FBF0040 */  lw        $ra, 0x40($sp)
/* BE4204 80240A54 8FB3003C */  lw        $s3, 0x3c($sp)
/* BE4208 80240A58 8FB20038 */  lw        $s2, 0x38($sp)
/* BE420C 80240A5C 8FB10034 */  lw        $s1, 0x34($sp)
/* BE4210 80240A60 8FB00030 */  lw        $s0, 0x30($sp)
/* BE4214 80240A64 03E00008 */  jr        $ra
/* BE4218 80240A68 27BD0048 */   addiu    $sp, $sp, 0x48
