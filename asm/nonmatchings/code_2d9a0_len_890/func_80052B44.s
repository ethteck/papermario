.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80052B44
/* 2DF44 80052B44 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 2DF48 80052B48 AFB00010 */  sw        $s0, 0x10($sp)
/* 2DF4C 80052B4C 0080802D */  daddu     $s0, $a0, $zero
/* 2DF50 80052B50 AFBF0014 */  sw        $ra, 0x14($sp)
/* 2DF54 80052B54 9203003A */  lbu       $v1, 0x3a($s0)
/* 2DF58 80052B58 86020040 */  lh        $v0, 0x40($s0)
/* 2DF5C 80052B5C 00620018 */  mult      $v1, $v0
/* 2DF60 80052B60 00002812 */  mflo      $a1
/* 2DF64 80052B64 9202003F */  lbu       $v0, 0x3f($s0)
/* 2DF68 80052B68 00000000 */  nop       
/* 2DF6C 80052B6C 00A20018 */  mult      $a1, $v0
/* 2DF70 80052B70 00002812 */  mflo      $a1
/* 2DF74 80052B74 8E030030 */  lw        $v1, 0x30($s0)
/* 2DF78 80052B78 00051383 */  sra       $v0, $a1, 0xe
/* 2DF7C 80052B7C 00430018 */  mult      $v0, $v1
/* 2DF80 80052B80 8E040028 */  lw        $a0, 0x28($s0)
/* 2DF84 80052B84 00002812 */  mflo      $a1
/* 2DF88 80052B88 000511C3 */  sra       $v0, $a1, 7
/* 2DF8C 80052B8C 0C014AF0 */  jal       func_80052BC0
/* 2DF90 80052B90 A602000C */   sh       $v0, 0xc($s0)
/* 2DF94 80052B94 AE020008 */  sw        $v0, 8($s0)
/* 2DF98 80052B98 9202003D */  lbu       $v0, 0x3d($s0)
/* 2DF9C 80052B9C 92030043 */  lbu       $v1, 0x43($s0)
/* 2DFA0 80052BA0 304200FD */  andi      $v0, $v0, 0xfd
/* 2DFA4 80052BA4 34630004 */  ori       $v1, $v1, 4
/* 2DFA8 80052BA8 A202003D */  sb        $v0, 0x3d($s0)
/* 2DFAC 80052BAC A2030043 */  sb        $v1, 0x43($s0)
/* 2DFB0 80052BB0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 2DFB4 80052BB4 8FB00010 */  lw        $s0, 0x10($sp)
/* 2DFB8 80052BB8 03E00008 */  jr        $ra
/* 2DFBC 80052BBC 27BD0018 */   addiu    $sp, $sp, 0x18
