.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8004FEB0
/* 2B2B0 8004FEB0 908200D4 */  lbu       $v0, 0xd4($a0)
/* 2B2B4 8004FEB4 3042007F */  andi      $v0, $v0, 0x7f
/* 2B2B8 8004FEB8 54400001 */  bnel      $v0, $zero, .L8004FEC0
/* 2B2BC 8004FEBC 00021600 */   sll      $v0, $v0, 0x18
.L8004FEC0:
/* 2B2C0 8004FEC0 ACA20018 */  sw        $v0, 0x18($a1)
/* 2B2C4 8004FEC4 24020001 */  addiu     $v0, $zero, 1
/* 2B2C8 8004FEC8 03E00008 */  jr        $ra
/* 2B2CC 8004FECC A0A20041 */   sb       $v0, 0x41($a1)
