.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel iwa_03_UnkFunc10
/* 919724 80240B74 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 919728 80240B78 AFB3003C */  sw        $s3, 0x3c($sp)
/* 91972C 80240B7C 0080982D */  daddu     $s3, $a0, $zero
/* 919730 80240B80 AFBF0040 */  sw        $ra, 0x40($sp)
/* 919734 80240B84 AFB20038 */  sw        $s2, 0x38($sp)
/* 919738 80240B88 AFB10034 */  sw        $s1, 0x34($sp)
/* 91973C 80240B8C AFB00030 */  sw        $s0, 0x30($sp)
/* 919740 80240B90 8E720148 */  lw        $s2, 0x148($s3)
/* 919744 80240B94 0C00EABB */  jal       get_npc_unsafe
/* 919748 80240B98 86440008 */   lh       $a0, 8($s2)
/* 91974C 80240B9C 0040802D */  daddu     $s0, $v0, $zero
/* 919750 80240BA0 0200202D */  daddu     $a0, $s0, $zero
/* 919754 80240BA4 0C00F598 */  jal       func_8003D660
/* 919758 80240BA8 24050001 */   addiu    $a1, $zero, 1
/* 91975C 80240BAC 8E050018 */  lw        $a1, 0x18($s0)
/* 919760 80240BB0 8E06000C */  lw        $a2, 0xc($s0)
/* 919764 80240BB4 0C00EA95 */  jal       npc_move_heading
/* 919768 80240BB8 0200202D */   daddu    $a0, $s0, $zero
/* 91976C 80240BBC 8E4300D0 */  lw        $v1, 0xd0($s2)
/* 919770 80240BC0 C6000040 */  lwc1      $f0, 0x40($s0)
/* 919774 80240BC4 C462001C */  lwc1      $f2, 0x1c($v1)
/* 919778 80240BC8 468010A0 */  cvt.s.w   $f2, $f2
/* 91977C 80240BCC C4640024 */  lwc1      $f4, 0x24($v1)
/* 919780 80240BD0 46802120 */  cvt.s.w   $f4, $f4
/* 919784 80240BD4 E7A00010 */  swc1      $f0, 0x10($sp)
/* 919788 80240BD8 8E4200D0 */  lw        $v0, 0xd0($s2)
/* 91978C 80240BDC 44051000 */  mfc1      $a1, $f2
/* 919790 80240BE0 C4400028 */  lwc1      $f0, 0x28($v0)
/* 919794 80240BE4 46800020 */  cvt.s.w   $f0, $f0
/* 919798 80240BE8 E7A00014 */  swc1      $f0, 0x14($sp)
/* 91979C 80240BEC 8E4200D0 */  lw        $v0, 0xd0($s2)
/* 9197A0 80240BF0 44062000 */  mfc1      $a2, $f4
/* 9197A4 80240BF4 C440002C */  lwc1      $f0, 0x2c($v0)
/* 9197A8 80240BF8 46800020 */  cvt.s.w   $f0, $f0
/* 9197AC 80240BFC E7A00018 */  swc1      $f0, 0x18($sp)
/* 9197B0 80240C00 8C640030 */  lw        $a0, 0x30($v1)
/* 9197B4 80240C04 0C0123F5 */  jal       is_point_within_region
/* 9197B8 80240C08 8E070038 */   lw       $a3, 0x38($s0)
/* 9197BC 80240C0C C6000038 */  lwc1      $f0, 0x38($s0)
/* 9197C0 80240C10 C602003C */  lwc1      $f2, 0x3c($s0)
/* 9197C4 80240C14 C6040040 */  lwc1      $f4, 0x40($s0)
/* 9197C8 80240C18 3C013F80 */  lui       $at, 0x3f80
/* 9197CC 80240C1C 44813000 */  mtc1      $at, $f6
/* 9197D0 80240C20 E7A00020 */  swc1      $f0, 0x20($sp)
/* 9197D4 80240C24 E7A20024 */  swc1      $f2, 0x24($sp)
/* 9197D8 80240C28 E7A40028 */  swc1      $f4, 0x28($sp)
/* 9197DC 80240C2C E7A60010 */  swc1      $f6, 0x10($sp)
/* 9197E0 80240C30 C600000C */  lwc1      $f0, 0xc($s0)
/* 9197E4 80240C34 0002882B */  sltu      $s1, $zero, $v0
/* 9197E8 80240C38 E7A00014 */  swc1      $f0, 0x14($sp)
/* 9197EC 80240C3C 860200A8 */  lh        $v0, 0xa8($s0)
/* 9197F0 80240C40 27A50020 */  addiu     $a1, $sp, 0x20
/* 9197F4 80240C44 44820000 */  mtc1      $v0, $f0
/* 9197F8 80240C48 00000000 */  nop
/* 9197FC 80240C4C 46800020 */  cvt.s.w   $f0, $f0
/* 919800 80240C50 E7A00018 */  swc1      $f0, 0x18($sp)
/* 919804 80240C54 860200A6 */  lh        $v0, 0xa6($s0)
/* 919808 80240C58 27A60024 */  addiu     $a2, $sp, 0x24
/* 91980C 80240C5C 44820000 */  mtc1      $v0, $f0
/* 919810 80240C60 00000000 */  nop
/* 919814 80240C64 46800020 */  cvt.s.w   $f0, $f0
/* 919818 80240C68 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 91981C 80240C6C 8E040080 */  lw        $a0, 0x80($s0)
/* 919820 80240C70 0C037711 */  jal       func_800DDC44
/* 919824 80240C74 27A70028 */   addiu    $a3, $sp, 0x28
/* 919828 80240C78 54400001 */  bnel      $v0, $zero, .L80240C80
/* 91982C 80240C7C 24110001 */   addiu    $s1, $zero, 1
.L80240C80:
/* 919830 80240C80 9602008E */  lhu       $v0, 0x8e($s0)
/* 919834 80240C84 2442FFFF */  addiu     $v0, $v0, -1
/* 919838 80240C88 A602008E */  sh        $v0, 0x8e($s0)
/* 91983C 80240C8C 00021400 */  sll       $v0, $v0, 0x10
/* 919840 80240C90 58400001 */  blezl     $v0, .L80240C98
/* 919844 80240C94 24110001 */   addiu    $s1, $zero, 1
.L80240C98:
/* 919848 80240C98 12200003 */  beqz      $s1, .L80240CA8
/* 91984C 80240C9C 24020004 */   addiu    $v0, $zero, 4
/* 919850 80240CA0 AE620070 */  sw        $v0, 0x70($s3)
/* 919854 80240CA4 A2400007 */  sb        $zero, 7($s2)
.L80240CA8:
/* 919858 80240CA8 8FBF0040 */  lw        $ra, 0x40($sp)
/* 91985C 80240CAC 8FB3003C */  lw        $s3, 0x3c($sp)
/* 919860 80240CB0 8FB20038 */  lw        $s2, 0x38($sp)
/* 919864 80240CB4 8FB10034 */  lw        $s1, 0x34($sp)
/* 919868 80240CB8 8FB00030 */  lw        $s0, 0x30($sp)
/* 91986C 80240CBC 03E00008 */  jr        $ra
/* 919870 80240CC0 27BD0048 */   addiu    $sp, $sp, 0x48
