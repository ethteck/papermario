.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80045348
/* 20748 80045348 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 2074C 8004534C AFB10014 */  sw        $s1, 0x14($sp)
/* 20750 80045350 0080882D */  daddu     $s1, $a0, $zero
/* 20754 80045354 AFBF0020 */  sw        $ra, 0x20($sp)
/* 20758 80045358 AFB3001C */  sw        $s3, 0x1c($sp)
/* 2075C 8004535C AFB20018 */  sw        $s2, 0x18($sp)
/* 20760 80045360 AFB00010 */  sw        $s0, 0x10($sp)
/* 20764 80045364 8E30000C */  lw        $s0, 0xc($s1)
/* 20768 80045368 8E330148 */  lw        $s3, 0x148($s1)
/* 2076C 8004536C 8E050000 */  lw        $a1, ($s0)
/* 20770 80045370 0C0B1EAF */  jal       func_802C7ABC
/* 20774 80045374 26100004 */   addiu    $s0, $s0, 4
/* 20778 80045378 0040902D */  daddu     $s2, $v0, $zero
/* 2077C 8004537C 8E050004 */  lw        $a1, 4($s0)
/* 20780 80045380 8E100000 */  lw        $s0, ($s0)
/* 20784 80045384 0C0B1EAF */  jal       func_802C7ABC
/* 20788 80045388 0220202D */   daddu    $a0, $s1, $zero
/* 2078C 8004538C 0040882D */  daddu     $s1, $v0, $zero
/* 20790 80045390 2402FFFF */  addiu     $v0, $zero, -1
/* 20794 80045394 16420002 */  bne       $s2, $v0, .L800453A0
/* 20798 80045398 00000000 */   nop
/* 2079C 8004539C 86720008 */  lh        $s2, 8($s3)
.L800453A0:
/* 207A0 800453A0 0C00FA6A */  jal       func_8003E9A8
/* 207A4 800453A4 0240202D */   daddu    $a0, $s2, $zero
/* 207A8 800453A8 12200004 */  beqz      $s1, .L800453BC
/* 207AC 800453AC 0040982D */   daddu    $s3, $v0, $zero
/* 207B0 800453B0 8E620000 */  lw        $v0, ($s3)
/* 207B4 800453B4 080114F2 */  j         .L800453C8
/* 207B8 800453B8 00501025 */   or       $v0, $v0, $s0
.L800453BC:
/* 207BC 800453BC 8E620000 */  lw        $v0, ($s3)
/* 207C0 800453C0 00101827 */  nor       $v1, $zero, $s0
/* 207C4 800453C4 00431024 */  and       $v0, $v0, $v1
.L800453C8:
/* 207C8 800453C8 AE620000 */  sw        $v0, ($s3)
/* 207CC 800453CC 8FBF0020 */  lw        $ra, 0x20($sp)
/* 207D0 800453D0 8FB3001C */  lw        $s3, 0x1c($sp)
/* 207D4 800453D4 8FB20018 */  lw        $s2, 0x18($sp)
/* 207D8 800453D8 8FB10014 */  lw        $s1, 0x14($sp)
/* 207DC 800453DC 8FB00010 */  lw        $s0, 0x10($sp)
/* 207E0 800453E0 24020002 */  addiu     $v0, $zero, 2
/* 207E4 800453E4 03E00008 */  jr        $ra
/* 207E8 800453E8 27BD0028 */   addiu    $sp, $sp, 0x28
