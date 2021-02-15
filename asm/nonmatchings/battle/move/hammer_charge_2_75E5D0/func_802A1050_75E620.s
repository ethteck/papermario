.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A1050_75E620
/* 75E620 802A1050 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 75E624 802A1054 AFB00010 */  sw        $s0, 0x10($sp)
/* 75E628 802A1058 0080802D */  daddu     $s0, $a0, $zero
/* 75E62C 802A105C 24040016 */  addiu     $a0, $zero, 0x16
/* 75E630 802A1060 AFBF0014 */  sw        $ra, 0x14($sp)
/* 75E634 802A1064 0C03A752 */  jal       is_ability_active
/* 75E638 802A1068 AE000084 */   sw       $zero, 0x84($s0)
/* 75E63C 802A106C 10400002 */  beqz      $v0, .L802A1078
/* 75E640 802A1070 24020001 */   addiu    $v0, $zero, 1
/* 75E644 802A1074 AE020084 */  sw        $v0, 0x84($s0)
.L802A1078:
/* 75E648 802A1078 3C02800E */  lui       $v0, %hi(gBattleStatus)
/* 75E64C 802A107C 8C42C070 */  lw        $v0, %lo(gBattleStatus)($v0)
/* 75E650 802A1080 30421000 */  andi      $v0, $v0, 0x1000
/* 75E654 802A1084 10400002 */  beqz      $v0, .L802A1090
/* 75E658 802A1088 24020001 */   addiu    $v0, $zero, 1
/* 75E65C 802A108C AE020084 */  sw        $v0, 0x84($s0)
.L802A1090:
/* 75E660 802A1090 8FBF0014 */  lw        $ra, 0x14($sp)
/* 75E664 802A1094 8FB00010 */  lw        $s0, 0x10($sp)
/* 75E668 802A1098 24020002 */  addiu     $v0, $zero, 2
/* 75E66C 802A109C 03E00008 */  jr        $ra
/* 75E670 802A10A0 27BD0018 */   addiu    $sp, $sp, 0x18
