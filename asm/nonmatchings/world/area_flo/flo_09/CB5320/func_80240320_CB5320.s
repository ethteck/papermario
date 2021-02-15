.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240320_CB5320
/* CB5320 80240320 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* CB5324 80240324 AFB3002C */  sw        $s3, 0x2c($sp)
/* CB5328 80240328 0080982D */  daddu     $s3, $a0, $zero
/* CB532C 8024032C AFBF0030 */  sw        $ra, 0x30($sp)
/* CB5330 80240330 AFB20028 */  sw        $s2, 0x28($sp)
/* CB5334 80240334 AFB10024 */  sw        $s1, 0x24($sp)
/* CB5338 80240338 AFB00020 */  sw        $s0, 0x20($sp)
/* CB533C 8024033C 8E710148 */  lw        $s1, 0x148($s3)
/* CB5340 80240340 86240008 */  lh        $a0, 8($s1)
/* CB5344 80240344 0C00EABB */  jal       get_npc_unsafe
/* CB5348 80240348 00A0902D */   daddu    $s2, $a1, $zero
/* CB534C 8024034C 8E440004 */  lw        $a0, 4($s2)
/* CB5350 80240350 0040802D */  daddu     $s0, $v0, $zero
/* CB5354 80240354 00041FC2 */  srl       $v1, $a0, 0x1f
/* CB5358 80240358 00832021 */  addu      $a0, $a0, $v1
/* CB535C 8024035C 00042043 */  sra       $a0, $a0, 1
/* CB5360 80240360 0C00A67F */  jal       rand_int
/* CB5364 80240364 24840001 */   addiu    $a0, $a0, 1
/* CB5368 80240368 8E430004 */  lw        $v1, 4($s2)
/* CB536C 8024036C 000327C2 */  srl       $a0, $v1, 0x1f
/* CB5370 80240370 00641821 */  addu      $v1, $v1, $a0
/* CB5374 80240374 00031843 */  sra       $v1, $v1, 1
/* CB5378 80240378 00621821 */  addu      $v1, $v1, $v0
/* CB537C 8024037C A603008E */  sh        $v1, 0x8e($s0)
/* CB5380 80240380 8E2300D0 */  lw        $v1, 0xd0($s1)
/* CB5384 80240384 C6000040 */  lwc1      $f0, 0x40($s0)
/* CB5388 80240388 C4640000 */  lwc1      $f4, ($v1)
/* CB538C 8024038C 46802120 */  cvt.s.w   $f4, $f4
/* CB5390 80240390 C4620008 */  lwc1      $f2, 8($v1)
/* CB5394 80240394 468010A0 */  cvt.s.w   $f2, $f2
/* CB5398 80240398 E7A00010 */  swc1      $f0, 0x10($sp)
/* CB539C 8024039C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* CB53A0 802403A0 44061000 */  mfc1      $a2, $f2
/* CB53A4 802403A4 C440000C */  lwc1      $f0, 0xc($v0)
/* CB53A8 802403A8 46800020 */  cvt.s.w   $f0, $f0
/* CB53AC 802403AC E7A00014 */  swc1      $f0, 0x14($sp)
/* CB53B0 802403B0 8E2200D0 */  lw        $v0, 0xd0($s1)
/* CB53B4 802403B4 44052000 */  mfc1      $a1, $f4
/* CB53B8 802403B8 C4400010 */  lwc1      $f0, 0x10($v0)
/* CB53BC 802403BC 46800020 */  cvt.s.w   $f0, $f0
/* CB53C0 802403C0 E7A00018 */  swc1      $f0, 0x18($sp)
/* CB53C4 802403C4 8C640018 */  lw        $a0, 0x18($v1)
/* CB53C8 802403C8 0C0123F5 */  jal       is_point_within_region
/* CB53CC 802403CC 8E070038 */   lw       $a3, 0x38($s0)
/* CB53D0 802403D0 1040000E */  beqz      $v0, .L8024040C
/* CB53D4 802403D4 00000000 */   nop
/* CB53D8 802403D8 8E2200D0 */  lw        $v0, 0xd0($s1)
/* CB53DC 802403DC C60C0038 */  lwc1      $f12, 0x38($s0)
/* CB53E0 802403E0 C60E0040 */  lwc1      $f14, 0x40($s0)
/* CB53E4 802403E4 C4460000 */  lwc1      $f6, ($v0)
/* CB53E8 802403E8 468031A0 */  cvt.s.w   $f6, $f6
/* CB53EC 802403EC 44063000 */  mfc1      $a2, $f6
/* CB53F0 802403F0 C4460008 */  lwc1      $f6, 8($v0)
/* CB53F4 802403F4 468031A0 */  cvt.s.w   $f6, $f6
/* CB53F8 802403F8 44073000 */  mfc1      $a3, $f6
/* CB53FC 802403FC 0C00A720 */  jal       atan2
/* CB5400 80240400 00000000 */   nop
/* CB5404 80240404 0809010F */  j         .L8024043C
/* CB5408 80240408 E600000C */   swc1     $f0, 0xc($s0)
.L8024040C:
/* CB540C 8024040C 0C00A67F */  jal       rand_int
/* CB5410 80240410 2404003C */   addiu    $a0, $zero, 0x3c
/* CB5414 80240414 C60C000C */  lwc1      $f12, 0xc($s0)
/* CB5418 80240418 44820000 */  mtc1      $v0, $f0
/* CB541C 8024041C 00000000 */  nop
/* CB5420 80240420 46800020 */  cvt.s.w   $f0, $f0
/* CB5424 80240424 46006300 */  add.s     $f12, $f12, $f0
/* CB5428 80240428 3C0141F0 */  lui       $at, 0x41f0
/* CB542C 8024042C 44810000 */  mtc1      $at, $f0
/* CB5430 80240430 0C00A6C9 */  jal       clamp_angle
/* CB5434 80240434 46006301 */   sub.s    $f12, $f12, $f0
/* CB5438 80240438 E600000C */  swc1      $f0, 0xc($s0)
.L8024043C:
/* CB543C 8024043C 8E2200CC */  lw        $v0, 0xcc($s1)
/* CB5440 80240440 8C420004 */  lw        $v0, 4($v0)
/* CB5444 80240444 AE020028 */  sw        $v0, 0x28($s0)
/* CB5448 80240448 AE600074 */  sw        $zero, 0x74($s3)
/* CB544C 8024044C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* CB5450 80240450 8C420014 */  lw        $v0, 0x14($v0)
/* CB5454 80240454 04410004 */  bgez      $v0, .L80240468
/* CB5458 80240458 00000000 */   nop
/* CB545C 8024045C C6400000 */  lwc1      $f0, ($s2)
/* CB5460 80240460 08090122 */  j         .L80240488
/* CB5464 80240464 E6000018 */   swc1     $f0, 0x18($s0)
.L80240468:
/* CB5468 80240468 3C018024 */  lui       $at, %hi(D_802441A0_CB91A0)
/* CB546C 8024046C D42241A0 */  ldc1      $f2, %lo(D_802441A0_CB91A0)($at)
/* CB5470 80240470 44820000 */  mtc1      $v0, $f0
/* CB5474 80240474 00000000 */  nop
/* CB5478 80240478 46800021 */  cvt.d.w   $f0, $f0
/* CB547C 8024047C 46220003 */  div.d     $f0, $f0, $f2
/* CB5480 80240480 46200020 */  cvt.s.d   $f0, $f0
/* CB5484 80240484 E6000018 */  swc1      $f0, 0x18($s0)
.L80240488:
/* CB5488 80240488 C600003C */  lwc1      $f0, 0x3c($s0)
/* CB548C 8024048C 3C014059 */  lui       $at, 0x4059
/* CB5490 80240490 44811800 */  mtc1      $at, $f3
/* CB5494 80240494 44801000 */  mtc1      $zero, $f2
/* CB5498 80240498 46000021 */  cvt.d.s   $f0, $f0
/* CB549C 8024049C 46220002 */  mul.d     $f0, $f0, $f2
/* CB54A0 802404A0 00000000 */  nop
/* CB54A4 802404A4 24020001 */  addiu     $v0, $zero, 1
/* CB54A8 802404A8 4620018D */  trunc.w.d $f6, $f0
/* CB54AC 802404AC E626007C */  swc1      $f6, 0x7c($s1)
/* CB54B0 802404B0 AE620070 */  sw        $v0, 0x70($s3)
/* CB54B4 802404B4 8FBF0030 */  lw        $ra, 0x30($sp)
/* CB54B8 802404B8 8FB3002C */  lw        $s3, 0x2c($sp)
/* CB54BC 802404BC 8FB20028 */  lw        $s2, 0x28($sp)
/* CB54C0 802404C0 8FB10024 */  lw        $s1, 0x24($sp)
/* CB54C4 802404C4 8FB00020 */  lw        $s0, 0x20($sp)
/* CB54C8 802404C8 03E00008 */  jr        $ra
/* CB54CC 802404CC 27BD0038 */   addiu    $sp, $sp, 0x38
