.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A92DC_4236CC
/* 4236CC 802A92DC 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 4236D0 802A92E0 AFB10014 */  sw        $s1, 0x14($sp)
/* 4236D4 802A92E4 3C11802A */  lui       $s1, %hi(D_8029FBE0)
/* 4236D8 802A92E8 2631FBE0 */  addiu     $s1, $s1, %lo(D_8029FBE0)
/* 4236DC 802A92EC AFBF0018 */  sw        $ra, 0x18($sp)
/* 4236E0 802A92F0 AFB00010 */  sw        $s0, 0x10($sp)
/* 4236E4 802A92F4 8623004C */  lh        $v1, 0x4c($s1)
/* 4236E8 802A92F8 3C10800E */  lui       $s0, %hi(gBattleStatus)
/* 4236EC 802A92FC 2610C070 */  addiu     $s0, $s0, %lo(gBattleStatus)
/* 4236F0 802A9300 2C62000D */  sltiu     $v0, $v1, 0xd
/* 4236F4 802A9304 104000E7 */  beqz      $v0, L802A96A4_423A94
/* 4236F8 802A9308 00031080 */   sll      $v0, $v1, 2
/* 4236FC 802A930C 3C01802B */  lui       $at, %hi(jtbl_802A9840_423C30)
/* 423700 802A9310 00220821 */  addu      $at, $at, $v0
/* 423704 802A9314 8C229840 */  lw        $v0, %lo(jtbl_802A9840_423C30)($at)
/* 423708 802A9318 00400008 */  jr        $v0
/* 42370C 802A931C 00000000 */   nop
glabel L802A9320_423710
/* 423710 802A9320 0C093EB1 */  jal       btl_set_popup_duration
/* 423714 802A9324 24040063 */   addiu    $a0, $zero, 0x63
/* 423718 802A9328 8E300004 */  lw        $s0, 4($s1)
/* 42371C 802A932C 240500FF */  addiu     $a1, $zero, 0xff
/* 423720 802A9330 0C0513AC */  jal       set_hud_element_alpha
/* 423724 802A9334 0200202D */   daddu    $a0, $s0, $zero
/* 423728 802A9338 82220061 */  lb        $v0, 0x61($s1)
/* 42372C 802A933C 10400003 */  beqz      $v0, .L802A934C
/* 423730 802A9340 0200202D */   daddu    $a0, $s0, $zero
/* 423734 802A9344 0C05128B */  jal       clear_hud_element_flags
/* 423738 802A9348 24050002 */   addiu    $a1, $zero, 2
.L802A934C:
/* 42373C 802A934C 8E300008 */  lw        $s0, 8($s1)
/* 423740 802A9350 240500FF */  addiu     $a1, $zero, 0xff
/* 423744 802A9354 0C0513AC */  jal       set_hud_element_alpha
/* 423748 802A9358 0200202D */   daddu    $a0, $s0, $zero
/* 42374C 802A935C 82220061 */  lb        $v0, 0x61($s1)
/* 423750 802A9360 10400003 */  beqz      $v0, .L802A9370
/* 423754 802A9364 0200202D */   daddu    $a0, $s0, $zero
/* 423758 802A9368 0C05128B */  jal       clear_hud_element_flags
/* 42375C 802A936C 24050002 */   addiu    $a1, $zero, 2
.L802A9370:
/* 423760 802A9370 8E30000C */  lw        $s0, 0xc($s1)
/* 423764 802A9374 240500FF */  addiu     $a1, $zero, 0xff
/* 423768 802A9378 0C0513AC */  jal       set_hud_element_alpha
/* 42376C 802A937C 0200202D */   daddu    $a0, $s0, $zero
/* 423770 802A9380 82220061 */  lb        $v0, 0x61($s1)
/* 423774 802A9384 10400003 */  beqz      $v0, .L802A9394
/* 423778 802A9388 0200202D */   daddu    $a0, $s0, $zero
/* 42377C 802A938C 0C05128B */  jal       clear_hud_element_flags
/* 423780 802A9390 24050002 */   addiu    $a1, $zero, 2
.L802A9394:
/* 423784 802A9394 8E300010 */  lw        $s0, 0x10($s1)
/* 423788 802A9398 240500FF */  addiu     $a1, $zero, 0xff
/* 42378C 802A939C 0C0513AC */  jal       set_hud_element_alpha
/* 423790 802A93A0 0200202D */   daddu    $a0, $s0, $zero
/* 423794 802A93A4 82220061 */  lb        $v0, 0x61($s1)
/* 423798 802A93A8 10400003 */  beqz      $v0, .L802A93B8
/* 42379C 802A93AC 0200202D */   daddu    $a0, $s0, $zero
/* 4237A0 802A93B0 0C05128B */  jal       clear_hud_element_flags
/* 4237A4 802A93B4 24050002 */   addiu    $a1, $zero, 2
.L802A93B8:
/* 4237A8 802A93B8 24020001 */  addiu     $v0, $zero, 1
/* 4237AC 802A93BC 080AA5A9 */  j         L802A96A4_423A94
/* 4237B0 802A93C0 A622004C */   sh       $v0, 0x4c($s1)
glabel L802A93C4_4237B4
/* 4237B4 802A93C4 0C093EB1 */  jal       btl_set_popup_duration
/* 4237B8 802A93C8 24040063 */   addiu    $a0, $zero, 0x63
/* 4237BC 802A93CC 96220056 */  lhu       $v0, 0x56($s1)
/* 4237C0 802A93D0 24420014 */  addiu     $v0, $v0, 0x14
/* 4237C4 802A93D4 A6220056 */  sh        $v0, 0x56($s1)
/* 4237C8 802A93D8 00021400 */  sll       $v0, $v0, 0x10
/* 4237CC 802A93DC 00021403 */  sra       $v0, $v0, 0x10
/* 4237D0 802A93E0 28420033 */  slti      $v0, $v0, 0x33
/* 4237D4 802A93E4 14400002 */  bnez      $v0, .L802A93F0
/* 4237D8 802A93E8 24020032 */   addiu    $v0, $zero, 0x32
/* 4237DC 802A93EC A6220056 */  sh        $v0, 0x56($s1)
.L802A93F0:
/* 4237E0 802A93F0 8E240004 */  lw        $a0, 4($s1)
/* 4237E4 802A93F4 86250056 */  lh        $a1, 0x56($s1)
/* 4237E8 802A93F8 0C051261 */  jal       set_hud_element_render_pos
/* 4237EC 802A93FC 86260058 */   lh       $a2, 0x58($s1)
/* 4237F0 802A9400 8E240008 */  lw        $a0, 8($s1)
/* 4237F4 802A9404 86260058 */  lh        $a2, 0x58($s1)
/* 4237F8 802A9408 86250056 */  lh        $a1, 0x56($s1)
/* 4237FC 802A940C 0C051261 */  jal       set_hud_element_render_pos
/* 423800 802A9410 24C6001C */   addiu    $a2, $a2, 0x1c
/* 423804 802A9414 8E24000C */  lw        $a0, 0xc($s1)
/* 423808 802A9418 86250056 */  lh        $a1, 0x56($s1)
/* 42380C 802A941C 86260058 */  lh        $a2, 0x58($s1)
/* 423810 802A9420 24A5001F */  addiu     $a1, $a1, 0x1f
/* 423814 802A9424 0C051261 */  jal       set_hud_element_render_pos
/* 423818 802A9428 24C6FFFF */   addiu    $a2, $a2, -1
/* 42381C 802A942C 8E240010 */  lw        $a0, 0x10($s1)
/* 423820 802A9430 86250056 */  lh        $a1, 0x56($s1)
/* 423824 802A9434 86260058 */  lh        $a2, 0x58($s1)
/* 423828 802A9438 24A5001F */  addiu     $a1, $a1, 0x1f
/* 42382C 802A943C 0C051261 */  jal       set_hud_element_render_pos
/* 423830 802A9440 24C60011 */   addiu    $a2, $a2, 0x11
/* 423834 802A9444 080AA5A9 */  j         L802A96A4_423A94
/* 423838 802A9448 00000000 */   nop
glabel L802A944C_42383C
/* 42383C 802A944C 0C093EB1 */  jal       btl_set_popup_duration
/* 423840 802A9450 24040063 */   addiu    $a0, $zero, 0x63
/* 423844 802A9454 8622004E */  lh        $v0, 0x4e($s1)
/* 423848 802A9458 9623004E */  lhu       $v1, 0x4e($s1)
/* 42384C 802A945C 10400003 */  beqz      $v0, .L802A946C
/* 423850 802A9460 2462FFFF */   addiu    $v0, $v1, -1
/* 423854 802A9464 080AA5A9 */  j         L802A96A4_423A94
/* 423858 802A9468 A622004E */   sh       $v0, 0x4e($s1)
.L802A946C:
/* 42385C 802A946C 8E240004 */  lw        $a0, 4($s1)
/* 423860 802A9470 3C058011 */  lui       $a1, %hi(D_80108B80)
/* 423864 802A9474 24A58B80 */  addiu     $a1, $a1, %lo(D_80108B80)
/* 423868 802A9478 0C0511FF */  jal       set_hud_element_script
/* 42386C 802A947C 00000000 */   nop
/* 423870 802A9480 96230052 */  lhu       $v1, 0x52($s1)
/* 423874 802A9484 2402000B */  addiu     $v0, $zero, 0xb
/* 423878 802A9488 A622004C */  sh        $v0, 0x4c($s1)
/* 42387C 802A948C A6230054 */  sh        $v1, 0x54($s1)
glabel L802A9490_423880
/* 423880 802A9490 0C093EB1 */  jal       btl_set_popup_duration
/* 423884 802A9494 24040063 */   addiu    $a0, $zero, 0x63
/* 423888 802A9498 8222005C */  lb        $v0, 0x5c($s1)
/* 42388C 802A949C 1440000E */  bnez      $v0, .L802A94D8
/* 423890 802A94A0 00000000 */   nop
/* 423894 802A94A4 96220046 */  lhu       $v0, 0x46($s1)
/* 423898 802A94A8 8623005A */  lh        $v1, 0x5a($s1)
/* 42389C 802A94AC 24420001 */  addiu     $v0, $v0, 1
/* 4238A0 802A94B0 A6220046 */  sh        $v0, 0x46($s1)
/* 4238A4 802A94B4 00021400 */  sll       $v0, $v0, 0x10
/* 4238A8 802A94B8 00021403 */  sra       $v0, $v0, 0x10
/* 4238AC 802A94BC 0043102A */  slt       $v0, $v0, $v1
/* 4238B0 802A94C0 9623005A */  lhu       $v1, 0x5a($s1)
/* 4238B4 802A94C4 1440000C */  bnez      $v0, .L802A94F8
/* 4238B8 802A94C8 24020001 */   addiu    $v0, $zero, 1
/* 4238BC 802A94CC A6230046 */  sh        $v1, 0x46($s1)
/* 4238C0 802A94D0 080AA53E */  j         .L802A94F8
/* 4238C4 802A94D4 A222005C */   sb       $v0, 0x5c($s1)
.L802A94D8:
/* 4238C8 802A94D8 96220046 */  lhu       $v0, 0x46($s1)
/* 4238CC 802A94DC 2442FFFF */  addiu     $v0, $v0, -1
/* 4238D0 802A94E0 A6220046 */  sh        $v0, 0x46($s1)
/* 4238D4 802A94E4 00021400 */  sll       $v0, $v0, 0x10
/* 4238D8 802A94E8 1C400003 */  bgtz      $v0, .L802A94F8
/* 4238DC 802A94EC 00000000 */   nop
/* 4238E0 802A94F0 A6200046 */  sh        $zero, 0x46($s1)
/* 4238E4 802A94F4 A220005C */  sb        $zero, 0x5c($s1)
.L802A94F8:
/* 4238E8 802A94F8 8622006A */  lh        $v0, 0x6a($s1)
/* 4238EC 802A94FC 14400021 */  bnez      $v0, .L802A9584
/* 4238F0 802A9500 00000000 */   nop
/* 4238F4 802A9504 82040431 */  lb        $a0, 0x431($s0)
/* 4238F8 802A9508 86230052 */  lh        $v1, 0x52($s1)
/* 4238FC 802A950C 86220054 */  lh        $v0, 0x54($s1)
/* 423900 802A9510 00623023 */  subu      $a2, $v1, $v0
/* 423904 802A9514 00862023 */  subu      $a0, $a0, $a2
/* 423908 802A9518 04810002 */  bgez      $a0, .L802A9524
/* 42390C 802A951C A6200044 */   sh       $zero, 0x44($s1)
/* 423910 802A9520 24840040 */  addiu     $a0, $a0, 0x40
.L802A9524:
/* 423914 802A9524 18C0002E */  blez      $a2, .L802A95E0
/* 423918 802A9528 0000282D */   daddu    $a1, $zero, $zero
.L802A952C:
/* 42391C 802A952C 28820040 */  slti      $v0, $a0, 0x40
/* 423920 802A9530 50400001 */  beql      $v0, $zero, .L802A9538
/* 423924 802A9534 2484FFC0 */   addiu    $a0, $a0, -0x40
.L802A9538:
/* 423928 802A9538 00041080 */  sll       $v0, $a0, 2
/* 42392C 802A953C 02021021 */  addu      $v0, $s0, $v0
/* 423930 802A9540 8C420330 */  lw        $v0, 0x330($v0)
/* 423934 802A9544 30428000 */  andi      $v0, $v0, 0x8000
/* 423938 802A9548 10400009 */  beqz      $v0, .L802A9570
/* 42393C 802A954C 24A50001 */   addiu    $a1, $a1, 1
/* 423940 802A9550 86230050 */  lh        $v1, 0x50($s1)
/* 423944 802A9554 8E020434 */  lw        $v0, 0x434($s0)
/* 423948 802A9558 00031880 */  sll       $v1, $v1, 2
/* 42394C 802A955C 00621821 */  addu      $v1, $v1, $v0
/* 423950 802A9560 96220044 */  lhu       $v0, 0x44($s1)
/* 423954 802A9564 94630002 */  lhu       $v1, 2($v1)
/* 423958 802A9568 00431021 */  addu      $v0, $v0, $v1
/* 42395C 802A956C A6220044 */  sh        $v0, 0x44($s1)
.L802A9570:
/* 423960 802A9570 00A6102A */  slt       $v0, $a1, $a2
/* 423964 802A9574 1440FFED */  bnez      $v0, .L802A952C
/* 423968 802A9578 24840001 */   addiu    $a0, $a0, 1
/* 42396C 802A957C 080AA579 */  j         .L802A95E4
/* 423970 802A9580 3C0451EB */   lui      $a0, 0x51eb
.L802A9584:
/* 423974 802A9584 86220050 */  lh        $v0, 0x50($s1)
/* 423978 802A9588 8E030434 */  lw        $v1, 0x434($s0)
/* 42397C 802A958C 00021080 */  sll       $v0, $v0, 2
/* 423980 802A9590 00431021 */  addu      $v0, $v0, $v1
/* 423984 802A9594 8C430000 */  lw        $v1, ($v0)
/* 423988 802A9598 04620001 */  bltzl     $v1, .L802A95A0
/* 42398C 802A959C 24630003 */   addiu    $v1, $v1, 3
.L802A95A0:
/* 423990 802A95A0 96220044 */  lhu       $v0, 0x44($s1)
/* 423994 802A95A4 00031883 */  sra       $v1, $v1, 2
/* 423998 802A95A8 00431021 */  addu      $v0, $v0, $v1
/* 42399C 802A95AC A6220044 */  sh        $v0, 0x44($s1)
/* 4239A0 802A95B0 86220050 */  lh        $v0, 0x50($s1)
/* 4239A4 802A95B4 8E030434 */  lw        $v1, 0x434($s0)
/* 4239A8 802A95B8 00021080 */  sll       $v0, $v0, 2
/* 4239AC 802A95BC 00431021 */  addu      $v0, $v0, $v1
/* 4239B0 802A95C0 8C420000 */  lw        $v0, ($v0)
/* 4239B4 802A95C4 04420001 */  bltzl     $v0, .L802A95CC
/* 4239B8 802A95C8 24420003 */   addiu    $v0, $v0, 3
.L802A95CC:
/* 4239BC 802A95CC 0C00A67F */  jal       rand_int
/* 4239C0 802A95D0 00022083 */   sra      $a0, $v0, 2
/* 4239C4 802A95D4 96230044 */  lhu       $v1, 0x44($s1)
/* 4239C8 802A95D8 00621821 */  addu      $v1, $v1, $v0
/* 4239CC 802A95DC A6230044 */  sh        $v1, 0x44($s1)
.L802A95E0:
/* 4239D0 802A95E0 3C0451EB */  lui       $a0, 0x51eb
.L802A95E4:
/* 4239D4 802A95E4 96230044 */  lhu       $v1, 0x44($s1)
/* 4239D8 802A95E8 3484851F */  ori       $a0, $a0, 0x851f
/* 4239DC 802A95EC 00031C00 */  sll       $v1, $v1, 0x10
/* 4239E0 802A95F0 00031403 */  sra       $v0, $v1, 0x10
/* 4239E4 802A95F4 00440018 */  mult      $v0, $a0
/* 4239E8 802A95F8 00031FC3 */  sra       $v1, $v1, 0x1f
/* 4239EC 802A95FC 00003810 */  mfhi      $a3
/* 4239F0 802A9600 00071143 */  sra       $v0, $a3, 5
/* 4239F4 802A9604 00431823 */  subu      $v1, $v0, $v1
/* 4239F8 802A9608 A2030081 */  sb        $v1, 0x81($s0)
/* 4239FC 802A960C 86220054 */  lh        $v0, 0x54($s1)
/* 423A00 802A9610 96240054 */  lhu       $a0, 0x54($s1)
/* 423A04 802A9614 10400003 */  beqz      $v0, .L802A9624
/* 423A08 802A9618 2482FFFF */   addiu    $v0, $a0, -1
/* 423A0C 802A961C 080AA5A9 */  j         L802A96A4_423A94
/* 423A10 802A9620 A6220054 */   sh       $v0, 0x54($s1)
.L802A9624:
/* 423A14 802A9624 00031E00 */  sll       $v1, $v1, 0x18
/* 423A18 802A9628 82220080 */  lb        $v0, 0x80($s1)
/* 423A1C 802A962C 86240046 */  lh        $a0, 0x46($s1)
/* 423A20 802A9630 00021040 */  sll       $v0, $v0, 1
/* 423A24 802A9634 02221021 */  addu      $v0, $s1, $v0
/* 423A28 802A9638 84420074 */  lh        $v0, 0x74($v0)
/* 423A2C 802A963C 00031E03 */  sra       $v1, $v1, 0x18
/* 423A30 802A9640 00441023 */  subu      $v0, $v0, $a0
/* 423A34 802A9644 0062182A */  slt       $v1, $v1, $v0
/* 423A38 802A9648 14600004 */  bnez      $v1, .L802A965C
/* 423A3C 802A964C 2402FFFE */   addiu    $v0, $zero, -2
/* 423A40 802A9650 24020001 */  addiu     $v0, $zero, 1
/* 423A44 802A9654 080AA599 */  j         .L802A9664
/* 423A48 802A9658 A2020086 */   sb       $v0, 0x86($s0)
.L802A965C:
/* 423A4C 802A965C A2020086 */  sb        $v0, 0x86($s0)
/* 423A50 802A9660 2402FFFF */  addiu     $v0, $zero, -1
.L802A9664:
/* 423A54 802A9664 A2020081 */  sb        $v0, 0x81($s0)
/* 423A58 802A9668 0C093EB1 */  jal       btl_set_popup_duration
/* 423A5C 802A966C 0000202D */   daddu    $a0, $zero, $zero
/* 423A60 802A9670 24020014 */  addiu     $v0, $zero, 0x14
/* 423A64 802A9674 A6220054 */  sh        $v0, 0x54($s1)
/* 423A68 802A9678 2402000C */  addiu     $v0, $zero, 0xc
/* 423A6C 802A967C 080AA5A9 */  j         L802A96A4_423A94
/* 423A70 802A9680 A622004C */   sh       $v0, 0x4c($s1)
glabel L802A9684_423A74
/* 423A74 802A9684 86220054 */  lh        $v0, 0x54($s1)
/* 423A78 802A9688 96230054 */  lhu       $v1, 0x54($s1)
/* 423A7C 802A968C 10400003 */  beqz      $v0, .L802A969C
/* 423A80 802A9690 2462FFFF */   addiu    $v0, $v1, -1
/* 423A84 802A9694 080AA5A9 */  j         L802A96A4_423A94
/* 423A88 802A9698 A6220054 */   sh       $v0, 0x54($s1)
.L802A969C:
/* 423A8C 802A969C 0C09A327 */  jal       func_80268C9C
/* 423A90 802A96A0 00000000 */   nop
glabel L802A96A4_423A94
/* 423A94 802A96A4 8FBF0018 */  lw        $ra, 0x18($sp)
/* 423A98 802A96A8 8FB10014 */  lw        $s1, 0x14($sp)
/* 423A9C 802A96AC 8FB00010 */  lw        $s0, 0x10($sp)
/* 423AA0 802A96B0 03E00008 */  jr        $ra
/* 423AA4 802A96B4 27BD0020 */   addiu    $sp, $sp, 0x20
