.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8003B198
/* 16598 8003B198 3C01800A */  lui       $at, 0x800a
/* 1659C 8003B19C A0200B94 */  sb        $zero, 0xb94($at)
/* 165A0 8003B1A0 03E00008 */  jr        $ra
/* 165A4 8003B1A4 00000000 */   nop      
