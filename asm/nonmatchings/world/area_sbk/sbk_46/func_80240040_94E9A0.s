.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240040_94E9E0
/* 94E9E0 80240040 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 94E9E4 80240044 AFB3001C */  sw        $s3, 0x1c($sp)
/* 94E9E8 80240048 0080982D */  daddu     $s3, $a0, $zero
/* 94E9EC 8024004C AFBF0024 */  sw        $ra, 0x24($sp)
/* 94E9F0 80240050 AFB40020 */  sw        $s4, 0x20($sp)
/* 94E9F4 80240054 AFB20018 */  sw        $s2, 0x18($sp)
/* 94E9F8 80240058 AFB10014 */  sw        $s1, 0x14($sp)
/* 94E9FC 8024005C AFB00010 */  sw        $s0, 0x10($sp)
/* 94EA00 80240060 8E70000C */  lw        $s0, 0xc($s3)
/* 94EA04 80240064 50A0001D */  beql      $a1, $zero, .L802400DC
/* 94EA08 80240068 0260202D */   daddu    $a0, $s3, $zero
/* 94EA0C 8024006C 8E050000 */  lw        $a1, ($s0)
/* 94EA10 80240070 0C0B1EAF */  jal       get_variable
/* 94EA14 80240074 26100004 */   addiu    $s0, $s0, 4
/* 94EA18 80240078 8E050000 */  lw        $a1, ($s0)
/* 94EA1C 8024007C 26100004 */  addiu     $s0, $s0, 4
/* 94EA20 80240080 0260202D */  daddu     $a0, $s3, $zero
/* 94EA24 80240084 0C0B1EAF */  jal       get_variable
/* 94EA28 80240088 0040882D */   daddu    $s1, $v0, $zero
/* 94EA2C 8024008C 0040A02D */  daddu     $s4, $v0, $zero
/* 94EA30 80240090 2402FFFF */  addiu     $v0, $zero, -1
/* 94EA34 80240094 8E120000 */  lw        $s2, ($s0)
/* 94EA38 80240098 16220004 */  bne       $s1, $v0, .L802400AC
/* 94EA3C 8024009C 3C02EFE8 */   lui      $v0, 0xefe8
/* 94EA40 802400A0 8E64014C */  lw        $a0, 0x14c($s3)
/* 94EA44 802400A4 08090030 */  j         .L802400C0
/* 94EA48 802400A8 00000000 */   nop      
.L802400AC:
/* 94EA4C 802400AC 34422080 */  ori       $v0, $v0, 0x2080
/* 94EA50 802400B0 0222102A */  slt       $v0, $s1, $v0
/* 94EA54 802400B4 14400005 */  bnez      $v0, .L802400CC
/* 94EA58 802400B8 0220802D */   daddu    $s0, $s1, $zero
/* 94EA5C 802400BC 0220202D */  daddu     $a0, $s1, $zero
.L802400C0:
/* 94EA60 802400C0 0C00EABB */  jal       get_npc_unsafe
/* 94EA64 802400C4 00000000 */   nop      
/* 94EA68 802400C8 0040802D */  daddu     $s0, $v0, $zero
.L802400CC:
/* 94EA6C 802400CC AE700070 */  sw        $s0, 0x70($s3)
/* 94EA70 802400D0 AE740074 */  sw        $s4, 0x74($s3)
/* 94EA74 802400D4 AE720078 */  sw        $s2, 0x78($s3)
/* 94EA78 802400D8 0260202D */  daddu     $a0, $s3, $zero
.L802400DC:
/* 94EA7C 802400DC 8C900070 */  lw        $s0, 0x70($a0)
/* 94EA80 802400E0 8C850078 */  lw        $a1, 0x78($a0)
/* 94EA84 802400E4 0C0B1EAF */  jal       get_variable
/* 94EA88 802400E8 8C940074 */   lw       $s4, 0x74($a0)
/* 94EA8C 802400EC 1040000C */  beqz      $v0, .L80240120
/* 94EA90 802400F0 24020002 */   addiu    $v0, $zero, 2
/* 94EA94 802400F4 C602003C */  lwc1      $f2, 0x3c($s0)
/* 94EA98 802400F8 3C0141F0 */  lui       $at, 0x41f0
/* 94EA9C 802400FC 44810000 */  mtc1      $at, $f0
/* 94EAA0 80240100 00000000 */  nop       
/* 94EAA4 80240104 46001080 */  add.s     $f2, $f2, $f0
/* 94EAA8 80240108 8E050038 */  lw        $a1, 0x38($s0)
/* 94EAAC 8024010C 8E070040 */  lw        $a3, 0x40($s0)
/* 94EAB0 80240110 44061000 */  mfc1      $a2, $f2
/* 94EAB4 80240114 0C04D083 */  jal       set_item_entity_position
/* 94EAB8 80240118 0280202D */   daddu    $a0, $s4, $zero
/* 94EABC 8024011C 0000102D */  daddu     $v0, $zero, $zero
.L80240120:
/* 94EAC0 80240120 8FBF0024 */  lw        $ra, 0x24($sp)
/* 94EAC4 80240124 8FB40020 */  lw        $s4, 0x20($sp)
/* 94EAC8 80240128 8FB3001C */  lw        $s3, 0x1c($sp)
/* 94EACC 8024012C 8FB20018 */  lw        $s2, 0x18($sp)
/* 94EAD0 80240130 8FB10014 */  lw        $s1, 0x14($sp)
/* 94EAD4 80240134 8FB00010 */  lw        $s0, 0x10($sp)
/* 94EAD8 80240138 03E00008 */  jr        $ra
/* 94EADC 8024013C 27BD0028 */   addiu    $sp, $sp, 0x28
