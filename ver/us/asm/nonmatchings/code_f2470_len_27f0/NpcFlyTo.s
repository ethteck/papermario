.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel D_802DA1E0
.double 180.0, 0.0

.section .text

glabel NpcFlyTo
/* F30AC 802CE6FC 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* F30B0 802CE700 AFB20020 */  sw        $s2, 0x20($sp)
/* F30B4 802CE704 0080902D */  daddu     $s2, $a0, $zero
/* F30B8 802CE708 AFB30024 */  sw        $s3, 0x24($sp)
/* F30BC 802CE70C 26530090 */  addiu     $s3, $s2, 0x90
/* F30C0 802CE710 AFB40028 */  sw        $s4, 0x28($sp)
/* F30C4 802CE714 26540094 */  addiu     $s4, $s2, 0x94
/* F30C8 802CE718 AFB5002C */  sw        $s5, 0x2c($sp)
/* F30CC 802CE71C AFBF0030 */  sw        $ra, 0x30($sp)
/* F30D0 802CE720 AFB1001C */  sw        $s1, 0x1c($sp)
/* F30D4 802CE724 AFB00018 */  sw        $s0, 0x18($sp)
/* F30D8 802CE728 F7B40038 */  sdc1      $f20, 0x38($sp)
/* F30DC 802CE72C 8E50000C */  lw        $s0, 0xc($s2)
/* F30E0 802CE730 10A0004A */  beqz      $a1, .L802CE85C
/* F30E4 802CE734 26550098 */   addiu    $s5, $s2, 0x98
/* F30E8 802CE738 8E050000 */  lw        $a1, ($s0)
/* F30EC 802CE73C 0C0B1EAF */  jal       get_variable
/* F30F0 802CE740 26100004 */   addiu    $s0, $s0, 4
/* F30F4 802CE744 0240202D */  daddu     $a0, $s2, $zero
/* F30F8 802CE748 0C0B36B0 */  jal       resolve_npc
/* F30FC 802CE74C 0040282D */   daddu    $a1, $v0, $zero
/* F3100 802CE750 0040882D */  daddu     $s1, $v0, $zero
/* F3104 802CE754 56200003 */  bnel      $s1, $zero, .L802CE764
/* F3108 802CE758 AE510074 */   sw       $s1, 0x74($s2)
/* F310C 802CE75C 080B3A7A */  j         .L802CE9E8
/* F3110 802CE760 24020002 */   addiu    $v0, $zero, 2
.L802CE764:
/* F3114 802CE764 8E050000 */  lw        $a1, ($s0)
/* F3118 802CE768 26100004 */  addiu     $s0, $s0, 4
/* F311C 802CE76C 0C0B210B */  jal       get_float_variable
/* F3120 802CE770 0240202D */   daddu    $a0, $s2, $zero
/* F3124 802CE774 E6200060 */  swc1      $f0, 0x60($s1)
/* F3128 802CE778 8E050000 */  lw        $a1, ($s0)
/* F312C 802CE77C 26100004 */  addiu     $s0, $s0, 4
/* F3130 802CE780 0C0B210B */  jal       get_float_variable
/* F3134 802CE784 0240202D */   daddu    $a0, $s2, $zero
/* F3138 802CE788 E6200064 */  swc1      $f0, 0x64($s1)
/* F313C 802CE78C 8E050000 */  lw        $a1, ($s0)
/* F3140 802CE790 26100004 */  addiu     $s0, $s0, 4
/* F3144 802CE794 0C0B210B */  jal       get_float_variable
/* F3148 802CE798 0240202D */   daddu    $a0, $s2, $zero
/* F314C 802CE79C E6200068 */  swc1      $f0, 0x68($s1)
/* F3150 802CE7A0 8E050000 */  lw        $a1, ($s0)
/* F3154 802CE7A4 26100004 */  addiu     $s0, $s0, 4
/* F3158 802CE7A8 0C0B1EAF */  jal       get_variable
/* F315C 802CE7AC 0240202D */   daddu    $a0, $s2, $zero
/* F3160 802CE7B0 AE42009C */  sw        $v0, 0x9c($s2)
/* F3164 802CE7B4 8E050000 */  lw        $a1, ($s0)
/* F3168 802CE7B8 26100004 */  addiu     $s0, $s0, 4
/* F316C 802CE7BC 0C0B1EAF */  jal       get_variable
/* F3170 802CE7C0 0240202D */   daddu    $a0, $s2, $zero
/* F3174 802CE7C4 AE420078 */  sw        $v0, 0x78($s2)
/* F3178 802CE7C8 8E050000 */  lw        $a1, ($s0)
/* F317C 802CE7CC 0C0B1EAF */  jal       get_variable
/* F3180 802CE7D0 0240202D */   daddu    $a0, $s2, $zero
/* F3184 802CE7D4 AE42007C */  sw        $v0, 0x7c($s2)
/* F3188 802CE7D8 C6200038 */  lwc1      $f0, 0x38($s1)
/* F318C 802CE7DC A620008E */  sh        $zero, 0x8e($s1)
/* F3190 802CE7E0 E6400090 */  swc1      $f0, 0x90($s2)
/* F3194 802CE7E4 C620003C */  lwc1      $f0, 0x3c($s1)
/* F3198 802CE7E8 E6400094 */  swc1      $f0, 0x94($s2)
/* F319C 802CE7EC C6200040 */  lwc1      $f0, 0x40($s1)
/* F31A0 802CE7F0 E6400098 */  swc1      $f0, 0x98($s2)
/* F31A4 802CE7F4 C62C0038 */  lwc1      $f12, 0x38($s1)
/* F31A8 802CE7F8 C62E0040 */  lwc1      $f14, 0x40($s1)
/* F31AC 802CE7FC 8E260060 */  lw        $a2, 0x60($s1)
/* F31B0 802CE800 0C00A720 */  jal       atan2
/* F31B4 802CE804 8E270068 */   lw       $a3, 0x68($s1)
/* F31B8 802CE808 C62C0038 */  lwc1      $f12, 0x38($s1)
/* F31BC 802CE80C C62E0040 */  lwc1      $f14, 0x40($s1)
/* F31C0 802CE810 8E260060 */  lw        $a2, 0x60($s1)
/* F31C4 802CE814 8E270068 */  lw        $a3, 0x68($s1)
/* F31C8 802CE818 0C00A7B5 */  jal       dist2D
/* F31CC 802CE81C E620000C */   swc1     $f0, 0xc($s1)
/* F31D0 802CE820 46000086 */  mov.s     $f2, $f0
/* F31D4 802CE824 E6220010 */  swc1      $f2, 0x10($s1)
/* F31D8 802CE828 8E42009C */  lw        $v0, 0x9c($s2)
/* F31DC 802CE82C 14400006 */  bnez      $v0, .L802CE848
/* F31E0 802CE830 00000000 */   nop
/* F31E4 802CE834 C6200018 */  lwc1      $f0, 0x18($s1)
/* F31E8 802CE838 46001003 */  div.s     $f0, $f2, $f0
/* F31EC 802CE83C 4600018D */  trunc.w.s $f6, $f0
/* F31F0 802CE840 080B3A17 */  j         .L802CE85C
/* F31F4 802CE844 E646009C */   swc1     $f6, 0x9c($s2)
.L802CE848:
/* F31F8 802CE848 44820000 */  mtc1      $v0, $f0
/* F31FC 802CE84C 00000000 */  nop
/* F3200 802CE850 46800020 */  cvt.s.w   $f0, $f0
/* F3204 802CE854 46001003 */  div.s     $f0, $f2, $f0
/* F3208 802CE858 E6200018 */  swc1      $f0, 0x18($s1)
.L802CE85C:
/* F320C 802CE85C 8E510074 */  lw        $s1, 0x74($s2)
/* F3210 802CE860 8E42009C */  lw        $v0, 0x9c($s2)
/* F3214 802CE864 8627008E */  lh        $a3, 0x8e($s1)
/* F3218 802CE868 AFA20010 */  sw        $v0, 0x10($sp)
/* F321C 802CE86C 8E44007C */  lw        $a0, 0x7c($s2)
/* F3220 802CE870 8E650000 */  lw        $a1, ($s3)
/* F3224 802CE874 0C00A8ED */  jal       update_lerp
/* F3228 802CE878 8E260060 */   lw       $a2, 0x60($s1)
/* F322C 802CE87C E6200038 */  swc1      $f0, 0x38($s1)
/* F3230 802CE880 8E42009C */  lw        $v0, 0x9c($s2)
/* F3234 802CE884 8627008E */  lh        $a3, 0x8e($s1)
/* F3238 802CE888 AFA20010 */  sw        $v0, 0x10($sp)
/* F323C 802CE88C 8E44007C */  lw        $a0, 0x7c($s2)
/* F3240 802CE890 8E850000 */  lw        $a1, ($s4)
/* F3244 802CE894 0C00A8ED */  jal       update_lerp
/* F3248 802CE898 8E260064 */   lw       $a2, 0x64($s1)
/* F324C 802CE89C E620003C */  swc1      $f0, 0x3c($s1)
/* F3250 802CE8A0 8E42009C */  lw        $v0, 0x9c($s2)
/* F3254 802CE8A4 8627008E */  lh        $a3, 0x8e($s1)
/* F3258 802CE8A8 AFA20010 */  sw        $v0, 0x10($sp)
/* F325C 802CE8AC 8E44007C */  lw        $a0, 0x7c($s2)
/* F3260 802CE8B0 8EA50000 */  lw        $a1, ($s5)
/* F3264 802CE8B4 0C00A8ED */  jal       update_lerp
/* F3268 802CE8B8 8E260068 */   lw       $a2, 0x68($s1)
/* F326C 802CE8BC 9622008E */  lhu       $v0, 0x8e($s1)
/* F3270 802CE8C0 E6200040 */  swc1      $f0, 0x40($s1)
/* F3274 802CE8C4 24420001 */  addiu     $v0, $v0, 1
/* F3278 802CE8C8 A622008E */  sh        $v0, 0x8e($s1)
/* F327C 802CE8CC 00021400 */  sll       $v0, $v0, 0x10
/* F3280 802CE8D0 8E43009C */  lw        $v1, 0x9c($s2)
/* F3284 802CE8D4 00021403 */  sra       $v0, $v0, 0x10
/* F3288 802CE8D8 0043102A */  slt       $v0, $v0, $v1
/* F328C 802CE8DC 14400008 */  bnez      $v0, .L802CE900
/* F3290 802CE8E0 24020002 */   addiu    $v0, $zero, 2
/* F3294 802CE8E4 C6200060 */  lwc1      $f0, 0x60($s1)
/* F3298 802CE8E8 C6220064 */  lwc1      $f2, 0x64($s1)
/* F329C 802CE8EC C6240068 */  lwc1      $f4, 0x68($s1)
/* F32A0 802CE8F0 E6200038 */  swc1      $f0, 0x38($s1)
/* F32A4 802CE8F4 E622003C */  swc1      $f2, 0x3c($s1)
/* F32A8 802CE8F8 080B3A7A */  j         .L802CE9E8
/* F32AC 802CE8FC E6240040 */   swc1     $f4, 0x40($s1)
.L802CE900:
/* F32B0 802CE900 C62C0038 */  lwc1      $f12, 0x38($s1)
/* F32B4 802CE904 C62E0040 */  lwc1      $f14, 0x40($s1)
/* F32B8 802CE908 8E260060 */  lw        $a2, 0x60($s1)
/* F32BC 802CE90C 0C00A7B5 */  jal       dist2D
/* F32C0 802CE910 8E270068 */   lw       $a3, 0x68($s1)
/* F32C4 802CE914 4480A000 */  mtc1      $zero, $f20
/* F32C8 802CE918 00000000 */  nop
/* F32CC 802CE91C 46140032 */  c.eq.s    $f0, $f20
/* F32D0 802CE920 00000000 */  nop
/* F32D4 802CE924 45000003 */  bc1f      .L802CE934
/* F32D8 802CE928 46000086 */   mov.s    $f2, $f0
/* F32DC 802CE92C 3C013F80 */  lui       $at, 0x3f80
/* F32E0 802CE930 44811000 */  mtc1      $at, $f2
.L802CE934:
/* F32E4 802CE934 C6200010 */  lwc1      $f0, 0x10($s1)
/* F32E8 802CE938 46140032 */  c.eq.s    $f0, $f20
/* F32EC 802CE93C 00000000 */  nop
/* F32F0 802CE940 45000006 */  bc1f      .L802CE95C
/* F32F4 802CE944 00000000 */   nop
/* F32F8 802CE948 3C013F80 */  lui       $at, 0x3f80
/* F32FC 802CE94C 44810000 */  mtc1      $at, $f0
/* F3300 802CE950 00000000 */  nop
/* F3304 802CE954 E6200010 */  swc1      $f0, 0x10($s1)
/* F3308 802CE958 C6200010 */  lwc1      $f0, 0x10($s1)
.L802CE95C:
/* F330C 802CE95C 3C013FF0 */  lui       $at, 0x3ff0
/* F3310 802CE960 44816800 */  mtc1      $at, $f13
/* F3314 802CE964 44806000 */  mtc1      $zero, $f12
/* F3318 802CE968 46001003 */  div.s     $f0, $f2, $f0
/* F331C 802CE96C 46000021 */  cvt.d.s   $f0, $f0
/* F3320 802CE970 46206301 */  sub.d     $f12, $f12, $f0
/* F3324 802CE974 3C01802E */  lui       $at, %hi(D_802DA1E0)
/* F3328 802CE978 D420A1E0 */  ldc1      $f0, %lo(D_802DA1E0)($at)
/* F332C 802CE97C 46206302 */  mul.d     $f12, $f12, $f0
/* F3330 802CE980 00000000 */  nop
/* F3334 802CE984 0C00A8BB */  jal       sin_deg
/* F3338 802CE988 46206320 */   cvt.s.d  $f12, $f12
/* F333C 802CE98C 8E440078 */  lw        $a0, 0x78($s2)
/* F3340 802CE990 14800002 */  bnez      $a0, .L802CE99C
/* F3344 802CE994 46000106 */   mov.s    $f4, $f0
/* F3348 802CE998 4600A106 */  mov.s     $f4, $f20
.L802CE99C:
/* F334C 802CE99C 04810007 */  bgez      $a0, .L802CE9BC
/* F3350 802CE9A0 00041023 */   negu     $v0, $a0
/* F3354 802CE9A4 44821000 */  mtc1      $v0, $f2
/* F3358 802CE9A8 00000000 */  nop
/* F335C 802CE9AC 468010A0 */  cvt.s.w   $f2, $f2
/* F3360 802CE9B0 46002007 */  neg.s     $f0, $f4
/* F3364 802CE9B4 46020102 */  mul.s     $f4, $f0, $f2
/* F3368 802CE9B8 00000000 */  nop
.L802CE9BC:
/* F336C 802CE9BC 18800006 */  blez      $a0, .L802CE9D8
/* F3370 802CE9C0 00000000 */   nop
/* F3374 802CE9C4 44840000 */  mtc1      $a0, $f0
/* F3378 802CE9C8 00000000 */  nop
/* F337C 802CE9CC 46800020 */  cvt.s.w   $f0, $f0
/* F3380 802CE9D0 46002102 */  mul.s     $f4, $f4, $f0
/* F3384 802CE9D4 00000000 */  nop
.L802CE9D8:
/* F3388 802CE9D8 C620003C */  lwc1      $f0, 0x3c($s1)
/* F338C 802CE9DC 46040000 */  add.s     $f0, $f0, $f4
/* F3390 802CE9E0 0000102D */  daddu     $v0, $zero, $zero
/* F3394 802CE9E4 E620003C */  swc1      $f0, 0x3c($s1)
.L802CE9E8:
/* F3398 802CE9E8 8FBF0030 */  lw        $ra, 0x30($sp)
/* F339C 802CE9EC 8FB5002C */  lw        $s5, 0x2c($sp)
/* F33A0 802CE9F0 8FB40028 */  lw        $s4, 0x28($sp)
/* F33A4 802CE9F4 8FB30024 */  lw        $s3, 0x24($sp)
/* F33A8 802CE9F8 8FB20020 */  lw        $s2, 0x20($sp)
/* F33AC 802CE9FC 8FB1001C */  lw        $s1, 0x1c($sp)
/* F33B0 802CEA00 8FB00018 */  lw        $s0, 0x18($sp)
/* F33B4 802CEA04 D7B40038 */  ldc1      $f20, 0x38($sp)
/* F33B8 802CEA08 03E00008 */  jr        $ra
/* F33BC 802CEA0C 27BD0040 */   addiu    $sp, $sp, 0x40
