.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240128_D55CD8
/* D55CD8 80240128 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* D55CDC 8024012C AFB00040 */  sw        $s0, 0x40($sp)
/* D55CE0 80240130 3C108011 */  lui       $s0, %hi(gPlayerStatus)
/* D55CE4 80240134 2610EFC8 */  addiu     $s0, $s0, %lo(gPlayerStatus)
/* D55CE8 80240138 AFB20048 */  sw        $s2, 0x48($sp)
/* D55CEC 8024013C AFBF004C */  sw        $ra, 0x4c($sp)
/* D55CF0 80240140 AFB10044 */  sw        $s1, 0x44($sp)
/* D55CF4 80240144 8E020000 */  lw        $v0, ($s0)
/* D55CF8 80240148 821100BE */  lb        $s1, 0xbe($s0)
/* D55CFC 8024014C 30420001 */  andi      $v0, $v0, 1
/* D55D00 80240150 10400061 */  beqz      $v0, .L802402D8
/* D55D04 80240154 27B20020 */   addiu    $s2, $sp, 0x20
/* D55D08 80240158 8E0400CC */  lw        $a0, 0xcc($s0)
/* D55D0C 8024015C 0C044181 */  jal       get_shadow_by_index
/* D55D10 80240160 00000000 */   nop      
/* D55D14 80240164 0C048B77 */  jal       func_80122DDC
/* D55D18 80240168 84440008 */   lh       $a0, 8($v0)
/* D55D1C 8024016C 8C430000 */  lw        $v1, ($v0)
/* D55D20 80240170 34630200 */  ori       $v1, $v1, 0x200
/* D55D24 80240174 AC430000 */  sw        $v1, ($v0)
/* D55D28 80240178 8E050028 */  lw        $a1, 0x28($s0)
/* D55D2C 8024017C 8E06002C */  lw        $a2, 0x2c($s0)
/* D55D30 80240180 27A20030 */  addiu     $v0, $sp, 0x30
/* D55D34 80240184 AFA20010 */  sw        $v0, 0x10($sp)
/* D55D38 80240188 27A20034 */  addiu     $v0, $sp, 0x34
/* D55D3C 8024018C AFA20014 */  sw        $v0, 0x14($sp)
/* D55D40 80240190 C6000030 */  lwc1      $f0, 0x30($s0)
/* D55D44 80240194 3C04800A */  lui       $a0, 0x800a
/* D55D48 80240198 8484A634 */  lh        $a0, -0x59cc($a0)
/* D55D4C 8024019C 46000007 */  neg.s     $f0, $f0
/* D55D50 802401A0 44070000 */  mfc1      $a3, $f0
/* D55D54 802401A4 27A20038 */  addiu     $v0, $sp, 0x38
/* D55D58 802401A8 0C00B94E */  jal       get_screen_coords
/* D55D5C 802401AC AFA20018 */   sw       $v0, 0x18($sp)
/* D55D60 802401B0 8E0400A4 */  lw        $a0, 0xa4($s0)
/* D55D64 802401B4 0C090008 */  jal       func_80240020
/* D55D68 802401B8 00000000 */   nop      
/* D55D6C 802401BC C6020080 */  lwc1      $f2, 0x80($s0)
/* D55D70 802401C0 3C014307 */  lui       $at, 0x4307
/* D55D74 802401C4 44810000 */  mtc1      $at, $f0
/* D55D78 802401C8 00000000 */  nop       
/* D55D7C 802401CC 4602003C */  c.lt.s    $f0, $f2
/* D55D80 802401D0 00000000 */  nop       
/* D55D84 802401D4 4500000B */  bc1f      .L80240204
/* D55D88 802401D8 24040002 */   addiu    $a0, $zero, 2
/* D55D8C 802401DC 3C014361 */  lui       $at, 0x4361
/* D55D90 802401E0 44810000 */  mtc1      $at, $f0
/* D55D94 802401E4 00000000 */  nop       
/* D55D98 802401E8 4600103C */  c.lt.s    $f2, $f0
/* D55D9C 802401EC 00000000 */  nop       
/* D55DA0 802401F0 45000004 */  bc1f      .L80240204
/* D55DA4 802401F4 00000000 */   nop      
/* D55DA8 802401F8 0C090015 */  jal       func_80240054
/* D55DAC 802401FC 0040202D */   daddu    $a0, $v0, $zero
/* D55DB0 80240200 24040002 */  addiu     $a0, $zero, 2
.L80240204:
/* D55DB4 80240204 3C063F80 */  lui       $a2, 0x3f80
/* D55DB8 80240208 0C0B76A3 */  jal       func_802DDA8C
/* D55DBC 8024020C 0040282D */   daddu    $a1, $v0, $zero
/* D55DC0 80240210 8E020000 */  lw        $v0, ($s0)
/* D55DC4 80240214 3C030002 */  lui       $v1, 2
/* D55DC8 80240218 00431024 */  and       $v0, $v0, $v1
/* D55DCC 8024021C 54400022 */  bnel      $v0, $zero, .L802402A8
/* D55DD0 80240220 24110011 */   addiu    $s1, $zero, 0x11
/* D55DD4 80240224 9203000E */  lbu       $v1, 0xe($s0)
/* D55DD8 80240228 3C02802E */  lui       $v0, 0x802e
/* D55DDC 8024022C 90429D70 */  lbu       $v0, -0x6290($v0)
/* D55DE0 80240230 10620018 */  beq       $v1, $v0, .L80240294
/* D55DE4 80240234 2C6200FE */   sltiu    $v0, $v1, 0xfe
/* D55DE8 80240238 1040000B */  beqz      $v0, .L80240268
/* D55DEC 8024023C 24110011 */   addiu    $s1, $zero, 0x11
/* D55DF0 80240240 24040002 */  addiu     $a0, $zero, 2
/* D55DF4 80240244 2405FFFF */  addiu     $a1, $zero, -1
/* D55DF8 80240248 24060007 */  addiu     $a2, $zero, 7
/* D55DFC 8024024C 0060102D */  daddu     $v0, $v1, $zero
/* D55E00 80240250 0000382D */  daddu     $a3, $zero, $zero
/* D55E04 80240254 AFA00010 */  sw        $zero, 0x10($sp)
/* D55E08 80240258 AFA00014 */  sw        $zero, 0x14($sp)
/* D55E0C 8024025C AFA0001C */  sw        $zero, 0x1c($sp)
/* D55E10 80240260 080900A3 */  j         .L8024028C
/* D55E14 80240264 AFA20018 */   sw       $v0, 0x18($sp)
.L80240268:
/* D55E18 80240268 2411000D */  addiu     $s1, $zero, 0xd
/* D55E1C 8024026C 24040002 */  addiu     $a0, $zero, 2
/* D55E20 80240270 2405FFFF */  addiu     $a1, $zero, -1
/* D55E24 80240274 0000302D */  daddu     $a2, $zero, $zero
/* D55E28 80240278 00C0382D */  daddu     $a3, $a2, $zero
/* D55E2C 8024027C AFA00010 */  sw        $zero, 0x10($sp)
/* D55E30 80240280 AFA00014 */  sw        $zero, 0x14($sp)
/* D55E34 80240284 AFA00018 */  sw        $zero, 0x18($sp)
/* D55E38 80240288 AFA0001C */  sw        $zero, 0x1c($sp)
.L8024028C:
/* D55E3C 8024028C 0C0B77B9 */  jal       func_802DDEE4
/* D55E40 80240290 00000000 */   nop      
.L80240294:
/* D55E44 80240294 9202000E */  lbu       $v0, 0xe($s0)
/* D55E48 80240298 3C01802E */  lui       $at, 0x802e
/* D55E4C 8024029C A0229D70 */  sb        $v0, -0x6290($at)
/* D55E50 802402A0 080900AD */  j         .L802402B4
/* D55E54 802402A4 0240202D */   daddu    $a0, $s2, $zero
.L802402A8:
/* D55E58 802402A8 3C01802E */  lui       $at, 0x802e
/* D55E5C 802402AC A0209D70 */  sb        $zero, -0x6290($at)
/* D55E60 802402B0 0240202D */  daddu     $a0, $s2, $zero
.L802402B4:
/* D55E64 802402B4 AC910000 */  sw        $s1, ($a0)
/* D55E68 802402B8 AC900008 */  sw        $s0, 8($a0)
/* D55E6C 802402BC 8FA20038 */  lw        $v0, 0x38($sp)
/* D55E70 802402C0 3C038024 */  lui       $v1, 0x8024
/* D55E74 802402C4 246302F0 */  addiu     $v1, $v1, 0x2f0
/* D55E78 802402C8 AC83000C */  sw        $v1, 0xc($a0)
/* D55E7C 802402CC 00021023 */  negu      $v0, $v0
/* D55E80 802402D0 0C047644 */  jal       queue_render_task
/* D55E84 802402D4 AC820004 */   sw       $v0, 4($a0)
.L802402D8:
/* D55E88 802402D8 8FBF004C */  lw        $ra, 0x4c($sp)
/* D55E8C 802402DC 8FB20048 */  lw        $s2, 0x48($sp)
/* D55E90 802402E0 8FB10044 */  lw        $s1, 0x44($sp)
/* D55E94 802402E4 8FB00040 */  lw        $s0, 0x40($sp)
/* D55E98 802402E8 03E00008 */  jr        $ra
/* D55E9C 802402EC 27BD0050 */   addiu    $sp, $sp, 0x50
