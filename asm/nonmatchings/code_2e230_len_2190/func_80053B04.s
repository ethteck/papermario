.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80053B04
/* 2EF04 80053B04 3C020001 */  lui       $v0, 1
/* 2EF08 80053B08 344285A6 */  ori       $v0, $v0, 0x85a6
/* 2EF0C 80053B0C 24A3FF06 */  addiu     $v1, $a1, -0xfa
/* 2EF10 80053B10 0043102B */  sltu      $v0, $v0, $v1
/* 2EF14 80053B14 14400021 */  bnez      $v0, .L80053B9C
/* 2EF18 80053B18 0080382D */   daddu    $a3, $a0, $zero
/* 2EF1C 80053B1C 3C03B65C */  lui       $v1, 0xb65c
/* 2EF20 80053B20 34636D59 */  ori       $v1, $v1, 0x6d59
/* 2EF24 80053B24 00051140 */  sll       $v0, $a1, 5
/* 2EF28 80053B28 00451023 */  subu      $v0, $v0, $a1
/* 2EF2C 80053B2C 00021080 */  sll       $v0, $v0, 2
/* 2EF30 80053B30 00451021 */  addu      $v0, $v0, $a1
/* 2EF34 80053B34 000210C0 */  sll       $v0, $v0, 3
/* 2EF38 80053B38 00430018 */  mult      $v0, $v1
/* 2EF3C 80053B3C 00001810 */  mfhi      $v1
/* 2EF40 80053B40 00622021 */  addu      $a0, $v1, $v0
/* 2EF44 80053B44 00042303 */  sra       $a0, $a0, 0xc
/* 2EF48 80053B48 000217C3 */  sra       $v0, $v0, 0x1f
/* 2EF4C 80053B4C 00822023 */  subu      $a0, $a0, $v0
/* 2EF50 80053B50 8CE20010 */  lw        $v0, 0x10($a3)
/* 2EF54 80053B54 00061C00 */  sll       $v1, $a2, 0x10
/* 2EF58 80053B58 00621823 */  subu      $v1, $v1, $v0
/* 2EF5C 80053B5C 00041400 */  sll       $v0, $a0, 0x10
/* 2EF60 80053B60 00021403 */  sra       $v0, $v0, 0x10
/* 2EF64 80053B64 14400002 */  bnez      $v0, .L80053B70
/* 2EF68 80053B68 0062001A */   div      $zero, $v1, $v0
/* 2EF6C 80053B6C 0007000D */  break     7
.L80053B70:
/* 2EF70 80053B70 2401FFFF */   addiu    $at, $zero, -1
/* 2EF74 80053B74 14410004 */  bne       $v0, $at, .L80053B88
/* 2EF78 80053B78 3C018000 */   lui      $at, 0x8000
/* 2EF7C 80053B7C 14610002 */  bne       $v1, $at, .L80053B88
/* 2EF80 80053B80 00000000 */   nop      
/* 2EF84 80053B84 0006000D */  break     6
.L80053B88:
/* 2EF88 80053B88 00001812 */   mflo     $v1
/* 2EF8C 80053B8C A4E60018 */  sh        $a2, 0x18($a3)
/* 2EF90 80053B90 A4E4001A */  sh        $a0, 0x1a($a3)
/* 2EF94 80053B94 03E00008 */  jr        $ra
/* 2EF98 80053B98 ACE30014 */   sw       $v1, 0x14($a3)
.L80053B9C:
/* 2EF9C 80053B9C A4E0001A */  sh        $zero, 0x1a($a3)
/* 2EFA0 80053BA0 03E00008 */  jr        $ra
/* 2EFA4 80053BA4 ACE00014 */   sw       $zero, 0x14($a3)
