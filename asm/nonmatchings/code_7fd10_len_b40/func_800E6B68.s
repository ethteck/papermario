.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800E6B68
/* 80018 800E6B68 3C018011 */  lui       $at, 0x8011
/* 8001C 800E6B6C A420CD00 */  sh        $zero, -0x3300($at)
/* 80020 800E6B70 03E00008 */  jr        $ra
/* 80024 800E6B74 00000000 */   nop      
