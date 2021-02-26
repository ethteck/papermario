.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8005DDDC
/* 391DC 8005DDDC 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 391E0 8005DDE0 AFB20040 */  sw        $s2, 0x40($sp)
/* 391E4 8005DDE4 0080902D */  daddu     $s2, $a0, $zero
/* 391E8 8005DDE8 27A50018 */  addiu     $a1, $sp, 0x18
/* 391EC 8005DDEC 27A6001C */  addiu     $a2, $sp, 0x1c
/* 391F0 8005DDF0 AFBF0044 */  sw        $ra, 0x44($sp)
/* 391F4 8005DDF4 AFB1003C */  sw        $s1, 0x3c($sp)
/* 391F8 8005DDF8 AFB00038 */  sw        $s0, 0x38($sp)
/* 391FC 8005DDFC F7BA0060 */  sdc1      $f26, 0x60($sp)
/* 39200 8005DE00 F7B80058 */  sdc1      $f24, 0x58($sp)
/* 39204 8005DE04 F7B60050 */  sdc1      $f22, 0x50($sp)
/* 39208 8005DE08 F7B40048 */  sdc1      $f20, 0x48($sp)
/* 3920C 8005DE0C 8E510020 */  lw        $s1, 0x20($s2)
/* 39210 8005DE10 27A20024 */  addiu     $v0, $sp, 0x24
/* 39214 8005DE14 AFA20010 */  sw        $v0, 0x10($sp)
/* 39218 8005DE18 8E24028C */  lw        $a0, 0x28c($s1)
/* 3921C 8005DE1C 0C0176B0 */  jal       func_8005DAC0
/* 39220 8005DE20 27A70020 */   addiu    $a3, $sp, 0x20
/* 39224 8005DE24 8E230288 */  lw        $v1, 0x288($s1)
/* 39228 8005DE28 24020001 */  addiu     $v0, $zero, 1
/* 3922C 8005DE2C 106200A4 */  beq       $v1, $v0, .L8005E0C0
/* 39230 8005DE30 28620002 */   slti     $v0, $v1, 2
/* 39234 8005DE34 50400005 */  beql      $v0, $zero, .L8005DE4C
/* 39238 8005DE38 24020002 */   addiu    $v0, $zero, 2
/* 3923C 8005DE3C 10600015 */  beqz      $v1, .L8005DE94
/* 39240 8005DE40 00000000 */   nop
/* 39244 8005DE44 0801794C */  j         .L8005E530
/* 39248 8005DE48 00000000 */   nop
.L8005DE4C:
/* 3924C 8005DE4C 10620104 */  beq       $v1, $v0, .L8005E260
/* 39250 8005DE50 2402000A */   addiu    $v0, $zero, 0xa
/* 39254 8005DE54 1062014C */  beq       $v1, $v0, .L8005E388
/* 39258 8005DE58 00000000 */   nop
/* 3925C 8005DE5C 0801794C */  j         .L8005E530
/* 39260 8005DE60 00000000 */   nop
.L8005DE64:
/* 39264 8005DE64 8E220290 */  lw        $v0, 0x290($s1)
/* 39268 8005DE68 C658000C */  lwc1      $f24, 0xc($s2)
/* 3926C 8005DE6C 8C420010 */  lw        $v0, 0x10($v0)
/* 39270 8005DE70 08017819 */  j         .L8005E064
/* 39274 8005DE74 AE420028 */   sw       $v0, 0x28($s2)
.L8005DE78:
/* 39278 8005DE78 AE400018 */  sw        $zero, 0x18($s2)
/* 3927C 8005DE7C 8E220290 */  lw        $v0, 0x290($s1)
/* 39280 8005DE80 C658000C */  lwc1      $f24, 0xc($s2)
/* 39284 8005DE84 8C420010 */  lw        $v0, 0x10($v0)
/* 39288 8005DE88 AE420028 */  sw        $v0, 0x28($s2)
/* 3928C 8005DE8C 08017818 */  j         .L8005E060
/* 39290 8005DE90 2402000A */   addiu    $v0, $zero, 0xa
.L8005DE94:
/* 39294 8005DE94 C64C0038 */  lwc1      $f12, 0x38($s2)
/* 39298 8005DE98 C64E0040 */  lwc1      $f14, 0x40($s2)
/* 3929C 8005DE9C 8FA60018 */  lw        $a2, 0x18($sp)
/* 392A0 8005DEA0 8E220284 */  lw        $v0, 0x284($s1)
/* 392A4 8005DEA4 8FA70020 */  lw        $a3, 0x20($sp)
/* 392A8 8005DEA8 C642003C */  lwc1      $f2, 0x3c($s2)
/* 392AC 8005DEAC C6260294 */  lwc1      $f6, 0x294($s1)
/* 392B0 8005DEB0 00021100 */  sll       $v0, $v0, 4
/* 392B4 8005DEB4 02228021 */  addu      $s0, $s1, $v0
/* 392B8 8005DEB8 46006006 */  mov.s     $f0, $f12
/* 392BC 8005DEBC C6160004 */  lwc1      $f22, 4($s0)
/* 392C0 8005DEC0 C614000C */  lwc1      $f20, 0xc($s0)
/* 392C4 8005DEC4 46007106 */  mov.s     $f4, $f14
/* 392C8 8005DEC8 E7A00028 */  swc1      $f0, 0x28($sp)
/* 392CC 8005DECC E7A2002C */  swc1      $f2, 0x2c($sp)
/* 392D0 8005DED0 E7A40030 */  swc1      $f4, 0x30($sp)
/* 392D4 8005DED4 0C00A7A5 */  jal       func_80029E94
/* 392D8 8005DED8 E6460018 */   swc1     $f6, 0x18($s2)
/* 392DC 8005DEDC C62202A0 */  lwc1      $f2, 0x2a0($s1)
/* 392E0 8005DEE0 4600103E */  c.le.s    $f2, $f0
/* 392E4 8005DEE4 00000000 */  nop
/* 392E8 8005DEE8 45000003 */  bc1f      .L8005DEF8
/* 392EC 8005DEEC E7A00034 */   swc1     $f0, 0x34($sp)
/* 392F0 8005DEF0 C6200298 */  lwc1      $f0, 0x298($s1)
/* 392F4 8005DEF4 E6400018 */  swc1      $f0, 0x18($s2)
.L8005DEF8:
/* 392F8 8005DEF8 8E220290 */  lw        $v0, 0x290($s1)
/* 392FC 8005DEFC 8C430014 */  lw        $v1, 0x14($v0)
/* 39300 8005DF00 8E420000 */  lw        $v0, ($s2)
/* 39304 8005DF04 30421000 */  andi      $v0, $v0, 0x1000
/* 39308 8005DF08 14400004 */  bnez      $v0, .L8005DF1C
/* 3930C 8005DF0C AE430028 */   sw       $v1, 0x28($s2)
/* 39310 8005DF10 8E220290 */  lw        $v0, 0x290($s1)
/* 39314 8005DF14 8C420008 */  lw        $v0, 8($v0)
/* 39318 8005DF18 AE420028 */  sw        $v0, 0x28($s2)
.L8005DF1C:
/* 3931C 8005DF1C C7AC0028 */  lwc1      $f12, 0x28($sp)
/* 39320 8005DF20 C7AE0030 */  lwc1      $f14, 0x30($sp)
/* 39324 8005DF24 4406B000 */  mfc1      $a2, $f22
/* 39328 8005DF28 4407A000 */  mfc1      $a3, $f20
/* 3932C 8005DF2C 0C00A7A5 */  jal       func_80029E94
/* 39330 8005DF30 00000000 */   nop
/* 39334 8005DF34 C7AC0028 */  lwc1      $f12, 0x28($sp)
/* 39338 8005DF38 C7AE0030 */  lwc1      $f14, 0x30($sp)
/* 3933C 8005DF3C 4406B000 */  mfc1      $a2, $f22
/* 39340 8005DF40 4407A000 */  mfc1      $a3, $f20
/* 39344 8005DF44 0C00A710 */  jal       func_80029C40
/* 39348 8005DF48 E7A00034 */   swc1     $f0, 0x34($sp)
/* 3934C 8005DF4C C6440018 */  lwc1      $f4, 0x18($s2)
/* 39350 8005DF50 C7A20034 */  lwc1      $f2, 0x34($sp)
/* 39354 8005DF54 4602203C */  c.lt.s    $f4, $f2
/* 39358 8005DF58 00000000 */  nop
/* 3935C 8005DF5C 45000020 */  bc1f      .L8005DFE0
/* 39360 8005DF60 46000606 */   mov.s    $f24, $f0
/* 39364 8005DF64 C7AC0028 */  lwc1      $f12, 0x28($sp)
/* 39368 8005DF68 C7AE0030 */  lwc1      $f14, 0x30($sp)
/* 3936C 8005DF6C 8FA60018 */  lw        $a2, 0x18($sp)
/* 39370 8005DF70 0C00A7A5 */  jal       func_80029E94
/* 39374 8005DF74 8FA70020 */   lw       $a3, 0x20($sp)
/* 39378 8005DF78 E7A00034 */  swc1      $f0, 0x34($sp)
/* 3937C 8005DF7C C62202A0 */  lwc1      $f2, 0x2a0($s1)
/* 39380 8005DF80 4600103C */  c.lt.s    $f2, $f0
/* 39384 8005DF84 00000000 */  nop
/* 39388 8005DF88 45010036 */  bc1t      .L8005E064
/* 3938C 8005DF8C 00000000 */   nop
/* 39390 8005DF90 C622029C */  lwc1      $f2, 0x29c($s1)
/* 39394 8005DF94 4600103C */  c.lt.s    $f2, $f0
/* 39398 8005DF98 00000000 */  nop
/* 3939C 8005DF9C 45000010 */  bc1f      .L8005DFE0
/* 393A0 8005DFA0 00000000 */   nop
/* 393A4 8005DFA4 46020001 */  sub.s     $f0, $f0, $f2
/* 393A8 8005DFA8 E6400018 */  swc1      $f0, 0x18($s2)
/* 393AC 8005DFAC C6220294 */  lwc1      $f2, 0x294($s1)
/* 393B0 8005DFB0 4600103C */  c.lt.s    $f2, $f0
/* 393B4 8005DFB4 00000000 */  nop
/* 393B8 8005DFB8 4503002A */  bc1tl     .L8005E064
/* 393BC 8005DFBC E6420018 */   swc1     $f2, 0x18($s2)
/* 393C0 8005DFC0 3C013FF0 */  lui       $at, 0x3ff0
/* 393C4 8005DFC4 44811800 */  mtc1      $at, $f3
/* 393C8 8005DFC8 44801000 */  mtc1      $zero, $f2
/* 393CC 8005DFCC 46000021 */  cvt.d.s   $f0, $f0
/* 393D0 8005DFD0 46220000 */  add.d     $f0, $f0, $f2
/* 393D4 8005DFD4 46200020 */  cvt.s.d   $f0, $f0
/* 393D8 8005DFD8 08017819 */  j         .L8005E064
/* 393DC 8005DFDC E6400018 */   swc1     $f0, 0x18($s2)
.L8005DFE0:
/* 393E0 8005DFE0 8E230284 */  lw        $v1, 0x284($s1)
/* 393E4 8005DFE4 8E220280 */  lw        $v0, 0x280($s1)
/* 393E8 8005DFE8 5062FF9E */  beql      $v1, $v0, .L8005DE64
/* 393EC 8005DFEC AE400018 */   sw       $zero, 0x18($s2)
/* 393F0 8005DFF0 C64C0038 */  lwc1      $f12, 0x38($s2)
/* 393F4 8005DFF4 C64E0040 */  lwc1      $f14, 0x40($s2)
/* 393F8 8005DFF8 8FA60018 */  lw        $a2, 0x18($sp)
/* 393FC 8005DFFC 0C00A7A5 */  jal       func_80029E94
/* 39400 8005E000 8FA70020 */   lw       $a3, 0x20($sp)
/* 39404 8005E004 C622029C */  lwc1      $f2, 0x29c($s1)
/* 39408 8005E008 4602003E */  c.le.s    $f0, $f2
/* 3940C 8005E00C 00000000 */  nop
/* 39410 8005E010 4501FF99 */  bc1t      .L8005DE78
/* 39414 8005E014 E7A00034 */   swc1     $f0, 0x34($sp)
/* 39418 8005E018 8E220284 */  lw        $v0, 0x284($s1)
/* 3941C 8005E01C 24420001 */  addiu     $v0, $v0, 1
/* 39420 8005E020 AE220284 */  sw        $v0, 0x284($s1)
/* 39424 8005E024 28420028 */  slti      $v0, $v0, 0x28
/* 39428 8005E028 50400001 */  beql      $v0, $zero, .L8005E030
/* 3942C 8005E02C AE200284 */   sw       $zero, 0x284($s1)
.L8005E030:
/* 39430 8005E030 8E220284 */  lw        $v0, 0x284($s1)
/* 39434 8005E034 00021100 */  sll       $v0, $v0, 4
/* 39438 8005E038 02228021 */  addu      $s0, $s1, $v0
/* 3943C 8005E03C C6160004 */  lwc1      $f22, 4($s0)
/* 39440 8005E040 8E420000 */  lw        $v0, ($s2)
/* 39444 8005E044 C614000C */  lwc1      $f20, 0xc($s0)
/* 39448 8005E048 30421000 */  andi      $v0, $v0, 0x1000
/* 3944C 8005E04C 1040FFB3 */  beqz      $v0, .L8005DF1C
/* 39450 8005E050 00000000 */   nop
/* 39454 8005E054 82020000 */  lb        $v0, ($s0)
/* 39458 8005E058 1040FFB0 */  beqz      $v0, .L8005DF1C
/* 3945C 8005E05C 24020001 */   addiu    $v0, $zero, 1
.L8005E060:
/* 39460 8005E060 AE220288 */  sw        $v0, 0x288($s1)
.L8005E064:
/* 39464 8005E064 8E420000 */  lw        $v0, ($s2)
/* 39468 8005E068 30421000 */  andi      $v0, $v0, 0x1000
/* 3946C 8005E06C 14400008 */  bnez      $v0, .L8005E090
/* 39470 8005E070 00000000 */   nop
/* 39474 8005E074 C6400018 */  lwc1      $f0, 0x18($s2)
/* 39478 8005E078 3C013F00 */  lui       $at, 0x3f00
/* 3947C 8005E07C 44811000 */  mtc1      $at, $f2
/* 39480 8005E080 00000000 */  nop
/* 39484 8005E084 46020002 */  mul.s     $f0, $f0, $f2
/* 39488 8005E088 00000000 */  nop
/* 3948C 8005E08C E6400018 */  swc1      $f0, 0x18($s2)
.L8005E090:
/* 39490 8005E090 8E450018 */  lw        $a1, 0x18($s2)
/* 39494 8005E094 4406C000 */  mfc1      $a2, $f24
/* 39498 8005E098 0240202D */  daddu     $a0, $s2, $zero
/* 3949C 8005E09C 0C00E9C5 */  jal       func_8003A714
/* 394A0 8005E0A0 AE46000C */   sw       $a2, 0xc($s2)
/* 394A4 8005E0A4 8E420000 */  lw        $v0, ($s2)
/* 394A8 8005E0A8 24035000 */  addiu     $v1, $zero, 0x5000
/* 394AC 8005E0AC 30425000 */  andi      $v0, $v0, 0x5000
/* 394B0 8005E0B0 1443011F */  bne       $v0, $v1, .L8005E530
/* 394B4 8005E0B4 24020001 */   addiu    $v0, $zero, 1
/* 394B8 8005E0B8 0801794C */  j         .L8005E530
/* 394BC 8005E0BC AE220288 */   sw       $v0, 0x288($s1)
.L8005E0C0:
/* 394C0 8005E0C0 8E230284 */  lw        $v1, 0x284($s1)
/* 394C4 8005E0C4 8E220280 */  lw        $v0, 0x280($s1)
/* 394C8 8005E0C8 10620119 */  beq       $v1, $v0, .L8005E530
/* 394CC 8005E0CC 24620001 */   addiu    $v0, $v1, 1
/* 394D0 8005E0D0 AE220284 */  sw        $v0, 0x284($s1)
/* 394D4 8005E0D4 28420028 */  slti      $v0, $v0, 0x28
/* 394D8 8005E0D8 50400001 */  beql      $v0, $zero, .L8005E0E0
/* 394DC 8005E0DC AE200284 */   sw       $zero, 0x284($s1)
.L8005E0E0:
/* 394E0 8005E0E0 C64C0038 */  lwc1      $f12, 0x38($s2)
/* 394E4 8005E0E4 8E220284 */  lw        $v0, 0x284($s1)
/* 394E8 8005E0E8 C64E0040 */  lwc1      $f14, 0x40($s2)
/* 394EC 8005E0EC 3C014000 */  lui       $at, 0x4000
/* 394F0 8005E0F0 44810000 */  mtc1      $at, $f0
/* 394F4 8005E0F4 00021100 */  sll       $v0, $v0, 4
/* 394F8 8005E0F8 02228021 */  addu      $s0, $s1, $v0
/* 394FC 8005E0FC C6160004 */  lwc1      $f22, 4($s0)
/* 39500 8005E100 C614000C */  lwc1      $f20, 0xc($s0)
/* 39504 8005E104 C6020008 */  lwc1      $f2, 8($s0)
/* 39508 8005E108 A640008E */  sh        $zero, 0x8e($s2)
/* 3950C 8005E10C E6400014 */  swc1      $f0, 0x14($s2)
/* 39510 8005E110 E6560060 */  swc1      $f22, 0x60($s2)
/* 39514 8005E114 E6540068 */  swc1      $f20, 0x68($s2)
/* 39518 8005E118 E6420064 */  swc1      $f2, 0x64($s2)
/* 3951C 8005E11C C6200298 */  lwc1      $f0, 0x298($s1)
/* 39520 8005E120 4406B000 */  mfc1      $a2, $f22
/* 39524 8005E124 4407A000 */  mfc1      $a3, $f20
/* 39528 8005E128 0C00A7A5 */  jal       func_80029E94
/* 3952C 8005E12C E6400018 */   swc1     $f0, 0x18($s2)
/* 39530 8005E130 C64C0038 */  lwc1      $f12, 0x38($s2)
/* 39534 8005E134 C64E0040 */  lwc1      $f14, 0x40($s2)
/* 39538 8005E138 8E460060 */  lw        $a2, 0x60($s2)
/* 3953C 8005E13C 8E470068 */  lw        $a3, 0x68($s2)
/* 39540 8005E140 0C00A710 */  jal       func_80029C40
/* 39544 8005E144 E6400010 */   swc1     $f0, 0x10($s2)
/* 39548 8005E148 C6480010 */  lwc1      $f8, 0x10($s2)
/* 3954C 8005E14C C6440064 */  lwc1      $f4, 0x64($s2)
/* 39550 8005E150 C642003C */  lwc1      $f2, 0x3c($s2)
/* 39554 8005E154 E640000C */  swc1      $f0, 0xc($s2)
/* 39558 8005E158 46022101 */  sub.s     $f4, $f4, $f2
/* 3955C 8005E15C 46004186 */  mov.s     $f6, $f8
/* 39560 8005E160 E7A80034 */  swc1      $f8, 0x34($sp)
/* 39564 8005E164 4604303C */  c.lt.s    $f6, $f4
/* 39568 8005E168 00000000 */  nop
/* 3956C 8005E16C 45000002 */  bc1f      .L8005E178
/* 39570 8005E170 E7A4002C */   swc1     $f4, 0x2c($sp)
/* 39574 8005E174 E7A40034 */  swc1      $f4, 0x34($sp)
.L8005E178:
/* 39578 8005E178 C620029C */  lwc1      $f0, 0x29c($s1)
/* 3957C 8005E17C C7A20034 */  lwc1      $f2, 0x34($sp)
/* 39580 8005E180 4600103C */  c.lt.s    $f2, $f0
/* 39584 8005E184 00000000 */  nop
/* 39588 8005E188 4500000A */  bc1f      .L8005E1B4
/* 3958C 8005E18C 00000000 */   nop
/* 39590 8005E190 C64C0038 */  lwc1      $f12, 0x38($s2)
/* 39594 8005E194 C64E0040 */  lwc1      $f14, 0x40($s2)
/* 39598 8005E198 8FA60018 */  lw        $a2, 0x18($sp)
/* 3959C 8005E19C 8FA70020 */  lw        $a3, 0x20($sp)
/* 395A0 8005E1A0 8E420000 */  lw        $v0, ($s2)
/* 395A4 8005E1A4 AE40001C */  sw        $zero, 0x1c($s2)
/* 395A8 8005E1A8 34420200 */  ori       $v0, $v0, 0x200
/* 395AC 8005E1AC 080178DD */  j         .L8005E374
/* 395B0 8005E1B0 AE420000 */   sw       $v0, ($s2)
.L8005E1B4:
/* 395B4 8005E1B4 C6400018 */  lwc1      $f0, 0x18($s2)
/* 395B8 8005E1B8 46001003 */  div.s     $f0, $f2, $f0
/* 395BC 8005E1BC 4600028D */  trunc.w.s $f10, $f0
/* 395C0 8005E1C0 44025000 */  mfc1      $v0, $f10
/* 395C4 8005E1C4 00000000 */  nop
/* 395C8 8005E1C8 A642008E */  sh        $v0, 0x8e($s2)
/* 395CC 8005E1CC 00021400 */  sll       $v0, $v0, 0x10
/* 395D0 8005E1D0 00021403 */  sra       $v0, $v0, 0x10
/* 395D4 8005E1D4 2842000A */  slti      $v0, $v0, 0xa
/* 395D8 8005E1D8 10400002 */  beqz      $v0, .L8005E1E4
/* 395DC 8005E1DC 2402000A */   addiu    $v0, $zero, 0xa
/* 395E0 8005E1E0 A642008E */  sh        $v0, 0x8e($s2)
.L8005E1E4:
/* 395E4 8005E1E4 8642008E */  lh        $v0, 0x8e($s2)
/* 395E8 8005E1E8 C6420014 */  lwc1      $f2, 0x14($s2)
/* 395EC 8005E1EC 44823000 */  mtc1      $v0, $f6
/* 395F0 8005E1F0 00000000 */  nop
/* 395F4 8005E1F4 468031A0 */  cvt.s.w   $f6, $f6
/* 395F8 8005E1F8 46061082 */  mul.s     $f2, $f2, $f6
/* 395FC 8005E1FC 00000000 */  nop
/* 39600 8005E200 46061082 */  mul.s     $f2, $f2, $f6
/* 39604 8005E204 00000000 */  nop
/* 39608 8005E208 3C013F00 */  lui       $at, 0x3f00
/* 3960C 8005E20C 44810000 */  mtc1      $at, $f0
/* 39610 8005E210 00000000 */  nop
/* 39614 8005E214 46001082 */  mul.s     $f2, $f2, $f0
/* 39618 8005E218 00000000 */  nop
/* 3961C 8005E21C 2404FDFF */  addiu     $a0, $zero, -0x201
/* 39620 8005E220 C7A4002C */  lwc1      $f4, 0x2c($sp)
/* 39624 8005E224 46003206 */  mov.s     $f8, $f6
/* 39628 8005E228 C6400010 */  lwc1      $f0, 0x10($s2)
/* 3962C 8005E22C 46022100 */  add.s     $f4, $f4, $f2
/* 39630 8005E230 46080003 */  div.s     $f0, $f0, $f8
/* 39634 8005E234 E6400018 */  swc1      $f0, 0x18($s2)
/* 39638 8005E238 46062103 */  div.s     $f4, $f4, $f6
/* 3963C 8005E23C E644001C */  swc1      $f4, 0x1c($s2)
/* 39640 8005E240 8E230290 */  lw        $v1, 0x290($s1)
/* 39644 8005E244 8E420000 */  lw        $v0, ($s2)
/* 39648 8005E248 8C630004 */  lw        $v1, 4($v1)
/* 3964C 8005E24C 00441024 */  and       $v0, $v0, $a0
/* 39650 8005E250 AE420000 */  sw        $v0, ($s2)
/* 39654 8005E254 24020002 */  addiu     $v0, $zero, 2
/* 39658 8005E258 0801794B */  j         .L8005E52C
/* 3965C 8005E25C AE430028 */   sw       $v1, 0x28($s2)
.L8005E260:
/* 39660 8005E260 C640001C */  lwc1      $f0, 0x1c($s2)
/* 39664 8005E264 C6420014 */  lwc1      $f2, 0x14($s2)
/* 39668 8005E268 46020001 */  sub.s     $f0, $f0, $f2
/* 3966C 8005E26C C642003C */  lwc1      $f2, 0x3c($s2)
/* 39670 8005E270 46001080 */  add.s     $f2, $f2, $f0
/* 39674 8005E274 4480B000 */  mtc1      $zero, $f22
/* 39678 8005E278 00000000 */  nop
/* 3967C 8005E27C 4616003E */  c.le.s    $f0, $f22
/* 39680 8005E280 E640001C */  swc1      $f0, 0x1c($s2)
/* 39684 8005E284 45000004 */  bc1f      .L8005E298
/* 39688 8005E288 E642003C */   swc1     $f2, 0x3c($s2)
/* 3968C 8005E28C 8E220290 */  lw        $v0, 0x290($s1)
/* 39690 8005E290 8C420008 */  lw        $v0, 8($v0)
/* 39694 8005E294 AE420028 */  sw        $v0, 0x28($s2)
.L8005E298:
/* 39698 8005E298 8E450018 */  lw        $a1, 0x18($s2)
/* 3969C 8005E29C 8E46000C */  lw        $a2, 0xc($s2)
/* 396A0 8005E2A0 0C00E9C5 */  jal       func_8003A714
/* 396A4 8005E2A4 0240202D */   daddu    $a0, $s2, $zero
/* 396A8 8005E2A8 C640001C */  lwc1      $f0, 0x1c($s2)
/* 396AC 8005E2AC 4616003E */  c.le.s    $f0, $f22
/* 396B0 8005E2B0 00000000 */  nop
/* 396B4 8005E2B4 4500009E */  bc1f      .L8005E530
/* 396B8 8005E2B8 27A50028 */   addiu    $a1, $sp, 0x28
/* 396BC 8005E2BC 46000005 */  abs.s     $f0, $f0
/* 396C0 8005E2C0 46000021 */  cvt.d.s   $f0, $f0
/* 396C4 8005E2C4 27A6002C */  addiu     $a2, $sp, 0x2c
/* 396C8 8005E2C8 27A20034 */  addiu     $v0, $sp, 0x34
/* 396CC 8005E2CC 3C014020 */  lui       $at, 0x4020
/* 396D0 8005E2D0 4481A800 */  mtc1      $at, $f21
/* 396D4 8005E2D4 4480A000 */  mtc1      $zero, $f20
/* 396D8 8005E2D8 C6420038 */  lwc1      $f2, 0x38($s2)
/* 396DC 8005E2DC 46340000 */  add.d     $f0, $f0, $f20
/* 396E0 8005E2E0 E7A20028 */  swc1      $f2, 0x28($sp)
/* 396E4 8005E2E4 C642003C */  lwc1      $f2, 0x3c($s2)
/* 396E8 8005E2E8 C6440040 */  lwc1      $f4, 0x40($s2)
/* 396EC 8005E2EC 46200020 */  cvt.s.d   $f0, $f0
/* 396F0 8005E2F0 46001080 */  add.s     $f2, $f2, $f0
/* 396F4 8005E2F4 E7A40030 */  swc1      $f4, 0x30($sp)
/* 396F8 8005E2F8 E7A00034 */  swc1      $f0, 0x34($sp)
/* 396FC 8005E2FC E7A2002C */  swc1      $f2, 0x2c($sp)
/* 39700 8005E300 AFA20010 */  sw        $v0, 0x10($sp)
/* 39704 8005E304 8E440080 */  lw        $a0, 0x80($s2)
/* 39708 8005E308 0C0372D7 */  jal       func_800DCB5C
/* 3970C 8005E30C 27A70030 */   addiu    $a3, $sp, 0x30
/* 39710 8005E310 10400087 */  beqz      $v0, .L8005E530
/* 39714 8005E314 00000000 */   nop
/* 39718 8005E318 C640001C */  lwc1      $f0, 0x1c($s2)
/* 3971C 8005E31C C7A20034 */  lwc1      $f2, 0x34($sp)
/* 39720 8005E320 46000005 */  abs.s     $f0, $f0
/* 39724 8005E324 46000021 */  cvt.d.s   $f0, $f0
/* 39728 8005E328 46340000 */  add.d     $f0, $f0, $f20
/* 3972C 8005E32C 460010A1 */  cvt.d.s   $f2, $f2
/* 39730 8005E330 4620103E */  c.le.d    $f2, $f0
/* 39734 8005E334 00000000 */  nop
/* 39738 8005E338 4500007D */  bc1f      .L8005E530
/* 3973C 8005E33C 00000000 */   nop
/* 39740 8005E340 C7AC0028 */  lwc1      $f12, 0x28($sp)
/* 39744 8005E344 C7AE0030 */  lwc1      $f14, 0x30($sp)
/* 39748 8005E348 8FA60018 */  lw        $a2, 0x18($sp)
/* 3974C 8005E34C 8E220290 */  lw        $v0, 0x290($s1)
/* 39750 8005E350 8FA70020 */  lw        $a3, 0x20($sp)
/* 39754 8005E354 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* 39758 8005E358 8C43000C */  lw        $v1, 0xc($v0)
/* 3975C 8005E35C 8E420000 */  lw        $v0, ($s2)
/* 39760 8005E360 E656001C */  swc1      $f22, 0x1c($s2)
/* 39764 8005E364 E640003C */  swc1      $f0, 0x3c($s2)
/* 39768 8005E368 34420200 */  ori       $v0, $v0, 0x200
/* 3976C 8005E36C AE420000 */  sw        $v0, ($s2)
/* 39770 8005E370 AE430028 */  sw        $v1, 0x28($s2)
.L8005E374:
/* 39774 8005E374 0C00A710 */  jal       func_80029C40
/* 39778 8005E378 00000000 */   nop
/* 3977C 8005E37C E640000C */  swc1      $f0, 0xc($s2)
/* 39780 8005E380 0801794C */  j         .L8005E530
/* 39784 8005E384 AE200288 */   sw       $zero, 0x288($s1)
.L8005E388:
/* 39788 8005E388 C64C0038 */  lwc1      $f12, 0x38($s2)
/* 3978C 8005E38C C64E0040 */  lwc1      $f14, 0x40($s2)
/* 39790 8005E390 8FA60018 */  lw        $a2, 0x18($sp)
/* 39794 8005E394 8E220284 */  lw        $v0, 0x284($s1)
/* 39798 8005E398 8FA70020 */  lw        $a3, 0x20($sp)
/* 3979C 8005E39C C642003C */  lwc1      $f2, 0x3c($s2)
/* 397A0 8005E3A0 00021100 */  sll       $v0, $v0, 4
/* 397A4 8005E3A4 02228021 */  addu      $s0, $s1, $v0
/* 397A8 8005E3A8 46006006 */  mov.s     $f0, $f12
/* 397AC 8005E3AC C6160004 */  lwc1      $f22, 4($s0)
/* 397B0 8005E3B0 C614000C */  lwc1      $f20, 0xc($s0)
/* 397B4 8005E3B4 46007106 */  mov.s     $f4, $f14
/* 397B8 8005E3B8 E7A00028 */  swc1      $f0, 0x28($sp)
/* 397BC 8005E3BC E7A2002C */  swc1      $f2, 0x2c($sp)
/* 397C0 8005E3C0 0C00A7A5 */  jal       func_80029E94
/* 397C4 8005E3C4 E7A40030 */   swc1     $f4, 0x30($sp)
/* 397C8 8005E3C8 C622029C */  lwc1      $f2, 0x29c($s1)
/* 397CC 8005E3CC 4602003E */  c.le.s    $f0, $f2
/* 397D0 8005E3D0 00000000 */  nop
/* 397D4 8005E3D4 45010056 */  bc1t      .L8005E530
/* 397D8 8005E3D8 E7A00034 */   swc1     $f0, 0x34($sp)
/* 397DC 8005E3DC 3C0142B4 */  lui       $at, 0x42b4
/* 397E0 8005E3E0 4481D000 */  mtc1      $at, $f26
.L8005E3E4:
/* 397E4 8005E3E4 82020000 */  lb        $v0, ($s0)
/* 397E8 8005E3E8 14400028 */  bnez      $v0, .L8005E48C
/* 397EC 8005E3EC 00000000 */   nop
/* 397F0 8005E3F0 C64C0038 */  lwc1      $f12, 0x38($s2)
/* 397F4 8005E3F4 C64E0040 */  lwc1      $f14, 0x40($s2)
/* 397F8 8005E3F8 4406B000 */  mfc1      $a2, $f22
/* 397FC 8005E3FC 4407A000 */  mfc1      $a3, $f20
/* 39800 8005E400 0C00A710 */  jal       func_80029C40
/* 39804 8005E404 00000000 */   nop
/* 39808 8005E408 C64C0038 */  lwc1      $f12, 0x38($s2)
/* 3980C 8005E40C C64E0040 */  lwc1      $f14, 0x40($s2)
/* 39810 8005E410 8FA60018 */  lw        $a2, 0x18($sp)
/* 39814 8005E414 8FA70020 */  lw        $a3, 0x20($sp)
/* 39818 8005E418 0C00A710 */  jal       func_80029C40
/* 3981C 8005E41C 46000606 */   mov.s    $f24, $f0
/* 39820 8005E420 4600C306 */  mov.s     $f12, $f24
/* 39824 8005E424 0C00A6FA */  jal       func_80029BE8
/* 39828 8005E428 46000386 */   mov.s    $f14, $f0
/* 3982C 8005E42C 46000005 */  abs.s     $f0, $f0
/* 39830 8005E430 461A003C */  c.lt.s    $f0, $f26
/* 39834 8005E434 00000000 */  nop
/* 39838 8005E438 4501000F */  bc1t      .L8005E478
/* 3983C 8005E43C 00000000 */   nop
/* 39840 8005E440 8E230284 */  lw        $v1, 0x284($s1)
/* 39844 8005E444 8E220280 */  lw        $v0, 0x280($s1)
/* 39848 8005E448 1062000B */  beq       $v1, $v0, .L8005E478
/* 3984C 8005E44C 24620001 */   addiu    $v0, $v1, 1
/* 39850 8005E450 AE220284 */  sw        $v0, 0x284($s1)
/* 39854 8005E454 28420028 */  slti      $v0, $v0, 0x28
/* 39858 8005E458 50400001 */  beql      $v0, $zero, .L8005E460
/* 3985C 8005E45C AE200284 */   sw       $zero, 0x284($s1)
.L8005E460:
/* 39860 8005E460 8E220284 */  lw        $v0, 0x284($s1)
/* 39864 8005E464 00021100 */  sll       $v0, $v0, 4
/* 39868 8005E468 02228021 */  addu      $s0, $s1, $v0
/* 3986C 8005E46C C6160004 */  lwc1      $f22, 4($s0)
/* 39870 8005E470 080178F9 */  j         .L8005E3E4
/* 39874 8005E474 C614000C */   lwc1     $f20, 0xc($s0)
.L8005E478:
/* 39878 8005E478 82020000 */  lb        $v0, ($s0)
/* 3987C 8005E47C 14400003 */  bnez      $v0, .L8005E48C
/* 39880 8005E480 00000000 */   nop
/* 39884 8005E484 0801794C */  j         .L8005E530
/* 39888 8005E488 AE200288 */   sw       $zero, 0x288($s1)
.L8005E48C:
/* 3988C 8005E48C 3C0142B4 */  lui       $at, 0x42b4
/* 39890 8005E490 4481D000 */  mtc1      $at, $f26
.L8005E494:
/* 39894 8005E494 82020000 */  lb        $v0, ($s0)
/* 39898 8005E498 10400024 */  beqz      $v0, .L8005E52C
/* 3989C 8005E49C 24020001 */   addiu    $v0, $zero, 1
/* 398A0 8005E4A0 C64C0038 */  lwc1      $f12, 0x38($s2)
/* 398A4 8005E4A4 C64E0040 */  lwc1      $f14, 0x40($s2)
/* 398A8 8005E4A8 4406B000 */  mfc1      $a2, $f22
/* 398AC 8005E4AC 4407A000 */  mfc1      $a3, $f20
/* 398B0 8005E4B0 0C00A710 */  jal       func_80029C40
/* 398B4 8005E4B4 00000000 */   nop
/* 398B8 8005E4B8 C64C0038 */  lwc1      $f12, 0x38($s2)
/* 398BC 8005E4BC C64E0040 */  lwc1      $f14, 0x40($s2)
/* 398C0 8005E4C0 8FA60018 */  lw        $a2, 0x18($sp)
/* 398C4 8005E4C4 8FA70020 */  lw        $a3, 0x20($sp)
/* 398C8 8005E4C8 0C00A710 */  jal       func_80029C40
/* 398CC 8005E4CC 46000606 */   mov.s    $f24, $f0
/* 398D0 8005E4D0 4600C306 */  mov.s     $f12, $f24
/* 398D4 8005E4D4 0C00A6FA */  jal       func_80029BE8
/* 398D8 8005E4D8 46000386 */   mov.s    $f14, $f0
/* 398DC 8005E4DC 46000005 */  abs.s     $f0, $f0
/* 398E0 8005E4E0 461A003C */  c.lt.s    $f0, $f26
/* 398E4 8005E4E4 00000000 */  nop
/* 398E8 8005E4E8 45010010 */  bc1t      .L8005E52C
/* 398EC 8005E4EC 24020001 */   addiu    $v0, $zero, 1
/* 398F0 8005E4F0 8E230284 */  lw        $v1, 0x284($s1)
/* 398F4 8005E4F4 8E220280 */  lw        $v0, 0x280($s1)
/* 398F8 8005E4F8 1062000B */  beq       $v1, $v0, .L8005E528
/* 398FC 8005E4FC 24620001 */   addiu    $v0, $v1, 1
/* 39900 8005E500 AE220284 */  sw        $v0, 0x284($s1)
/* 39904 8005E504 28420028 */  slti      $v0, $v0, 0x28
/* 39908 8005E508 50400001 */  beql      $v0, $zero, .L8005E510
/* 3990C 8005E50C AE200284 */   sw       $zero, 0x284($s1)
.L8005E510:
/* 39910 8005E510 8E220284 */  lw        $v0, 0x284($s1)
/* 39914 8005E514 00021100 */  sll       $v0, $v0, 4
/* 39918 8005E518 02228021 */  addu      $s0, $s1, $v0
/* 3991C 8005E51C C6160004 */  lwc1      $f22, 4($s0)
/* 39920 8005E520 08017925 */  j         .L8005E494
/* 39924 8005E524 C614000C */   lwc1     $f20, 0xc($s0)
.L8005E528:
/* 39928 8005E528 24020001 */  addiu     $v0, $zero, 1
.L8005E52C:
/* 3992C 8005E52C AE220288 */  sw        $v0, 0x288($s1)
.L8005E530:
/* 39930 8005E530 8FBF0044 */  lw        $ra, 0x44($sp)
/* 39934 8005E534 8FB20040 */  lw        $s2, 0x40($sp)
/* 39938 8005E538 8FB1003C */  lw        $s1, 0x3c($sp)
/* 3993C 8005E53C 8FB00038 */  lw        $s0, 0x38($sp)
/* 39940 8005E540 D7BA0060 */  ldc1      $f26, 0x60($sp)
/* 39944 8005E544 D7B80058 */  ldc1      $f24, 0x58($sp)
/* 39948 8005E548 D7B60050 */  ldc1      $f22, 0x50($sp)
/* 3994C 8005E54C D7B40048 */  ldc1      $f20, 0x48($sp)
/* 39950 8005E550 03E00008 */  jr        $ra
/* 39954 8005E554 27BD0068 */   addiu    $sp, $sp, 0x68
/* 39958 8005E558 00000000 */  nop
/* 3995C 8005E55C 00000000 */  nop
