.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel EnablePartner
/* F68AC 802D1EFC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* F68B0 802D1F00 AFBF0010 */  sw        $ra, 0x10($sp)
/* F68B4 802D1F04 8C82000C */  lw        $v0, 0xc($a0)
/* F68B8 802D1F08 0C0B1EAF */  jal       get_variable
/* F68BC 802D1F0C 8C450000 */   lw       $a1, ($v0)
/* F68C0 802D1F10 2443FFFF */  addiu     $v1, $v0, -1
/* F68C4 802D1F14 000318C0 */  sll       $v1, $v1, 3
/* F68C8 802D1F18 24040001 */  addiu     $a0, $zero, 1
/* F68CC 802D1F1C 3C018011 */  lui       $at, 0x8011
/* F68D0 802D1F20 00230821 */  addu      $at, $at, $v1
/* F68D4 802D1F24 A024F2A4 */  sb        $a0, -0xd5c($at)
/* F68D8 802D1F28 8FBF0010 */  lw        $ra, 0x10($sp)
/* F68DC 802D1F2C 24020002 */  addiu     $v0, $zero, 2
/* F68E0 802D1F30 03E00008 */  jr        $ra
/* F68E4 802D1F34 27BD0018 */   addiu    $sp, $sp, 0x18
