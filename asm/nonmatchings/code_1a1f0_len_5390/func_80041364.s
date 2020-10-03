.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80041364
/* 1C764 80041364 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 1C768 80041368 AFB50024 */  sw        $s5, 0x24($sp)
/* 1C76C 8004136C 3C15800B */  lui       $s5, %hi(gCurrentEncounter)
/* 1C770 80041370 26B50F10 */  addiu     $s5, $s5, %lo(gCurrentEncounter)
/* 1C774 80041374 AFB7002C */  sw        $s7, 0x2c($sp)
/* 1C778 80041378 3C178011 */  lui       $s7, %hi(gPlayerData)
/* 1C77C 8004137C 26F7F290 */  addiu     $s7, $s7, %lo(gPlayerData)
/* 1C780 80041380 3C04800A */  lui       $a0, 0x800a
/* 1C784 80041384 2484A5D0 */  addiu     $a0, $a0, -0x5a30
/* 1C788 80041388 AFBF0030 */  sw        $ra, 0x30($sp)
/* 1C78C 8004138C AFB60028 */  sw        $s6, 0x28($sp)
/* 1C790 80041390 AFB40020 */  sw        $s4, 0x20($sp)
/* 1C794 80041394 AFB3001C */  sw        $s3, 0x1c($sp)
/* 1C798 80041398 AFB20018 */  sw        $s2, 0x18($sp)
/* 1C79C 8004139C AFB10014 */  sw        $s1, 0x14($sp)
/* 1C7A0 800413A0 AFB00010 */  sw        $s0, 0x10($sp)
/* 1C7A4 800413A4 8C830000 */  lw        $v1, ($a0)
/* 1C7A8 800413A8 24050001 */  addiu     $a1, $zero, 1
/* 1C7AC 800413AC 106500CF */  beq       $v1, $a1, .L800416EC
/* 1C7B0 800413B0 28620002 */   slti     $v0, $v1, 2
/* 1C7B4 800413B4 50400005 */  beql      $v0, $zero, .L800413CC
/* 1C7B8 800413B8 24020002 */   addiu    $v0, $zero, 2
/* 1C7BC 800413BC 10600009 */  beqz      $v1, .L800413E4
/* 1C7C0 800413C0 2402FFFF */   addiu    $v0, $zero, -1
/* 1C7C4 800413C4 0801064E */  j         .L80041938
/* 1C7C8 800413C8 00000000 */   nop      
.L800413CC:
/* 1C7CC 800413CC 1062011C */  beq       $v1, $v0, .L80041840
/* 1C7D0 800413D0 24020003 */   addiu    $v0, $zero, 3
/* 1C7D4 800413D4 1062014E */  beq       $v1, $v0, .L80041910
/* 1C7D8 800413D8 24020004 */   addiu    $v0, $zero, 4
/* 1C7DC 800413DC 0801064E */  j         .L80041938
/* 1C7E0 800413E0 00000000 */   nop      
.L800413E4:
/* 1C7E4 800413E4 AEA00090 */  sw        $zero, 0x90($s5)
/* 1C7E8 800413E8 AEA50094 */  sw        $a1, 0x94($s5)
/* 1C7EC 800413EC AEA50098 */  sw        $a1, 0x98($s5)
/* 1C7F0 800413F0 A2A20008 */  sb        $v0, 8($s5)
/* 1C7F4 800413F4 3C01800A */  lui       $at, 0x800a
/* 1C7F8 800413F8 A020A654 */  sb        $zero, -0x59ac($at)
/* 1C7FC 800413FC 3C018007 */  lui       $at, 0x8007
/* 1C800 80041400 AC207C40 */  sw        $zero, 0x7c40($at)
/* 1C804 80041404 0C0B117A */  jal       suspend_all_group
/* 1C808 80041408 24040010 */   addiu    $a0, $zero, 0x10
/* 1C80C 8004140C 82A2001C */  lb        $v0, 0x1c($s5)
/* 1C810 80041410 18400024 */  blez      $v0, .L800414A4
/* 1C814 80041414 0000982D */   daddu    $s3, $zero, $zero
/* 1C818 80041418 02A0B02D */  daddu     $s6, $s5, $zero
.L8004141C:
/* 1C81C 8004141C 8ED40028 */  lw        $s4, 0x28($s6)
/* 1C820 80041420 1280001B */  beqz      $s4, .L80041490
/* 1C824 80041424 00000000 */   nop      
/* 1C828 80041428 8E820000 */  lw        $v0, ($s4)
/* 1C82C 8004142C 18400018 */  blez      $v0, .L80041490
/* 1C830 80041430 0000882D */   daddu    $s1, $zero, $zero
/* 1C834 80041434 0280902D */  daddu     $s2, $s4, $zero
.L80041438:
/* 1C838 80041438 8E500004 */  lw        $s0, 4($s2)
/* 1C83C 8004143C 1200000F */  beqz      $s0, .L8004147C
/* 1C840 80041440 00000000 */   nop      
/* 1C844 80041444 8E020000 */  lw        $v0, ($s0)
/* 1C848 80041448 30420020 */  andi      $v0, $v0, 0x20
/* 1C84C 8004144C 1440000B */  bnez      $v0, .L8004147C
/* 1C850 80041450 00000000 */   nop      
/* 1C854 80041454 8E02003C */  lw        $v0, 0x3c($s0)
/* 1C858 80041458 10400003 */  beqz      $v0, .L80041468
/* 1C85C 8004145C 00000000 */   nop      
/* 1C860 80041460 0C0B1108 */  jal       suspend_all_script
/* 1C864 80041464 8E040054 */   lw       $a0, 0x54($s0)
.L80041468:
/* 1C868 80041468 8E020044 */  lw        $v0, 0x44($s0)
/* 1C86C 8004146C 10400003 */  beqz      $v0, .L8004147C
/* 1C870 80041470 00000000 */   nop      
/* 1C874 80041474 0C0B1108 */  jal       suspend_all_script
/* 1C878 80041478 8E04005C */   lw       $a0, 0x5c($s0)
.L8004147C:
/* 1C87C 8004147C 8E820000 */  lw        $v0, ($s4)
/* 1C880 80041480 26310001 */  addiu     $s1, $s1, 1
/* 1C884 80041484 0222102A */  slt       $v0, $s1, $v0
/* 1C888 80041488 1440FFEB */  bnez      $v0, .L80041438
/* 1C88C 8004148C 26520004 */   addiu    $s2, $s2, 4
.L80041490:
/* 1C890 80041490 82A2001C */  lb        $v0, 0x1c($s5)
/* 1C894 80041494 26730001 */  addiu     $s3, $s3, 1
/* 1C898 80041498 0262102A */  slt       $v0, $s3, $v0
/* 1C89C 8004149C 1440FFDF */  bnez      $v0, .L8004141C
/* 1C8A0 800414A0 26D60004 */   addiu    $s6, $s6, 4
.L800414A4:
/* 1C8A4 800414A4 8EB0008C */  lw        $s0, 0x8c($s5)
/* 1C8A8 800414A8 8E020000 */  lw        $v0, ($s0)
/* 1C8AC 800414AC 3C030010 */  lui       $v1, 0x10
/* 1C8B0 800414B0 00431024 */  and       $v0, $v0, $v1
/* 1C8B4 800414B4 1040000C */  beqz      $v0, .L800414E8
/* 1C8B8 800414B8 00000000 */   nop      
/* 1C8BC 800414BC 82A20012 */  lb        $v0, 0x12($s5)
/* 1C8C0 800414C0 14400009 */  bnez      $v0, .L800414E8
/* 1C8C4 800414C4 00000000 */   nop      
/* 1C8C8 800414C8 AEA00094 */  sw        $zero, 0x94($s5)
/* 1C8CC 800414CC 0C03AD96 */  jal       partner_handle_before_battle
/* 1C8D0 800414D0 AEA0009C */   sw       $zero, 0x9c($s5)
/* 1C8D4 800414D4 24020003 */  addiu     $v0, $zero, 3
/* 1C8D8 800414D8 3C01800A */  lui       $at, 0x800a
/* 1C8DC 800414DC AC22A5D0 */  sw        $v0, -0x5a30($at)
/* 1C8E0 800414E0 0801064E */  j         .L80041938
/* 1C8E4 800414E4 00000000 */   nop      
.L800414E8:
/* 1C8E8 800414E8 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 1C8EC 800414EC 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 1C8F0 800414F0 80420074 */  lb        $v0, 0x74($v0)
/* 1C8F4 800414F4 24110002 */  addiu     $s1, $zero, 2
/* 1C8F8 800414F8 14510009 */  bne       $v0, $s1, .L80041520
/* 1C8FC 800414FC 24120001 */   addiu    $s2, $zero, 1
/* 1C900 80041500 2402000A */  addiu     $v0, $zero, 0xa
/* 1C904 80041504 AEA00094 */  sw        $zero, 0x94($s5)
/* 1C908 80041508 0C03AD96 */  jal       partner_handle_before_battle
/* 1C90C 8004150C AEA2009C */   sw       $v0, 0x9c($s5)
/* 1C910 80041510 3C01800A */  lui       $at, 0x800a
/* 1C914 80041514 AC31A5D0 */  sw        $s1, -0x5a30($at)
/* 1C918 80041518 0801064E */  j         .L80041938
/* 1C91C 8004151C 00000000 */   nop      
.L80041520:
/* 1C920 80041520 82A30005 */  lb        $v1, 5($s5)
/* 1C924 80041524 8EB0008C */  lw        $s0, 0x8c($s5)
/* 1C928 80041528 1072001D */  beq       $v1, $s2, .L800415A0
/* 1C92C 8004152C 24020003 */   addiu    $v0, $zero, 3
/* 1C930 80041530 1062001B */  beq       $v1, $v0, .L800415A0
/* 1C934 80041534 00000000 */   nop      
/* 1C938 80041538 0C03A752 */  jal       is_ability_active
/* 1C93C 8004153C 0040202D */   daddu    $a0, $v0, $zero
/* 1C940 80041540 10400016 */  beqz      $v0, .L8004159C
/* 1C944 80041544 00000000 */   nop      
/* 1C948 80041548 8E020018 */  lw        $v0, 0x18($s0)
/* 1C94C 8004154C 82E30009 */  lb        $v1, 9($s7)
/* 1C950 80041550 84420028 */  lh        $v0, 0x28($v0)
/* 1C954 80041554 0062182A */  slt       $v1, $v1, $v0
/* 1C958 80041558 14600010 */  bnez      $v1, .L8004159C
/* 1C95C 8004155C 00000000 */   nop      
/* 1C960 80041560 8E020000 */  lw        $v0, ($s0)
/* 1C964 80041564 30420040 */  andi      $v0, $v0, 0x40
/* 1C968 80041568 1440000C */  bnez      $v0, .L8004159C
/* 1C96C 8004156C 00000000 */   nop      
/* 1C970 80041570 82A20012 */  lb        $v0, 0x12($s5)
/* 1C974 80041574 14400009 */  bnez      $v0, .L8004159C
/* 1C978 80041578 2402000A */   addiu    $v0, $zero, 0xa
/* 1C97C 8004157C AEA00094 */  sw        $zero, 0x94($s5)
/* 1C980 80041580 AEA2009C */  sw        $v0, 0x9c($s5)
/* 1C984 80041584 3C018007 */  lui       $at, 0x8007
/* 1C988 80041588 AC327C40 */  sw        $s2, 0x7c40($at)
/* 1C98C 8004158C 3C01800A */  lui       $at, 0x800a
/* 1C990 80041590 AC31A5D0 */  sw        $s1, -0x5a30($at)
/* 1C994 80041594 0801064E */  j         .L80041938
/* 1C998 80041598 00000000 */   nop      
.L8004159C:
/* 1C99C 8004159C 8EB0008C */  lw        $s0, 0x8c($s5)
.L800415A0:
/* 1C9A0 800415A0 0C03A752 */  jal       is_ability_active
/* 1C9A4 800415A4 2404002A */   addiu    $a0, $zero, 0x2a
/* 1C9A8 800415A8 1040000E */  beqz      $v0, .L800415E4
/* 1C9AC 800415AC 24020003 */   addiu    $v0, $zero, 3
/* 1C9B0 800415B0 8E020018 */  lw        $v0, 0x18($s0)
/* 1C9B4 800415B4 82E30009 */  lb        $v1, 9($s7)
/* 1C9B8 800415B8 84420028 */  lh        $v0, 0x28($v0)
/* 1C9BC 800415BC 0062182A */  slt       $v1, $v1, $v0
/* 1C9C0 800415C0 14600008 */  bnez      $v1, .L800415E4
/* 1C9C4 800415C4 24020003 */   addiu    $v0, $zero, 3
/* 1C9C8 800415C8 8E020000 */  lw        $v0, ($s0)
/* 1C9CC 800415CC 30420040 */  andi      $v0, $v0, 0x40
/* 1C9D0 800415D0 14400004 */  bnez      $v0, .L800415E4
/* 1C9D4 800415D4 24020003 */   addiu    $v0, $zero, 3
/* 1C9D8 800415D8 82A20012 */  lb        $v0, 0x12($s5)
/* 1C9DC 800415DC 10400015 */  beqz      $v0, .L80041634
/* 1C9E0 800415E0 24020003 */   addiu    $v0, $zero, 3
.L800415E4:
/* 1C9E4 800415E4 82A30005 */  lb        $v1, 5($s5)
/* 1C9E8 800415E8 1462001D */  bne       $v1, $v0, .L80041660
/* 1C9EC 800415EC 8EB0008C */   lw       $s0, 0x8c($s5)
/* 1C9F0 800415F0 0C03A752 */  jal       is_ability_active
/* 1C9F4 800415F4 24040028 */   addiu    $a0, $zero, 0x28
/* 1C9F8 800415F8 10400019 */  beqz      $v0, .L80041660
/* 1C9FC 800415FC 00000000 */   nop      
/* 1CA00 80041600 8E020018 */  lw        $v0, 0x18($s0)
/* 1CA04 80041604 82E30009 */  lb        $v1, 9($s7)
/* 1CA08 80041608 84420028 */  lh        $v0, 0x28($v0)
/* 1CA0C 8004160C 0062182A */  slt       $v1, $v1, $v0
/* 1CA10 80041610 14600013 */  bnez      $v1, .L80041660
/* 1CA14 80041614 00000000 */   nop      
/* 1CA18 80041618 8E020000 */  lw        $v0, ($s0)
/* 1CA1C 8004161C 30420040 */  andi      $v0, $v0, 0x40
/* 1CA20 80041620 1440000F */  bnez      $v0, .L80041660
/* 1CA24 80041624 00000000 */   nop      
/* 1CA28 80041628 82A20012 */  lb        $v0, 0x12($s5)
/* 1CA2C 8004162C 1440000C */  bnez      $v0, .L80041660
/* 1CA30 80041630 00000000 */   nop      
.L80041634:
/* 1CA34 80041634 2402000A */  addiu     $v0, $zero, 0xa
/* 1CA38 80041638 AEA2009C */  sw        $v0, 0x9c($s5)
/* 1CA3C 8004163C 24020001 */  addiu     $v0, $zero, 1
/* 1CA40 80041640 3C018007 */  lui       $at, 0x8007
/* 1CA44 80041644 AC227C40 */  sw        $v0, 0x7c40($at)
/* 1CA48 80041648 24020002 */  addiu     $v0, $zero, 2
/* 1CA4C 8004164C AEA00094 */  sw        $zero, 0x94($s5)
/* 1CA50 80041650 3C01800A */  lui       $at, 0x800a
/* 1CA54 80041654 AC22A5D0 */  sw        $v0, -0x5a30($at)
/* 1CA58 80041658 0801064E */  j         .L80041938
/* 1CA5C 8004165C 00000000 */   nop      
.L80041660:
/* 1CA60 80041660 8EA40014 */  lw        $a0, 0x14($s5)
/* 1CA64 80041664 04810015 */  bgez      $a0, .L800416BC
/* 1CA68 80041668 0000282D */   daddu    $a1, $zero, $zero
/* 1CA6C 8004166C 82A30004 */  lb        $v1, 4($s5)
/* 1CA70 80041670 24020001 */  addiu     $v0, $zero, 1
/* 1CA74 80041674 1062000B */  beq       $v1, $v0, .L800416A4
/* 1CA78 80041678 28620002 */   slti     $v0, $v1, 2
/* 1CA7C 8004167C 10400005 */  beqz      $v0, .L80041694
/* 1CA80 80041680 24020002 */   addiu    $v0, $zero, 2
/* 1CA84 80041684 1060000D */  beqz      $v1, .L800416BC
/* 1CA88 80041688 24040002 */   addiu    $a0, $zero, 2
/* 1CA8C 8004168C 080105B1 */  j         .L800416C4
/* 1CA90 80041690 00000000 */   nop      
.L80041694:
/* 1CA94 80041694 10620006 */  beq       $v1, $v0, .L800416B0
/* 1CA98 80041698 24040002 */   addiu    $a0, $zero, 2
/* 1CA9C 8004169C 080105B1 */  j         .L800416C4
/* 1CAA0 800416A0 00000000 */   nop      
.L800416A4:
/* 1CAA4 800416A4 24040002 */  addiu     $a0, $zero, 2
/* 1CAA8 800416A8 080105AF */  j         .L800416BC
/* 1CAAC 800416AC 24050001 */   addiu    $a1, $zero, 1
.L800416B0:
/* 1CAB0 800416B0 080105AF */  j         .L800416BC
/* 1CAB4 800416B4 0080282D */   daddu    $a1, $a0, $zero
/* 1CAB8 800416B8 0000282D */  daddu     $a1, $zero, $zero
.L800416BC:
/* 1CABC 800416BC 0C052BE3 */  jal       func_8014AF8C
/* 1CAC0 800416C0 00000000 */   nop      
.L800416C4:
/* 1CAC4 800416C4 0C052BBE */  jal       func_8014AEF8
/* 1CAC8 800416C8 00000000 */   nop      
/* 1CACC 800416CC 24020001 */  addiu     $v0, $zero, 1
/* 1CAD0 800416D0 3C01800A */  lui       $at, 0x800a
/* 1CAD4 800416D4 A022A654 */  sb        $v0, -0x59ac($at)
/* 1CAD8 800416D8 2402000A */  addiu     $v0, $zero, 0xa
/* 1CADC 800416DC AEA2009C */  sw        $v0, 0x9c($s5)
/* 1CAE0 800416E0 24020001 */  addiu     $v0, $zero, 1
/* 1CAE4 800416E4 3C01800A */  lui       $at, 0x800a
/* 1CAE8 800416E8 AC22A5D0 */  sw        $v0, -0x5a30($at)
.L800416EC:
/* 1CAEC 800416EC 8EA30090 */  lw        $v1, 0x90($s5)
/* 1CAF0 800416F0 240200FF */  addiu     $v0, $zero, 0xff
/* 1CAF4 800416F4 14620090 */  bne       $v1, $v0, .L80041938
/* 1CAF8 800416F8 00000000 */   nop      
/* 1CAFC 800416FC 8EA2009C */  lw        $v0, 0x9c($s5)
/* 1CB00 80041700 14400052 */  bnez      $v0, .L8004184C
/* 1CB04 80041704 2442FFFF */   addiu    $v0, $v0, -1
/* 1CB08 80041708 8EB40088 */  lw        $s4, 0x88($s5)
/* 1CB0C 8004170C 8E820000 */  lw        $v0, ($s4)
/* 1CB10 80041710 18400019 */  blez      $v0, .L80041778
/* 1CB14 80041714 0000982D */   daddu    $s3, $zero, $zero
/* 1CB18 80041718 0280882D */  daddu     $s1, $s4, $zero
.L8004171C:
/* 1CB1C 8004171C 8E300004 */  lw        $s0, 4($s1)
/* 1CB20 80041720 12000010 */  beqz      $s0, .L80041764
/* 1CB24 80041724 00000000 */   nop      
/* 1CB28 80041728 8E030000 */  lw        $v1, ($s0)
/* 1CB2C 8004172C 30620008 */  andi      $v0, $v1, 8
/* 1CB30 80041730 10400004 */  beqz      $v0, .L80041744
/* 1CB34 80041734 30620020 */   andi     $v0, $v1, 0x20
/* 1CB38 80041738 8EA2008C */  lw        $v0, 0x8c($s5)
/* 1CB3C 8004173C 16020009 */  bne       $s0, $v0, .L80041764
/* 1CB40 80041740 30620020 */   andi     $v0, $v1, 0x20
.L80041744:
/* 1CB44 80041744 14400007 */  bnez      $v0, .L80041764
/* 1CB48 80041748 00000000 */   nop      
/* 1CB4C 8004174C 8E020040 */  lw        $v0, 0x40($s0)
/* 1CB50 80041750 10400004 */  beqz      $v0, .L80041764
/* 1CB54 80041754 00000000 */   nop      
/* 1CB58 80041758 0C0B102B */  jal       kill_script_by_ID
/* 1CB5C 8004175C 8E040058 */   lw       $a0, 0x58($s0)
/* 1CB60 80041760 AE000040 */  sw        $zero, 0x40($s0)
.L80041764:
/* 1CB64 80041764 8E820000 */  lw        $v0, ($s4)
/* 1CB68 80041768 26730001 */  addiu     $s3, $s3, 1
/* 1CB6C 8004176C 0262102A */  slt       $v0, $s3, $v0
/* 1CB70 80041770 1440FFEA */  bnez      $v0, .L8004171C
/* 1CB74 80041774 26310004 */   addiu    $s1, $s1, 4
.L80041778:
/* 1CB78 80041778 0C03AD96 */  jal       partner_handle_before_battle
/* 1CB7C 8004177C 00000000 */   nop      
/* 1CB80 80041780 8EB0008C */  lw        $s0, 0x8c($s5)
/* 1CB84 80041784 A2A000A0 */  sb        $zero, 0xa0($s5)
/* 1CB88 80041788 A6A000A2 */  sh        $zero, 0xa2($s5)
/* 1CB8C 8004178C 920200B5 */  lbu       $v0, 0xb5($s0)
/* 1CB90 80041790 2404002D */  addiu     $a0, $zero, 0x2d
/* 1CB94 80041794 0C03A752 */  jal       is_ability_active
/* 1CB98 80041798 A2A20010 */   sb       $v0, 0x10($s5)
/* 1CB9C 8004179C 10400008 */  beqz      $v0, .L800417C0
/* 1CBA0 800417A0 00000000 */   nop      
/* 1CBA4 800417A4 82A30005 */  lb        $v1, 5($s5)
/* 1CBA8 800417A8 24020003 */  addiu     $v0, $zero, 3
/* 1CBAC 800417AC 14620004 */  bne       $v1, $v0, .L800417C0
/* 1CBB0 800417B0 00000000 */   nop      
/* 1CBB4 800417B4 24020004 */  addiu     $v0, $zero, 4
/* 1CBB8 800417B8 A2A200A0 */  sb        $v0, 0xa0($s5)
/* 1CBBC 800417BC A6A300A2 */  sh        $v1, 0xa2($s5)
.L800417C0:
/* 1CBC0 800417C0 0C05271B */  jal       stop_sound
/* 1CBC4 800417C4 24042111 */   addiu    $a0, $zero, 0x2111
/* 1CBC8 800417C8 0C05271B */  jal       stop_sound
/* 1CBCC 800417CC 24042112 */   addiu    $a0, $zero, 0x2112
/* 1CBD0 800417D0 0C05271B */  jal       stop_sound
/* 1CBD4 800417D4 24042113 */   addiu    $a0, $zero, 0x2113
/* 1CBD8 800417D8 0C05271B */  jal       stop_sound
/* 1CBDC 800417DC 24042114 */   addiu    $a0, $zero, 0x2114
/* 1CBE0 800417E0 0C01CB37 */  jal       func_80072CDC
/* 1CBE4 800417E4 0000202D */   daddu    $a0, $zero, $zero
/* 1CBE8 800417E8 86840046 */  lh        $a0, 0x46($s4)
/* 1CBEC 800417EC 0C01CB33 */  jal       func_80072CCC
/* 1CBF0 800417F0 00000000 */   nop      
/* 1CBF4 800417F4 0C01CB24 */  jal       load_battle
/* 1CBF8 800417F8 86840044 */   lh       $a0, 0x44($s4)
/* 1CBFC 800417FC 0000202D */  daddu     $a0, $zero, $zero
/* 1CC00 80041800 3C05437F */  lui       $a1, 0x437f
/* 1CC04 80041804 24020001 */  addiu     $v0, $zero, 1
/* 1CC08 80041808 A2A20007 */  sb        $v0, 7($s5)
/* 1CC0C 8004180C 240200FF */  addiu     $v0, $zero, 0xff
/* 1CC10 80041810 A2A00008 */  sb        $zero, 8($s5)
/* 1CC14 80041814 A2A0000B */  sb        $zero, 0xb($s5)
/* 1CC18 80041818 A2A0000C */  sb        $zero, 0xc($s5)
/* 1CC1C 8004181C A6A0000E */  sh        $zero, 0xe($s5)
/* 1CC20 80041820 AEA00098 */  sw        $zero, 0x98($s5)
/* 1CC24 80041824 0C04DF62 */  jal       func_80137D88
/* 1CC28 80041828 AEA20090 */   sw       $v0, 0x90($s5)
/* 1CC2C 8004182C 24020005 */  addiu     $v0, $zero, 5
/* 1CC30 80041830 3C01800A */  lui       $at, %hi(gGameState)
/* 1CC34 80041834 AC22A600 */  sw        $v0, %lo(gGameState)($at)
/* 1CC38 80041838 0801063E */  j         .L800418F8
/* 1CC3C 8004183C 24020001 */   addiu    $v0, $zero, 1
.L80041840:
/* 1CC40 80041840 8EA2009C */  lw        $v0, 0x9c($s5)
/* 1CC44 80041844 10400003 */  beqz      $v0, .L80041854
/* 1CC48 80041848 2442FFFF */   addiu    $v0, $v0, -1
.L8004184C:
/* 1CC4C 8004184C 0801064E */  j         .L80041938
/* 1CC50 80041850 AEA2009C */   sw       $v0, 0x9c($s5)
.L80041854:
/* 1CC54 80041854 8EB40088 */  lw        $s4, 0x88($s5)
/* 1CC58 80041858 8E820000 */  lw        $v0, ($s4)
/* 1CC5C 8004185C 18400019 */  blez      $v0, .L800418C4
/* 1CC60 80041860 0000982D */   daddu    $s3, $zero, $zero
/* 1CC64 80041864 0280882D */  daddu     $s1, $s4, $zero
.L80041868:
/* 1CC68 80041868 8E300004 */  lw        $s0, 4($s1)
/* 1CC6C 8004186C 12000010 */  beqz      $s0, .L800418B0
/* 1CC70 80041870 00000000 */   nop      
/* 1CC74 80041874 8E030000 */  lw        $v1, ($s0)
/* 1CC78 80041878 30620008 */  andi      $v0, $v1, 8
/* 1CC7C 8004187C 10400004 */  beqz      $v0, .L80041890
/* 1CC80 80041880 30620020 */   andi     $v0, $v1, 0x20
/* 1CC84 80041884 8EA2008C */  lw        $v0, 0x8c($s5)
/* 1CC88 80041888 16020009 */  bne       $s0, $v0, .L800418B0
/* 1CC8C 8004188C 30620020 */   andi     $v0, $v1, 0x20
.L80041890:
/* 1CC90 80041890 14400007 */  bnez      $v0, .L800418B0
/* 1CC94 80041894 00000000 */   nop      
/* 1CC98 80041898 8E020040 */  lw        $v0, 0x40($s0)
/* 1CC9C 8004189C 10400004 */  beqz      $v0, .L800418B0
/* 1CCA0 800418A0 00000000 */   nop      
/* 1CCA4 800418A4 0C0B102B */  jal       kill_script_by_ID
/* 1CCA8 800418A8 8E040058 */   lw       $a0, 0x58($s0)
/* 1CCAC 800418AC AE000040 */  sw        $zero, 0x40($s0)
.L800418B0:
/* 1CCB0 800418B0 8E820000 */  lw        $v0, ($s4)
/* 1CCB4 800418B4 26730001 */  addiu     $s3, $s3, 1
/* 1CCB8 800418B8 0262102A */  slt       $v0, $s3, $v0
/* 1CCBC 800418BC 1440FFEA */  bnez      $v0, .L80041868
/* 1CCC0 800418C0 26310004 */   addiu    $s1, $s1, 4
.L800418C4:
/* 1CCC4 800418C4 24020001 */  addiu     $v0, $zero, 1
/* 1CCC8 800418C8 A2A20008 */  sb        $v0, 8($s5)
/* 1CCCC 800418CC A2A20007 */  sb        $v0, 7($s5)
/* 1CCD0 800418D0 24020005 */  addiu     $v0, $zero, 5
/* 1CCD4 800418D4 A2A00009 */  sb        $zero, 9($s5)
/* 1CCD8 800418D8 A2A0000B */  sb        $zero, 0xb($s5)
/* 1CCDC 800418DC A2A0000C */  sb        $zero, 0xc($s5)
/* 1CCE0 800418E0 3C01800A */  lui       $at, %hi(gGameState)
/* 1CCE4 800418E4 AC22A600 */  sw        $v0, %lo(gGameState)($at)
/* 1CCE8 800418E8 24020001 */  addiu     $v0, $zero, 1
/* 1CCEC 800418EC A6A0000E */  sh        $zero, 0xe($s5)
/* 1CCF0 800418F0 AEA00098 */  sw        $zero, 0x98($s5)
/* 1CCF4 800418F4 AEA00090 */  sw        $zero, 0x90($s5)
.L800418F8:
/* 1CCF8 800418F8 3C01800A */  lui       $at, 0x800a
/* 1CCFC 800418FC AC22A678 */  sw        $v0, -0x5988($at)
/* 1CD00 80041900 3C01800A */  lui       $at, 0x800a
/* 1CD04 80041904 AC20A5D0 */  sw        $zero, -0x5a30($at)
/* 1CD08 80041908 0801064E */  j         .L80041938
/* 1CD0C 8004190C 00000000 */   nop      
.L80041910:
/* 1CD10 80041910 A2A20009 */  sb        $v0, 9($s5)
/* 1CD14 80041914 24020005 */  addiu     $v0, $zero, 5
/* 1CD18 80041918 A2A50008 */  sb        $a1, 8($s5)
/* 1CD1C 8004191C AEA00090 */  sw        $zero, 0x90($s5)
/* 1CD20 80041920 AEA00098 */  sw        $zero, 0x98($s5)
/* 1CD24 80041924 3C01800A */  lui       $at, %hi(gGameState)
/* 1CD28 80041928 AC22A600 */  sw        $v0, %lo(gGameState)($at)
/* 1CD2C 8004192C 3C01800A */  lui       $at, 0x800a
/* 1CD30 80041930 AC25A678 */  sw        $a1, -0x5988($at)
/* 1CD34 80041934 AC800000 */  sw        $zero, ($a0)
.L80041938:
/* 1CD38 80041938 8FBF0030 */  lw        $ra, 0x30($sp)
/* 1CD3C 8004193C 8FB7002C */  lw        $s7, 0x2c($sp)
/* 1CD40 80041940 8FB60028 */  lw        $s6, 0x28($sp)
/* 1CD44 80041944 8FB50024 */  lw        $s5, 0x24($sp)
/* 1CD48 80041948 8FB40020 */  lw        $s4, 0x20($sp)
/* 1CD4C 8004194C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 1CD50 80041950 8FB20018 */  lw        $s2, 0x18($sp)
/* 1CD54 80041954 8FB10014 */  lw        $s1, 0x14($sp)
/* 1CD58 80041958 8FB00010 */  lw        $s0, 0x10($sp)
/* 1CD5C 8004195C 03E00008 */  jr        $ra
/* 1CD60 80041960 27BD0038 */   addiu    $sp, $sp, 0x38
