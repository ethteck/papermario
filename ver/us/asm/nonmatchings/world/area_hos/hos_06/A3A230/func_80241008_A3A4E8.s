.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241008_A3A4E8
/* A3A4E8 80241008 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* A3A4EC 8024100C AFBF0010 */  sw        $ra, 0x10($sp)
/* A3A4F0 80241010 8C82000C */  lw        $v0, 0xc($a0)
/* A3A4F4 80241014 0C0B1EAF */  jal       get_variable
/* A3A4F8 80241018 8C450000 */   lw       $a1, ($v0)
/* A3A4FC 8024101C 0040182D */  daddu     $v1, $v0, $zero
/* A3A500 80241020 10600012 */  beqz      $v1, .L8024106C
/* A3A504 80241024 0000202D */   daddu    $a0, $zero, $zero
/* A3A508 80241028 8C620000 */  lw        $v0, ($v1)
/* A3A50C 8024102C 5040000A */  beql      $v0, $zero, .L80241058
/* A3A510 80241030 00041080 */   sll      $v0, $a0, 2
/* A3A514 80241034 3C058024 */  lui       $a1, %hi(jtbl_80246430_915AE0)
/* A3A518 80241038 24A56430 */  addiu     $a1, $a1, %lo(jtbl_80246430_915AE0)
.L8024103C:
/* A3A51C 8024103C 24630004 */  addiu     $v1, $v1, 4
/* A3A520 80241040 24840001 */  addiu     $a0, $a0, 1
/* A3A524 80241044 ACA20000 */  sw        $v0, ($a1)
/* A3A528 80241048 8C620000 */  lw        $v0, ($v1)
/* A3A52C 8024104C 1440FFFB */  bnez      $v0, .L8024103C
/* A3A530 80241050 24A50004 */   addiu    $a1, $a1, 4
/* A3A534 80241054 00041080 */  sll       $v0, $a0, 2
.L80241058:
/* A3A538 80241058 3C018024 */  lui       $at, %hi(jtbl_80246430_915AE0)
/* A3A53C 8024105C 00220821 */  addu      $at, $at, $v0
/* A3A540 80241060 AC206430 */  sw        $zero, %lo(jtbl_80246430_915AE0)($at)
/* A3A544 80241064 08090425 */  j         .L80241094
/* A3A548 80241068 00000000 */   nop
.L8024106C:
/* A3A54C 8024106C 3C038024 */  lui       $v1, %hi(jtbl_80246430_915AE0)
/* A3A550 80241070 24636430 */  addiu     $v1, $v1, %lo(jtbl_80246430_915AE0)
/* A3A554 80241074 0060282D */  daddu     $a1, $v1, $zero
.L80241078:
/* A3A558 80241078 24820010 */  addiu     $v0, $a0, 0x10
/* A3A55C 8024107C AC620000 */  sw        $v0, ($v1)
/* A3A560 80241080 24630004 */  addiu     $v1, $v1, 4
/* A3A564 80241084 24840001 */  addiu     $a0, $a0, 1
/* A3A568 80241088 28820070 */  slti      $v0, $a0, 0x70
/* A3A56C 8024108C 1440FFFA */  bnez      $v0, .L80241078
/* A3A570 80241090 ACA001C0 */   sw       $zero, 0x1c0($a1)
.L80241094:
/* A3A574 80241094 8FBF0010 */  lw        $ra, 0x10($sp)
/* A3A578 80241098 24020002 */  addiu     $v0, $zero, 2
/* A3A57C 8024109C 03E00008 */  jr        $ra
/* A3A580 802410A0 27BD0018 */   addiu    $sp, $sp, 0x18
