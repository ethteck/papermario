.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802440BC
/* 16491C 802440BC 3C048025 */  lui       $a0, %hi(D_80249B84)
/* 164920 802440C0 8C849B84 */  lw        $a0, %lo(D_80249B84)($a0)
/* 164924 802440C4 27BDFF08 */  addiu     $sp, $sp, -0xf8
/* 164928 802440C8 AFBF00C4 */  sw        $ra, 0xc4($sp)
/* 16492C 802440CC AFBE00C0 */  sw        $fp, 0xc0($sp)
/* 164930 802440D0 AFB700BC */  sw        $s7, 0xbc($sp)
/* 164934 802440D4 AFB600B8 */  sw        $s6, 0xb8($sp)
/* 164938 802440D8 AFB500B4 */  sw        $s5, 0xb4($sp)
/* 16493C 802440DC AFB400B0 */  sw        $s4, 0xb0($sp)
/* 164940 802440E0 AFB300AC */  sw        $s3, 0xac($sp)
/* 164944 802440E4 AFB200A8 */  sw        $s2, 0xa8($sp)
/* 164948 802440E8 AFB100A4 */  sw        $s1, 0xa4($sp)
/* 16494C 802440EC AFB000A0 */  sw        $s0, 0xa0($sp)
/* 164950 802440F0 F7BE00F0 */  sdc1      $f30, 0xf0($sp)
/* 164954 802440F4 F7BC00E8 */  sdc1      $f28, 0xe8($sp)
/* 164958 802440F8 F7BA00E0 */  sdc1      $f26, 0xe0($sp)
/* 16495C 802440FC F7B800D8 */  sdc1      $f24, 0xd8($sp)
/* 164960 80244100 F7B600D0 */  sdc1      $f22, 0xd0($sp)
/* 164964 80244104 F7B400C8 */  sdc1      $f20, 0xc8($sp)
/* 164968 80244108 80830004 */  lb        $v1, 4($a0)
/* 16496C 8024410C 24020004 */  addiu     $v0, $zero, 4
/* 164970 80244110 146201E1 */  bne       $v1, $v0, .L80244898
/* 164974 80244114 00000000 */   nop
/* 164978 80244118 90820003 */  lbu       $v0, 3($a0)
/* 16497C 8024411C 2C420004 */  sltiu     $v0, $v0, 4
/* 164980 80244120 104001DD */  beqz      $v0, .L80244898
/* 164984 80244124 00000000 */   nop
/* 164988 80244128 90820003 */  lbu       $v0, 3($a0)
/* 16498C 8024412C 3C038025 */  lui       $v1, %hi(D_8024C094)
/* 164990 80244130 8C63C094 */  lw        $v1, %lo(D_8024C094)($v1)
/* 164994 80244134 104301D8 */  beq       $v0, $v1, .L80244898
/* 164998 80244138 24040002 */   addiu    $a0, $zero, 2
/* 16499C 8024413C 3C028025 */  lui       $v0, %hi(D_8024C098_C09918)
/* 1649A0 80244140 8042C098 */  lb        $v0, %lo(D_8024C098_C09918)($v0)
/* 1649A4 80244144 104401D4 */  beq       $v0, $a0, .L80244898
/* 1649A8 80244148 24020001 */   addiu    $v0, $zero, 1
/* 1649AC 8024414C 10620011 */  beq       $v1, $v0, .L80244194
/* 1649B0 80244150 0064102A */   slt      $v0, $v1, $a0
/* 1649B4 80244154 10400005 */  beqz      $v0, .L8024416C
/* 1649B8 80244158 00000000 */   nop
/* 1649BC 8024415C 10600007 */  beqz      $v1, .L8024417C
/* 1649C0 80244160 00000000 */   nop
/* 1649C4 80244164 0809106F */  j         .L802441BC
/* 1649C8 80244168 00000000 */   nop
.L8024416C:
/* 1649CC 8024416C 1064000F */  beq       $v1, $a0, .L802441AC
/* 1649D0 80244170 00000000 */   nop
/* 1649D4 80244174 0809106F */  j         .L802441BC
/* 1649D8 80244178 00000000 */   nop
.L8024417C:
/* 1649DC 8024417C 3C014302 */  lui       $at, 0x4302
/* 1649E0 80244180 4481C000 */  mtc1      $at, $f24
/* 1649E4 80244184 3C0142B4 */  lui       $at, 0x42b4
/* 1649E8 80244188 4481B000 */  mtc1      $at, $f22
/* 1649EC 8024418C 08091073 */  j         .L802441CC
/* 1649F0 80244190 00000000 */   nop
.L80244194:
/* 1649F4 80244194 3C01433E */  lui       $at, 0x433e
/* 1649F8 80244198 4481C000 */  mtc1      $at, $f24
/* 1649FC 8024419C 3C0142B4 */  lui       $at, 0x42b4
/* 164A00 802441A0 4481B000 */  mtc1      $at, $f22
/* 164A04 802441A4 08091073 */  j         .L802441CC
/* 164A08 802441A8 00000000 */   nop
.L802441AC:
/* 164A0C 802441AC 3C014302 */  lui       $at, 0x4302
/* 164A10 802441B0 4481C000 */  mtc1      $at, $f24
/* 164A14 802441B4 08091071 */  j         .L802441C4
/* 164A18 802441B8 00000000 */   nop
.L802441BC:
/* 164A1C 802441BC 3C01433E */  lui       $at, 0x433e
/* 164A20 802441C0 4481C000 */  mtc1      $at, $f24
.L802441C4:
/* 164A24 802441C4 3C014316 */  lui       $at, 0x4316
/* 164A28 802441C8 4481B000 */  mtc1      $at, $f22
.L802441CC:
/* 164A2C 802441CC 3C028025 */  lui       $v0, %hi(D_80249B84)
/* 164A30 802441D0 8C429B84 */  lw        $v0, %lo(D_80249B84)($v0)
/* 164A34 802441D4 90430003 */  lbu       $v1, 3($v0)
/* 164A38 802441D8 24020001 */  addiu     $v0, $zero, 1
/* 164A3C 802441DC 10620012 */  beq       $v1, $v0, .L80244228
/* 164A40 802441E0 00000000 */   nop
/* 164A44 802441E4 28620002 */  slti      $v0, $v1, 2
/* 164A48 802441E8 50400005 */  beql      $v0, $zero, .L80244200
/* 164A4C 802441EC 24020002 */   addiu    $v0, $zero, 2
/* 164A50 802441F0 10600007 */  beqz      $v1, .L80244210
/* 164A54 802441F4 00000000 */   nop
/* 164A58 802441F8 08091094 */  j         .L80244250
/* 164A5C 802441FC 00000000 */   nop
.L80244200:
/* 164A60 80244200 1062000F */  beq       $v1, $v0, .L80244240
/* 164A64 80244204 00000000 */   nop
/* 164A68 80244208 08091094 */  j         .L80244250
/* 164A6C 8024420C 00000000 */   nop
.L80244210:
/* 164A70 80244210 3C014302 */  lui       $at, 0x4302
/* 164A74 80244214 44811000 */  mtc1      $at, $f2
/* 164A78 80244218 3C0142B4 */  lui       $at, 0x42b4
/* 164A7C 8024421C 44810000 */  mtc1      $at, $f0
/* 164A80 80244220 08091099 */  j         .L80244264
/* 164A84 80244224 3C130001 */   lui      $s3, 1
.L80244228:
/* 164A88 80244228 3C01433E */  lui       $at, 0x433e
/* 164A8C 8024422C 44811000 */  mtc1      $at, $f2
/* 164A90 80244230 3C0142B4 */  lui       $at, 0x42b4
/* 164A94 80244234 44810000 */  mtc1      $at, $f0
/* 164A98 80244238 08091099 */  j         .L80244264
/* 164A9C 8024423C 3C130001 */   lui      $s3, 1
.L80244240:
/* 164AA0 80244240 3C014302 */  lui       $at, 0x4302
/* 164AA4 80244244 44811000 */  mtc1      $at, $f2
/* 164AA8 80244248 08091096 */  j         .L80244258
/* 164AAC 8024424C 00000000 */   nop
.L80244250:
/* 164AB0 80244250 3C01433E */  lui       $at, 0x433e
/* 164AB4 80244254 44811000 */  mtc1      $at, $f2
.L80244258:
/* 164AB8 80244258 3C014316 */  lui       $at, 0x4316
/* 164ABC 8024425C 44810000 */  mtc1      $at, $f0
/* 164AC0 80244260 3C130001 */  lui       $s3, 1
.L80244264:
/* 164AC4 80244264 36731630 */  ori       $s3, $s3, 0x1630
/* 164AC8 80244268 3C15DA38 */  lui       $s5, 0xda38
/* 164ACC 8024426C 36B50002 */  ori       $s5, $s5, 2
/* 164AD0 80244270 3C16D838 */  lui       $s6, 0xd838
/* 164AD4 80244274 36D60002 */  ori       $s6, $s6, 2
/* 164AD8 80244278 4600C306 */  mov.s     $f12, $f24
/* 164ADC 8024427C 44061000 */  mfc1      $a2, $f2
/* 164AE0 80244280 44070000 */  mfc1      $a3, $f0
/* 164AE4 80244284 0C00A720 */  jal       atan2
/* 164AE8 80244288 4600B386 */   mov.s    $f14, $f22
/* 164AEC 8024428C 3C08DC08 */  lui       $t0, 0xdc08
/* 164AF0 80244290 35080008 */  ori       $t0, $t0, 8
/* 164AF4 80244294 27A40020 */  addiu     $a0, $sp, 0x20
/* 164AF8 80244298 3C11800A */  lui       $s1, %hi(gMasterGfxPos)
/* 164AFC 8024429C 2631A66C */  addiu     $s1, $s1, %lo(gMasterGfxPos)
/* 164B00 802442A0 4480A000 */  mtc1      $zero, $f20
/* 164B04 802442A4 8E220000 */  lw        $v0, ($s1)
/* 164B08 802442A8 3C0643A0 */  lui       $a2, 0x43a0
/* 164B0C 802442AC 3C074370 */  lui       $a3, 0x4370
/* 164B10 802442B0 3C01C2C8 */  lui       $at, 0xc2c8
/* 164B14 802442B4 44811000 */  mtc1      $at, $f2
/* 164B18 802442B8 3C0142C8 */  lui       $at, 0x42c8
/* 164B1C 802442BC 44812000 */  mtc1      $at, $f4
/* 164B20 802442C0 3C013F80 */  lui       $at, 0x3f80
/* 164B24 802442C4 4481D000 */  mtc1      $at, $f26
/* 164B28 802442C8 0040182D */  daddu     $v1, $v0, $zero
/* 164B2C 802442CC 4405A000 */  mfc1      $a1, $f20
/* 164B30 802442D0 24420008 */  addiu     $v0, $v0, 8
/* 164B34 802442D4 AE220000 */  sw        $v0, ($s1)
/* 164B38 802442D8 3C028025 */  lui       $v0, %hi(D_80249D60)
/* 164B3C 802442DC 24429D60 */  addiu     $v0, $v0, %lo(D_80249D60)
/* 164B40 802442E0 AC680000 */  sw        $t0, ($v1)
/* 164B44 802442E4 AC620004 */  sw        $v0, 4($v1)
/* 164B48 802442E8 E7A20014 */  swc1      $f2, 0x14($sp)
/* 164B4C 802442EC 3C0142B4 */  lui       $at, 0x42b4
/* 164B50 802442F0 44811000 */  mtc1      $at, $f2
/* 164B54 802442F4 46000007 */  neg.s     $f0, $f0
/* 164B58 802442F8 E7B40010 */  swc1      $f20, 0x10($sp)
/* 164B5C 802442FC E7A40018 */  swc1      $f4, 0x18($sp)
/* 164B60 80244300 E7BA001C */  swc1      $f26, 0x1c($sp)
/* 164B64 80244304 0C018E44 */  jal       guOrthoF
/* 164B68 80244308 46020701 */   sub.s    $f28, $f0, $f2
/* 164B6C 8024430C 27A40020 */  addiu     $a0, $sp, 0x20
/* 164B70 80244310 3C128007 */  lui       $s2, %hi(gMatrixListPos)
/* 164B74 80244314 265241F0 */  addiu     $s2, $s2, %lo(gMatrixListPos)
/* 164B78 80244318 3C14800A */  lui       $s4, %hi(gDisplayContext)
/* 164B7C 8024431C 2694A674 */  addiu     $s4, $s4, %lo(gDisplayContext)
/* 164B80 80244320 96450000 */  lhu       $a1, ($s2)
/* 164B84 80244324 8E820000 */  lw        $v0, ($s4)
/* 164B88 80244328 00052980 */  sll       $a1, $a1, 6
/* 164B8C 8024432C 00B32821 */  addu      $a1, $a1, $s3
/* 164B90 80244330 0C019D40 */  jal       guMtxF2L
/* 164B94 80244334 00452821 */   addu     $a1, $v0, $a1
/* 164B98 80244338 3C03DA38 */  lui       $v1, 0xda38
/* 164B9C 8024433C 34630007 */  ori       $v1, $v1, 7
/* 164BA0 80244340 27A40020 */  addiu     $a0, $sp, 0x20
/* 164BA4 80244344 8E280000 */  lw        $t0, ($s1)
/* 164BA8 80244348 3C014080 */  lui       $at, 0x4080
/* 164BAC 8024434C 44810000 */  mtc1      $at, $f0
/* 164BB0 80244350 4407A000 */  mfc1      $a3, $f20
/* 164BB4 80244354 96420000 */  lhu       $v0, ($s2)
/* 164BB8 80244358 3C01BF80 */  lui       $at, 0xbf80
/* 164BBC 8024435C 4481F000 */  mtc1      $at, $f30
/* 164BC0 80244360 0100482D */  daddu     $t1, $t0, $zero
/* 164BC4 80244364 25080008 */  addiu     $t0, $t0, 8
/* 164BC8 80244368 AE280000 */  sw        $t0, ($s1)
/* 164BCC 8024436C AD230000 */  sw        $v1, ($t1)
/* 164BD0 80244370 24430001 */  addiu     $v1, $v0, 1
/* 164BD4 80244374 3042FFFF */  andi      $v0, $v0, 0xffff
/* 164BD8 80244378 00021180 */  sll       $v0, $v0, 6
/* 164BDC 8024437C 00531021 */  addu      $v0, $v0, $s3
/* 164BE0 80244380 4600C180 */  add.s     $f6, $f24, $f0
/* 164BE4 80244384 A6430000 */  sh        $v1, ($s2)
/* 164BE8 80244388 8E830000 */  lw        $v1, ($s4)
/* 164BEC 8024438C 4600B000 */  add.s     $f0, $f22, $f0
/* 164BF0 80244390 00621821 */  addu      $v1, $v1, $v0
/* 164BF4 80244394 25020008 */  addiu     $v0, $t0, 8
/* 164BF8 80244398 AD230004 */  sw        $v1, 4($t1)
/* 164BFC 8024439C 3C0BDE00 */  lui       $t3, 0xde00
/* 164C00 802443A0 AE220000 */  sw        $v0, ($s1)
/* 164C04 802443A4 3C028025 */  lui       $v0, %hi(D_8024B600)
/* 164C08 802443A8 2442B600 */  addiu     $v0, $v0, %lo(D_8024B600)
/* 164C0C 802443AC AD020004 */  sw        $v0, 4($t0)
/* 164C10 802443B0 25020010 */  addiu     $v0, $t0, 0x10
/* 164C14 802443B4 AD0B0000 */  sw        $t3, ($t0)
/* 164C18 802443B8 3C0BFA00 */  lui       $t3, 0xfa00
/* 164C1C 802443BC AE220000 */  sw        $v0, ($s1)
/* 164C20 802443C0 24020080 */  addiu     $v0, $zero, 0x80
/* 164C24 802443C4 AD02000C */  sw        $v0, 0xc($t0)
/* 164C28 802443C8 25020018 */  addiu     $v0, $t0, 0x18
/* 164C2C 802443CC AD0B0008 */  sw        $t3, 8($t0)
/* 164C30 802443D0 44053000 */  mfc1      $a1, $f6
/* 164C34 802443D4 44060000 */  mfc1      $a2, $f0
/* 164C38 802443D8 3C0BFB00 */  lui       $t3, 0xfb00
/* 164C3C 802443DC AE220000 */  sw        $v0, ($s1)
/* 164C40 802443E0 AD0B0010 */  sw        $t3, 0x10($t0)
/* 164C44 802443E4 0C019E40 */  jal       guTranslateF
/* 164C48 802443E8 AD000014 */   sw       $zero, 0x14($t0)
/* 164C4C 802443EC 27B00060 */  addiu     $s0, $sp, 0x60
/* 164C50 802443F0 4405F000 */  mfc1      $a1, $f30
/* 164C54 802443F4 4406D000 */  mfc1      $a2, $f26
/* 164C58 802443F8 4407D000 */  mfc1      $a3, $f26
/* 164C5C 802443FC 0C019DF0 */  jal       guScaleF
/* 164C60 80244400 0200202D */   daddu    $a0, $s0, $zero
/* 164C64 80244404 0200202D */  daddu     $a0, $s0, $zero
/* 164C68 80244408 27A50020 */  addiu     $a1, $sp, 0x20
/* 164C6C 8024440C 0C019D80 */  jal       guMtxCatF
/* 164C70 80244410 00A0302D */   daddu    $a2, $a1, $zero
/* 164C74 80244414 4405E000 */  mfc1      $a1, $f28
/* 164C78 80244418 4406A000 */  mfc1      $a2, $f20
/* 164C7C 8024441C 4407A000 */  mfc1      $a3, $f20
/* 164C80 80244420 0200202D */  daddu     $a0, $s0, $zero
/* 164C84 80244424 0C019EC8 */  jal       guRotateF
/* 164C88 80244428 E7BA0010 */   swc1     $f26, 0x10($sp)
/* 164C8C 8024442C 0200202D */  daddu     $a0, $s0, $zero
/* 164C90 80244430 27A50020 */  addiu     $a1, $sp, 0x20
/* 164C94 80244434 0C019D80 */  jal       guMtxCatF
/* 164C98 80244438 00A0302D */   daddu    $a2, $a1, $zero
/* 164C9C 8024443C 27A40020 */  addiu     $a0, $sp, 0x20
/* 164CA0 80244440 96450000 */  lhu       $a1, ($s2)
/* 164CA4 80244444 8E820000 */  lw        $v0, ($s4)
/* 164CA8 80244448 00052980 */  sll       $a1, $a1, 6
/* 164CAC 8024444C 00B32821 */  addu      $a1, $a1, $s3
/* 164CB0 80244450 0C019D40 */  jal       guMtxF2L
/* 164CB4 80244454 00452821 */   addu     $a1, $v0, $a1
/* 164CB8 80244458 0200202D */  daddu     $a0, $s0, $zero
/* 164CBC 8024445C 3C1E8007 */  lui       $fp, %hi(gGameStatusPtr)
/* 164CC0 80244460 27DE419C */  addiu     $fp, $fp, %lo(gGameStatusPtr)
/* 164CC4 80244464 8E280000 */  lw        $t0, ($s1)
/* 164CC8 80244468 4406A000 */  mfc1      $a2, $f20
/* 164CCC 8024446C 4407A000 */  mfc1      $a3, $f20
/* 164CD0 80244470 96450000 */  lhu       $a1, ($s2)
/* 164CD4 80244474 0100482D */  daddu     $t1, $t0, $zero
/* 164CD8 80244478 25080008 */  addiu     $t0, $t0, 8
/* 164CDC 8024447C 30A2FFFF */  andi      $v0, $a1, 0xffff
/* 164CE0 80244480 00021180 */  sll       $v0, $v0, 6
/* 164CE4 80244484 AE280000 */  sw        $t0, ($s1)
/* 164CE8 80244488 AD350000 */  sw        $s5, ($t1)
/* 164CEC 8024448C 8E830000 */  lw        $v1, ($s4)
/* 164CF0 80244490 00531021 */  addu      $v0, $v0, $s3
/* 164CF4 80244494 00621821 */  addu      $v1, $v1, $v0
/* 164CF8 80244498 AD230004 */  sw        $v1, 4($t1)
/* 164CFC 8024449C 3C0BDE00 */  lui       $t3, 0xde00
/* 164D00 802444A0 AD0B0000 */  sw        $t3, ($t0)
/* 164D04 802444A4 3C0B8025 */  lui       $t3, %hi(D_8024B6F0)
/* 164D08 802444A8 256BB6F0 */  addiu     $t3, $t3, %lo(D_8024B6F0)
/* 164D0C 802444AC AD0B0004 */  sw        $t3, 4($t0)
/* 164D10 802444B0 AD160008 */  sw        $s6, 8($t0)
/* 164D14 802444B4 8FC20000 */  lw        $v0, ($fp)
/* 164D18 802444B8 240B0040 */  addiu     $t3, $zero, 0x40
/* 164D1C 802444BC AD0B000C */  sw        $t3, 0xc($t0)
/* 164D20 802444C0 94430134 */  lhu       $v1, 0x134($v0)
/* 164D24 802444C4 3C0B8888 */  lui       $t3, 0x8888
/* 164D28 802444C8 356B8889 */  ori       $t3, $t3, 0x8889
/* 164D2C 802444CC 006B0019 */  multu     $v1, $t3
/* 164D30 802444D0 24A50001 */  addiu     $a1, $a1, 1
/* 164D34 802444D4 25020008 */  addiu     $v0, $t0, 8
/* 164D38 802444D8 A6450000 */  sh        $a1, ($s2)
/* 164D3C 802444DC AE220000 */  sw        $v0, ($s1)
/* 164D40 802444E0 00005810 */  mfhi      $t3
/* 164D44 802444E4 000B28C2 */  srl       $a1, $t3, 3
/* 164D48 802444E8 00051100 */  sll       $v0, $a1, 4
/* 164D4C 802444EC 00451023 */  subu      $v0, $v0, $a1
/* 164D50 802444F0 00621823 */  subu      $v1, $v1, $v0
/* 164D54 802444F4 3063FFFF */  andi      $v1, $v1, 0xffff
/* 164D58 802444F8 00031880 */  sll       $v1, $v1, 2
/* 164D5C 802444FC 3C058025 */  lui       $a1, %hi(D_80249D70)
/* 164D60 80244500 00A32821 */  addu      $a1, $a1, $v1
/* 164D64 80244504 8CA59D70 */  lw        $a1, %lo(D_80249D70)($a1)
/* 164D68 80244508 25080010 */  addiu     $t0, $t0, 0x10
/* 164D6C 8024450C 0C019E40 */  jal       guTranslateF
/* 164D70 80244510 AE280000 */   sw       $t0, ($s1)
/* 164D74 80244514 0200202D */  daddu     $a0, $s0, $zero
/* 164D78 80244518 27A50020 */  addiu     $a1, $sp, 0x20
/* 164D7C 8024451C 0C019D80 */  jal       guMtxCatF
/* 164D80 80244520 00A0302D */   daddu    $a2, $a1, $zero
/* 164D84 80244524 27A40020 */  addiu     $a0, $sp, 0x20
/* 164D88 80244528 96450000 */  lhu       $a1, ($s2)
/* 164D8C 8024452C 8E820000 */  lw        $v0, ($s4)
/* 164D90 80244530 00052980 */  sll       $a1, $a1, 6
/* 164D94 80244534 00B32821 */  addu      $a1, $a1, $s3
/* 164D98 80244538 0C019D40 */  jal       guMtxF2L
/* 164D9C 8024453C 00452821 */   addu     $a1, $v0, $a1
/* 164DA0 80244540 3C178025 */  lui       $s7, %hi(D_80249D70)
/* 164DA4 80244544 26F79D70 */  addiu     $s7, $s7, %lo(D_80249D70)
/* 164DA8 80244548 8E290000 */  lw        $t1, ($s1)
/* 164DAC 8024454C 96430000 */  lhu       $v1, ($s2)
/* 164DB0 80244550 0120202D */  daddu     $a0, $t1, $zero
/* 164DB4 80244554 25290008 */  addiu     $t1, $t1, 8
/* 164DB8 80244558 24620001 */  addiu     $v0, $v1, 1
/* 164DBC 8024455C 3063FFFF */  andi      $v1, $v1, 0xffff
/* 164DC0 80244560 00031980 */  sll       $v1, $v1, 6
/* 164DC4 80244564 00731821 */  addu      $v1, $v1, $s3
/* 164DC8 80244568 AE290000 */  sw        $t1, ($s1)
/* 164DCC 8024456C AC950000 */  sw        $s5, ($a0)
/* 164DD0 80244570 A6420000 */  sh        $v0, ($s2)
/* 164DD4 80244574 8E820000 */  lw        $v0, ($s4)
/* 164DD8 80244578 8FC50000 */  lw        $a1, ($fp)
/* 164DDC 8024457C 00431021 */  addu      $v0, $v0, $v1
/* 164DE0 80244580 AC820004 */  sw        $v0, 4($a0)
/* 164DE4 80244584 94A30134 */  lhu       $v1, 0x134($a1)
/* 164DE8 80244588 25220008 */  addiu     $v0, $t1, 8
/* 164DEC 8024458C AE220000 */  sw        $v0, ($s1)
/* 164DF0 80244590 000318C0 */  sll       $v1, $v1, 3
/* 164DF4 80244594 04610002 */  bgez      $v1, .L802445A0
/* 164DF8 80244598 0060102D */   daddu    $v0, $v1, $zero
/* 164DFC 8024459C 246201FF */  addiu     $v0, $v1, 0x1ff
.L802445A0:
/* 164E00 802445A0 00021243 */  sra       $v0, $v0, 9
/* 164E04 802445A4 00021240 */  sll       $v0, $v0, 9
/* 164E08 802445A8 00621023 */  subu      $v0, $v1, $v0
/* 164E0C 802445AC 30420FFF */  andi      $v0, $v0, 0xfff
/* 164E10 802445B0 00021300 */  sll       $v0, $v0, 0xc
/* 164E14 802445B4 3C0BF200 */  lui       $t3, 0xf200
/* 164E18 802445B8 004B1025 */  or        $v0, $v0, $t3
/* 164E1C 802445BC AD220000 */  sw        $v0, ($t1)
/* 164E20 802445C0 94A20134 */  lhu       $v0, 0x134($a1)
/* 164E24 802445C4 000250C0 */  sll       $t2, $v0, 3
/* 164E28 802445C8 05410002 */  bgez      $t2, .L802445D4
/* 164E2C 802445CC 0140102D */   daddu    $v0, $t2, $zero
/* 164E30 802445D0 254201FF */  addiu     $v0, $t2, 0x1ff
.L802445D4:
/* 164E34 802445D4 3C03E6E6 */  lui       $v1, 0xe6e6
/* 164E38 802445D8 3463E6FF */  ori       $v1, $v1, 0xe6ff
/* 164E3C 802445DC 3C08E828 */  lui       $t0, 0xe828
/* 164E40 802445E0 3508A000 */  ori       $t0, $t0, 0xa000
/* 164E44 802445E4 27A40020 */  addiu     $a0, $sp, 0x20
/* 164E48 802445E8 00021243 */  sra       $v0, $v0, 9
/* 164E4C 802445EC 00021240 */  sll       $v0, $v0, 9
/* 164E50 802445F0 01421023 */  subu      $v0, $t2, $v0
/* 164E54 802445F4 2442003C */  addiu     $v0, $v0, 0x3c
/* 164E58 802445F8 30420FFF */  andi      $v0, $v0, 0xfff
/* 164E5C 802445FC 00021300 */  sll       $v0, $v0, 0xc
/* 164E60 80244600 3C0B0100 */  lui       $t3, 0x100
/* 164E64 80244604 004B1025 */  or        $v0, $v0, $t3
/* 164E68 80244608 AD220004 */  sw        $v0, 4($t1)
/* 164E6C 8024460C 25220010 */  addiu     $v0, $t1, 0x10
/* 164E70 80244610 3C0BDE00 */  lui       $t3, 0xde00
/* 164E74 80244614 AE220000 */  sw        $v0, ($s1)
/* 164E78 80244618 AD2B0008 */  sw        $t3, 8($t1)
/* 164E7C 8024461C 3C0B8025 */  lui       $t3, %hi(D_8024B708)
/* 164E80 80244620 256BB708 */  addiu     $t3, $t3, %lo(D_8024B708)
/* 164E84 80244624 4405C000 */  mfc1      $a1, $f24
/* 164E88 80244628 4406B000 */  mfc1      $a2, $f22
/* 164E8C 8024462C 4407A000 */  mfc1      $a3, $f20
/* 164E90 80244630 25220018 */  addiu     $v0, $t1, 0x18
/* 164E94 80244634 AD2B000C */  sw        $t3, 0xc($t1)
/* 164E98 80244638 240B0040 */  addiu     $t3, $zero, 0x40
/* 164E9C 8024463C AE220000 */  sw        $v0, ($s1)
/* 164EA0 80244640 25220020 */  addiu     $v0, $t1, 0x20
/* 164EA4 80244644 AD2B0014 */  sw        $t3, 0x14($t1)
/* 164EA8 80244648 3C0BFA00 */  lui       $t3, 0xfa00
/* 164EAC 8024464C AD360010 */  sw        $s6, 0x10($t1)
/* 164EB0 80244650 AE220000 */  sw        $v0, ($s1)
/* 164EB4 80244654 25220028 */  addiu     $v0, $t1, 0x28
/* 164EB8 80244658 AD2B0018 */  sw        $t3, 0x18($t1)
/* 164EBC 8024465C 3C0BFB00 */  lui       $t3, 0xfb00
/* 164EC0 80244660 AD23001C */  sw        $v1, 0x1c($t1)
/* 164EC4 80244664 AE220000 */  sw        $v0, ($s1)
/* 164EC8 80244668 AD2B0020 */  sw        $t3, 0x20($t1)
/* 164ECC 8024466C 0C019E40 */  jal       guTranslateF
/* 164ED0 80244670 AD280024 */   sw       $t0, 0x24($t1)
/* 164ED4 80244674 4405F000 */  mfc1      $a1, $f30
/* 164ED8 80244678 4406D000 */  mfc1      $a2, $f26
/* 164EDC 8024467C 4407D000 */  mfc1      $a3, $f26
/* 164EE0 80244680 0C019DF0 */  jal       guScaleF
/* 164EE4 80244684 0200202D */   daddu    $a0, $s0, $zero
/* 164EE8 80244688 0200202D */  daddu     $a0, $s0, $zero
/* 164EEC 8024468C 27A50020 */  addiu     $a1, $sp, 0x20
/* 164EF0 80244690 0C019D80 */  jal       guMtxCatF
/* 164EF4 80244694 00A0302D */   daddu    $a2, $a1, $zero
/* 164EF8 80244698 4405E000 */  mfc1      $a1, $f28
/* 164EFC 8024469C 4406A000 */  mfc1      $a2, $f20
/* 164F00 802446A0 4407A000 */  mfc1      $a3, $f20
/* 164F04 802446A4 0200202D */  daddu     $a0, $s0, $zero
/* 164F08 802446A8 0C019EC8 */  jal       guRotateF
/* 164F0C 802446AC E7BA0010 */   swc1     $f26, 0x10($sp)
/* 164F10 802446B0 0200202D */  daddu     $a0, $s0, $zero
/* 164F14 802446B4 27A50020 */  addiu     $a1, $sp, 0x20
/* 164F18 802446B8 0C019D80 */  jal       guMtxCatF
/* 164F1C 802446BC 00A0302D */   daddu    $a2, $a1, $zero
/* 164F20 802446C0 27A40020 */  addiu     $a0, $sp, 0x20
/* 164F24 802446C4 96450000 */  lhu       $a1, ($s2)
/* 164F28 802446C8 8E820000 */  lw        $v0, ($s4)
/* 164F2C 802446CC 00052980 */  sll       $a1, $a1, 6
/* 164F30 802446D0 00B32821 */  addu      $a1, $a1, $s3
/* 164F34 802446D4 0C019D40 */  jal       guMtxF2L
/* 164F38 802446D8 00452821 */   addu     $a1, $v0, $a1
/* 164F3C 802446DC 8E280000 */  lw        $t0, ($s1)
/* 164F40 802446E0 4406A000 */  mfc1      $a2, $f20
/* 164F44 802446E4 96450000 */  lhu       $a1, ($s2)
/* 164F48 802446E8 00C0382D */  daddu     $a3, $a2, $zero
/* 164F4C 802446EC 0100202D */  daddu     $a0, $t0, $zero
/* 164F50 802446F0 25080008 */  addiu     $t0, $t0, 8
/* 164F54 802446F4 30A3FFFF */  andi      $v1, $a1, 0xffff
/* 164F58 802446F8 00031980 */  sll       $v1, $v1, 6
/* 164F5C 802446FC 00731821 */  addu      $v1, $v1, $s3
/* 164F60 80244700 24A50001 */  addiu     $a1, $a1, 1
/* 164F64 80244704 AC950000 */  sw        $s5, ($a0)
/* 164F68 80244708 8E820000 */  lw        $v0, ($s4)
/* 164F6C 8024470C 8FC90000 */  lw        $t1, ($fp)
/* 164F70 80244710 00431021 */  addu      $v0, $v0, $v1
/* 164F74 80244714 AC820004 */  sw        $v0, 4($a0)
/* 164F78 80244718 3C0BDE00 */  lui       $t3, 0xde00
/* 164F7C 8024471C AD0B0000 */  sw        $t3, ($t0)
/* 164F80 80244720 3C0B8025 */  lui       $t3, %hi(D_8024B6F0)
/* 164F84 80244724 256BB6F0 */  addiu     $t3, $t3, %lo(D_8024B6F0)
/* 164F88 80244728 AD0B0004 */  sw        $t3, 4($t0)
/* 164F8C 8024472C 240B0040 */  addiu     $t3, $zero, 0x40
/* 164F90 80244730 0200202D */  daddu     $a0, $s0, $zero
/* 164F94 80244734 AD160008 */  sw        $s6, 8($t0)
/* 164F98 80244738 AD0B000C */  sw        $t3, 0xc($t0)
/* 164F9C 8024473C 95230134 */  lhu       $v1, 0x134($t1)
/* 164FA0 80244740 3C0B8888 */  lui       $t3, 0x8888
/* 164FA4 80244744 356B8889 */  ori       $t3, $t3, 0x8889
/* 164FA8 80244748 006B0019 */  multu     $v1, $t3
/* 164FAC 8024474C 25020008 */  addiu     $v0, $t0, 8
/* 164FB0 80244750 AE280000 */  sw        $t0, ($s1)
/* 164FB4 80244754 A6450000 */  sh        $a1, ($s2)
/* 164FB8 80244758 AE220000 */  sw        $v0, ($s1)
/* 164FBC 8024475C 00005810 */  mfhi      $t3
/* 164FC0 80244760 000B28C2 */  srl       $a1, $t3, 3
/* 164FC4 80244764 00051100 */  sll       $v0, $a1, 4
/* 164FC8 80244768 00451023 */  subu      $v0, $v0, $a1
/* 164FCC 8024476C 00621823 */  subu      $v1, $v1, $v0
/* 164FD0 80244770 3063FFFF */  andi      $v1, $v1, 0xffff
/* 164FD4 80244774 00031880 */  sll       $v1, $v1, 2
/* 164FD8 80244778 00771821 */  addu      $v1, $v1, $s7
/* 164FDC 8024477C 8C650000 */  lw        $a1, ($v1)
/* 164FE0 80244780 25080010 */  addiu     $t0, $t0, 0x10
/* 164FE4 80244784 0C019E40 */  jal       guTranslateF
/* 164FE8 80244788 AE280000 */   sw       $t0, ($s1)
/* 164FEC 8024478C 0200202D */  daddu     $a0, $s0, $zero
/* 164FF0 80244790 27A50020 */  addiu     $a1, $sp, 0x20
/* 164FF4 80244794 0C019D80 */  jal       guMtxCatF
/* 164FF8 80244798 00A0302D */   daddu    $a2, $a1, $zero
/* 164FFC 8024479C 27A40020 */  addiu     $a0, $sp, 0x20
/* 165000 802447A0 96450000 */  lhu       $a1, ($s2)
/* 165004 802447A4 8E820000 */  lw        $v0, ($s4)
/* 165008 802447A8 00052980 */  sll       $a1, $a1, 6
/* 16500C 802447AC 00B32821 */  addu      $a1, $a1, $s3
/* 165010 802447B0 0C019D40 */  jal       guMtxF2L
/* 165014 802447B4 00452821 */   addu     $a1, $v0, $a1
/* 165018 802447B8 8E250000 */  lw        $a1, ($s1)
/* 16501C 802447BC 96430000 */  lhu       $v1, ($s2)
/* 165020 802447C0 00A0202D */  daddu     $a0, $a1, $zero
/* 165024 802447C4 24A50008 */  addiu     $a1, $a1, 8
/* 165028 802447C8 24620001 */  addiu     $v0, $v1, 1
/* 16502C 802447CC 3063FFFF */  andi      $v1, $v1, 0xffff
/* 165030 802447D0 00031980 */  sll       $v1, $v1, 6
/* 165034 802447D4 00731821 */  addu      $v1, $v1, $s3
/* 165038 802447D8 AE250000 */  sw        $a1, ($s1)
/* 16503C 802447DC AC950000 */  sw        $s5, ($a0)
/* 165040 802447E0 A6420000 */  sh        $v0, ($s2)
/* 165044 802447E4 8E820000 */  lw        $v0, ($s4)
/* 165048 802447E8 8FC90000 */  lw        $t1, ($fp)
/* 16504C 802447EC 00431021 */  addu      $v0, $v0, $v1
/* 165050 802447F0 AC820004 */  sw        $v0, 4($a0)
/* 165054 802447F4 95230134 */  lhu       $v1, 0x134($t1)
/* 165058 802447F8 24A20008 */  addiu     $v0, $a1, 8
/* 16505C 802447FC AE220000 */  sw        $v0, ($s1)
/* 165060 80244800 000318C0 */  sll       $v1, $v1, 3
/* 165064 80244804 04610002 */  bgez      $v1, .L80244810
/* 165068 80244808 0060102D */   daddu    $v0, $v1, $zero
/* 16506C 8024480C 246201FF */  addiu     $v0, $v1, 0x1ff
.L80244810:
/* 165070 80244810 00021243 */  sra       $v0, $v0, 9
/* 165074 80244814 00021240 */  sll       $v0, $v0, 9
/* 165078 80244818 00621023 */  subu      $v0, $v1, $v0
/* 16507C 8024481C 30420FFF */  andi      $v0, $v0, 0xfff
/* 165080 80244820 00021300 */  sll       $v0, $v0, 0xc
/* 165084 80244824 3C0BF200 */  lui       $t3, 0xf200
/* 165088 80244828 004B1025 */  or        $v0, $v0, $t3
/* 16508C 8024482C ACA20000 */  sw        $v0, ($a1)
/* 165090 80244830 95220134 */  lhu       $v0, 0x134($t1)
/* 165094 80244834 000218C0 */  sll       $v1, $v0, 3
/* 165098 80244838 04610002 */  bgez      $v1, .L80244844
/* 16509C 8024483C 0060102D */   daddu    $v0, $v1, $zero
/* 1650A0 80244840 246201FF */  addiu     $v0, $v1, 0x1ff
.L80244844:
/* 1650A4 80244844 00021243 */  sra       $v0, $v0, 9
/* 1650A8 80244848 00021240 */  sll       $v0, $v0, 9
/* 1650AC 8024484C 00621023 */  subu      $v0, $v1, $v0
/* 1650B0 80244850 2442003C */  addiu     $v0, $v0, 0x3c
/* 1650B4 80244854 30420FFF */  andi      $v0, $v0, 0xfff
/* 1650B8 80244858 00021300 */  sll       $v0, $v0, 0xc
/* 1650BC 8024485C 3C0B0100 */  lui       $t3, 0x100
/* 1650C0 80244860 004B1025 */  or        $v0, $v0, $t3
/* 1650C4 80244864 ACA20004 */  sw        $v0, 4($a1)
/* 1650C8 80244868 24A20010 */  addiu     $v0, $a1, 0x10
/* 1650CC 8024486C 3C0BDE00 */  lui       $t3, 0xde00
/* 1650D0 80244870 AE220000 */  sw        $v0, ($s1)
/* 1650D4 80244874 ACAB0008 */  sw        $t3, 8($a1)
/* 1650D8 80244878 3C0B8025 */  lui       $t3, %hi(D_8024B708)
/* 1650DC 8024487C 256BB708 */  addiu     $t3, $t3, %lo(D_8024B708)
/* 1650E0 80244880 24A20018 */  addiu     $v0, $a1, 0x18
/* 1650E4 80244884 ACAB000C */  sw        $t3, 0xc($a1)
/* 1650E8 80244888 240B0040 */  addiu     $t3, $zero, 0x40
/* 1650EC 8024488C AE220000 */  sw        $v0, ($s1)
/* 1650F0 80244890 ACB60010 */  sw        $s6, 0x10($a1)
/* 1650F4 80244894 ACAB0014 */  sw        $t3, 0x14($a1)
.L80244898:
/* 1650F8 80244898 8FBF00C4 */  lw        $ra, 0xc4($sp)
/* 1650FC 8024489C 8FBE00C0 */  lw        $fp, 0xc0($sp)
/* 165100 802448A0 8FB700BC */  lw        $s7, 0xbc($sp)
/* 165104 802448A4 8FB600B8 */  lw        $s6, 0xb8($sp)
/* 165108 802448A8 8FB500B4 */  lw        $s5, 0xb4($sp)
/* 16510C 802448AC 8FB400B0 */  lw        $s4, 0xb0($sp)
/* 165110 802448B0 8FB300AC */  lw        $s3, 0xac($sp)
/* 165114 802448B4 8FB200A8 */  lw        $s2, 0xa8($sp)
/* 165118 802448B8 8FB100A4 */  lw        $s1, 0xa4($sp)
/* 16511C 802448BC 8FB000A0 */  lw        $s0, 0xa0($sp)
/* 165120 802448C0 D7BE00F0 */  ldc1      $f30, 0xf0($sp)
/* 165124 802448C4 D7BC00E8 */  ldc1      $f28, 0xe8($sp)
/* 165128 802448C8 D7BA00E0 */  ldc1      $f26, 0xe0($sp)
/* 16512C 802448CC D7B800D8 */  ldc1      $f24, 0xd8($sp)
/* 165130 802448D0 D7B600D0 */  ldc1      $f22, 0xd0($sp)
/* 165134 802448D4 D7B400C8 */  ldc1      $f20, 0xc8($sp)
/* 165138 802448D8 03E00008 */  jr        $ra
/* 16513C 802448DC 27BD00F8 */   addiu    $sp, $sp, 0xf8
