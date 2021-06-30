.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241AD0_DAEED0
/* DAEED0 80241AD0 27BDFF98 */  addiu     $sp, $sp, -0x68
/* DAEED4 80241AD4 AFB30054 */  sw        $s3, 0x54($sp)
/* DAEED8 80241AD8 0080982D */  daddu     $s3, $a0, $zero
/* DAEEDC 80241ADC AFBF0060 */  sw        $ra, 0x60($sp)
/* DAEEE0 80241AE0 AFB5005C */  sw        $s5, 0x5c($sp)
/* DAEEE4 80241AE4 AFB40058 */  sw        $s4, 0x58($sp)
/* DAEEE8 80241AE8 AFB20050 */  sw        $s2, 0x50($sp)
/* DAEEEC 80241AEC AFB1004C */  sw        $s1, 0x4c($sp)
/* DAEEF0 80241AF0 AFB00048 */  sw        $s0, 0x48($sp)
/* DAEEF4 80241AF4 8E710148 */  lw        $s1, 0x148($s3)
/* DAEEF8 80241AF8 86240008 */  lh        $a0, 8($s1)
/* DAEEFC 80241AFC 0C00EABB */  jal       get_npc_unsafe
/* DAEF00 80241B00 00A0802D */   daddu    $s0, $a1, $zero
/* DAEF04 80241B04 8E63000C */  lw        $v1, 0xc($s3)
/* DAEF08 80241B08 0260202D */  daddu     $a0, $s3, $zero
/* DAEF0C 80241B0C 8C650000 */  lw        $a1, ($v1)
/* DAEF10 80241B10 0C0B1EAF */  jal       get_variable
/* DAEF14 80241B14 0040902D */   daddu    $s2, $v0, $zero
/* DAEF18 80241B18 AFA00018 */  sw        $zero, 0x18($sp)
/* DAEF1C 80241B1C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DAEF20 80241B20 8C630030 */  lw        $v1, 0x30($v1)
/* DAEF24 80241B24 AFA3001C */  sw        $v1, 0x1c($sp)
/* DAEF28 80241B28 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DAEF2C 80241B2C 8C63001C */  lw        $v1, 0x1c($v1)
/* DAEF30 80241B30 AFA30020 */  sw        $v1, 0x20($sp)
/* DAEF34 80241B34 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DAEF38 80241B38 8C630024 */  lw        $v1, 0x24($v1)
/* DAEF3C 80241B3C AFA30024 */  sw        $v1, 0x24($sp)
/* DAEF40 80241B40 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DAEF44 80241B44 8C630028 */  lw        $v1, 0x28($v1)
/* DAEF48 80241B48 27B50018 */  addiu     $s5, $sp, 0x18
/* DAEF4C 80241B4C AFA30028 */  sw        $v1, 0x28($sp)
/* DAEF50 80241B50 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DAEF54 80241B54 3C014282 */  lui       $at, 0x4282
/* DAEF58 80241B58 44810000 */  mtc1      $at, $f0
/* DAEF5C 80241B5C 8C63002C */  lw        $v1, 0x2c($v1)
/* DAEF60 80241B60 0040A02D */  daddu     $s4, $v0, $zero
/* DAEF64 80241B64 E7A00030 */  swc1      $f0, 0x30($sp)
/* DAEF68 80241B68 A7A00034 */  sh        $zero, 0x34($sp)
/* DAEF6C 80241B6C 16000005 */  bnez      $s0, .L80241B84
/* DAEF70 80241B70 AFA3002C */   sw       $v1, 0x2c($sp)
/* DAEF74 80241B74 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DAEF78 80241B78 30420004 */  andi      $v0, $v0, 4
/* DAEF7C 80241B7C 10400044 */  beqz      $v0, .L80241C90
/* DAEF80 80241B80 00000000 */   nop
.L80241B84:
/* DAEF84 80241B84 2404F7FF */  addiu     $a0, $zero, -0x801
/* DAEF88 80241B88 AE600070 */  sw        $zero, 0x70($s3)
/* DAEF8C 80241B8C A640008E */  sh        $zero, 0x8e($s2)
/* DAEF90 80241B90 8E2200CC */  lw        $v0, 0xcc($s1)
/* DAEF94 80241B94 8E430000 */  lw        $v1, ($s2)
/* DAEF98 80241B98 8C420000 */  lw        $v0, ($v0)
/* DAEF9C 80241B9C 00641824 */  and       $v1, $v1, $a0
/* DAEFA0 80241BA0 AE430000 */  sw        $v1, ($s2)
/* DAEFA4 80241BA4 AE420028 */  sw        $v0, 0x28($s2)
/* DAEFA8 80241BA8 8E2200D0 */  lw        $v0, 0xd0($s1)
/* DAEFAC 80241BAC 8C420034 */  lw        $v0, 0x34($v0)
/* DAEFB0 80241BB0 54400005 */  bnel      $v0, $zero, .L80241BC8
/* DAEFB4 80241BB4 2402FDFF */   addiu    $v0, $zero, -0x201
/* DAEFB8 80241BB8 34620200 */  ori       $v0, $v1, 0x200
/* DAEFBC 80241BBC 2403FFF7 */  addiu     $v1, $zero, -9
/* DAEFC0 80241BC0 080906F4 */  j         .L80241BD0
/* DAEFC4 80241BC4 00431024 */   and      $v0, $v0, $v1
.L80241BC8:
/* DAEFC8 80241BC8 00621024 */  and       $v0, $v1, $v0
/* DAEFCC 80241BCC 34420008 */  ori       $v0, $v0, 8
.L80241BD0:
/* DAEFD0 80241BD0 AE420000 */  sw        $v0, ($s2)
/* DAEFD4 80241BD4 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DAEFD8 80241BD8 30420004 */  andi      $v0, $v0, 4
/* DAEFDC 80241BDC 10400004 */  beqz      $v0, .L80241BF0
/* DAEFE0 80241BE0 24020063 */   addiu    $v0, $zero, 0x63
/* DAEFE4 80241BE4 AE620070 */  sw        $v0, 0x70($s3)
/* DAEFE8 80241BE8 08090702 */  j         .L80241C08
/* DAEFEC 80241BEC AE600074 */   sw       $zero, 0x74($s3)
.L80241BF0:
/* DAEFF0 80241BF0 8E220000 */  lw        $v0, ($s1)
/* DAEFF4 80241BF4 3C034000 */  lui       $v1, 0x4000
/* DAEFF8 80241BF8 00431024 */  and       $v0, $v0, $v1
/* DAEFFC 80241BFC 10400002 */  beqz      $v0, .L80241C08
/* DAF000 80241C00 2402000C */   addiu    $v0, $zero, 0xc
/* DAF004 80241C04 AE620070 */  sw        $v0, 0x70($s3)
.L80241C08:
/* DAF008 80241C08 3C06BFFF */  lui       $a2, 0xbfff
/* DAF00C 80241C0C 34C6FFFF */  ori       $a2, $a2, 0xffff
/* DAF010 80241C10 27A50038 */  addiu     $a1, $sp, 0x38
/* DAF014 80241C14 2404FFFB */  addiu     $a0, $zero, -5
/* DAF018 80241C18 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DAF01C 80241C1C 8E230000 */  lw        $v1, ($s1)
/* DAF020 80241C20 3C0142C8 */  lui       $at, 0x42c8
/* DAF024 80241C24 44810000 */  mtc1      $at, $f0
/* DAF028 80241C28 00441024 */  and       $v0, $v0, $a0
/* DAF02C 80241C2C 00661824 */  and       $v1, $v1, $a2
/* DAF030 80241C30 AE2200B0 */  sw        $v0, 0xb0($s1)
/* DAF034 80241C34 AE230000 */  sw        $v1, ($s1)
/* DAF038 80241C38 864200A8 */  lh        $v0, 0xa8($s2)
/* DAF03C 80241C3C 27A70040 */  addiu     $a3, $sp, 0x40
/* DAF040 80241C40 E7A00044 */  swc1      $f0, 0x44($sp)
/* DAF044 80241C44 C6460038 */  lwc1      $f6, 0x38($s2)
/* DAF048 80241C48 C640003C */  lwc1      $f0, 0x3c($s2)
/* DAF04C 80241C4C C6420040 */  lwc1      $f2, 0x40($s2)
/* DAF050 80241C50 44822000 */  mtc1      $v0, $f4
/* DAF054 80241C54 00000000 */  nop
/* DAF058 80241C58 46802120 */  cvt.s.w   $f4, $f4
/* DAF05C 80241C5C 27A20044 */  addiu     $v0, $sp, 0x44
/* DAF060 80241C60 46040000 */  add.s     $f0, $f0, $f4
/* DAF064 80241C64 E7A60038 */  swc1      $f6, 0x38($sp)
/* DAF068 80241C68 E7A20040 */  swc1      $f2, 0x40($sp)
/* DAF06C 80241C6C E7A0003C */  swc1      $f0, 0x3c($sp)
/* DAF070 80241C70 AFA20010 */  sw        $v0, 0x10($sp)
/* DAF074 80241C74 8E440080 */  lw        $a0, 0x80($s2)
/* DAF078 80241C78 0C0372DF */  jal       npc_raycast_down_sides
/* DAF07C 80241C7C 27A6003C */   addiu    $a2, $sp, 0x3c
/* DAF080 80241C80 10400003 */  beqz      $v0, .L80241C90
/* DAF084 80241C84 00000000 */   nop
/* DAF088 80241C88 C7A0003C */  lwc1      $f0, 0x3c($sp)
/* DAF08C 80241C8C E640003C */  swc1      $f0, 0x3c($s2)
.L80241C90:
/* DAF090 80241C90 8E630070 */  lw        $v1, 0x70($s3)
/* DAF094 80241C94 2C620064 */  sltiu     $v0, $v1, 0x64
/* DAF098 80241C98 10400050 */  beqz      $v0, L80241DDC_DAF1DC
/* DAF09C 80241C9C 00031080 */   sll      $v0, $v1, 2
/* DAF0A0 80241CA0 3C018024 */  lui       $at, %hi(jtbl_80244D18_DB2118)
/* DAF0A4 80241CA4 00220821 */  addu      $at, $at, $v0
/* DAF0A8 80241CA8 8C224D18 */  lw        $v0, %lo(jtbl_80244D18_DB2118)($at)
/* DAF0AC 80241CAC 00400008 */  jr        $v0
/* DAF0B0 80241CB0 00000000 */   nop
glabel L80241CB4_DAF0B4
/* DAF0B4 80241CB4 0260202D */  daddu     $a0, $s3, $zero
/* DAF0B8 80241CB8 0280282D */  daddu     $a1, $s4, $zero
/* DAF0BC 80241CBC 0C012568 */  jal       func_800495A0
/* DAF0C0 80241CC0 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241CC4_DAF0C4
/* DAF0C4 80241CC4 0260202D */  daddu     $a0, $s3, $zero
/* DAF0C8 80241CC8 0280282D */  daddu     $a1, $s4, $zero
/* DAF0CC 80241CCC 0C0125AE */  jal       func_800496B8
/* DAF0D0 80241CD0 02A0302D */   daddu    $a2, $s5, $zero
/* DAF0D4 80241CD4 08090777 */  j         L80241DDC_DAF1DC
/* DAF0D8 80241CD8 00000000 */   nop
glabel L80241CDC_DAF0DC
/* DAF0DC 80241CDC 0260202D */  daddu     $a0, $s3, $zero
/* DAF0E0 80241CE0 0280282D */  daddu     $a1, $s4, $zero
/* DAF0E4 80241CE4 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* DAF0E8 80241CE8 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241CEC_DAF0EC
/* DAF0EC 80241CEC 0260202D */  daddu     $a0, $s3, $zero
/* DAF0F0 80241CF0 0280282D */  daddu     $a1, $s4, $zero
/* DAF0F4 80241CF4 0C012701 */  jal       func_80049C04
/* DAF0F8 80241CF8 02A0302D */   daddu    $a2, $s5, $zero
/* DAF0FC 80241CFC 08090777 */  j         L80241DDC_DAF1DC
/* DAF100 80241D00 00000000 */   nop
glabel L80241D04_DAF104
/* DAF104 80241D04 0260202D */  daddu     $a0, $s3, $zero
/* DAF108 80241D08 0280282D */  daddu     $a1, $s4, $zero
/* DAF10C 80241D0C 0C01278F */  jal       func_80049E3C
/* DAF110 80241D10 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241D14_DAF114
/* DAF114 80241D14 0260202D */  daddu     $a0, $s3, $zero
/* DAF118 80241D18 0280282D */  daddu     $a1, $s4, $zero
/* DAF11C 80241D1C 0C0127B3 */  jal       func_80049ECC
/* DAF120 80241D20 02A0302D */   daddu    $a2, $s5, $zero
/* DAF124 80241D24 08090777 */  j         L80241DDC_DAF1DC
/* DAF128 80241D28 00000000 */   nop
glabel L80241D2C_DAF12C
/* DAF12C 80241D2C 0260202D */  daddu     $a0, $s3, $zero
/* DAF130 80241D30 0280282D */  daddu     $a1, $s4, $zero
/* DAF134 80241D34 0C0127DF */  jal       func_80049F7C
/* DAF138 80241D38 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241D3C_DAF13C
/* DAF13C 80241D3C 0260202D */  daddu     $a0, $s3, $zero
/* DAF140 80241D40 0280282D */  daddu     $a1, $s4, $zero
/* DAF144 80241D44 0C012849 */  jal       func_8004A124
/* DAF148 80241D48 02A0302D */   daddu    $a2, $s5, $zero
/* DAF14C 80241D4C 8E630070 */  lw        $v1, 0x70($s3)
/* DAF150 80241D50 2402000E */  addiu     $v0, $zero, 0xe
/* DAF154 80241D54 14620021 */  bne       $v1, $v0, L80241DDC_DAF1DC
/* DAF158 80241D58 00000000 */   nop
glabel L80241D5C_DAF15C
/* DAF15C 80241D5C 0260202D */  daddu     $a0, $s3, $zero
/* DAF160 80241D60 0280282D */  daddu     $a1, $s4, $zero
/* DAF164 80241D64 0C090626 */  jal       func_80241898_DAEC98
/* DAF168 80241D68 02A0302D */   daddu    $a2, $s5, $zero
/* DAF16C 80241D6C 8E630070 */  lw        $v1, 0x70($s3)
/* DAF170 80241D70 2402000F */  addiu     $v0, $zero, 0xf
/* DAF174 80241D74 14620019 */  bne       $v1, $v0, L80241DDC_DAF1DC
/* DAF178 80241D78 00000000 */   nop
glabel L80241D7C_DAF17C
/* DAF17C 80241D7C 0260202D */  daddu     $a0, $s3, $zero
/* DAF180 80241D80 0280282D */  daddu     $a1, $s4, $zero
/* DAF184 80241D84 0C090642 */  jal       func_80241908_DAED08
/* DAF188 80241D88 02A0302D */   daddu    $a2, $s5, $zero
/* DAF18C 80241D8C 8E630070 */  lw        $v1, 0x70($s3)
/* DAF190 80241D90 24020010 */  addiu     $v0, $zero, 0x10
/* DAF194 80241D94 14620011 */  bne       $v1, $v0, L80241DDC_DAF1DC
/* DAF198 80241D98 00000000 */   nop
glabel L80241D9C_DAF19C
/* DAF19C 80241D9C 0260202D */  daddu     $a0, $s3, $zero
/* DAF1A0 80241DA0 0280282D */  daddu     $a1, $s4, $zero
/* DAF1A4 80241DA4 0C090676 */  jal       func_802419D8_DAEDD8
/* DAF1A8 80241DA8 02A0302D */   daddu    $a2, $s5, $zero
/* DAF1AC 80241DAC 8E630070 */  lw        $v1, 0x70($s3)
/* DAF1B0 80241DB0 24020011 */  addiu     $v0, $zero, 0x11
/* DAF1B4 80241DB4 14620009 */  bne       $v1, $v0, L80241DDC_DAF1DC
/* DAF1B8 80241DB8 00000000 */   nop
glabel L80241DBC_DAF1BC
/* DAF1BC 80241DBC 0260202D */  daddu     $a0, $s3, $zero
/* DAF1C0 80241DC0 0280282D */  daddu     $a1, $s4, $zero
/* DAF1C4 80241DC4 0C09069C */  jal       func_80241A70_DAEE70
/* DAF1C8 80241DC8 02A0302D */   daddu    $a2, $s5, $zero
/* DAF1CC 80241DCC 08090777 */  j         L80241DDC_DAF1DC
/* DAF1D0 80241DD0 00000000 */   nop
glabel L80241DD4_DAF1D4
/* DAF1D4 80241DD4 0C0129CF */  jal       func_8004A73C
/* DAF1D8 80241DD8 0260202D */   daddu    $a0, $s3, $zero
glabel L80241DDC_DAF1DC
/* DAF1DC 80241DDC 8FBF0060 */  lw        $ra, 0x60($sp)
/* DAF1E0 80241DE0 8FB5005C */  lw        $s5, 0x5c($sp)
/* DAF1E4 80241DE4 8FB40058 */  lw        $s4, 0x58($sp)
/* DAF1E8 80241DE8 8FB30054 */  lw        $s3, 0x54($sp)
/* DAF1EC 80241DEC 8FB20050 */  lw        $s2, 0x50($sp)
/* DAF1F0 80241DF0 8FB1004C */  lw        $s1, 0x4c($sp)
/* DAF1F4 80241DF4 8FB00048 */  lw        $s0, 0x48($sp)
/* DAF1F8 80241DF8 0000102D */  daddu     $v0, $zero, $zero
/* DAF1FC 80241DFC 03E00008 */  jr        $ra
/* DAF200 80241E00 27BD0068 */   addiu    $sp, $sp, 0x68
