.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80072CCC
/* 4E0CC 80072CCC 3C01800E */  lui       $at, 0x800e
/* 4E0D0 80072CD0 AC24C4EC */  sw        $a0, -0x3b14($at)
/* 4E0D4 80072CD4 03E00008 */  jr        $ra
/* 4E0D8 80072CD8 00000000 */   nop      
