.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8005087C
/* 2BC7C 8005087C AC850204 */  sw        $a1, 0x204($a0)
/* 2BC80 80050880 03E00008 */  jr        $ra
/* 2BC84 80050884 A0860232 */   sb       $a2, 0x232($a0)
