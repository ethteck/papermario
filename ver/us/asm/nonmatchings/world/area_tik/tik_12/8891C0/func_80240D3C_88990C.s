.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240D3C_88990C
/* 88990C 80240D3C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 889910 80240D40 AFB3001C */  sw        $s3, 0x1c($sp)
/* 889914 80240D44 0080982D */  daddu     $s3, $a0, $zero
/* 889918 80240D48 AFB00010 */  sw        $s0, 0x10($sp)
/* 88991C 80240D4C 24100001 */  addiu     $s0, $zero, 1
/* 889920 80240D50 AFB40020 */  sw        $s4, 0x20($sp)
/* 889924 80240D54 2414FFFF */  addiu     $s4, $zero, -1
/* 889928 80240D58 AFB50024 */  sw        $s5, 0x24($sp)
/* 88992C 80240D5C 0200A82D */  daddu     $s5, $s0, $zero
/* 889930 80240D60 AFB10014 */  sw        $s1, 0x14($sp)
/* 889934 80240D64 3C118011 */  lui       $s1, %hi(gPlayerData+0x8)
/* 889938 80240D68 2631F298 */  addiu     $s1, $s1, %lo(gPlayerData+0x8)
/* 88993C 80240D6C AFBF0028 */  sw        $ra, 0x28($sp)
/* 889940 80240D70 AFB20018 */  sw        $s2, 0x18($sp)
/* 889944 80240D74 8E6200B4 */  lw        $v0, 0xb4($s3)
/* 889948 80240D78 0280182D */  daddu     $v1, $s4, $zero
/* 88994C 80240D7C AE630084 */  sw        $v1, 0x84($s3)
/* 889950 80240D80 00021027 */  nor       $v0, $zero, $v0
/* 889954 80240D84 000217C2 */  srl       $v0, $v0, 0x1f
/* 889958 80240D88 00029400 */  sll       $s2, $v0, 0x10
.L80240D8C:
/* 88995C 80240D8C 92220014 */  lbu       $v0, 0x14($s1)
/* 889960 80240D90 50400008 */  beql      $v0, $zero, .L80240DB4
/* 889964 80240D94 26100001 */   addiu    $s0, $s0, 1
/* 889968 80240D98 0200202D */  daddu     $a0, $s0, $zero
/* 88996C 80240D9C 0C09033C */  jal       func_80240CF0_8898C0
/* 889970 80240DA0 00122C03 */   sra      $a1, $s2, 0x10
/* 889974 80240DA4 10540003 */  beq       $v0, $s4, .L80240DB4
/* 889978 80240DA8 26100001 */   addiu    $s0, $s0, 1
/* 88997C 80240DAC 08090370 */  j         .L80240DC0
/* 889980 80240DB0 AE750084 */   sw       $s5, 0x84($s3)
.L80240DB4:
/* 889984 80240DB4 2A02000C */  slti      $v0, $s0, 0xc
/* 889988 80240DB8 1440FFF4 */  bnez      $v0, .L80240D8C
/* 88998C 80240DBC 26310008 */   addiu    $s1, $s1, 8
.L80240DC0:
/* 889990 80240DC0 8FBF0028 */  lw        $ra, 0x28($sp)
/* 889994 80240DC4 8FB50024 */  lw        $s5, 0x24($sp)
/* 889998 80240DC8 8FB40020 */  lw        $s4, 0x20($sp)
/* 88999C 80240DCC 8FB3001C */  lw        $s3, 0x1c($sp)
/* 8899A0 80240DD0 8FB20018 */  lw        $s2, 0x18($sp)
/* 8899A4 80240DD4 8FB10014 */  lw        $s1, 0x14($sp)
/* 8899A8 80240DD8 8FB00010 */  lw        $s0, 0x10($sp)
/* 8899AC 80240DDC 24020002 */  addiu     $v0, $zero, 2
/* 8899B0 80240DE0 03E00008 */  jr        $ra
/* 8899B4 80240DE4 27BD0030 */   addiu    $sp, $sp, 0x30
