.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel delete_actor
/* 16F49C 80240BBC 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 16F4A0 80240BC0 AFB10024 */  sw        $s1, 0x24($sp)
/* 16F4A4 80240BC4 0080882D */  daddu     $s1, $a0, $zero
/* 16F4A8 80240BC8 AFB00020 */  sw        $s0, 0x20($sp)
/* 16F4AC 80240BCC 0000802D */  daddu     $s0, $zero, $zero
/* 16F4B0 80240BD0 AFBF002C */  sw        $ra, 0x2c($sp)
/* 16F4B4 80240BD4 AFB20028 */  sw        $s2, 0x28($sp)
/* 16F4B8 80240BD8 0220202D */  daddu     $a0, $s1, $zero
.L80240BDC:
/* 16F4BC 80240BDC 0C099C8D */  jal       remove_actor_decoration
/* 16F4C0 80240BE0 0200282D */   daddu    $a1, $s0, $zero
/* 16F4C4 80240BE4 26100001 */  addiu     $s0, $s0, 1
/* 16F4C8 80240BE8 2A020002 */  slti      $v0, $s0, 2
/* 16F4CC 80240BEC 1440FFFB */  bnez      $v0, .L80240BDC
/* 16F4D0 80240BF0 0220202D */   daddu    $a0, $s1, $zero
/* 16F4D4 80240BF4 8E2201D0 */  lw        $v0, 0x1d0($s1)
/* 16F4D8 80240BF8 10400003 */  beqz      $v0, .L80240C08
/* 16F4DC 80240BFC 00000000 */   nop      
/* 16F4E0 80240C00 0C0B102B */  jal       kill_script_by_ID
/* 16F4E4 80240C04 8E2401E0 */   lw       $a0, 0x1e0($s1)
.L80240C08:
/* 16F4E8 80240C08 8E2201D8 */  lw        $v0, 0x1d8($s1)
/* 16F4EC 80240C0C 10400003 */  beqz      $v0, .L80240C1C
/* 16F4F0 80240C10 00000000 */   nop      
/* 16F4F4 80240C14 0C0B102B */  jal       kill_script_by_ID
/* 16F4F8 80240C18 8E2401E8 */   lw       $a0, 0x1e8($s1)
.L80240C1C:
/* 16F4FC 80240C1C 8E2201D4 */  lw        $v0, 0x1d4($s1)
/* 16F500 80240C20 10400005 */  beqz      $v0, .L80240C38
/* 16F504 80240C24 0220202D */   daddu    $a0, $s1, $zero
/* 16F508 80240C28 8E2401E4 */  lw        $a0, 0x1e4($s1)
/* 16F50C 80240C2C 0C0B102B */  jal       kill_script_by_ID
/* 16F510 80240C30 00000000 */   nop      
/* 16F514 80240C34 0220202D */  daddu     $a0, $s1, $zero
.L80240C38:
/* 16F518 80240C38 0C099BBA */  jal       func_80266EE8
/* 16F51C 80240C3C 0000282D */   daddu    $a1, $zero, $zero
/* 16F520 80240C40 8E3001F4 */  lw        $s0, 0x1f4($s1)
/* 16F524 80240C44 1200002B */  beqz      $s0, .L80240CF4
/* 16F528 80240C48 00000000 */   nop      
/* 16F52C 80240C4C 3C128000 */  lui       $s2, 0x8000
.L80240C50:
/* 16F530 80240C50 8E020000 */  lw        $v0, ($s0)
/* 16F534 80240C54 30420004 */  andi      $v0, $v0, 4
/* 16F538 80240C58 14400003 */  bnez      $v0, .L80240C68
/* 16F53C 80240C5C 00000000 */   nop      
/* 16F540 80240C60 0C0448CA */  jal       func_80112328
/* 16F544 80240C64 8E04009C */   lw       $a0, 0x9c($s0)
.L80240C68:
/* 16F548 80240C68 8E020094 */  lw        $v0, 0x94($s0)
/* 16F54C 80240C6C 1040001C */  beqz      $v0, .L80240CE0
/* 16F550 80240C70 0000282D */   daddu    $a1, $zero, $zero
/* 16F554 80240C74 00A0302D */  daddu     $a2, $a1, $zero
/* 16F558 80240C78 AFA00010 */  sw        $zero, 0x10($sp)
/* 16F55C 80240C7C AFA00014 */  sw        $zero, 0x14($sp)
/* 16F560 80240C80 AFA00018 */  sw        $zero, 0x18($sp)
/* 16F564 80240C84 8E040084 */  lw        $a0, 0x84($s0)
/* 16F568 80240C88 0C0B7A25 */  jal       func_802DE894
/* 16F56C 80240C8C 00A0382D */   daddu    $a3, $a1, $zero
/* 16F570 80240C90 8E040084 */  lw        $a0, 0x84($s0)
/* 16F574 80240C94 0C0B797A */  jal       func_802DE5E8
/* 16F578 80240C98 00000000 */   nop      
/* 16F57C 80240C9C 10400003 */  beqz      $v0, .L80240CAC
/* 16F580 80240CA0 00000000 */   nop      
.L80240CA4:
/* 16F584 80240CA4 08090329 */  j         .L80240CA4
/* 16F588 80240CA8 00000000 */   nop      
.L80240CAC:
/* 16F58C 80240CAC 8E020000 */  lw        $v0, ($s0)
/* 16F590 80240CB0 00521024 */  and       $v0, $v0, $s2
/* 16F594 80240CB4 14400003 */  bnez      $v0, .L80240CC4
/* 16F598 80240CB8 00000000 */   nop      
/* 16F59C 80240CBC 0C00AB4B */  jal       heap_free
/* 16F5A0 80240CC0 8E040010 */   lw       $a0, 0x10($s0)
.L80240CC4:
/* 16F5A4 80240CC4 8E020000 */  lw        $v0, ($s0)
/* 16F5A8 80240CC8 30420002 */  andi      $v0, $v0, 2
/* 16F5AC 80240CCC 14400005 */  bnez      $v0, .L80240CE4
/* 16F5B0 80240CD0 0200202D */   daddu    $a0, $s0, $zero
/* 16F5B4 80240CD4 8E0400C0 */  lw        $a0, 0xc0($s0)
/* 16F5B8 80240CD8 0C00AB4B */  jal       heap_free
/* 16F5BC 80240CDC 00000000 */   nop      
.L80240CE0:
/* 16F5C0 80240CE0 0200202D */  daddu     $a0, $s0, $zero
.L80240CE4:
/* 16F5C4 80240CE4 0C00AB4B */  jal       heap_free
/* 16F5C8 80240CE8 8C90000C */   lw       $s0, 0xc($a0)
/* 16F5CC 80240CEC 1600FFD8 */  bnez      $s0, .L80240C50
/* 16F5D0 80240CF0 00000000 */   nop      
.L80240CF4:
/* 16F5D4 80240CF4 0C0448CA */  jal       func_80112328
/* 16F5D8 80240CF8 8E24042C */   lw       $a0, 0x42c($s1)
/* 16F5DC 80240CFC 0C011DBD */  jal       func_800476F4
/* 16F5E0 80240D00 86240436 */   lh       $a0, 0x436($s1)
/* 16F5E4 80240D04 0C016914 */  jal       remove_effect
/* 16F5E8 80240D08 8E240440 */   lw       $a0, 0x440($s1)
/* 16F5EC 80240D0C 8E220200 */  lw        $v0, 0x200($s1)
/* 16F5F0 80240D10 10400003 */  beqz      $v0, .L80240D20
/* 16F5F4 80240D14 0000802D */   daddu    $s0, $zero, $zero
/* 16F5F8 80240D18 8C42000C */  lw        $v0, 0xc($v0)
/* 16F5FC 80240D1C AC400024 */  sw        $zero, 0x24($v0)
.L80240D20:
/* 16F600 80240D20 3C03800E */  lui       $v1, %hi(gBattleStatus)
/* 16F604 80240D24 2463C070 */  addiu     $v1, $v1, %lo(gBattleStatus)
.L80240D28:
/* 16F608 80240D28 8C6200E0 */  lw        $v0, 0xe0($v1)
/* 16F60C 80240D2C 14510003 */  bne       $v0, $s1, .L80240D3C
/* 16F610 80240D30 26100001 */   addiu    $s0, $s0, 1
/* 16F614 80240D34 08090352 */  j         .L80240D48
/* 16F618 80240D38 AC6000E0 */   sw       $zero, 0xe0($v1)
.L80240D3C:
/* 16F61C 80240D3C 2A020018 */  slti      $v0, $s0, 0x18
/* 16F620 80240D40 1440FFF9 */  bnez      $v0, .L80240D28
/* 16F624 80240D44 24630004 */   addiu    $v1, $v1, 4
.L80240D48:
/* 16F628 80240D48 0C00AB4B */  jal       heap_free
/* 16F62C 80240D4C 0220202D */   daddu    $a0, $s1, $zero
/* 16F630 80240D50 8FBF002C */  lw        $ra, 0x2c($sp)
/* 16F634 80240D54 8FB20028 */  lw        $s2, 0x28($sp)
/* 16F638 80240D58 8FB10024 */  lw        $s1, 0x24($sp)
/* 16F63C 80240D5C 8FB00020 */  lw        $s0, 0x20($sp)
/* 16F640 80240D60 03E00008 */  jr        $ra
/* 16F644 80240D64 27BD0030 */   addiu    $sp, $sp, 0x30
