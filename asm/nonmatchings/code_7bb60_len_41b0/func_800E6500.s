.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800E6500
/* 7F9B0 800E6500 3C048011 */  lui       $a0, 0x8011
/* 7F9B4 800E6504 8C84C96C */  lw        $a0, -0x3694($a0)
/* 7F9B8 800E6508 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 7F9BC 800E650C AFB00010 */  sw        $s0, 0x10($sp)
/* 7F9C0 800E6510 3C108011 */  lui       $s0, %hi(gPlayerStatus)
/* 7F9C4 800E6514 2610EFC8 */  addiu     $s0, $s0, %lo(gPlayerStatus)
/* 7F9C8 800E6518 04800014 */  bltz      $a0, .L800E656C
/* 7F9CC 800E651C AFBF0014 */   sw       $ra, 0x14($sp)
/* 7F9D0 800E6520 0C00E2B7 */  jal       get_npc_by_index
/* 7F9D4 800E6524 00000000 */   nop      
/* 7F9D8 800E6528 0040202D */  daddu     $a0, $v0, $zero
/* 7F9DC 800E652C 8C820000 */  lw        $v0, ($a0)
/* 7F9E0 800E6530 3C030004 */  lui       $v1, 4
/* 7F9E4 800E6534 00431024 */  and       $v0, $v0, $v1
/* 7F9E8 800E6538 10400004 */  beqz      $v0, .L800E654C
/* 7F9EC 800E653C 00000000 */   nop      
/* 7F9F0 800E6540 C60000A8 */  lwc1      $f0, 0xa8($s0)
/* 7F9F4 800E6544 08039955 */  j         .L800E6554
/* 7F9F8 800E6548 E4800034 */   swc1     $f0, 0x34($a0)
.L800E654C:
/* 7F9FC 800E654C C6000080 */  lwc1      $f0, 0x80($s0)
/* 7FA00 800E6550 E480000C */  swc1      $f0, 0xc($a0)
.L800E6554:
/* 7FA04 800E6554 C6000028 */  lwc1      $f0, 0x28($s0)
/* 7FA08 800E6558 E4800038 */  swc1      $f0, 0x38($a0)
/* 7FA0C 800E655C C600002C */  lwc1      $f0, 0x2c($s0)
/* 7FA10 800E6560 E480003C */  swc1      $f0, 0x3c($a0)
/* 7FA14 800E6564 C6000030 */  lwc1      $f0, 0x30($s0)
/* 7FA18 800E6568 E4800040 */  swc1      $f0, 0x40($a0)
.L800E656C:
/* 7FA1C 800E656C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 7FA20 800E6570 8FB00010 */  lw        $s0, 0x10($sp)
/* 7FA24 800E6574 03E00008 */  jr        $ra
/* 7FA28 800E6578 27BD0018 */   addiu    $sp, $sp, 0x18
