.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel nuGfxFuncSet
/* 3A650 8005F250 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 3A654 8005F254 AFB00010 */  sw        $s0, 0x10($sp)
/* 3A658 8005F258 AFBF0014 */  sw        $ra, 0x14($sp)
/* 3A65C 8005F25C 0C017CB4 */  jal       nuGfxTaskAllEndWait
/* 3A660 8005F260 0080802D */   daddu    $s0, $a0, $zero
/* 3A664 8005F264 0C018250 */  jal       osSetIntMask
/* 3A668 8005F268 24040001 */   addiu    $a0, $zero, 1
/* 3A66C 8005F26C 3C018009 */  lui       $at, 0x8009
/* 3A670 8005F270 AC303D10 */  sw        $s0, 0x3d10($at)
/* 3A674 8005F274 0C018250 */  jal       osSetIntMask
/* 3A678 8005F278 0040202D */   daddu    $a0, $v0, $zero
/* 3A67C 8005F27C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3A680 8005F280 8FB00010 */  lw        $s0, 0x10($sp)
/* 3A684 8005F284 03E00008 */  jr        $ra
/* 3A688 8005F288 27BD0018 */   addiu    $sp, $sp, 0x18
/* 3A68C 8005F28C 00000000 */  nop       
