.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80072CDC
/* 4E0DC 80072CDC 3C01800E */  lui       $at, 0x800e
/* 4E0E0 80072CE0 AC24C4F4 */  sw        $a0, -0x3b0c($at)
/* 4E0E4 80072CE4 03E00008 */  jr        $ra
/* 4E0E8 80072CE8 00000000 */   nop      
