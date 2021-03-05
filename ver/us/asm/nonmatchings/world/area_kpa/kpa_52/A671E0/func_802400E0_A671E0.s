.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802400E0_A671E0
/* A671E0 802400E0 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* A671E4 802400E4 AFB10014 */  sw        $s1, 0x14($sp)
/* A671E8 802400E8 0080882D */  daddu     $s1, $a0, $zero
/* A671EC 802400EC 3C05800B */  lui       $a1, %hi(gCameras)
/* A671F0 802400F0 24A51D80 */  addiu     $a1, $a1, %lo(gCameras)
/* A671F4 802400F4 AFBF0020 */  sw        $ra, 0x20($sp)
/* A671F8 802400F8 AFB3001C */  sw        $s3, 0x1c($sp)
/* A671FC 802400FC AFB20018 */  sw        $s2, 0x18($sp)
/* A67200 80240100 AFB00010 */  sw        $s0, 0x10($sp)
/* A67204 80240104 F7B40028 */  sdc1      $f20, 0x28($sp)
/* A67208 80240108 8E330148 */  lw        $s3, 0x148($s1)
/* A6720C 8024010C 3C03800A */  lui       $v1, %hi(D_8009A634)
/* A67210 80240110 8463A634 */  lh        $v1, %lo(D_8009A634)($v1)
/* A67214 80240114 8E30000C */  lw        $s0, 0xc($s1)
/* A67218 80240118 00031080 */  sll       $v0, $v1, 2
/* A6721C 8024011C 00431021 */  addu      $v0, $v0, $v1
/* A67220 80240120 00021080 */  sll       $v0, $v0, 2
/* A67224 80240124 00431023 */  subu      $v0, $v0, $v1
/* A67228 80240128 000218C0 */  sll       $v1, $v0, 3
/* A6722C 8024012C 00431021 */  addu      $v0, $v0, $v1
/* A67230 80240130 000210C0 */  sll       $v0, $v0, 3
/* A67234 80240134 86640008 */  lh        $a0, 8($s3)
/* A67238 80240138 0C00EABB */  jal       get_npc_unsafe
/* A6723C 8024013C 00459021 */   addu     $s2, $v0, $a1
/* A67240 80240140 0220202D */  daddu     $a0, $s1, $zero
/* A67244 80240144 8E050000 */  lw        $a1, ($s0)
/* A67248 80240148 0C0B1EAF */  jal       get_variable
/* A6724C 8024014C 0040802D */   daddu    $s0, $v0, $zero
/* A67250 80240150 0260202D */  daddu     $a0, $s3, $zero
/* A67254 80240154 8C460024 */  lw        $a2, 0x24($v0)
/* A67258 80240158 8C470028 */  lw        $a3, 0x28($v0)
/* A6725C 8024015C 0C0124FB */  jal       func_800493EC
/* A67260 80240160 0000282D */   daddu    $a1, $zero, $zero
/* A67264 80240164 10400052 */  beqz      $v0, .L802402B0
/* A67268 80240168 2402FFFF */   addiu    $v0, $zero, -1
/* A6726C 8024016C C64C006C */  lwc1      $f12, 0x6c($s2)
/* A67270 80240170 C60E000C */  lwc1      $f14, 0xc($s0)
/* A67274 80240174 3C014387 */  lui       $at, 0x4387
/* A67278 80240178 4481A000 */  mtc1      $at, $f20
/* A6727C 8024017C 0C00A70A */  jal       get_clamped_angle_diff
/* A67280 80240180 00000000 */   nop
/* A67284 80240184 0C00A6C9 */  jal       clamp_angle
/* A67288 80240188 46000306 */   mov.s    $f12, $f0
/* A6728C 8024018C 3C018024 */  lui       $at, %hi(D_802439E0_A6AAE0)
/* A67290 80240190 D42239E0 */  ldc1      $f2, %lo(D_802439E0_A6AAE0)($at)
/* A67294 80240194 46000021 */  cvt.d.s   $f0, $f0
/* A67298 80240198 4622003C */  c.lt.d    $f0, $f2
/* A6729C 8024019C 00000000 */  nop
/* A672A0 802401A0 45000003 */  bc1f      .L802401B0
/* A672A4 802401A4 00000000 */   nop
/* A672A8 802401A8 3C0142B4 */  lui       $at, 0x42b4
/* A672AC 802401AC 4481A000 */  mtc1      $at, $f20
.L802401B0:
/* A672B0 802401B0 3C11800F */  lui       $s1, %hi(gPlayerStatusPtr)
/* A672B4 802401B4 26317B30 */  addiu     $s1, $s1, %lo(gPlayerStatusPtr)
/* A672B8 802401B8 C60C0038 */  lwc1      $f12, 0x38($s0)
/* A672BC 802401BC 8E220000 */  lw        $v0, ($s1)
/* A672C0 802401C0 C60E0040 */  lwc1      $f14, 0x40($s0)
/* A672C4 802401C4 8C460028 */  lw        $a2, 0x28($v0)
/* A672C8 802401C8 0C00A720 */  jal       atan2
/* A672CC 802401CC 8C470030 */   lw       $a3, 0x30($v0)
/* A672D0 802401D0 4600A306 */  mov.s     $f12, $f20
/* A672D4 802401D4 0C00A70A */  jal       get_clamped_angle_diff
/* A672D8 802401D8 46000386 */   mov.s    $f14, $f0
/* A672DC 802401DC 46000005 */  abs.s     $f0, $f0
/* A672E0 802401E0 3C018024 */  lui       $at, %hi(D_802439E8_A6AAE8)
/* A672E4 802401E4 D42239E8 */  ldc1      $f2, %lo(D_802439E8_A6AAE8)($at)
/* A672E8 802401E8 46000021 */  cvt.d.s   $f0, $f0
/* A672EC 802401EC 4620103C */  c.lt.d    $f2, $f0
/* A672F0 802401F0 00000000 */  nop
/* A672F4 802401F4 4501002E */  bc1t      .L802402B0
/* A672F8 802401F8 2402FFFF */   addiu    $v0, $zero, -1
/* A672FC 802401FC 8E220000 */  lw        $v0, ($s1)
/* A67300 80240200 C600003C */  lwc1      $f0, 0x3c($s0)
/* A67304 80240204 C442002C */  lwc1      $f2, 0x2c($v0)
/* A67308 80240208 860200A8 */  lh        $v0, 0xa8($s0)
/* A6730C 8024020C 46020001 */  sub.s     $f0, $f0, $f2
/* A67310 80240210 44821000 */  mtc1      $v0, $f2
/* A67314 80240214 00000000 */  nop
/* A67318 80240218 468010A1 */  cvt.d.w   $f2, $f2
/* A6731C 8024021C 46221080 */  add.d     $f2, $f2, $f2
/* A67320 80240220 46000005 */  abs.s     $f0, $f0
/* A67324 80240224 46000021 */  cvt.d.s   $f0, $f0
/* A67328 80240228 4620103E */  c.le.d    $f2, $f0
/* A6732C 8024022C 00000000 */  nop
/* A67330 80240230 4501001F */  bc1t      .L802402B0
/* A67334 80240234 2402FFFF */   addiu    $v0, $zero, -1
/* A67338 80240238 3C038011 */  lui       $v1, %hi(D_8010EBB0+0x3)
/* A6733C 8024023C 8063EBB3 */  lb        $v1, %lo(D_8010EBB0+0x3)($v1)
/* A67340 80240240 24020009 */  addiu     $v0, $zero, 9
/* A67344 80240244 10620019 */  beq       $v1, $v0, .L802402AC
/* A67348 80240248 24020007 */   addiu    $v0, $zero, 7
/* A6734C 8024024C 14620005 */  bne       $v1, $v0, .L80240264
/* A67350 80240250 2402FFFF */   addiu    $v0, $zero, -1
/* A67354 80240254 080900AC */  j         .L802402B0
/* A67358 80240258 00000000 */   nop
.L8024025C:
/* A6735C 8024025C 080900AC */  j         .L802402B0
/* A67360 80240260 0240102D */   daddu    $v0, $s2, $zero
.L80240264:
/* A67364 80240264 8E620078 */  lw        $v0, 0x78($s3)
/* A67368 80240268 18400010 */  blez      $v0, .L802402AC
/* A6736C 8024026C 0000882D */   daddu    $s1, $zero, $zero
.L80240270:
/* A67370 80240270 86620008 */  lh        $v0, 8($s3)
/* A67374 80240274 00511021 */  addu      $v0, $v0, $s1
/* A67378 80240278 24520001 */  addiu     $s2, $v0, 1
/* A6737C 8024027C 0C00FB3A */  jal       get_enemy
/* A67380 80240280 0240202D */   daddu    $a0, $s2, $zero
/* A67384 80240284 0240202D */  daddu     $a0, $s2, $zero
/* A67388 80240288 0C00EABB */  jal       get_npc_unsafe
/* A6738C 8024028C 0040802D */   daddu    $s0, $v0, $zero
/* A67390 80240290 8E02006C */  lw        $v0, 0x6c($s0)
/* A67394 80240294 1040FFF1 */  beqz      $v0, .L8024025C
/* A67398 80240298 26310001 */   addiu    $s1, $s1, 1
/* A6739C 8024029C 8E620078 */  lw        $v0, 0x78($s3)
/* A673A0 802402A0 0222102A */  slt       $v0, $s1, $v0
/* A673A4 802402A4 1440FFF2 */  bnez      $v0, .L80240270
/* A673A8 802402A8 00000000 */   nop
.L802402AC:
/* A673AC 802402AC 2402FFFF */  addiu     $v0, $zero, -1
.L802402B0:
/* A673B0 802402B0 8FBF0020 */  lw        $ra, 0x20($sp)
/* A673B4 802402B4 8FB3001C */  lw        $s3, 0x1c($sp)
/* A673B8 802402B8 8FB20018 */  lw        $s2, 0x18($sp)
/* A673BC 802402BC 8FB10014 */  lw        $s1, 0x14($sp)
/* A673C0 802402C0 8FB00010 */  lw        $s0, 0x10($sp)
/* A673C4 802402C4 D7B40028 */  ldc1      $f20, 0x28($sp)
/* A673C8 802402C8 03E00008 */  jr        $ra
/* A673CC 802402CC 27BD0030 */   addiu    $sp, $sp, 0x30
