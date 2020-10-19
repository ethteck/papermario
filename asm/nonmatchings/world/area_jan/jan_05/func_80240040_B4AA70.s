.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240040_B4AAB0
/* B4AAB0 80240040 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* B4AAB4 80240044 AFB00010 */  sw        $s0, 0x10($sp)
/* B4AAB8 80240048 0080802D */  daddu     $s0, $a0, $zero
/* B4AABC 8024004C AFBF0014 */  sw        $ra, 0x14($sp)
/* B4AAC0 80240050 8E0300A8 */  lw        $v1, 0xa8($s0)
/* B4AAC4 80240054 8E020088 */  lw        $v0, 0x88($s0)
/* B4AAC8 80240058 00621821 */  addu      $v1, $v1, $v0
/* B4AACC 8024005C 04610004 */  bgez      $v1, .L80240070
/* B4AAD0 80240060 AE0300A8 */   sw       $v1, 0xa8($s0)
/* B4AAD4 80240064 3C020002 */  lui       $v0, 2
/* B4AAD8 80240068 08090020 */  j         .L80240080
/* B4AADC 8024006C 00621021 */   addu     $v0, $v1, $v0
.L80240070:
/* B4AAE0 80240070 3C040002 */  lui       $a0, 2
/* B4AAE4 80240074 0083102A */  slt       $v0, $a0, $v1
/* B4AAE8 80240078 10400002 */  beqz      $v0, .L80240084
/* B4AAEC 8024007C 00641023 */   subu     $v0, $v1, $a0
.L80240080:
/* B4AAF0 80240080 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240084:
/* B4AAF4 80240084 8E0300AC */  lw        $v1, 0xac($s0)
/* B4AAF8 80240088 8E02008C */  lw        $v0, 0x8c($s0)
/* B4AAFC 8024008C 00621821 */  addu      $v1, $v1, $v0
/* B4AB00 80240090 04610004 */  bgez      $v1, .L802400A4
/* B4AB04 80240094 AE0300AC */   sw       $v1, 0xac($s0)
/* B4AB08 80240098 3C020002 */  lui       $v0, 2
/* B4AB0C 8024009C 0809002D */  j         .L802400B4
/* B4AB10 802400A0 00621021 */   addu     $v0, $v1, $v0
.L802400A4:
/* B4AB14 802400A4 3C040002 */  lui       $a0, 2
/* B4AB18 802400A8 0083102A */  slt       $v0, $a0, $v1
/* B4AB1C 802400AC 10400002 */  beqz      $v0, .L802400B8
/* B4AB20 802400B0 00641023 */   subu     $v0, $v1, $a0
.L802400B4:
/* B4AB24 802400B4 AE0200AC */  sw        $v0, 0xac($s0)
.L802400B8:
/* B4AB28 802400B8 8E0300B0 */  lw        $v1, 0xb0($s0)
/* B4AB2C 802400BC 8E020090 */  lw        $v0, 0x90($s0)
/* B4AB30 802400C0 00621821 */  addu      $v1, $v1, $v0
/* B4AB34 802400C4 04610004 */  bgez      $v1, .L802400D8
/* B4AB38 802400C8 AE0300B0 */   sw       $v1, 0xb0($s0)
/* B4AB3C 802400CC 3C020002 */  lui       $v0, 2
/* B4AB40 802400D0 0809003A */  j         .L802400E8
/* B4AB44 802400D4 00621021 */   addu     $v0, $v1, $v0
.L802400D8:
/* B4AB48 802400D8 3C040002 */  lui       $a0, 2
/* B4AB4C 802400DC 0083102A */  slt       $v0, $a0, $v1
/* B4AB50 802400E0 10400002 */  beqz      $v0, .L802400EC
/* B4AB54 802400E4 00641023 */   subu     $v0, $v1, $a0
.L802400E8:
/* B4AB58 802400E8 AE0200B0 */  sw        $v0, 0xb0($s0)
.L802400EC:
/* B4AB5C 802400EC 8E0300B4 */  lw        $v1, 0xb4($s0)
/* B4AB60 802400F0 8E020094 */  lw        $v0, 0x94($s0)
/* B4AB64 802400F4 00621821 */  addu      $v1, $v1, $v0
/* B4AB68 802400F8 04610004 */  bgez      $v1, .L8024010C
/* B4AB6C 802400FC AE0300B4 */   sw       $v1, 0xb4($s0)
/* B4AB70 80240100 3C020002 */  lui       $v0, 2
/* B4AB74 80240104 08090047 */  j         .L8024011C
/* B4AB78 80240108 00621021 */   addu     $v0, $v1, $v0
.L8024010C:
/* B4AB7C 8024010C 3C040002 */  lui       $a0, 2
/* B4AB80 80240110 0083102A */  slt       $v0, $a0, $v1
/* B4AB84 80240114 10400002 */  beqz      $v0, .L80240120
/* B4AB88 80240118 00641023 */   subu     $v0, $v1, $a0
.L8024011C:
/* B4AB8C 8024011C AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240120:
/* B4AB90 80240120 8E040084 */  lw        $a0, 0x84($s0)
/* B4AB94 80240124 0C046F07 */  jal       set_main_pan_u
/* B4AB98 80240128 8E0500A8 */   lw       $a1, 0xa8($s0)
/* B4AB9C 8024012C 8E040084 */  lw        $a0, 0x84($s0)
/* B4ABA0 80240130 0C046F0D */  jal       set_main_pan_v
/* B4ABA4 80240134 8E0500AC */   lw       $a1, 0xac($s0)
/* B4ABA8 80240138 8E040084 */  lw        $a0, 0x84($s0)
/* B4ABAC 8024013C 0C046F13 */  jal       set_aux_pan_u
/* B4ABB0 80240140 8E0500B0 */   lw       $a1, 0xb0($s0)
/* B4ABB4 80240144 8E040084 */  lw        $a0, 0x84($s0)
/* B4ABB8 80240148 0C046F19 */  jal       set_aux_pan_v
/* B4ABBC 8024014C 8E0500B4 */   lw       $a1, 0xb4($s0)
/* B4ABC0 80240150 8FBF0014 */  lw        $ra, 0x14($sp)
/* B4ABC4 80240154 8FB00010 */  lw        $s0, 0x10($sp)
/* B4ABC8 80240158 0000102D */  daddu     $v0, $zero, $zero
/* B4ABCC 8024015C 03E00008 */  jr        $ra
/* B4ABD0 80240160 27BD0018 */   addiu    $sp, $sp, 0x18
