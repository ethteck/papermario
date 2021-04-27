.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024830C
/* 168B6C 8024830C 27BDFF78 */  addiu     $sp, $sp, -0x88
/* 168B70 80248310 AFBE0078 */  sw        $fp, 0x78($sp)
/* 168B74 80248314 0080F02D */  daddu     $fp, $a0, $zero
/* 168B78 80248318 3C048016 */  lui       $a0, %hi(D_8015A370)
/* 168B7C 8024831C 2484A370 */  addiu     $a0, $a0, %lo(D_8015A370)
/* 168B80 80248320 AFBF007C */  sw        $ra, 0x7c($sp)
/* 168B84 80248324 AFB70074 */  sw        $s7, 0x74($sp)
/* 168B88 80248328 AFB60070 */  sw        $s6, 0x70($sp)
/* 168B8C 8024832C AFB5006C */  sw        $s5, 0x6c($sp)
/* 168B90 80248330 AFB40068 */  sw        $s4, 0x68($sp)
/* 168B94 80248334 AFB30064 */  sw        $s3, 0x64($sp)
/* 168B98 80248338 AFB20060 */  sw        $s2, 0x60($sp)
/* 168B9C 8024833C AFB1005C */  sw        $s1, 0x5c($sp)
/* 168BA0 80248340 AFB00058 */  sw        $s0, 0x58($sp)
/* 168BA4 80248344 F7B40080 */  sdc1      $f20, 0x80($sp)
/* 168BA8 80248348 AFA60090 */  sw        $a2, 0x90($sp)
/* 168BAC 8024834C AFA70094 */  sw        $a3, 0x94($sp)
/* 168BB0 80248350 90820000 */  lbu       $v0, ($a0)
/* 168BB4 80248354 30420008 */  andi      $v0, $v0, 8
/* 168BB8 80248358 10400130 */  beqz      $v0, .L8024881C
/* 168BBC 8024835C 00A0482D */   daddu    $t1, $a1, $zero
/* 168BC0 80248360 8C830004 */  lw        $v1, 4($a0)
/* 168BC4 80248364 3C028025 */  lui       $v0, %hi(func_80248170)
/* 168BC8 80248368 24428170 */  addiu     $v0, $v0, %lo(func_80248170)
/* 168BCC 8024836C 1462012B */  bne       $v1, $v0, .L8024881C
/* 168BD0 80248370 00000000 */   nop
/* 168BD4 80248374 9082001C */  lbu       $v0, 0x1c($a0)
/* 168BD8 80248378 83CB0004 */  lb        $t3, 4($fp)
/* 168BDC 8024837C 00021040 */  sll       $v0, $v0, 1
/* 168BE0 80248380 AFA20018 */  sw        $v0, 0x18($sp)
/* 168BE4 80248384 39620001 */  xori      $v0, $t3, 1
/* 168BE8 80248388 AFAB001C */  sw        $t3, 0x1c($sp)
/* 168BEC 8024838C 8FAB0018 */  lw        $t3, 0x18($sp)
/* 168BF0 80248390 0002102B */  sltu      $v0, $zero, $v0
/* 168BF4 80248394 AFA20020 */  sw        $v0, 0x20($sp)
/* 168BF8 80248398 29620011 */  slti      $v0, $t3, 0x11
/* 168BFC 8024839C 14400002 */  bnez      $v0, .L802483A8
/* 168C00 802483A0 240B0010 */   addiu    $t3, $zero, 0x10
/* 168C04 802483A4 AFAB0018 */  sw        $t3, 0x18($sp)
.L802483A8:
/* 168C08 802483A8 83C20006 */  lb        $v0, 6($fp)
/* 168C0C 802483AC 184000E2 */  blez      $v0, .L80248738
/* 168C10 802483B0 0000B02D */   daddu    $s6, $zero, $zero
/* 168C14 802483B4 3C014080 */  lui       $at, 0x4080
/* 168C18 802483B8 4481A000 */  mtc1      $at, $f20
/* 168C1C 802483BC 8FAB0094 */  lw        $t3, 0x94($sp)
/* 168C20 802483C0 3C0A800A */  lui       $t2, %hi(gMasterGfxPos)
/* 168C24 802483C4 254AA66C */  addiu     $t2, $t2, %lo(gMasterGfxPos)
/* 168C28 802483C8 AFA0003C */  sw        $zero, 0x3c($sp)
/* 168C2C 802483CC AFA00040 */  sw        $zero, 0x40($sp)
/* 168C30 802483D0 012B5821 */  addu      $t3, $t1, $t3
/* 168C34 802483D4 AFAB002C */  sw        $t3, 0x2c($sp)
.L802483D8:
/* 168C38 802483D8 8FAB0040 */  lw        $t3, 0x40($sp)
/* 168C3C 802483DC AFAB0028 */  sw        $t3, 0x28($sp)
/* 168C40 802483E0 8FAB003C */  lw        $t3, 0x3c($sp)
/* 168C44 802483E4 0000402D */  daddu     $t0, $zero, $zero
/* 168C48 802483E8 AFAB0030 */  sw        $t3, 0x30($sp)
.L802483EC:
/* 168C4C 802483EC 8FAB0028 */  lw        $t3, 0x28($sp)
/* 168C50 802483F0 15000026 */  bnez      $t0, .L8024848C
/* 168C54 802483F4 25720004 */   addiu    $s2, $t3, 4
/* 168C58 802483F8 44891000 */  mtc1      $t1, $f2
/* 168C5C 802483FC 00000000 */  nop
/* 168C60 80248400 468010A0 */  cvt.s.w   $f2, $f2
/* 168C64 80248404 8FAB001C */  lw        $t3, 0x1c($sp)
/* 168C68 80248408 46141082 */  mul.s     $f2, $f2, $f20
/* 168C6C 8024840C 00000000 */  nop
/* 168C70 80248410 AFAB0024 */  sw        $t3, 0x24($sp)
/* 168C74 80248414 8D420000 */  lw        $v0, ($t2)
/* 168C78 80248418 8FAB0090 */  lw        $t3, 0x90($sp)
/* 168C7C 8024841C 0040282D */  daddu     $a1, $v0, $zero
/* 168C80 80248420 24420008 */  addiu     $v0, $v0, 8
/* 168C84 80248424 01722021 */  addu      $a0, $t3, $s2
/* 168C88 80248428 44840000 */  mtc1      $a0, $f0
/* 168C8C 8024842C 00000000 */  nop
/* 168C90 80248430 46800020 */  cvt.s.w   $f0, $f0
/* 168C94 80248434 46140002 */  mul.s     $f0, $f0, $f20
/* 168C98 80248438 00000000 */  nop
/* 168C9C 8024843C AD420000 */  sw        $v0, ($t2)
/* 168CA0 80248440 4600118D */  trunc.w.s $f6, $f2
/* 168CA4 80248444 44033000 */  mfc1      $v1, $f6
/* 168CA8 80248448 00000000 */  nop
/* 168CAC 8024844C 30630FFF */  andi      $v1, $v1, 0xfff
/* 168CB0 80248450 00031B00 */  sll       $v1, $v1, 0xc
/* 168CB4 80248454 C7A2002C */  lwc1      $f2, 0x2c($sp)
/* 168CB8 80248458 468010A0 */  cvt.s.w   $f2, $f2
/* 168CBC 8024845C 46141082 */  mul.s     $f2, $f2, $f20
/* 168CC0 80248460 00000000 */  nop
/* 168CC4 80248464 4600018D */  trunc.w.s $f6, $f0
/* 168CC8 80248468 44023000 */  mfc1      $v0, $f6
/* 168CCC 8024846C 00000000 */  nop
/* 168CD0 80248470 30420FFF */  andi      $v0, $v0, 0xfff
/* 168CD4 80248474 3C0BED00 */  lui       $t3, 0xed00
/* 168CD8 80248478 004B1025 */  or        $v0, $v0, $t3
/* 168CDC 8024847C 8FAB0018 */  lw        $t3, 0x18($sp)
/* 168CE0 80248480 00621825 */  or        $v1, $v1, $v0
/* 168CE4 80248484 08092148 */  j         .L80248520
/* 168CE8 80248488 008B2021 */   addu     $a0, $a0, $t3
.L8024848C:
/* 168CEC 8024848C 44891000 */  mtc1      $t1, $f2
/* 168CF0 80248490 00000000 */  nop
/* 168CF4 80248494 468010A0 */  cvt.s.w   $f2, $f2
/* 168CF8 80248498 8D430000 */  lw        $v1, ($t2)
/* 168CFC 8024849C 8FAB0020 */  lw        $t3, 0x20($sp)
/* 168D00 802484A0 46141082 */  mul.s     $f2, $f2, $f20
/* 168D04 802484A4 00000000 */  nop
/* 168D08 802484A8 AFAB0024 */  sw        $t3, 0x24($sp)
/* 168D0C 802484AC 8FAB0090 */  lw        $t3, 0x90($sp)
/* 168D10 802484B0 0060282D */  daddu     $a1, $v1, $zero
/* 168D14 802484B4 01722021 */  addu      $a0, $t3, $s2
/* 168D18 802484B8 8FAB0018 */  lw        $t3, 0x18($sp)
/* 168D1C 802484BC 24630008 */  addiu     $v1, $v1, 8
/* 168D20 802484C0 AD430000 */  sw        $v1, ($t2)
/* 168D24 802484C4 008B1021 */  addu      $v0, $a0, $t3
/* 168D28 802484C8 44820000 */  mtc1      $v0, $f0
/* 168D2C 802484CC 00000000 */  nop
/* 168D30 802484D0 46800020 */  cvt.s.w   $f0, $f0
/* 168D34 802484D4 24840010 */  addiu     $a0, $a0, 0x10
/* 168D38 802484D8 46140002 */  mul.s     $f0, $f0, $f20
/* 168D3C 802484DC 00000000 */  nop
/* 168D40 802484E0 4600118D */  trunc.w.s $f6, $f2
/* 168D44 802484E4 44033000 */  mfc1      $v1, $f6
/* 168D48 802484E8 00000000 */  nop
/* 168D4C 802484EC 30630FFF */  andi      $v1, $v1, 0xfff
/* 168D50 802484F0 00031B00 */  sll       $v1, $v1, 0xc
/* 168D54 802484F4 C7A2002C */  lwc1      $f2, 0x2c($sp)
/* 168D58 802484F8 468010A0 */  cvt.s.w   $f2, $f2
/* 168D5C 802484FC 46141082 */  mul.s     $f2, $f2, $f20
/* 168D60 80248500 00000000 */  nop
/* 168D64 80248504 4600018D */  trunc.w.s $f6, $f0
/* 168D68 80248508 44023000 */  mfc1      $v0, $f6
/* 168D6C 8024850C 00000000 */  nop
/* 168D70 80248510 30420FFF */  andi      $v0, $v0, 0xfff
/* 168D74 80248514 3C0BED00 */  lui       $t3, 0xed00
/* 168D78 80248518 004B1025 */  or        $v0, $v0, $t3
/* 168D7C 8024851C 00621825 */  or        $v1, $v1, $v0
.L80248520:
/* 168D80 80248520 44840000 */  mtc1      $a0, $f0
/* 168D84 80248524 00000000 */  nop
/* 168D88 80248528 46800020 */  cvt.s.w   $f0, $f0
/* 168D8C 8024852C 46140002 */  mul.s     $f0, $f0, $f20
/* 168D90 80248530 00000000 */  nop
/* 168D94 80248534 ACA30000 */  sw        $v1, ($a1)
/* 168D98 80248538 4600118D */  trunc.w.s $f6, $f2
/* 168D9C 8024853C 44033000 */  mfc1      $v1, $f6
/* 168DA0 80248540 00000000 */  nop
/* 168DA4 80248544 30630FFF */  andi      $v1, $v1, 0xfff
/* 168DA8 80248548 00031B00 */  sll       $v1, $v1, 0xc
/* 168DAC 8024854C 4600018D */  trunc.w.s $f6, $f0
/* 168DB0 80248550 44023000 */  mfc1      $v0, $f6
/* 168DB4 80248554 00000000 */  nop
/* 168DB8 80248558 30420FFF */  andi      $v0, $v0, 0xfff
/* 168DBC 8024855C 00621825 */  or        $v1, $v1, $v0
/* 168DC0 80248560 ACA30004 */  sw        $v1, 4($a1)
/* 168DC4 80248564 83C20005 */  lb        $v0, 5($fp)
/* 168DC8 80248568 93C30005 */  lbu       $v1, 5($fp)
/* 168DCC 8024856C 18400063 */  blez      $v0, .L802486FC
/* 168DD0 80248570 0000A02D */   daddu    $s4, $zero, $zero
/* 168DD4 80248574 0280B82D */  daddu     $s7, $s4, $zero
.L80248578:
/* 168DD8 80248578 00031E00 */  sll       $v1, $v1, 0x18
/* 168DDC 8024857C 8FAB0024 */  lw        $t3, 0x24($sp)
/* 168DE0 80248580 00031E03 */  sra       $v1, $v1, 0x18
/* 168DE4 80248584 01630018 */  mult      $t3, $v1
/* 168DE8 80248588 00006012 */  mflo      $t4
/* 168DEC 8024858C 83C20006 */  lb        $v0, 6($fp)
/* 168DF0 80248590 00000000 */  nop
/* 168DF4 80248594 01820018 */  mult      $t4, $v0
/* 168DF8 80248598 00001012 */  mflo      $v0
/* 168DFC 8024859C 00000000 */  nop
/* 168E00 802485A0 00000000 */  nop
/* 168E04 802485A4 00760018 */  mult      $v1, $s6
/* 168E08 802485A8 00001812 */  mflo      $v1
/* 168E0C 802485AC 00431021 */  addu      $v0, $v0, $v1
/* 168E10 802485B0 8FC30008 */  lw        $v1, 8($fp)
/* 168E14 802485B4 00541021 */  addu      $v0, $v0, $s4
/* 168E18 802485B8 00621821 */  addu      $v1, $v1, $v0
/* 168E1C 802485BC 90730000 */  lbu       $s3, ($v1)
/* 168E20 802485C0 240200F7 */  addiu     $v0, $zero, 0xf7
/* 168E24 802485C4 52620048 */  beql      $s3, $v0, .L802486E8
/* 168E28 802485C8 26940001 */   addiu    $s4, $s4, 1
/* 168E2C 802485CC 83C20001 */  lb        $v0, 1($fp)
/* 168E30 802485D0 16820007 */  bne       $s4, $v0, .L802485F0
/* 168E34 802485D4 0000182D */   daddu    $v1, $zero, $zero
/* 168E38 802485D8 83C20002 */  lb        $v0, 2($fp)
/* 168E3C 802485DC 16C20005 */  bne       $s6, $v0, .L802485F4
/* 168E40 802485E0 2415000A */   addiu    $s5, $zero, 0xa
/* 168E44 802485E4 24030008 */  addiu     $v1, $zero, 8
/* 168E48 802485E8 0809217D */  j         .L802485F4
/* 168E4C 802485EC 0000A82D */   daddu    $s5, $zero, $zero
.L802485F0:
/* 168E50 802485F0 2415000A */  addiu     $s5, $zero, 0xa
.L802485F4:
/* 168E54 802485F4 26F0000C */  addiu     $s0, $s7, 0xc
/* 168E58 802485F8 8FAB0030 */  lw        $t3, 0x30($sp)
/* 168E5C 802485FC 0260882D */  daddu     $s1, $s3, $zero
/* 168E60 80248600 2662FF5E */  addiu     $v0, $s3, -0xa2
/* 168E64 80248604 2C42004E */  sltiu     $v0, $v0, 0x4e
/* 168E68 80248608 10400017 */  beqz      $v0, .L80248668
/* 168E6C 8024860C 25720005 */   addiu    $s2, $t3, 5
/* 168E70 80248610 2A6200C6 */  slti      $v0, $s3, 0xc6
/* 168E74 80248614 14400015 */  bnez      $v0, .L8024866C
/* 168E78 80248618 240B00C6 */   addiu    $t3, $zero, 0xc6
/* 168E7C 8024861C 01302821 */  addu      $a1, $t1, $s0
/* 168E80 80248620 3C048025 */  lui       $a0, %hi(D_8024C108)
/* 168E84 80248624 8C84C108 */  lw        $a0, %lo(D_8024C108)($a0)
/* 168E88 80248628 8FAB0090 */  lw        $t3, 0x90($sp)
/* 168E8C 8024862C 24A50016 */  addiu     $a1, $a1, 0x16
/* 168E90 80248630 AFA80048 */  sw        $t0, 0x48($sp)
/* 168E94 80248634 AFA9004C */  sw        $t1, 0x4c($sp)
/* 168E98 80248638 AFAA0050 */  sw        $t2, 0x50($sp)
/* 168E9C 8024863C 01723021 */  addu      $a2, $t3, $s2
/* 168EA0 80248640 0C051261 */  jal       set_icon_render_pos
/* 168EA4 80248644 24C60008 */   addiu    $a2, $a2, 8
/* 168EA8 80248648 3C048025 */  lui       $a0, %hi(D_8024C108)
/* 168EAC 8024864C 8C84C108 */  lw        $a0, %lo(D_8024C108)($a0)
/* 168EB0 80248650 0C0511F8 */  jal       draw_icon_2
/* 168EB4 80248654 00000000 */   nop
/* 168EB8 80248658 0000182D */  daddu     $v1, $zero, $zero
/* 168EBC 8024865C 8FAA0050 */  lw        $t2, 0x50($sp)
/* 168EC0 80248660 8FA9004C */  lw        $t1, 0x4c($sp)
/* 168EC4 80248664 8FA80048 */  lw        $t0, 0x48($sp)
.L80248668:
/* 168EC8 80248668 240B00C6 */  addiu     $t3, $zero, 0xc6
.L8024866C:
/* 168ECC 8024866C 522B0001 */  beql      $s1, $t3, .L80248674
/* 168ED0 80248670 2610FFFF */   addiu    $s0, $s0, -1
.L80248674:
/* 168ED4 80248674 240B00C9 */  addiu     $t3, $zero, 0xc9
/* 168ED8 80248678 522B0001 */  beql      $s1, $t3, .L80248680
/* 168EDC 8024867C 26100005 */   addiu    $s0, $s0, 5
.L80248680:
/* 168EE0 80248680 240B00CA */  addiu     $t3, $zero, 0xca
/* 168EE4 80248684 522B0001 */  beql      $s1, $t3, .L8024868C
/* 168EE8 80248688 26100008 */   addiu    $s0, $s0, 8
.L8024868C:
/* 168EEC 8024868C 240B00C6 */  addiu     $t3, $zero, 0xc6
/* 168EF0 80248690 122B0005 */  beq       $s1, $t3, .L802486A8
/* 168EF4 80248694 240B00CA */   addiu    $t3, $zero, 0xca
/* 168EF8 80248698 122B0003 */  beq       $s1, $t3, .L802486A8
/* 168EFC 8024869C 240B00C9 */   addiu    $t3, $zero, 0xc9
/* 168F00 802486A0 162B0003 */  bne       $s1, $t3, .L802486B0
/* 168F04 802486A4 0260202D */   daddu    $a0, $s3, $zero
.L802486A8:
/* 168F08 802486A8 2652FFFF */  addiu     $s2, $s2, -1
/* 168F0C 802486AC 0260202D */  daddu     $a0, $s3, $zero
.L802486B0:
/* 168F10 802486B0 01302821 */  addu      $a1, $t1, $s0
/* 168F14 802486B4 8FAB0090 */  lw        $t3, 0x90($sp)
/* 168F18 802486B8 240700FF */  addiu     $a3, $zero, 0xff
/* 168F1C 802486BC AFB50010 */  sw        $s5, 0x10($sp)
/* 168F20 802486C0 AFA30014 */  sw        $v1, 0x14($sp)
/* 168F24 802486C4 AFA80048 */  sw        $t0, 0x48($sp)
/* 168F28 802486C8 AFA9004C */  sw        $t1, 0x4c($sp)
/* 168F2C 802486CC AFAA0050 */  sw        $t2, 0x50($sp)
/* 168F30 802486D0 0C09265F */  jal       func_8024997C
/* 168F34 802486D4 01723021 */   addu     $a2, $t3, $s2
/* 168F38 802486D8 8FAA0050 */  lw        $t2, 0x50($sp)
/* 168F3C 802486DC 8FA9004C */  lw        $t1, 0x4c($sp)
/* 168F40 802486E0 8FA80048 */  lw        $t0, 0x48($sp)
/* 168F44 802486E4 26940001 */  addiu     $s4, $s4, 1
.L802486E8:
/* 168F48 802486E8 83C20005 */  lb        $v0, 5($fp)
/* 168F4C 802486EC 93C30005 */  lbu       $v1, 5($fp)
/* 168F50 802486F0 0282102A */  slt       $v0, $s4, $v0
/* 168F54 802486F4 1440FFA0 */  bnez      $v0, .L80248578
/* 168F58 802486F8 26F70013 */   addiu    $s7, $s7, 0x13
.L802486FC:
/* 168F5C 802486FC 25080001 */  addiu     $t0, $t0, 1
/* 168F60 80248700 29020002 */  slti      $v0, $t0, 2
/* 168F64 80248704 1440FF39 */  bnez      $v0, .L802483EC
/* 168F68 80248708 00000000 */   nop
/* 168F6C 8024870C 8FAB003C */  lw        $t3, 0x3c($sp)
/* 168F70 80248710 256B0011 */  addiu     $t3, $t3, 0x11
/* 168F74 80248714 AFAB003C */  sw        $t3, 0x3c($sp)
/* 168F78 80248718 8FAB0040 */  lw        $t3, 0x40($sp)
/* 168F7C 8024871C 256B000F */  addiu     $t3, $t3, 0xf
/* 168F80 80248720 AFAB0040 */  sw        $t3, 0x40($sp)
/* 168F84 80248724 83C20006 */  lb        $v0, 6($fp)
/* 168F88 80248728 26D60001 */  addiu     $s6, $s6, 1
/* 168F8C 8024872C 02C2102A */  slt       $v0, $s6, $v0
/* 168F90 80248730 1440FF29 */  bnez      $v0, .L802483D8
/* 168F94 80248734 00000000 */   nop
.L80248738:
/* 168F98 80248738 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* 168F9C 8024873C 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* 168FA0 80248740 44891000 */  mtc1      $t1, $f2
/* 168FA4 80248744 00000000 */  nop
/* 168FA8 80248748 468010A0 */  cvt.s.w   $f2, $f2
/* 168FAC 8024874C 3C014080 */  lui       $at, 0x4080
/* 168FB0 80248750 44812000 */  mtc1      $at, $f4
/* 168FB4 80248754 C7A00090 */  lwc1      $f0, 0x90($sp)
/* 168FB8 80248758 46800020 */  cvt.s.w   $f0, $f0
/* 168FBC 8024875C 46041082 */  mul.s     $f2, $f2, $f4
/* 168FC0 80248760 00000000 */  nop
/* 168FC4 80248764 8C620000 */  lw        $v0, ($v1)
/* 168FC8 80248768 3C05ED00 */  lui       $a1, 0xed00
/* 168FCC 8024876C 0040302D */  daddu     $a2, $v0, $zero
/* 168FD0 80248770 24420008 */  addiu     $v0, $v0, 8
/* 168FD4 80248774 46040002 */  mul.s     $f0, $f0, $f4
/* 168FD8 80248778 00000000 */  nop
/* 168FDC 8024877C AC620000 */  sw        $v0, ($v1)
/* 168FE0 80248780 4600118D */  trunc.w.s $f6, $f2
/* 168FE4 80248784 44043000 */  mfc1      $a0, $f6
/* 168FE8 80248788 00000000 */  nop
/* 168FEC 8024878C 30840FFF */  andi      $a0, $a0, 0xfff
/* 168FF0 80248790 00042300 */  sll       $a0, $a0, 0xc
/* 168FF4 80248794 4600018D */  trunc.w.s $f6, $f0
/* 168FF8 80248798 44033000 */  mfc1      $v1, $f6
/* 168FFC 8024879C 00000000 */  nop
/* 169000 802487A0 30630FFF */  andi      $v1, $v1, 0xfff
/* 169004 802487A4 8FAB0094 */  lw        $t3, 0x94($sp)
/* 169008 802487A8 00651825 */  or        $v1, $v1, $a1
/* 16900C 802487AC 012B1021 */  addu      $v0, $t1, $t3
/* 169010 802487B0 44821000 */  mtc1      $v0, $f2
/* 169014 802487B4 00000000 */  nop
/* 169018 802487B8 468010A0 */  cvt.s.w   $f2, $f2
/* 16901C 802487BC 46041082 */  mul.s     $f2, $f2, $f4
/* 169020 802487C0 00000000 */  nop
/* 169024 802487C4 8FA20098 */  lw        $v0, 0x98($sp)
/* 169028 802487C8 8FAB0090 */  lw        $t3, 0x90($sp)
/* 16902C 802487CC 00832025 */  or        $a0, $a0, $v1
/* 169030 802487D0 01621021 */  addu      $v0, $t3, $v0
/* 169034 802487D4 44820000 */  mtc1      $v0, $f0
/* 169038 802487D8 00000000 */  nop
/* 16903C 802487DC 46800020 */  cvt.s.w   $f0, $f0
/* 169040 802487E0 46040002 */  mul.s     $f0, $f0, $f4
/* 169044 802487E4 00000000 */  nop
/* 169048 802487E8 ACC40000 */  sw        $a0, ($a2)
/* 16904C 802487EC 4600118D */  trunc.w.s $f6, $f2
/* 169050 802487F0 44023000 */  mfc1      $v0, $f6
/* 169054 802487F4 00000000 */  nop
/* 169058 802487F8 30420FFF */  andi      $v0, $v0, 0xfff
/* 16905C 802487FC 00021300 */  sll       $v0, $v0, 0xc
/* 169060 80248800 4600018D */  trunc.w.s $f6, $f0
/* 169064 80248804 44033000 */  mfc1      $v1, $f6
/* 169068 80248808 00000000 */  nop
/* 16906C 8024880C 30630FFF */  andi      $v1, $v1, 0xfff
/* 169070 80248810 00431025 */  or        $v0, $v0, $v1
/* 169074 80248814 08092272 */  j         .L802489C8
/* 169078 80248818 ACC20004 */   sw       $v0, 4($a2)
.L8024881C:
/* 16907C 8024881C 83C20005 */  lb        $v0, 5($fp)
/* 169080 80248820 18400069 */  blez      $v0, .L802489C8
/* 169084 80248824 0000A02D */   daddu    $s4, $zero, $zero
/* 169088 80248828 AFA00038 */  sw        $zero, 0x38($sp)
.L8024882C:
/* 16908C 8024882C 83C20006 */  lb        $v0, 6($fp)
/* 169090 80248830 93C40006 */  lbu       $a0, 6($fp)
/* 169094 80248834 1840005C */  blez      $v0, .L802489A8
/* 169098 80248838 0000B02D */   daddu    $s6, $zero, $zero
/* 16909C 8024883C 8FAB0038 */  lw        $t3, 0x38($sp)
/* 1690A0 80248840 02C0B82D */  daddu     $s7, $s6, $zero
/* 1690A4 80248844 AFAB0034 */  sw        $t3, 0x34($sp)
.L80248848:
/* 1690A8 80248848 83C20004 */  lb        $v0, 4($fp)
/* 1690AC 8024884C 83C30005 */  lb        $v1, 5($fp)
/* 1690B0 80248850 00430018 */  mult      $v0, $v1
/* 1690B4 80248854 00004012 */  mflo      $t0
/* 1690B8 80248858 00041600 */  sll       $v0, $a0, 0x18
/* 1690BC 8024885C 00021603 */  sra       $v0, $v0, 0x18
/* 1690C0 80248860 01020018 */  mult      $t0, $v0
/* 1690C4 80248864 00001012 */  mflo      $v0
/* 1690C8 80248868 00000000 */  nop
/* 1690CC 8024886C 00000000 */  nop
/* 1690D0 80248870 00760018 */  mult      $v1, $s6
/* 1690D4 80248874 00001812 */  mflo      $v1
/* 1690D8 80248878 00431021 */  addu      $v0, $v0, $v1
/* 1690DC 8024887C 8FC30008 */  lw        $v1, 8($fp)
/* 1690E0 80248880 00541021 */  addu      $v0, $v0, $s4
/* 1690E4 80248884 00621821 */  addu      $v1, $v1, $v0
/* 1690E8 80248888 90730000 */  lbu       $s3, ($v1)
/* 1690EC 8024888C 240200F7 */  addiu     $v0, $zero, 0xf7
/* 1690F0 80248890 52620040 */  beql      $s3, $v0, .L80248994
/* 1690F4 80248894 26D60001 */   addiu    $s6, $s6, 1
/* 1690F8 80248898 83C20001 */  lb        $v0, 1($fp)
/* 1690FC 8024889C 16820007 */  bne       $s4, $v0, .L802488BC
/* 169100 802488A0 0000182D */   daddu    $v1, $zero, $zero
/* 169104 802488A4 83C20002 */  lb        $v0, 2($fp)
/* 169108 802488A8 16C20005 */  bne       $s6, $v0, .L802488C0
/* 16910C 802488AC 2415000A */   addiu    $s5, $zero, 0xa
/* 169110 802488B0 24030008 */  addiu     $v1, $zero, 8
/* 169114 802488B4 08092230 */  j         .L802488C0
/* 169118 802488B8 0000A82D */   daddu    $s5, $zero, $zero
.L802488BC:
/* 16911C 802488BC 2415000A */  addiu     $s5, $zero, 0xa
.L802488C0:
/* 169120 802488C0 8FAB0034 */  lw        $t3, 0x34($sp)
/* 169124 802488C4 26F20005 */  addiu     $s2, $s7, 5
/* 169128 802488C8 0260882D */  daddu     $s1, $s3, $zero
/* 16912C 802488CC 2662FF5E */  addiu     $v0, $s3, -0xa2
/* 169130 802488D0 2C42004E */  sltiu     $v0, $v0, 0x4e
/* 169134 802488D4 10400013 */  beqz      $v0, .L80248924
/* 169138 802488D8 2570000C */   addiu    $s0, $t3, 0xc
/* 16913C 802488DC 2A6200C6 */  slti      $v0, $s3, 0xc6
/* 169140 802488E0 14400011 */  bnez      $v0, .L80248928
/* 169144 802488E4 240B00C6 */   addiu    $t3, $zero, 0xc6
/* 169148 802488E8 01302821 */  addu      $a1, $t1, $s0
/* 16914C 802488EC 3C048025 */  lui       $a0, %hi(D_8024C108)
/* 169150 802488F0 8C84C108 */  lw        $a0, %lo(D_8024C108)($a0)
/* 169154 802488F4 8FAB0090 */  lw        $t3, 0x90($sp)
/* 169158 802488F8 24A50016 */  addiu     $a1, $a1, 0x16
/* 16915C 802488FC AFA9004C */  sw        $t1, 0x4c($sp)
/* 169160 80248900 01723021 */  addu      $a2, $t3, $s2
/* 169164 80248904 0C051261 */  jal       set_icon_render_pos
/* 169168 80248908 24C60008 */   addiu    $a2, $a2, 8
/* 16916C 8024890C 3C048025 */  lui       $a0, %hi(D_8024C108)
/* 169170 80248910 8C84C108 */  lw        $a0, %lo(D_8024C108)($a0)
/* 169174 80248914 0C0511F8 */  jal       draw_icon_2
/* 169178 80248918 00000000 */   nop
/* 16917C 8024891C 0000182D */  daddu     $v1, $zero, $zero
/* 169180 80248920 8FA9004C */  lw        $t1, 0x4c($sp)
.L80248924:
/* 169184 80248924 240B00C6 */  addiu     $t3, $zero, 0xc6
.L80248928:
/* 169188 80248928 522B0001 */  beql      $s1, $t3, .L80248930
/* 16918C 8024892C 2610FFFF */   addiu    $s0, $s0, -1
.L80248930:
/* 169190 80248930 240B00C9 */  addiu     $t3, $zero, 0xc9
/* 169194 80248934 522B0001 */  beql      $s1, $t3, .L8024893C
/* 169198 80248938 26100005 */   addiu    $s0, $s0, 5
.L8024893C:
/* 16919C 8024893C 240B00CA */  addiu     $t3, $zero, 0xca
/* 1691A0 80248940 522B0001 */  beql      $s1, $t3, .L80248948
/* 1691A4 80248944 26100008 */   addiu    $s0, $s0, 8
.L80248948:
/* 1691A8 80248948 240B00C6 */  addiu     $t3, $zero, 0xc6
/* 1691AC 8024894C 122B0005 */  beq       $s1, $t3, .L80248964
/* 1691B0 80248950 240B00CA */   addiu    $t3, $zero, 0xca
/* 1691B4 80248954 122B0003 */  beq       $s1, $t3, .L80248964
/* 1691B8 80248958 240B00C9 */   addiu    $t3, $zero, 0xc9
/* 1691BC 8024895C 162B0003 */  bne       $s1, $t3, .L8024896C
/* 1691C0 80248960 0260202D */   daddu    $a0, $s3, $zero
.L80248964:
/* 1691C4 80248964 2652FFFF */  addiu     $s2, $s2, -1
/* 1691C8 80248968 0260202D */  daddu     $a0, $s3, $zero
.L8024896C:
/* 1691CC 8024896C 01302821 */  addu      $a1, $t1, $s0
/* 1691D0 80248970 8FAB0090 */  lw        $t3, 0x90($sp)
/* 1691D4 80248974 240700FF */  addiu     $a3, $zero, 0xff
/* 1691D8 80248978 AFB50010 */  sw        $s5, 0x10($sp)
/* 1691DC 8024897C AFA30014 */  sw        $v1, 0x14($sp)
/* 1691E0 80248980 AFA9004C */  sw        $t1, 0x4c($sp)
/* 1691E4 80248984 0C09265F */  jal       func_8024997C
/* 1691E8 80248988 01723021 */   addu     $a2, $t3, $s2
/* 1691EC 8024898C 8FA9004C */  lw        $t1, 0x4c($sp)
/* 1691F0 80248990 26D60001 */  addiu     $s6, $s6, 1
.L80248994:
/* 1691F4 80248994 83C20006 */  lb        $v0, 6($fp)
/* 1691F8 80248998 93C40006 */  lbu       $a0, 6($fp)
/* 1691FC 8024899C 02C2102A */  slt       $v0, $s6, $v0
/* 169200 802489A0 1440FFA9 */  bnez      $v0, .L80248848
/* 169204 802489A4 26F70011 */   addiu    $s7, $s7, 0x11
.L802489A8:
/* 169208 802489A8 8FAB0038 */  lw        $t3, 0x38($sp)
/* 16920C 802489AC 256B0013 */  addiu     $t3, $t3, 0x13
/* 169210 802489B0 AFAB0038 */  sw        $t3, 0x38($sp)
/* 169214 802489B4 83C20005 */  lb        $v0, 5($fp)
/* 169218 802489B8 26940001 */  addiu     $s4, $s4, 1
/* 16921C 802489BC 0282102A */  slt       $v0, $s4, $v0
/* 169220 802489C0 1440FF9A */  bnez      $v0, .L8024882C
/* 169224 802489C4 00000000 */   nop
.L802489C8:
/* 169228 802489C8 3C038025 */  lui       $v1, %hi(D_8024C098_C09918)
/* 16922C 802489CC 8063C098 */  lb        $v1, %lo(D_8024C098_C09918)($v1)
/* 169230 802489D0 24020003 */  addiu     $v0, $zero, 3
/* 169234 802489D4 1462001D */  bne       $v1, $v0, .L80248A4C
/* 169238 802489D8 00000000 */   nop
/* 16923C 802489DC 3C028025 */  lui       $v0, %hi(D_8024C08C)
/* 169240 802489E0 8C42C08C */  lw        $v0, %lo(D_8024C08C)($v0)
/* 169244 802489E4 3C03000F */  lui       $v1, 0xf
/* 169248 802489E8 00431024 */  and       $v0, $v0, $v1
/* 16924C 802489EC 10400003 */  beqz      $v0, .L802489FC
/* 169250 802489F0 2402FFFC */   addiu    $v0, $zero, -4
/* 169254 802489F4 3C018025 */  lui       $at, %hi(D_8024A18C)
/* 169258 802489F8 AC22A18C */  sw        $v0, %lo(D_8024A18C)($at)
.L802489FC:
/* 16925C 802489FC 3C038025 */  lui       $v1, %hi(D_8024A18C)
/* 169260 80248A00 2463A18C */  addiu     $v1, $v1, %lo(D_8024A18C)
/* 169264 80248A04 8C620000 */  lw        $v0, ($v1)
/* 169268 80248A08 24040031 */  addiu     $a0, $zero, 0x31
/* 16926C 80248A0C 24420001 */  addiu     $v0, $v0, 1
/* 169270 80248A10 AC620000 */  sw        $v0, ($v1)
/* 169274 80248A14 83C20001 */  lb        $v0, 1($fp)
/* 169278 80248A18 8FAB0090 */  lw        $t3, 0x90($sp)
/* 16927C 80248A1C 00022880 */  sll       $a1, $v0, 2
/* 169280 80248A20 00A22821 */  addu      $a1, $a1, $v0
/* 169284 80248A24 00052880 */  sll       $a1, $a1, 2
/* 169288 80248A28 00A22823 */  subu      $a1, $a1, $v0
/* 16928C 80248A2C 24A50002 */  addiu     $a1, $a1, 2
/* 169290 80248A30 83C20002 */  lb        $v0, 2($fp)
/* 169294 80248A34 01252821 */  addu      $a1, $t1, $a1
/* 169298 80248A38 00023100 */  sll       $a2, $v0, 4
/* 16929C 80248A3C 00C23021 */  addu      $a2, $a2, $v0
/* 1692A0 80248A40 24C6000D */  addiu     $a2, $a2, 0xd
/* 1692A4 80248A44 0C090B80 */  jal       func_80242E00
/* 1692A8 80248A48 01663021 */   addu     $a2, $t3, $a2
.L80248A4C:
/* 1692AC 80248A4C 8FBF007C */  lw        $ra, 0x7c($sp)
/* 1692B0 80248A50 8FBE0078 */  lw        $fp, 0x78($sp)
/* 1692B4 80248A54 8FB70074 */  lw        $s7, 0x74($sp)
/* 1692B8 80248A58 8FB60070 */  lw        $s6, 0x70($sp)
/* 1692BC 80248A5C 8FB5006C */  lw        $s5, 0x6c($sp)
/* 1692C0 80248A60 8FB40068 */  lw        $s4, 0x68($sp)
/* 1692C4 80248A64 8FB30064 */  lw        $s3, 0x64($sp)
/* 1692C8 80248A68 8FB20060 */  lw        $s2, 0x60($sp)
/* 1692CC 80248A6C 8FB1005C */  lw        $s1, 0x5c($sp)
/* 1692D0 80248A70 8FB00058 */  lw        $s0, 0x58($sp)
/* 1692D4 80248A74 D7B40080 */  ldc1      $f20, 0x80($sp)
/* 1692D8 80248A78 03E00008 */  jr        $ra
/* 1692DC 80248A7C 27BD0088 */   addiu    $sp, $sp, 0x88
