.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80056204
/* 31604 80056204 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 31608 80056208 3C04800A */  lui       $a0, 0x800a
/* 3160C 8005620C 8C84A640 */  lw        $a0, -0x59c0($a0)
/* 31610 80056210 AFBF0010 */  sw        $ra, 0x10($sp)
/* 31614 80056214 0C012E95 */  jal       func_8004BA54
/* 31618 80056218 0000282D */   daddu    $a1, $zero, $zero
/* 3161C 8005621C 8FBF0010 */  lw        $ra, 0x10($sp)
/* 31620 80056220 03E00008 */  jr        $ra
/* 31624 80056224 27BD0018 */   addiu    $sp, $sp, 0x18
