.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80070550
/* 4B950 80070550 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 4B954 80070554 AFA40010 */  sw        $a0, 0x10($sp)
/* 4B958 80070558 AFA50014 */  sw        $a1, 0x14($sp)
/* 4B95C 8007055C AFA60018 */  sw        $a2, 0x18($sp)
/* 4B960 80070560 AFA7001C */  sw        $a3, 0x1c($sp)
/* 4B964 80070564 E7AC0020 */  swc1      $f12, 0x20($sp)
/* 4B968 80070568 E7AE0024 */  swc1      $f14, 0x24($sp)
/* 4B96C 8007056C E7B00028 */  swc1      $f16, 0x28($sp)
/* 4B970 80070570 AFBF002C */  sw        $ra, 0x2c($sp)
/* 4B974 80070574 0C016959 */  jal       load_effect
/* 4B978 80070578 24040022 */   addiu    $a0, $zero, 0x22
/* 4B97C 8007057C 8FA40010 */  lw        $a0, 0x10($sp)
/* 4B980 80070580 8FA50014 */  lw        $a1, 0x14($sp)
/* 4B984 80070584 8FA60018 */  lw        $a2, 0x18($sp)
/* 4B988 80070588 8FA7001C */  lw        $a3, 0x1c($sp)
/* 4B98C 8007058C C7AC0020 */  lwc1      $f12, 0x20($sp)
/* 4B990 80070590 C7AE0024 */  lwc1      $f14, 0x24($sp)
/* 4B994 80070594 C7B00028 */  lwc1      $f16, 0x28($sp)
/* 4B998 80070598 8FBF002C */  lw        $ra, 0x2c($sp)
/* 4B99C 8007059C 27BD0030 */  addiu     $sp, $sp, 0x30
/* 4B9A0 800705A0 3C018008 */  lui       $at, %hi(gEffectTable+0x330)
/* 4B9A4 800705A4 8C21F540 */  lw        $at, %lo(gEffectTable+0x330)($at)
/* 4B9A8 800705A8 00200008 */  jr        $at
/* 4B9AC 800705AC 00000000 */   nop
