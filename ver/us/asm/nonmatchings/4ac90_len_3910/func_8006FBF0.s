.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8006FBF0
/* 4AFF0 8006FBF0 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 4AFF4 8006FBF4 AFA40010 */  sw        $a0, 0x10($sp)
/* 4AFF8 8006FBF8 AFA50014 */  sw        $a1, 0x14($sp)
/* 4AFFC 8006FBFC AFA60018 */  sw        $a2, 0x18($sp)
/* 4B000 8006FC00 AFA7001C */  sw        $a3, 0x1c($sp)
/* 4B004 8006FC04 E7AC0020 */  swc1      $f12, 0x20($sp)
/* 4B008 8006FC08 E7AE0024 */  swc1      $f14, 0x24($sp)
/* 4B00C 8006FC0C E7B00028 */  swc1      $f16, 0x28($sp)
/* 4B010 8006FC10 AFBF002C */  sw        $ra, 0x2c($sp)
/* 4B014 8006FC14 0C016959 */  jal       load_effect
/* 4B018 8006FC18 24040009 */   addiu    $a0, $zero, 9
/* 4B01C 8006FC1C 8FA40010 */  lw        $a0, 0x10($sp)
/* 4B020 8006FC20 8FA50014 */  lw        $a1, 0x14($sp)
/* 4B024 8006FC24 8FA60018 */  lw        $a2, 0x18($sp)
/* 4B028 8006FC28 8FA7001C */  lw        $a3, 0x1c($sp)
/* 4B02C 8006FC2C C7AC0020 */  lwc1      $f12, 0x20($sp)
/* 4B030 8006FC30 C7AE0024 */  lwc1      $f14, 0x24($sp)
/* 4B034 8006FC34 C7B00028 */  lwc1      $f16, 0x28($sp)
/* 4B038 8006FC38 8FBF002C */  lw        $ra, 0x2c($sp)
/* 4B03C 8006FC3C 27BD0030 */  addiu     $sp, $sp, 0x30
/* 4B040 8006FC40 3C018008 */  lui       $at, %hi(gEffectTable+0xD8)
/* 4B044 8006FC44 8C21F2E8 */  lw        $at, %lo(gEffectTable+0xD8)($at)
/* 4B048 8006FC48 00200008 */  jr        $at
/* 4B04C 8006FC4C 00000000 */   nop
