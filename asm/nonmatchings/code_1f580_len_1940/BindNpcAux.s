.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel BindNpcAux
/* 202B8 80044EB8 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 202BC 80044EBC AFB10014 */  sw        $s1, 0x14($sp)
/* 202C0 80044EC0 0080882D */  daddu     $s1, $a0, $zero
/* 202C4 80044EC4 AFBF0020 */  sw        $ra, 0x20($sp)
/* 202C8 80044EC8 AFB3001C */  sw        $s3, 0x1c($sp)
/* 202CC 80044ECC AFB20018 */  sw        $s2, 0x18($sp)
/* 202D0 80044ED0 AFB00010 */  sw        $s0, 0x10($sp)
/* 202D4 80044ED4 8E30000C */  lw        $s0, 0xc($s1)
/* 202D8 80044ED8 8E330148 */  lw        $s3, 0x148($s1)
/* 202DC 80044EDC 8E050000 */  lw        $a1, ($s0)
/* 202E0 80044EE0 0C0B1EAF */  jal       get_variable
/* 202E4 80044EE4 26100004 */   addiu    $s0, $s0, 4
/* 202E8 80044EE8 0040902D */  daddu     $s2, $v0, $zero
/* 202EC 80044EEC 8E050000 */  lw        $a1, ($s0)
/* 202F0 80044EF0 0C0B1EAF */  jal       get_variable
/* 202F4 80044EF4 0220202D */   daddu    $a0, $s1, $zero
/* 202F8 80044EF8 0040802D */  daddu     $s0, $v0, $zero
/* 202FC 80044EFC 2402FFFF */  addiu     $v0, $zero, -1
/* 20300 80044F00 16420002 */  bne       $s2, $v0, .L80044F0C
/* 20304 80044F04 00000000 */   nop      
/* 20308 80044F08 86720008 */  lh        $s2, 8($s3)
.L80044F0C:
/* 2030C 80044F0C 0C00FB3A */  jal       get_enemy
/* 20310 80044F10 0240202D */   daddu    $a0, $s2, $zero
/* 20314 80044F14 AC50002C */  sw        $s0, 0x2c($v0)
/* 20318 80044F18 8FBF0020 */  lw        $ra, 0x20($sp)
/* 2031C 80044F1C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 20320 80044F20 8FB20018 */  lw        $s2, 0x18($sp)
/* 20324 80044F24 8FB10014 */  lw        $s1, 0x14($sp)
/* 20328 80044F28 8FB00010 */  lw        $s0, 0x10($sp)
/* 2032C 80044F2C 24020002 */  addiu     $v0, $zero, 2
/* 20330 80044F30 03E00008 */  jr        $ra
/* 20334 80044F34 27BD0028 */   addiu    $sp, $sp, 0x28
