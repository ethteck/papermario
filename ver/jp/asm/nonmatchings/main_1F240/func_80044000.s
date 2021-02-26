.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80044000
/* 1F400 80044000 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 1F404 80044004 AFB20018 */  sw        $s2, 0x18($sp)
/* 1F408 80044008 0080902D */  daddu     $s2, $a0, $zero
/* 1F40C 8004400C AFB3001C */  sw        $s3, 0x1c($sp)
/* 1F410 80044010 AFBF0024 */  sw        $ra, 0x24($sp)
/* 1F414 80044014 AFB40020 */  sw        $s4, 0x20($sp)
/* 1F418 80044018 AFB10014 */  sw        $s1, 0x14($sp)
/* 1F41C 8004401C AFB00010 */  sw        $s0, 0x10($sp)
/* 1F420 80044020 8E42000C */  lw        $v0, 0xc($s2)
/* 1F424 80044024 8C450000 */  lw        $a1, ($v0)
/* 1F428 80044028 8E500148 */  lw        $s0, 0x148($s2)
/* 1F42C 8004402C 0C0B1EAF */  jal       func_802C7ABC
/* 1F430 80044030 24130001 */   addiu    $s3, $zero, 1
/* 1F434 80044034 0040882D */  daddu     $s1, $v0, $zero
/* 1F438 80044038 3C14800B */  lui       $s4, %hi(D_800B0EF0)
/* 1F43C 8004403C 26940EF0 */  addiu     $s4, $s4, %lo(D_800B0EF0)
/* 1F440 80044040 2402FFFF */  addiu     $v0, $zero, -1
/* 1F444 80044044 12020017 */  beq       $s0, $v0, .L800440A4
/* 1F448 80044048 00000000 */   nop
/* 1F44C 8004404C 16220004 */  bne       $s1, $v0, .L80044060
/* 1F450 80044050 00000000 */   nop
/* 1F454 80044054 86110008 */  lh        $s1, 8($s0)
/* 1F458 80044058 0801102B */  j         .L800440AC
/* 1F45C 8004405C 241300FF */   addiu    $s3, $zero, 0xff
.L80044060:
/* 1F460 80044060 86020008 */  lh        $v0, 8($s0)
/* 1F464 80044064 1451000F */  bne       $v0, $s1, .L800440A4
/* 1F468 80044068 0240202D */   daddu    $a0, $s2, $zero
.L8004406C:
/* 1F46C 8004406C 8C820064 */  lw        $v0, 0x64($a0)
/* 1F470 80044070 10400003 */  beqz      $v0, .L80044080
/* 1F474 80044074 00000000 */   nop
/* 1F478 80044078 0801101B */  j         .L8004406C
/* 1F47C 8004407C 0040202D */   daddu    $a0, $v0, $zero
.L80044080:
/* 1F480 80044080 8E02003C */  lw        $v0, 0x3c($s0)
/* 1F484 80044084 50820009 */  beql      $a0, $v0, .L800440AC
/* 1F488 80044088 241300FF */   addiu    $s3, $zero, 0xff
/* 1F48C 8004408C 0801102B */  j         .L800440AC
/* 1F490 80044090 00000000 */   nop
.L80044094:
/* 1F494 80044094 0C00F91B */  jal       func_8003E46C
/* 1F498 80044098 0200202D */   daddu    $a0, $s0, $zero
/* 1F49C 8004409C 08011046 */  j         .L80044118
/* 1F4A0 800440A0 0260102D */   daddu    $v0, $s3, $zero
.L800440A4:
/* 1F4A4 800440A4 0C00FA6A */  jal       func_8003E9A8
/* 1F4A8 800440A8 0220202D */   daddu    $a0, $s1, $zero
.L800440AC:
/* 1F4AC 800440AC 8282001C */  lb        $v0, 0x1c($s4)
/* 1F4B0 800440B0 18400018 */  blez      $v0, .L80044114
/* 1F4B4 800440B4 0000282D */   daddu    $a1, $zero, $zero
/* 1F4B8 800440B8 0040402D */  daddu     $t0, $v0, $zero
/* 1F4BC 800440BC 0280382D */  daddu     $a3, $s4, $zero
.L800440C0:
/* 1F4C0 800440C0 8CE20028 */  lw        $v0, 0x28($a3)
/* 1F4C4 800440C4 50400010 */  beql      $v0, $zero, .L80044108
/* 1F4C8 800440C8 24A50001 */   addiu    $a1, $a1, 1
/* 1F4CC 800440CC 8C430000 */  lw        $v1, ($v0)
/* 1F4D0 800440D0 1860000C */  blez      $v1, .L80044104
/* 1F4D4 800440D4 0000202D */   daddu    $a0, $zero, $zero
/* 1F4D8 800440D8 0060302D */  daddu     $a2, $v1, $zero
/* 1F4DC 800440DC 0040182D */  daddu     $v1, $v0, $zero
.L800440E0:
/* 1F4E0 800440E0 8C700004 */  lw        $s0, 4($v1)
/* 1F4E4 800440E4 12000004 */  beqz      $s0, .L800440F8
/* 1F4E8 800440E8 24840001 */   addiu    $a0, $a0, 1
/* 1F4EC 800440EC 86020008 */  lh        $v0, 8($s0)
/* 1F4F0 800440F0 1051FFE8 */  beq       $v0, $s1, .L80044094
/* 1F4F4 800440F4 00000000 */   nop
.L800440F8:
/* 1F4F8 800440F8 0086102A */  slt       $v0, $a0, $a2
/* 1F4FC 800440FC 1440FFF8 */  bnez      $v0, .L800440E0
/* 1F500 80044100 24630004 */   addiu    $v1, $v1, 4
.L80044104:
/* 1F504 80044104 24A50001 */  addiu     $a1, $a1, 1
.L80044108:
/* 1F508 80044108 00A8102A */  slt       $v0, $a1, $t0
/* 1F50C 8004410C 1440FFEC */  bnez      $v0, .L800440C0
/* 1F510 80044110 24E70004 */   addiu    $a3, $a3, 4
.L80044114:
/* 1F514 80044114 0260102D */  daddu     $v0, $s3, $zero
.L80044118:
/* 1F518 80044118 8FBF0024 */  lw        $ra, 0x24($sp)
/* 1F51C 8004411C 8FB40020 */  lw        $s4, 0x20($sp)
/* 1F520 80044120 8FB3001C */  lw        $s3, 0x1c($sp)
/* 1F524 80044124 8FB20018 */  lw        $s2, 0x18($sp)
/* 1F528 80044128 8FB10014 */  lw        $s1, 0x14($sp)
/* 1F52C 8004412C 8FB00010 */  lw        $s0, 0x10($sp)
/* 1F530 80044130 03E00008 */  jr        $ra
/* 1F534 80044134 27BD0028 */   addiu    $sp, $sp, 0x28
