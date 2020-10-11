.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel TranslateModel
/* ED510 802C8B60 27BDFF88 */  addiu     $sp, $sp, -0x78
/* ED514 802C8B64 AFB20058 */  sw        $s2, 0x58($sp)
/* ED518 802C8B68 0080902D */  daddu     $s2, $a0, $zero
/* ED51C 802C8B6C AFBF005C */  sw        $ra, 0x5c($sp)
/* ED520 802C8B70 AFB10054 */  sw        $s1, 0x54($sp)
/* ED524 802C8B74 AFB00050 */  sw        $s0, 0x50($sp)
/* ED528 802C8B78 F7B80070 */  sdc1      $f24, 0x70($sp)
/* ED52C 802C8B7C F7B60068 */  sdc1      $f22, 0x68($sp)
/* ED530 802C8B80 F7B40060 */  sdc1      $f20, 0x60($sp)
/* ED534 802C8B84 8E50000C */  lw        $s0, 0xc($s2)
/* ED538 802C8B88 8E050000 */  lw        $a1, ($s0)
/* ED53C 802C8B8C 0C0B1EAF */  jal       get_variable
/* ED540 802C8B90 26100004 */   addiu    $s0, $s0, 4
/* ED544 802C8B94 0C046C04 */  jal       get_model_list_index_from_tree_index
/* ED548 802C8B98 0040202D */   daddu    $a0, $v0, $zero
/* ED54C 802C8B9C 8E050000 */  lw        $a1, ($s0)
/* ED550 802C8BA0 26100004 */  addiu     $s0, $s0, 4
/* ED554 802C8BA4 0240202D */  daddu     $a0, $s2, $zero
/* ED558 802C8BA8 0C0B210B */  jal       get_float_variable
/* ED55C 802C8BAC 0040882D */   daddu    $s1, $v0, $zero
/* ED560 802C8BB0 8E050000 */  lw        $a1, ($s0)
/* ED564 802C8BB4 26100004 */  addiu     $s0, $s0, 4
/* ED568 802C8BB8 0240202D */  daddu     $a0, $s2, $zero
/* ED56C 802C8BBC 0C0B210B */  jal       get_float_variable
/* ED570 802C8BC0 46000606 */   mov.s    $f24, $f0
/* ED574 802C8BC4 0240202D */  daddu     $a0, $s2, $zero
/* ED578 802C8BC8 8E050000 */  lw        $a1, ($s0)
/* ED57C 802C8BCC 0C0B210B */  jal       get_float_variable
/* ED580 802C8BD0 46000586 */   mov.s    $f22, $f0
/* ED584 802C8BD4 0220202D */  daddu     $a0, $s1, $zero
/* ED588 802C8BD8 0C046B4C */  jal       get_model_from_list_index
/* ED58C 802C8BDC 46000506 */   mov.s    $f20, $f0
/* ED590 802C8BE0 0040802D */  daddu     $s0, $v0, $zero
/* ED594 802C8BE4 96020000 */  lhu       $v0, ($s0)
/* ED598 802C8BE8 30420400 */  andi      $v0, $v0, 0x400
/* ED59C 802C8BEC 1440000A */  bnez      $v0, .L802C8C18
/* ED5A0 802C8BF0 00000000 */   nop      
/* ED5A4 802C8BF4 4405C000 */  mfc1      $a1, $f24
/* ED5A8 802C8BF8 4406B000 */  mfc1      $a2, $f22
/* ED5AC 802C8BFC 4407A000 */  mfc1      $a3, $f20
/* ED5B0 802C8C00 0C019E40 */  jal       guTranslateF
/* ED5B4 802C8C04 26040058 */   addiu    $a0, $s0, 0x58
/* ED5B8 802C8C08 96020000 */  lhu       $v0, ($s0)
/* ED5BC 802C8C0C 34421400 */  ori       $v0, $v0, 0x1400
/* ED5C0 802C8C10 080B230F */  j         .L802C8C3C
/* ED5C4 802C8C14 A6020000 */   sh       $v0, ($s0)
.L802C8C18:
/* ED5C8 802C8C18 4405C000 */  mfc1      $a1, $f24
/* ED5CC 802C8C1C 4406B000 */  mfc1      $a2, $f22
/* ED5D0 802C8C20 4407A000 */  mfc1      $a3, $f20
/* ED5D4 802C8C24 0C019E40 */  jal       guTranslateF
/* ED5D8 802C8C28 27A40010 */   addiu    $a0, $sp, 0x10
/* ED5DC 802C8C2C 27A40010 */  addiu     $a0, $sp, 0x10
/* ED5E0 802C8C30 26050058 */  addiu     $a1, $s0, 0x58
/* ED5E4 802C8C34 0C019D80 */  jal       guMtxCatF
/* ED5E8 802C8C38 00A0302D */   daddu    $a2, $a1, $zero
.L802C8C3C:
/* ED5EC 802C8C3C 8FBF005C */  lw        $ra, 0x5c($sp)
/* ED5F0 802C8C40 8FB20058 */  lw        $s2, 0x58($sp)
/* ED5F4 802C8C44 8FB10054 */  lw        $s1, 0x54($sp)
/* ED5F8 802C8C48 8FB00050 */  lw        $s0, 0x50($sp)
/* ED5FC 802C8C4C D7B80070 */  ldc1      $f24, 0x70($sp)
/* ED600 802C8C50 D7B60068 */  ldc1      $f22, 0x68($sp)
/* ED604 802C8C54 D7B40060 */  ldc1      $f20, 0x60($sp)
/* ED608 802C8C58 24020002 */  addiu     $v0, $zero, 2
/* ED60C 802C8C5C 03E00008 */  jr        $ra
/* ED610 802C8C60 27BD0078 */   addiu    $sp, $sp, 0x78
