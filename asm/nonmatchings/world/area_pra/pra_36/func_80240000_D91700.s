.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_D91700
/* D91700 80240000 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* D91704 80240004 3C04800E */  lui       $a0, 0x800e
/* D91708 80240008 24849230 */  addiu     $a0, $a0, -0x6dd0
/* D9170C 8024000C 3C058024 */  lui       $a1, 0x8024
/* D91710 80240010 24A51810 */  addiu     $a1, $a1, 0x1810
/* D91714 80240014 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* D91718 80240018 8C63419C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* D9171C 8024001C 24020001 */  addiu     $v0, $zero, 1
/* D91720 80240020 AFBF0010 */  sw        $ra, 0x10($sp)
/* D91724 80240024 0C01953C */  jal       sprintf
/* D91728 80240028 A0620084 */   sb       $v0, 0x84($v1)
/* D9172C 8024002C 3C04800E */  lui       $a0, 0x800e
/* D91730 80240030 248491E0 */  addiu     $a0, $a0, -0x6e20
/* D91734 80240034 3C058024 */  lui       $a1, 0x8024
/* D91738 80240038 0C01953C */  jal       sprintf
/* D9173C 8024003C 24A51820 */   addiu    $a1, $a1, 0x1820
/* D91740 80240040 8FBF0010 */  lw        $ra, 0x10($sp)
/* D91744 80240044 0000102D */  daddu     $v0, $zero, $zero
/* D91748 80240048 03E00008 */  jr        $ra
/* D9174C 8024004C 27BD0018 */   addiu    $sp, $sp, 0x18
