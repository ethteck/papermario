.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802409C0_C3E5B0
/* C3E5B0 802409C0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* C3E5B4 802409C4 AFB10014 */  sw        $s1, 0x14($sp)
/* C3E5B8 802409C8 0080882D */  daddu     $s1, $a0, $zero
/* C3E5BC 802409CC AFBF001C */  sw        $ra, 0x1c($sp)
/* C3E5C0 802409D0 AFB20018 */  sw        $s2, 0x18($sp)
/* C3E5C4 802409D4 AFB00010 */  sw        $s0, 0x10($sp)
/* C3E5C8 802409D8 8E320148 */  lw        $s2, 0x148($s1)
/* C3E5CC 802409DC 0C00EABB */  jal       get_npc_unsafe
/* C3E5D0 802409E0 86440008 */   lh       $a0, 8($s2)
/* C3E5D4 802409E4 240400B4 */  addiu     $a0, $zero, 0xb4
/* C3E5D8 802409E8 0C00A67F */  jal       rand_int
/* C3E5DC 802409EC 0040802D */   daddu    $s0, $v0, $zero
/* C3E5E0 802409F0 C60C000C */  lwc1      $f12, 0xc($s0)
/* C3E5E4 802409F4 44820000 */  mtc1      $v0, $f0
/* C3E5E8 802409F8 00000000 */  nop       
/* C3E5EC 802409FC 46800020 */  cvt.s.w   $f0, $f0
/* C3E5F0 80240A00 46006300 */  add.s     $f12, $f12, $f0
/* C3E5F4 80240A04 3C0142B4 */  lui       $at, 0x42b4
/* C3E5F8 80240A08 44810000 */  mtc1      $at, $f0
/* C3E5FC 80240A0C 0C00A6C9 */  jal       clamp_angle
/* C3E600 80240A10 46006301 */   sub.s    $f12, $f12, $f0
/* C3E604 80240A14 E600000C */  swc1      $f0, 0xc($s0)
/* C3E608 80240A18 8E4200CC */  lw        $v0, 0xcc($s2)
/* C3E60C 80240A1C 8C420000 */  lw        $v0, ($v0)
/* C3E610 80240A20 240403E8 */  addiu     $a0, $zero, 0x3e8
/* C3E614 80240A24 0C00A67F */  jal       rand_int
/* C3E618 80240A28 AE020028 */   sw       $v0, 0x28($s0)
/* C3E61C 80240A2C 00021FC2 */  srl       $v1, $v0, 0x1f
/* C3E620 80240A30 00431821 */  addu      $v1, $v0, $v1
/* C3E624 80240A34 00031843 */  sra       $v1, $v1, 1
/* C3E628 80240A38 00031840 */  sll       $v1, $v1, 1
/* C3E62C 80240A3C 00431023 */  subu      $v0, $v0, $v1
/* C3E630 80240A40 24420002 */  addiu     $v0, $v0, 2
/* C3E634 80240A44 AE220074 */  sw        $v0, 0x74($s1)
/* C3E638 80240A48 24020004 */  addiu     $v0, $zero, 4
/* C3E63C 80240A4C AE220070 */  sw        $v0, 0x70($s1)
/* C3E640 80240A50 8FBF001C */  lw        $ra, 0x1c($sp)
/* C3E644 80240A54 8FB20018 */  lw        $s2, 0x18($sp)
/* C3E648 80240A58 8FB10014 */  lw        $s1, 0x14($sp)
/* C3E64C 80240A5C 8FB00010 */  lw        $s0, 0x10($sp)
/* C3E650 80240A60 03E00008 */  jr        $ra
/* C3E654 80240A64 27BD0020 */   addiu    $sp, $sp, 0x20
