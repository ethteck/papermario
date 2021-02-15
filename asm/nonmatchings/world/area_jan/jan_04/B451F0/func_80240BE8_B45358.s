.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240BE8_B45358
/* B45358 80240BE8 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* B4535C 80240BEC AFB20018 */  sw        $s2, 0x18($sp)
/* B45360 80240BF0 0080902D */  daddu     $s2, $a0, $zero
/* B45364 80240BF4 AFBF001C */  sw        $ra, 0x1c($sp)
/* B45368 80240BF8 AFB10014 */  sw        $s1, 0x14($sp)
/* B4536C 80240BFC AFB00010 */  sw        $s0, 0x10($sp)
/* B45370 80240C00 8E4400AC */  lw        $a0, 0xac($s2)
/* B45374 80240C04 0C04417A */  jal       get_entity_by_index
/* B45378 80240C08 00A0802D */   daddu    $s0, $a1, $zero
/* B4537C 80240C0C 12000004 */  beqz      $s0, .L80240C20
/* B45380 80240C10 0040882D */   daddu    $s1, $v0, $zero
/* B45384 80240C14 2402003C */  addiu     $v0, $zero, 0x3c
/* B45388 80240C18 AE400070 */  sw        $zero, 0x70($s2)
/* B4538C 80240C1C AE420074 */  sw        $v0, 0x74($s2)
.L80240C20:
/* B45390 80240C20 2403003C */  addiu     $v1, $zero, 0x3c
/* B45394 80240C24 8E420074 */  lw        $v0, 0x74($s2)
/* B45398 80240C28 3C014270 */  lui       $at, 0x4270
/* B4539C 80240C2C 44811000 */  mtc1      $at, $f2
/* B453A0 80240C30 00621023 */  subu      $v0, $v1, $v0
/* B453A4 80240C34 44820000 */  mtc1      $v0, $f0
/* B453A8 80240C38 00000000 */  nop
/* B453AC 80240C3C 46800020 */  cvt.s.w   $f0, $f0
/* B453B0 80240C40 46020003 */  div.s     $f0, $f0, $f2
/* B453B4 80240C44 E6200054 */  swc1      $f0, 0x54($s1)
/* B453B8 80240C48 8E420074 */  lw        $v0, 0x74($s2)
/* B453BC 80240C4C 3C014049 */  lui       $at, 0x4049
/* B453C0 80240C50 34210FD8 */  ori       $at, $at, 0xfd8
/* B453C4 80240C54 44816000 */  mtc1      $at, $f12
/* B453C8 80240C58 00621023 */  subu      $v0, $v1, $v0
/* B453CC 80240C5C 44820000 */  mtc1      $v0, $f0
/* B453D0 80240C60 00000000 */  nop
/* B453D4 80240C64 46800020 */  cvt.s.w   $f0, $f0
/* B453D8 80240C68 46020003 */  div.s     $f0, $f0, $f2
/* B453DC 80240C6C E6200058 */  swc1      $f0, 0x58($s1)
/* B453E0 80240C70 8E420074 */  lw        $v0, 0x74($s2)
/* B453E4 80240C74 460C0302 */  mul.s     $f12, $f0, $f12
/* B453E8 80240C78 00000000 */  nop
/* B453EC 80240C7C 00621823 */  subu      $v1, $v1, $v0
/* B453F0 80240C80 44830000 */  mtc1      $v1, $f0
/* B453F4 80240C84 00000000 */  nop
/* B453F8 80240C88 46800020 */  cvt.s.w   $f0, $f0
/* B453FC 80240C8C 46020003 */  div.s     $f0, $f0, $f2
/* B45400 80240C90 0C00A874 */  jal       cos_rad
/* B45404 80240C94 E620005C */   swc1     $f0, 0x5c($s1)
/* B45408 80240C98 3C013F80 */  lui       $at, 0x3f80
/* B4540C 80240C9C 44811000 */  mtc1      $at, $f2
/* B45410 80240CA0 00000000 */  nop
/* B45414 80240CA4 46001081 */  sub.s     $f2, $f2, $f0
/* B45418 80240CA8 3C018024 */  lui       $at, %hi(D_802462E0_B4AA50)
/* B4541C 80240CAC D42062E0 */  ldc1      $f0, %lo(D_802462E0_B4AA50)($at)
/* B45420 80240CB0 460010A1 */  cvt.d.s   $f2, $f2
/* B45424 80240CB4 46201082 */  mul.d     $f2, $f2, $f0
/* B45428 80240CB8 00000000 */  nop
/* B4542C 80240CBC 3C013FD0 */  lui       $at, 0x3fd0
/* B45430 80240CC0 44810800 */  mtc1      $at, $f1
/* B45434 80240CC4 44800000 */  mtc1      $zero, $f0
/* B45438 80240CC8 00000000 */  nop
/* B4543C 80240CCC 46201082 */  mul.d     $f2, $f2, $f0
/* B45440 80240CD0 00000000 */  nop
/* B45444 80240CD4 462010A0 */  cvt.s.d   $f2, $f2
/* B45448 80240CD8 E6220064 */  swc1      $f2, 0x64($s1)
/* B4544C 80240CDC 8E430074 */  lw        $v1, 0x74($s2)
/* B45450 80240CE0 2463FFFF */  addiu     $v1, $v1, -1
/* B45454 80240CE4 00031027 */  nor       $v0, $zero, $v1
/* B45458 80240CE8 2C420001 */  sltiu     $v0, $v0, 1
/* B4545C 80240CEC AE430074 */  sw        $v1, 0x74($s2)
/* B45460 80240CF0 8FBF001C */  lw        $ra, 0x1c($sp)
/* B45464 80240CF4 8FB20018 */  lw        $s2, 0x18($sp)
/* B45468 80240CF8 8FB10014 */  lw        $s1, 0x14($sp)
/* B4546C 80240CFC 8FB00010 */  lw        $s0, 0x10($sp)
/* B45470 80240D00 00021040 */  sll       $v0, $v0, 1
/* B45474 80240D04 03E00008 */  jr        $ra
/* B45478 80240D08 27BD0020 */   addiu    $sp, $sp, 0x20
