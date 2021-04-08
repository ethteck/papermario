.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel iwa_03_UnkFunc8
/* 9193C0 80240810 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 9193C4 80240814 AFB3003C */  sw        $s3, 0x3c($sp)
/* 9193C8 80240818 0080982D */  daddu     $s3, $a0, $zero
/* 9193CC 8024081C AFBF0040 */  sw        $ra, 0x40($sp)
/* 9193D0 80240820 AFB20038 */  sw        $s2, 0x38($sp)
/* 9193D4 80240824 AFB10034 */  sw        $s1, 0x34($sp)
/* 9193D8 80240828 AFB00030 */  sw        $s0, 0x30($sp)
/* 9193DC 8024082C 8E700148 */  lw        $s0, 0x148($s3)
/* 9193E0 80240830 00A0902D */  daddu     $s2, $a1, $zero
/* 9193E4 80240834 86040008 */  lh        $a0, 8($s0)
/* 9193E8 80240838 0C00EABB */  jal       get_npc_unsafe
/* 9193EC 8024083C 00C0882D */   daddu    $s1, $a2, $zero
/* 9193F0 80240840 0220202D */  daddu     $a0, $s1, $zero
/* 9193F4 80240844 0200282D */  daddu     $a1, $s0, $zero
/* 9193F8 80240848 AFA00010 */  sw        $zero, 0x10($sp)
/* 9193FC 8024084C 8E460024 */  lw        $a2, 0x24($s2)
/* 919400 80240850 8E470028 */  lw        $a3, 0x28($s2)
/* 919404 80240854 0C01242D */  jal       func_800490B4
/* 919408 80240858 0040802D */   daddu    $s0, $v0, $zero
/* 91940C 8024085C 1040000B */  beqz      $v0, .L8024088C
/* 919410 80240860 00000000 */   nop
/* 919414 80240864 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 919418 80240868 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 91941C 8024086C C60C0038 */  lwc1      $f12, 0x38($s0)
/* 919420 80240870 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 919424 80240874 8C460028 */  lw        $a2, 0x28($v0)
/* 919428 80240878 0C00A720 */  jal       atan2
/* 91942C 8024087C 8C470030 */   lw       $a3, 0x30($v0)
/* 919430 80240880 2402000C */  addiu     $v0, $zero, 0xc
/* 919434 80240884 08090259 */  j         .L80240964
/* 919438 80240888 E600000C */   swc1     $f0, 0xc($s0)
.L8024088C:
/* 91943C 8024088C 9602008E */  lhu       $v0, 0x8e($s0)
/* 919440 80240890 2442FFFF */  addiu     $v0, $v0, -1
/* 919444 80240894 A602008E */  sh        $v0, 0x8e($s0)
/* 919448 80240898 00021400 */  sll       $v0, $v0, 0x10
/* 91944C 8024089C 1C400032 */  bgtz      $v0, .L80240968
/* 919450 802408A0 00000000 */   nop
/* 919454 802408A4 8E620074 */  lw        $v0, 0x74($s3)
/* 919458 802408A8 2442FFFF */  addiu     $v0, $v0, -1
/* 91945C 802408AC 18400014 */  blez      $v0, .L80240900
/* 919460 802408B0 AE620074 */   sw       $v0, 0x74($s3)
/* 919464 802408B4 C600000C */  lwc1      $f0, 0xc($s0)
/* 919468 802408B8 3C014334 */  lui       $at, 0x4334
/* 91946C 802408BC 44816000 */  mtc1      $at, $f12
/* 919470 802408C0 0C00A6C9 */  jal       clamp_angle
/* 919474 802408C4 460C0300 */   add.s    $f12, $f0, $f12
/* 919478 802408C8 E600000C */  swc1      $f0, 0xc($s0)
/* 91947C 802408CC 8E440008 */  lw        $a0, 8($s2)
/* 919480 802408D0 000417C2 */  srl       $v0, $a0, 0x1f
/* 919484 802408D4 00822021 */  addu      $a0, $a0, $v0
/* 919488 802408D8 00042043 */  sra       $a0, $a0, 1
/* 91948C 802408DC 0C00A67F */  jal       rand_int
/* 919490 802408E0 24840001 */   addiu    $a0, $a0, 1
/* 919494 802408E4 8E430008 */  lw        $v1, 8($s2)
/* 919498 802408E8 000327C2 */  srl       $a0, $v1, 0x1f
/* 91949C 802408EC 00641821 */  addu      $v1, $v1, $a0
/* 9194A0 802408F0 00031843 */  sra       $v1, $v1, 1
/* 9194A4 802408F4 00621821 */  addu      $v1, $v1, $v0
/* 9194A8 802408F8 0809025A */  j         .L80240968
/* 9194AC 802408FC A603008E */   sh       $v1, 0x8e($s0)
.L80240900:
/* 9194B0 80240900 24040002 */  addiu     $a0, $zero, 2
/* 9194B4 80240904 0200282D */  daddu     $a1, $s0, $zero
/* 9194B8 80240908 0000302D */  daddu     $a2, $zero, $zero
/* 9194BC 8024090C 860300A8 */  lh        $v1, 0xa8($s0)
/* 9194C0 80240910 3C013F80 */  lui       $at, 0x3f80
/* 9194C4 80240914 44810000 */  mtc1      $at, $f0
/* 9194C8 80240918 3C014000 */  lui       $at, 0x4000
/* 9194CC 8024091C 44811000 */  mtc1      $at, $f2
/* 9194D0 80240920 3C01C1A0 */  lui       $at, 0xc1a0
/* 9194D4 80240924 44812000 */  mtc1      $at, $f4
/* 9194D8 80240928 2402000C */  addiu     $v0, $zero, 0xc
/* 9194DC 8024092C AFA2001C */  sw        $v0, 0x1c($sp)
/* 9194E0 80240930 44833000 */  mtc1      $v1, $f6
/* 9194E4 80240934 00000000 */  nop
/* 9194E8 80240938 468031A0 */  cvt.s.w   $f6, $f6
/* 9194EC 8024093C 44073000 */  mfc1      $a3, $f6
/* 9194F0 80240940 27A20028 */  addiu     $v0, $sp, 0x28
/* 9194F4 80240944 AFA20020 */  sw        $v0, 0x20($sp)
/* 9194F8 80240948 E7A00010 */  swc1      $f0, 0x10($sp)
/* 9194FC 8024094C E7A20014 */  swc1      $f2, 0x14($sp)
/* 919500 80240950 0C01BFA4 */  jal       fx_emote
/* 919504 80240954 E7A40018 */   swc1     $f4, 0x18($sp)
/* 919508 80240958 2402000F */  addiu     $v0, $zero, 0xf
/* 91950C 8024095C A602008E */  sh        $v0, 0x8e($s0)
/* 919510 80240960 24020028 */  addiu     $v0, $zero, 0x28
.L80240964:
/* 919514 80240964 AE620070 */  sw        $v0, 0x70($s3)
.L80240968:
/* 919518 80240968 8FBF0040 */  lw        $ra, 0x40($sp)
/* 91951C 8024096C 8FB3003C */  lw        $s3, 0x3c($sp)
/* 919520 80240970 8FB20038 */  lw        $s2, 0x38($sp)
/* 919524 80240974 8FB10034 */  lw        $s1, 0x34($sp)
/* 919528 80240978 8FB00030 */  lw        $s0, 0x30($sp)
/* 91952C 8024097C 03E00008 */  jr        $ra
/* 919530 80240980 27BD0048 */   addiu    $sp, $sp, 0x48
