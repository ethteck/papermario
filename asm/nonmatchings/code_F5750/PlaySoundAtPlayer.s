.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel PlaySoundAtPlayer
/* F7688 802D2CD8 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* F768C 802D2CDC AFB10014 */  sw        $s1, 0x14($sp)
/* F7690 802D2CE0 0080882D */  daddu     $s1, $a0, $zero
/* F7694 802D2CE4 AFBF0018 */  sw        $ra, 0x18($sp)
/* F7698 802D2CE8 AFB00010 */  sw        $s0, 0x10($sp)
/* F769C 802D2CEC 8E30000C */  lw        $s0, 0xc($s1)
/* F76A0 802D2CF0 8E050000 */  lw        $a1, ($s0)
/* F76A4 802D2CF4 0C0B1EAF */  jal       get_variable
/* F76A8 802D2CF8 26100004 */   addiu    $s0, $s0, 4
/* F76AC 802D2CFC 0220202D */  daddu     $a0, $s1, $zero
/* F76B0 802D2D00 8E050000 */  lw        $a1, ($s0)
/* F76B4 802D2D04 0C0B1EAF */  jal       get_variable
/* F76B8 802D2D08 0040802D */   daddu    $s0, $v0, $zero
/* F76BC 802D2D0C 0200202D */  daddu     $a0, $s0, $zero
/* F76C0 802D2D10 0C052736 */  jal       play_sound_at_player
/* F76C4 802D2D14 0040282D */   daddu    $a1, $v0, $zero
/* F76C8 802D2D18 8FBF0018 */  lw        $ra, 0x18($sp)
/* F76CC 802D2D1C 8FB10014 */  lw        $s1, 0x14($sp)
/* F76D0 802D2D20 8FB00010 */  lw        $s0, 0x10($sp)
/* F76D4 802D2D24 24020002 */  addiu     $v0, $zero, 2
/* F76D8 802D2D28 03E00008 */  jr        $ra
/* F76DC 802D2D2C 27BD0020 */   addiu    $sp, $sp, 0x20
