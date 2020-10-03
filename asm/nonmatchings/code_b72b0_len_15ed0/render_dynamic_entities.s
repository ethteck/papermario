.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel render_dynamic_entities
/* B9B70 80123470 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* B9B74 80123474 AFB00010 */  sw        $s0, 0x10($sp)
/* B9B78 80123478 0000802D */  daddu     $s0, $zero, $zero
/* B9B7C 8012347C AFBF0014 */  sw        $ra, 0x14($sp)
.L80123480:
/* B9B80 80123480 3C038015 */  lui       $v1, %hi(gCurrentDynamicEntityListPtr)
/* B9B84 80123484 8C634420 */  lw        $v1, %lo(gCurrentDynamicEntityListPtr)($v1)
/* B9B88 80123488 00101080 */  sll       $v0, $s0, 2
/* B9B8C 8012348C 00431021 */  addu      $v0, $v0, $v1
/* B9B90 80123490 8C430000 */  lw        $v1, ($v0)
/* B9B94 80123494 5060000B */  beql      $v1, $zero, .L801234C4
/* B9B98 80123498 26100001 */   addiu    $s0, $s0, 1
/* B9B9C 8012349C 8C640000 */  lw        $a0, ($v1)
/* B9BA0 801234A0 30820002 */  andi      $v0, $a0, 2
/* B9BA4 801234A4 14400007 */  bnez      $v0, .L801234C4
/* B9BA8 801234A8 26100001 */   addiu    $s0, $s0, 1
/* B9BAC 801234AC 30820004 */  andi      $v0, $a0, 4
/* B9BB0 801234B0 14400004 */  bnez      $v0, .L801234C4
/* B9BB4 801234B4 00000000 */   nop      
/* B9BB8 801234B8 8C620008 */  lw        $v0, 8($v1)
/* B9BBC 801234BC 0040F809 */  jalr      $v0
/* B9BC0 801234C0 00000000 */   nop      
.L801234C4:
/* B9BC4 801234C4 2A020010 */  slti      $v0, $s0, 0x10
/* B9BC8 801234C8 1440FFED */  bnez      $v0, .L80123480
/* B9BCC 801234CC 00000000 */   nop      
/* B9BD0 801234D0 8FBF0014 */  lw        $ra, 0x14($sp)
/* B9BD4 801234D4 8FB00010 */  lw        $s0, 0x10($sp)
/* B9BD8 801234D8 03E00008 */  jr        $ra
/* B9BDC 801234DC 27BD0018 */   addiu    $sp, $sp, 0x18
