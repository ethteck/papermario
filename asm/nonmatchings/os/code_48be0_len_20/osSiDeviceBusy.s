.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel osSiDeviceBusy
/* 48BE0 8006D7E0 3C02A480 */  lui       $v0, 0xa480
/* 48BE4 8006D7E4 34420018 */  ori       $v0, $v0, 0x18
/* 48BE8 8006D7E8 8C420000 */  lw        $v0, ($v0)
/* 48BEC 8006D7EC 30420003 */  andi      $v0, $v0, 3
/* 48BF0 8006D7F0 03E00008 */  jr        $ra
/* 48BF4 8006D7F4 0002102B */   sltu     $v0, $zero, $v0
/* 48BF8 8006D7F8 00000000 */  nop       
/* 48BFC 8006D7FC 00000000 */  nop       
