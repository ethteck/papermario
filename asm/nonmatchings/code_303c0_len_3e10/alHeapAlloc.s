.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel alHeapAlloc
/* 33390 80057F90 0080382D */  daddu     $a3, $a0, $zero
/* 33394 80057F94 00A60018 */  mult      $a1, $a2
/* 33398 80057F98 2402FFF0 */  addiu     $v0, $zero, -0x10
/* 3339C 80057F9C 8CE50004 */  lw        $a1, 4($a3)
/* 333A0 80057FA0 8CE40008 */  lw        $a0, 8($a3)
/* 333A4 80057FA4 00004012 */  mflo      $t0
/* 333A8 80057FA8 2503000F */  addiu     $v1, $t0, 0xf
/* 333AC 80057FAC 00621824 */  and       $v1, $v1, $v0
/* 333B0 80057FB0 8CE20000 */  lw        $v0, ($a3)
/* 333B4 80057FB4 00A31821 */  addu      $v1, $a1, $v1
/* 333B8 80057FB8 00441021 */  addu      $v0, $v0, $a0
/* 333BC 80057FBC 0043102B */  sltu      $v0, $v0, $v1
/* 333C0 80057FC0 14400003 */  bnez      $v0, .L80057FD0
/* 333C4 80057FC4 0000302D */   daddu    $a2, $zero, $zero
/* 333C8 80057FC8 00A0302D */  daddu     $a2, $a1, $zero
/* 333CC 80057FCC ACE30004 */  sw        $v1, 4($a3)
.L80057FD0:
/* 333D0 80057FD0 03E00008 */  jr        $ra
/* 333D4 80057FD4 00C0102D */   daddu    $v0, $a2, $zero
