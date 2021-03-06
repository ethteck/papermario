.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8004D1C0
/* 285C0 8004D1C0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 285C4 8004D1C4 AFB10014 */  sw        $s1, 0x14($sp)
/* 285C8 8004D1C8 0080882D */  daddu     $s1, $a0, $zero
/* 285CC 8004D1CC AFB3001C */  sw        $s3, 0x1c($sp)
/* 285D0 8004D1D0 0000982D */  daddu     $s3, $zero, $zero
/* 285D4 8004D1D4 2406FFFF */  addiu     $a2, $zero, -1
/* 285D8 8004D1D8 AFBF0020 */  sw        $ra, 0x20($sp)
/* 285DC 8004D1DC AFB20018 */  sw        $s2, 0x18($sp)
/* 285E0 8004D1E0 AFB00010 */  sw        $s0, 0x10($sp)
/* 285E4 8004D1E4 8E220014 */  lw        $v0, 0x14($s1)
/* 285E8 8004D1E8 92230258 */  lbu       $v1, 0x258($s1)
/* 285EC 8004D1EC 24420001 */  addiu     $v0, $v0, 1
/* 285F0 8004D1F0 1060008D */  beqz      $v1, .L8004D428
/* 285F4 8004D1F4 AE220014 */   sw       $v0, 0x14($s1)
/* 285F8 8004D1F8 2C620008 */  sltiu     $v0, $v1, 8
/* 285FC 8004D1FC 10400023 */  beqz      $v0, .L8004D28C
/* 28600 8004D200 0263102B */   sltu     $v0, $s3, $v1
/* 28604 8004D204 92240259 */  lbu       $a0, 0x259($s1)
/* 28608 8004D208 10400015 */  beqz      $v0, .L8004D260
/* 2860C 8004D20C 0260282D */   daddu    $a1, $s3, $zero
/* 28610 8004D210 0060382D */  daddu     $a3, $v1, $zero
/* 28614 8004D214 308200FF */  andi      $v0, $a0, 0xff
.L8004D218:
/* 28618 8004D218 00021080 */  sll       $v0, $v0, 2
/* 2861C 8004D21C 02221021 */  addu      $v0, $s1, $v0
/* 28620 8004D220 8C430238 */  lw        $v1, 0x238($v0)
/* 28624 8004D224 10600009 */  beqz      $v1, .L8004D24C
/* 28628 8004D228 2C620010 */   sltiu    $v0, $v1, 0x10
/* 2862C 8004D22C 10400003 */  beqz      $v0, .L8004D23C
/* 28630 8004D230 24840001 */   addiu    $a0, $a0, 1
/* 28634 8004D234 30660003 */  andi      $a2, $v1, 3
/* 28638 8004D238 00039882 */  srl       $s3, $v1, 2
.L8004D23C:
/* 2863C 8004D23C 308200FF */  andi      $v0, $a0, 0xff
/* 28640 8004D240 2C420008 */  sltiu     $v0, $v0, 8
/* 28644 8004D244 50400001 */  beql      $v0, $zero, .L8004D24C
/* 28648 8004D248 0000202D */   daddu    $a0, $zero, $zero
.L8004D24C:
/* 2864C 8004D24C 24A50001 */  addiu     $a1, $a1, 1
/* 28650 8004D250 30A200FF */  andi      $v0, $a1, 0xff
/* 28654 8004D254 0047102B */  sltu      $v0, $v0, $a3
/* 28658 8004D258 1440FFEF */  bnez      $v0, .L8004D218
/* 2865C 8004D25C 308200FF */   andi     $v0, $a0, 0xff
.L8004D260:
/* 28660 8004D260 9223025A */  lbu       $v1, 0x25a($s1)
/* 28664 8004D264 92220259 */  lbu       $v0, 0x259($s1)
/* 28668 8004D268 00622023 */  subu      $a0, $v1, $v0
/* 2866C 8004D26C 04820001 */  bltzl     $a0, .L8004D274
/* 28670 8004D270 24840008 */   addiu    $a0, $a0, 8
.L8004D274:
/* 28674 8004D274 92220258 */  lbu       $v0, 0x258($s1)
/* 28678 8004D278 9223025A */  lbu       $v1, 0x25a($s1)
/* 2867C 8004D27C 00441023 */  subu      $v0, $v0, $a0
/* 28680 8004D280 A2220258 */  sb        $v0, 0x258($s1)
/* 28684 8004D284 080134A4 */  j         .L8004D290
/* 28688 8004D288 A2230259 */   sb       $v1, 0x259($s1)
.L8004D28C:
/* 2868C 8004D28C A2200258 */  sb        $zero, 0x258($s1)
.L8004D290:
/* 28690 8004D290 2402FFFF */  addiu     $v0, $zero, -1
/* 28694 8004D294 10C20064 */  beq       $a2, $v0, .L8004D428
/* 28698 8004D298 00000000 */   nop
/* 2869C 8004D29C 10C00058 */  beqz      $a2, .L8004D400
/* 286A0 8004D2A0 00000000 */   nop
/* 286A4 8004D2A4 96220058 */  lhu       $v0, 0x58($s1)
/* 286A8 8004D2A8 10C2005F */  beq       $a2, $v0, .L8004D428
/* 286AC 8004D2AC 3C030002 */   lui      $v1, 2
/* 286B0 8004D2B0 3463625A */  ori       $v1, $v1, 0x625a
/* 286B4 8004D2B4 30C200FF */  andi      $v0, $a2, 0xff
/* 286B8 8004D2B8 A6220058 */  sh        $v0, 0x58($s1)
/* 286BC 8004D2BC A622005A */  sh        $v0, 0x5a($s1)
/* 286C0 8004D2C0 24020003 */  addiu     $v0, $zero, 3
/* 286C4 8004D2C4 A2220221 */  sb        $v0, 0x221($s1)
/* 286C8 8004D2C8 24020002 */  addiu     $v0, $zero, 2
/* 286CC 8004D2CC 14C20004 */  bne       $a2, $v0, .L8004D2E0
/* 286D0 8004D2D0 AE230008 */   sw       $v1, 8($s1)
/* 286D4 8004D2D4 8E220000 */  lw        $v0, ($s1)
/* 286D8 8004D2D8 080134BA */  j         .L8004D2E8
/* 286DC 8004D2DC 8C500060 */   lw       $s0, 0x60($v0)
.L8004D2E0:
/* 286E0 8004D2E0 8E220000 */  lw        $v0, ($s1)
/* 286E4 8004D2E4 8C50005C */  lw        $s0, 0x5c($v0)
.L8004D2E8:
/* 286E8 8004D2E8 8E220074 */  lw        $v0, 0x74($s1)
/* 286EC 8004D2EC 0220202D */  daddu     $a0, $s1, $zero
/* 286F0 8004D2F0 AE300064 */  sw        $s0, 0x64($s1)
/* 286F4 8004D2F4 90420000 */  lbu       $v0, ($v0)
/* 286F8 8004D2F8 3C050002 */  lui       $a1, 2
/* 286FC 8004D2FC 30420007 */  andi      $v0, $v0, 7
/* 28700 8004D300 3C068008 */  lui       $a2, %hi(D_800784E0)
/* 28704 8004D304 00C23021 */  addu      $a2, $a2, $v0
/* 28708 8004D308 90C684E0 */  lbu       $a2, %lo(D_800784E0)($a2)
/* 2870C 8004D30C 0C01394C */  jal       func_8004E530
/* 28710 8004D310 34A5625A */   ori      $a1, $a1, 0x625a
/* 28714 8004D314 26120010 */  addiu     $s2, $s0, 0x10
/* 28718 8004D318 00131040 */  sll       $v0, $s3, 1
/* 2871C 8004D31C 02421021 */  addu      $v0, $s2, $v0
/* 28720 8004D320 94420004 */  lhu       $v0, 4($v0)
/* 28724 8004D324 14400003 */  bnez      $v0, .L8004D334
/* 28728 8004D328 00021080 */   sll      $v0, $v0, 2
/* 2872C 8004D32C 96020014 */  lhu       $v0, 0x14($s0)
/* 28730 8004D330 00021080 */  sll       $v0, $v0, 2
.L8004D334:
/* 28734 8004D334 00501021 */  addu      $v0, $v0, $s0
/* 28738 8004D338 AE22006C */  sw        $v0, 0x6c($s1)
/* 2873C 8004D33C AE220068 */  sw        $v0, 0x68($s1)
/* 28740 8004D340 9602001C */  lhu       $v0, 0x1c($s0)
/* 28744 8004D344 10400020 */  beqz      $v0, .L8004D3C8
/* 28748 8004D348 00021080 */   sll      $v0, $v0, 2
/* 2874C 8004D34C 8E230064 */  lw        $v1, 0x64($s1)
/* 28750 8004D350 00431021 */  addu      $v0, $v0, $v1
/* 28754 8004D354 AE220078 */  sw        $v0, 0x78($s1)
/* 28758 8004D358 9202001F */  lbu       $v0, 0x1f($s0)
/* 2875C 8004D35C A222021C */  sb        $v0, 0x21c($s1)
/* 28760 8004D360 304200FF */  andi      $v0, $v0, 0xff
/* 28764 8004D364 1040000C */  beqz      $v0, .L8004D398
/* 28768 8004D368 0000182D */   daddu    $v1, $zero, $zero
/* 2876C 8004D36C 0220282D */  daddu     $a1, $s1, $zero
/* 28770 8004D370 0060202D */  daddu     $a0, $v1, $zero
.L8004D374:
/* 28774 8004D374 8E220078 */  lw        $v0, 0x78($s1)
/* 28778 8004D378 24630001 */  addiu     $v1, $v1, 1
/* 2877C 8004D37C 00441021 */  addu      $v0, $v0, $a0
/* 28780 8004D380 ACA20080 */  sw        $v0, 0x80($a1)
/* 28784 8004D384 24A50004 */  addiu     $a1, $a1, 4
/* 28788 8004D388 9222021C */  lbu       $v0, 0x21c($s1)
/* 2878C 8004D38C 0062102B */  sltu      $v0, $v1, $v0
/* 28790 8004D390 1440FFF8 */  bnez      $v0, .L8004D374
/* 28794 8004D394 2484000C */   addiu    $a0, $a0, 0xc
.L8004D398:
/* 28798 8004D398 2C62000C */  sltiu     $v0, $v1, 0xc
/* 2879C 8004D39C 1040000C */  beqz      $v0, .L8004D3D0
/* 287A0 8004D3A0 00031080 */   sll      $v0, $v1, 2
/* 287A4 8004D3A4 00512021 */  addu      $a0, $v0, $s1
.L8004D3A8:
/* 287A8 8004D3A8 8E220080 */  lw        $v0, 0x80($s1)
/* 287AC 8004D3AC 24630001 */  addiu     $v1, $v1, 1
/* 287B0 8004D3B0 AC820080 */  sw        $v0, 0x80($a0)
/* 287B4 8004D3B4 2C62000C */  sltiu     $v0, $v1, 0xc
/* 287B8 8004D3B8 1440FFFB */  bnez      $v0, .L8004D3A8
/* 287BC 8004D3BC 24840004 */   addiu    $a0, $a0, 4
/* 287C0 8004D3C0 080134F4 */  j         .L8004D3D0
/* 287C4 8004D3C4 00000000 */   nop
.L8004D3C8:
/* 287C8 8004D3C8 AE200078 */  sw        $zero, 0x78($s1)
/* 287CC 8004D3CC A220021C */  sb        $zero, 0x21c($s1)
.L8004D3D0:
/* 287D0 8004D3D0 96420010 */  lhu       $v0, 0x10($s2)
/* 287D4 8004D3D4 10400007 */  beqz      $v0, .L8004D3F4
/* 287D8 8004D3D8 00021080 */   sll      $v0, $v0, 2
/* 287DC 8004D3DC 8E230064 */  lw        $v1, 0x64($s1)
/* 287E0 8004D3E0 00431021 */  addu      $v0, $v0, $v1
/* 287E4 8004D3E4 AE22007C */  sw        $v0, 0x7c($s1)
/* 287E8 8004D3E8 92420013 */  lbu       $v0, 0x13($s2)
/* 287EC 8004D3EC 0801350A */  j         .L8004D428
/* 287F0 8004D3F0 A222021D */   sb       $v0, 0x21d($s1)
.L8004D3F4:
/* 287F4 8004D3F4 AE20007C */  sw        $zero, 0x7c($s1)
/* 287F8 8004D3F8 0801350A */  j         .L8004D428
/* 287FC 8004D3FC A220021D */   sb       $zero, 0x21d($s1)
.L8004D400:
/* 28800 8004D400 96220058 */  lhu       $v0, 0x58($s1)
/* 28804 8004D404 10400006 */  beqz      $v0, .L8004D420
/* 28808 8004D408 24020004 */   addiu    $v0, $zero, 4
/* 2880C 8004D40C A2220221 */  sb        $v0, 0x221($s1)
/* 28810 8004D410 24020001 */  addiu     $v0, $zero, 1
/* 28814 8004D414 AE220010 */  sw        $v0, 0x10($s1)
/* 28818 8004D418 0801350A */  j         .L8004D428
/* 2881C 8004D41C AE220008 */   sw       $v0, 8($s1)
.L8004D420:
/* 28820 8004D420 0C0135D6 */  jal       func_8004D758
/* 28824 8004D424 0220202D */   daddu    $a0, $s1, $zero
.L8004D428:
/* 28828 8004D428 8FBF0020 */  lw        $ra, 0x20($sp)
/* 2882C 8004D42C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 28830 8004D430 8FB20018 */  lw        $s2, 0x18($sp)
/* 28834 8004D434 8FB10014 */  lw        $s1, 0x14($sp)
/* 28838 8004D438 8FB00010 */  lw        $s0, 0x10($sp)
/* 2883C 8004D43C 03E00008 */  jr        $ra
/* 28840 8004D440 27BD0028 */   addiu    $sp, $sp, 0x28
