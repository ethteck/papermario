.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_B06A00
/* B06A00 80240000 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* B06A04 80240004 8C63419C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* B06A08 80240008 24020002 */  addiu     $v0, $zero, 2
/* B06A0C 8024000C A0620084 */  sb        $v0, 0x84($v1)
/* B06A10 80240010 03E00008 */  jr        $ra
/* B06A14 80240014 0000102D */   daddu    $v0, $zero, $zero
/* B06A18 80240018 00000000 */  nop       
/* B06A1C 8024001C 00000000 */  nop       
