.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80044138
/* 1F538 80044138 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 1F53C 8004413C AFBF0020 */  sw        $ra, 0x20($sp)
/* 1F540 80044140 AFB3001C */  sw        $s3, 0x1c($sp)
/* 1F544 80044144 AFB20018 */  sw        $s2, 0x18($sp)
/* 1F548 80044148 AFB10014 */  sw        $s1, 0x14($sp)
/* 1F54C 8004414C AFB00010 */  sw        $s0, 0x10($sp)
/* 1F550 80044150 8C82000C */  lw        $v0, 0xc($a0)
/* 1F554 80044154 8C450000 */  lw        $a1, ($v0)
/* 1F558 80044158 8C900148 */  lw        $s0, 0x148($a0)
/* 1F55C 8004415C 0C0B1EAF */  jal       func_802C7ABC
/* 1F560 80044160 24120001 */   addiu    $s2, $zero, 1
/* 1F564 80044164 0040882D */  daddu     $s1, $v0, $zero
/* 1F568 80044168 3C13800B */  lui       $s3, %hi(D_800B0EF0)
/* 1F56C 8004416C 26730EF0 */  addiu     $s3, $s3, %lo(D_800B0EF0)
/* 1F570 80044170 2402FFFF */  addiu     $v0, $zero, -1
/* 1F574 80044174 1202000D */  beq       $s0, $v0, .L800441AC
/* 1F578 80044178 00000000 */   nop
/* 1F57C 8004417C 12220004 */  beq       $s1, $v0, .L80044190
/* 1F580 80044180 00000000 */   nop
/* 1F584 80044184 86020008 */  lh        $v0, 8($s0)
/* 1F588 80044188 14510008 */  bne       $v0, $s1, .L800441AC
/* 1F58C 8004418C 00000000 */   nop
.L80044190:
/* 1F590 80044190 86110008 */  lh        $s1, 8($s0)
/* 1F594 80044194 0801106D */  j         .L800441B4
/* 1F598 80044198 241200FF */   addiu    $s2, $zero, 0xff
.L8004419C:
/* 1F59C 8004419C 0C00F8FC */  jal       func_8003E3F0
/* 1F5A0 800441A0 0200202D */   daddu    $a0, $s0, $zero
/* 1F5A4 800441A4 08011088 */  j         .L80044220
/* 1F5A8 800441A8 0240102D */   daddu    $v0, $s2, $zero
.L800441AC:
/* 1F5AC 800441AC 0C00FA6A */  jal       func_8003E9A8
/* 1F5B0 800441B0 0220202D */   daddu    $a0, $s1, $zero
.L800441B4:
/* 1F5B4 800441B4 8262001C */  lb        $v0, 0x1c($s3)
/* 1F5B8 800441B8 18400018 */  blez      $v0, .L8004421C
/* 1F5BC 800441BC 0000282D */   daddu    $a1, $zero, $zero
/* 1F5C0 800441C0 0040402D */  daddu     $t0, $v0, $zero
/* 1F5C4 800441C4 0260382D */  daddu     $a3, $s3, $zero
.L800441C8:
/* 1F5C8 800441C8 8CE20028 */  lw        $v0, 0x28($a3)
/* 1F5CC 800441CC 50400010 */  beql      $v0, $zero, .L80044210
/* 1F5D0 800441D0 24A50001 */   addiu    $a1, $a1, 1
/* 1F5D4 800441D4 8C430000 */  lw        $v1, ($v0)
/* 1F5D8 800441D8 1860000C */  blez      $v1, .L8004420C
/* 1F5DC 800441DC 0000202D */   daddu    $a0, $zero, $zero
/* 1F5E0 800441E0 0060302D */  daddu     $a2, $v1, $zero
/* 1F5E4 800441E4 0040182D */  daddu     $v1, $v0, $zero
.L800441E8:
/* 1F5E8 800441E8 8C700004 */  lw        $s0, 4($v1)
/* 1F5EC 800441EC 12000004 */  beqz      $s0, .L80044200
/* 1F5F0 800441F0 24840001 */   addiu    $a0, $a0, 1
/* 1F5F4 800441F4 86020008 */  lh        $v0, 8($s0)
/* 1F5F8 800441F8 1051FFE8 */  beq       $v0, $s1, .L8004419C
/* 1F5FC 800441FC 00000000 */   nop
.L80044200:
/* 1F600 80044200 0086102A */  slt       $v0, $a0, $a2
/* 1F604 80044204 1440FFF8 */  bnez      $v0, .L800441E8
/* 1F608 80044208 24630004 */   addiu    $v1, $v1, 4
.L8004420C:
/* 1F60C 8004420C 24A50001 */  addiu     $a1, $a1, 1
.L80044210:
/* 1F610 80044210 00A8102A */  slt       $v0, $a1, $t0
/* 1F614 80044214 1440FFEC */  bnez      $v0, .L800441C8
/* 1F618 80044218 24E70004 */   addiu    $a3, $a3, 4
.L8004421C:
/* 1F61C 8004421C 0240102D */  daddu     $v0, $s2, $zero
.L80044220:
/* 1F620 80044220 8FBF0020 */  lw        $ra, 0x20($sp)
/* 1F624 80044224 8FB3001C */  lw        $s3, 0x1c($sp)
/* 1F628 80044228 8FB20018 */  lw        $s2, 0x18($sp)
/* 1F62C 8004422C 8FB10014 */  lw        $s1, 0x14($sp)
/* 1F630 80044230 8FB00010 */  lw        $s0, 0x10($sp)
/* 1F634 80044234 03E00008 */  jr        $ra
/* 1F638 80044238 27BD0028 */   addiu    $sp, $sp, 0x28
