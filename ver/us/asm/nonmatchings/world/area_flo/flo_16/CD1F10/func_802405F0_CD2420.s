.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802405F0_CD2420
/* CD2420 802405F0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* CD2424 802405F4 AFBF0010 */  sw        $ra, 0x10($sp)
/* CD2428 802405F8 8C82000C */  lw        $v0, 0xc($a0)
/* CD242C 802405FC 0C0B1EAF */  jal       get_variable
/* CD2430 80240600 8C450000 */   lw       $a1, ($v0)
/* CD2434 80240604 0040202D */  daddu     $a0, $v0, $zero
/* CD2438 80240608 8C830000 */  lw        $v1, ($a0)
/* CD243C 8024060C 34630010 */  ori       $v1, $v1, 0x10
/* CD2440 80240610 AC830000 */  sw        $v1, ($a0)
/* CD2444 80240614 8FBF0010 */  lw        $ra, 0x10($sp)
/* CD2448 80240618 24020002 */  addiu     $v0, $zero, 2
/* CD244C 8024061C 03E00008 */  jr        $ra
/* CD2450 80240620 27BD0018 */   addiu    $sp, $sp, 0x18
