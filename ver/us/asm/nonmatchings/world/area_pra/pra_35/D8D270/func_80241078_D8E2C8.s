.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel pra_35_UnkFunc13
/* D8E2C8 80241078 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* D8E2CC 8024107C AFB20038 */  sw        $s2, 0x38($sp)
/* D8E2D0 80241080 0080902D */  daddu     $s2, $a0, $zero
/* D8E2D4 80241084 AFBF0044 */  sw        $ra, 0x44($sp)
/* D8E2D8 80241088 AFB40040 */  sw        $s4, 0x40($sp)
/* D8E2DC 8024108C AFB3003C */  sw        $s3, 0x3c($sp)
/* D8E2E0 80241090 AFB10034 */  sw        $s1, 0x34($sp)
/* D8E2E4 80241094 AFB00030 */  sw        $s0, 0x30($sp)
/* D8E2E8 80241098 F7B60050 */  sdc1      $f22, 0x50($sp)
/* D8E2EC 8024109C F7B40048 */  sdc1      $f20, 0x48($sp)
/* D8E2F0 802410A0 8E510148 */  lw        $s1, 0x148($s2)
/* D8E2F4 802410A4 00A0982D */  daddu     $s3, $a1, $zero
/* D8E2F8 802410A8 86240008 */  lh        $a0, 8($s1)
/* D8E2FC 802410AC 0C00EABB */  jal       get_npc_unsafe
/* D8E300 802410B0 00C0A02D */   daddu    $s4, $a2, $zero
/* D8E304 802410B4 8E630014 */  lw        $v1, 0x14($s3)
/* D8E308 802410B8 04600030 */  bltz      $v1, .L8024117C
/* D8E30C 802410BC 0040802D */   daddu    $s0, $v0, $zero
/* D8E310 802410C0 8E420074 */  lw        $v0, 0x74($s2)
/* D8E314 802410C4 1C40002C */  bgtz      $v0, .L80241178
/* D8E318 802410C8 2442FFFF */   addiu    $v0, $v0, -1
/* D8E31C 802410CC 0280202D */  daddu     $a0, $s4, $zero
/* D8E320 802410D0 AE430074 */  sw        $v1, 0x74($s2)
/* D8E324 802410D4 AFA00010 */  sw        $zero, 0x10($sp)
/* D8E328 802410D8 8E66000C */  lw        $a2, 0xc($s3)
/* D8E32C 802410DC 8E670010 */  lw        $a3, 0x10($s3)
/* D8E330 802410E0 0C01242D */  jal       func_800490B4
/* D8E334 802410E4 0220282D */   daddu    $a1, $s1, $zero
/* D8E338 802410E8 10400021 */  beqz      $v0, .L80241170
/* D8E33C 802410EC 0000202D */   daddu    $a0, $zero, $zero
/* D8E340 802410F0 0200282D */  daddu     $a1, $s0, $zero
/* D8E344 802410F4 0000302D */  daddu     $a2, $zero, $zero
/* D8E348 802410F8 860300A8 */  lh        $v1, 0xa8($s0)
/* D8E34C 802410FC 3C013F80 */  lui       $at, 0x3f80
/* D8E350 80241100 44810000 */  mtc1      $at, $f0
/* D8E354 80241104 3C014000 */  lui       $at, 0x4000
/* D8E358 80241108 44811000 */  mtc1      $at, $f2
/* D8E35C 8024110C 3C01C1A0 */  lui       $at, 0xc1a0
/* D8E360 80241110 44812000 */  mtc1      $at, $f4
/* D8E364 80241114 2402000F */  addiu     $v0, $zero, 0xf
/* D8E368 80241118 AFA2001C */  sw        $v0, 0x1c($sp)
/* D8E36C 8024111C 44833000 */  mtc1      $v1, $f6
/* D8E370 80241120 00000000 */  nop
/* D8E374 80241124 468031A0 */  cvt.s.w   $f6, $f6
/* D8E378 80241128 44073000 */  mfc1      $a3, $f6
/* D8E37C 8024112C 27A20028 */  addiu     $v0, $sp, 0x28
/* D8E380 80241130 AFA20020 */  sw        $v0, 0x20($sp)
/* D8E384 80241134 E7A00010 */  swc1      $f0, 0x10($sp)
/* D8E388 80241138 E7A20014 */  swc1      $f2, 0x14($sp)
/* D8E38C 8024113C 0C01BFA4 */  jal       fx_emote
/* D8E390 80241140 E7A40018 */   swc1     $f4, 0x18($sp)
/* D8E394 80241144 0200202D */  daddu     $a0, $s0, $zero
/* D8E398 80241148 240502F4 */  addiu     $a1, $zero, 0x2f4
/* D8E39C 8024114C 0C012530 */  jal       func_800494C0
/* D8E3A0 80241150 3C060020 */   lui      $a2, 0x20
/* D8E3A4 80241154 8E220018 */  lw        $v0, 0x18($s1)
/* D8E3A8 80241158 9442002A */  lhu       $v0, 0x2a($v0)
/* D8E3AC 8024115C 30420001 */  andi      $v0, $v0, 1
/* D8E3B0 80241160 14400064 */  bnez      $v0, .L802412F4
/* D8E3B4 80241164 2402000A */   addiu    $v0, $zero, 0xa
/* D8E3B8 80241168 080904BD */  j         .L802412F4
/* D8E3BC 8024116C 2402000C */   addiu    $v0, $zero, 0xc
.L80241170:
/* D8E3C0 80241170 8E420074 */  lw        $v0, 0x74($s2)
/* D8E3C4 80241174 2442FFFF */  addiu     $v0, $v0, -1
.L80241178:
/* D8E3C8 80241178 AE420074 */  sw        $v0, 0x74($s2)
.L8024117C:
/* D8E3CC 8024117C 8602008C */  lh        $v0, 0x8c($s0)
/* D8E3D0 80241180 1440005D */  bnez      $v0, .L802412F8
/* D8E3D4 80241184 00000000 */   nop
/* D8E3D8 80241188 C6000018 */  lwc1      $f0, 0x18($s0)
/* D8E3DC 8024118C 3C014010 */  lui       $at, 0x4010
/* D8E3E0 80241190 44811800 */  mtc1      $at, $f3
/* D8E3E4 80241194 44801000 */  mtc1      $zero, $f2
/* D8E3E8 80241198 46000021 */  cvt.d.s   $f0, $f0
/* D8E3EC 8024119C 4622003C */  c.lt.d    $f0, $f2
/* D8E3F0 802411A0 00000000 */  nop
/* D8E3F4 802411A4 45000003 */  bc1f      .L802411B4
/* D8E3F8 802411A8 0200202D */   daddu    $a0, $s0, $zero
/* D8E3FC 802411AC 0809046E */  j         .L802411B8
/* D8E400 802411B0 0000282D */   daddu    $a1, $zero, $zero
.L802411B4:
/* D8E404 802411B4 24050001 */  addiu     $a1, $zero, 1
.L802411B8:
/* D8E408 802411B8 0C00F598 */  jal       func_8003D660
/* D8E40C 802411BC 00000000 */   nop
/* D8E410 802411C0 C60C0038 */  lwc1      $f12, 0x38($s0)
/* D8E414 802411C4 8E430078 */  lw        $v1, 0x78($s2)
/* D8E418 802411C8 C60E0040 */  lwc1      $f14, 0x40($s0)
/* D8E41C 802411CC 00031040 */  sll       $v0, $v1, 1
/* D8E420 802411D0 00431021 */  addu      $v0, $v0, $v1
/* D8E424 802411D4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D8E428 802411D8 00021080 */  sll       $v0, $v0, 2
/* D8E42C 802411DC 00431021 */  addu      $v0, $v0, $v1
/* D8E430 802411E0 C4560004 */  lwc1      $f22, 4($v0)
/* D8E434 802411E4 4680B5A0 */  cvt.s.w   $f22, $f22
/* D8E438 802411E8 C454000C */  lwc1      $f20, 0xc($v0)
/* D8E43C 802411EC 4680A520 */  cvt.s.w   $f20, $f20
/* D8E440 802411F0 4406B000 */  mfc1      $a2, $f22
/* D8E444 802411F4 4407A000 */  mfc1      $a3, $f20
/* D8E448 802411F8 0C00A720 */  jal       atan2
/* D8E44C 802411FC 00000000 */   nop
/* D8E450 80241200 8E050018 */  lw        $a1, 0x18($s0)
/* D8E454 80241204 44060000 */  mfc1      $a2, $f0
/* D8E458 80241208 0200202D */  daddu     $a0, $s0, $zero
/* D8E45C 8024120C 0C00EA95 */  jal       npc_move_heading
/* D8E460 80241210 AE06000C */   sw       $a2, 0xc($s0)
/* D8E464 80241214 C60C0038 */  lwc1      $f12, 0x38($s0)
/* D8E468 80241218 C60E0040 */  lwc1      $f14, 0x40($s0)
/* D8E46C 8024121C 4406B000 */  mfc1      $a2, $f22
/* D8E470 80241220 4407A000 */  mfc1      $a3, $f20
/* D8E474 80241224 0C00A7B5 */  jal       dist2D
/* D8E478 80241228 00000000 */   nop
/* D8E47C 8024122C C6020018 */  lwc1      $f2, 0x18($s0)
/* D8E480 80241230 4602003E */  c.le.s    $f0, $f2
/* D8E484 80241234 00000000 */  nop
/* D8E488 80241238 4500002F */  bc1f      .L802412F8
/* D8E48C 8024123C 240403E8 */   addiu    $a0, $zero, 0x3e8
/* D8E490 80241240 24020002 */  addiu     $v0, $zero, 2
/* D8E494 80241244 0C00A67F */  jal       rand_int
/* D8E498 80241248 AE420070 */   sw       $v0, 0x70($s2)
/* D8E49C 8024124C 3C035555 */  lui       $v1, 0x5555
/* D8E4A0 80241250 34635556 */  ori       $v1, $v1, 0x5556
/* D8E4A4 80241254 00430018 */  mult      $v0, $v1
/* D8E4A8 80241258 000227C3 */  sra       $a0, $v0, 0x1f
/* D8E4AC 8024125C 00004010 */  mfhi      $t0
/* D8E4B0 80241260 01042023 */  subu      $a0, $t0, $a0
/* D8E4B4 80241264 00041840 */  sll       $v1, $a0, 1
/* D8E4B8 80241268 00641821 */  addu      $v1, $v1, $a0
/* D8E4BC 8024126C 00431023 */  subu      $v0, $v0, $v1
/* D8E4C0 80241270 24430002 */  addiu     $v1, $v0, 2
/* D8E4C4 80241274 AE430074 */  sw        $v1, 0x74($s2)
/* D8E4C8 80241278 8E62002C */  lw        $v0, 0x2c($s3)
/* D8E4CC 8024127C 18400009 */  blez      $v0, .L802412A4
/* D8E4D0 80241280 24020004 */   addiu    $v0, $zero, 4
/* D8E4D4 80241284 8E620004 */  lw        $v0, 4($s3)
/* D8E4D8 80241288 18400006 */  blez      $v0, .L802412A4
/* D8E4DC 8024128C 24020004 */   addiu    $v0, $zero, 4
/* D8E4E0 80241290 8E620008 */  lw        $v0, 8($s3)
/* D8E4E4 80241294 18400003 */  blez      $v0, .L802412A4
/* D8E4E8 80241298 24020004 */   addiu    $v0, $zero, 4
/* D8E4EC 8024129C 14600002 */  bnez      $v1, .L802412A8
/* D8E4F0 802412A0 00000000 */   nop
.L802412A4:
/* D8E4F4 802412A4 AE420070 */  sw        $v0, 0x70($s2)
.L802412A8:
/* D8E4F8 802412A8 0C00A67F */  jal       rand_int
/* D8E4FC 802412AC 24042710 */   addiu    $a0, $zero, 0x2710
/* D8E500 802412B0 3C0351EB */  lui       $v1, 0x51eb
/* D8E504 802412B4 3463851F */  ori       $v1, $v1, 0x851f
/* D8E508 802412B8 00430018 */  mult      $v0, $v1
/* D8E50C 802412BC 00021FC3 */  sra       $v1, $v0, 0x1f
/* D8E510 802412C0 00004010 */  mfhi      $t0
/* D8E514 802412C4 00082143 */  sra       $a0, $t0, 5
/* D8E518 802412C8 00832023 */  subu      $a0, $a0, $v1
/* D8E51C 802412CC 00041840 */  sll       $v1, $a0, 1
/* D8E520 802412D0 00641821 */  addu      $v1, $v1, $a0
/* D8E524 802412D4 000318C0 */  sll       $v1, $v1, 3
/* D8E528 802412D8 00641821 */  addu      $v1, $v1, $a0
/* D8E52C 802412DC 00031880 */  sll       $v1, $v1, 2
/* D8E530 802412E0 8E640004 */  lw        $a0, 4($s3)
/* D8E534 802412E4 00431023 */  subu      $v0, $v0, $v1
/* D8E538 802412E8 0044102A */  slt       $v0, $v0, $a0
/* D8E53C 802412EC 10400002 */  beqz      $v0, .L802412F8
/* D8E540 802412F0 24020004 */   addiu    $v0, $zero, 4
.L802412F4:
/* D8E544 802412F4 AE420070 */  sw        $v0, 0x70($s2)
.L802412F8:
/* D8E548 802412F8 8FBF0044 */  lw        $ra, 0x44($sp)
/* D8E54C 802412FC 8FB40040 */  lw        $s4, 0x40($sp)
/* D8E550 80241300 8FB3003C */  lw        $s3, 0x3c($sp)
/* D8E554 80241304 8FB20038 */  lw        $s2, 0x38($sp)
/* D8E558 80241308 8FB10034 */  lw        $s1, 0x34($sp)
/* D8E55C 8024130C 8FB00030 */  lw        $s0, 0x30($sp)
/* D8E560 80241310 D7B60050 */  ldc1      $f22, 0x50($sp)
/* D8E564 80241314 D7B40048 */  ldc1      $f20, 0x48($sp)
/* D8E568 80241318 03E00008 */  jr        $ra
/* D8E56C 8024131C 27BD0058 */   addiu    $sp, $sp, 0x58
