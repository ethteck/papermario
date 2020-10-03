.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel SwitchMessage
/* F54AC 802D0AFC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* F54B0 802D0B00 AFB00010 */  sw        $s0, 0x10($sp)
/* F54B4 802D0B04 0080802D */  daddu     $s0, $a0, $zero
/* F54B8 802D0B08 AFBF0014 */  sw        $ra, 0x14($sp)
/* F54BC 802D0B0C 10A00007 */  beqz      $a1, .L802D0B2C
/* F54C0 802D0B10 8E02000C */   lw       $v0, 0xc($s0)
/* F54C4 802D0B14 0C0B1EAF */  jal       get_variable
/* F54C8 802D0B18 8C450000 */   lw       $a1, ($v0)
/* F54CC 802D0B1C 3C05802E */  lui       $a1, %hi(gCurrentPrintContext)
/* F54D0 802D0B20 8CA5B260 */  lw        $a1, %lo(gCurrentPrintContext)($a1)
/* F54D4 802D0B24 0C04969A */  jal       load_message_to_printer
/* F54D8 802D0B28 0040202D */   daddu    $a0, $v0, $zero
.L802D0B2C:
/* F54DC 802D0B2C 3C04802E */  lui       $a0, %hi(gCurrentPrintContext)
/* F54E0 802D0B30 8C84B260 */  lw        $a0, %lo(gCurrentPrintContext)($a0)
/* F54E4 802D0B34 8C8204FC */  lw        $v0, 0x4fc($a0)
/* F54E8 802D0B38 30420040 */  andi      $v0, $v0, 0x40
/* F54EC 802D0B3C 14400007 */  bnez      $v0, .L802D0B5C
/* F54F0 802D0B40 24020001 */   addiu    $v0, $zero, 1
/* F54F4 802D0B44 3C03802E */  lui       $v1, %hi(D_802DB264)
/* F54F8 802D0B48 8C63B264 */  lw        $v1, %lo(D_802DB264)($v1)
/* F54FC 802D0B4C 54620003 */  bnel      $v1, $v0, .L802D0B5C
/* F5500 802D0B50 0000102D */   daddu    $v0, $zero, $zero
/* F5504 802D0B54 908304E8 */  lbu       $v1, 0x4e8($a0)
/* F5508 802D0B58 AE030084 */  sw        $v1, 0x84($s0)
.L802D0B5C:
/* F550C 802D0B5C 8FBF0014 */  lw        $ra, 0x14($sp)
/* F5510 802D0B60 8FB00010 */  lw        $s0, 0x10($sp)
/* F5514 802D0B64 03E00008 */  jr        $ra
/* F5518 802D0B68 27BD0018 */   addiu    $sp, $sp, 0x18
