.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218280_439D10
/* 439D10 80218280 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 439D14 80218284 F7B60020 */  sdc1      $f22, 0x20($sp)
/* 439D18 80218288 46006586 */  mov.s     $f22, $f12
/* 439D1C 8021828C F7B40018 */  sdc1      $f20, 0x18($sp)
/* 439D20 80218290 AFBF0010 */  sw        $ra, 0x10($sp)
/* 439D24 80218294 0C00A3FC */  jal       length2D
/* 439D28 80218298 46007506 */   mov.s    $f20, $f14
/* 439D2C 8021829C 4600A18D */  trunc.w.s $f6, $f20
/* 439D30 802182A0 44023000 */  mfc1      $v0, $f6
/* 439D34 802182A4 00000000 */  nop
/* 439D38 802182A8 04420001 */  bltzl     $v0, .L802182B0
/* 439D3C 802182AC 00021023 */   negu     $v0, $v0
.L802182B0:
/* 439D40 802182B0 44821000 */  mtc1      $v0, $f2
/* 439D44 802182B4 00000000 */  nop
/* 439D48 802182B8 468010A0 */  cvt.s.w   $f2, $f2
/* 439D4C 802182BC 46001103 */  div.s     $f4, $f2, $f0
/* 439D50 802182C0 0000202D */  daddu     $a0, $zero, $zero
/* 439D54 802182C4 2406005A */  addiu     $a2, $zero, 0x5a
/* 439D58 802182C8 0080282D */  daddu     $a1, $a0, $zero
/* 439D5C 802182CC 3C078022 */  lui       $a3, %hi(dup_b_area_kmr_part_2_floatTable)
/* 439D60 802182D0 24E7C244 */  addiu     $a3, $a3, %lo(dup_b_area_kmr_part_2_floatTable)
/* 439D64 802182D4 30C2FFFF */  andi      $v0, $a2, 0xffff
.L802182D8:
/* 439D68 802182D8 3083FFFF */  andi      $v1, $a0, 0xffff
/* 439D6C 802182DC 00431023 */  subu      $v0, $v0, $v1
/* 439D70 802182E0 00021FC2 */  srl       $v1, $v0, 0x1f
/* 439D74 802182E4 00431021 */  addu      $v0, $v0, $v1
/* 439D78 802182E8 00021043 */  sra       $v0, $v0, 1
/* 439D7C 802182EC 00821821 */  addu      $v1, $a0, $v0
/* 439D80 802182F0 3062FFFF */  andi      $v0, $v1, 0xffff
/* 439D84 802182F4 00021080 */  sll       $v0, $v0, 2
/* 439D88 802182F8 00471021 */  addu      $v0, $v0, $a3
/* 439D8C 802182FC C4400000 */  lwc1      $f0, ($v0)
/* 439D90 80218300 4604003C */  c.lt.s    $f0, $f4
/* 439D94 80218304 00000000 */  nop
/* 439D98 80218308 45020002 */  bc1fl     .L80218314
/* 439D9C 8021830C 0060302D */   daddu    $a2, $v1, $zero
/* 439DA0 80218310 0060202D */  daddu     $a0, $v1, $zero
.L80218314:
/* 439DA4 80218314 24A50001 */  addiu     $a1, $a1, 1
/* 439DA8 80218318 30A2FFFF */  andi      $v0, $a1, 0xffff
/* 439DAC 8021831C 2C420007 */  sltiu     $v0, $v0, 7
/* 439DB0 80218320 1440FFED */  bnez      $v0, .L802182D8
/* 439DB4 80218324 30C2FFFF */   andi     $v0, $a2, 0xffff
/* 439DB8 80218328 3082FFFF */  andi      $v0, $a0, 0xffff
/* 439DBC 8021832C 00021080 */  sll       $v0, $v0, 2
/* 439DC0 80218330 30C3FFFF */  andi      $v1, $a2, 0xffff
/* 439DC4 80218334 3C018022 */  lui       $at, %hi(dup_b_area_kmr_part_2_floatTable)
/* 439DC8 80218338 00220821 */  addu      $at, $at, $v0
/* 439DCC 8021833C C422C244 */  lwc1      $f2, %lo(dup_b_area_kmr_part_2_floatTable)($at)
/* 439DD0 80218340 00031880 */  sll       $v1, $v1, 2
/* 439DD4 80218344 46041081 */  sub.s     $f2, $f2, $f4
/* 439DD8 80218348 3C018022 */  lui       $at, %hi(dup_b_area_kmr_part_2_floatTable)
/* 439DDC 8021834C 00230821 */  addu      $at, $at, $v1
/* 439DE0 80218350 C420C244 */  lwc1      $f0, %lo(dup_b_area_kmr_part_2_floatTable)($at)
/* 439DE4 80218354 46040001 */  sub.s     $f0, $f0, $f4
/* 439DE8 80218358 46001085 */  abs.s     $f2, $f2
/* 439DEC 8021835C 46000005 */  abs.s     $f0, $f0
/* 439DF0 80218360 4600103C */  c.lt.s    $f2, $f0
/* 439DF4 80218364 00000000 */  nop
/* 439DF8 80218368 45000002 */  bc1f      .L80218374
/* 439DFC 8021836C 00C0182D */   daddu    $v1, $a2, $zero
/* 439E00 80218370 0080182D */  daddu     $v1, $a0, $zero
.L80218374:
/* 439E04 80218374 44800000 */  mtc1      $zero, $f0
/* 439E08 80218378 00000000 */  nop
/* 439E0C 8021837C 4600B03C */  c.lt.s    $f22, $f0
/* 439E10 80218380 00000000 */  nop
/* 439E14 80218384 4500000A */  bc1f      .L802183B0
/* 439E18 80218388 00000000 */   nop
/* 439E1C 8021838C 4614003E */  c.le.s    $f0, $f20
/* 439E20 80218390 00000000 */  nop
/* 439E24 80218394 45000004 */  bc1f      .L802183A8
/* 439E28 80218398 240200B4 */   addiu    $v0, $zero, 0xb4
/* 439E2C 8021839C 00431823 */  subu      $v1, $v0, $v1
/* 439E30 802183A0 44800000 */  mtc1      $zero, $f0
/* 439E34 802183A4 00000000 */  nop
.L802183A8:
/* 439E38 802183A8 4600B03C */  c.lt.s    $f22, $f0
/* 439E3C 802183AC 00000000 */  nop
.L802183B0:
/* 439E40 802183B0 45000005 */  bc1f      .L802183C8
/* 439E44 802183B4 00000000 */   nop
/* 439E48 802183B8 4600A03C */  c.lt.s    $f20, $f0
/* 439E4C 802183BC 00000000 */  nop
/* 439E50 802183C0 45030001 */  bc1tl     .L802183C8
/* 439E54 802183C4 246300B4 */   addiu    $v1, $v1, 0xb4
.L802183C8:
/* 439E58 802183C8 44800000 */  mtc1      $zero, $f0
/* 439E5C 802183CC 00000000 */  nop
/* 439E60 802183D0 4616003E */  c.le.s    $f0, $f22
/* 439E64 802183D4 00000000 */  nop
/* 439E68 802183D8 45000006 */  bc1f      .L802183F4
/* 439E6C 802183DC 00000000 */   nop
/* 439E70 802183E0 4600A03C */  c.lt.s    $f20, $f0
/* 439E74 802183E4 00000000 */  nop
/* 439E78 802183E8 45000002 */  bc1f      .L802183F4
/* 439E7C 802183EC 24020168 */   addiu    $v0, $zero, 0x168
/* 439E80 802183F0 00431823 */  subu      $v1, $v0, $v1
.L802183F4:
/* 439E84 802183F4 8FBF0010 */  lw        $ra, 0x10($sp)
/* 439E88 802183F8 D7B60020 */  ldc1      $f22, 0x20($sp)
/* 439E8C 802183FC D7B40018 */  ldc1      $f20, 0x18($sp)
/* 439E90 80218400 3062FFFF */  andi      $v0, $v1, 0xffff
/* 439E94 80218404 03E00008 */  jr        $ra
/* 439E98 80218408 27BD0028 */   addiu    $sp, $sp, 0x28
