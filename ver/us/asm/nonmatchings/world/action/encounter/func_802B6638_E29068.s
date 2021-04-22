.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802B6638_E29068
/* E29068 802B6638 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* E2906C 802B663C AFB00010 */  sw        $s0, 0x10($sp)
/* E29070 802B6640 3C108011 */  lui       $s0, %hi(gPlayerStatus)
/* E29074 802B6644 2610EFC8 */  addiu     $s0, $s0, %lo(gPlayerStatus)
/* E29078 802B6648 AFBF0014 */  sw        $ra, 0x14($sp)
/* E2907C 802B664C 8E030000 */  lw        $v1, ($s0)
/* E29080 802B6650 04610023 */  bgez      $v1, .L802B66E0
/* E29084 802B6654 3C027FFF */   lui      $v0, 0x7fff
/* E29088 802B6658 3442FFFF */  ori       $v0, $v0, 0xffff
/* E2908C 802B665C 8E040004 */  lw        $a0, 4($s0)
/* E29090 802B6660 00621024 */  and       $v0, $v1, $v0
/* E29094 802B6664 AE020000 */  sw        $v0, ($s0)
/* E29098 802B6668 AE000054 */  sw        $zero, 0x54($s0)
/* E2909C 802B666C 30821000 */  andi      $v0, $a0, 0x1000
/* E290A0 802B6670 14400006 */  bnez      $v0, .L802B668C
/* E290A4 802B6674 AE000060 */   sw       $zero, 0x60($s0)
/* E290A8 802B6678 3C040008 */  lui       $a0, 8
/* E290AC 802B667C 0C037FDE */  jal       func_800DFF78
/* E290B0 802B6680 34840007 */   ori      $a0, $a0, 7
/* E290B4 802B6684 080AD9B7 */  j         .L802B66DC
/* E290B8 802B6688 2402001E */   addiu    $v0, $zero, 0x1e
.L802B668C:
/* E290BC 802B668C 820200C4 */  lb        $v0, 0xc4($s0)
/* E290C0 802B6690 14400012 */  bnez      $v0, .L802B66DC
/* E290C4 802B6694 2402001E */   addiu    $v0, $zero, 0x1e
/* E290C8 802B6698 30822000 */  andi      $v0, $a0, 0x2000
/* E290CC 802B669C 14400005 */  bnez      $v0, .L802B66B4
/* E290D0 802B66A0 00000000 */   nop
/* E290D4 802B66A4 0C037FDE */  jal       func_800DFF78
/* E290D8 802B66A8 3C04000C */   lui      $a0, 0xc
/* E290DC 802B66AC 080AD9B7 */  j         .L802B66DC
/* E290E0 802B66B0 2402001E */   addiu    $v0, $zero, 0x1e
.L802B66B4:
/* E290E4 802B66B4 8203000C */  lb        $v1, 0xc($s0)
/* E290E8 802B66B8 00031040 */  sll       $v0, $v1, 1
/* E290EC 802B66BC 00431021 */  addu      $v0, $v0, $v1
/* E290F0 802B66C0 000210C0 */  sll       $v0, $v0, 3
/* E290F4 802B66C4 3C04800F */  lui       $a0, %hi(D_800F7C28)
/* E290F8 802B66C8 00822021 */  addu      $a0, $a0, $v0
/* E290FC 802B66CC 8C847C28 */  lw        $a0, %lo(D_800F7C28)($a0)
/* E29100 802B66D0 0C0398DB */  jal       func_800E636C
/* E29104 802B66D4 00000000 */   nop
/* E29108 802B66D8 2402001E */  addiu     $v0, $zero, 0x1e
.L802B66DC:
/* E2910C 802B66DC A6020008 */  sh        $v0, 8($s0)
.L802B66E0:
/* E29110 802B66E0 8E040004 */  lw        $a0, 4($s0)
/* E29114 802B66E4 30821000 */  andi      $v0, $a0, 0x1000
/* E29118 802B66E8 10400019 */  beqz      $v0, .L802B6750
/* E2911C 802B66EC 00000000 */   nop
/* E29120 802B66F0 86020008 */  lh        $v0, 8($s0)
/* E29124 802B66F4 96030008 */  lhu       $v1, 8($s0)
/* E29128 802B66F8 10400003 */  beqz      $v0, .L802B6708
/* E2912C 802B66FC 2462FFFF */   addiu    $v0, $v1, -1
/* E29130 802B6700 080AD9D4 */  j         .L802B6750
/* E29134 802B6704 A6020008 */   sh       $v0, 8($s0)
.L802B6708:
/* E29138 802B6708 820200C4 */  lb        $v0, 0xc4($s0)
/* E2913C 802B670C 14400010 */  bnez      $v0, .L802B6750
/* E29140 802B6710 30822000 */   andi     $v0, $a0, 0x2000
/* E29144 802B6714 14400005 */  bnez      $v0, .L802B672C
/* E29148 802B6718 3C04000A */   lui      $a0, 0xa
/* E2914C 802B671C 0C037FDE */  jal       func_800DFF78
/* E29150 802B6720 34840001 */   ori      $a0, $a0, 1
/* E29154 802B6724 080AD9D4 */  j         .L802B6750
/* E29158 802B6728 00000000 */   nop
.L802B672C:
/* E2915C 802B672C 8203000C */  lb        $v1, 0xc($s0)
/* E29160 802B6730 00031040 */  sll       $v0, $v1, 1
/* E29164 802B6734 00431021 */  addu      $v0, $v0, $v1
/* E29168 802B6738 000210C0 */  sll       $v0, $v0, 3
/* E2916C 802B673C 3C04800F */  lui       $a0, %hi(world_actions_peachDisguises)
/* E29170 802B6740 00822021 */  addu      $a0, $a0, $v0
/* E29174 802B6744 8C847C1C */  lw        $a0, %lo(world_actions_peachDisguises)($a0)
/* E29178 802B6748 0C0398DB */  jal       func_800E636C
/* E2917C 802B674C 00000000 */   nop
.L802B6750:
/* E29180 802B6750 8FBF0014 */  lw        $ra, 0x14($sp)
/* E29184 802B6754 8FB00010 */  lw        $s0, 0x10($sp)
/* E29188 802B6758 03E00008 */  jr        $ra
/* E2918C 802B675C 27BD0018 */   addiu    $sp, $sp, 0x18
