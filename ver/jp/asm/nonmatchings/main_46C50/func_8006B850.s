.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8006B850
/* 46C50 8006B850 00851026 */  xor       $v0, $a0, $a1
/* 46C54 8006B854 28C10010 */  slti      $at, $a2, 0x10
/* 46C58 8006B858 14200034 */  bnez      $at, .L8006B92C
/* 46C5C 8006B85C 00000000 */   nop
/* 46C60 8006B860 30420003 */  andi      $v0, $v0, 3
/* 46C64 8006B864 14400018 */  bnez      $v0, .L8006B8C8
/* 46C68 8006B868 0004C023 */   negu     $t8, $a0
/* 46C6C 8006B86C 33180003 */  andi      $t8, $t8, 3
/* 46C70 8006B870 13000007 */  beqz      $t8, .L8006B890
/* 46C74 8006B874 00D83023 */   subu     $a2, $a2, $t8
/* 46C78 8006B878 00601021 */  addu      $v0, $v1, $zero
/* 46C7C 8006B87C 88820000 */  lwl       $v0, ($a0)
/* 46C80 8006B880 88A30000 */  lwl       $v1, ($a1)
/* 46C84 8006B884 00982021 */  addu      $a0, $a0, $t8
/* 46C88 8006B888 14430033 */  bne       $v0, $v1, .L8006B958
/* 46C8C 8006B88C 00B82821 */   addu     $a1, $a1, $t8
.L8006B890:
/* 46C90 8006B890 2401FFFC */  addiu     $at, $zero, -4
/* 46C94 8006B894 00C13824 */  and       $a3, $a2, $at
/* 46C98 8006B898 10E00024 */  beqz      $a3, .L8006B92C
/* 46C9C 8006B89C 00C73023 */   subu     $a2, $a2, $a3
/* 46CA0 8006B8A0 00E43821 */  addu      $a3, $a3, $a0
.L8006B8A4:
/* 46CA4 8006B8A4 8C820000 */  lw        $v0, ($a0)
/* 46CA8 8006B8A8 8CA30000 */  lw        $v1, ($a1)
/* 46CAC 8006B8AC 24840004 */  addiu     $a0, $a0, 4
/* 46CB0 8006B8B0 14430029 */  bne       $v0, $v1, .L8006B958
/* 46CB4 8006B8B4 24A50004 */   addiu    $a1, $a1, 4
/* 46CB8 8006B8B8 1487FFFA */  bne       $a0, $a3, .L8006B8A4
/* 46CBC 8006B8BC 00000000 */   nop
/* 46CC0 8006B8C0 1000001A */  b         .L8006B92C
/* 46CC4 8006B8C4 00000000 */   nop
.L8006B8C8:
/* 46CC8 8006B8C8 00053823 */  negu      $a3, $a1
/* 46CCC 8006B8CC 30E70003 */  andi      $a3, $a3, 3
/* 46CD0 8006B8D0 10E00009 */  beqz      $a3, .L8006B8F8
/* 46CD4 8006B8D4 00C73023 */   subu     $a2, $a2, $a3
/* 46CD8 8006B8D8 00E43821 */  addu      $a3, $a3, $a0
.L8006B8DC:
/* 46CDC 8006B8DC 90820000 */  lbu       $v0, ($a0)
/* 46CE0 8006B8E0 90A30000 */  lbu       $v1, ($a1)
/* 46CE4 8006B8E4 24840001 */  addiu     $a0, $a0, 1
/* 46CE8 8006B8E8 1443001B */  bne       $v0, $v1, .L8006B958
/* 46CEC 8006B8EC 24A50001 */   addiu    $a1, $a1, 1
/* 46CF0 8006B8F0 1487FFFA */  bne       $a0, $a3, .L8006B8DC
/* 46CF4 8006B8F4 00000000 */   nop
.L8006B8F8:
/* 46CF8 8006B8F8 2401FFFC */  addiu     $at, $zero, -4
/* 46CFC 8006B8FC 00C13824 */  and       $a3, $a2, $at
/* 46D00 8006B900 10E0000A */  beqz      $a3, .L8006B92C
/* 46D04 8006B904 00C73023 */   subu     $a2, $a2, $a3
/* 46D08 8006B908 00E43821 */  addu      $a3, $a3, $a0
.L8006B90C:
/* 46D0C 8006B90C 88820000 */  lwl       $v0, ($a0)
/* 46D10 8006B910 98820003 */  lwr       $v0, 3($a0)
/* 46D14 8006B914 8CA30000 */  lw        $v1, ($a1)
/* 46D18 8006B918 24840004 */  addiu     $a0, $a0, 4
/* 46D1C 8006B91C 1443000E */  bne       $v0, $v1, .L8006B958
/* 46D20 8006B920 24A50004 */   addiu    $a1, $a1, 4
/* 46D24 8006B924 1487FFF9 */  bne       $a0, $a3, .L8006B90C
/* 46D28 8006B928 00000000 */   nop
.L8006B92C:
/* 46D2C 8006B92C 18C00008 */  blez      $a2, .L8006B950
/* 46D30 8006B930 00C43821 */   addu     $a3, $a2, $a0
.L8006B934:
/* 46D34 8006B934 90820000 */  lbu       $v0, ($a0)
/* 46D38 8006B938 90A30000 */  lbu       $v1, ($a1)
/* 46D3C 8006B93C 24840001 */  addiu     $a0, $a0, 1
/* 46D40 8006B940 14430005 */  bne       $v0, $v1, .L8006B958
/* 46D44 8006B944 24A50001 */   addiu    $a1, $a1, 1
/* 46D48 8006B948 1487FFFA */  bne       $a0, $a3, .L8006B934
/* 46D4C 8006B94C 00000000 */   nop
.L8006B950:
/* 46D50 8006B950 03E00008 */  jr        $ra
/* 46D54 8006B954 00001021 */   addu     $v0, $zero, $zero
.L8006B958:
/* 46D58 8006B958 03E00008 */  jr        $ra
/* 46D5C 8006B95C 24020001 */   addiu    $v0, $zero, 1
