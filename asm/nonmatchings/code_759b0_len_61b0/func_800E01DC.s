.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800E01DC
/* 7968C 800E01DC 3C048011 */  lui       $a0, %hi(gPlayerStatus)
/* 79690 800E01E0 2484EFC8 */  addiu     $a0, $a0, %lo(gPlayerStatus)
/* 79694 800E01E4 8C820004 */  lw        $v0, 4($a0)
/* 79698 800E01E8 30420010 */  andi      $v0, $v0, 0x10
/* 7969C 800E01EC 10400004 */  beqz      $v0, .L800E0200
/* 796A0 800E01F0 3C030800 */   lui      $v1, 0x800
/* 796A4 800E01F4 8C820000 */  lw        $v0, ($a0)
/* 796A8 800E01F8 00431025 */  or        $v0, $v0, $v1
/* 796AC 800E01FC AC820000 */  sw        $v0, ($a0)
.L800E0200:
/* 796B0 800E0200 03E00008 */  jr        $ra
/* 796B4 800E0204 00000000 */   nop      
