.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800554A4
/* 308A4 800554A4 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 308A8 800554A8 AFB10014 */  sw        $s1, 0x14($sp)
/* 308AC 800554AC 0080882D */  daddu     $s1, $a0, $zero
/* 308B0 800554B0 AFBF0018 */  sw        $ra, 0x18($sp)
/* 308B4 800554B4 0C01430C */  jal       func_80050C30
/* 308B8 800554B8 AFB00010 */   sw       $s0, 0x10($sp)
/* 308BC 800554BC 0040802D */  daddu     $s0, $v0, $zero
/* 308C0 800554C0 16000004 */  bnez      $s0, .L800554D4
/* 308C4 800554C4 0200102D */   daddu    $v0, $s0, $zero
/* 308C8 800554C8 0C0143BC */  jal       func_80050EF0
/* 308CC 800554CC 0220202D */   daddu    $a0, $s1, $zero
/* 308D0 800554D0 0200102D */  daddu     $v0, $s0, $zero
.L800554D4:
/* 308D4 800554D4 8FBF0018 */  lw        $ra, 0x18($sp)
/* 308D8 800554D8 8FB10014 */  lw        $s1, 0x14($sp)
/* 308DC 800554DC 8FB00010 */  lw        $s0, 0x10($sp)
/* 308E0 800554E0 03E00008 */  jr        $ra
/* 308E4 800554E4 27BD0020 */   addiu    $sp, $sp, 0x20
