.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240EE8_D7A8D8
/* D7A8D8 80240EE8 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* D7A8DC 80240EEC AFBF0010 */  sw        $ra, 0x10($sp)
/* D7A8E0 80240EF0 0C00EAD2 */  jal       get_npc_safe
/* D7A8E4 80240EF4 2404FFFC */   addiu    $a0, $zero, -4
/* D7A8E8 80240EF8 0040202D */  daddu     $a0, $v0, $zero
/* D7A8EC 80240EFC 10800004 */  beqz      $a0, .L80240F10
/* D7A8F0 80240F00 3C030008 */   lui      $v1, 8
/* D7A8F4 80240F04 8C820000 */  lw        $v0, ($a0)
/* D7A8F8 80240F08 00431025 */  or        $v0, $v0, $v1
/* D7A8FC 80240F0C AC820000 */  sw        $v0, ($a0)
.L80240F10:
/* D7A900 80240F10 8FBF0010 */  lw        $ra, 0x10($sp)
/* D7A904 80240F14 03E00008 */  jr        $ra
/* D7A908 80240F18 27BD0018 */   addiu    $sp, $sp, 0x18
