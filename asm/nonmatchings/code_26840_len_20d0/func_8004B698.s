.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8004B698
/* 26A98 8004B698 0000282D */  daddu     $a1, $zero, $zero
/* 26A9C 8004B69C 0080182D */  daddu     $v1, $a0, $zero
.L8004B6A0:
/* 26AA0 8004B6A0 A46000C2 */  sh        $zero, 0xc2($v1)
/* 26AA4 8004B6A4 A46000C4 */  sh        $zero, 0xc4($v1)
/* 26AA8 8004B6A8 A46000C6 */  sh        $zero, 0xc6($v1)
/* 26AAC 8004B6AC A46000C8 */  sh        $zero, 0xc8($v1)
/* 26AB0 8004B6B0 A06000CA */  sb        $zero, 0xca($v1)
/* 26AB4 8004B6B4 24A50001 */  addiu     $a1, $a1, 1
/* 26AB8 8004B6B8 28A20010 */  slti      $v0, $a1, 0x10
/* 26ABC 8004B6BC 1440FFF8 */  bnez      $v0, .L8004B6A0
/* 26AC0 8004B6C0 2463000A */   addiu    $v1, $v1, 0xa
/* 26AC4 8004B6C4 A0800165 */  sb        $zero, 0x165($a0)
/* 26AC8 8004B6C8 A0800164 */  sb        $zero, 0x164($a0)
/* 26ACC 8004B6CC A0800163 */  sb        $zero, 0x163($a0)
/* 26AD0 8004B6D0 03E00008 */  jr        $ra
/* 26AD4 8004B6D4 A0800162 */   sb       $zero, 0x162($a0)
