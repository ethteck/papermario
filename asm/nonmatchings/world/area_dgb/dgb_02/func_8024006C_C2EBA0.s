.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024006C_C2EC0C
/* C2EC0C 8024006C 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* C2EC10 80240070 AFB10014 */  sw        $s1, 0x14($sp)
/* C2EC14 80240074 0080882D */  daddu     $s1, $a0, $zero
/* C2EC18 80240078 AFBF0018 */  sw        $ra, 0x18($sp)
/* C2EC1C 8024007C AFB00010 */  sw        $s0, 0x10($sp)
/* C2EC20 80240080 8E300148 */  lw        $s0, 0x148($s1)
/* C2EC24 80240084 0C00EABB */  jal       get_npc_unsafe
/* C2EC28 80240088 86040008 */   lh       $a0, 8($s0)
/* C2EC2C 8024008C 0040202D */  daddu     $a0, $v0, $zero
/* C2EC30 80240090 9482008E */  lhu       $v0, 0x8e($a0)
/* C2EC34 80240094 2442FFFF */  addiu     $v0, $v0, -1
/* C2EC38 80240098 A482008E */  sh        $v0, 0x8e($a0)
/* C2EC3C 8024009C 00021400 */  sll       $v0, $v0, 0x10
/* C2EC40 802400A0 1C400009 */  bgtz      $v0, .L802400C8
/* C2EC44 802400A4 24020003 */   addiu    $v0, $zero, 3
/* C2EC48 802400A8 96030076 */  lhu       $v1, 0x76($s0)
/* C2EC4C 802400AC AE02006C */  sw        $v0, 0x6c($s0)
/* C2EC50 802400B0 A483008E */  sh        $v1, 0x8e($a0)
/* C2EC54 802400B4 8E0200CC */  lw        $v0, 0xcc($s0)
/* C2EC58 802400B8 8C420024 */  lw        $v0, 0x24($v0)
/* C2EC5C 802400BC AC820028 */  sw        $v0, 0x28($a0)
/* C2EC60 802400C0 24020020 */  addiu     $v0, $zero, 0x20
/* C2EC64 802400C4 AE220070 */  sw        $v0, 0x70($s1)
.L802400C8:
/* C2EC68 802400C8 8FBF0018 */  lw        $ra, 0x18($sp)
/* C2EC6C 802400CC 8FB10014 */  lw        $s1, 0x14($sp)
/* C2EC70 802400D0 8FB00010 */  lw        $s0, 0x10($sp)
/* C2EC74 802400D4 03E00008 */  jr        $ra
/* C2EC78 802400D8 27BD0020 */   addiu    $sp, $sp, 0x20
