.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240F38_B94378
/* B94378 80240F38 27BDFF80 */  addiu     $sp, $sp, -0x80
/* B9437C 80240F3C AFBF0064 */  sw        $ra, 0x64($sp)
/* B94380 80240F40 AFBE0060 */  sw        $fp, 0x60($sp)
/* B94384 80240F44 AFB7005C */  sw        $s7, 0x5c($sp)
/* B94388 80240F48 AFB60058 */  sw        $s6, 0x58($sp)
/* B9438C 80240F4C AFB50054 */  sw        $s5, 0x54($sp)
/* B94390 80240F50 AFB40050 */  sw        $s4, 0x50($sp)
/* B94394 80240F54 AFB3004C */  sw        $s3, 0x4c($sp)
/* B94398 80240F58 AFB20048 */  sw        $s2, 0x48($sp)
/* B9439C 80240F5C AFB10044 */  sw        $s1, 0x44($sp)
/* B943A0 80240F60 AFB00040 */  sw        $s0, 0x40($sp)
/* B943A4 80240F64 F7B80078 */  sdc1      $f24, 0x78($sp)
/* B943A8 80240F68 F7B60070 */  sdc1      $f22, 0x70($sp)
/* B943AC 80240F6C F7B40068 */  sdc1      $f20, 0x68($sp)
/* B943B0 80240F70 AFA40080 */  sw        $a0, 0x80($sp)
/* B943B4 80240F74 8C960148 */  lw        $s6, 0x148($a0)
/* B943B8 80240F78 00C0902D */  daddu     $s2, $a2, $zero
/* B943BC 80240F7C 86C40008 */  lh        $a0, 8($s6)
/* B943C0 80240F80 0C00EABB */  jal       get_npc_unsafe
/* B943C4 80240F84 0000B82D */   daddu    $s7, $zero, $zero
/* B943C8 80240F88 0040882D */  daddu     $s1, $v0, $zero
/* B943CC 80240F8C 9622008E */  lhu       $v0, 0x8e($s1)
/* B943D0 80240F90 2442FFFF */  addiu     $v0, $v0, -1
/* B943D4 80240F94 A622008E */  sh        $v0, 0x8e($s1)
/* B943D8 80240F98 00021400 */  sll       $v0, $v0, 0x10
/* B943DC 80240F9C 8EC30090 */  lw        $v1, 0x90($s6)
/* B943E0 80240FA0 00021403 */  sra       $v0, $v0, 0x10
/* B943E4 80240FA4 0062182A */  slt       $v1, $v1, $v0
/* B943E8 80240FA8 14600005 */  bnez      $v1, .L80240FC0
/* B943EC 80240FAC 02E0F02D */   daddu    $fp, $s7, $zero
/* B943F0 80240FB0 8EC20000 */  lw        $v0, ($s6)
/* B943F4 80240FB4 3C031F10 */  lui       $v1, 0x1f10
/* B943F8 80240FB8 00431025 */  or        $v0, $v0, $v1
/* B943FC 80240FBC AEC20000 */  sw        $v0, ($s6)
.L80240FC0:
/* B94400 80240FC0 8622008E */  lh        $v0, 0x8e($s1)
/* B94404 80240FC4 1440025D */  bnez      $v0, .L8024193C
/* B94408 80240FC8 00000000 */   nop
/* B9440C 80240FCC 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* B94410 80240FD0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* B94414 80240FD4 0C00A6C9 */  jal       clamp_angle
/* B94418 80240FD8 C44C00A8 */   lwc1     $f12, 0xa8($v0)
/* B9441C 80240FDC 3C014334 */  lui       $at, 0x4334
/* B94420 80240FE0 44811000 */  mtc1      $at, $f2
/* B94424 80240FE4 00000000 */  nop
/* B94428 80240FE8 4602003C */  c.lt.s    $f0, $f2
/* B9442C 80240FEC 00000000 */  nop
/* B94430 80240FF0 45000011 */  bc1f      .L80241038
/* B94434 80240FF4 00000000 */   nop
/* B94438 80240FF8 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* B9443C 80240FFC 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* B94440 80241000 3C0142B4 */  lui       $at, 0x42b4
/* B94444 80241004 44816000 */  mtc1      $at, $f12
/* B94448 80241008 00031080 */  sll       $v0, $v1, 2
/* B9444C 8024100C 00431021 */  addu      $v0, $v0, $v1
/* B94450 80241010 00021080 */  sll       $v0, $v0, 2
/* B94454 80241014 00431023 */  subu      $v0, $v0, $v1
/* B94458 80241018 000218C0 */  sll       $v1, $v0, 3
/* B9445C 8024101C 00431021 */  addu      $v0, $v0, $v1
/* B94460 80241020 000210C0 */  sll       $v0, $v0, 3
/* B94464 80241024 3C01800B */  lui       $at, %hi(D_800B1DEC)
/* B94468 80241028 00220821 */  addu      $at, $at, $v0
/* B9446C 8024102C C4201DEC */  lwc1      $f0, %lo(D_800B1DEC)($at)
/* B94470 80241030 0809041D */  j         .L80241074
/* B94474 80241034 460C0301 */   sub.s    $f12, $f0, $f12
.L80241038:
/* B94478 80241038 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* B9447C 8024103C 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* B94480 80241040 3C0142B4 */  lui       $at, 0x42b4
/* B94484 80241044 44816000 */  mtc1      $at, $f12
/* B94488 80241048 00031080 */  sll       $v0, $v1, 2
/* B9448C 8024104C 00431021 */  addu      $v0, $v0, $v1
/* B94490 80241050 00021080 */  sll       $v0, $v0, 2
/* B94494 80241054 00431023 */  subu      $v0, $v0, $v1
/* B94498 80241058 000218C0 */  sll       $v1, $v0, 3
/* B9449C 8024105C 00431021 */  addu      $v0, $v0, $v1
/* B944A0 80241060 000210C0 */  sll       $v0, $v0, 3
/* B944A4 80241064 3C01800B */  lui       $at, %hi(D_800B1DEC)
/* B944A8 80241068 00220821 */  addu      $at, $at, $v0
/* B944AC 8024106C C4201DEC */  lwc1      $f0, %lo(D_800B1DEC)($at)
/* B944B0 80241070 460C0300 */  add.s     $f12, $f0, $f12
.L80241074:
/* B944B4 80241074 0C00A6C9 */  jal       clamp_angle
/* B944B8 80241078 00000000 */   nop
/* B944BC 8024107C 46000586 */  mov.s     $f22, $f0
/* B944C0 80241080 3C014334 */  lui       $at, 0x4334
/* B944C4 80241084 44816000 */  mtc1      $at, $f12
/* B944C8 80241088 0C00A6C9 */  jal       clamp_angle
/* B944CC 8024108C 460CB300 */   add.s    $f12, $f22, $f12
/* B944D0 80241090 8EC20088 */  lw        $v0, 0x88($s6)
/* B944D4 80241094 14400010 */  bnez      $v0, .L802410D8
/* B944D8 80241098 46000606 */   mov.s    $f24, $f0
/* B944DC 8024109C 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* B944E0 802410A0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* B944E4 802410A4 804300B4 */  lb        $v1, 0xb4($v0)
/* B944E8 802410A8 3C014200 */  lui       $at, 0x4200
/* B944EC 802410AC 4481A000 */  mtc1      $at, $f20
/* B944F0 802410B0 10600016 */  beqz      $v1, .L8024110C
/* B944F4 802410B4 24020001 */   addiu    $v0, $zero, 1
/* B944F8 802410B8 3C0142C8 */  lui       $at, 0x42c8
/* B944FC 802410BC 4481A000 */  mtc1      $at, $f20
/* B94500 802410C0 14620013 */  bne       $v1, $v0, .L80241110
/* B94504 802410C4 26300038 */   addiu    $s0, $s1, 0x38
/* B94508 802410C8 3C0142B4 */  lui       $at, 0x42b4
/* B9450C 802410CC 4481A000 */  mtc1      $at, $f20
/* B94510 802410D0 08090445 */  j         .L80241114
/* B94514 802410D4 0200202D */   daddu    $a0, $s0, $zero
.L802410D8:
/* B94518 802410D8 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* B9451C 802410DC 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* B94520 802410E0 804300B4 */  lb        $v1, 0xb4($v0)
/* B94524 802410E4 3C014218 */  lui       $at, 0x4218
/* B94528 802410E8 4481A000 */  mtc1      $at, $f20
/* B9452C 802410EC 10600007 */  beqz      $v1, .L8024110C
/* B94530 802410F0 24020001 */   addiu    $v0, $zero, 1
/* B94534 802410F4 3C0142B4 */  lui       $at, 0x42b4
/* B94538 802410F8 4481A000 */  mtc1      $at, $f20
/* B9453C 802410FC 14620004 */  bne       $v1, $v0, .L80241110
/* B94540 80241100 26300038 */   addiu    $s0, $s1, 0x38
/* B94544 80241104 3C014296 */  lui       $at, 0x4296
/* B94548 80241108 4481A000 */  mtc1      $at, $f20
.L8024110C:
/* B9454C 8024110C 26300038 */  addiu     $s0, $s1, 0x38
.L80241110:
/* B94550 80241110 0200202D */  daddu     $a0, $s0, $zero
.L80241114:
/* B94554 80241114 3C15800F */  lui       $s5, %hi(gPlayerStatusPtr)
/* B94558 80241118 26B57B30 */  addiu     $s5, $s5, %lo(gPlayerStatusPtr)
/* B9455C 8024111C 4407C000 */  mfc1      $a3, $f24
/* B94560 80241120 862200A6 */  lh        $v0, 0xa6($s1)
/* B94564 80241124 8EA30000 */  lw        $v1, ($s5)
/* B94568 80241128 44824000 */  mtc1      $v0, $f8
/* B9456C 8024112C 00000000 */  nop
/* B94570 80241130 46804220 */  cvt.s.w   $f8, $f8
/* B94574 80241134 C4600028 */  lwc1      $f0, 0x28($v1)
/* B94578 80241138 44064000 */  mfc1      $a2, $f8
/* B9457C 8024113C 26330040 */  addiu     $s3, $s1, 0x40
/* B94580 80241140 E6200038 */  swc1      $f0, 0x38($s1)
/* B94584 80241144 C4600030 */  lwc1      $f0, 0x30($v1)
/* B94588 80241148 0260282D */  daddu     $a1, $s3, $zero
/* B9458C 8024114C 0C00A7E7 */  jal       add_vec2D_polar
/* B94590 80241150 E6200040 */   swc1     $f0, 0x40($s1)
/* B94594 80241154 862200A6 */  lh        $v0, 0xa6($s1)
/* B94598 80241158 44820000 */  mtc1      $v0, $f0
/* B9459C 8024115C 00000000 */  nop
/* B945A0 80241160 46800020 */  cvt.s.w   $f0, $f0
/* B945A4 80241164 4600A000 */  add.s     $f0, $f20, $f0
/* B945A8 80241168 4406B000 */  mfc1      $a2, $f22
/* B945AC 8024116C 44050000 */  mfc1      $a1, $f0
/* B945B0 80241170 0C00EA95 */  jal       npc_move_heading
/* B945B4 80241174 0220202D */   daddu    $a0, $s1, $zero
/* B945B8 80241178 8EC20088 */  lw        $v0, 0x88($s6)
/* B945BC 8024117C 1440005D */  bnez      $v0, .L802412F4
/* B945C0 80241180 00000000 */   nop
/* B945C4 80241184 C6200038 */  lwc1      $f0, 0x38($s1)
/* B945C8 80241188 3C018024 */  lui       $at, %hi(D_80244788_B97BC8)
/* B945CC 8024118C D4244788 */  ldc1      $f4, %lo(D_80244788_B97BC8)($at)
/* B945D0 80241190 46000021 */  cvt.d.s   $f0, $f0
/* B945D4 80241194 4620203C */  c.lt.d    $f4, $f0
/* B945D8 80241198 00000000 */  nop
/* B945DC 8024119C 45000005 */  bc1f      .L802411B4
/* B945E0 802411A0 00000000 */   nop
/* B945E4 802411A4 3C0143BE */  lui       $at, 0x43be
/* B945E8 802411A8 44810000 */  mtc1      $at, $f0
/* B945EC 802411AC 00000000 */  nop
/* B945F0 802411B0 E6200038 */  swc1      $f0, 0x38($s1)
.L802411B4:
/* B945F4 802411B4 C6200038 */  lwc1      $f0, 0x38($s1)
/* B945F8 802411B8 3C018024 */  lui       $at, %hi(D_80244790_B97BD0)
/* B945FC 802411BC D4224790 */  ldc1      $f2, %lo(D_80244790_B97BD0)($at)
/* B94600 802411C0 46000021 */  cvt.d.s   $f0, $f0
/* B94604 802411C4 4622003C */  c.lt.d    $f0, $f2
/* B94608 802411C8 00000000 */  nop
/* B9460C 802411CC 45000005 */  bc1f      .L802411E4
/* B94610 802411D0 00000000 */   nop
/* B94614 802411D4 3C01C3BE */  lui       $at, 0xc3be
/* B94618 802411D8 44810000 */  mtc1      $at, $f0
/* B9461C 802411DC 00000000 */  nop
/* B94620 802411E0 E6200038 */  swc1      $f0, 0x38($s1)
.L802411E4:
/* B94624 802411E4 C6200040 */  lwc1      $f0, 0x40($s1)
/* B94628 802411E8 46000021 */  cvt.d.s   $f0, $f0
/* B9462C 802411EC 4620203C */  c.lt.d    $f4, $f0
/* B94630 802411F0 00000000 */  nop
/* B94634 802411F4 45000005 */  bc1f      .L8024120C
/* B94638 802411F8 00000000 */   nop
/* B9463C 802411FC 3C0143BE */  lui       $at, 0x43be
/* B94640 80241200 44810000 */  mtc1      $at, $f0
/* B94644 80241204 00000000 */  nop
/* B94648 80241208 E6200040 */  swc1      $f0, 0x40($s1)
.L8024120C:
/* B9464C 8024120C C6200040 */  lwc1      $f0, 0x40($s1)
/* B94650 80241210 46000021 */  cvt.d.s   $f0, $f0
/* B94654 80241214 4622003C */  c.lt.d    $f0, $f2
/* B94658 80241218 00000000 */  nop
/* B9465C 8024121C 45000005 */  bc1f      .L80241234
/* B94660 80241220 00000000 */   nop
/* B94664 80241224 3C01C3BE */  lui       $at, 0xc3be
/* B94668 80241228 44810000 */  mtc1      $at, $f0
/* B9466C 8024122C 00000000 */  nop
/* B94670 80241230 E6200040 */  swc1      $f0, 0x40($s1)
.L80241234:
/* B94674 80241234 C6220038 */  lwc1      $f2, 0x38($s1)
/* B94678 80241238 46021082 */  mul.s     $f2, $f2, $f2
/* B9467C 8024123C 00000000 */  nop
/* B94680 80241240 C6200040 */  lwc1      $f0, 0x40($s1)
/* B94684 80241244 46000002 */  mul.s     $f0, $f0, $f0
/* B94688 80241248 00000000 */  nop
/* B9468C 8024124C 46001300 */  add.s     $f12, $f2, $f0
/* B94690 80241250 46006004 */  sqrt.s    $f0, $f12
/* B94694 80241254 46000032 */  c.eq.s    $f0, $f0
/* B94698 80241258 00000000 */  nop
/* B9469C 8024125C 45010003 */  bc1t      .L8024126C
/* B946A0 80241260 00000000 */   nop
/* B946A4 80241264 0C0187BC */  jal       sqrtf
/* B946A8 80241268 00000000 */   nop
.L8024126C:
/* B946AC 8024126C 8E260038 */  lw        $a2, 0x38($s1)
/* B946B0 80241270 8E270040 */  lw        $a3, 0x40($s1)
/* B946B4 80241274 4480A000 */  mtc1      $zero, $f20
/* B946B8 80241278 E7A00038 */  swc1      $f0, 0x38($sp)
/* B946BC 8024127C 4600A306 */  mov.s     $f12, $f20
/* B946C0 80241280 0C00A720 */  jal       atan2
/* B946C4 80241284 4600A386 */   mov.s    $f14, $f20
/* B946C8 80241288 46000586 */  mov.s     $f22, $f0
/* B946CC 8024128C C7A20038 */  lwc1      $f2, 0x38($sp)
/* B946D0 80241290 3C018024 */  lui       $at, %hi(D_80244798_B97BD8)
/* B946D4 80241294 D4204798 */  ldc1      $f0, %lo(D_80244798_B97BD8)($at)
/* B946D8 80241298 460010A1 */  cvt.d.s   $f2, $f2
/* B946DC 8024129C 4620103C */  c.lt.d    $f2, $f0
/* B946E0 802412A0 00000000 */  nop
/* B946E4 802412A4 45000004 */  bc1f      .L802412B8
/* B946E8 802412A8 0200202D */   daddu    $a0, $s0, $zero
/* B946EC 802412AC 3C064398 */  lui       $a2, 0x4398
/* B946F0 802412B0 080904B6 */  j         .L802412D8
/* B946F4 802412B4 34C68000 */   ori      $a2, $a2, 0x8000
.L802412B8:
/* B946F8 802412B8 3C018024 */  lui       $at, %hi(D_802447A0_B97BE0)
/* B946FC 802412BC D42047A0 */  ldc1      $f0, %lo(D_802447A0_B97BE0)($at)
/* B94700 802412C0 4622003C */  c.lt.d    $f0, $f2
/* B94704 802412C4 00000000 */  nop
/* B94708 802412C8 450000FA */  bc1f      .L802416B4
/* B9470C 802412CC 00000000 */   nop
/* B94710 802412D0 3C0643BB */  lui       $a2, 0x43bb
/* B94714 802412D4 34C68000 */  ori       $a2, $a2, 0x8000
.L802412D8:
/* B94718 802412D8 4407B000 */  mfc1      $a3, $f22
/* B9471C 802412DC 0260282D */  daddu     $a1, $s3, $zero
/* B94720 802412E0 E6340038 */  swc1      $f20, 0x38($s1)
/* B94724 802412E4 0C00A7E7 */  jal       add_vec2D_polar
/* B94728 802412E8 E6340040 */   swc1     $f20, 0x40($s1)
/* B9472C 802412EC 080905AD */  j         .L802416B4
/* B94730 802412F0 00000000 */   nop
.L802412F4:
/* B94734 802412F4 8E220000 */  lw        $v0, ($s1)
/* B94738 802412F8 30420040 */  andi      $v0, $v0, 0x40
/* B9473C 802412FC 144000B0 */  bnez      $v0, .L802415C0
/* B94740 80241300 27A50020 */   addiu    $a1, $sp, 0x20
/* B94744 80241304 27B40020 */  addiu     $s4, $sp, 0x20
/* B94748 80241308 0280282D */  daddu     $a1, $s4, $zero
/* B9474C 8024130C 27B30024 */  addiu     $s3, $sp, 0x24
/* B94750 80241310 8EA20000 */  lw        $v0, ($s5)
/* B94754 80241314 3C014032 */  lui       $at, 0x4032
/* B94758 80241318 44811800 */  mtc1      $at, $f3
/* B9475C 8024131C 44801000 */  mtc1      $zero, $f2
/* B94760 80241320 C440002C */  lwc1      $f0, 0x2c($v0)
/* B94764 80241324 C4460028 */  lwc1      $f6, 0x28($v0)
/* B94768 80241328 C4440030 */  lwc1      $f4, 0x30($v0)
/* B9476C 8024132C 46000021 */  cvt.d.s   $f0, $f0
/* B94770 80241330 46220000 */  add.d     $f0, $f0, $f2
/* B94774 80241334 E7A60020 */  swc1      $f6, 0x20($sp)
/* B94778 80241338 E7A40028 */  swc1      $f4, 0x28($sp)
/* B9477C 8024133C 46200020 */  cvt.s.d   $f0, $f0
/* B94780 80241340 E7A00024 */  swc1      $f0, 0x24($sp)
/* B94784 80241344 E7B40010 */  swc1      $f20, 0x10($sp)
/* B94788 80241348 E7B60014 */  swc1      $f22, 0x14($sp)
/* B9478C 8024134C 862200A8 */  lh        $v0, 0xa8($s1)
/* B94790 80241350 0260302D */  daddu     $a2, $s3, $zero
/* B94794 80241354 44820000 */  mtc1      $v0, $f0
/* B94798 80241358 00000000 */  nop
/* B9479C 8024135C 46800020 */  cvt.s.w   $f0, $f0
/* B947A0 80241360 E7A00018 */  swc1      $f0, 0x18($sp)
/* B947A4 80241364 862200A6 */  lh        $v0, 0xa6($s1)
/* B947A8 80241368 27B00028 */  addiu     $s0, $sp, 0x28
/* B947AC 8024136C 44820000 */  mtc1      $v0, $f0
/* B947B0 80241370 00000000 */  nop
/* B947B4 80241374 46800020 */  cvt.s.w   $f0, $f0
/* B947B8 80241378 E7A0001C */  swc1      $f0, 0x1c($sp)
/* B947BC 8024137C 8E240080 */  lw        $a0, 0x80($s1)
/* B947C0 80241380 0C037711 */  jal       func_800DDC44
/* B947C4 80241384 0200382D */   daddu    $a3, $s0, $zero
/* B947C8 80241388 104000CA */  beqz      $v0, .L802416B4
/* B947CC 8024138C 0280282D */   daddu    $a1, $s4, $zero
/* B947D0 80241390 8EA20000 */  lw        $v0, ($s5)
/* B947D4 80241394 3C018024 */  lui       $at, %hi(D_802447A8_B97BE8)
/* B947D8 80241398 D42247A8 */  ldc1      $f2, %lo(D_802447A8_B97BE8)($at)
/* B947DC 8024139C C440002C */  lwc1      $f0, 0x2c($v0)
/* B947E0 802413A0 C4460028 */  lwc1      $f6, 0x28($v0)
/* B947E4 802413A4 C4440030 */  lwc1      $f4, 0x30($v0)
/* B947E8 802413A8 46000021 */  cvt.d.s   $f0, $f0
/* B947EC 802413AC 46220000 */  add.d     $f0, $f0, $f2
/* B947F0 802413B0 E7A60020 */  swc1      $f6, 0x20($sp)
/* B947F4 802413B4 E7A40028 */  swc1      $f4, 0x28($sp)
/* B947F8 802413B8 46200020 */  cvt.s.d   $f0, $f0
/* B947FC 802413BC E7A00024 */  swc1      $f0, 0x24($sp)
/* B94800 802413C0 E7B40010 */  swc1      $f20, 0x10($sp)
/* B94804 802413C4 E7B60014 */  swc1      $f22, 0x14($sp)
/* B94808 802413C8 862200A8 */  lh        $v0, 0xa8($s1)
/* B9480C 802413CC 44820000 */  mtc1      $v0, $f0
/* B94810 802413D0 00000000 */  nop
/* B94814 802413D4 46800020 */  cvt.s.w   $f0, $f0
/* B94818 802413D8 E7A00018 */  swc1      $f0, 0x18($sp)
/* B9481C 802413DC 862200A6 */  lh        $v0, 0xa6($s1)
/* B94820 802413E0 0260302D */  daddu     $a2, $s3, $zero
/* B94824 802413E4 44820000 */  mtc1      $v0, $f0
/* B94828 802413E8 00000000 */  nop
/* B9482C 802413EC 46800020 */  cvt.s.w   $f0, $f0
/* B94830 802413F0 E7A0001C */  swc1      $f0, 0x1c($sp)
/* B94834 802413F4 8E240080 */  lw        $a0, 0x80($s1)
/* B94838 802413F8 0C037711 */  jal       func_800DDC44
/* B9483C 802413FC 0200382D */   daddu    $a3, $s0, $zero
/* B94840 80241400 27A5002C */  addiu     $a1, $sp, 0x2c
/* B94844 80241404 27A60030 */  addiu     $a2, $sp, 0x30
/* B94848 80241408 27A70034 */  addiu     $a3, $sp, 0x34
/* B9484C 8024140C 27A30038 */  addiu     $v1, $sp, 0x38
/* B94850 80241410 C6220038 */  lwc1      $f2, 0x38($s1)
/* B94854 80241414 C620003C */  lwc1      $f0, 0x3c($s1)
/* B94858 80241418 3C014348 */  lui       $at, 0x4348
/* B9485C 8024141C 44813000 */  mtc1      $at, $f6
/* B94860 80241420 46000021 */  cvt.d.s   $f0, $f0
/* B94864 80241424 E7A2002C */  swc1      $f2, 0x2c($sp)
/* B94868 80241428 3C014059 */  lui       $at, 0x4059
/* B9486C 8024142C 44811800 */  mtc1      $at, $f3
/* B94870 80241430 44801000 */  mtc1      $zero, $f2
/* B94874 80241434 C6240040 */  lwc1      $f4, 0x40($s1)
/* B94878 80241438 46220000 */  add.d     $f0, $f0, $f2
/* B9487C 8024143C E7A60038 */  swc1      $f6, 0x38($sp)
/* B94880 80241440 E7A40034 */  swc1      $f4, 0x34($sp)
/* B94884 80241444 46200020 */  cvt.s.d   $f0, $f0
/* B94888 80241448 E7A00030 */  swc1      $f0, 0x30($sp)
/* B9488C 8024144C AFA30010 */  sw        $v1, 0x10($sp)
/* B94890 80241450 8E240080 */  lw        $a0, 0x80($s1)
/* B94894 80241454 0C0372DF */  jal       func_800DCB7C
/* B94898 80241458 0040802D */   daddu    $s0, $v0, $zero
/* B9489C 8024145C 1600001C */  bnez      $s0, .L802414D0
/* B948A0 80241460 00000000 */   nop
/* B948A4 80241464 1040001A */  beqz      $v0, .L802414D0
/* B948A8 80241468 00000000 */   nop
/* B948AC 8024146C C7A20038 */  lwc1      $f2, 0x38($sp)
/* B948B0 80241470 3C014054 */  lui       $at, 0x4054
/* B948B4 80241474 44810800 */  mtc1      $at, $f1
/* B948B8 80241478 44800000 */  mtc1      $zero, $f0
/* B948BC 8024147C 460010A1 */  cvt.d.s   $f2, $f2
/* B948C0 80241480 4622003C */  c.lt.d    $f0, $f2
/* B948C4 80241484 00000000 */  nop
/* B948C8 80241488 45000011 */  bc1f      .L802414D0
/* B948CC 8024148C 00000000 */   nop
/* B948D0 80241490 3C01405E */  lui       $at, 0x405e
/* B948D4 80241494 44810800 */  mtc1      $at, $f1
/* B948D8 80241498 44800000 */  mtc1      $zero, $f0
/* B948DC 8024149C 00000000 */  nop
/* B948E0 802414A0 4620103C */  c.lt.d    $f2, $f0
/* B948E4 802414A4 00000000 */  nop
/* B948E8 802414A8 45000009 */  bc1f      .L802414D0
/* B948EC 802414AC 00000000 */   nop
/* B948F0 802414B0 C622003C */  lwc1      $f2, 0x3c($s1)
/* B948F4 802414B4 C7A00030 */  lwc1      $f0, 0x30($sp)
/* B948F8 802414B8 46001032 */  c.eq.s    $f2, $f0
/* B948FC 802414BC 00000000 */  nop
/* B94900 802414C0 45010003 */  bc1t      .L802414D0
/* B94904 802414C4 00000000 */   nop
/* B94908 802414C8 080905AD */  j         .L802416B4
/* B9490C 802414CC 241E0001 */   addiu    $fp, $zero, 1
.L802414D0:
/* B94910 802414D0 3C10800F */  lui       $s0, %hi(gPlayerStatusPtr)
/* B94914 802414D4 26107B30 */  addiu     $s0, $s0, %lo(gPlayerStatusPtr)
/* B94918 802414D8 8E020000 */  lw        $v0, ($s0)
/* B9491C 802414DC 3C014024 */  lui       $at, 0x4024
/* B94920 802414E0 44811800 */  mtc1      $at, $f3
/* B94924 802414E4 44801000 */  mtc1      $zero, $f2
/* B94928 802414E8 C440002C */  lwc1      $f0, 0x2c($v0)
/* B9492C 802414EC C4460028 */  lwc1      $f6, 0x28($v0)
/* B94930 802414F0 C4440030 */  lwc1      $f4, 0x30($v0)
/* B94934 802414F4 46000021 */  cvt.d.s   $f0, $f0
/* B94938 802414F8 46220000 */  add.d     $f0, $f0, $f2
/* B9493C 802414FC E7A60020 */  swc1      $f6, 0x20($sp)
/* B94940 80241500 E7A40028 */  swc1      $f4, 0x28($sp)
/* B94944 80241504 46200020 */  cvt.s.d   $f0, $f0
/* B94948 80241508 E7A00024 */  swc1      $f0, 0x24($sp)
/* B9494C 8024150C E7B40010 */  swc1      $f20, 0x10($sp)
/* B94950 80241510 E7B60014 */  swc1      $f22, 0x14($sp)
/* B94954 80241514 862200A8 */  lh        $v0, 0xa8($s1)
/* B94958 80241518 27A50020 */  addiu     $a1, $sp, 0x20
/* B9495C 8024151C 44820000 */  mtc1      $v0, $f0
/* B94960 80241520 00000000 */  nop
/* B94964 80241524 46800020 */  cvt.s.w   $f0, $f0
/* B94968 80241528 E7A00018 */  swc1      $f0, 0x18($sp)
/* B9496C 8024152C 862200A6 */  lh        $v0, 0xa6($s1)
/* B94970 80241530 27A60024 */  addiu     $a2, $sp, 0x24
/* B94974 80241534 44820000 */  mtc1      $v0, $f0
/* B94978 80241538 00000000 */  nop
/* B9497C 8024153C 46800020 */  cvt.s.w   $f0, $f0
/* B94980 80241540 E7A0001C */  swc1      $f0, 0x1c($sp)
/* B94984 80241544 8E240080 */  lw        $a0, 0x80($s1)
/* B94988 80241548 0C037711 */  jal       func_800DDC44
/* B9498C 8024154C 27A70028 */   addiu    $a3, $sp, 0x28
/* B94990 80241550 8FA60020 */  lw        $a2, 0x20($sp)
/* B94994 80241554 8E020000 */  lw        $v0, ($s0)
/* B94998 80241558 8FA70028 */  lw        $a3, 0x28($sp)
/* B9499C 8024155C C44C0028 */  lwc1      $f12, 0x28($v0)
/* B949A0 80241560 C44E0030 */  lwc1      $f14, 0x30($v0)
/* B949A4 80241564 0C00A7B5 */  jal       dist2D
/* B949A8 80241568 24170001 */   addiu    $s7, $zero, 1
/* B949AC 8024156C 46000506 */  mov.s     $f20, $f0
/* B949B0 80241570 8E030000 */  lw        $v1, ($s0)
/* B949B4 80241574 862200A6 */  lh        $v0, 0xa6($s1)
/* B949B8 80241578 4407C000 */  mfc1      $a3, $f24
/* B949BC 8024157C 44824000 */  mtc1      $v0, $f8
/* B949C0 80241580 00000000 */  nop
/* B949C4 80241584 46804220 */  cvt.s.w   $f8, $f8
/* B949C8 80241588 C4600028 */  lwc1      $f0, 0x28($v1)
/* B949CC 8024158C 44064000 */  mfc1      $a2, $f8
/* B949D0 80241590 26240038 */  addiu     $a0, $s1, 0x38
/* B949D4 80241594 E6200038 */  swc1      $f0, 0x38($s1)
/* B949D8 80241598 C4600030 */  lwc1      $f0, 0x30($v1)
/* B949DC 8024159C 26250040 */  addiu     $a1, $s1, 0x40
/* B949E0 802415A0 0C00A7E7 */  jal       add_vec2D_polar
/* B949E4 802415A4 E6200040 */   swc1     $f0, 0x40($s1)
/* B949E8 802415A8 862200A6 */  lh        $v0, 0xa6($s1)
/* B949EC 802415AC 44820000 */  mtc1      $v0, $f0
/* B949F0 802415B0 00000000 */  nop
/* B949F4 802415B4 46800020 */  cvt.s.w   $f0, $f0
/* B949F8 802415B8 080905A9 */  j         .L802416A4
/* B949FC 802415BC 4600A500 */   add.s    $f20, $f20, $f0
.L802415C0:
/* B94A00 802415C0 8EA20000 */  lw        $v0, ($s5)
/* B94A04 802415C4 3C014032 */  lui       $at, 0x4032
/* B94A08 802415C8 44811800 */  mtc1      $at, $f3
/* B94A0C 802415CC 44801000 */  mtc1      $zero, $f2
/* B94A10 802415D0 C440002C */  lwc1      $f0, 0x2c($v0)
/* B94A14 802415D4 C4460028 */  lwc1      $f6, 0x28($v0)
/* B94A18 802415D8 C4440030 */  lwc1      $f4, 0x30($v0)
/* B94A1C 802415DC 46000021 */  cvt.d.s   $f0, $f0
/* B94A20 802415E0 46220000 */  add.d     $f0, $f0, $f2
/* B94A24 802415E4 E7A60020 */  swc1      $f6, 0x20($sp)
/* B94A28 802415E8 E7A40028 */  swc1      $f4, 0x28($sp)
/* B94A2C 802415EC 46200020 */  cvt.s.d   $f0, $f0
/* B94A30 802415F0 E7A00024 */  swc1      $f0, 0x24($sp)
/* B94A34 802415F4 E7B40010 */  swc1      $f20, 0x10($sp)
/* B94A38 802415F8 E7B60014 */  swc1      $f22, 0x14($sp)
/* B94A3C 802415FC 862200A8 */  lh        $v0, 0xa8($s1)
/* B94A40 80241600 44820000 */  mtc1      $v0, $f0
/* B94A44 80241604 00000000 */  nop
/* B94A48 80241608 46800020 */  cvt.s.w   $f0, $f0
/* B94A4C 8024160C E7A00018 */  swc1      $f0, 0x18($sp)
/* B94A50 80241610 862200A6 */  lh        $v0, 0xa6($s1)
/* B94A54 80241614 27A60024 */  addiu     $a2, $sp, 0x24
/* B94A58 80241618 44820000 */  mtc1      $v0, $f0
/* B94A5C 8024161C 00000000 */  nop
/* B94A60 80241620 46800020 */  cvt.s.w   $f0, $f0
/* B94A64 80241624 E7A0001C */  swc1      $f0, 0x1c($sp)
/* B94A68 80241628 8E240080 */  lw        $a0, 0x80($s1)
/* B94A6C 8024162C 0C037711 */  jal       func_800DDC44
/* B94A70 80241630 27A70028 */   addiu    $a3, $sp, 0x28
/* B94A74 80241634 1040001F */  beqz      $v0, .L802416B4
/* B94A78 80241638 00000000 */   nop
/* B94A7C 8024163C 8FA60020 */  lw        $a2, 0x20($sp)
/* B94A80 80241640 8EA20000 */  lw        $v0, ($s5)
/* B94A84 80241644 8FA70028 */  lw        $a3, 0x28($sp)
/* B94A88 80241648 C44C0028 */  lwc1      $f12, 0x28($v0)
/* B94A8C 8024164C 0C00A7B5 */  jal       dist2D
/* B94A90 80241650 C44E0030 */   lwc1     $f14, 0x30($v0)
/* B94A94 80241654 46000506 */  mov.s     $f20, $f0
/* B94A98 80241658 8EA30000 */  lw        $v1, ($s5)
/* B94A9C 8024165C 862200A6 */  lh        $v0, 0xa6($s1)
/* B94AA0 80241660 4407C000 */  mfc1      $a3, $f24
/* B94AA4 80241664 44824000 */  mtc1      $v0, $f8
/* B94AA8 80241668 00000000 */  nop
/* B94AAC 8024166C 46804220 */  cvt.s.w   $f8, $f8
/* B94AB0 80241670 C4600028 */  lwc1      $f0, 0x28($v1)
/* B94AB4 80241674 44064000 */  mfc1      $a2, $f8
/* B94AB8 80241678 0200202D */  daddu     $a0, $s0, $zero
/* B94ABC 8024167C E6200038 */  swc1      $f0, 0x38($s1)
/* B94AC0 80241680 C4600030 */  lwc1      $f0, 0x30($v1)
/* B94AC4 80241684 0260282D */  daddu     $a1, $s3, $zero
/* B94AC8 80241688 0C00A7E7 */  jal       add_vec2D_polar
/* B94ACC 8024168C E6200040 */   swc1     $f0, 0x40($s1)
/* B94AD0 80241690 862200A6 */  lh        $v0, 0xa6($s1)
/* B94AD4 80241694 44820000 */  mtc1      $v0, $f0
/* B94AD8 80241698 00000000 */  nop
/* B94ADC 8024169C 46800020 */  cvt.s.w   $f0, $f0
/* B94AE0 802416A0 4600A500 */  add.s     $f20, $f20, $f0
.L802416A4:
/* B94AE4 802416A4 4406B000 */  mfc1      $a2, $f22
/* B94AE8 802416A8 4405A000 */  mfc1      $a1, $f20
/* B94AEC 802416AC 0C00EA95 */  jal       npc_move_heading
/* B94AF0 802416B0 0220202D */   daddu    $a0, $s1, $zero
.L802416B4:
/* B94AF4 802416B4 C6400008 */  lwc1      $f0, 8($s2)
/* B94AF8 802416B8 46800020 */  cvt.s.w   $f0, $f0
/* B94AFC 802416BC 44050000 */  mfc1      $a1, $f0
/* B94B00 802416C0 C640000C */  lwc1      $f0, 0xc($s2)
/* B94B04 802416C4 46800020 */  cvt.s.w   $f0, $f0
/* B94B08 802416C8 44060000 */  mfc1      $a2, $f0
/* B94B0C 802416CC C6200040 */  lwc1      $f0, 0x40($s1)
/* B94B10 802416D0 26300038 */  addiu     $s0, $s1, 0x38
/* B94B14 802416D4 E7A00010 */  swc1      $f0, 0x10($sp)
/* B94B18 802416D8 C6400010 */  lwc1      $f0, 0x10($s2)
/* B94B1C 802416DC 46800020 */  cvt.s.w   $f0, $f0
/* B94B20 802416E0 E7A00014 */  swc1      $f0, 0x14($sp)
/* B94B24 802416E4 C6400014 */  lwc1      $f0, 0x14($s2)
/* B94B28 802416E8 46800020 */  cvt.s.w   $f0, $f0
/* B94B2C 802416EC E7A00018 */  swc1      $f0, 0x18($sp)
/* B94B30 802416F0 8E440004 */  lw        $a0, 4($s2)
/* B94B34 802416F4 8E270038 */  lw        $a3, 0x38($s1)
/* B94B38 802416F8 0C0123F5 */  jal       is_point_within_region
/* B94B3C 802416FC 26330040 */   addiu    $s3, $s1, 0x40
/* B94B40 80241700 1040005A */  beqz      $v0, .L8024186C
/* B94B44 80241704 00000000 */   nop
/* B94B48 80241708 8E430004 */  lw        $v1, 4($s2)
/* B94B4C 8024170C 10600005 */  beqz      $v1, .L80241724
/* B94B50 80241710 24020001 */   addiu    $v0, $zero, 1
/* B94B54 80241714 10620029 */  beq       $v1, $v0, .L802417BC
/* B94B58 80241718 00000000 */   nop
/* B94B5C 8024171C 0809061B */  j         .L8024186C
/* B94B60 80241720 00000000 */   nop
.L80241724:
/* B94B64 80241724 C6480008 */  lwc1      $f8, 8($s2)
/* B94B68 80241728 46804220 */  cvt.s.w   $f8, $f8
/* B94B6C 8024172C 44064000 */  mfc1      $a2, $f8
/* B94B70 80241730 C648000C */  lwc1      $f8, 0xc($s2)
/* B94B74 80241734 46804220 */  cvt.s.w   $f8, $f8
/* B94B78 80241738 C62C0038 */  lwc1      $f12, 0x38($s1)
/* B94B7C 8024173C C62E0040 */  lwc1      $f14, 0x40($s1)
/* B94B80 80241740 44074000 */  mfc1      $a3, $f8
/* B94B84 80241744 0C00A7B5 */  jal       dist2D
/* B94B88 80241748 00000000 */   nop
/* B94B8C 8024174C C6420010 */  lwc1      $f2, 0x10($s2)
/* B94B90 80241750 468010A0 */  cvt.s.w   $f2, $f2
/* B94B94 80241754 4600103C */  c.lt.s    $f2, $f0
/* B94B98 80241758 00000000 */  nop
/* B94B9C 8024175C 45000043 */  bc1f      .L8024186C
/* B94BA0 80241760 E7A00038 */   swc1     $f0, 0x38($sp)
/* B94BA4 80241764 C64C0008 */  lwc1      $f12, 8($s2)
/* B94BA8 80241768 46806320 */  cvt.s.w   $f12, $f12
/* B94BAC 8024176C 8E260038 */  lw        $a2, 0x38($s1)
/* B94BB0 80241770 8E270040 */  lw        $a3, 0x40($s1)
/* B94BB4 80241774 C64E000C */  lwc1      $f14, 0xc($s2)
/* B94BB8 80241778 0C00A720 */  jal       atan2
/* B94BBC 8024177C 468073A0 */   cvt.s.w  $f14, $f14
/* B94BC0 80241780 0200202D */  daddu     $a0, $s0, $zero
/* B94BC4 80241784 44070000 */  mfc1      $a3, $f0
/* B94BC8 80241788 C6400008 */  lwc1      $f0, 8($s2)
/* B94BCC 8024178C 46800020 */  cvt.s.w   $f0, $f0
/* B94BD0 80241790 E6200038 */  swc1      $f0, 0x38($s1)
/* B94BD4 80241794 C640000C */  lwc1      $f0, 0xc($s2)
/* B94BD8 80241798 46800020 */  cvt.s.w   $f0, $f0
/* B94BDC 8024179C E6200040 */  swc1      $f0, 0x40($s1)
/* B94BE0 802417A0 C6480010 */  lwc1      $f8, 0x10($s2)
/* B94BE4 802417A4 46804220 */  cvt.s.w   $f8, $f8
/* B94BE8 802417A8 44064000 */  mfc1      $a2, $f8
/* B94BEC 802417AC 0C00A7E7 */  jal       add_vec2D_polar
/* B94BF0 802417B0 0260282D */   daddu    $a1, $s3, $zero
/* B94BF4 802417B4 0809061B */  j         .L8024186C
/* B94BF8 802417B8 00000000 */   nop
.L802417BC:
/* B94BFC 802417BC 8E420008 */  lw        $v0, 8($s2)
/* B94C00 802417C0 8E430010 */  lw        $v1, 0x10($s2)
/* B94C04 802417C4 C6200038 */  lwc1      $f0, 0x38($s1)
/* B94C08 802417C8 00431021 */  addu      $v0, $v0, $v1
/* B94C0C 802417CC 44821000 */  mtc1      $v0, $f2
/* B94C10 802417D0 00000000 */  nop
/* B94C14 802417D4 468010A0 */  cvt.s.w   $f2, $f2
/* B94C18 802417D8 4600103C */  c.lt.s    $f2, $f0
/* B94C1C 802417DC 00000000 */  nop
/* B94C20 802417E0 45030001 */  bc1tl     .L802417E8
/* B94C24 802417E4 E6220038 */   swc1     $f2, 0x38($s1)
.L802417E8:
/* B94C28 802417E8 8E420008 */  lw        $v0, 8($s2)
/* B94C2C 802417EC 8E430010 */  lw        $v1, 0x10($s2)
/* B94C30 802417F0 C6200038 */  lwc1      $f0, 0x38($s1)
/* B94C34 802417F4 00431023 */  subu      $v0, $v0, $v1
/* B94C38 802417F8 44821000 */  mtc1      $v0, $f2
/* B94C3C 802417FC 00000000 */  nop
/* B94C40 80241800 468010A0 */  cvt.s.w   $f2, $f2
/* B94C44 80241804 4602003C */  c.lt.s    $f0, $f2
/* B94C48 80241808 00000000 */  nop
/* B94C4C 8024180C 45030001 */  bc1tl     .L80241814
/* B94C50 80241810 E6220038 */   swc1     $f2, 0x38($s1)
.L80241814:
/* B94C54 80241814 8E42000C */  lw        $v0, 0xc($s2)
/* B94C58 80241818 8E430014 */  lw        $v1, 0x14($s2)
/* B94C5C 8024181C C6200040 */  lwc1      $f0, 0x40($s1)
/* B94C60 80241820 00431021 */  addu      $v0, $v0, $v1
/* B94C64 80241824 44821000 */  mtc1      $v0, $f2
/* B94C68 80241828 00000000 */  nop
/* B94C6C 8024182C 468010A0 */  cvt.s.w   $f2, $f2
/* B94C70 80241830 4600103C */  c.lt.s    $f2, $f0
/* B94C74 80241834 00000000 */  nop
/* B94C78 80241838 45030001 */  bc1tl     .L80241840
/* B94C7C 8024183C E6220040 */   swc1     $f2, 0x40($s1)
.L80241840:
/* B94C80 80241840 8E42000C */  lw        $v0, 0xc($s2)
/* B94C84 80241844 8E430014 */  lw        $v1, 0x14($s2)
/* B94C88 80241848 C6200040 */  lwc1      $f0, 0x40($s1)
/* B94C8C 8024184C 00431023 */  subu      $v0, $v0, $v1
/* B94C90 80241850 44821000 */  mtc1      $v0, $f2
/* B94C94 80241854 00000000 */  nop
/* B94C98 80241858 468010A0 */  cvt.s.w   $f2, $f2
/* B94C9C 8024185C 4602003C */  c.lt.s    $f0, $f2
/* B94CA0 80241860 00000000 */  nop
/* B94CA4 80241864 45030001 */  bc1tl     .L8024186C
/* B94CA8 80241868 E6220040 */   swc1     $f2, 0x40($s1)
.L8024186C:
/* B94CAC 8024186C 16E0001F */  bnez      $s7, .L802418EC
/* B94CB0 80241870 00000000 */   nop
/* B94CB4 80241874 8E220000 */  lw        $v0, ($s1)
/* B94CB8 80241878 30420008 */  andi      $v0, $v0, 8
/* B94CBC 8024187C 10400003 */  beqz      $v0, .L8024188C
/* B94CC0 80241880 27A50020 */   addiu    $a1, $sp, 0x20
/* B94CC4 80241884 13C00019 */  beqz      $fp, .L802418EC
/* B94CC8 80241888 00000000 */   nop
.L8024188C:
/* B94CCC 8024188C 27A60024 */  addiu     $a2, $sp, 0x24
/* B94CD0 80241890 27A20038 */  addiu     $v0, $sp, 0x38
/* B94CD4 80241894 C6220038 */  lwc1      $f2, 0x38($s1)
/* B94CD8 80241898 C620003C */  lwc1      $f0, 0x3c($s1)
/* B94CDC 8024189C 3C0143C8 */  lui       $at, 0x43c8
/* B94CE0 802418A0 44813000 */  mtc1      $at, $f6
/* B94CE4 802418A4 46000021 */  cvt.d.s   $f0, $f0
/* B94CE8 802418A8 E7A20020 */  swc1      $f2, 0x20($sp)
/* B94CEC 802418AC 3C018024 */  lui       $at, %hi(D_802447B0_B97BF0)
/* B94CF0 802418B0 D42247B0 */  ldc1      $f2, %lo(D_802447B0_B97BF0)($at)
/* B94CF4 802418B4 C6240040 */  lwc1      $f4, 0x40($s1)
/* B94CF8 802418B8 46220000 */  add.d     $f0, $f0, $f2
/* B94CFC 802418BC E7A60038 */  swc1      $f6, 0x38($sp)
/* B94D00 802418C0 E7A40028 */  swc1      $f4, 0x28($sp)
/* B94D04 802418C4 46200020 */  cvt.s.d   $f0, $f0
/* B94D08 802418C8 E7A00024 */  swc1      $f0, 0x24($sp)
/* B94D0C 802418CC AFA20010 */  sw        $v0, 0x10($sp)
/* B94D10 802418D0 8E240080 */  lw        $a0, 0x80($s1)
/* B94D14 802418D4 0C0372DF */  jal       func_800DCB7C
/* B94D18 802418D8 27A70028 */   addiu    $a3, $sp, 0x28
/* B94D1C 802418DC 10400003 */  beqz      $v0, .L802418EC
/* B94D20 802418E0 00000000 */   nop
/* B94D24 802418E4 C7A00024 */  lwc1      $f0, 0x24($sp)
/* B94D28 802418E8 E620003C */  swc1      $f0, 0x3c($s1)
.L802418EC:
/* B94D2C 802418EC C62C0038 */  lwc1      $f12, 0x38($s1)
/* B94D30 802418F0 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* B94D34 802418F4 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* B94D38 802418F8 C62E0040 */  lwc1      $f14, 0x40($s1)
/* B94D3C 802418FC 8C460028 */  lw        $a2, 0x28($v0)
/* B94D40 80241900 0C00A720 */  jal       atan2
/* B94D44 80241904 8C470030 */   lw       $a3, 0x30($v0)
/* B94D48 80241908 0220202D */  daddu     $a0, $s1, $zero
/* B94D4C 8024190C 24050321 */  addiu     $a1, $zero, 0x321
/* B94D50 80241910 0000302D */  daddu     $a2, $zero, $zero
/* B94D54 80241914 0C012530 */  jal       func_800494C0
/* B94D58 80241918 E620000C */   swc1     $f0, 0xc($s1)
/* B94D5C 8024191C 8EC200CC */  lw        $v0, 0xcc($s6)
/* B94D60 80241920 8C420024 */  lw        $v0, 0x24($v0)
/* B94D64 80241924 AE220028 */  sw        $v0, 0x28($s1)
/* B94D68 80241928 96C20096 */  lhu       $v0, 0x96($s6)
/* B94D6C 8024192C A622008E */  sh        $v0, 0x8e($s1)
/* B94D70 80241930 8FA80080 */  lw        $t0, 0x80($sp)
/* B94D74 80241934 2402000B */  addiu     $v0, $zero, 0xb
/* B94D78 80241938 AD020070 */  sw        $v0, 0x70($t0)
.L8024193C:
/* B94D7C 8024193C 8FBF0064 */  lw        $ra, 0x64($sp)
/* B94D80 80241940 8FBE0060 */  lw        $fp, 0x60($sp)
/* B94D84 80241944 8FB7005C */  lw        $s7, 0x5c($sp)
/* B94D88 80241948 8FB60058 */  lw        $s6, 0x58($sp)
/* B94D8C 8024194C 8FB50054 */  lw        $s5, 0x54($sp)
/* B94D90 80241950 8FB40050 */  lw        $s4, 0x50($sp)
/* B94D94 80241954 8FB3004C */  lw        $s3, 0x4c($sp)
/* B94D98 80241958 8FB20048 */  lw        $s2, 0x48($sp)
/* B94D9C 8024195C 8FB10044 */  lw        $s1, 0x44($sp)
/* B94DA0 80241960 8FB00040 */  lw        $s0, 0x40($sp)
/* B94DA4 80241964 D7B80078 */  ldc1      $f24, 0x78($sp)
/* B94DA8 80241968 D7B60070 */  ldc1      $f22, 0x70($sp)
/* B94DAC 8024196C D7B40068 */  ldc1      $f20, 0x68($sp)
/* B94DB0 80241970 03E00008 */  jr        $ra
/* B94DB4 80241974 27BD0080 */   addiu    $sp, $sp, 0x80
