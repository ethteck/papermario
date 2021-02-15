.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A1000_77F240
/* 77F240 802A1000 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 77F244 802A1004 AFB00010 */  sw        $s0, 0x10($sp)
/* 77F248 802A1008 0080802D */  daddu     $s0, $a0, $zero
/* 77F24C 802A100C 2402000F */  addiu     $v0, $zero, 0xf
/* 77F250 802A1010 3C03800E */  lui       $v1, %hi(gBattleStatus+0x83)
/* 77F254 802A1014 8063C0F3 */  lb        $v1, %lo(gBattleStatus+0x83)($v1)
/* 77F258 802A1018 24040015 */  addiu     $a0, $zero, 0x15
/* 77F25C 802A101C AFBF0014 */  sw        $ra, 0x14($sp)
/* 77F260 802A1020 AE020088 */  sw        $v0, 0x88($s0)
/* 77F264 802A1024 0C03A752 */  jal       is_ability_active
/* 77F268 802A1028 AE030084 */   sw       $v1, 0x84($s0)
/* 77F26C 802A102C 10400003 */  beqz      $v0, .L802A103C
/* 77F270 802A1030 24020028 */   addiu    $v0, $zero, 0x28
/* 77F274 802A1034 AE000084 */  sw        $zero, 0x84($s0)
/* 77F278 802A1038 AE020088 */  sw        $v0, 0x88($s0)
.L802A103C:
/* 77F27C 802A103C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 77F280 802A1040 8FB00010 */  lw        $s0, 0x10($sp)
/* 77F284 802A1044 24020002 */  addiu     $v0, $zero, 2
/* 77F288 802A1048 03E00008 */  jr        $ra
/* 77F28C 802A104C 27BD0018 */   addiu    $sp, $sp, 0x18
