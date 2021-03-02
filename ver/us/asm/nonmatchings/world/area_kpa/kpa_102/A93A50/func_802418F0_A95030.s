.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802418F0_A95030
/* A95030 802418F0 27BDFF90 */  addiu     $sp, $sp, -0x70
/* A95034 802418F4 AFB3005C */  sw        $s3, 0x5c($sp)
/* A95038 802418F8 0080982D */  daddu     $s3, $a0, $zero
/* A9503C 802418FC AFBF0068 */  sw        $ra, 0x68($sp)
/* A95040 80241900 AFB50064 */  sw        $s5, 0x64($sp)
/* A95044 80241904 AFB40060 */  sw        $s4, 0x60($sp)
/* A95048 80241908 AFB20058 */  sw        $s2, 0x58($sp)
/* A9504C 8024190C AFB10054 */  sw        $s1, 0x54($sp)
/* A95050 80241910 AFB00050 */  sw        $s0, 0x50($sp)
/* A95054 80241914 8E710148 */  lw        $s1, 0x148($s3)
/* A95058 80241918 86240008 */  lh        $a0, 8($s1)
/* A9505C 8024191C 0C00EABB */  jal       get_npc_unsafe
/* A95060 80241920 00A0802D */   daddu    $s0, $a1, $zero
/* A95064 80241924 8E63000C */  lw        $v1, 0xc($s3)
/* A95068 80241928 0260202D */  daddu     $a0, $s3, $zero
/* A9506C 8024192C 8C650000 */  lw        $a1, ($v1)
/* A95070 80241930 0C0B1EAF */  jal       get_variable
/* A95074 80241934 0040902D */   daddu    $s2, $v0, $zero
/* A95078 80241938 AFA00028 */  sw        $zero, 0x28($sp)
/* A9507C 8024193C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A95080 80241940 8C630030 */  lw        $v1, 0x30($v1)
/* A95084 80241944 AFA3002C */  sw        $v1, 0x2c($sp)
/* A95088 80241948 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A9508C 8024194C 8C63001C */  lw        $v1, 0x1c($v1)
/* A95090 80241950 AFA30030 */  sw        $v1, 0x30($sp)
/* A95094 80241954 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A95098 80241958 8C630024 */  lw        $v1, 0x24($v1)
/* A9509C 8024195C AFA30034 */  sw        $v1, 0x34($sp)
/* A950A0 80241960 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A950A4 80241964 8C630028 */  lw        $v1, 0x28($v1)
/* A950A8 80241968 27B50028 */  addiu     $s5, $sp, 0x28
/* A950AC 8024196C AFA30038 */  sw        $v1, 0x38($sp)
/* A950B0 80241970 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A950B4 80241974 3C0142C8 */  lui       $at, 0x42c8
/* A950B8 80241978 44810000 */  mtc1      $at, $f0
/* A950BC 8024197C 8C63002C */  lw        $v1, 0x2c($v1)
/* A950C0 80241980 0040A02D */  daddu     $s4, $v0, $zero
/* A950C4 80241984 E7A00040 */  swc1      $f0, 0x40($sp)
/* A950C8 80241988 A7A00044 */  sh        $zero, 0x44($sp)
/* A950CC 8024198C 12000009 */  beqz      $s0, .L802419B4
/* A950D0 80241990 AFA3003C */   sw       $v1, 0x3c($sp)
/* A950D4 80241994 864300A8 */  lh        $v1, 0xa8($s2)
/* A950D8 80241998 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A950DC 8024199C AE20008C */  sw        $zero, 0x8c($s1)
/* A950E0 802419A0 A22000B5 */  sb        $zero, 0xb5($s1)
/* A950E4 802419A4 34420008 */  ori       $v0, $v0, 8
/* A950E8 802419A8 AE230084 */  sw        $v1, 0x84($s1)
/* A950EC 802419AC 08090671 */  j         .L802419C4
/* A950F0 802419B0 AE2200B0 */   sw       $v0, 0xb0($s1)
.L802419B4:
/* A950F4 802419B4 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A950F8 802419B8 30420004 */  andi      $v0, $v0, 4
/* A950FC 802419BC 10400047 */  beqz      $v0, .L80241ADC
/* A95100 802419C0 00000000 */   nop
.L802419C4:
/* A95104 802419C4 AE600070 */  sw        $zero, 0x70($s3)
/* A95108 802419C8 A640008E */  sh        $zero, 0x8e($s2)
/* A9510C 802419CC 8E2300CC */  lw        $v1, 0xcc($s1)
/* A95110 802419D0 2404F7FF */  addiu     $a0, $zero, -0x801
/* A95114 802419D4 A2200007 */  sb        $zero, 7($s1)
/* A95118 802419D8 8E420000 */  lw        $v0, ($s2)
/* A9511C 802419DC 8C630000 */  lw        $v1, ($v1)
/* A95120 802419E0 00441024 */  and       $v0, $v0, $a0
/* A95124 802419E4 AE420000 */  sw        $v0, ($s2)
/* A95128 802419E8 AE430028 */  sw        $v1, 0x28($s2)
/* A9512C 802419EC 96220086 */  lhu       $v0, 0x86($s1)
/* A95130 802419F0 A64200A8 */  sh        $v0, 0xa8($s2)
/* A95134 802419F4 8E2200D0 */  lw        $v0, 0xd0($s1)
/* A95138 802419F8 AE200090 */  sw        $zero, 0x90($s1)
/* A9513C 802419FC 8C420034 */  lw        $v0, 0x34($v0)
/* A95140 80241A00 14400006 */  bnez      $v0, .L80241A1C
/* A95144 80241A04 2403FDFF */   addiu    $v1, $zero, -0x201
/* A95148 80241A08 8E420000 */  lw        $v0, ($s2)
/* A9514C 80241A0C 2403FFF7 */  addiu     $v1, $zero, -9
/* A95150 80241A10 34420200 */  ori       $v0, $v0, 0x200
/* A95154 80241A14 0809068A */  j         .L80241A28
/* A95158 80241A18 00431024 */   and      $v0, $v0, $v1
.L80241A1C:
/* A9515C 80241A1C 8E420000 */  lw        $v0, ($s2)
/* A95160 80241A20 00431024 */  and       $v0, $v0, $v1
/* A95164 80241A24 34420008 */  ori       $v0, $v0, 8
.L80241A28:
/* A95168 80241A28 AE420000 */  sw        $v0, ($s2)
/* A9516C 80241A2C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A95170 80241A30 30420004 */  andi      $v0, $v0, 4
/* A95174 80241A34 1040001E */  beqz      $v0, .L80241AB0
/* A95178 80241A38 24040002 */   addiu    $a0, $zero, 2
/* A9517C 80241A3C 0240282D */  daddu     $a1, $s2, $zero
/* A95180 80241A40 0000302D */  daddu     $a2, $zero, $zero
/* A95184 80241A44 24020063 */  addiu     $v0, $zero, 0x63
/* A95188 80241A48 AE620070 */  sw        $v0, 0x70($s3)
/* A9518C 80241A4C AE600074 */  sw        $zero, 0x74($s3)
/* A95190 80241A50 864300A8 */  lh        $v1, 0xa8($s2)
/* A95194 80241A54 3C013F80 */  lui       $at, 0x3f80
/* A95198 80241A58 44810000 */  mtc1      $at, $f0
/* A9519C 80241A5C 3C014000 */  lui       $at, 0x4000
/* A951A0 80241A60 44811000 */  mtc1      $at, $f2
/* A951A4 80241A64 3C01C1A0 */  lui       $at, 0xc1a0
/* A951A8 80241A68 44812000 */  mtc1      $at, $f4
/* A951AC 80241A6C 24020028 */  addiu     $v0, $zero, 0x28
/* A951B0 80241A70 AFA2001C */  sw        $v0, 0x1c($sp)
/* A951B4 80241A74 44833000 */  mtc1      $v1, $f6
/* A951B8 80241A78 00000000 */  nop
/* A951BC 80241A7C 468031A0 */  cvt.s.w   $f6, $f6
/* A951C0 80241A80 44073000 */  mfc1      $a3, $f6
/* A951C4 80241A84 27A20048 */  addiu     $v0, $sp, 0x48
/* A951C8 80241A88 AFA20020 */  sw        $v0, 0x20($sp)
/* A951CC 80241A8C E7A00010 */  swc1      $f0, 0x10($sp)
/* A951D0 80241A90 E7A20014 */  swc1      $f2, 0x14($sp)
/* A951D4 80241A94 0C01BFA4 */  jal       fx_emote
/* A951D8 80241A98 E7A40018 */   swc1     $f4, 0x18($sp)
/* A951DC 80241A9C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A951E0 80241AA0 2403FFFB */  addiu     $v1, $zero, -5
/* A951E4 80241AA4 00431024 */  and       $v0, $v0, $v1
/* A951E8 80241AA8 080906B7 */  j         .L80241ADC
/* A951EC 80241AAC AE2200B0 */   sw       $v0, 0xb0($s1)
.L80241AB0:
/* A951F0 80241AB0 8E220000 */  lw        $v0, ($s1)
/* A951F4 80241AB4 3C034000 */  lui       $v1, 0x4000
/* A951F8 80241AB8 00431024 */  and       $v0, $v0, $v1
/* A951FC 80241ABC 10400007 */  beqz      $v0, .L80241ADC
/* A95200 80241AC0 3C03BFFF */   lui      $v1, 0xbfff
/* A95204 80241AC4 2402000C */  addiu     $v0, $zero, 0xc
/* A95208 80241AC8 AE620070 */  sw        $v0, 0x70($s3)
/* A9520C 80241ACC 8E220000 */  lw        $v0, ($s1)
/* A95210 80241AD0 3463FFFF */  ori       $v1, $v1, 0xffff
/* A95214 80241AD4 00431024 */  and       $v0, $v0, $v1
/* A95218 80241AD8 AE220000 */  sw        $v0, ($s1)
.L80241ADC:
/* A9521C 80241ADC 8E220090 */  lw        $v0, 0x90($s1)
/* A95220 80241AE0 1840000C */  blez      $v0, .L80241B14
/* A95224 80241AE4 2442FFFF */   addiu    $v0, $v0, -1
/* A95228 80241AE8 14400087 */  bnez      $v0, L80241D08_A95448
/* A9522C 80241AEC AE220090 */   sw       $v0, 0x90($s1)
/* A95230 80241AF0 3C03FFAA */  lui       $v1, 0xffaa
/* A95234 80241AF4 8E420028 */  lw        $v0, 0x28($s2)
/* A95238 80241AF8 3463FFD2 */  ori       $v1, $v1, 0xffd2
/* A9523C 80241AFC 00431021 */  addu      $v0, $v0, $v1
/* A95240 80241B00 2C420002 */  sltiu     $v0, $v0, 2
/* A95244 80241B04 10400003 */  beqz      $v0, .L80241B14
/* A95248 80241B08 3C020055 */   lui      $v0, 0x55
/* A9524C 80241B0C 3442000C */  ori       $v0, $v0, 0xc
/* A95250 80241B10 AE420028 */  sw        $v0, 0x28($s2)
.L80241B14:
/* A95254 80241B14 8E630070 */  lw        $v1, 0x70($s3)
/* A95258 80241B18 2402000C */  addiu     $v0, $zero, 0xc
/* A9525C 80241B1C 10620048 */  beq       $v1, $v0, .L80241C40
/* A95260 80241B20 2862000D */   slti     $v0, $v1, 0xd
/* A95264 80241B24 1040000F */  beqz      $v0, .L80241B64
/* A95268 80241B28 24100001 */   addiu    $s0, $zero, 1
/* A9526C 80241B2C 1070001E */  beq       $v1, $s0, .L80241BA8
/* A95270 80241B30 28620002 */   slti     $v0, $v1, 2
/* A95274 80241B34 10400005 */  beqz      $v0, .L80241B4C
/* A95278 80241B38 24020002 */   addiu    $v0, $zero, 2
/* A9527C 80241B3C 10600015 */  beqz      $v1, .L80241B94
/* A95280 80241B40 0260202D */   daddu    $a0, $s3, $zero
/* A95284 80241B44 08090727 */  j         .L80241C9C
/* A95288 80241B48 00000000 */   nop
.L80241B4C:
/* A9528C 80241B4C 1062001C */  beq       $v1, $v0, .L80241BC0
/* A95290 80241B50 24020003 */   addiu    $v0, $zero, 3
/* A95294 80241B54 10620035 */  beq       $v1, $v0, .L80241C2C
/* A95298 80241B58 0260202D */   daddu    $a0, $s3, $zero
/* A9529C 80241B5C 08090727 */  j         .L80241C9C
/* A952A0 80241B60 00000000 */   nop
.L80241B64:
/* A952A4 80241B64 2402000E */  addiu     $v0, $zero, 0xe
/* A952A8 80241B68 1062003F */  beq       $v1, $v0, .L80241C68
/* A952AC 80241B6C 0062102A */   slt      $v0, $v1, $v0
/* A952B0 80241B70 14400038 */  bnez      $v0, .L80241C54
/* A952B4 80241B74 0260202D */   daddu    $a0, $s3, $zero
/* A952B8 80241B78 2402000F */  addiu     $v0, $zero, 0xf
/* A952BC 80241B7C 10620040 */  beq       $v1, $v0, .L80241C80
/* A952C0 80241B80 24020063 */   addiu    $v0, $zero, 0x63
/* A952C4 80241B84 10620043 */  beq       $v1, $v0, .L80241C94
/* A952C8 80241B88 00000000 */   nop
/* A952CC 80241B8C 08090727 */  j         .L80241C9C
/* A952D0 80241B90 00000000 */   nop
.L80241B94:
/* A952D4 80241B94 0280282D */  daddu     $a1, $s4, $zero
/* A952D8 80241B98 0C012568 */  jal       func_800495A0
/* A952DC 80241B9C 02A0302D */   daddu    $a2, $s5, $zero
/* A952E0 80241BA0 96220086 */  lhu       $v0, 0x86($s1)
/* A952E4 80241BA4 A64200A8 */  sh        $v0, 0xa8($s2)
.L80241BA8:
/* A952E8 80241BA8 0260202D */  daddu     $a0, $s3, $zero
/* A952EC 80241BAC 0280282D */  daddu     $a1, $s4, $zero
/* A952F0 80241BB0 0C0125AE */  jal       func_800496B8
/* A952F4 80241BB4 02A0302D */   daddu    $a2, $s5, $zero
/* A952F8 80241BB8 08090727 */  j         .L80241C9C
/* A952FC 80241BBC 00000000 */   nop
.L80241BC0:
/* A95300 80241BC0 0260202D */  daddu     $a0, $s3, $zero
/* A95304 80241BC4 0280282D */  daddu     $a1, $s4, $zero
/* A95308 80241BC8 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* A9530C 80241BCC 02A0302D */   daddu    $a2, $s5, $zero
/* A95310 80241BD0 8E230088 */  lw        $v1, 0x88($s1)
/* A95314 80241BD4 24020006 */  addiu     $v0, $zero, 6
/* A95318 80241BD8 14620014 */  bne       $v1, $v0, .L80241C2C
/* A9531C 80241BDC 0260202D */   daddu    $a0, $s3, $zero
/* A95320 80241BE0 0C00A67F */  jal       rand_int
/* A95324 80241BE4 24040064 */   addiu    $a0, $zero, 0x64
/* A95328 80241BE8 28420021 */  slti      $v0, $v0, 0x21
/* A9532C 80241BEC 5040000F */  beql      $v0, $zero, .L80241C2C
/* A95330 80241BF0 0260202D */   daddu    $a0, $s3, $zero
/* A95334 80241BF4 8E22008C */  lw        $v0, 0x8c($s1)
/* A95338 80241BF8 10400005 */  beqz      $v0, .L80241C10
/* A9533C 80241BFC 3C020055 */   lui      $v0, 0x55
/* A95340 80241C00 3442002F */  ori       $v0, $v0, 0x2f
/* A95344 80241C04 AE20008C */  sw        $zero, 0x8c($s1)
/* A95348 80241C08 08090707 */  j         .L80241C1C
/* A9534C 80241C0C A22000B5 */   sb       $zero, 0xb5($s1)
.L80241C10:
/* A95350 80241C10 3442002E */  ori       $v0, $v0, 0x2e
/* A95354 80241C14 AE30008C */  sw        $s0, 0x8c($s1)
/* A95358 80241C18 A23000B5 */  sb        $s0, 0xb5($s1)
.L80241C1C:
/* A9535C 80241C1C AE420028 */  sw        $v0, 0x28($s2)
/* A95360 80241C20 24020007 */  addiu     $v0, $zero, 7
/* A95364 80241C24 08090742 */  j         L80241D08_A95448
/* A95368 80241C28 AE220090 */   sw       $v0, 0x90($s1)
.L80241C2C:
/* A9536C 80241C2C 0280282D */  daddu     $a1, $s4, $zero
/* A95370 80241C30 0C012701 */  jal       func_80049C04
/* A95374 80241C34 02A0302D */   daddu    $a2, $s5, $zero
/* A95378 80241C38 08090727 */  j         .L80241C9C
/* A9537C 80241C3C 00000000 */   nop
.L80241C40:
/* A95380 80241C40 0260202D */  daddu     $a0, $s3, $zero
/* A95384 80241C44 0280282D */  daddu     $a1, $s4, $zero
/* A95388 80241C48 0C090557 */  jal       kpa_102_set_script_owner_npc_anim
/* A9538C 80241C4C 02A0302D */   daddu    $a2, $s5, $zero
/* A95390 80241C50 0260202D */  daddu     $a0, $s3, $zero
.L80241C54:
/* A95394 80241C54 0280282D */  daddu     $a1, $s4, $zero
/* A95398 80241C58 0C090576 */  jal       func_802415D8_A94D18
/* A9539C 80241C5C 02A0302D */   daddu    $a2, $s5, $zero
/* A953A0 80241C60 08090727 */  j         .L80241C9C
/* A953A4 80241C64 00000000 */   nop
.L80241C68:
/* A953A8 80241C68 0260202D */  daddu     $a0, $s3, $zero
/* A953AC 80241C6C 0280282D */  daddu     $a1, $s4, $zero
/* A953B0 80241C70 0C0905C3 */  jal       kpa_102_UnkNpcAIFunc12
/* A953B4 80241C74 02A0302D */   daddu    $a2, $s5, $zero
/* A953B8 80241C78 08090727 */  j         .L80241C9C
/* A953BC 80241C7C 00000000 */   nop
.L80241C80:
/* A953C0 80241C80 0280282D */  daddu     $a1, $s4, $zero
/* A953C4 80241C84 0C09061C */  jal       kpa_102_set_script_owner_npc_col_height
/* A953C8 80241C88 02A0302D */   daddu    $a2, $s5, $zero
/* A953CC 80241C8C 08090727 */  j         .L80241C9C
/* A953D0 80241C90 00000000 */   nop
.L80241C94:
/* A953D4 80241C94 0C0129CF */  jal       func_8004A73C
/* A953D8 80241C98 0260202D */   daddu    $a0, $s3, $zero
.L80241C9C:
/* A953DC 80241C9C 8E230088 */  lw        $v1, 0x88($s1)
/* A953E0 80241CA0 24020006 */  addiu     $v0, $zero, 6
/* A953E4 80241CA4 14620019 */  bne       $v1, $v0, .L80241D0C
/* A953E8 80241CA8 0000102D */   daddu    $v0, $zero, $zero
/* A953EC 80241CAC 8E22008C */  lw        $v0, 0x8c($s1)
/* A953F0 80241CB0 10400003 */  beqz      $v0, .L80241CC0
/* A953F4 80241CB4 24020001 */   addiu    $v0, $zero, 1
/* A953F8 80241CB8 08090731 */  j         .L80241CC4
/* A953FC 80241CBC A22200B5 */   sb       $v0, 0xb5($s1)
.L80241CC0:
/* A95400 80241CC0 A22000B5 */  sb        $zero, 0xb5($s1)
.L80241CC4:
/* A95404 80241CC4 8E22008C */  lw        $v0, 0x8c($s1)
/* A95408 80241CC8 1040000F */  beqz      $v0, L80241D08_A95448
/* A9540C 80241CCC 3C03FFAA */   lui      $v1, 0xffaa
/* A95410 80241CD0 8E420028 */  lw        $v0, 0x28($s2)
/* A95414 80241CD4 3463FFFC */  ori       $v1, $v1, 0xfffc
/* A95418 80241CD8 00431821 */  addu      $v1, $v0, $v1
/* A9541C 80241CDC 2C620015 */  sltiu     $v0, $v1, 0x15
/* A95420 80241CE0 10400009 */  beqz      $v0, L80241D08_A95448
/* A95424 80241CE4 00031080 */   sll      $v0, $v1, 2
/* A95428 80241CE8 3C018024 */  lui       $at, %hi(jtbl_80245CE0_A99420)
/* A9542C 80241CEC 00220821 */  addu      $at, $at, $v0
/* A95430 80241CF0 8C225CE0 */  lw        $v0, %lo(jtbl_80245CE0_A99420)($at)
/* A95434 80241CF4 00400008 */  jr        $v0
/* A95438 80241CF8 00000000 */   nop
glabel L80241CFC_A9543C
/* A9543C 80241CFC 8E420028 */  lw        $v0, 0x28($s2)
/* A95440 80241D00 24420001 */  addiu     $v0, $v0, 1
/* A95444 80241D04 AE420028 */  sw        $v0, 0x28($s2)
glabel L80241D08_A95448
/* A95448 80241D08 0000102D */  daddu     $v0, $zero, $zero
.L80241D0C:
/* A9544C 80241D0C 8FBF0068 */  lw        $ra, 0x68($sp)
/* A95450 80241D10 8FB50064 */  lw        $s5, 0x64($sp)
/* A95454 80241D14 8FB40060 */  lw        $s4, 0x60($sp)
/* A95458 80241D18 8FB3005C */  lw        $s3, 0x5c($sp)
/* A9545C 80241D1C 8FB20058 */  lw        $s2, 0x58($sp)
/* A95460 80241D20 8FB10054 */  lw        $s1, 0x54($sp)
/* A95464 80241D24 8FB00050 */  lw        $s0, 0x50($sp)
/* A95468 80241D28 03E00008 */  jr        $ra
/* A9546C 80241D2C 27BD0070 */   addiu    $sp, $sp, 0x70
