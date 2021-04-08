.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel gfx_draw_frame
/* 1F08 80026B08 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1F0C 80026B0C 3C04800A */  lui       $a0, %hi(gDisplayContext)
/* 1F10 80026B10 8C84A674 */  lw        $a0, %lo(gDisplayContext)($a0)
/* 1F14 80026B14 3C05800A */  lui       $a1, %hi(gMasterGfxPos)
/* 1F18 80026B18 24A5A66C */  addiu     $a1, $a1, %lo(gMasterGfxPos)
/* 1F1C 80026B1C AFB00010 */  sw        $s0, 0x10($sp)
/* 1F20 80026B20 3C10800A */  lui       $s0, %hi(gOverrideFlags)
/* 1F24 80026B24 2610A650 */  addiu     $s0, $s0, %lo(gOverrideFlags)
/* 1F28 80026B28 AFBF0018 */  sw        $ra, 0x18($sp)
/* 1F2C 80026B2C AFB10014 */  sw        $s1, 0x14($sp)
/* 1F30 80026B30 3C018007 */  lui       $at, %hi(gMatrixListPos)
/* 1F34 80026B34 A42041F0 */  sh        $zero, %lo(gMatrixListPos)($at)
/* 1F38 80026B38 8E020000 */  lw        $v0, ($s0)
/* 1F3C 80026B3C 24830230 */  addiu     $v1, $a0, 0x230
/* 1F40 80026B40 30420008 */  andi      $v0, $v0, 8
/* 1F44 80026B44 10400007 */  beqz      $v0, .L80026B64
/* 1F48 80026B48 ACA30000 */   sw       $v1, ($a1)
/* 1F4C 80026B4C 3C038007 */  lui       $v1, %hi(gCurrentDisplayContextIndex)
/* 1F50 80026B50 246341F4 */  addiu     $v1, $v1, %lo(gCurrentDisplayContextIndex)
/* 1F54 80026B54 8C620000 */  lw        $v0, ($v1)
/* 1F58 80026B58 38420001 */  xori      $v0, $v0, 1
/* 1F5C 80026B5C 08009B72 */  j         .L80026DC8
/* 1F60 80026B60 AC620000 */   sw       $v0, ($v1)
.L80026B64:
/* 1F64 80026B64 3C03DA38 */  lui       $v1, 0xda38
/* 1F68 80026B68 34630003 */  ori       $v1, $v1, 3
/* 1F6C 80026B6C 24820238 */  addiu     $v0, $a0, 0x238
/* 1F70 80026B70 ACA20000 */  sw        $v0, ($a1)
/* 1F74 80026B74 3C028007 */  lui       $v0, %hi(D_800741A8)
/* 1F78 80026B78 244241A8 */  addiu     $v0, $v0, %lo(D_800741A8)
/* 1F7C 80026B7C AC830230 */  sw        $v1, 0x230($a0)
/* 1F80 80026B80 0C0B7698 */  jal       func_802DDA60
/* 1F84 80026B84 AC820234 */   sw       $v0, 0x234($a0)
/* 1F88 80026B88 8E020000 */  lw        $v0, ($s0)
/* 1F8C 80026B8C 30420002 */  andi      $v0, $v0, 2
/* 1F90 80026B90 14400003 */  bnez      $v0, .L80026BA0
/* 1F94 80026B94 00000000 */   nop
/* 1F98 80026B98 0C00B5CF */  jal       render_frame
/* 1F9C 80026B9C 0000202D */   daddu    $a0, $zero, $zero
.L80026BA0:
/* 1FA0 80026BA0 0C038098 */  jal       func_800E0260
/* 1FA4 80026BA4 00000000 */   nop
/* 1FA8 80026BA8 0C0B0FB9 */  jal       func_802C3EE4
/* 1FAC 80026BAC 00000000 */   nop
/* 1FB0 80026BB0 0C04E088 */  jal       render_transition_stencil_lower
/* 1FB4 80026BB4 00000000 */   nop
/* 1FB8 80026BB8 0C048D54 */  jal       func_80123550
/* 1FBC 80026BBC 00000000 */   nop
/* 1FC0 80026BC0 0C050884 */  jal       func_80142210
/* 1FC4 80026BC4 00000000 */   nop
/* 1FC8 80026BC8 0C0167E5 */  jal       func_80059F94
/* 1FCC 80026BCC 00000000 */   nop
/* 1FD0 80026BD0 0C044BD6 */  jal       render_ui
/* 1FD4 80026BD4 00000000 */   nop
/* 1FD8 80026BD8 8E020000 */  lw        $v0, ($s0)
/* 1FDC 80026BDC 3C030001 */  lui       $v1, 1
/* 1FE0 80026BE0 00431024 */  and       $v0, $v0, $v1
/* 1FE4 80026BE4 14400003 */  bnez      $v0, .L80026BF4
/* 1FE8 80026BE8 00000000 */   nop
/* 1FEC 80026BEC 0C051EB1 */  jal       render_window_root
/* 1FF0 80026BF0 00000000 */   nop
.L80026BF4:
/* 1FF4 80026BF4 8E020000 */  lw        $v0, ($s0)
/* 1FF8 80026BF8 30420002 */  andi      $v0, $v0, 2
/* 1FFC 80026BFC 14400009 */  bnez      $v0, .L80026C24
/* 2000 80026C00 3C100010 */   lui      $s0, 0x10
/* 2004 80026C04 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 2008 80026C08 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 200C 80026C0C 80420078 */  lb        $v0, 0x78($v0)
/* 2010 80026C10 14400004 */  bnez      $v0, .L80026C24
/* 2014 80026C14 00000000 */   nop
/* 2018 80026C18 0C00B5CF */  jal       render_frame
/* 201C 80026C1C 24040001 */   addiu    $a0, $zero, 1
/* 2020 80026C20 3C100010 */  lui       $s0, 0x10
.L80026C24:
/* 2024 80026C24 3C11800A */  lui       $s1, %hi(gOverrideFlags)
/* 2028 80026C28 2631A650 */  addiu     $s1, $s1, %lo(gOverrideFlags)
/* 202C 80026C2C 8E220000 */  lw        $v0, ($s1)
/* 2030 80026C30 36100010 */  ori       $s0, $s0, 0x10
/* 2034 80026C34 00501024 */  and       $v0, $v0, $s0
/* 2038 80026C38 14400003 */  bnez      $v0, .L80026C48
/* 203C 80026C3C 00000000 */   nop
/* 2040 80026C40 0C049081 */  jal       render_messages
/* 2044 80026C44 00000000 */   nop
.L80026C48:
/* 2048 80026C48 0C048D38 */  jal       func_801234E0
/* 204C 80026C4C 00000000 */   nop
/* 2050 80026C50 0C0509C7 */  jal       func_8014271C
/* 2054 80026C54 00000000 */   nop
/* 2058 80026C58 0C04E068 */  jal       render_transition_stencil_upper
/* 205C 80026C5C 00000000 */   nop
/* 2060 80026C60 8E220000 */  lw        $v0, ($s1)
/* 2064 80026C64 24030010 */  addiu     $v1, $zero, 0x10
/* 2068 80026C68 00501024 */  and       $v0, $v0, $s0
/* 206C 80026C6C 14430003 */  bne       $v0, $v1, .L80026C7C
/* 2070 80026C70 00000000 */   nop
/* 2074 80026C74 0C049081 */  jal       render_messages
/* 2078 80026C78 00000000 */   nop
.L80026C7C:
/* 207C 80026C7C 0C00AEA0 */  jal       render_curtains
/* 2080 80026C80 00000000 */   nop
/* 2084 80026C84 8E220000 */  lw        $v0, ($s1)
/* 2088 80026C88 3C030010 */  lui       $v1, 0x10
/* 208C 80026C8C 00431024 */  and       $v0, $v0, $v1
/* 2090 80026C90 10400003 */  beqz      $v0, .L80026CA0
/* 2094 80026C94 00000000 */   nop
/* 2098 80026C98 0C049081 */  jal       render_messages
/* 209C 80026C9C 00000000 */   nop
.L80026CA0:
/* 20A0 80026CA0 8E220000 */  lw        $v0, ($s1)
/* 20A4 80026CA4 3C030001 */  lui       $v1, 1
/* 20A8 80026CA8 00431024 */  and       $v0, $v0, $v1
/* 20AC 80026CAC 10400003 */  beqz      $v0, .L80026CBC
/* 20B0 80026CB0 00000000 */   nop
/* 20B4 80026CB4 0C051EB1 */  jal       render_window_root
/* 20B8 80026CB8 00000000 */   nop
.L80026CBC:
/* 20BC 80026CBC 0C044BF1 */  jal       func_80112FC4
/* 20C0 80026CC0 00000000 */   nop
/* 20C4 80026CC4 8E220000 */  lw        $v0, ($s1)
/* 20C8 80026CC8 30420020 */  andi      $v0, $v0, 0x20
/* 20CC 80026CCC 10400010 */  beqz      $v0, .L80026D10
/* 20D0 80026CD0 00000000 */   nop
/* 20D4 80026CD4 3C038007 */  lui       $v1, %hi(D_800741A2)
/* 20D8 80026CD8 846341A2 */  lh        $v1, %lo(D_800741A2)($v1)
/* 20DC 80026CDC 28620002 */  slti      $v0, $v1, 2
/* 20E0 80026CE0 1040000B */  beqz      $v0, .L80026D10
/* 20E4 80026CE4 00000000 */   nop
/* 20E8 80026CE8 04600009 */  bltz      $v1, .L80026D10
/* 20EC 80026CEC 24040007 */   addiu    $a0, $zero, 7
/* 20F0 80026CF0 3C028007 */  lui       $v0, %hi(D_800741A0)
/* 20F4 80026CF4 844241A0 */  lh        $v0, %lo(D_800741A0)($v0)
/* 20F8 80026CF8 44820000 */  mtc1      $v0, $f0
/* 20FC 80026CFC 00000000 */  nop
/* 2100 80026D00 46800020 */  cvt.s.w   $f0, $f0
/* 2104 80026D04 44050000 */  mfc1      $a1, $f0
/* 2108 80026D08 0C04DAA0 */  jal       _render_transition_stencil
/* 210C 80026D0C 0000302D */   daddu    $a2, $zero, $zero
.L80026D10:
/* 2110 80026D10 3C02800A */  lui       $v0, %hi(gMasterGfxPos)
/* 2114 80026D14 8C42A66C */  lw        $v0, %lo(gMasterGfxPos)($v0)
/* 2118 80026D18 3C03800A */  lui       $v1, %hi(gDisplayContext)
/* 211C 80026D1C 8C63A674 */  lw        $v1, %lo(gDisplayContext)($v1)
/* 2120 80026D20 2442FDD0 */  addiu     $v0, $v0, -0x230
/* 2124 80026D24 00431023 */  subu      $v0, $v0, $v1
/* 2128 80026D28 000210C2 */  srl       $v0, $v0, 3
/* 212C 80026D2C 28422080 */  slti      $v0, $v0, 0x2080
/* 2130 80026D30 54400003 */  bnel      $v0, $zero, .L80026D40
/* 2134 80026D34 0000302D */   daddu    $a2, $zero, $zero
.L80026D38:
/* 2138 80026D38 08009B4E */  j         .L80026D38
/* 213C 80026D3C 00000000 */   nop
.L80026D40:
/* 2140 80026D40 3C070004 */  lui       $a3, 4
/* 2144 80026D44 3C08800A */  lui       $t0, %hi(gMasterGfxPos)
/* 2148 80026D48 2508A66C */  addiu     $t0, $t0, %lo(gMasterGfxPos)
/* 214C 80026D4C 34E70001 */  ori       $a3, $a3, 1
/* 2150 80026D50 8D030000 */  lw        $v1, ($t0)
/* 2154 80026D54 3C02800A */  lui       $v0, %hi(gDisplayContext)
/* 2158 80026D58 8C42A674 */  lw        $v0, %lo(gDisplayContext)($v0)
/* 215C 80026D5C 0060482D */  daddu     $t1, $v1, $zero
/* 2160 80026D60 24630008 */  addiu     $v1, $v1, 8
/* 2164 80026D64 24440230 */  addiu     $a0, $v0, 0x230
/* 2168 80026D68 2465FDD8 */  addiu     $a1, $v1, -0x228
/* 216C 80026D6C 00A22823 */  subu      $a1, $a1, $v0
/* 2170 80026D70 000528C3 */  sra       $a1, $a1, 3
/* 2174 80026D74 000528C0 */  sll       $a1, $a1, 3
/* 2178 80026D78 3C02E900 */  lui       $v0, 0xe900
/* 217C 80026D7C AD030000 */  sw        $v1, ($t0)
/* 2180 80026D80 AD220000 */  sw        $v0, ($t1)
/* 2184 80026D84 24620008 */  addiu     $v0, $v1, 8
/* 2188 80026D88 AD200004 */  sw        $zero, 4($t1)
/* 218C 80026D8C AD020000 */  sw        $v0, ($t0)
/* 2190 80026D90 3C02DF00 */  lui       $v0, 0xdf00
/* 2194 80026D94 AC620000 */  sw        $v0, ($v1)
/* 2198 80026D98 0C00B331 */  jal       nuGfxTaskStart
/* 219C 80026D9C AC600004 */   sw       $zero, 4($v1)
/* 21A0 80026DA0 24050140 */  addiu     $a1, $zero, 0x140
/* 21A4 80026DA4 240600F0 */  addiu     $a2, $zero, 0xf0
/* 21A8 80026DA8 3C038007 */  lui       $v1, %hi(gCurrentDisplayContextIndex)
/* 21AC 80026DAC 246341F4 */  addiu     $v1, $v1, %lo(gCurrentDisplayContextIndex)
/* 21B0 80026DB0 8C620000 */  lw        $v0, ($v1)
/* 21B4 80026DB4 3C04800A */  lui       $a0, %hi(D_8009A64C)
/* 21B8 80026DB8 8C84A64C */  lw        $a0, %lo(D_8009A64C)($a0)
/* 21BC 80026DBC 38420001 */  xori      $v0, $v0, 1
/* 21C0 80026DC0 0C00B224 */  jal       func_8002C890
/* 21C4 80026DC4 AC620000 */   sw       $v0, ($v1)
.L80026DC8:
/* 21C8 80026DC8 8FBF0018 */  lw        $ra, 0x18($sp)
/* 21CC 80026DCC 8FB10014 */  lw        $s1, 0x14($sp)
/* 21D0 80026DD0 8FB00010 */  lw        $s0, 0x10($sp)
/* 21D4 80026DD4 03E00008 */  jr        $ra
/* 21D8 80026DD8 27BD0020 */   addiu    $sp, $sp, 0x20
