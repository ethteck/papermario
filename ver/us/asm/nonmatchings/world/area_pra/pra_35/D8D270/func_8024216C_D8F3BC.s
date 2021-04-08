.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel pra_35_UnkFunc7
/* D8F3BC 8024216C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* D8F3C0 80242170 AFB40028 */  sw        $s4, 0x28($sp)
/* D8F3C4 80242174 0080A02D */  daddu     $s4, $a0, $zero
/* D8F3C8 80242178 AFBF002C */  sw        $ra, 0x2c($sp)
/* D8F3CC 8024217C AFB30024 */  sw        $s3, 0x24($sp)
/* D8F3D0 80242180 AFB20020 */  sw        $s2, 0x20($sp)
/* D8F3D4 80242184 AFB1001C */  sw        $s1, 0x1c($sp)
/* D8F3D8 80242188 AFB00018 */  sw        $s0, 0x18($sp)
/* D8F3DC 8024218C 8E910148 */  lw        $s1, 0x148($s4)
/* D8F3E0 80242190 86240008 */  lh        $a0, 8($s1)
/* D8F3E4 80242194 0C00EABB */  jal       get_npc_unsafe
/* D8F3E8 80242198 00A0802D */   daddu    $s0, $a1, $zero
/* D8F3EC 8024219C 16000005 */  bnez      $s0, .L802421B4
/* D8F3F0 802421A0 0040902D */   daddu    $s2, $v0, $zero
/* D8F3F4 802421A4 8E2200B0 */  lw        $v0, 0xb0($s1)
/* D8F3F8 802421A8 30420004 */  andi      $v0, $v0, 4
/* D8F3FC 802421AC 10400015 */  beqz      $v0, .L80242204
/* D8F400 802421B0 00000000 */   nop
.L802421B4:
/* D8F404 802421B4 AE800070 */  sw        $zero, 0x70($s4)
/* D8F408 802421B8 8E420000 */  lw        $v0, ($s2)
/* D8F40C 802421BC 3C031F30 */  lui       $v1, 0x1f30
/* D8F410 802421C0 A640008E */  sh        $zero, 0x8e($s2)
/* D8F414 802421C4 34420102 */  ori       $v0, $v0, 0x102
/* D8F418 802421C8 AE420000 */  sw        $v0, ($s2)
/* D8F41C 802421CC 8E220000 */  lw        $v0, ($s1)
/* D8F420 802421D0 3C01C47A */  lui       $at, 0xc47a
/* D8F424 802421D4 44810000 */  mtc1      $at, $f0
/* D8F428 802421D8 00431025 */  or        $v0, $v0, $v1
/* D8F42C 802421DC AE220000 */  sw        $v0, ($s1)
/* D8F430 802421E0 AE400038 */  sw        $zero, 0x38($s2)
/* D8F434 802421E4 E640003C */  swc1      $f0, 0x3c($s2)
/* D8F438 802421E8 AE400040 */  sw        $zero, 0x40($s2)
/* D8F43C 802421EC 8E2300B0 */  lw        $v1, 0xb0($s1)
/* D8F440 802421F0 30620004 */  andi      $v0, $v1, 4
/* D8F444 802421F4 10400003 */  beqz      $v0, .L80242204
/* D8F448 802421F8 2402FFFB */   addiu    $v0, $zero, -5
/* D8F44C 802421FC 00621024 */  and       $v0, $v1, $v0
/* D8F450 80242200 AE2200B0 */  sw        $v0, 0xb0($s1)
.L80242204:
/* D8F454 80242204 8E930070 */  lw        $s3, 0x70($s4)
/* D8F458 80242208 12600005 */  beqz      $s3, .L80242220
/* D8F45C 8024220C 24020001 */   addiu    $v0, $zero, 1
/* D8F460 80242210 12620048 */  beq       $s3, $v0, .L80242334
/* D8F464 80242214 00000000 */   nop
/* D8F468 80242218 080908EA */  j         .L802423A8
/* D8F46C 8024221C 00000000 */   nop
.L80242220:
/* D8F470 80242220 86240008 */  lh        $a0, 8($s1)
/* D8F474 80242224 0C00FB3A */  jal       get_enemy
/* D8F478 80242228 2484FFFF */   addiu    $a0, $a0, -1
/* D8F47C 8024222C 0040802D */  daddu     $s0, $v0, $zero
/* D8F480 80242230 0C00EABB */  jal       get_npc_unsafe
/* D8F484 80242234 86040008 */   lh       $a0, 8($s0)
/* D8F488 80242238 24030001 */  addiu     $v1, $zero, 1
/* D8F48C 8024223C 0040982D */  daddu     $s3, $v0, $zero
/* D8F490 80242240 A2230007 */  sb        $v1, 7($s1)
/* D8F494 80242244 8E03006C */  lw        $v1, 0x6c($s0)
/* D8F498 80242248 24020003 */  addiu     $v0, $zero, 3
/* D8F49C 8024224C 14620056 */  bne       $v1, $v0, .L802423A8
/* D8F4A0 80242250 00000000 */   nop
/* D8F4A4 80242254 8E2500A8 */  lw        $a1, 0xa8($s1)
/* D8F4A8 80242258 10A00003 */  beqz      $a1, .L80242268
/* D8F4AC 8024225C 0260202D */   daddu    $a0, $s3, $zero
/* D8F4B0 80242260 0C012530 */  jal       func_800494C0
/* D8F4B4 80242264 0000302D */   daddu    $a2, $zero, $zero
.L80242268:
/* D8F4B8 80242268 27A40010 */  addiu     $a0, $sp, 0x10
/* D8F4BC 8024226C C6280070 */  lwc1      $f8, 0x70($s1)
/* D8F4C0 80242270 46804220 */  cvt.s.w   $f8, $f8
/* D8F4C4 80242274 C6620034 */  lwc1      $f2, 0x34($s3)
/* D8F4C8 80242278 3C014387 */  lui       $at, 0x4387
/* D8F4CC 8024227C 44810000 */  mtc1      $at, $f0
/* D8F4D0 80242280 44064000 */  mfc1      $a2, $f8
/* D8F4D4 80242284 46020001 */  sub.s     $f0, $f0, $f2
/* D8F4D8 80242288 C6660038 */  lwc1      $f6, 0x38($s3)
/* D8F4DC 8024228C C6640040 */  lwc1      $f4, 0x40($s3)
/* D8F4E0 80242290 44070000 */  mfc1      $a3, $f0
/* D8F4E4 80242294 27A50014 */  addiu     $a1, $sp, 0x14
/* D8F4E8 80242298 E7A60010 */  swc1      $f6, 0x10($sp)
/* D8F4EC 8024229C 0C00A7E7 */  jal       add_vec2D_polar
/* D8F4F0 802422A0 E7A40014 */   swc1     $f4, 0x14($sp)
/* D8F4F4 802422A4 C7A00010 */  lwc1      $f0, 0x10($sp)
/* D8F4F8 802422A8 4600020D */  trunc.w.s $f8, $f0
/* D8F4FC 802422AC 44024000 */  mfc1      $v0, $f8
/* D8F500 802422B0 E6400038 */  swc1      $f0, 0x38($s2)
/* D8F504 802422B4 A6220010 */  sh        $v0, 0x10($s1)
/* D8F508 802422B8 C660003C */  lwc1      $f0, 0x3c($s3)
/* D8F50C 802422BC C622006C */  lwc1      $f2, 0x6c($s1)
/* D8F510 802422C0 468010A0 */  cvt.s.w   $f2, $f2
/* D8F514 802422C4 46020000 */  add.s     $f0, $f0, $f2
/* D8F518 802422C8 3C03800F */  lui       $v1, %hi(gPlayerStatusPtr)
/* D8F51C 802422CC 8C637B30 */  lw        $v1, %lo(gPlayerStatusPtr)($v1)
/* D8F520 802422D0 E640003C */  swc1      $f0, 0x3c($s2)
/* D8F524 802422D4 C7A20014 */  lwc1      $f2, 0x14($sp)
/* D8F528 802422D8 4600020D */  trunc.w.s $f8, $f0
/* D8F52C 802422DC 44024000 */  mfc1      $v0, $f8
/* D8F530 802422E0 00000000 */  nop
/* D8F534 802422E4 A6220012 */  sh        $v0, 0x12($s1)
/* D8F538 802422E8 4600120D */  trunc.w.s $f8, $f2
/* D8F53C 802422EC 44024000 */  mfc1      $v0, $f8
/* D8F540 802422F0 E6420040 */  swc1      $f2, 0x40($s2)
/* D8F544 802422F4 A6220014 */  sh        $v0, 0x14($s1)
/* D8F548 802422F8 8C660028 */  lw        $a2, 0x28($v1)
/* D8F54C 802422FC 8C670030 */  lw        $a3, 0x30($v1)
/* D8F550 80242300 C64C0038 */  lwc1      $f12, 0x38($s2)
/* D8F554 80242304 0C00A720 */  jal       atan2
/* D8F558 80242308 C64E0040 */   lwc1     $f14, 0x40($s2)
/* D8F55C 8024230C 3C03E0EF */  lui       $v1, 0xe0ef
/* D8F560 80242310 E640000C */  swc1      $f0, 0xc($s2)
/* D8F564 80242314 8E220000 */  lw        $v0, ($s1)
/* D8F568 80242318 3463FFFF */  ori       $v1, $v1, 0xffff
/* D8F56C 8024231C 00431024 */  and       $v0, $v0, $v1
/* D8F570 80242320 AE220000 */  sw        $v0, ($s1)
/* D8F574 80242324 24020001 */  addiu     $v0, $zero, 1
/* D8F578 80242328 A640008E */  sh        $zero, 0x8e($s2)
/* D8F57C 8024232C 080908EA */  j         .L802423A8
/* D8F580 80242330 AE820070 */   sw       $v0, 0x70($s4)
.L80242334:
/* D8F584 80242334 86240008 */  lh        $a0, 8($s1)
/* D8F588 80242338 0C00FB3A */  jal       get_enemy
/* D8F58C 8024233C 2484FFFF */   addiu    $a0, $a0, -1
/* D8F590 80242340 0040802D */  daddu     $s0, $v0, $zero
/* D8F594 80242344 0C00EABB */  jal       get_npc_unsafe
/* D8F598 80242348 86040008 */   lh       $a0, 8($s0)
/* D8F59C 8024234C 9642008E */  lhu       $v0, 0x8e($s2)
/* D8F5A0 80242350 24420001 */  addiu     $v0, $v0, 1
/* D8F5A4 80242354 A642008E */  sh        $v0, 0x8e($s2)
/* D8F5A8 80242358 00021400 */  sll       $v0, $v0, 0x10
/* D8F5AC 8024235C 8E23007C */  lw        $v1, 0x7c($s1)
/* D8F5B0 80242360 00021403 */  sra       $v0, $v0, 0x10
/* D8F5B4 80242364 0043102A */  slt       $v0, $v0, $v1
/* D8F5B8 80242368 50400001 */  beql      $v0, $zero, .L80242370
/* D8F5BC 8024236C A2200007 */   sb       $zero, 7($s1)
.L80242370:
/* D8F5C0 80242370 8E03006C */  lw        $v1, 0x6c($s0)
/* D8F5C4 80242374 24020004 */  addiu     $v0, $zero, 4
/* D8F5C8 80242378 1462000B */  bne       $v1, $v0, .L802423A8
/* D8F5CC 8024237C 3C021F10 */   lui      $v0, 0x1f10
/* D8F5D0 80242380 8E230000 */  lw        $v1, ($s1)
/* D8F5D4 80242384 3C01C47A */  lui       $at, 0xc47a
/* D8F5D8 80242388 44810000 */  mtc1      $at, $f0
/* D8F5DC 8024238C 00621825 */  or        $v1, $v1, $v0
/* D8F5E0 80242390 AE230000 */  sw        $v1, ($s1)
/* D8F5E4 80242394 AE400038 */  sw        $zero, 0x38($s2)
/* D8F5E8 80242398 E640003C */  swc1      $f0, 0x3c($s2)
/* D8F5EC 8024239C AE400040 */  sw        $zero, 0x40($s2)
/* D8F5F0 802423A0 A2330007 */  sb        $s3, 7($s1)
/* D8F5F4 802423A4 AE800070 */  sw        $zero, 0x70($s4)
.L802423A8:
/* D8F5F8 802423A8 8FBF002C */  lw        $ra, 0x2c($sp)
/* D8F5FC 802423AC 8FB40028 */  lw        $s4, 0x28($sp)
/* D8F600 802423B0 8FB30024 */  lw        $s3, 0x24($sp)
/* D8F604 802423B4 8FB20020 */  lw        $s2, 0x20($sp)
/* D8F608 802423B8 8FB1001C */  lw        $s1, 0x1c($sp)
/* D8F60C 802423BC 8FB00018 */  lw        $s0, 0x18($sp)
/* D8F610 802423C0 0000102D */  daddu     $v0, $zero, $zero
/* D8F614 802423C4 03E00008 */  jr        $ra
/* D8F618 802423C8 27BD0030 */   addiu    $sp, $sp, 0x30
