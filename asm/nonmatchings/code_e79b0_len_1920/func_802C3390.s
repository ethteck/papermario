.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802C3390
/* E7D40 802C3390 3C03800A */  lui       $v1, %hi(D_8009A5D8)
/* E7D44 802C3394 8C63A5D8 */  lw        $v1, %lo(D_8009A5D8)($v1)
/* E7D48 802C3398 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* E7D4C 802C339C 2C620005 */  sltiu     $v0, $v1, 5
/* E7D50 802C33A0 1040000C */  beqz      $v0, .L802C33D4
/* E7D54 802C33A4 AFBF0010 */   sw       $ra, 0x10($sp)
/* E7D58 802C33A8 00031080 */  sll       $v0, $v1, 2
/* E7D5C 802C33AC 3C01802E */  lui       $at, 0x802e
/* E7D60 802C33B0 00220821 */  addu      $at, $at, $v0
/* E7D64 802C33B4 8C229D80 */  lw        $v0, -0x6280($at)
/* E7D68 802C33B8 00400008 */  jr        $v0
/* E7D6C 802C33BC 00000000 */   nop      
/* E7D70 802C33C0 080B0CF3 */  j         .L802C33CC
/* E7D74 802C33C4 24040001 */   addiu    $a0, $zero, 1
/* E7D78 802C33C8 24040002 */  addiu     $a0, $zero, 2
.L802C33CC:
/* E7D7C 802C33CC 0C0B117A */  jal       suspend_all_group
/* E7D80 802C33D0 00000000 */   nop      
.L802C33D4:
/* E7D84 802C33D4 8FBF0010 */  lw        $ra, 0x10($sp)
/* E7D88 802C33D8 03E00008 */  jr        $ra
/* E7D8C 802C33DC 27BD0018 */   addiu    $sp, $sp, 0x18
