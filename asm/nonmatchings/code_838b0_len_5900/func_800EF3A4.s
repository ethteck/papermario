.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800EF3A4
/* 88854 800EF3A4 3C014220 */  lui       $at, 0x4220
/* 88858 800EF3A8 44810000 */  mtc1      $at, $f0
/* 8885C 800EF3AC 00000000 */  nop       
/* 88860 800EF3B0 3C018011 */  lui       $at, 0x8011
/* 88864 800EF3B4 E420CFC0 */  swc1      $f0, -0x3040($at)
/* 88868 800EF3B8 03E00008 */  jr        $ra
/* 8886C 800EF3BC 00000000 */   nop      
