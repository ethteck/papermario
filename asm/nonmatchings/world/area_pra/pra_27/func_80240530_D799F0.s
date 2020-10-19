.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240530_D79F20
/* D79F20 80240530 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* D79F24 80240534 AFB00040 */  sw        $s0, 0x40($sp)
/* D79F28 80240538 3C108011 */  lui       $s0, %hi(gPlayerStatus)
/* D79F2C 8024053C 2610EFC8 */  addiu     $s0, $s0, %lo(gPlayerStatus)
/* D79F30 80240540 AFB10044 */  sw        $s1, 0x44($sp)
/* D79F34 80240544 AFBF004C */  sw        $ra, 0x4c($sp)
/* D79F38 80240548 AFB20048 */  sw        $s2, 0x48($sp)
/* D79F3C 8024054C 8E020000 */  lw        $v0, ($s0)
/* D79F40 80240550 821200BE */  lb        $s2, 0xbe($s0)
/* D79F44 80240554 30420001 */  andi      $v0, $v0, 1
/* D79F48 80240558 10400052 */  beqz      $v0, .L802406A4
/* D79F4C 8024055C 27B10020 */   addiu    $s1, $sp, 0x20
/* D79F50 80240560 8E0400CC */  lw        $a0, 0xcc($s0)
/* D79F54 80240564 0C044181 */  jal       get_shadow_by_index
/* D79F58 80240568 00000000 */   nop      
/* D79F5C 8024056C 0C048B77 */  jal       func_80122DDC
/* D79F60 80240570 84440008 */   lh       $a0, 8($v0)
/* D79F64 80240574 8E050028 */  lw        $a1, 0x28($s0)
/* D79F68 80240578 8E070030 */  lw        $a3, 0x30($s0)
/* D79F6C 8024057C 27A20030 */  addiu     $v0, $sp, 0x30
/* D79F70 80240580 AFA20010 */  sw        $v0, 0x10($sp)
/* D79F74 80240584 27A20034 */  addiu     $v0, $sp, 0x34
/* D79F78 80240588 AFA20014 */  sw        $v0, 0x14($sp)
/* D79F7C 8024058C 27A20038 */  addiu     $v0, $sp, 0x38
/* D79F80 80240590 AFA20018 */  sw        $v0, 0x18($sp)
/* D79F84 80240594 C600002C */  lwc1      $f0, 0x2c($s0)
/* D79F88 80240598 3C04800A */  lui       $a0, 0x800a
/* D79F8C 8024059C 8484A634 */  lh        $a0, -0x59cc($a0)
/* D79F90 802405A0 46000007 */  neg.s     $f0, $f0
/* D79F94 802405A4 44060000 */  mfc1      $a2, $f0
/* D79F98 802405A8 0C00B94E */  jal       get_screen_coords
/* D79F9C 802405AC 00000000 */   nop      
/* D79FA0 802405B0 8E0500A4 */  lw        $a1, 0xa4($s0)
/* D79FA4 802405B4 3C063F80 */  lui       $a2, 0x3f80
/* D79FA8 802405B8 0C0B76A3 */  jal       func_802DDA8C
/* D79FAC 802405BC 24040001 */   addiu    $a0, $zero, 1
/* D79FB0 802405C0 8E020000 */  lw        $v0, ($s0)
/* D79FB4 802405C4 3C030002 */  lui       $v1, 2
/* D79FB8 802405C8 00431024 */  and       $v0, $v0, $v1
/* D79FBC 802405CC 54400022 */  bnel      $v0, $zero, .L80240658
/* D79FC0 802405D0 24120011 */   addiu    $s2, $zero, 0x11
/* D79FC4 802405D4 9203000E */  lbu       $v1, 0xe($s0)
/* D79FC8 802405D8 3C02802E */  lui       $v0, 0x802e
/* D79FCC 802405DC 90429D71 */  lbu       $v0, -0x628f($v0)
/* D79FD0 802405E0 10620018 */  beq       $v1, $v0, .L80240644
/* D79FD4 802405E4 2C6200FE */   sltiu    $v0, $v1, 0xfe
/* D79FD8 802405E8 1040000B */  beqz      $v0, .L80240618
/* D79FDC 802405EC 24120011 */   addiu    $s2, $zero, 0x11
/* D79FE0 802405F0 24040001 */  addiu     $a0, $zero, 1
/* D79FE4 802405F4 2405FFFF */  addiu     $a1, $zero, -1
/* D79FE8 802405F8 24060007 */  addiu     $a2, $zero, 7
/* D79FEC 802405FC 0060102D */  daddu     $v0, $v1, $zero
/* D79FF0 80240600 0000382D */  daddu     $a3, $zero, $zero
/* D79FF4 80240604 AFA00010 */  sw        $zero, 0x10($sp)
/* D79FF8 80240608 AFA00014 */  sw        $zero, 0x14($sp)
/* D79FFC 8024060C AFA0001C */  sw        $zero, 0x1c($sp)
/* D7A000 80240610 0809018F */  j         .L8024063C
/* D7A004 80240614 AFA20018 */   sw       $v0, 0x18($sp)
.L80240618:
/* D7A008 80240618 2412000D */  addiu     $s2, $zero, 0xd
/* D7A00C 8024061C 24040001 */  addiu     $a0, $zero, 1
/* D7A010 80240620 2405FFFF */  addiu     $a1, $zero, -1
/* D7A014 80240624 0000302D */  daddu     $a2, $zero, $zero
/* D7A018 80240628 00C0382D */  daddu     $a3, $a2, $zero
/* D7A01C 8024062C AFA00010 */  sw        $zero, 0x10($sp)
/* D7A020 80240630 AFA00014 */  sw        $zero, 0x14($sp)
/* D7A024 80240634 AFA00018 */  sw        $zero, 0x18($sp)
/* D7A028 80240638 AFA0001C */  sw        $zero, 0x1c($sp)
.L8024063C:
/* D7A02C 8024063C 0C0B77B9 */  jal       func_802DDEE4
/* D7A030 80240640 00000000 */   nop      
.L80240644:
/* D7A034 80240644 9202000E */  lbu       $v0, 0xe($s0)
/* D7A038 80240648 3C01802E */  lui       $at, 0x802e
/* D7A03C 8024064C A0229D71 */  sb        $v0, -0x628f($at)
/* D7A040 80240650 08090198 */  j         .L80240660
/* D7A044 80240654 00000000 */   nop      
.L80240658:
/* D7A048 80240658 3C01802E */  lui       $at, 0x802e
/* D7A04C 8024065C A0209D71 */  sb        $zero, -0x628f($at)
.L80240660:
/* D7A050 80240660 8FA20038 */  lw        $v0, 0x38($sp)
/* D7A054 80240664 3C048024 */  lui       $a0, 0x8024
/* D7A058 80240668 248408A0 */  addiu     $a0, $a0, 0x8a0
/* D7A05C 8024066C AE320000 */  sw        $s2, ($s1)
/* D7A060 80240670 AE300008 */  sw        $s0, 8($s1)
/* D7A064 80240674 00021023 */  negu      $v0, $v0
/* D7A068 80240678 AE220004 */  sw        $v0, 4($s1)
/* D7A06C 8024067C 8E020000 */  lw        $v0, ($s0)
/* D7A070 80240680 3C030002 */  lui       $v1, 2
/* D7A074 80240684 00431024 */  and       $v0, $v0, $v1
/* D7A078 80240688 54400004 */  bnel      $v0, $zero, .L8024069C
/* D7A07C 8024068C AE24000C */   sw       $a0, 0xc($s1)
/* D7A080 80240690 3C048024 */  lui       $a0, 0x8024
/* D7A084 80240694 248406BC */  addiu     $a0, $a0, 0x6bc
/* D7A088 80240698 AE24000C */  sw        $a0, 0xc($s1)
.L8024069C:
/* D7A08C 8024069C 0C047644 */  jal       queue_render_task
/* D7A090 802406A0 0220202D */   daddu    $a0, $s1, $zero
.L802406A4:
/* D7A094 802406A4 8FBF004C */  lw        $ra, 0x4c($sp)
/* D7A098 802406A8 8FB20048 */  lw        $s2, 0x48($sp)
/* D7A09C 802406AC 8FB10044 */  lw        $s1, 0x44($sp)
/* D7A0A0 802406B0 8FB00040 */  lw        $s0, 0x40($sp)
/* D7A0A4 802406B4 03E00008 */  jr        $ra
/* D7A0A8 802406B8 27BD0050 */   addiu    $sp, $sp, 0x50
