.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8011B1C0
/* B18C0 8011B1C0 3C028015 */  lui       $v0, 0x8015
/* B18C4 8011B1C4 8C4212E0 */  lw        $v0, 0x12e0($v0)
/* B18C8 8011B1C8 00042080 */  sll       $a0, $a0, 2
/* B18CC 8011B1CC 00822021 */  addu      $a0, $a0, $v0
/* B18D0 8011B1D0 03E00008 */  jr        $ra
/* B18D4 8011B1D4 8C820000 */   lw       $v0, ($a0)
