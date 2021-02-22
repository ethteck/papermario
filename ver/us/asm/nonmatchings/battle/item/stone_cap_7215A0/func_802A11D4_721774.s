.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A11D4_721774
/* 721774 802A11D4 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 721778 802A11D8 3C03800E */  lui       $v1, %hi(gBattleStatus)
/* 72177C 802A11DC 2463C070 */  addiu     $v1, $v1, %lo(gBattleStatus)
/* 721780 802A11E0 AFBF0014 */  sw        $ra, 0x14($sp)
/* 721784 802A11E4 AFB00010 */  sw        $s0, 0x10($sp)
/* 721788 802A11E8 8462017A */  lh        $v0, 0x17a($v1)
/* 72178C 802A11EC 8C6400D8 */  lw        $a0, 0xd8($v1)
/* 721790 802A11F0 00021140 */  sll       $v0, $v0, 5
/* 721794 802A11F4 3C108008 */  lui       $s0, %hi(gItemTable+0xC)
/* 721798 802A11F8 02028021 */  addu      $s0, $s0, $v0
/* 72179C 802A11FC 861078EC */  lh        $s0, %lo(gItemTable+0xC)($s0)
/* 7217A0 802A1200 0C099CAB */  jal       heroes_is_ability_active
/* 7217A4 802A1204 2405001D */   addiu    $a1, $zero, 0x1d
/* 7217A8 802A1208 10400007 */  beqz      $v0, .L802A1228
/* 7217AC 802A120C 00000000 */   nop
/* 7217B0 802A1210 1A000005 */  blez      $s0, .L802A1228
/* 7217B4 802A1214 00000000 */   nop
/* 7217B8 802A1218 3C04802A */  lui       $a0, %hi(battle_item_coconut_coconutDL)
/* 7217BC 802A121C 8C841A60 */  lw        $a0, %lo(battle_item_coconut_coconutDL)($a0)
/* 7217C0 802A1220 0C05123D */  jal       free_icon
/* 7217C4 802A1224 00000000 */   nop
.L802A1228:
/* 7217C8 802A1228 8FBF0014 */  lw        $ra, 0x14($sp)
/* 7217CC 802A122C 8FB00010 */  lw        $s0, 0x10($sp)
/* 7217D0 802A1230 24020002 */  addiu     $v0, $zero, 2
/* 7217D4 802A1234 03E00008 */  jr        $ra
/* 7217D8 802A1238 27BD0018 */   addiu    $sp, $sp, 0x18
