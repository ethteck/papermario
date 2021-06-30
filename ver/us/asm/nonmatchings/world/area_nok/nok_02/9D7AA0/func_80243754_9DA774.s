.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80243754_9DA774
/* 9DA774 80243754 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 9DA778 80243758 AFB20018 */  sw        $s2, 0x18($sp)
/* 9DA77C 8024375C 0080902D */  daddu     $s2, $a0, $zero
/* 9DA780 80243760 AFBF001C */  sw        $ra, 0x1c($sp)
/* 9DA784 80243764 AFB10014 */  sw        $s1, 0x14($sp)
/* 9DA788 80243768 AFB00010 */  sw        $s0, 0x10($sp)
/* 9DA78C 8024376C F7B40020 */  sdc1      $f20, 0x20($sp)
/* 9DA790 80243770 10A0002D */  beqz      $a1, .L80243828
/* 9DA794 80243774 8E51000C */   lw       $s1, 0xc($s2)
/* 9DA798 80243778 8E250000 */  lw        $a1, ($s1)
/* 9DA79C 8024377C 0C0B1EAF */  jal       get_variable
/* 9DA7A0 80243780 26310004 */   addiu    $s1, $s1, 4
/* 9DA7A4 80243784 0040802D */  daddu     $s0, $v0, $zero
/* 9DA7A8 80243788 AE500074 */  sw        $s0, 0x74($s2)
/* 9DA7AC 8024378C 8E250000 */  lw        $a1, ($s1)
/* 9DA7B0 80243790 0C0B1EAF */  jal       get_variable
/* 9DA7B4 80243794 0240202D */   daddu    $a0, $s2, $zero
/* 9DA7B8 80243798 C6020038 */  lwc1      $f2, 0x38($s0)
/* 9DA7BC 8024379C 44820000 */  mtc1      $v0, $f0
/* 9DA7C0 802437A0 00000000 */  nop
/* 9DA7C4 802437A4 46800020 */  cvt.s.w   $f0, $f0
/* 9DA7C8 802437A8 46020000 */  add.s     $f0, $f0, $f2
/* 9DA7CC 802437AC 3C013F00 */  lui       $at, 0x3f00
/* 9DA7D0 802437B0 4481A000 */  mtc1      $at, $f20
/* 9DA7D4 802437B4 00000000 */  nop
/* 9DA7D8 802437B8 46140002 */  mul.s     $f0, $f0, $f20
/* 9DA7DC 802437BC 00000000 */  nop
/* 9DA7E0 802437C0 26310004 */  addiu     $s1, $s1, 4
/* 9DA7E4 802437C4 E6000060 */  swc1      $f0, 0x60($s0)
/* 9DA7E8 802437C8 8E250000 */  lw        $a1, ($s1)
/* 9DA7EC 802437CC 0C0B1EAF */  jal       get_variable
/* 9DA7F0 802437D0 0240202D */   daddu    $a0, $s2, $zero
/* 9DA7F4 802437D4 C6000040 */  lwc1      $f0, 0x40($s0)
/* 9DA7F8 802437D8 44827000 */  mtc1      $v0, $f14
/* 9DA7FC 802437DC 00000000 */  nop
/* 9DA800 802437E0 468073A0 */  cvt.s.w   $f14, $f14
/* 9DA804 802437E4 46007380 */  add.s     $f14, $f14, $f0
/* 9DA808 802437E8 46147382 */  mul.s     $f14, $f14, $f20
/* 9DA80C 802437EC 00000000 */  nop
/* 9DA810 802437F0 C60C0060 */  lwc1      $f12, 0x60($s0)
/* 9DA814 802437F4 8E060038 */  lw        $a2, 0x38($s0)
/* 9DA818 802437F8 44070000 */  mfc1      $a3, $f0
/* 9DA81C 802437FC 0C00A7B5 */  jal       dist2D
/* 9DA820 80243800 E60E0068 */   swc1     $f14, 0x68($s0)
/* 9DA824 80243804 C60C0060 */  lwc1      $f12, 0x60($s0)
/* 9DA828 80243808 C60E0068 */  lwc1      $f14, 0x68($s0)
/* 9DA82C 8024380C 8E060038 */  lw        $a2, 0x38($s0)
/* 9DA830 80243810 8E070040 */  lw        $a3, 0x40($s0)
/* 9DA834 80243814 0C00A720 */  jal       atan2
/* 9DA838 80243818 E6000064 */   swc1     $f0, 0x64($s0)
/* 9DA83C 8024381C 4600010D */  trunc.w.s $f4, $f0
/* 9DA840 80243820 E6440078 */  swc1      $f4, 0x78($s2)
/* 9DA844 80243824 A600008E */  sh        $zero, 0x8e($s0)
.L80243828:
/* 9DA848 80243828 8E500074 */  lw        $s0, 0x74($s2)
/* 9DA84C 8024382C C6000060 */  lwc1      $f0, 0x60($s0)
/* 9DA850 80243830 9602008E */  lhu       $v0, 0x8e($s0)
/* 9DA854 80243834 C6020068 */  lwc1      $f2, 0x68($s0)
/* 9DA858 80243838 24420009 */  addiu     $v0, $v0, 9
/* 9DA85C 8024383C A602008E */  sh        $v0, 0x8e($s0)
/* 9DA860 80243840 00021400 */  sll       $v0, $v0, 0x10
/* 9DA864 80243844 00021403 */  sra       $v0, $v0, 0x10
/* 9DA868 80243848 28420168 */  slti      $v0, $v0, 0x168
/* 9DA86C 8024384C E6000038 */  swc1      $f0, 0x38($s0)
/* 9DA870 80243850 14400003 */  bnez      $v0, .L80243860
/* 9DA874 80243854 E6020040 */   swc1     $f2, 0x40($s0)
/* 9DA878 80243858 24020168 */  addiu     $v0, $zero, 0x168
/* 9DA87C 8024385C A602008E */  sh        $v0, 0x8e($s0)
.L80243860:
/* 9DA880 80243860 8603008E */  lh        $v1, 0x8e($s0)
/* 9DA884 80243864 8E420078 */  lw        $v0, 0x78($s2)
/* 9DA888 80243868 3C0142B4 */  lui       $at, 0x42b4
/* 9DA88C 8024386C 44816000 */  mtc1      $at, $f12
/* 9DA890 80243870 00431021 */  addu      $v0, $v0, $v1
/* 9DA894 80243874 4482A000 */  mtc1      $v0, $f20
/* 9DA898 80243878 00000000 */  nop
/* 9DA89C 8024387C 4680A520 */  cvt.s.w   $f20, $f20
/* 9DA8A0 80243880 0C00A6C9 */  jal       clamp_angle
/* 9DA8A4 80243884 460CA300 */   add.s    $f12, $f20, $f12
/* 9DA8A8 80243888 8E050064 */  lw        $a1, 0x64($s0)
/* 9DA8AC 8024388C 4406A000 */  mfc1      $a2, $f20
/* 9DA8B0 80243890 0200202D */  daddu     $a0, $s0, $zero
/* 9DA8B4 80243894 0C00EA95 */  jal       npc_move_heading
/* 9DA8B8 80243898 E600000C */   swc1     $f0, 0xc($s0)
/* 9DA8BC 8024389C 8602008E */  lh        $v0, 0x8e($s0)
/* 9DA8C0 802438A0 8FBF001C */  lw        $ra, 0x1c($sp)
/* 9DA8C4 802438A4 8FB20018 */  lw        $s2, 0x18($sp)
/* 9DA8C8 802438A8 8FB10014 */  lw        $s1, 0x14($sp)
/* 9DA8CC 802438AC 8FB00010 */  lw        $s0, 0x10($sp)
/* 9DA8D0 802438B0 D7B40020 */  ldc1      $f20, 0x20($sp)
/* 9DA8D4 802438B4 38420168 */  xori      $v0, $v0, 0x168
/* 9DA8D8 802438B8 2C420001 */  sltiu     $v0, $v0, 1
/* 9DA8DC 802438BC 00021040 */  sll       $v0, $v0, 1
/* 9DA8E0 802438C0 03E00008 */  jr        $ra
/* 9DA8E4 802438C4 27BD0028 */   addiu    $sp, $sp, 0x28
/* 9DA8E8 802438C8 00000000 */  nop
/* 9DA8EC 802438CC 00000000 */  nop
