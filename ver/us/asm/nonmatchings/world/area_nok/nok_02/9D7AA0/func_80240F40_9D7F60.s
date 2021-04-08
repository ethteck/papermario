.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel nok_02_UnkFunc14
/* 9D7F60 80240F40 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 9D7F64 80240F44 AFB40040 */  sw        $s4, 0x40($sp)
/* 9D7F68 80240F48 0080A02D */  daddu     $s4, $a0, $zero
/* 9D7F6C 80240F4C AFBF0044 */  sw        $ra, 0x44($sp)
/* 9D7F70 80240F50 AFB3003C */  sw        $s3, 0x3c($sp)
/* 9D7F74 80240F54 AFB20038 */  sw        $s2, 0x38($sp)
/* 9D7F78 80240F58 AFB10034 */  sw        $s1, 0x34($sp)
/* 9D7F7C 80240F5C AFB00030 */  sw        $s0, 0x30($sp)
/* 9D7F80 80240F60 8E910148 */  lw        $s1, 0x148($s4)
/* 9D7F84 80240F64 00A0902D */  daddu     $s2, $a1, $zero
/* 9D7F88 80240F68 86240008 */  lh        $a0, 8($s1)
/* 9D7F8C 80240F6C 0C00EABB */  jal       get_npc_unsafe
/* 9D7F90 80240F70 00C0982D */   daddu    $s3, $a2, $zero
/* 9D7F94 80240F74 8E430014 */  lw        $v1, 0x14($s2)
/* 9D7F98 80240F78 04600031 */  bltz      $v1, .L80241040
/* 9D7F9C 80240F7C 0040802D */   daddu    $s0, $v0, $zero
/* 9D7FA0 80240F80 0260202D */  daddu     $a0, $s3, $zero
/* 9D7FA4 80240F84 AFA00010 */  sw        $zero, 0x10($sp)
/* 9D7FA8 80240F88 8E460024 */  lw        $a2, 0x24($s2)
/* 9D7FAC 80240F8C 8E470028 */  lw        $a3, 0x28($s2)
/* 9D7FB0 80240F90 0C01242D */  jal       func_800490B4
/* 9D7FB4 80240F94 0220282D */   daddu    $a1, $s1, $zero
/* 9D7FB8 80240F98 10400029 */  beqz      $v0, .L80241040
/* 9D7FBC 80240F9C 0000202D */   daddu    $a0, $zero, $zero
/* 9D7FC0 80240FA0 0200282D */  daddu     $a1, $s0, $zero
/* 9D7FC4 80240FA4 0000302D */  daddu     $a2, $zero, $zero
/* 9D7FC8 80240FA8 860300A8 */  lh        $v1, 0xa8($s0)
/* 9D7FCC 80240FAC 3C013F80 */  lui       $at, 0x3f80
/* 9D7FD0 80240FB0 44810000 */  mtc1      $at, $f0
/* 9D7FD4 80240FB4 3C014000 */  lui       $at, 0x4000
/* 9D7FD8 80240FB8 44811000 */  mtc1      $at, $f2
/* 9D7FDC 80240FBC 3C01C1A0 */  lui       $at, 0xc1a0
/* 9D7FE0 80240FC0 44812000 */  mtc1      $at, $f4
/* 9D7FE4 80240FC4 2402000F */  addiu     $v0, $zero, 0xf
/* 9D7FE8 80240FC8 AFA2001C */  sw        $v0, 0x1c($sp)
/* 9D7FEC 80240FCC 44833000 */  mtc1      $v1, $f6
/* 9D7FF0 80240FD0 00000000 */  nop
/* 9D7FF4 80240FD4 468031A0 */  cvt.s.w   $f6, $f6
/* 9D7FF8 80240FD8 44073000 */  mfc1      $a3, $f6
/* 9D7FFC 80240FDC 27A20028 */  addiu     $v0, $sp, 0x28
/* 9D8000 80240FE0 AFA20020 */  sw        $v0, 0x20($sp)
/* 9D8004 80240FE4 E7A00010 */  swc1      $f0, 0x10($sp)
/* 9D8008 80240FE8 E7A20014 */  swc1      $f2, 0x14($sp)
/* 9D800C 80240FEC 0C01BFA4 */  jal       fx_emote
/* 9D8010 80240FF0 E7A40018 */   swc1     $f4, 0x18($sp)
/* 9D8014 80240FF4 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 9D8018 80240FF8 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 9D801C 80240FFC C60C0038 */  lwc1      $f12, 0x38($s0)
/* 9D8020 80241000 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 9D8024 80241004 8C460028 */  lw        $a2, 0x28($v0)
/* 9D8028 80241008 0C00A720 */  jal       atan2
/* 9D802C 8024100C 8C470030 */   lw       $a3, 0x30($v0)
/* 9D8030 80241010 0200202D */  daddu     $a0, $s0, $zero
/* 9D8034 80241014 240502F4 */  addiu     $a1, $zero, 0x2f4
/* 9D8038 80241018 3C060020 */  lui       $a2, 0x20
/* 9D803C 8024101C 0C012530 */  jal       func_800494C0
/* 9D8040 80241020 E480000C */   swc1     $f0, 0xc($a0)
/* 9D8044 80241024 8E220018 */  lw        $v0, 0x18($s1)
/* 9D8048 80241028 9442002A */  lhu       $v0, 0x2a($v0)
/* 9D804C 8024102C 30420001 */  andi      $v0, $v0, 1
/* 9D8050 80241030 14400029 */  bnez      $v0, .L802410D8
/* 9D8054 80241034 2402000A */   addiu    $v0, $zero, 0xa
/* 9D8058 80241038 08090436 */  j         .L802410D8
/* 9D805C 8024103C 2402000C */   addiu    $v0, $zero, 0xc
.L80241040:
/* 9D8060 80241040 8602008C */  lh        $v0, 0x8c($s0)
/* 9D8064 80241044 14400025 */  bnez      $v0, .L802410DC
/* 9D8068 80241048 00000000 */   nop
/* 9D806C 8024104C 9602008E */  lhu       $v0, 0x8e($s0)
/* 9D8070 80241050 2442FFFF */  addiu     $v0, $v0, -1
/* 9D8074 80241054 A602008E */  sh        $v0, 0x8e($s0)
/* 9D8078 80241058 00021400 */  sll       $v0, $v0, 0x10
/* 9D807C 8024105C 1440001F */  bnez      $v0, .L802410DC
/* 9D8080 80241060 00000000 */   nop
/* 9D8084 80241064 8E820074 */  lw        $v0, 0x74($s4)
/* 9D8088 80241068 2442FFFF */  addiu     $v0, $v0, -1
/* 9D808C 8024106C 10400019 */  beqz      $v0, .L802410D4
/* 9D8090 80241070 AE820074 */   sw       $v0, 0x74($s4)
/* 9D8094 80241074 8E220018 */  lw        $v0, 0x18($s1)
/* 9D8098 80241078 9442002A */  lhu       $v0, 0x2a($v0)
/* 9D809C 8024107C 30420010 */  andi      $v0, $v0, 0x10
/* 9D80A0 80241080 14400007 */  bnez      $v0, .L802410A0
/* 9D80A4 80241084 00000000 */   nop
/* 9D80A8 80241088 C600000C */  lwc1      $f0, 0xc($s0)
/* 9D80AC 8024108C 3C014334 */  lui       $at, 0x4334
/* 9D80B0 80241090 44816000 */  mtc1      $at, $f12
/* 9D80B4 80241094 0C00A6C9 */  jal       clamp_angle
/* 9D80B8 80241098 460C0300 */   add.s    $f12, $f0, $f12
/* 9D80BC 8024109C E600000C */  swc1      $f0, 0xc($s0)
.L802410A0:
/* 9D80C0 802410A0 8E440008 */  lw        $a0, 8($s2)
/* 9D80C4 802410A4 000417C2 */  srl       $v0, $a0, 0x1f
/* 9D80C8 802410A8 00822021 */  addu      $a0, $a0, $v0
/* 9D80CC 802410AC 00042043 */  sra       $a0, $a0, 1
/* 9D80D0 802410B0 0C00A67F */  jal       rand_int
/* 9D80D4 802410B4 24840001 */   addiu    $a0, $a0, 1
/* 9D80D8 802410B8 8E430008 */  lw        $v1, 8($s2)
/* 9D80DC 802410BC 000327C2 */  srl       $a0, $v1, 0x1f
/* 9D80E0 802410C0 00641821 */  addu      $v1, $v1, $a0
/* 9D80E4 802410C4 00031843 */  sra       $v1, $v1, 1
/* 9D80E8 802410C8 00621821 */  addu      $v1, $v1, $v0
/* 9D80EC 802410CC 08090437 */  j         .L802410DC
/* 9D80F0 802410D0 A603008E */   sh       $v1, 0x8e($s0)
.L802410D4:
/* 9D80F4 802410D4 24020004 */  addiu     $v0, $zero, 4
.L802410D8:
/* 9D80F8 802410D8 AE820070 */  sw        $v0, 0x70($s4)
.L802410DC:
/* 9D80FC 802410DC 8FBF0044 */  lw        $ra, 0x44($sp)
/* 9D8100 802410E0 8FB40040 */  lw        $s4, 0x40($sp)
/* 9D8104 802410E4 8FB3003C */  lw        $s3, 0x3c($sp)
/* 9D8108 802410E8 8FB20038 */  lw        $s2, 0x38($sp)
/* 9D810C 802410EC 8FB10034 */  lw        $s1, 0x34($sp)
/* 9D8110 802410F0 8FB00030 */  lw        $s0, 0x30($sp)
/* 9D8114 802410F4 03E00008 */  jr        $ra
/* 9D8118 802410F8 27BD0048 */   addiu    $sp, $sp, 0x48
