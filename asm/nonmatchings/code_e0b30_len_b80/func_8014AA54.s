.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8014AA54
/* E1154 8014AA54 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* E1158 8014AA58 3C028016 */  lui       $v0, 0x8016
/* E115C 8014AA5C 24429AF0 */  addiu     $v0, $v0, -0x6510
/* E1160 8014AA60 00041840 */  sll       $v1, $a0, 1
/* E1164 8014AA64 00641821 */  addu      $v1, $v1, $a0
/* E1168 8014AA68 00031900 */  sll       $v1, $v1, 4
/* E116C 8014AA6C 00621821 */  addu      $v1, $v1, $v0
/* E1170 8014AA70 AFBF0010 */  sw        $ra, 0x10($sp)
/* E1174 8014AA74 94640000 */  lhu       $a0, ($v1)
/* E1178 8014AA78 30820001 */  andi      $v0, $a0, 1
/* E117C 8014AA7C 10400003 */  beqz      $v0, .L8014AA8C
/* E1180 8014AA80 30820002 */   andi     $v0, $a0, 2
/* E1184 8014AA84 14400003 */  bnez      $v0, .L8014AA94
/* E1188 8014AA88 00061400 */   sll      $v0, $a2, 0x10
.L8014AA8C:
/* E118C 8014AA8C 08052AC0 */  j         .L8014AB00
/* E1190 8014AA90 0000102D */   daddu    $v0, $zero, $zero
.L8014AA94:
/* E1194 8014AA94 00022403 */  sra       $a0, $v0, 0x10
/* E1198 8014AA98 24020001 */  addiu     $v0, $zero, 1
/* E119C 8014AA9C 1082000F */  beq       $a0, $v0, .L8014AADC
/* E11A0 8014AAA0 28820002 */   slti     $v0, $a0, 2
/* E11A4 8014AAA4 10400005 */  beqz      $v0, .L8014AABC
/* E11A8 8014AAA8 24020002 */   addiu    $v0, $zero, 2
/* E11AC 8014AAAC 10800007 */  beqz      $a0, .L8014AACC
/* E11B0 8014AAB0 24020001 */   addiu    $v0, $zero, 1
/* E11B4 8014AAB4 08052AC0 */  j         .L8014AB00
/* E11B8 8014AAB8 00000000 */   nop      
.L8014AABC:
/* E11BC 8014AABC 1082000C */  beq       $a0, $v0, .L8014AAF0
/* E11C0 8014AAC0 24020001 */   addiu    $v0, $zero, 1
/* E11C4 8014AAC4 08052AC0 */  j         .L8014AB00
/* E11C8 8014AAC8 00000000 */   nop      
.L8014AACC:
/* E11CC 8014AACC 0C01580A */  jal       func_80056028
/* E11D0 8014AAD0 8C640018 */   lw       $a0, 0x18($v1)
/* E11D4 8014AAD4 08052AC0 */  j         .L8014AB00
/* E11D8 8014AAD8 24020001 */   addiu    $v0, $zero, 1
.L8014AADC:
/* E11DC 8014AADC 8C640018 */  lw        $a0, 0x18($v1)
/* E11E0 8014AAE0 0C015811 */  jal       func_80056044
/* E11E4 8014AAE4 00000000 */   nop      
/* E11E8 8014AAE8 08052AC0 */  j         .L8014AB00
/* E11EC 8014AAEC 24020001 */   addiu    $v0, $zero, 1
.L8014AAF0:
/* E11F0 8014AAF0 8C640018 */  lw        $a0, 0x18($v1)
/* E11F4 8014AAF4 0C01581A */  jal       func_80056068
/* E11F8 8014AAF8 00000000 */   nop      
/* E11FC 8014AAFC 24020001 */  addiu     $v0, $zero, 1
.L8014AB00:
/* E1200 8014AB00 8FBF0010 */  lw        $ra, 0x10($sp)
/* E1204 8014AB04 03E00008 */  jr        $ra
/* E1208 8014AB08 27BD0018 */   addiu    $sp, $sp, 0x18
