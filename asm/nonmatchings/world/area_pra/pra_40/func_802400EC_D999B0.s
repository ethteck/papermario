.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802400EC_D99A9C
/* D99A9C 802400EC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* D99AA0 802400F0 AFB00010 */  sw        $s0, 0x10($sp)
/* D99AA4 802400F4 0080802D */  daddu     $s0, $a0, $zero
/* D99AA8 802400F8 3C058024 */  lui       $a1, 0x8024
/* D99AAC 802400FC 24A50128 */  addiu     $a1, $a1, 0x128
/* D99AB0 80240100 AFBF0014 */  sw        $ra, 0x14($sp)
/* D99AB4 80240104 0C048C56 */  jal       bind_dynamic_entity_3
/* D99AB8 80240108 0000202D */   daddu    $a0, $zero, $zero
/* D99ABC 8024010C 8E03013C */  lw        $v1, 0x13c($s0)
/* D99AC0 80240110 AC620000 */  sw        $v0, ($v1)
/* D99AC4 80240114 8FBF0014 */  lw        $ra, 0x14($sp)
/* D99AC8 80240118 8FB00010 */  lw        $s0, 0x10($sp)
/* D99ACC 8024011C 24020002 */  addiu     $v0, $zero, 2
/* D99AD0 80240120 03E00008 */  jr        $ra
/* D99AD4 80240124 27BD0018 */   addiu    $sp, $sp, 0x18
