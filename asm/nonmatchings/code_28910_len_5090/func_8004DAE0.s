.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8004DAE0
/* 28EE0 8004DAE0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 28EE4 8004DAE4 AFB00010 */  sw        $s0, 0x10($sp)
/* 28EE8 8004DAE8 0080802D */  daddu     $s0, $a0, $zero
/* 28EEC 8004DAEC 12000009 */  beqz      $s0, .L8004DB14
/* 28EF0 8004DAF0 AFBF0014 */   sw       $ra, 0x14($sp)
/* 28EF4 8004DAF4 0C0135E5 */  jal       func_8004D794
/* 28EF8 8004DAF8 00000000 */   nop      
/* 28EFC 8004DAFC 50400006 */  beql      $v0, $zero, .L8004DB18
/* 28F00 8004DB00 24020002 */   addiu    $v0, $zero, 2
/* 28F04 8004DB04 8C42001C */  lw        $v0, 0x1c($v0)
/* 28F08 8004DB08 02021026 */  xor       $v0, $s0, $v0
/* 28F0C 8004DB0C 080136C6 */  j         .L8004DB18
/* 28F10 8004DB10 2C420001 */   sltiu    $v0, $v0, 1
.L8004DB14:
/* 28F14 8004DB14 24020003 */  addiu     $v0, $zero, 3
.L8004DB18:
/* 28F18 8004DB18 8FBF0014 */  lw        $ra, 0x14($sp)
/* 28F1C 8004DB1C 8FB00010 */  lw        $s0, 0x10($sp)
/* 28F20 8004DB20 03E00008 */  jr        $ra
/* 28F24 8004DB24 27BD0018 */   addiu    $sp, $sp, 0x18
