.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel iwa_03_UnkFunc9
/* 919920 80240D70 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 919924 80240D74 AFB30024 */  sw        $s3, 0x24($sp)
/* 919928 80240D78 0080982D */  daddu     $s3, $a0, $zero
/* 91992C 80240D7C AFBF0028 */  sw        $ra, 0x28($sp)
/* 919930 80240D80 AFB20020 */  sw        $s2, 0x20($sp)
/* 919934 80240D84 AFB1001C */  sw        $s1, 0x1c($sp)
/* 919938 80240D88 AFB00018 */  sw        $s0, 0x18($sp)
/* 91993C 80240D8C 8E720148 */  lw        $s2, 0x148($s3)
/* 919940 80240D90 00A0882D */  daddu     $s1, $a1, $zero
/* 919944 80240D94 86440008 */  lh        $a0, 8($s2)
/* 919948 80240D98 0C00EABB */  jal       get_npc_unsafe
/* 91994C 80240D9C 00C0802D */   daddu    $s0, $a2, $zero
/* 919950 80240DA0 0200202D */  daddu     $a0, $s0, $zero
/* 919954 80240DA4 0240282D */  daddu     $a1, $s2, $zero
/* 919958 80240DA8 AFA00010 */  sw        $zero, 0x10($sp)
/* 91995C 80240DAC 8E260024 */  lw        $a2, 0x24($s1)
/* 919960 80240DB0 8E270028 */  lw        $a3, 0x28($s1)
/* 919964 80240DB4 0C01242D */  jal       func_800490B4
/* 919968 80240DB8 0040802D */   daddu    $s0, $v0, $zero
/* 91996C 80240DBC 1040000C */  beqz      $v0, .L80240DF0
/* 919970 80240DC0 00000000 */   nop
/* 919974 80240DC4 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 919978 80240DC8 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 91997C 80240DCC 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 919980 80240DD0 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 919984 80240DD4 8C460028 */  lw        $a2, 0x28($v0)
/* 919988 80240DD8 0C00A720 */  jal       atan2
/* 91998C 80240DDC 8C470030 */   lw       $a3, 0x30($v0)
/* 919990 80240DE0 2402000C */  addiu     $v0, $zero, 0xc
/* 919994 80240DE4 E600000C */  swc1      $f0, 0xc($s0)
/* 919998 80240DE8 080903A3 */  j         .L80240E8C
/* 91999C 80240DEC AE620070 */   sw       $v0, 0x70($s3)
.L80240DF0:
/* 9199A0 80240DF0 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 9199A4 80240DF4 8E4200D0 */  lw        $v0, 0xd0($s2)
/* 9199A8 80240DF8 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 9199AC 80240DFC C4440000 */  lwc1      $f4, ($v0)
/* 9199B0 80240E00 46802120 */  cvt.s.w   $f4, $f4
/* 9199B4 80240E04 44062000 */  mfc1      $a2, $f4
/* 9199B8 80240E08 C4440008 */  lwc1      $f4, 8($v0)
/* 9199BC 80240E0C 46802120 */  cvt.s.w   $f4, $f4
/* 9199C0 80240E10 44072000 */  mfc1      $a3, $f4
/* 9199C4 80240E14 0C00A7B5 */  jal       dist2D
/* 9199C8 80240E18 00000000 */   nop
/* 9199CC 80240E1C C6020018 */  lwc1      $f2, 0x18($s0)
/* 9199D0 80240E20 4602003E */  c.le.s    $f0, $f2
/* 9199D4 80240E24 00000000 */  nop
/* 9199D8 80240E28 45000005 */  bc1f      .L80240E40
/* 9199DC 80240E2C 2402000A */   addiu    $v0, $zero, 0xa
/* 9199E0 80240E30 A602008E */  sh        $v0, 0x8e($s0)
/* 9199E4 80240E34 24020032 */  addiu     $v0, $zero, 0x32
/* 9199E8 80240E38 080903A3 */  j         .L80240E8C
/* 9199EC 80240E3C AE620070 */   sw       $v0, 0x70($s3)
.L80240E40:
/* 9199F0 80240E40 8602008C */  lh        $v0, 0x8c($s0)
/* 9199F4 80240E44 14400011 */  bnez      $v0, .L80240E8C
/* 9199F8 80240E48 00000000 */   nop
/* 9199FC 80240E4C C60C0038 */  lwc1      $f12, 0x38($s0)
/* 919A00 80240E50 8E4200D0 */  lw        $v0, 0xd0($s2)
/* 919A04 80240E54 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 919A08 80240E58 C4440000 */  lwc1      $f4, ($v0)
/* 919A0C 80240E5C 46802120 */  cvt.s.w   $f4, $f4
/* 919A10 80240E60 44062000 */  mfc1      $a2, $f4
/* 919A14 80240E64 C4440008 */  lwc1      $f4, 8($v0)
/* 919A18 80240E68 46802120 */  cvt.s.w   $f4, $f4
/* 919A1C 80240E6C 44072000 */  mfc1      $a3, $f4
/* 919A20 80240E70 0C00A720 */  jal       atan2
/* 919A24 80240E74 00000000 */   nop
/* 919A28 80240E78 8E050018 */  lw        $a1, 0x18($s0)
/* 919A2C 80240E7C 44060000 */  mfc1      $a2, $f0
/* 919A30 80240E80 0200202D */  daddu     $a0, $s0, $zero
/* 919A34 80240E84 0C00EA95 */  jal       npc_move_heading
/* 919A38 80240E88 AC86000C */   sw       $a2, 0xc($a0)
.L80240E8C:
/* 919A3C 80240E8C 8FBF0028 */  lw        $ra, 0x28($sp)
/* 919A40 80240E90 8FB30024 */  lw        $s3, 0x24($sp)
/* 919A44 80240E94 8FB20020 */  lw        $s2, 0x20($sp)
/* 919A48 80240E98 8FB1001C */  lw        $s1, 0x1c($sp)
/* 919A4C 80240E9C 8FB00018 */  lw        $s0, 0x18($sp)
/* 919A50 80240EA0 03E00008 */  jr        $ra
/* 919A54 80240EA4 27BD0030 */   addiu    $sp, $sp, 0x30
