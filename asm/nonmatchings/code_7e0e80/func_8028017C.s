.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8028017C
/* 7E0FFC 8028017C 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 7E1000 80280180 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 7E1004 80280184 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 7E1008 80280188 AFBF0018 */  sw        $ra, 0x18($sp)
/* 7E100C 8028018C AFB10014 */  sw        $s1, 0x14($sp)
/* 7E1010 80280190 AFB00010 */  sw        $s0, 0x10($sp)
/* 7E1014 80280194 8C510144 */  lw        $s1, 0x144($v0)
/* 7E1018 80280198 24050001 */  addiu     $a1, $zero, 1
/* 7E101C 8028019C 8E220010 */  lw        $v0, 0x10($s1)
/* 7E1020 802801A0 8C430018 */  lw        $v1, 0x18($v0)
/* 7E1024 802801A4 00041080 */  sll       $v0, $a0, 2
/* 7E1028 802801A8 3C048028 */  lui       $a0, 0x8028
/* 7E102C 802801AC 24843EB0 */  addiu     $a0, $a0, 0x3eb0
/* 7E1030 802801B0 00431021 */  addu      $v0, $v0, $v1
/* 7E1034 802801B4 8C500000 */  lw        $s0, ($v0)
/* 7E1038 802801B8 0C0B0CF8 */  jal       start_script
/* 7E103C 802801BC 0000302D */   daddu    $a2, $zero, $zero
/* 7E1040 802801C0 0040202D */  daddu     $a0, $v0, $zero
/* 7E1044 802801C4 AC900084 */  sw        $s0, 0x84($a0)
/* 7E1048 802801C8 8E220010 */  lw        $v0, 0x10($s1)
/* 7E104C 802801CC 8C420000 */  lw        $v0, ($v0)
/* 7E1050 802801D0 AC820088 */  sw        $v0, 0x88($a0)
/* 7E1054 802801D4 8E220010 */  lw        $v0, 0x10($s1)
/* 7E1058 802801D8 8C420008 */  lw        $v0, 8($v0)
/* 7E105C 802801DC AC82008C */  sw        $v0, 0x8c($a0)
/* 7E1060 802801E0 8E230010 */  lw        $v1, 0x10($s1)
/* 7E1064 802801E4 8C820144 */  lw        $v0, 0x144($a0)
/* 7E1068 802801E8 8C630004 */  lw        $v1, 4($v1)
/* 7E106C 802801EC AC830090 */  sw        $v1, 0x90($a0)
/* 7E1070 802801F0 AC83007C */  sw        $v1, 0x7c($a0)
/* 7E1074 802801F4 8FBF0018 */  lw        $ra, 0x18($sp)
/* 7E1078 802801F8 8FB10014 */  lw        $s1, 0x14($sp)
/* 7E107C 802801FC 8FB00010 */  lw        $s0, 0x10($sp)
/* 7E1080 80280200 03E00008 */  jr        $ra
/* 7E1084 80280204 27BD0020 */   addiu    $sp, $sp, 0x20
