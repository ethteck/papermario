.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel nonmatchings_DeadUnkTexturePanFunc
/* EF7A80 80240000 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* EF7A84 80240004 AFB00010 */  sw        $s0, 0x10($sp)
/* EF7A88 80240008 0080802D */  daddu     $s0, $a0, $zero
/* EF7A8C 8024000C AFBF0014 */  sw        $ra, 0x14($sp)
/* EF7A90 80240010 8E0300A8 */  lw        $v1, 0xa8($s0)
/* EF7A94 80240014 8E020088 */  lw        $v0, 0x88($s0)
/* EF7A98 80240018 00621821 */  addu      $v1, $v1, $v0
/* EF7A9C 8024001C 04610004 */  bgez      $v1, .L80240030
/* EF7AA0 80240020 AE0300A8 */   sw       $v1, 0xa8($s0)
/* EF7AA4 80240024 3C020002 */  lui       $v0, 2
/* EF7AA8 80240028 08090010 */  j         .L80240040
/* EF7AAC 8024002C 00621021 */   addu     $v0, $v1, $v0
.L80240030:
/* EF7AB0 80240030 3C040002 */  lui       $a0, 2
/* EF7AB4 80240034 0083102A */  slt       $v0, $a0, $v1
/* EF7AB8 80240038 10400002 */  beqz      $v0, .L80240044
/* EF7ABC 8024003C 00641023 */   subu     $v0, $v1, $a0
.L80240040:
/* EF7AC0 80240040 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240044:
/* EF7AC4 80240044 8E0300AC */  lw        $v1, 0xac($s0)
/* EF7AC8 80240048 8E02008C */  lw        $v0, 0x8c($s0)
/* EF7ACC 8024004C 00621821 */  addu      $v1, $v1, $v0
/* EF7AD0 80240050 04610004 */  bgez      $v1, .L80240064
/* EF7AD4 80240054 AE0300AC */   sw       $v1, 0xac($s0)
/* EF7AD8 80240058 3C020002 */  lui       $v0, 2
/* EF7ADC 8024005C 0809001D */  j         .L80240074
/* EF7AE0 80240060 00621021 */   addu     $v0, $v1, $v0
.L80240064:
/* EF7AE4 80240064 3C040002 */  lui       $a0, 2
/* EF7AE8 80240068 0083102A */  slt       $v0, $a0, $v1
/* EF7AEC 8024006C 10400002 */  beqz      $v0, .L80240078
/* EF7AF0 80240070 00641023 */   subu     $v0, $v1, $a0
.L80240074:
/* EF7AF4 80240074 AE0200AC */  sw        $v0, 0xac($s0)
.L80240078:
/* EF7AF8 80240078 8E0300B0 */  lw        $v1, 0xb0($s0)
/* EF7AFC 8024007C 8E020090 */  lw        $v0, 0x90($s0)
/* EF7B00 80240080 00621821 */  addu      $v1, $v1, $v0
/* EF7B04 80240084 04610004 */  bgez      $v1, .L80240098
/* EF7B08 80240088 AE0300B0 */   sw       $v1, 0xb0($s0)
/* EF7B0C 8024008C 3C020002 */  lui       $v0, 2
/* EF7B10 80240090 0809002A */  j         .L802400A8
/* EF7B14 80240094 00621021 */   addu     $v0, $v1, $v0
.L80240098:
/* EF7B18 80240098 3C040002 */  lui       $a0, 2
/* EF7B1C 8024009C 0083102A */  slt       $v0, $a0, $v1
/* EF7B20 802400A0 10400002 */  beqz      $v0, .L802400AC
/* EF7B24 802400A4 00641023 */   subu     $v0, $v1, $a0
.L802400A8:
/* EF7B28 802400A8 AE0200B0 */  sw        $v0, 0xb0($s0)
.L802400AC:
/* EF7B2C 802400AC 8E0300B4 */  lw        $v1, 0xb4($s0)
/* EF7B30 802400B0 8E020094 */  lw        $v0, 0x94($s0)
/* EF7B34 802400B4 00621821 */  addu      $v1, $v1, $v0
/* EF7B38 802400B8 04610004 */  bgez      $v1, .L802400CC
/* EF7B3C 802400BC AE0300B4 */   sw       $v1, 0xb4($s0)
/* EF7B40 802400C0 3C020002 */  lui       $v0, 2
/* EF7B44 802400C4 08090037 */  j         .L802400DC
/* EF7B48 802400C8 00621021 */   addu     $v0, $v1, $v0
.L802400CC:
/* EF7B4C 802400CC 3C040002 */  lui       $a0, 2
/* EF7B50 802400D0 0083102A */  slt       $v0, $a0, $v1
/* EF7B54 802400D4 10400002 */  beqz      $v0, .L802400E0
/* EF7B58 802400D8 00641023 */   subu     $v0, $v1, $a0
.L802400DC:
/* EF7B5C 802400DC AE0200B4 */  sw        $v0, 0xb4($s0)
.L802400E0:
/* EF7B60 802400E0 8E040084 */  lw        $a0, 0x84($s0)
/* EF7B64 802400E4 0C049819 */  jal       func_80126064
/* EF7B68 802400E8 8E0500A8 */   lw       $a1, 0xa8($s0)
/* EF7B6C 802400EC 8E040084 */  lw        $a0, 0x84($s0)
/* EF7B70 802400F0 0C04981F */  jal       func_8012607C
/* EF7B74 802400F4 8E0500AC */   lw       $a1, 0xac($s0)
/* EF7B78 802400F8 8E040084 */  lw        $a0, 0x84($s0)
/* EF7B7C 802400FC 0C049825 */  jal       func_80126094
/* EF7B80 80240100 8E0500B0 */   lw       $a1, 0xb0($s0)
/* EF7B84 80240104 8E040084 */  lw        $a0, 0x84($s0)
/* EF7B88 80240108 0C04982B */  jal       func_801260AC
/* EF7B8C 8024010C 8E0500B4 */   lw       $a1, 0xb4($s0)
/* EF7B90 80240110 8FBF0014 */  lw        $ra, 0x14($sp)
/* EF7B94 80240114 8FB00010 */  lw        $s0, 0x10($sp)
/* EF7B98 80240118 0000102D */  daddu     $v0, $zero, $zero
/* EF7B9C 8024011C 03E00008 */  jr        $ra
/* EF7BA0 80240120 27BD0018 */   addiu    $sp, $sp, 0x18
