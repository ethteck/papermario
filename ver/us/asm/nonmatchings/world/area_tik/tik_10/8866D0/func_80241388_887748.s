.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel tik_10_UnkFunc40
/* 887748 80241388 3C038011 */  lui       $v1, %hi(D_8010EBB0)
/* 88774C 8024138C 2463EBB0 */  addiu     $v1, $v1, %lo(D_8010EBB0)
/* 887750 80241390 AC800084 */  sw        $zero, 0x84($a0)
/* 887754 80241394 80620000 */  lb        $v0, ($v1)
/* 887758 80241398 10400005 */  beqz      $v0, .L802413B0
/* 88775C 8024139C 24020003 */   addiu    $v0, $zero, 3
/* 887760 802413A0 80630003 */  lb        $v1, 3($v1)
/* 887764 802413A4 14620002 */  bne       $v1, $v0, .L802413B0
/* 887768 802413A8 24020001 */   addiu    $v0, $zero, 1
/* 88776C 802413AC AC820084 */  sw        $v0, 0x84($a0)
.L802413B0:
/* 887770 802413B0 03E00008 */  jr        $ra
/* 887774 802413B4 24020002 */   addiu    $v0, $zero, 2
/* 887778 802413B8 00000000 */  nop
/* 88777C 802413BC 00000000 */  nop
