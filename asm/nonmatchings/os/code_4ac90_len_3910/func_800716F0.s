.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800716F0
/* 4CAF0 800716F0 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 4CAF4 800716F4 AFA40010 */  sw        $a0, 0x10($sp)
/* 4CAF8 800716F8 AFA50014 */  sw        $a1, 0x14($sp)
/* 4CAFC 800716FC AFA60018 */  sw        $a2, 0x18($sp)
/* 4CB00 80071700 AFA7001C */  sw        $a3, 0x1c($sp)
/* 4CB04 80071704 E7AC0020 */  swc1      $f12, 0x20($sp)
/* 4CB08 80071708 E7AE0024 */  swc1      $f14, 0x24($sp)
/* 4CB0C 8007170C E7B00028 */  swc1      $f16, 0x28($sp)
/* 4CB10 80071710 AFBF002C */  sw        $ra, 0x2c($sp)
/* 4CB14 80071714 0C016959 */  jal       play_effect
/* 4CB18 80071718 24040051 */   addiu    $a0, $zero, 0x51
/* 4CB1C 8007171C 8FA40010 */  lw        $a0, 0x10($sp)
/* 4CB20 80071720 8FA50014 */  lw        $a1, 0x14($sp)
/* 4CB24 80071724 8FA60018 */  lw        $a2, 0x18($sp)
/* 4CB28 80071728 8FA7001C */  lw        $a3, 0x1c($sp)
/* 4CB2C 8007172C C7AC0020 */  lwc1      $f12, 0x20($sp)
/* 4CB30 80071730 C7AE0024 */  lwc1      $f14, 0x24($sp)
/* 4CB34 80071734 C7B00028 */  lwc1      $f16, 0x28($sp)
/* 4CB38 80071738 8FBF002C */  lw        $ra, 0x2c($sp)
/* 4CB3C 8007173C 27BD0030 */  addiu     $sp, $sp, 0x30
/* 4CB40 80071740 3C018008 */  lui       $at, 0x8008
/* 4CB44 80071744 8C21F9A8 */  lw        $at, -0x658($at)
/* 4CB48 80071748 00200008 */  jr        $at
/* 4CB4C 8007174C 00000000 */   nop      
