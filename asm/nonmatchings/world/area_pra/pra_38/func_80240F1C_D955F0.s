.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240F1C_D9650C
/* D9650C 80240F1C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* D96510 80240F20 AFBF0010 */  sw        $ra, 0x10($sp)
/* D96514 80240F24 0C00EAD2 */  jal       get_npc_safe
/* D96518 80240F28 2404FFFC */   addiu    $a0, $zero, -4
/* D9651C 80240F2C 0040202D */  daddu     $a0, $v0, $zero
/* D96520 80240F30 10800004 */  beqz      $a0, .L80240F44
/* D96524 80240F34 3C030002 */   lui      $v1, 2
/* D96528 80240F38 8C820000 */  lw        $v0, ($a0)
/* D9652C 80240F3C 00431025 */  or        $v0, $v0, $v1
/* D96530 80240F40 AC820000 */  sw        $v0, ($a0)
.L80240F44:
/* D96534 80240F44 8FBF0010 */  lw        $ra, 0x10($sp)
/* D96538 80240F48 03E00008 */  jr        $ra
/* D9653C 80240F4C 27BD0018 */   addiu    $sp, $sp, 0x18
