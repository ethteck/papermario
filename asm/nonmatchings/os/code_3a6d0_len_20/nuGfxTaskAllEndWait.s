.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel nuGfxTaskAllEndWait
.L8005F2D0:
/* 3A6D0 8005F2D0 3C02800A */  lui       $v0, 0x800a
/* 3A6D4 8005F2D4 8C42A618 */  lw        $v0, -0x59e8($v0)
/* 3A6D8 8005F2D8 1440FFFD */  bnez      $v0, .L8005F2D0
/* 3A6DC 8005F2DC 00000000 */   nop      
/* 3A6E0 8005F2E0 03E00008 */  jr        $ra
/* 3A6E4 8005F2E4 00000000 */   nop      
/* 3A6E8 8005F2E8 00000000 */  nop       
/* 3A6EC 8005F2EC 00000000 */  nop       
