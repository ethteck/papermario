.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240430_C68560
/* C68560 80240430 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* C68564 80240434 AFB3001C */  sw        $s3, 0x1c($sp)
/* C68568 80240438 0080982D */  daddu     $s3, $a0, $zero
/* C6856C 8024043C AFB00010 */  sw        $s0, 0x10($sp)
/* C68570 80240440 24100001 */  addiu     $s0, $zero, 1
/* C68574 80240444 AFB40020 */  sw        $s4, 0x20($sp)
/* C68578 80240448 2414FFFF */  addiu     $s4, $zero, -1
/* C6857C 8024044C AFB50024 */  sw        $s5, 0x24($sp)
/* C68580 80240450 0200A82D */  daddu     $s5, $s0, $zero
/* C68584 80240454 AFB10014 */  sw        $s1, 0x14($sp)
/* C68588 80240458 3C118011 */  lui       $s1, %hi(gPlayerData+0x8)
/* C6858C 8024045C 2631F298 */  addiu     $s1, $s1, %lo(gPlayerData+0x8)
/* C68590 80240460 AFBF0028 */  sw        $ra, 0x28($sp)
/* C68594 80240464 AFB20018 */  sw        $s2, 0x18($sp)
/* C68598 80240468 8E6200B4 */  lw        $v0, 0xb4($s3)
/* C6859C 8024046C 0280182D */  daddu     $v1, $s4, $zero
/* C685A0 80240470 AE630084 */  sw        $v1, 0x84($s3)
/* C685A4 80240474 00021027 */  nor       $v0, $zero, $v0
/* C685A8 80240478 000217C2 */  srl       $v0, $v0, 0x1f
/* C685AC 8024047C 00029400 */  sll       $s2, $v0, 0x10
.L80240480:
/* C685B0 80240480 92220014 */  lbu       $v0, 0x14($s1)
/* C685B4 80240484 50400008 */  beql      $v0, $zero, .L802404A8
/* C685B8 80240488 26100001 */   addiu    $s0, $s0, 1
/* C685BC 8024048C 0200202D */  daddu     $a0, $s0, $zero
/* C685C0 80240490 0C0900F9 */  jal       func_802403E4_C68514
/* C685C4 80240494 00122C03 */   sra      $a1, $s2, 0x10
/* C685C8 80240498 10540003 */  beq       $v0, $s4, .L802404A8
/* C685CC 8024049C 26100001 */   addiu    $s0, $s0, 1
/* C685D0 802404A0 0809012D */  j         .L802404B4
/* C685D4 802404A4 AE750084 */   sw       $s5, 0x84($s3)
.L802404A8:
/* C685D8 802404A8 2A02000C */  slti      $v0, $s0, 0xc
/* C685DC 802404AC 1440FFF4 */  bnez      $v0, .L80240480
/* C685E0 802404B0 26310008 */   addiu    $s1, $s1, 8
.L802404B4:
/* C685E4 802404B4 8FBF0028 */  lw        $ra, 0x28($sp)
/* C685E8 802404B8 8FB50024 */  lw        $s5, 0x24($sp)
/* C685EC 802404BC 8FB40020 */  lw        $s4, 0x20($sp)
/* C685F0 802404C0 8FB3001C */  lw        $s3, 0x1c($sp)
/* C685F4 802404C4 8FB20018 */  lw        $s2, 0x18($sp)
/* C685F8 802404C8 8FB10014 */  lw        $s1, 0x14($sp)
/* C685FC 802404CC 8FB00010 */  lw        $s0, 0x10($sp)
/* C68600 802404D0 24020002 */  addiu     $v0, $zero, 2
/* C68604 802404D4 03E00008 */  jr        $ra
/* C68608 802404D8 27BD0030 */   addiu    $sp, $sp, 0x30
