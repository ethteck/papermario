.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80041024
/* 1C424 80041024 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 1C428 80041028 AFB50024 */  sw        $s5, 0x24($sp)
/* 1C42C 8004102C 3C15800B */  lui       $s5, %hi(D_800B0EF0)
/* 1C430 80041030 26B50EF0 */  addiu     $s5, $s5, %lo(D_800B0EF0)
/* 1C434 80041034 AFB7002C */  sw        $s7, 0x2c($sp)
/* 1C438 80041038 3C178011 */  lui       $s7, %hi(D_8010F450)
/* 1C43C 8004103C 26F7F450 */  addiu     $s7, $s7, %lo(D_8010F450)
/* 1C440 80041040 3C04800A */  lui       $a0, %hi(D_8009A5B0)
/* 1C444 80041044 2484A5B0 */  addiu     $a0, $a0, %lo(D_8009A5B0)
/* 1C448 80041048 AFBF0030 */  sw        $ra, 0x30($sp)
/* 1C44C 8004104C AFB60028 */  sw        $s6, 0x28($sp)
/* 1C450 80041050 AFB40020 */  sw        $s4, 0x20($sp)
/* 1C454 80041054 AFB3001C */  sw        $s3, 0x1c($sp)
/* 1C458 80041058 AFB20018 */  sw        $s2, 0x18($sp)
/* 1C45C 8004105C AFB10014 */  sw        $s1, 0x14($sp)
/* 1C460 80041060 AFB00010 */  sw        $s0, 0x10($sp)
/* 1C464 80041064 8C830000 */  lw        $v1, ($a0)
/* 1C468 80041068 24050001 */  addiu     $a1, $zero, 1
/* 1C46C 8004106C 106500CF */  beq       $v1, $a1, .L800413AC
/* 1C470 80041070 28620002 */   slti     $v0, $v1, 2
/* 1C474 80041074 50400005 */  beql      $v0, $zero, .L8004108C
/* 1C478 80041078 24020002 */   addiu    $v0, $zero, 2
/* 1C47C 8004107C 10600009 */  beqz      $v1, .L800410A4
/* 1C480 80041080 2402FFFF */   addiu    $v0, $zero, -1
/* 1C484 80041084 0801057E */  j         .L800415F8
/* 1C488 80041088 00000000 */   nop
.L8004108C:
/* 1C48C 8004108C 1062011C */  beq       $v1, $v0, .L80041500
/* 1C490 80041090 24020003 */   addiu    $v0, $zero, 3
/* 1C494 80041094 1062014E */  beq       $v1, $v0, .L800415D0
/* 1C498 80041098 24020004 */   addiu    $v0, $zero, 4
/* 1C49C 8004109C 0801057E */  j         .L800415F8
/* 1C4A0 800410A0 00000000 */   nop
.L800410A4:
/* 1C4A4 800410A4 AEA00090 */  sw        $zero, 0x90($s5)
/* 1C4A8 800410A8 AEA50094 */  sw        $a1, 0x94($s5)
/* 1C4AC 800410AC AEA50098 */  sw        $a1, 0x98($s5)
/* 1C4B0 800410B0 A2A20008 */  sb        $v0, 8($s5)
/* 1C4B4 800410B4 3C01800A */  lui       $at, %hi(gCurrentCamID)
/* 1C4B8 800410B8 A020A634 */  sb        $zero, %lo(gCurrentCamID)($at)
/* 1C4BC 800410BC 3C018007 */  lui       $at, %hi(D_80077C10)
/* 1C4C0 800410C0 AC207C10 */  sw        $zero, %lo(D_80077C10)($at)
/* 1C4C4 800410C4 0C0B117A */  jal       func_802C45E8
/* 1C4C8 800410C8 24040010 */   addiu    $a0, $zero, 0x10
/* 1C4CC 800410CC 82A2001C */  lb        $v0, 0x1c($s5)
/* 1C4D0 800410D0 18400024 */  blez      $v0, .L80041164
/* 1C4D4 800410D4 0000982D */   daddu    $s3, $zero, $zero
/* 1C4D8 800410D8 02A0B02D */  daddu     $s6, $s5, $zero
.L800410DC:
/* 1C4DC 800410DC 8ED40028 */  lw        $s4, 0x28($s6)
/* 1C4E0 800410E0 1280001B */  beqz      $s4, .L80041150
/* 1C4E4 800410E4 00000000 */   nop
/* 1C4E8 800410E8 8E820000 */  lw        $v0, ($s4)
/* 1C4EC 800410EC 18400018 */  blez      $v0, .L80041150
/* 1C4F0 800410F0 0000882D */   daddu    $s1, $zero, $zero
/* 1C4F4 800410F4 0280902D */  daddu     $s2, $s4, $zero
.L800410F8:
/* 1C4F8 800410F8 8E500004 */  lw        $s0, 4($s2)
/* 1C4FC 800410FC 1200000F */  beqz      $s0, .L8004113C
/* 1C500 80041100 00000000 */   nop
/* 1C504 80041104 8E020000 */  lw        $v0, ($s0)
/* 1C508 80041108 30420020 */  andi      $v0, $v0, 0x20
/* 1C50C 8004110C 1440000B */  bnez      $v0, .L8004113C
/* 1C510 80041110 00000000 */   nop
/* 1C514 80041114 8E02003C */  lw        $v0, 0x3c($s0)
/* 1C518 80041118 10400003 */  beqz      $v0, .L80041128
/* 1C51C 8004111C 00000000 */   nop
/* 1C520 80041120 0C0B1108 */  jal       func_802C4420
/* 1C524 80041124 8E040054 */   lw       $a0, 0x54($s0)
.L80041128:
/* 1C528 80041128 8E020044 */  lw        $v0, 0x44($s0)
/* 1C52C 8004112C 10400003 */  beqz      $v0, .L8004113C
/* 1C530 80041130 00000000 */   nop
/* 1C534 80041134 0C0B1108 */  jal       func_802C4420
/* 1C538 80041138 8E04005C */   lw       $a0, 0x5c($s0)
.L8004113C:
/* 1C53C 8004113C 8E820000 */  lw        $v0, ($s4)
/* 1C540 80041140 26310001 */  addiu     $s1, $s1, 1
/* 1C544 80041144 0222102A */  slt       $v0, $s1, $v0
/* 1C548 80041148 1440FFEB */  bnez      $v0, .L800410F8
/* 1C54C 8004114C 26520004 */   addiu    $s2, $s2, 4
.L80041150:
/* 1C550 80041150 82A2001C */  lb        $v0, 0x1c($s5)
/* 1C554 80041154 26730001 */  addiu     $s3, $s3, 1
/* 1C558 80041158 0262102A */  slt       $v0, $s3, $v0
/* 1C55C 8004115C 1440FFDF */  bnez      $v0, .L800410DC
/* 1C560 80041160 26D60004 */   addiu    $s6, $s6, 4
.L80041164:
/* 1C564 80041164 8EB0008C */  lw        $s0, 0x8c($s5)
/* 1C568 80041168 8E020000 */  lw        $v0, ($s0)
/* 1C56C 8004116C 3C030010 */  lui       $v1, 0x10
/* 1C570 80041170 00431024 */  and       $v0, $v0, $v1
/* 1C574 80041174 1040000C */  beqz      $v0, .L800411A8
/* 1C578 80041178 00000000 */   nop
/* 1C57C 8004117C 82A20012 */  lb        $v0, 0x12($s5)
/* 1C580 80041180 14400009 */  bnez      $v0, .L800411A8
/* 1C584 80041184 00000000 */   nop
/* 1C588 80041188 AEA00094 */  sw        $zero, 0x94($s5)
/* 1C58C 8004118C 0C03AD7B */  jal       func_800EB5EC
/* 1C590 80041190 AEA0009C */   sw       $zero, 0x9c($s5)
/* 1C594 80041194 24020003 */  addiu     $v0, $zero, 3
/* 1C598 80041198 3C01800A */  lui       $at, %hi(D_8009A5B0)
/* 1C59C 8004119C AC22A5B0 */  sw        $v0, %lo(D_8009A5B0)($at)
/* 1C5A0 800411A0 0801057E */  j         .L800415F8
/* 1C5A4 800411A4 00000000 */   nop
.L800411A8:
/* 1C5A8 800411A8 3C028007 */  lui       $v0, %hi(D_8007417C)
/* 1C5AC 800411AC 8C42417C */  lw        $v0, %lo(D_8007417C)($v0)
/* 1C5B0 800411B0 80420074 */  lb        $v0, 0x74($v0)
/* 1C5B4 800411B4 24110002 */  addiu     $s1, $zero, 2
/* 1C5B8 800411B8 14510009 */  bne       $v0, $s1, .L800411E0
/* 1C5BC 800411BC 24120001 */   addiu    $s2, $zero, 1
/* 1C5C0 800411C0 2402000A */  addiu     $v0, $zero, 0xa
/* 1C5C4 800411C4 AEA00094 */  sw        $zero, 0x94($s5)
/* 1C5C8 800411C8 0C03AD7B */  jal       func_800EB5EC
/* 1C5CC 800411CC AEA2009C */   sw       $v0, 0x9c($s5)
/* 1C5D0 800411D0 3C01800A */  lui       $at, %hi(D_8009A5B0)
/* 1C5D4 800411D4 AC31A5B0 */  sw        $s1, %lo(D_8009A5B0)($at)
/* 1C5D8 800411D8 0801057E */  j         .L800415F8
/* 1C5DC 800411DC 00000000 */   nop
.L800411E0:
/* 1C5E0 800411E0 82A30005 */  lb        $v1, 5($s5)
/* 1C5E4 800411E4 8EB0008C */  lw        $s0, 0x8c($s5)
/* 1C5E8 800411E8 1072001D */  beq       $v1, $s2, .L80041260
/* 1C5EC 800411EC 24020003 */   addiu    $v0, $zero, 3
/* 1C5F0 800411F0 1062001B */  beq       $v1, $v0, .L80041260
/* 1C5F4 800411F4 00000000 */   nop
/* 1C5F8 800411F8 0C03A73A */  jal       func_800E9CE8
/* 1C5FC 800411FC 0040202D */   daddu    $a0, $v0, $zero
/* 1C600 80041200 10400016 */  beqz      $v0, .L8004125C
/* 1C604 80041204 00000000 */   nop
/* 1C608 80041208 8E020018 */  lw        $v0, 0x18($s0)
/* 1C60C 8004120C 82E30009 */  lb        $v1, 9($s7)
/* 1C610 80041210 84420028 */  lh        $v0, 0x28($v0)
/* 1C614 80041214 0062182A */  slt       $v1, $v1, $v0
/* 1C618 80041218 14600010 */  bnez      $v1, .L8004125C
/* 1C61C 8004121C 00000000 */   nop
/* 1C620 80041220 8E020000 */  lw        $v0, ($s0)
/* 1C624 80041224 30420040 */  andi      $v0, $v0, 0x40
/* 1C628 80041228 1440000C */  bnez      $v0, .L8004125C
/* 1C62C 8004122C 00000000 */   nop
/* 1C630 80041230 82A20012 */  lb        $v0, 0x12($s5)
/* 1C634 80041234 14400009 */  bnez      $v0, .L8004125C
/* 1C638 80041238 2402000A */   addiu    $v0, $zero, 0xa
/* 1C63C 8004123C AEA00094 */  sw        $zero, 0x94($s5)
/* 1C640 80041240 AEA2009C */  sw        $v0, 0x9c($s5)
/* 1C644 80041244 3C018007 */  lui       $at, %hi(D_80077C10)
/* 1C648 80041248 AC327C10 */  sw        $s2, %lo(D_80077C10)($at)
/* 1C64C 8004124C 3C01800A */  lui       $at, %hi(D_8009A5B0)
/* 1C650 80041250 AC31A5B0 */  sw        $s1, %lo(D_8009A5B0)($at)
/* 1C654 80041254 0801057E */  j         .L800415F8
/* 1C658 80041258 00000000 */   nop
.L8004125C:
/* 1C65C 8004125C 8EB0008C */  lw        $s0, 0x8c($s5)
.L80041260:
/* 1C660 80041260 0C03A73A */  jal       func_800E9CE8
/* 1C664 80041264 2404002A */   addiu    $a0, $zero, 0x2a
/* 1C668 80041268 1040000E */  beqz      $v0, .L800412A4
/* 1C66C 8004126C 24020003 */   addiu    $v0, $zero, 3
/* 1C670 80041270 8E020018 */  lw        $v0, 0x18($s0)
/* 1C674 80041274 82E30009 */  lb        $v1, 9($s7)
/* 1C678 80041278 84420028 */  lh        $v0, 0x28($v0)
/* 1C67C 8004127C 0062182A */  slt       $v1, $v1, $v0
/* 1C680 80041280 14600008 */  bnez      $v1, .L800412A4
/* 1C684 80041284 24020003 */   addiu    $v0, $zero, 3
/* 1C688 80041288 8E020000 */  lw        $v0, ($s0)
/* 1C68C 8004128C 30420040 */  andi      $v0, $v0, 0x40
/* 1C690 80041290 14400004 */  bnez      $v0, .L800412A4
/* 1C694 80041294 24020003 */   addiu    $v0, $zero, 3
/* 1C698 80041298 82A20012 */  lb        $v0, 0x12($s5)
/* 1C69C 8004129C 10400015 */  beqz      $v0, .L800412F4
/* 1C6A0 800412A0 24020003 */   addiu    $v0, $zero, 3
.L800412A4:
/* 1C6A4 800412A4 82A30005 */  lb        $v1, 5($s5)
/* 1C6A8 800412A8 1462001D */  bne       $v1, $v0, .L80041320
/* 1C6AC 800412AC 8EB0008C */   lw       $s0, 0x8c($s5)
/* 1C6B0 800412B0 0C03A73A */  jal       func_800E9CE8
/* 1C6B4 800412B4 24040028 */   addiu    $a0, $zero, 0x28
/* 1C6B8 800412B8 10400019 */  beqz      $v0, .L80041320
/* 1C6BC 800412BC 00000000 */   nop
/* 1C6C0 800412C0 8E020018 */  lw        $v0, 0x18($s0)
/* 1C6C4 800412C4 82E30009 */  lb        $v1, 9($s7)
/* 1C6C8 800412C8 84420028 */  lh        $v0, 0x28($v0)
/* 1C6CC 800412CC 0062182A */  slt       $v1, $v1, $v0
/* 1C6D0 800412D0 14600013 */  bnez      $v1, .L80041320
/* 1C6D4 800412D4 00000000 */   nop
/* 1C6D8 800412D8 8E020000 */  lw        $v0, ($s0)
/* 1C6DC 800412DC 30420040 */  andi      $v0, $v0, 0x40
/* 1C6E0 800412E0 1440000F */  bnez      $v0, .L80041320
/* 1C6E4 800412E4 00000000 */   nop
/* 1C6E8 800412E8 82A20012 */  lb        $v0, 0x12($s5)
/* 1C6EC 800412EC 1440000C */  bnez      $v0, .L80041320
/* 1C6F0 800412F0 00000000 */   nop
.L800412F4:
/* 1C6F4 800412F4 2402000A */  addiu     $v0, $zero, 0xa
/* 1C6F8 800412F8 AEA2009C */  sw        $v0, 0x9c($s5)
/* 1C6FC 800412FC 24020001 */  addiu     $v0, $zero, 1
/* 1C700 80041300 3C018007 */  lui       $at, %hi(D_80077C10)
/* 1C704 80041304 AC227C10 */  sw        $v0, %lo(D_80077C10)($at)
/* 1C708 80041308 24020002 */  addiu     $v0, $zero, 2
/* 1C70C 8004130C AEA00094 */  sw        $zero, 0x94($s5)
/* 1C710 80041310 3C01800A */  lui       $at, %hi(D_8009A5B0)
/* 1C714 80041314 AC22A5B0 */  sw        $v0, %lo(D_8009A5B0)($at)
/* 1C718 80041318 0801057E */  j         .L800415F8
/* 1C71C 8004131C 00000000 */   nop
.L80041320:
/* 1C720 80041320 8EA40014 */  lw        $a0, 0x14($s5)
/* 1C724 80041324 04810015 */  bgez      $a0, .L8004137C
/* 1C728 80041328 0000282D */   daddu    $a1, $zero, $zero
/* 1C72C 8004132C 82A30004 */  lb        $v1, 4($s5)
/* 1C730 80041330 24020001 */  addiu     $v0, $zero, 1
/* 1C734 80041334 1062000B */  beq       $v1, $v0, .L80041364
/* 1C738 80041338 28620002 */   slti     $v0, $v1, 2
/* 1C73C 8004133C 10400005 */  beqz      $v0, .L80041354
/* 1C740 80041340 24020002 */   addiu    $v0, $zero, 2
/* 1C744 80041344 1060000D */  beqz      $v1, .L8004137C
/* 1C748 80041348 24040002 */   addiu    $a0, $zero, 2
/* 1C74C 8004134C 080104E1 */  j         .L80041384
/* 1C750 80041350 00000000 */   nop
.L80041354:
/* 1C754 80041354 10620006 */  beq       $v1, $v0, .L80041370
/* 1C758 80041358 24040002 */   addiu    $a0, $zero, 2
/* 1C75C 8004135C 080104E1 */  j         .L80041384
/* 1C760 80041360 00000000 */   nop
.L80041364:
/* 1C764 80041364 24040002 */  addiu     $a0, $zero, 2
/* 1C768 80041368 080104DF */  j         .L8004137C
/* 1C76C 8004136C 24050001 */   addiu    $a1, $zero, 1
.L80041370:
/* 1C770 80041370 080104DF */  j         .L8004137C
/* 1C774 80041374 0080282D */   daddu    $a1, $a0, $zero
/* 1C778 80041378 0000282D */  daddu     $a1, $zero, $zero
.L8004137C:
/* 1C77C 8004137C 0C05400F */  jal       func_8015003C
/* 1C780 80041380 00000000 */   nop
.L80041384:
/* 1C784 80041384 0C053FEA */  jal       func_8014FFA8
/* 1C788 80041388 00000000 */   nop
/* 1C78C 8004138C 24020001 */  addiu     $v0, $zero, 1
/* 1C790 80041390 3C01800A */  lui       $at, %hi(gCurrentCamID)
/* 1C794 80041394 A022A634 */  sb        $v0, %lo(gCurrentCamID)($at)
/* 1C798 80041398 2402000A */  addiu     $v0, $zero, 0xa
/* 1C79C 8004139C AEA2009C */  sw        $v0, 0x9c($s5)
/* 1C7A0 800413A0 24020001 */  addiu     $v0, $zero, 1
/* 1C7A4 800413A4 3C01800A */  lui       $at, %hi(D_8009A5B0)
/* 1C7A8 800413A8 AC22A5B0 */  sw        $v0, %lo(D_8009A5B0)($at)
.L800413AC:
/* 1C7AC 800413AC 8EA30090 */  lw        $v1, 0x90($s5)
/* 1C7B0 800413B0 240200FF */  addiu     $v0, $zero, 0xff
/* 1C7B4 800413B4 14620090 */  bne       $v1, $v0, .L800415F8
/* 1C7B8 800413B8 00000000 */   nop
/* 1C7BC 800413BC 8EA2009C */  lw        $v0, 0x9c($s5)
/* 1C7C0 800413C0 14400052 */  bnez      $v0, .L8004150C
/* 1C7C4 800413C4 2442FFFF */   addiu    $v0, $v0, -1
/* 1C7C8 800413C8 8EB40088 */  lw        $s4, 0x88($s5)
/* 1C7CC 800413CC 8E820000 */  lw        $v0, ($s4)
/* 1C7D0 800413D0 18400019 */  blez      $v0, .L80041438
/* 1C7D4 800413D4 0000982D */   daddu    $s3, $zero, $zero
/* 1C7D8 800413D8 0280882D */  daddu     $s1, $s4, $zero
.L800413DC:
/* 1C7DC 800413DC 8E300004 */  lw        $s0, 4($s1)
/* 1C7E0 800413E0 12000010 */  beqz      $s0, .L80041424
/* 1C7E4 800413E4 00000000 */   nop
/* 1C7E8 800413E8 8E030000 */  lw        $v1, ($s0)
/* 1C7EC 800413EC 30620008 */  andi      $v0, $v1, 8
/* 1C7F0 800413F0 10400004 */  beqz      $v0, .L80041404
/* 1C7F4 800413F4 30620020 */   andi     $v0, $v1, 0x20
/* 1C7F8 800413F8 8EA2008C */  lw        $v0, 0x8c($s5)
/* 1C7FC 800413FC 16020009 */  bne       $s0, $v0, .L80041424
/* 1C800 80041400 30620020 */   andi     $v0, $v1, 0x20
.L80041404:
/* 1C804 80041404 14400007 */  bnez      $v0, .L80041424
/* 1C808 80041408 00000000 */   nop
/* 1C80C 8004140C 8E020040 */  lw        $v0, 0x40($s0)
/* 1C810 80041410 10400004 */  beqz      $v0, .L80041424
/* 1C814 80041414 00000000 */   nop
/* 1C818 80041418 0C0B102B */  jal       func_802C40AC
/* 1C81C 8004141C 8E040058 */   lw       $a0, 0x58($s0)
/* 1C820 80041420 AE000040 */  sw        $zero, 0x40($s0)
.L80041424:
/* 1C824 80041424 8E820000 */  lw        $v0, ($s4)
/* 1C828 80041428 26730001 */  addiu     $s3, $s3, 1
/* 1C82C 8004142C 0262102A */  slt       $v0, $s3, $v0
/* 1C830 80041430 1440FFEA */  bnez      $v0, .L800413DC
/* 1C834 80041434 26310004 */   addiu    $s1, $s1, 4
.L80041438:
/* 1C838 80041438 0C03AD7B */  jal       func_800EB5EC
/* 1C83C 8004143C 00000000 */   nop
/* 1C840 80041440 8EB0008C */  lw        $s0, 0x8c($s5)
/* 1C844 80041444 A2A000A0 */  sb        $zero, 0xa0($s5)
/* 1C848 80041448 A6A000A2 */  sh        $zero, 0xa2($s5)
/* 1C84C 8004144C 920200B5 */  lbu       $v0, 0xb5($s0)
/* 1C850 80041450 2404002D */  addiu     $a0, $zero, 0x2d
/* 1C854 80041454 0C03A73A */  jal       func_800E9CE8
/* 1C858 80041458 A2A20010 */   sb       $v0, 0x10($s5)
/* 1C85C 8004145C 10400008 */  beqz      $v0, .L80041480
/* 1C860 80041460 00000000 */   nop
/* 1C864 80041464 82A30005 */  lb        $v1, 5($s5)
/* 1C868 80041468 24020003 */  addiu     $v0, $zero, 3
/* 1C86C 8004146C 14620004 */  bne       $v1, $v0, .L80041480
/* 1C870 80041470 00000000 */   nop
/* 1C874 80041474 24020004 */  addiu     $v0, $zero, 4
/* 1C878 80041478 A2A200A0 */  sb        $v0, 0xa0($s5)
/* 1C87C 8004147C A6A300A2 */  sh        $v1, 0xa2($s5)
.L80041480:
/* 1C880 80041480 0C053B47 */  jal       func_8014ED1C
/* 1C884 80041484 24042111 */   addiu    $a0, $zero, 0x2111
/* 1C888 80041488 0C053B47 */  jal       func_8014ED1C
/* 1C88C 8004148C 24042112 */   addiu    $a0, $zero, 0x2112
/* 1C890 80041490 0C053B47 */  jal       func_8014ED1C
/* 1C894 80041494 24042113 */   addiu    $a0, $zero, 0x2113
/* 1C898 80041498 0C053B47 */  jal       func_8014ED1C
/* 1C89C 8004149C 24042114 */   addiu    $a0, $zero, 0x2114
/* 1C8A0 800414A0 0C01CB2F */  jal       func_80072CBC
/* 1C8A4 800414A4 0000202D */   daddu    $a0, $zero, $zero
/* 1C8A8 800414A8 86840046 */  lh        $a0, 0x46($s4)
/* 1C8AC 800414AC 0C01CB2B */  jal       func_80072CAC
/* 1C8B0 800414B0 00000000 */   nop
/* 1C8B4 800414B4 0C01CB1C */  jal       func_80072C70
/* 1C8B8 800414B8 86840044 */   lh       $a0, 0x44($s4)
/* 1C8BC 800414BC 0000202D */  daddu     $a0, $zero, $zero
/* 1C8C0 800414C0 3C05437F */  lui       $a1, 0x437f
/* 1C8C4 800414C4 24020001 */  addiu     $v0, $zero, 1
/* 1C8C8 800414C8 A2A20007 */  sb        $v0, 7($s5)
/* 1C8CC 800414CC 240200FF */  addiu     $v0, $zero, 0xff
/* 1C8D0 800414D0 A2A00008 */  sb        $zero, 8($s5)
/* 1C8D4 800414D4 A2A0000B */  sb        $zero, 0xb($s5)
/* 1C8D8 800414D8 A2A0000C */  sb        $zero, 0xc($s5)
/* 1C8DC 800414DC A6A0000E */  sh        $zero, 0xe($s5)
/* 1C8E0 800414E0 AEA00098 */  sw        $zero, 0x98($s5)
/* 1C8E4 800414E4 0C04F38E */  jal       func_8013CE38
/* 1C8E8 800414E8 AEA20090 */   sw       $v0, 0x90($s5)
/* 1C8EC 800414EC 24020005 */  addiu     $v0, $zero, 5
/* 1C8F0 800414F0 3C01800A */  lui       $at, %hi(D_8009A5E0)
/* 1C8F4 800414F4 AC22A5E0 */  sw        $v0, %lo(D_8009A5E0)($at)
/* 1C8F8 800414F8 0801056E */  j         .L800415B8
/* 1C8FC 800414FC 24020001 */   addiu    $v0, $zero, 1
.L80041500:
/* 1C900 80041500 8EA2009C */  lw        $v0, 0x9c($s5)
/* 1C904 80041504 10400003 */  beqz      $v0, .L80041514
/* 1C908 80041508 2442FFFF */   addiu    $v0, $v0, -1
.L8004150C:
/* 1C90C 8004150C 0801057E */  j         .L800415F8
/* 1C910 80041510 AEA2009C */   sw       $v0, 0x9c($s5)
.L80041514:
/* 1C914 80041514 8EB40088 */  lw        $s4, 0x88($s5)
/* 1C918 80041518 8E820000 */  lw        $v0, ($s4)
/* 1C91C 8004151C 18400019 */  blez      $v0, .L80041584
/* 1C920 80041520 0000982D */   daddu    $s3, $zero, $zero
/* 1C924 80041524 0280882D */  daddu     $s1, $s4, $zero
.L80041528:
/* 1C928 80041528 8E300004 */  lw        $s0, 4($s1)
/* 1C92C 8004152C 12000010 */  beqz      $s0, .L80041570
/* 1C930 80041530 00000000 */   nop
/* 1C934 80041534 8E030000 */  lw        $v1, ($s0)
/* 1C938 80041538 30620008 */  andi      $v0, $v1, 8
/* 1C93C 8004153C 10400004 */  beqz      $v0, .L80041550
/* 1C940 80041540 30620020 */   andi     $v0, $v1, 0x20
/* 1C944 80041544 8EA2008C */  lw        $v0, 0x8c($s5)
/* 1C948 80041548 16020009 */  bne       $s0, $v0, .L80041570
/* 1C94C 8004154C 30620020 */   andi     $v0, $v1, 0x20
.L80041550:
/* 1C950 80041550 14400007 */  bnez      $v0, .L80041570
/* 1C954 80041554 00000000 */   nop
/* 1C958 80041558 8E020040 */  lw        $v0, 0x40($s0)
/* 1C95C 8004155C 10400004 */  beqz      $v0, .L80041570
/* 1C960 80041560 00000000 */   nop
/* 1C964 80041564 0C0B102B */  jal       func_802C40AC
/* 1C968 80041568 8E040058 */   lw       $a0, 0x58($s0)
/* 1C96C 8004156C AE000040 */  sw        $zero, 0x40($s0)
.L80041570:
/* 1C970 80041570 8E820000 */  lw        $v0, ($s4)
/* 1C974 80041574 26730001 */  addiu     $s3, $s3, 1
/* 1C978 80041578 0262102A */  slt       $v0, $s3, $v0
/* 1C97C 8004157C 1440FFEA */  bnez      $v0, .L80041528
/* 1C980 80041580 26310004 */   addiu    $s1, $s1, 4
.L80041584:
/* 1C984 80041584 24020001 */  addiu     $v0, $zero, 1
/* 1C988 80041588 A2A20008 */  sb        $v0, 8($s5)
/* 1C98C 8004158C A2A20007 */  sb        $v0, 7($s5)
/* 1C990 80041590 24020005 */  addiu     $v0, $zero, 5
/* 1C994 80041594 A2A00009 */  sb        $zero, 9($s5)
/* 1C998 80041598 A2A0000B */  sb        $zero, 0xb($s5)
/* 1C99C 8004159C A2A0000C */  sb        $zero, 0xc($s5)
/* 1C9A0 800415A0 3C01800A */  lui       $at, %hi(D_8009A5E0)
/* 1C9A4 800415A4 AC22A5E0 */  sw        $v0, %lo(D_8009A5E0)($at)
/* 1C9A8 800415A8 24020001 */  addiu     $v0, $zero, 1
/* 1C9AC 800415AC A6A0000E */  sh        $zero, 0xe($s5)
/* 1C9B0 800415B0 AEA00098 */  sw        $zero, 0x98($s5)
/* 1C9B4 800415B4 AEA00090 */  sw        $zero, 0x90($s5)
.L800415B8:
/* 1C9B8 800415B8 3C01800A */  lui       $at, %hi(D_8009A658)
/* 1C9BC 800415BC AC22A658 */  sw        $v0, %lo(D_8009A658)($at)
/* 1C9C0 800415C0 3C01800A */  lui       $at, %hi(D_8009A5B0)
/* 1C9C4 800415C4 AC20A5B0 */  sw        $zero, %lo(D_8009A5B0)($at)
/* 1C9C8 800415C8 0801057E */  j         .L800415F8
/* 1C9CC 800415CC 00000000 */   nop
.L800415D0:
/* 1C9D0 800415D0 A2A20009 */  sb        $v0, 9($s5)
/* 1C9D4 800415D4 24020005 */  addiu     $v0, $zero, 5
/* 1C9D8 800415D8 A2A50008 */  sb        $a1, 8($s5)
/* 1C9DC 800415DC AEA00090 */  sw        $zero, 0x90($s5)
/* 1C9E0 800415E0 AEA00098 */  sw        $zero, 0x98($s5)
/* 1C9E4 800415E4 3C01800A */  lui       $at, %hi(D_8009A5E0)
/* 1C9E8 800415E8 AC22A5E0 */  sw        $v0, %lo(D_8009A5E0)($at)
/* 1C9EC 800415EC 3C01800A */  lui       $at, %hi(D_8009A658)
/* 1C9F0 800415F0 AC25A658 */  sw        $a1, %lo(D_8009A658)($at)
/* 1C9F4 800415F4 AC800000 */  sw        $zero, ($a0)
.L800415F8:
/* 1C9F8 800415F8 8FBF0030 */  lw        $ra, 0x30($sp)
/* 1C9FC 800415FC 8FB7002C */  lw        $s7, 0x2c($sp)
/* 1CA00 80041600 8FB60028 */  lw        $s6, 0x28($sp)
/* 1CA04 80041604 8FB50024 */  lw        $s5, 0x24($sp)
/* 1CA08 80041608 8FB40020 */  lw        $s4, 0x20($sp)
/* 1CA0C 8004160C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 1CA10 80041610 8FB20018 */  lw        $s2, 0x18($sp)
/* 1CA14 80041614 8FB10014 */  lw        $s1, 0x14($sp)
/* 1CA18 80041618 8FB00010 */  lw        $s0, 0x10($sp)
/* 1CA1C 8004161C 03E00008 */  jr        $ra
/* 1CA20 80041620 27BD0038 */   addiu    $sp, $sp, 0x38
