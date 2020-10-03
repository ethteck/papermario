.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80048F0C
/* 2430C 80048F0C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 24310 80048F10 AFB50024 */  sw        $s5, 0x24($sp)
/* 24314 80048F14 3C15800B */  lui       $s5, %hi(gCurrentEncounter)
/* 24318 80048F18 26B50F10 */  addiu     $s5, $s5, %lo(gCurrentEncounter)
/* 2431C 80048F1C AFBF0028 */  sw        $ra, 0x28($sp)
/* 24320 80048F20 AFB40020 */  sw        $s4, 0x20($sp)
/* 24324 80048F24 AFB3001C */  sw        $s3, 0x1c($sp)
/* 24328 80048F28 AFB20018 */  sw        $s2, 0x18($sp)
/* 2432C 80048F2C AFB10014 */  sw        $s1, 0x14($sp)
/* 24330 80048F30 AFB00010 */  sw        $s0, 0x10($sp)
/* 24334 80048F34 82A2001C */  lb        $v0, 0x1c($s5)
/* 24338 80048F38 1840001C */  blez      $v0, .L80048FAC
/* 2433C 80048F3C 0000982D */   daddu    $s3, $zero, $zero
/* 24340 80048F40 02A0A02D */  daddu     $s4, $s5, $zero
.L80048F44:
/* 24344 80048F44 8E920028 */  lw        $s2, 0x28($s4)
/* 24348 80048F48 12400013 */  beqz      $s2, .L80048F98
/* 2434C 80048F4C 00000000 */   nop      
/* 24350 80048F50 8E420000 */  lw        $v0, ($s2)
/* 24354 80048F54 18400010 */  blez      $v0, .L80048F98
/* 24358 80048F58 0000802D */   daddu    $s0, $zero, $zero
/* 2435C 80048F5C 0240882D */  daddu     $s1, $s2, $zero
.L80048F60:
/* 24360 80048F60 8E230004 */  lw        $v1, 4($s1)
/* 24364 80048F64 10600007 */  beqz      $v1, .L80048F84
/* 24368 80048F68 00000000 */   nop      
/* 2436C 80048F6C 8C620000 */  lw        $v0, ($v1)
/* 24370 80048F70 30420020 */  andi      $v0, $v0, 0x20
/* 24374 80048F74 14400003 */  bnez      $v0, .L80048F84
/* 24378 80048F78 00000000 */   nop      
/* 2437C 80048F7C 0C00EABB */  jal       get_npc_unsafe
/* 24380 80048F80 84640008 */   lh       $a0, 8($v1)
.L80048F84:
/* 24384 80048F84 8E420000 */  lw        $v0, ($s2)
/* 24388 80048F88 26100001 */  addiu     $s0, $s0, 1
/* 2438C 80048F8C 0202102A */  slt       $v0, $s0, $v0
/* 24390 80048F90 1440FFF3 */  bnez      $v0, .L80048F60
/* 24394 80048F94 26310004 */   addiu    $s1, $s1, 4
.L80048F98:
/* 24398 80048F98 82A2001C */  lb        $v0, 0x1c($s5)
/* 2439C 80048F9C 26730001 */  addiu     $s3, $s3, 1
/* 243A0 80048FA0 0262102A */  slt       $v0, $s3, $v0
/* 243A4 80048FA4 1440FFE7 */  bnez      $v0, .L80048F44
/* 243A8 80048FA8 26940004 */   addiu    $s4, $s4, 4
.L80048FAC:
/* 243AC 80048FAC 8FBF0028 */  lw        $ra, 0x28($sp)
/* 243B0 80048FB0 8FB50024 */  lw        $s5, 0x24($sp)
/* 243B4 80048FB4 8FB40020 */  lw        $s4, 0x20($sp)
/* 243B8 80048FB8 8FB3001C */  lw        $s3, 0x1c($sp)
/* 243BC 80048FBC 8FB20018 */  lw        $s2, 0x18($sp)
/* 243C0 80048FC0 8FB10014 */  lw        $s1, 0x14($sp)
/* 243C4 80048FC4 8FB00010 */  lw        $s0, 0x10($sp)
/* 243C8 80048FC8 0000102D */  daddu     $v0, $zero, $zero
/* 243CC 80048FCC 03E00008 */  jr        $ra
/* 243D0 80048FD0 27BD0030 */   addiu    $sp, $sp, 0x30
