.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80149828
/* DFF28 80149828 3C028016 */  lui       $v0, 0x8016
/* DFF2C 8014982C 8C429AD4 */  lw        $v0, -0x652c($v0)
/* DFF30 80149830 03E00008 */  jr        $ra
/* DFF34 80149834 00000000 */   nop      
