.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel si_handle_end_loop
/* E93F8 802C4A48 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* E93FC 802C4A4C AFB10014 */  sw        $s1, 0x14($sp)
/* E9400 802C4A50 0080882D */  daddu     $s1, $a0, $zero
/* E9404 802C4A54 AFBF001C */  sw        $ra, 0x1c($sp)
/* E9408 802C4A58 AFB20018 */  sw        $s2, 0x18($sp)
/* E940C 802C4A5C AFB00010 */  sw        $s0, 0x10($sp)
/* E9410 802C4A60 82320006 */  lb        $s2, 6($s1)
/* E9414 802C4A64 06410003 */  bgez      $s2, .L802C4A74
/* E9418 802C4A68 00121080 */   sll      $v0, $s2, 2
.L802C4A6C:
/* E941C 802C4A6C 080B129B */  j         .L802C4A6C
/* E9420 802C4A70 00000000 */   nop      
.L802C4A74:
/* E9424 802C4A74 02221821 */  addu      $v1, $s1, $v0
/* E9428 802C4A78 8C7000F0 */  lw        $s0, 0xf0($v1)
/* E942C 802C4A7C 16000004 */  bnez      $s0, .L802C4A90
/* E9430 802C4A80 3C02FF67 */   lui      $v0, 0xff67
/* E9434 802C4A84 8C6300D0 */  lw        $v1, 0xd0($v1)
/* E9438 802C4A88 080B12BC */  j         .L802C4AF0
/* E943C 802C4A8C 24020002 */   addiu    $v0, $zero, 2
.L802C4A90:
/* E9440 802C4A90 34426980 */  ori       $v0, $v0, 0x6980
/* E9444 802C4A94 0202102A */  slt       $v0, $s0, $v0
/* E9448 802C4A98 14400004 */  bnez      $v0, .L802C4AAC
/* E944C 802C4A9C 0220202D */   daddu    $a0, $s1, $zero
/* E9450 802C4AA0 2610FFFF */  addiu     $s0, $s0, -1
/* E9454 802C4AA4 080B12B2 */  j         .L802C4AC8
/* E9458 802C4AA8 AC7000F0 */   sw       $s0, 0xf0($v1)
.L802C4AAC:
/* E945C 802C4AAC 0C0B1EAF */  jal       get_variable
/* E9460 802C4AB0 0200282D */   daddu    $a1, $s0, $zero
/* E9464 802C4AB4 0220202D */  daddu     $a0, $s1, $zero
/* E9468 802C4AB8 0200282D */  daddu     $a1, $s0, $zero
/* E946C 802C4ABC 2450FFFF */  addiu     $s0, $v0, -1
/* E9470 802C4AC0 0C0B2026 */  jal       set_variable
/* E9474 802C4AC4 0200302D */   daddu    $a2, $s0, $zero
.L802C4AC8:
/* E9478 802C4AC8 16000006 */  bnez      $s0, .L802C4AE4
/* E947C 802C4ACC 00121080 */   sll      $v0, $s2, 2
/* E9480 802C4AD0 92230006 */  lbu       $v1, 6($s1)
/* E9484 802C4AD4 24020002 */  addiu     $v0, $zero, 2
/* E9488 802C4AD8 2463FFFF */  addiu     $v1, $v1, -1
/* E948C 802C4ADC 080B12BD */  j         .L802C4AF4
/* E9490 802C4AE0 A2230006 */   sb       $v1, 6($s1)
.L802C4AE4:
/* E9494 802C4AE4 02221021 */  addu      $v0, $s1, $v0
/* E9498 802C4AE8 8C4300D0 */  lw        $v1, 0xd0($v0)
/* E949C 802C4AEC 24020002 */  addiu     $v0, $zero, 2
.L802C4AF0:
/* E94A0 802C4AF0 AE230008 */  sw        $v1, 8($s1)
.L802C4AF4:
/* E94A4 802C4AF4 8FBF001C */  lw        $ra, 0x1c($sp)
/* E94A8 802C4AF8 8FB20018 */  lw        $s2, 0x18($sp)
/* E94AC 802C4AFC 8FB10014 */  lw        $s1, 0x14($sp)
/* E94B0 802C4B00 8FB00010 */  lw        $s0, 0x10($sp)
/* E94B4 802C4B04 03E00008 */  jr        $ra
/* E94B8 802C4B08 27BD0020 */   addiu    $sp, $sp, 0x20
