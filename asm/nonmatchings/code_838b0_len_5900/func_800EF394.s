.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800EF394
/* 88844 800EF394 3C018011 */  lui       $at, 0x8011
/* 88848 800EF398 E42CCFC0 */  swc1      $f12, -0x3040($at)
/* 8884C 800EF39C 03E00008 */  jr        $ra
/* 88850 800EF3A0 00000000 */   nop      
