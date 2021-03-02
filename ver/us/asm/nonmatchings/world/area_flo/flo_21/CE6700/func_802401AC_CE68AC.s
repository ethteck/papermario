.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802401AC_CE68AC
/* CE68AC 802401AC 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* CE68B0 802401B0 AFBF0020 */  sw        $ra, 0x20($sp)
/* CE68B4 802401B4 AFB1001C */  sw        $s1, 0x1c($sp)
/* CE68B8 802401B8 AFB00018 */  sw        $s0, 0x18($sp)
/* CE68BC 802401BC 8C910084 */  lw        $s1, 0x84($a0)
/* CE68C0 802401C0 86230044 */  lh        $v1, 0x44($s1)
/* CE68C4 802401C4 3C108011 */  lui       $s0, %hi(gPlayerStatus)
/* CE68C8 802401C8 2610EFC8 */  addiu     $s0, $s0, %lo(gPlayerStatus)
/* CE68CC 802401CC 2C620005 */  sltiu     $v0, $v1, 5
/* CE68D0 802401D0 1040008A */  beqz      $v0, L802403FC_CE6AFC
/* CE68D4 802401D4 00031080 */   sll      $v0, $v1, 2
/* CE68D8 802401D8 3C018024 */  lui       $at, %hi(jtbl_80245B10_CEC210)
/* CE68DC 802401DC 00220821 */  addu      $at, $at, $v0
/* CE68E0 802401E0 8C225B10 */  lw        $v0, %lo(jtbl_80245B10_CEC210)($at)
/* CE68E4 802401E4 00400008 */  jr        $v0
/* CE68E8 802401E8 00000000 */   nop
glabel L802401EC_CE68EC
/* CE68EC 802401EC 8E22003C */  lw        $v0, 0x3c($s1)
/* CE68F0 802401F0 86270046 */  lh        $a3, 0x46($s1)
/* CE68F4 802401F4 AFA20010 */  sw        $v0, 0x10($sp)
/* CE68F8 802401F8 8E250010 */  lw        $a1, 0x10($s1)
/* CE68FC 802401FC 8E26001C */  lw        $a2, 0x1c($s1)
/* CE6900 80240200 0C00A8ED */  jal       update_lerp
/* CE6904 80240204 24040005 */   addiu    $a0, $zero, 5
/* CE6908 80240208 86270046 */  lh        $a3, 0x46($s1)
/* CE690C 8024020C 8E22003C */  lw        $v0, 0x3c($s1)
/* CE6910 80240210 E6200004 */  swc1      $f0, 4($s1)
/* CE6914 80240214 AFA20010 */  sw        $v0, 0x10($sp)
/* CE6918 80240218 8E25000C */  lw        $a1, 0xc($s1)
/* CE691C 8024021C 8E260018 */  lw        $a2, 0x18($s1)
/* CE6920 80240220 0C00A8ED */  jal       update_lerp
/* CE6924 80240224 0000202D */   daddu    $a0, $zero, $zero
/* CE6928 80240228 86270046 */  lh        $a3, 0x46($s1)
/* CE692C 8024022C 8E22003C */  lw        $v0, 0x3c($s1)
/* CE6930 80240230 E6200000 */  swc1      $f0, ($s1)
/* CE6934 80240234 AFA20010 */  sw        $v0, 0x10($sp)
/* CE6938 80240238 8E250014 */  lw        $a1, 0x14($s1)
/* CE693C 8024023C 8E260020 */  lw        $a2, 0x20($s1)
/* CE6940 80240240 0C00A8ED */  jal       update_lerp
/* CE6944 80240244 0000202D */   daddu    $a0, $zero, $zero
/* CE6948 80240248 8E220050 */  lw        $v0, 0x50($s1)
/* CE694C 8024024C E6200008 */  swc1      $f0, 8($s1)
/* CE6950 80240250 C6200000 */  lwc1      $f0, ($s1)
/* CE6954 80240254 8C42000C */  lw        $v0, 0xc($v0)
/* CE6958 80240258 E4400008 */  swc1      $f0, 8($v0)
/* CE695C 8024025C 8E220050 */  lw        $v0, 0x50($s1)
/* CE6960 80240260 C6200004 */  lwc1      $f0, 4($s1)
/* CE6964 80240264 8C42000C */  lw        $v0, 0xc($v0)
/* CE6968 80240268 E440000C */  swc1      $f0, 0xc($v0)
/* CE696C 8024026C 8E220050 */  lw        $v0, 0x50($s1)
/* CE6970 80240270 C6200008 */  lwc1      $f0, 8($s1)
/* CE6974 80240274 8C42000C */  lw        $v0, 0xc($v0)
/* CE6978 80240278 E4400010 */  swc1      $f0, 0x10($v0)
/* CE697C 8024027C 96220046 */  lhu       $v0, 0x46($s1)
/* CE6980 80240280 8E23003C */  lw        $v1, 0x3c($s1)
/* CE6984 80240284 24420001 */  addiu     $v0, $v0, 1
/* CE6988 80240288 A6220046 */  sh        $v0, 0x46($s1)
/* CE698C 8024028C 00021400 */  sll       $v0, $v0, 0x10
/* CE6990 80240290 00021403 */  sra       $v0, $v0, 0x10
/* CE6994 80240294 0043102A */  slt       $v0, $v0, $v1
/* CE6998 80240298 14400058 */  bnez      $v0, L802403FC_CE6AFC
/* CE699C 8024029C 24020001 */   addiu    $v0, $zero, 1
/* CE69A0 802402A0 A6220044 */  sh        $v0, 0x44($s1)
/* CE69A4 802402A4 080900FF */  j         L802403FC_CE6AFC
/* CE69A8 802402A8 A6200046 */   sh       $zero, 0x46($s1)
glabel L802402AC_CE69AC
/* CE69AC 802402AC 96220046 */  lhu       $v0, 0x46($s1)
/* CE69B0 802402B0 24420001 */  addiu     $v0, $v0, 1
/* CE69B4 802402B4 A6220046 */  sh        $v0, 0x46($s1)
/* CE69B8 802402B8 00021400 */  sll       $v0, $v0, 0x10
/* CE69BC 802402BC 00021403 */  sra       $v0, $v0, 0x10
/* CE69C0 802402C0 2842003C */  slti      $v0, $v0, 0x3c
/* CE69C4 802402C4 1440004D */  bnez      $v0, L802403FC_CE6AFC
/* CE69C8 802402C8 24020002 */   addiu    $v0, $zero, 2
/* CE69CC 802402CC 8E230050 */  lw        $v1, 0x50($s1)
/* CE69D0 802402D0 A6220044 */  sh        $v0, 0x44($s1)
/* CE69D4 802402D4 A6200046 */  sh        $zero, 0x46($s1)
/* CE69D8 802402D8 8C63000C */  lw        $v1, 0xc($v1)
/* CE69DC 802402DC 24020001 */  addiu     $v0, $zero, 1
/* CE69E0 802402E0 AC620070 */  sw        $v0, 0x70($v1)
/* CE69E4 802402E4 8E220050 */  lw        $v0, 0x50($s1)
/* CE69E8 802402E8 8C42000C */  lw        $v0, 0xc($v0)
/* CE69EC 802402EC 080900FF */  j         L802403FC_CE6AFC
/* CE69F0 802402F0 AC400074 */   sw       $zero, 0x74($v0)
glabel L802402F4_CE69F4
/* CE69F4 802402F4 96220046 */  lhu       $v0, 0x46($s1)
/* CE69F8 802402F8 24420001 */  addiu     $v0, $v0, 1
/* CE69FC 802402FC A6220046 */  sh        $v0, 0x46($s1)
/* CE6A00 80240300 00021400 */  sll       $v0, $v0, 0x10
/* CE6A04 80240304 00021403 */  sra       $v0, $v0, 0x10
/* CE6A08 80240308 2842003C */  slti      $v0, $v0, 0x3c
/* CE6A0C 8024030C 1440003B */  bnez      $v0, L802403FC_CE6AFC
/* CE6A10 80240310 00000000 */   nop
/* CE6A14 80240314 3C013F80 */  lui       $at, 0x3f80
/* CE6A18 80240318 44810000 */  mtc1      $at, $f0
/* CE6A1C 8024031C AFA00014 */  sw        $zero, 0x14($sp)
/* CE6A20 80240320 E7A00010 */  swc1      $f0, 0x10($sp)
/* CE6A24 80240324 8E250018 */  lw        $a1, 0x18($s1)
/* CE6A28 80240328 8E26001C */  lw        $a2, 0x1c($s1)
/* CE6A2C 8024032C 8E270020 */  lw        $a3, 0x20($s1)
/* CE6A30 80240330 0C01C9AC */  jal       func_800726B0
/* CE6A34 80240334 24040001 */   addiu    $a0, $zero, 1
/* CE6A38 80240338 AE220054 */  sw        $v0, 0x54($s1)
/* CE6A3C 8024033C 8C43000C */  lw        $v1, 0xc($v0)
/* CE6A40 80240340 9222003B */  lbu       $v0, 0x3b($s1)
/* CE6A44 80240344 A0620034 */  sb        $v0, 0x34($v1)
/* CE6A48 80240348 8E220054 */  lw        $v0, 0x54($s1)
/* CE6A4C 8024034C 8C42000C */  lw        $v0, 0xc($v0)
/* CE6A50 80240350 AC400020 */  sw        $zero, 0x20($v0)
/* CE6A54 80240354 8E250018 */  lw        $a1, 0x18($s1)
/* CE6A58 80240358 8E260028 */  lw        $a2, 0x28($s1)
/* CE6A5C 8024035C 8E270020 */  lw        $a3, 0x20($s1)
/* CE6A60 80240360 0C044898 */  jal       create_shadow_type
/* CE6A64 80240364 0000202D */   daddu    $a0, $zero, $zero
/* CE6A68 80240368 3C014210 */  lui       $at, 0x4210
/* CE6A6C 8024036C 44810000 */  mtc1      $at, $f0
/* CE6A70 80240370 AE220040 */  sw        $v0, 0x40($s1)
/* CE6A74 80240374 24020003 */  addiu     $v0, $zero, 3
/* CE6A78 80240378 A6220044 */  sh        $v0, 0x44($s1)
/* CE6A7C 8024037C 24020001 */  addiu     $v0, $zero, 1
/* CE6A80 80240380 A6200046 */  sh        $zero, 0x46($s1)
/* CE6A84 80240384 AE20002C */  sw        $zero, 0x2c($s1)
/* CE6A88 80240388 A6220048 */  sh        $v0, 0x48($s1)
/* CE6A8C 8024038C 080900FF */  j         L802403FC_CE6AFC
/* CE6A90 80240390 E6200030 */   swc1     $f0, 0x30($s1)
glabel L80240394_CE6A94
/* CE6A94 80240394 0000202D */  daddu     $a0, $zero, $zero
/* CE6A98 80240398 3C054210 */  lui       $a1, 0x4210
/* CE6A9C 8024039C 3C064198 */  lui       $a2, 0x4198
/* CE6AA0 802403A0 86270046 */  lh        $a3, 0x46($s1)
/* CE6AA4 802403A4 24020078 */  addiu     $v0, $zero, 0x78
/* CE6AA8 802403A8 0C00A8ED */  jal       update_lerp
/* CE6AAC 802403AC AFA20010 */   sw       $v0, 0x10($sp)
/* CE6AB0 802403B0 96220046 */  lhu       $v0, 0x46($s1)
/* CE6AB4 802403B4 E6200030 */  swc1      $f0, 0x30($s1)
/* CE6AB8 802403B8 24420001 */  addiu     $v0, $v0, 1
/* CE6ABC 802403BC A6220046 */  sh        $v0, 0x46($s1)
/* CE6AC0 802403C0 00021400 */  sll       $v0, $v0, 0x10
/* CE6AC4 802403C4 00021403 */  sra       $v0, $v0, 0x10
/* CE6AC8 802403C8 28420078 */  slti      $v0, $v0, 0x78
/* CE6ACC 802403CC 1440000B */  bnez      $v0, L802403FC_CE6AFC
/* CE6AD0 802403D0 24030001 */   addiu    $v1, $zero, 1
/* CE6AD4 802403D4 C620002C */  lwc1      $f0, 0x2c($s1)
/* CE6AD8 802403D8 24020002 */  addiu     $v0, $zero, 2
/* CE6ADC 802403DC A6220048 */  sh        $v0, 0x48($s1)
/* CE6AE0 802403E0 24020004 */  addiu     $v0, $zero, 4
/* CE6AE4 802403E4 A620004C */  sh        $zero, 0x4c($s1)
/* CE6AE8 802403E8 A623004A */  sh        $v1, 0x4a($s1)
/* CE6AEC 802403EC A623004E */  sh        $v1, 0x4e($s1)
/* CE6AF0 802403F0 A6220044 */  sh        $v0, 0x44($s1)
/* CE6AF4 802403F4 A6200046 */  sh        $zero, 0x46($s1)
/* CE6AF8 802403F8 E6200034 */  swc1      $f0, 0x34($s1)
glabel L802403FC_CE6AFC
/* CE6AFC 802403FC 8623004A */  lh        $v1, 0x4a($s1)
/* CE6B00 80240400 24020001 */  addiu     $v0, $zero, 1
/* CE6B04 80240404 10620005 */  beq       $v1, $v0, .L8024041C
/* CE6B08 80240408 24020002 */   addiu    $v0, $zero, 2
/* CE6B0C 8024040C 1062001E */  beq       $v1, $v0, .L80240488
/* CE6B10 80240410 00000000 */   nop
/* CE6B14 80240414 0809014C */  j         .L80240530
/* CE6B18 80240418 00000000 */   nop
.L8024041C:
/* CE6B1C 8024041C 8627004C */  lh        $a3, 0x4c($s1)
/* CE6B20 80240420 24100078 */  addiu     $s0, $zero, 0x78
/* CE6B24 80240424 AFB00010 */  sw        $s0, 0x10($sp)
/* CE6B28 80240428 8E250034 */  lw        $a1, 0x34($s1)
/* CE6B2C 8024042C 3C0644B4 */  lui       $a2, 0x44b4
/* CE6B30 80240430 0C00A8ED */  jal       update_lerp
/* CE6B34 80240434 24040004 */   addiu    $a0, $zero, 4
/* CE6B38 80240438 8627004C */  lh        $a3, 0x4c($s1)
/* CE6B3C 8024043C E620002C */  swc1      $f0, 0x2c($s1)
/* CE6B40 80240440 AFB00010 */  sw        $s0, 0x10($sp)
/* CE6B44 80240444 8E25001C */  lw        $a1, 0x1c($s1)
/* CE6B48 80240448 8E260024 */  lw        $a2, 0x24($s1)
/* CE6B4C 8024044C 0C00A8ED */  jal       update_lerp
/* CE6B50 80240450 2404000A */   addiu    $a0, $zero, 0xa
/* CE6B54 80240454 9622004C */  lhu       $v0, 0x4c($s1)
/* CE6B58 80240458 E6200004 */  swc1      $f0, 4($s1)
/* CE6B5C 8024045C 24420001 */  addiu     $v0, $v0, 1
/* CE6B60 80240460 A622004C */  sh        $v0, 0x4c($s1)
/* CE6B64 80240464 00021400 */  sll       $v0, $v0, 0x10
/* CE6B68 80240468 00021403 */  sra       $v0, $v0, 0x10
/* CE6B6C 8024046C 0050102A */  slt       $v0, $v0, $s0
/* CE6B70 80240470 1440002F */  bnez      $v0, .L80240530
/* CE6B74 80240474 2402010E */   addiu    $v0, $zero, 0x10e
/* CE6B78 80240478 A622004C */  sh        $v0, 0x4c($s1)
/* CE6B7C 8024047C 24020002 */  addiu     $v0, $zero, 2
/* CE6B80 80240480 0809014B */  j         .L8024052C
/* CE6B84 80240484 A622004A */   sh       $v0, 0x4a($s1)
.L80240488:
/* CE6B88 80240488 8622004C */  lh        $v0, 0x4c($s1)
/* CE6B8C 8024048C 44826000 */  mtc1      $v0, $f12
/* CE6B90 80240490 00000000 */  nop
/* CE6B94 80240494 0C00A8BB */  jal       sin_deg
/* CE6B98 80240498 46806320 */   cvt.s.w  $f12, $f12
/* CE6B9C 8024049C 3C013F80 */  lui       $at, 0x3f80
/* CE6BA0 802404A0 44811000 */  mtc1      $at, $f2
/* CE6BA4 802404A4 00000000 */  nop
/* CE6BA8 802404A8 46020000 */  add.s     $f0, $f0, $f2
/* CE6BAC 802404AC 46000000 */  add.s     $f0, $f0, $f0
/* CE6BB0 802404B0 C6220024 */  lwc1      $f2, 0x24($s1)
/* CE6BB4 802404B4 8622004C */  lh        $v0, 0x4c($s1)
/* CE6BB8 802404B8 46001080 */  add.s     $f2, $f2, $f0
/* CE6BBC 802404BC 24420008 */  addiu     $v0, $v0, 8
/* CE6BC0 802404C0 44826000 */  mtc1      $v0, $f12
/* CE6BC4 802404C4 00000000 */  nop
/* CE6BC8 802404C8 46806320 */  cvt.s.w   $f12, $f12
/* CE6BCC 802404CC 0C00A6C9 */  jal       clamp_angle
/* CE6BD0 802404D0 E6220004 */   swc1     $f2, 4($s1)
/* CE6BD4 802404D4 4600010D */  trunc.w.s $f4, $f0
/* CE6BD8 802404D8 44022000 */  mfc1      $v0, $f4
/* CE6BDC 802404DC C6200004 */  lwc1      $f0, 4($s1)
/* CE6BE0 802404E0 A622004C */  sh        $v0, 0x4c($s1)
/* CE6BE4 802404E4 C60C0028 */  lwc1      $f12, 0x28($s0)
/* CE6BE8 802404E8 8E060030 */  lw        $a2, 0x30($s0)
/* CE6BEC 802404EC 3C0141A0 */  lui       $at, 0x41a0
/* CE6BF0 802404F0 44817000 */  mtc1      $at, $f14
/* CE6BF4 802404F4 E7A00010 */  swc1      $f0, 0x10($sp)
/* CE6BF8 802404F8 C602002C */  lwc1      $f2, 0x2c($s0)
/* CE6BFC 802404FC C6200008 */  lwc1      $f0, 8($s1)
/* CE6C00 80240500 E7A00014 */  swc1      $f0, 0x14($sp)
/* CE6C04 80240504 8E270000 */  lw        $a3, ($s1)
/* CE6C08 80240508 0C00A7CB */  jal       dist3D
/* CE6C0C 8024050C 460E1380 */   add.s    $f14, $f2, $f14
/* CE6C10 80240510 3C0141F0 */  lui       $at, 0x41f0
/* CE6C14 80240514 44811000 */  mtc1      $at, $f2
/* CE6C18 80240518 00000000 */  nop
/* CE6C1C 8024051C 4600103C */  c.lt.s    $f2, $f0
/* CE6C20 80240520 00000000 */  nop
/* CE6C24 80240524 45010002 */  bc1t      .L80240530
/* CE6C28 80240528 24020003 */   addiu    $v0, $zero, 3
.L8024052C:
/* CE6C2C 8024052C A622004E */  sh        $v0, 0x4e($s1)
.L80240530:
/* CE6C30 80240530 86230048 */  lh        $v1, 0x48($s1)
/* CE6C34 80240534 24020001 */  addiu     $v0, $zero, 1
/* CE6C38 80240538 10620005 */  beq       $v1, $v0, .L80240550
/* CE6C3C 8024053C 24020002 */   addiu    $v0, $zero, 2
/* CE6C40 80240540 10620008 */  beq       $v1, $v0, .L80240564
/* CE6C44 80240544 00000000 */   nop
/* CE6C48 80240548 08090169 */  j         .L802405A4
/* CE6C4C 8024054C 00000000 */   nop
.L80240550:
/* CE6C50 80240550 C620002C */  lwc1      $f0, 0x2c($s1)
/* CE6C54 80240554 C62C0030 */  lwc1      $f12, 0x30($s1)
/* CE6C58 80240558 0C00A6C9 */  jal       clamp_angle
/* CE6C5C 8024055C 460C0300 */   add.s    $f12, $f0, $f12
/* CE6C60 80240560 E620002C */  swc1      $f0, 0x2c($s1)
.L80240564:
/* CE6C64 80240564 8E220054 */  lw        $v0, 0x54($s1)
/* CE6C68 80240568 C620002C */  lwc1      $f0, 0x2c($s1)
/* CE6C6C 8024056C 8C42000C */  lw        $v0, 0xc($v0)
/* CE6C70 80240570 E4400024 */  swc1      $f0, 0x24($v0)
/* CE6C74 80240574 8E220054 */  lw        $v0, 0x54($s1)
/* CE6C78 80240578 C6200018 */  lwc1      $f0, 0x18($s1)
/* CE6C7C 8024057C 8C42000C */  lw        $v0, 0xc($v0)
/* CE6C80 80240580 E4400004 */  swc1      $f0, 4($v0)
/* CE6C84 80240584 8E220054 */  lw        $v0, 0x54($s1)
/* CE6C88 80240588 C6200004 */  lwc1      $f0, 4($s1)
/* CE6C8C 8024058C 8C42000C */  lw        $v0, 0xc($v0)
/* CE6C90 80240590 E4400008 */  swc1      $f0, 8($v0)
/* CE6C94 80240594 8E220054 */  lw        $v0, 0x54($s1)
/* CE6C98 80240598 C6200020 */  lwc1      $f0, 0x20($s1)
/* CE6C9C 8024059C 8C42000C */  lw        $v0, 0xc($v0)
/* CE6CA0 802405A0 E440000C */  swc1      $f0, 0xc($v0)
.L802405A4:
/* CE6CA4 802405A4 8FBF0020 */  lw        $ra, 0x20($sp)
/* CE6CA8 802405A8 8FB1001C */  lw        $s1, 0x1c($sp)
/* CE6CAC 802405AC 8FB00018 */  lw        $s0, 0x18($sp)
/* CE6CB0 802405B0 0000102D */  daddu     $v0, $zero, $zero
/* CE6CB4 802405B4 03E00008 */  jr        $ra
/* CE6CB8 802405B8 27BD0028 */   addiu    $sp, $sp, 0x28
