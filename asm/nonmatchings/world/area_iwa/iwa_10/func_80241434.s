.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241434
/* 91F9A4 80241434 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 91F9A8 80241438 AFBF0010 */  sw        $ra, 0x10($sp)
/* 91F9AC 8024143C 8C82000C */  lw        $v0, 0xc($a0)
/* 91F9B0 80241440 0C0B1EAF */  jal       get_variable
/* 91F9B4 80241444 8C450000 */   lw       $a1, ($v0)
/* 91F9B8 80241448 3C018024 */  lui       $at, 0x8024
/* 91F9BC 8024144C AC226270 */  sw        $v0, 0x6270($at)
/* 91F9C0 80241450 24020002 */  addiu     $v0, $zero, 2
/* 91F9C4 80241454 8FBF0010 */  lw        $ra, 0x10($sp)
/* 91F9C8 80241458 24030001 */  addiu     $v1, $zero, 1
/* 91F9CC 8024145C 3C018024 */  lui       $at, 0x8024
/* 91F9D0 80241460 AC23626C */  sw        $v1, 0x626c($at)
/* 91F9D4 80241464 03E00008 */  jr        $ra
/* 91F9D8 80241468 27BD0018 */   addiu    $sp, $sp, 0x18
