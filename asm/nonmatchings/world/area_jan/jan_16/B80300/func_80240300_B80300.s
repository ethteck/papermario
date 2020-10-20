.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240300_B80300
/* B80300 80240300 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* B80304 80240304 F7B40018 */  sdc1      $f20, 0x18($sp)
/* B80308 80240308 4485A000 */  mtc1      $a1, $f20
/* B8030C 8024030C F7B60020 */  sdc1      $f22, 0x20($sp)
/* B80310 80240310 4486B000 */  mtc1      $a2, $f22
/* B80314 80240314 AFB00010 */  sw        $s0, 0x10($sp)
/* B80318 80240318 F7B80028 */  sdc1      $f24, 0x28($sp)
/* B8031C 8024031C 4487C000 */  mtc1      $a3, $f24
/* B80320 80240320 AFBF0014 */  sw        $ra, 0x14($sp)
/* B80324 80240324 0C019D28 */  jal       guMtxIdentF
/* B80328 80240328 0080802D */   daddu    $s0, $a0, $zero
/* B8032C 8024032C 4616A582 */  mul.s     $f22, $f20, $f22
/* B80330 80240330 00000000 */  nop       
/* B80334 80240334 4618A502 */  mul.s     $f20, $f20, $f24
/* B80338 80240338 00000000 */  nop       
/* B8033C 8024033C 3C013F80 */  lui       $at, 0x3f80
/* B80340 80240340 44810000 */  mtc1      $at, $f0
/* B80344 80240344 00000000 */  nop       
/* B80348 80240348 E6000014 */  swc1      $f0, 0x14($s0)
/* B8034C 8024034C E6160010 */  swc1      $f22, 0x10($s0)
/* B80350 80240350 E6140018 */  swc1      $f20, 0x18($s0)
/* B80354 80240354 8FBF0014 */  lw        $ra, 0x14($sp)
/* B80358 80240358 8FB00010 */  lw        $s0, 0x10($sp)
/* B8035C 8024035C D7B80028 */  ldc1      $f24, 0x28($sp)
/* B80360 80240360 D7B60020 */  ldc1      $f22, 0x20($sp)
/* B80364 80240364 D7B40018 */  ldc1      $f20, 0x18($sp)
/* B80368 80240368 03E00008 */  jr        $ra
/* B8036C 8024036C 27BD0030 */   addiu    $sp, $sp, 0x30