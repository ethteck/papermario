.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80071C30
/* 4D030 80071C30 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 4D034 80071C34 AFA40010 */  sw        $a0, 0x10($sp)
/* 4D038 80071C38 AFA50014 */  sw        $a1, 0x14($sp)
/* 4D03C 80071C3C AFA60018 */  sw        $a2, 0x18($sp)
/* 4D040 80071C40 AFA7001C */  sw        $a3, 0x1c($sp)
/* 4D044 80071C44 E7AC0020 */  swc1      $f12, 0x20($sp)
/* 4D048 80071C48 E7AE0024 */  swc1      $f14, 0x24($sp)
/* 4D04C 80071C4C E7B00028 */  swc1      $f16, 0x28($sp)
/* 4D050 80071C50 AFBF002C */  sw        $ra, 0x2c($sp)
/* 4D054 80071C54 0C016959 */  jal       play_effect
/* 4D058 80071C58 2404005F */   addiu    $a0, $zero, 0x5f
/* 4D05C 80071C5C 8FA40010 */  lw        $a0, 0x10($sp)
/* 4D060 80071C60 8FA50014 */  lw        $a1, 0x14($sp)
/* 4D064 80071C64 8FA60018 */  lw        $a2, 0x18($sp)
/* 4D068 80071C68 8FA7001C */  lw        $a3, 0x1c($sp)
/* 4D06C 80071C6C C7AC0020 */  lwc1      $f12, 0x20($sp)
/* 4D070 80071C70 C7AE0024 */  lwc1      $f14, 0x24($sp)
/* 4D074 80071C74 C7B00028 */  lwc1      $f16, 0x28($sp)
/* 4D078 80071C78 8FBF002C */  lw        $ra, 0x2c($sp)
/* 4D07C 80071C7C 27BD0030 */  addiu     $sp, $sp, 0x30
/* 4D080 80071C80 3C018008 */  lui       $at, 0x8008
/* 4D084 80071C84 8C21FAF8 */  lw        $at, -0x508($at)
/* 4D088 80071C88 00200008 */  jr        $at
/* 4D08C 80071C8C 00000000 */   nop      
