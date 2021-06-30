.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218670_649480
/* 649480 80218670 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 649484 80218674 AFB10024 */  sw        $s1, 0x24($sp)
/* 649488 80218678 0080882D */  daddu     $s1, $a0, $zero
/* 64948C 8021867C AFBF0028 */  sw        $ra, 0x28($sp)
/* 649490 80218680 AFB00020 */  sw        $s0, 0x20($sp)
/* 649494 80218684 F7BE0058 */  sdc1      $f30, 0x58($sp)
/* 649498 80218688 F7BC0050 */  sdc1      $f28, 0x50($sp)
/* 64949C 8021868C F7BA0048 */  sdc1      $f26, 0x48($sp)
/* 6494A0 80218690 F7B80040 */  sdc1      $f24, 0x40($sp)
/* 6494A4 80218694 F7B60038 */  sdc1      $f22, 0x38($sp)
/* 6494A8 80218698 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 6494AC 8021869C 8E30000C */  lw        $s0, 0xc($s1)
/* 6494B0 802186A0 8E050000 */  lw        $a1, ($s0)
/* 6494B4 802186A4 0C0B210B */  jal       get_float_variable
/* 6494B8 802186A8 26100004 */   addiu    $s0, $s0, 4
/* 6494BC 802186AC 8E050000 */  lw        $a1, ($s0)
/* 6494C0 802186B0 26100004 */  addiu     $s0, $s0, 4
/* 6494C4 802186B4 0220202D */  daddu     $a0, $s1, $zero
/* 6494C8 802186B8 0C0B210B */  jal       get_float_variable
/* 6494CC 802186BC 46000786 */   mov.s    $f30, $f0
/* 6494D0 802186C0 8E050000 */  lw        $a1, ($s0)
/* 6494D4 802186C4 26100004 */  addiu     $s0, $s0, 4
/* 6494D8 802186C8 0220202D */  daddu     $a0, $s1, $zero
/* 6494DC 802186CC 0C0B210B */  jal       get_float_variable
/* 6494E0 802186D0 46000506 */   mov.s    $f20, $f0
/* 6494E4 802186D4 8E050000 */  lw        $a1, ($s0)
/* 6494E8 802186D8 26100004 */  addiu     $s0, $s0, 4
/* 6494EC 802186DC 0220202D */  daddu     $a0, $s1, $zero
/* 6494F0 802186E0 0C0B210B */  jal       get_float_variable
/* 6494F4 802186E4 46000706 */   mov.s    $f28, $f0
/* 6494F8 802186E8 8E050000 */  lw        $a1, ($s0)
/* 6494FC 802186EC 26100004 */  addiu     $s0, $s0, 4
/* 649500 802186F0 0220202D */  daddu     $a0, $s1, $zero
/* 649504 802186F4 0C0B210B */  jal       get_float_variable
/* 649508 802186F8 46000686 */   mov.s    $f26, $f0
/* 64950C 802186FC 8E050000 */  lw        $a1, ($s0)
/* 649510 80218700 26100004 */  addiu     $s0, $s0, 4
/* 649514 80218704 0220202D */  daddu     $a0, $s1, $zero
/* 649518 80218708 0C0B210B */  jal       get_float_variable
/* 64951C 8021870C 46000606 */   mov.s    $f24, $f0
/* 649520 80218710 0220202D */  daddu     $a0, $s1, $zero
/* 649524 80218714 8E050000 */  lw        $a1, ($s0)
/* 649528 80218718 0C0B1EAF */  jal       get_variable
/* 64952C 8021871C 46000586 */   mov.s    $f22, $f0
/* 649530 80218720 8E240148 */  lw        $a0, 0x148($s1)
/* 649534 80218724 0C09A75B */  jal       get_actor
/* 649538 80218728 0040802D */   daddu    $s0, $v0, $zero
/* 64953C 8021872C 4600A521 */  cvt.d.s   $f20, $f20
/* 649540 80218730 4405F000 */  mfc1      $a1, $f30
/* 649544 80218734 3C014014 */  lui       $at, 0x4014
/* 649548 80218738 44810800 */  mtc1      $at, $f1
/* 64954C 8021873C 44800000 */  mtc1      $zero, $f0
/* 649550 80218740 4407E000 */  mfc1      $a3, $f28
/* 649554 80218744 4620A500 */  add.d     $f20, $f20, $f0
/* 649558 80218748 0000202D */  daddu     $a0, $zero, $zero
/* 64955C 8021874C AFB0001C */  sw        $s0, 0x1c($sp)
/* 649560 80218750 4620A520 */  cvt.s.d   $f20, $f20
/* 649564 80218754 4406A000 */  mfc1      $a2, $f20
/* 649568 80218758 0040802D */  daddu     $s0, $v0, $zero
/* 64956C 8021875C E7BA0010 */  swc1      $f26, 0x10($sp)
/* 649570 80218760 E7B80014 */  swc1      $f24, 0x14($sp)
/* 649574 80218764 0C01BFD4 */  jal       playFX_12
/* 649578 80218768 E7B60018 */   swc1     $f22, 0x18($sp)
/* 64957C 8021876C 0040202D */  daddu     $a0, $v0, $zero
/* 649580 80218770 82030210 */  lb        $v1, 0x210($s0)
/* 649584 80218774 2402000A */  addiu     $v0, $zero, 0xa
/* 649588 80218778 14620007 */  bne       $v1, $v0, .L80218798
/* 64958C 8021877C 00000000 */   nop
/* 649590 80218780 8C82000C */  lw        $v0, 0xc($a0)
/* 649594 80218784 3C013ECC */  lui       $at, 0x3ecc
/* 649598 80218788 3421CCCD */  ori       $at, $at, 0xcccd
/* 64959C 8021878C 44810000 */  mtc1      $at, $f0
/* 6495A0 80218790 00000000 */  nop
/* 6495A4 80218794 E4400028 */  swc1      $f0, 0x28($v0)
.L80218798:
/* 6495A8 80218798 8FBF0028 */  lw        $ra, 0x28($sp)
/* 6495AC 8021879C 8FB10024 */  lw        $s1, 0x24($sp)
/* 6495B0 802187A0 8FB00020 */  lw        $s0, 0x20($sp)
/* 6495B4 802187A4 D7BE0058 */  ldc1      $f30, 0x58($sp)
/* 6495B8 802187A8 D7BC0050 */  ldc1      $f28, 0x50($sp)
/* 6495BC 802187AC D7BA0048 */  ldc1      $f26, 0x48($sp)
/* 6495C0 802187B0 D7B80040 */  ldc1      $f24, 0x40($sp)
/* 6495C4 802187B4 D7B60038 */  ldc1      $f22, 0x38($sp)
/* 6495C8 802187B8 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 6495CC 802187BC 24020002 */  addiu     $v0, $zero, 2
/* 6495D0 802187C0 03E00008 */  jr        $ra
/* 6495D4 802187C4 27BD0060 */   addiu    $sp, $sp, 0x60
