.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8014AF8C
/* E168C 8014AF8C 3C028016 */  lui       $v0, 0x8016
/* E1690 8014AF90 24429AF0 */  addiu     $v0, $v0, -0x6510
/* E1694 8014AF94 AC44001C */  sw        $a0, 0x1c($v0)
/* E1698 8014AF98 03E00008 */  jr        $ra
/* E169C 8014AF9C AC450020 */   sw       $a1, 0x20($v0)
