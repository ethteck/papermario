.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240010_8FF680
/* 8FF680 80240010 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 8FF684 80240014 AFBF0020 */  sw        $ra, 0x20($sp)
/* 8FF688 80240018 AFB1001C */  sw        $s1, 0x1c($sp)
/* 8FF68C 8024001C AFB00018 */  sw        $s0, 0x18($sp)
/* 8FF690 80240020 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 8FF694 80240024 8C900084 */  lw        $s0, 0x84($a0)
/* 8FF698 80240028 16000003 */  bnez      $s0, .L80240038
/* 8FF69C 8024002C 0000882D */   daddu    $s1, $zero, $zero
/* 8FF6A0 80240030 24100009 */  addiu     $s0, $zero, 9
/* 8FF6A4 80240034 24110026 */  addiu     $s1, $zero, 0x26
.L80240038:
/* 8FF6A8 80240038 10A00012 */  beqz      $a1, .L80240084
/* 8FF6AC 8024003C 00000000 */   nop
/* 8FF6B0 80240040 3C013F80 */  lui       $at, 0x3f80
/* 8FF6B4 80240044 4481A000 */  mtc1      $at, $f20
/* 8FF6B8 80240048 0C00AFB7 */  jal       set_curtain_scale_goal
/* 8FF6BC 8024004C 4600A306 */   mov.s    $f12, $f20
/* 8FF6C0 80240050 3C0142C8 */  lui       $at, 0x42c8
/* 8FF6C4 80240054 44810000 */  mtc1      $at, $f0
/* 8FF6C8 80240058 0200202D */  daddu     $a0, $s0, $zero
/* 8FF6CC 8024005C 44050000 */  mfc1      $a1, $f0
/* 8FF6D0 80240060 0000382D */  daddu     $a3, $zero, $zero
/* 8FF6D4 80240064 E7B40010 */  swc1      $f20, 0x10($sp)
/* 8FF6D8 80240068 AFA00014 */  sw        $zero, 0x14($sp)
/* 8FF6DC 8024006C 0C01C97C */  jal       func_800725F0
/* 8FF6E0 80240070 00A0302D */   daddu    $a2, $a1, $zero
/* 8FF6E4 80240074 3C018025 */  lui       $at, %hi(D_802483C0)
/* 8FF6E8 80240078 AC2283C0 */  sw        $v0, %lo(D_802483C0)($at)
/* 8FF6EC 8024007C 3C018025 */  lui       $at, %hi(D_802483C4)
/* 8FF6F0 80240080 AC2083C4 */  sw        $zero, %lo(D_802483C4)($at)
.L80240084:
/* 8FF6F4 80240084 3C038025 */  lui       $v1, %hi(D_802483C4)
/* 8FF6F8 80240088 8C6383C4 */  lw        $v1, %lo(D_802483C4)($v1)
/* 8FF6FC 8024008C 04600009 */  bltz      $v1, .L802400B4
/* 8FF700 80240090 26240075 */   addiu    $a0, $s1, 0x75
/* 8FF704 80240094 28620014 */  slti      $v0, $v1, 0x14
/* 8FF708 80240098 10400007 */  beqz      $v0, .L802400B8
/* 8FF70C 8024009C 00031040 */   sll      $v0, $v1, 1
/* 8FF710 802400A0 3C018024 */  lui       $at, %hi(D_80240DE0_900450)
/* 8FF714 802400A4 00220821 */  addu      $at, $at, $v0
/* 8FF718 802400A8 84220DE0 */  lh        $v0, %lo(D_80240DE0_900450)($at)
/* 8FF71C 802400AC 0809002E */  j         .L802400B8
/* 8FF720 802400B0 00822023 */   subu     $a0, $a0, $v0
.L802400B4:
/* 8FF724 802400B4 2624FF3F */  addiu     $a0, $s1, -0xc1
.L802400B8:
/* 8FF728 802400B8 2406003A */  addiu     $a2, $zero, 0x3a
/* 8FF72C 802400BC 3C038025 */  lui       $v1, %hi(D_802483C0)
/* 8FF730 802400C0 8C6383C0 */  lw        $v1, %lo(D_802483C0)($v1)
/* 8FF734 802400C4 44840000 */  mtc1      $a0, $f0
/* 8FF738 802400C8 00000000 */  nop
/* 8FF73C 802400CC 46800020 */  cvt.s.w   $f0, $f0
/* 8FF740 802400D0 8C62000C */  lw        $v0, 0xc($v1)
/* 8FF744 802400D4 E4400004 */  swc1      $f0, 4($v0)
/* 8FF748 802400D8 8C62000C */  lw        $v0, 0xc($v1)
/* 8FF74C 802400DC 3C038025 */  lui       $v1, %hi(D_802483C4)
/* 8FF750 802400E0 8C6383C4 */  lw        $v1, %lo(D_802483C4)($v1)
/* 8FF754 802400E4 44860000 */  mtc1      $a2, $f0
/* 8FF758 802400E8 00000000 */  nop
/* 8FF75C 802400EC 46800020 */  cvt.s.w   $f0, $f0
/* 8FF760 802400F0 E4400008 */  swc1      $f0, 8($v0)
/* 8FF764 802400F4 2862000A */  slti      $v0, $v1, 0xa
/* 8FF768 802400F8 1440000A */  bnez      $v0, .L80240124
/* 8FF76C 802400FC 26240075 */   addiu    $a0, $s1, 0x75
/* 8FF770 80240100 2862001E */  slti      $v0, $v1, 0x1e
/* 8FF774 80240104 10400008 */  beqz      $v0, .L80240128
/* 8FF778 80240108 2462FFF6 */   addiu    $v0, $v1, -0xa
/* 8FF77C 8024010C 00021040 */  sll       $v0, $v0, 1
/* 8FF780 80240110 3C018024 */  lui       $at, %hi(D_80240DE0_900450)
/* 8FF784 80240114 00220821 */  addu      $at, $at, $v0
/* 8FF788 80240118 84220DE0 */  lh        $v0, %lo(D_80240DE0_900450)($at)
/* 8FF78C 8024011C 0809004A */  j         .L80240128
/* 8FF790 80240120 00C23023 */   subu     $a2, $a2, $v0
.L80240124:
/* 8FF794 80240124 2406FF04 */  addiu     $a2, $zero, -0xfc
.L80240128:
/* 8FF798 80240128 3C038025 */  lui       $v1, %hi(D_802483C0)
/* 8FF79C 8024012C 8C6383C0 */  lw        $v1, %lo(D_802483C0)($v1)
/* 8FF7A0 80240130 44840000 */  mtc1      $a0, $f0
/* 8FF7A4 80240134 00000000 */  nop
/* 8FF7A8 80240138 46800020 */  cvt.s.w   $f0, $f0
/* 8FF7AC 8024013C 8C62000C */  lw        $v0, 0xc($v1)
/* 8FF7B0 80240140 E4400010 */  swc1      $f0, 0x10($v0)
/* 8FF7B4 80240144 8C62000C */  lw        $v0, 0xc($v1)
/* 8FF7B8 80240148 3C038025 */  lui       $v1, %hi(D_802483C4)
/* 8FF7BC 8024014C 8C6383C4 */  lw        $v1, %lo(D_802483C4)($v1)
/* 8FF7C0 80240150 44860000 */  mtc1      $a2, $f0
/* 8FF7C4 80240154 00000000 */  nop
/* 8FF7C8 80240158 46800020 */  cvt.s.w   $f0, $f0
/* 8FF7CC 8024015C E4400014 */  swc1      $f0, 0x14($v0)
/* 8FF7D0 80240160 28620014 */  slti      $v0, $v1, 0x14
/* 8FF7D4 80240164 1440000A */  bnez      $v0, .L80240190
/* 8FF7D8 80240168 24040118 */   addiu    $a0, $zero, 0x118
/* 8FF7DC 8024016C 28620028 */  slti      $v0, $v1, 0x28
/* 8FF7E0 80240170 10400008 */  beqz      $v0, .L80240194
/* 8FF7E4 80240174 2462FFEC */   addiu    $v0, $v1, -0x14
/* 8FF7E8 80240178 00021040 */  sll       $v0, $v0, 1
/* 8FF7EC 8024017C 3C018024 */  lui       $at, %hi(D_80240DE0_900450)
/* 8FF7F0 80240180 00220821 */  addu      $at, $at, $v0
/* 8FF7F4 80240184 84220DE0 */  lh        $v0, %lo(D_80240DE0_900450)($at)
/* 8FF7F8 80240188 08090065 */  j         .L80240194
/* 8FF7FC 8024018C 00442021 */   addu     $a0, $v0, $a0
.L80240190:
/* 8FF800 80240190 2404024E */  addiu     $a0, $zero, 0x24e
.L80240194:
/* 8FF804 80240194 3C058025 */  lui       $a1, %hi(D_802483C0)
/* 8FF808 80240198 8CA583C0 */  lw        $a1, %lo(D_802483C0)($a1)
/* 8FF80C 8024019C 8CA3000C */  lw        $v1, 0xc($a1)
/* 8FF810 802401A0 2406005A */  addiu     $a2, $zero, 0x5a
/* 8FF814 802401A4 AC640040 */  sw        $a0, 0x40($v1)
/* 8FF818 802401A8 3C048025 */  lui       $a0, %hi(D_802483C4)
/* 8FF81C 802401AC 248483C4 */  addiu     $a0, $a0, %lo(D_802483C4)
/* 8FF820 802401B0 8C830000 */  lw        $v1, ($a0)
/* 8FF824 802401B4 8CA5000C */  lw        $a1, 0xc($a1)
/* 8FF828 802401B8 24630001 */  addiu     $v1, $v1, 1
/* 8FF82C 802401BC AC830000 */  sw        $v1, ($a0)
/* 8FF830 802401C0 ACA60044 */  sw        $a2, 0x44($a1)
/* 8FF834 802401C4 8FBF0020 */  lw        $ra, 0x20($sp)
/* 8FF838 802401C8 8FB1001C */  lw        $s1, 0x1c($sp)
/* 8FF83C 802401CC 8FB00018 */  lw        $s0, 0x18($sp)
/* 8FF840 802401D0 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 8FF844 802401D4 0000102D */  daddu     $v0, $zero, $zero
/* 8FF848 802401D8 03E00008 */  jr        $ra
/* 8FF84C 802401DC 27BD0030 */   addiu    $sp, $sp, 0x30
