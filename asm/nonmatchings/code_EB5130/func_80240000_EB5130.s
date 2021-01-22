.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel nonmatchings_DeadUnkTexturePanFunc
/* EB5130 80240000 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* EB5134 80240004 AFB00010 */  sw        $s0, 0x10($sp)
/* EB5138 80240008 0080802D */  daddu     $s0, $a0, $zero
/* EB513C 8024000C AFBF0014 */  sw        $ra, 0x14($sp)
/* EB5140 80240010 8E0300A8 */  lw        $v1, 0xa8($s0)
/* EB5144 80240014 8E020088 */  lw        $v0, 0x88($s0)
/* EB5148 80240018 00621821 */  addu      $v1, $v1, $v0
/* EB514C 8024001C 04610004 */  bgez      $v1, .L80240030
/* EB5150 80240020 AE0300A8 */   sw       $v1, 0xa8($s0)
/* EB5154 80240024 3C020002 */  lui       $v0, 2
/* EB5158 80240028 08090010 */  j         .L80240040
/* EB515C 8024002C 00621021 */   addu     $v0, $v1, $v0
.L80240030:
/* EB5160 80240030 3C040002 */  lui       $a0, 2
/* EB5164 80240034 0083102A */  slt       $v0, $a0, $v1
/* EB5168 80240038 10400002 */  beqz      $v0, .L80240044
/* EB516C 8024003C 00641023 */   subu     $v0, $v1, $a0
.L80240040:
/* EB5170 80240040 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240044:
/* EB5174 80240044 8E0300AC */  lw        $v1, 0xac($s0)
/* EB5178 80240048 8E02008C */  lw        $v0, 0x8c($s0)
/* EB517C 8024004C 00621821 */  addu      $v1, $v1, $v0
/* EB5180 80240050 04610004 */  bgez      $v1, .L80240064
/* EB5184 80240054 AE0300AC */   sw       $v1, 0xac($s0)
/* EB5188 80240058 3C020002 */  lui       $v0, 2
/* EB518C 8024005C 0809001D */  j         .L80240074
/* EB5190 80240060 00621021 */   addu     $v0, $v1, $v0
.L80240064:
/* EB5194 80240064 3C040002 */  lui       $a0, 2
/* EB5198 80240068 0083102A */  slt       $v0, $a0, $v1
/* EB519C 8024006C 10400002 */  beqz      $v0, .L80240078
/* EB51A0 80240070 00641023 */   subu     $v0, $v1, $a0
.L80240074:
/* EB51A4 80240074 AE0200AC */  sw        $v0, 0xac($s0)
.L80240078:
/* EB51A8 80240078 8E0300B0 */  lw        $v1, 0xb0($s0)
/* EB51AC 8024007C 8E020090 */  lw        $v0, 0x90($s0)
/* EB51B0 80240080 00621821 */  addu      $v1, $v1, $v0
/* EB51B4 80240084 04610004 */  bgez      $v1, .L80240098
/* EB51B8 80240088 AE0300B0 */   sw       $v1, 0xb0($s0)
/* EB51BC 8024008C 3C020002 */  lui       $v0, 2
/* EB51C0 80240090 0809002A */  j         .L802400A8
/* EB51C4 80240094 00621021 */   addu     $v0, $v1, $v0
.L80240098:
/* EB51C8 80240098 3C040002 */  lui       $a0, 2
/* EB51CC 8024009C 0083102A */  slt       $v0, $a0, $v1
/* EB51D0 802400A0 10400002 */  beqz      $v0, .L802400AC
/* EB51D4 802400A4 00641023 */   subu     $v0, $v1, $a0
.L802400A8:
/* EB51D8 802400A8 AE0200B0 */  sw        $v0, 0xb0($s0)
.L802400AC:
/* EB51DC 802400AC 8E0300B4 */  lw        $v1, 0xb4($s0)
/* EB51E0 802400B0 8E020094 */  lw        $v0, 0x94($s0)
/* EB51E4 802400B4 00621821 */  addu      $v1, $v1, $v0
/* EB51E8 802400B8 04610004 */  bgez      $v1, .L802400CC
/* EB51EC 802400BC AE0300B4 */   sw       $v1, 0xb4($s0)
/* EB51F0 802400C0 3C020002 */  lui       $v0, 2
/* EB51F4 802400C4 08090037 */  j         .L802400DC
/* EB51F8 802400C8 00621021 */   addu     $v0, $v1, $v0
.L802400CC:
/* EB51FC 802400CC 3C040002 */  lui       $a0, 2
/* EB5200 802400D0 0083102A */  slt       $v0, $a0, $v1
/* EB5204 802400D4 10400002 */  beqz      $v0, .L802400E0
/* EB5208 802400D8 00641023 */   subu     $v0, $v1, $a0
.L802400DC:
/* EB520C 802400DC AE0200B4 */  sw        $v0, 0xb4($s0)
.L802400E0:
/* EB5210 802400E0 8E040084 */  lw        $a0, 0x84($s0)
/* EB5214 802400E4 0C049819 */  jal       func_80126064
/* EB5218 802400E8 8E0500A8 */   lw       $a1, 0xa8($s0)
/* EB521C 802400EC 8E040084 */  lw        $a0, 0x84($s0)
/* EB5220 802400F0 0C04981F */  jal       func_8012607C
/* EB5224 802400F4 8E0500AC */   lw       $a1, 0xac($s0)
/* EB5228 802400F8 8E040084 */  lw        $a0, 0x84($s0)
/* EB522C 802400FC 0C049825 */  jal       func_80126094
/* EB5230 80240100 8E0500B0 */   lw       $a1, 0xb0($s0)
/* EB5234 80240104 8E040084 */  lw        $a0, 0x84($s0)
/* EB5238 80240108 0C04982B */  jal       func_801260AC
/* EB523C 8024010C 8E0500B4 */   lw       $a1, 0xb4($s0)
/* EB5240 80240110 8FBF0014 */  lw        $ra, 0x14($sp)
/* EB5244 80240114 8FB00010 */  lw        $s0, 0x10($sp)
/* EB5248 80240118 0000102D */  daddu     $v0, $zero, $zero
/* EB524C 8024011C 03E00008 */  jr        $ra
/* EB5250 80240120 27BD0018 */   addiu    $sp, $sp, 0x18
