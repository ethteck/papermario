.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_A72220
/* A72220 80240000 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* A72224 80240004 AFBF0010 */  sw        $ra, 0x10($sp)
/* A72228 80240008 0C04417A */  jal       get_entity_by_index
/* A7222C 8024000C 8C840084 */   lw       $a0, 0x84($a0)
/* A72230 80240010 0040182D */  daddu     $v1, $v0, $zero
/* A72234 80240014 8C640000 */  lw        $a0, ($v1)
/* A72238 80240018 3C050010 */  lui       $a1, 0x10
/* A7223C 8024001C 00852025 */  or        $a0, $a0, $a1
/* A72240 80240020 AC640000 */  sw        $a0, ($v1)
/* A72244 80240024 8FBF0010 */  lw        $ra, 0x10($sp)
/* A72248 80240028 24020002 */  addiu     $v0, $zero, 2
/* A7224C 8024002C 03E00008 */  jr        $ra
/* A72250 80240030 27BD0018 */   addiu    $sp, $sp, 0x18
