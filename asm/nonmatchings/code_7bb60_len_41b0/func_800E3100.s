.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800E3100
/* 7C5B0 800E3100 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 7C5B4 800E3104 AFB00018 */  sw        $s0, 0x18($sp)
/* 7C5B8 800E3108 3C108011 */  lui       $s0, %hi(gPlayerStatus)
/* 7C5BC 800E310C 2610EFC8 */  addiu     $s0, $s0, %lo(gPlayerStatus)
/* 7C5C0 800E3110 AFBF001C */  sw        $ra, 0x1c($sp)
/* 7C5C4 800E3114 820300B4 */  lb        $v1, 0xb4($s0)
/* 7C5C8 800E3118 24020007 */  addiu     $v0, $zero, 7
/* 7C5CC 800E311C 1062000B */  beq       $v1, $v0, .L800E314C
/* 7C5D0 800E3120 24020004 */   addiu    $v0, $zero, 4
/* 7C5D4 800E3124 10620009 */  beq       $v1, $v0, .L800E314C
/* 7C5D8 800E3128 00000000 */   nop      
/* 7C5DC 800E312C 0C038D36 */  jal       func_800E34D8
/* 7C5E0 800E3130 00000000 */   nop      
/* 7C5E4 800E3134 46000306 */  mov.s     $f12, $f0
/* 7C5E8 800E3138 0C038D45 */  jal       func_800E3514
/* 7C5EC 800E313C 27A50010 */   addiu    $a1, $sp, 0x10
/* 7C5F0 800E3140 8FA40010 */  lw        $a0, 0x10($sp)
/* 7C5F4 800E3144 0C038C57 */  jal       func_800E315C
/* 7C5F8 800E3148 E600002C */   swc1     $f0, 0x2c($s0)
.L800E314C:
/* 7C5FC 800E314C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 7C600 800E3150 8FB00018 */  lw        $s0, 0x18($sp)
/* 7C604 800E3154 03E00008 */  jr        $ra
/* 7C608 800E3158 27BD0020 */   addiu    $sp, $sp, 0x20
