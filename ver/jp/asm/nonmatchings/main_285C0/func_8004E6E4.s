.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8004E6E4
/* 29AE4 8004E6E4 30A8001F */  andi      $t0, $a1, 0x1f
/* 29AE8 8004E6E8 90830210 */  lbu       $v1, 0x210($a0)
/* 29AEC 8004E6EC 00052942 */  srl       $a1, $a1, 5
/* 29AF0 8004E6F0 00031080 */  sll       $v0, $v1, 2
/* 29AF4 8004E6F4 00823021 */  addu      $a2, $a0, $v0
/* 29AF8 8004E6F8 8CC20158 */  lw        $v0, 0x158($a2)
/* 29AFC 8004E6FC 10400017 */  beqz      $v0, .L8004E75C
/* 29B00 8004E700 30A5007F */   andi     $a1, $a1, 0x7f
/* 29B04 8004E704 8C870068 */  lw        $a3, 0x68($a0)
/* 29B08 8004E708 1447000D */  bne       $v0, $a3, .L8004E740
/* 29B0C 8004E70C 2C620004 */   sltiu    $v0, $v1, 4
/* 29B10 8004E710 00832821 */  addu      $a1, $a0, $v1
/* 29B14 8004E714 90A20168 */  lbu       $v0, 0x168($a1)
/* 29B18 8004E718 10400014 */  beqz      $v0, .L8004E76C
/* 29B1C 8004E71C 2442FFFF */   addiu    $v0, $v0, -1
/* 29B20 8004E720 A0A20168 */  sb        $v0, 0x168($a1)
/* 29B24 8004E724 304200FF */  andi      $v0, $v0, 0xff
/* 29B28 8004E728 54400011 */  bnel      $v0, $zero, .L8004E770
/* 29B2C 8004E72C 00081080 */   sll      $v0, $t0, 2
/* 29B30 8004E730 10600012 */  beqz      $v1, .L8004E77C
/* 29B34 8004E734 ACC00158 */   sw       $zero, 0x158($a2)
/* 29B38 8004E738 080139DF */  j         .L8004E77C
/* 29B3C 8004E73C 2463FFFF */   addiu    $v1, $v1, -1
.L8004E740:
/* 29B40 8004E740 1040000E */  beqz      $v0, .L8004E77C
/* 29B44 8004E744 00000000 */   nop
/* 29B48 8004E748 24630001 */  addiu     $v1, $v1, 1
/* 29B4C 8004E74C 00031080 */  sll       $v0, $v1, 2
/* 29B50 8004E750 00821021 */  addu      $v0, $a0, $v0
/* 29B54 8004E754 080139D9 */  j         .L8004E764
/* 29B58 8004E758 AC470158 */   sw       $a3, 0x158($v0)
.L8004E75C:
/* 29B5C 8004E75C 8C820068 */  lw        $v0, 0x68($a0)
/* 29B60 8004E760 ACC20158 */  sw        $v0, 0x158($a2)
.L8004E764:
/* 29B64 8004E764 00831021 */  addu      $v0, $a0, $v1
/* 29B68 8004E768 A0450168 */  sb        $a1, 0x168($v0)
.L8004E76C:
/* 29B6C 8004E76C 00081080 */  sll       $v0, $t0, 2
.L8004E770:
/* 29B70 8004E770 00821021 */  addu      $v0, $a0, $v0
/* 29B74 8004E774 8C4200D8 */  lw        $v0, 0xd8($v0)
/* 29B78 8004E778 AC820068 */  sw        $v0, 0x68($a0)
.L8004E77C:
/* 29B7C 8004E77C 03E00008 */  jr        $ra
/* 29B80 8004E780 A0830210 */   sb       $v1, 0x210($a0)
