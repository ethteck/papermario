.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel jtbl_80150A60
.word L80130ABC_C71BC, L80130A30_C7130, L80130A50_C7150, L80130A60_C7160, L80130AB4_C71B4, L80130AC4_C71C4, L80130AC4_C71C4, L80130A70_C7170

.section .text

glabel func_80130A04
/* C7104 80130A04 8C830040 */  lw        $v1, 0x40($a0)
/* C7108 80130A08 8C650000 */  lw        $a1, ($v1)
/* C710C 80130A0C 2CA20008 */  sltiu     $v0, $a1, 8
/* C7110 80130A10 1040002C */  beqz      $v0, L80130AC4_C71C4
/* C7114 80130A14 24630004 */   addiu    $v1, $v1, 4
/* C7118 80130A18 00051080 */  sll       $v0, $a1, 2
/* C711C 80130A1C 3C018015 */  lui       $at, %hi(jtbl_80150A60)
/* C7120 80130A20 00220821 */  addu      $at, $at, $v0
/* C7124 80130A24 8C220A60 */  lw        $v0, %lo(jtbl_80150A60)($at)
/* C7128 80130A28 00400008 */  jr        $v0
/* C712C 80130A2C 00000000 */   nop
glabel L80130A30_C7130
/* C7130 80130A30 8C620000 */  lw        $v0, ($v1)
/* C7134 80130A34 24630004 */  addiu     $v1, $v1, 4
/* C7138 80130A38 AC82003C */  sw        $v0, 0x3c($a0)
/* C713C 80130A3C 8C620000 */  lw        $v0, ($v1)
/* C7140 80130A40 24630004 */  addiu     $v1, $v1, 4
/* C7144 80130A44 AC830040 */  sw        $v1, 0x40($a0)
/* C7148 80130A48 0804C2B1 */  j         L80130AC4_C71C4
/* C714C 80130A4C AC820044 */   sw       $v0, 0x44($a0)
glabel L80130A50_C7150
/* C7150 80130A50 8C830048 */  lw        $v1, 0x48($a0)
/* C7154 80130A54 24020001 */  addiu     $v0, $zero, 1
/* C7158 80130A58 03E00008 */  jr        $ra
/* C715C 80130A5C AC830040 */   sw       $v1, 0x40($a0)
glabel L80130A60_C7160
/* C7160 80130A60 24020001 */  addiu     $v0, $zero, 1
/* C7164 80130A64 AC830048 */  sw        $v1, 0x48($a0)
/* C7168 80130A68 03E00008 */  jr        $ra
/* C716C 80130A6C AC830040 */   sw       $v1, 0x40($a0)
glabel L80130A70_C7170
/* C7170 80130A70 8C620000 */  lw        $v0, ($v1)
/* C7174 80130A74 24630004 */  addiu     $v1, $v1, 4
/* C7178 80130A78 AC82003C */  sw        $v0, 0x3c($a0)
/* C717C 80130A7C 8C620000 */  lw        $v0, ($v1)
/* C7180 80130A80 24630004 */  addiu     $v1, $v1, 4
/* C7184 80130A84 AC82004C */  sw        $v0, 0x4c($a0)
/* C7188 80130A88 8C620000 */  lw        $v0, ($v1)
/* C718C 80130A8C 24630004 */  addiu     $v1, $v1, 4
/* C7190 80130A90 AC820050 */  sw        $v0, 0x50($a0)
/* C7194 80130A94 8C620000 */  lw        $v0, ($v1)
/* C7198 80130A98 24630004 */  addiu     $v1, $v1, 4
/* C719C 80130A9C AC820054 */  sw        $v0, 0x54($a0)
/* C71A0 80130AA0 8C620000 */  lw        $v0, ($v1)
/* C71A4 80130AA4 24630004 */  addiu     $v1, $v1, 4
/* C71A8 80130AA8 AC830040 */  sw        $v1, 0x40($a0)
/* C71AC 80130AAC 0804C2B1 */  j         L80130AC4_C71C4
/* C71B0 80130AB0 AC820058 */   sw       $v0, 0x58($a0)
glabel L80130AB4_C71B4
/* C71B4 80130AB4 24630004 */  addiu     $v1, $v1, 4
/* C71B8 80130AB8 AC830040 */  sw        $v1, 0x40($a0)
glabel L80130ABC_C71BC
/* C71BC 80130ABC 03E00008 */  jr        $ra
/* C71C0 80130AC0 24020001 */   addiu    $v0, $zero, 1
glabel L80130AC4_C71C4
/* C71C4 80130AC4 03E00008 */  jr        $ra
/* C71C8 80130AC8 0000102D */   daddu    $v0, $zero, $zero
