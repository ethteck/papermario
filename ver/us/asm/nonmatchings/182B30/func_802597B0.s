.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802597B0
/* 188090 802597B0 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 188094 802597B4 AFB1001C */  sw        $s1, 0x1c($sp)
/* 188098 802597B8 0080882D */  daddu     $s1, $a0, $zero
/* 18809C 802597BC AFB30024 */  sw        $s3, 0x24($sp)
/* 1880A0 802597C0 00A0982D */  daddu     $s3, $a1, $zero
/* 1880A4 802597C4 AFB20020 */  sw        $s2, 0x20($sp)
/* 1880A8 802597C8 00C0902D */  daddu     $s2, $a2, $zero
/* 1880AC 802597CC 240600FF */  addiu     $a2, $zero, 0xff
/* 1880B0 802597D0 AFBF0028 */  sw        $ra, 0x28($sp)
/* 1880B4 802597D4 AFB00018 */  sw        $s0, 0x18($sp)
/* 1880B8 802597D8 86230098 */  lh        $v1, 0x98($s1)
/* 1880BC 802597DC 8E3000C0 */  lw        $s0, 0xc0($s1)
/* 1880C0 802597E0 0066102A */  slt       $v0, $v1, $a2
/* 1880C4 802597E4 10400003 */  beqz      $v0, .L802597F4
/* 1880C8 802597E8 0000202D */   daddu    $a0, $zero, $zero
/* 1880CC 802597EC 3C048000 */  lui       $a0, 0x8000
/* 1880D0 802597F0 0060302D */  daddu     $a2, $v1, $zero
.L802597F4:
/* 1880D4 802597F4 8E220000 */  lw        $v0, ($s1)
/* 1880D8 802597F8 30420100 */  andi      $v0, $v0, 0x100
/* 1880DC 802597FC 1040000C */  beqz      $v0, .L80259830
/* 1880E0 80259800 3C038080 */   lui      $v1, 0x8080
/* 1880E4 80259804 34638081 */  ori       $v1, $v1, 0x8081
/* 1880E8 80259808 00061100 */  sll       $v0, $a2, 4
/* 1880EC 8025980C 00461023 */  subu      $v0, $v0, $a2
/* 1880F0 80259810 000210C0 */  sll       $v0, $v0, 3
/* 1880F4 80259814 00430018 */  mult      $v0, $v1
/* 1880F8 80259818 3C048000 */  lui       $a0, 0x8000
/* 1880FC 8025981C 00004010 */  mfhi      $t0
/* 188100 80259820 01021821 */  addu      $v1, $t0, $v0
/* 188104 80259824 000319C3 */  sra       $v1, $v1, 7
/* 188108 80259828 000217C3 */  sra       $v0, $v0, 0x1f
/* 18810C 8025982C 00623023 */  subu      $a2, $v1, $v0
.L80259830:
/* 188110 80259830 92020768 */  lbu       $v0, 0x768($s0)
/* 188114 80259834 5040003F */  beql      $v0, $zero, .L80259934
/* 188118 80259838 AFB20010 */   sw       $s2, 0x10($sp)
/* 18811C 8025983C 96240088 */  lhu       $a0, 0x88($s1)
/* 188120 80259840 0C0B7830 */  jal       spr_get_player_palettes
/* 188124 80259844 00000000 */   nop
/* 188128 80259848 AE0206D0 */  sw        $v0, 0x6d0($s0)
/* 18812C 8025984C 0040202D */  daddu     $a0, $v0, $zero
/* 188130 80259850 A20006CD */  sb        $zero, 0x6cd($s0)
/* 188134 80259854 8C830000 */  lw        $v1, ($a0)
/* 188138 80259858 2402FFFF */  addiu     $v0, $zero, -1
/* 18813C 8025985C 1062000C */  beq       $v1, $v0, .L80259890
/* 188140 80259860 00000000 */   nop
/* 188144 80259864 0080182D */  daddu     $v1, $a0, $zero
/* 188148 80259868 0040202D */  daddu     $a0, $v0, $zero
.L8025986C:
/* 18814C 8025986C 920206CD */  lbu       $v0, 0x6cd($s0)
/* 188150 80259870 24420001 */  addiu     $v0, $v0, 1
/* 188154 80259874 A20206CD */  sb        $v0, 0x6cd($s0)
/* 188158 80259878 00021600 */  sll       $v0, $v0, 0x18
/* 18815C 8025987C 00021583 */  sra       $v0, $v0, 0x16
/* 188160 80259880 00431021 */  addu      $v0, $v0, $v1
/* 188164 80259884 8C420000 */  lw        $v0, ($v0)
/* 188168 80259888 1444FFF8 */  bne       $v0, $a0, .L8025986C
/* 18816C 8025988C 00000000 */   nop
.L80259890:
/* 188170 80259890 820206CD */  lb        $v0, 0x6cd($s0)
/* 188174 80259894 18400016 */  blez      $v0, .L802598F0
/* 188178 80259898 0000302D */   daddu    $a2, $zero, $zero
.L8025989C:
/* 18817C 8025989C 8E0206D0 */  lw        $v0, 0x6d0($s0)
/* 188180 802598A0 00061880 */  sll       $v1, $a2, 2
/* 188184 802598A4 00621821 */  addu      $v1, $v1, $v0
/* 188188 802598A8 00061140 */  sll       $v0, $a2, 5
/* 18818C 802598AC 8C630000 */  lw        $v1, ($v1)
/* 188190 802598B0 10600009 */  beqz      $v1, .L802598D8
/* 188194 802598B4 02022821 */   addu     $a1, $s0, $v0
/* 188198 802598B8 0000202D */  daddu     $a0, $zero, $zero
.L802598BC:
/* 18819C 802598BC 94620000 */  lhu       $v0, ($v1)
/* 1881A0 802598C0 24630002 */  addiu     $v1, $v1, 2
/* 1881A4 802598C4 24840001 */  addiu     $a0, $a0, 1
/* 1881A8 802598C8 A4A20000 */  sh        $v0, ($a1)
/* 1881AC 802598CC 28820010 */  slti      $v0, $a0, 0x10
/* 1881B0 802598D0 1440FFFA */  bnez      $v0, .L802598BC
/* 1881B4 802598D4 24A50002 */   addiu    $a1, $a1, 2
.L802598D8:
/* 1881B8 802598D8 820206CD */  lb        $v0, 0x6cd($s0)
/* 1881BC 802598DC 24C60001 */  addiu     $a2, $a2, 1
/* 1881C0 802598E0 00C2102A */  slt       $v0, $a2, $v0
/* 1881C4 802598E4 1440FFED */  bnez      $v0, .L8025989C
/* 1881C8 802598E8 00000000 */   nop
/* 1881CC 802598EC 820206CD */  lb        $v0, 0x6cd($s0)
.L802598F0:
/* 1881D0 802598F0 1840000A */  blez      $v0, .L8025991C
/* 1881D4 802598F4 0000302D */   daddu    $a2, $zero, $zero
/* 1881D8 802598F8 0200202D */  daddu     $a0, $s0, $zero
/* 1881DC 802598FC 0200182D */  daddu     $v1, $s0, $zero
.L80259900:
/* 1881E0 80259900 AC6406D4 */  sw        $a0, 0x6d4($v1)
/* 1881E4 80259904 24840020 */  addiu     $a0, $a0, 0x20
/* 1881E8 80259908 820206CD */  lb        $v0, 0x6cd($s0)
/* 1881EC 8025990C 24C60001 */  addiu     $a2, $a2, 1
/* 1881F0 80259910 00C2102A */  slt       $v0, $a2, $v0
/* 1881F4 80259914 1440FFFA */  bnez      $v0, .L80259900
/* 1881F8 80259918 24630004 */   addiu    $v1, $v1, 4
.L8025991C:
/* 1881FC 8025991C 0220202D */  daddu     $a0, $s1, $zero
/* 188200 80259920 0260282D */  daddu     $a1, $s3, $zero
/* 188204 80259924 0C096657 */  jal       func_8025995C
/* 188208 80259928 0240302D */   daddu    $a2, $s2, $zero
/* 18820C 8025992C 08096650 */  j         .L80259940
/* 188210 80259930 00000000 */   nop
.L80259934:
/* 188214 80259934 0260282D */  daddu     $a1, $s3, $zero
/* 188218 80259938 0C0B7710 */  jal       spr_draw_player_sprite
/* 18821C 8025993C 0000382D */   daddu    $a3, $zero, $zero
.L80259940:
/* 188220 80259940 8FBF0028 */  lw        $ra, 0x28($sp)
/* 188224 80259944 8FB30024 */  lw        $s3, 0x24($sp)
/* 188228 80259948 8FB20020 */  lw        $s2, 0x20($sp)
/* 18822C 8025994C 8FB1001C */  lw        $s1, 0x1c($sp)
/* 188230 80259950 8FB00018 */  lw        $s0, 0x18($sp)
/* 188234 80259954 03E00008 */  jr        $ra
/* 188238 80259958 27BD0030 */   addiu    $sp, $sp, 0x30
