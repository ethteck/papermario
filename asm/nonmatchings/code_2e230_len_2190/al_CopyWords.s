.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel al_CopyWords
/* 30374 80054F74 04C10002 */  bgez      $a2, .L80054F80
/* 30378 80054F78 00C0102D */   daddu    $v0, $a2, $zero
/* 3037C 80054F7C 24C20003 */  addiu     $v0, $a2, 3
.L80054F80:
/* 30380 80054F80 00023083 */  sra       $a2, $v0, 2
/* 30384 80054F84 18C0000B */  blez      $a2, .L80054FB4
/* 30388 80054F88 00851025 */   or       $v0, $a0, $a1
/* 3038C 80054F8C 30420003 */  andi      $v0, $v0, 3
/* 30390 80054F90 14400008 */  bnez      $v0, .L80054FB4
/* 30394 80054F94 24C6FFFF */   addiu    $a2, $a2, -1
.L80054F98:
/* 30398 80054F98 8C820000 */  lw        $v0, ($a0)
/* 3039C 80054F9C 24840004 */  addiu     $a0, $a0, 4
/* 303A0 80054FA0 00C0182D */  daddu     $v1, $a2, $zero
/* 303A4 80054FA4 24C6FFFF */  addiu     $a2, $a2, -1
/* 303A8 80054FA8 ACA20000 */  sw        $v0, ($a1)
/* 303AC 80054FAC 1460FFFA */  bnez      $v1, .L80054F98
/* 303B0 80054FB0 24A50004 */   addiu    $a1, $a1, 4
.L80054FB4:
/* 303B4 80054FB4 03E00008 */  jr        $ra
/* 303B8 80054FB8 00000000 */   nop      
/* 303BC 80054FBC 00000000 */  nop       
