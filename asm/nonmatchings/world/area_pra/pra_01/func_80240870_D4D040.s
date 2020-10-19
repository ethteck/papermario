.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240870_D4D8B0
/* D4D8B0 80240870 27BDFE80 */  addiu     $sp, $sp, -0x180
/* D4D8B4 80240874 F7B60158 */  sdc1      $f22, 0x158($sp)
/* D4D8B8 80240878 4480B000 */  mtc1      $zero, $f22
/* D4D8BC 8024087C AFB10134 */  sw        $s1, 0x134($sp)
/* D4D8C0 80240880 0080882D */  daddu     $s1, $a0, $zero
/* D4D8C4 80240884 AFB3013C */  sw        $s3, 0x13c($sp)
/* D4D8C8 80240888 0000982D */  daddu     $s3, $zero, $zero
/* D4D8CC 8024088C AFB60148 */  sw        $s6, 0x148($sp)
/* D4D8D0 80240890 3C16800B */  lui       $s6, %hi(gCameras)
/* D4D8D4 80240894 26D61D80 */  addiu     $s6, $s6, %lo(gCameras)
/* D4D8D8 80240898 AFB50144 */  sw        $s5, 0x144($sp)
/* D4D8DC 8024089C 241500FF */  addiu     $s5, $zero, 0xff
/* D4D8E0 802408A0 AFB00130 */  sw        $s0, 0x130($sp)
/* D4D8E4 802408A4 27B000A0 */  addiu     $s0, $sp, 0xa0
/* D4D8E8 802408A8 AFB20138 */  sw        $s2, 0x138($sp)
/* D4D8EC 802408AC 27B20060 */  addiu     $s2, $sp, 0x60
/* D4D8F0 802408B0 AFB40140 */  sw        $s4, 0x140($sp)
/* D4D8F4 802408B4 27B400E0 */  addiu     $s4, $sp, 0xe0
/* D4D8F8 802408B8 AFBF014C */  sw        $ra, 0x14c($sp)
/* D4D8FC 802408BC F7BE0178 */  sdc1      $f30, 0x178($sp)
/* D4D900 802408C0 F7BC0170 */  sdc1      $f28, 0x170($sp)
/* D4D904 802408C4 F7BA0168 */  sdc1      $f26, 0x168($sp)
/* D4D908 802408C8 F7B80160 */  sdc1      $f24, 0x160($sp)
/* D4D90C 802408CC F7B40150 */  sdc1      $f20, 0x150($sp)
.L802408D0:
/* D4D910 802408D0 3C03800A */  lui       $v1, 0x800a
/* D4D914 802408D4 8463A634 */  lh        $v1, -0x59cc($v1)
/* D4D918 802408D8 00031080 */  sll       $v0, $v1, 2
/* D4D91C 802408DC 00431021 */  addu      $v0, $v0, $v1
/* D4D920 802408E0 00021080 */  sll       $v0, $v0, 2
/* D4D924 802408E4 00431023 */  subu      $v0, $v0, $v1
/* D4D928 802408E8 000218C0 */  sll       $v1, $v0, 3
/* D4D92C 802408EC 00431021 */  addu      $v0, $v0, $v1
/* D4D930 802408F0 000210C0 */  sll       $v0, $v0, 3
/* D4D934 802408F4 00561021 */  addu      $v0, $v0, $s6
/* D4D938 802408F8 C440006C */  lwc1      $f0, 0x6c($v0)
/* D4D93C 802408FC 16600065 */  bnez      $s3, .L80240A94
/* D4D940 80240900 46000507 */   neg.s    $f20, $f0
/* D4D944 80240904 C62200A8 */  lwc1      $f2, 0xa8($s1)
/* D4D948 80240908 3C0142B4 */  lui       $at, 0x42b4
/* D4D94C 8024090C 44810000 */  mtc1      $at, $f0
/* D4D950 80240910 00000000 */  nop       
/* D4D954 80240914 4602003C */  c.lt.s    $f0, $f2
/* D4D958 80240918 00000000 */  nop       
/* D4D95C 8024091C 4500000A */  bc1f      .L80240948
/* D4D960 80240920 00000000 */   nop      
/* D4D964 80240924 3C014334 */  lui       $at, 0x4334
/* D4D968 80240928 44812000 */  mtc1      $at, $f4
/* D4D96C 8024092C 00000000 */  nop       
/* D4D970 80240930 4604103E */  c.le.s    $f2, $f4
/* D4D974 80240934 00000000 */  nop       
/* D4D978 80240938 45000003 */  bc1f      .L80240948
/* D4D97C 8024093C 00000000 */   nop      
/* D4D980 80240940 08090276 */  j         .L802409D8
/* D4D984 80240944 46022501 */   sub.s    $f20, $f4, $f2
.L80240948:
/* D4D988 80240948 C62000A8 */  lwc1      $f0, 0xa8($s1)
/* D4D98C 8024094C 3C014334 */  lui       $at, 0x4334
/* D4D990 80240950 44812000 */  mtc1      $at, $f4
/* D4D994 80240954 00000000 */  nop       
/* D4D998 80240958 4600203C */  c.lt.s    $f4, $f0
/* D4D99C 8024095C 00000000 */  nop       
/* D4D9A0 80240960 4500000C */  bc1f      .L80240994
/* D4D9A4 80240964 00000000 */   nop      
/* D4D9A8 80240968 3C014387 */  lui       $at, 0x4387
/* D4D9AC 8024096C 44812000 */  mtc1      $at, $f4
/* D4D9B0 80240970 00000000 */  nop       
/* D4D9B4 80240974 4604003E */  c.le.s    $f0, $f4
/* D4D9B8 80240978 00000000 */  nop       
/* D4D9BC 8024097C 45000008 */  bc1f      .L802409A0
/* D4D9C0 80240980 00000000 */   nop      
/* D4D9C4 80240984 3C014334 */  lui       $at, 0x4334
/* D4D9C8 80240988 44812000 */  mtc1      $at, $f4
/* D4D9CC 8024098C 08090276 */  j         .L802409D8
/* D4D9D0 80240990 46040501 */   sub.s    $f20, $f0, $f4
.L80240994:
/* D4D9D4 80240994 3C014387 */  lui       $at, 0x4387
/* D4D9D8 80240998 44812000 */  mtc1      $at, $f4
/* D4D9DC 8024099C 00000000 */  nop       
.L802409A0:
/* D4D9E0 802409A0 4600203C */  c.lt.s    $f4, $f0
/* D4D9E4 802409A4 00000000 */  nop       
/* D4D9E8 802409A8 4500000A */  bc1f      .L802409D4
/* D4D9EC 802409AC 00000000 */   nop      
/* D4D9F0 802409B0 3C0143B4 */  lui       $at, 0x43b4
/* D4D9F4 802409B4 44811000 */  mtc1      $at, $f2
/* D4D9F8 802409B8 00000000 */  nop       
/* D4D9FC 802409BC 4602003E */  c.le.s    $f0, $f2
/* D4DA00 802409C0 00000000 */  nop       
/* D4DA04 802409C4 45000003 */  bc1f      .L802409D4
/* D4DA08 802409C8 00000000 */   nop      
/* D4DA0C 802409CC 08090276 */  j         .L802409D8
/* D4DA10 802409D0 46001501 */   sub.s    $f20, $f2, $f0
.L802409D4:
/* D4DA14 802409D4 C63400A8 */  lwc1      $f20, 0xa8($s1)
.L802409D8:
/* D4DA18 802409D8 3C0141C8 */  lui       $at, 0x41c8
/* D4DA1C 802409DC 44810000 */  mtc1      $at, $f0
/* D4DA20 802409E0 00000000 */  nop       
/* D4DA24 802409E4 4600A003 */  div.s     $f0, $f20, $f0
/* D4DA28 802409E8 4600010D */  trunc.w.s $f4, $f0
/* D4DA2C 802409EC 44072000 */  mfc1      $a3, $f4
/* D4DA30 802409F0 00000000 */  nop       
/* D4DA34 802409F4 00071100 */  sll       $v0, $a3, 4
/* D4DA38 802409F8 00471023 */  subu      $v0, $v0, $a3
/* D4DA3C 802409FC 00021080 */  sll       $v0, $v0, 2
/* D4DA40 80240A00 02A23823 */  subu      $a3, $s5, $v0
/* D4DA44 80240A04 28E20064 */  slti      $v0, $a3, 0x64
/* D4DA48 80240A08 54400001 */  bnel      $v0, $zero, .L80240A10
/* D4DA4C 80240A0C 24070064 */   addiu    $a3, $zero, 0x64
.L80240A10:
/* D4DA50 80240A10 24040001 */  addiu     $a0, $zero, 1
/* D4DA54 80240A14 2405FFFF */  addiu     $a1, $zero, -1
/* D4DA58 80240A18 24060006 */  addiu     $a2, $zero, 6
/* D4DA5C 80240A1C AFA70010 */  sw        $a3, 0x10($sp)
/* D4DA60 80240A20 AFA70014 */  sw        $a3, 0x14($sp)
/* D4DA64 80240A24 AFB50018 */  sw        $s5, 0x18($sp)
/* D4DA68 80240A28 0C0B77B9 */  jal       func_802DDEE4
/* D4DA6C 80240A2C AFA0001C */   sw       $zero, 0x1c($sp)
/* D4DA70 80240A30 4405A000 */  mfc1      $a1, $f20
/* D4DA74 80240A34 4406B000 */  mfc1      $a2, $f22
/* D4DA78 80240A38 3C07BF80 */  lui       $a3, 0xbf80
/* D4DA7C 80240A3C 0200202D */  daddu     $a0, $s0, $zero
/* D4DA80 80240A40 0C019EC8 */  jal       guRotateF
/* D4DA84 80240A44 E7B60010 */   swc1     $f22, 0x10($sp)
/* D4DA88 80240A48 C62C008C */  lwc1      $f12, 0x8c($s1)
/* D4DA8C 80240A4C 0C00A6C9 */  jal       clamp_angle
/* D4DA90 80240A50 00000000 */   nop      
/* D4DA94 80240A54 44050000 */  mfc1      $a1, $f0
/* D4DA98 80240A58 4406B000 */  mfc1      $a2, $f22
/* D4DA9C 80240A5C 4407B000 */  mfc1      $a3, $f22
/* D4DAA0 80240A60 3C013F80 */  lui       $at, 0x3f80
/* D4DAA4 80240A64 44812000 */  mtc1      $at, $f4
/* D4DAA8 80240A68 27A40020 */  addiu     $a0, $sp, 0x20
/* D4DAAC 80240A6C 0C019EC8 */  jal       guRotateF
/* D4DAB0 80240A70 E7A40010 */   swc1     $f4, 0x10($sp)
/* D4DAB4 80240A74 0200202D */  daddu     $a0, $s0, $zero
/* D4DAB8 80240A78 27A50020 */  addiu     $a1, $sp, 0x20
/* D4DABC 80240A7C 0C019D80 */  jal       guMtxCatF
/* D4DAC0 80240A80 00A0302D */   daddu    $a2, $a1, $zero
/* D4DAC4 80240A84 C63E0028 */  lwc1      $f30, 0x28($s1)
/* D4DAC8 80240A88 C63A002C */  lwc1      $f26, 0x2c($s1)
/* D4DACC 80240A8C 080902D6 */  j         .L80240B58
/* D4DAD0 80240A90 C63C0030 */   lwc1     $f28, 0x30($s1)
.L80240A94:
/* D4DAD4 80240A94 0260202D */  daddu     $a0, $s3, $zero
/* D4DAD8 80240A98 27A50120 */  addiu     $a1, $sp, 0x120
/* D4DADC 80240A9C 27A60124 */  addiu     $a2, $sp, 0x124
/* D4DAE0 80240AA0 0C03964E */  jal       func_800E5938
/* D4DAE4 80240AA4 27A70128 */   addiu    $a3, $sp, 0x128
/* D4DAE8 80240AA8 8FA60124 */  lw        $a2, 0x124($sp)
/* D4DAEC 80240AAC 3C028000 */  lui       $v0, 0x8000
/* D4DAF0 80240AB0 14C20004 */  bne       $a2, $v0, .L80240AC4
/* D4DAF4 80240AB4 46000606 */   mov.s    $f24, $f0
/* D4DAF8 80240AB8 C63A002C */  lwc1      $f26, 0x2c($s1)
/* D4DAFC 80240ABC 080902B5 */  j         .L80240AD4
/* D4DB00 80240AC0 24040001 */   addiu    $a0, $zero, 1
.L80240AC4:
/* D4DB04 80240AC4 4486D000 */  mtc1      $a2, $f26
/* D4DB08 80240AC8 00000000 */  nop       
/* D4DB0C 80240ACC 4680D6A0 */  cvt.s.w   $f26, $f26
/* D4DB10 80240AD0 24040001 */  addiu     $a0, $zero, 1
.L80240AD4:
/* D4DB14 80240AD4 2405FFFF */  addiu     $a1, $zero, -1
/* D4DB18 80240AD8 24060007 */  addiu     $a2, $zero, 7
/* D4DB1C 80240ADC 0000382D */  daddu     $a3, $zero, $zero
/* D4DB20 80240AE0 C63E0028 */  lwc1      $f30, 0x28($s1)
/* D4DB24 80240AE4 C63C0030 */  lwc1      $f28, 0x30($s1)
/* D4DB28 80240AE8 24020040 */  addiu     $v0, $zero, 0x40
/* D4DB2C 80240AEC AFA00010 */  sw        $zero, 0x10($sp)
/* D4DB30 80240AF0 AFA00014 */  sw        $zero, 0x14($sp)
/* D4DB34 80240AF4 AFA20018 */  sw        $v0, 0x18($sp)
/* D4DB38 80240AF8 0C0B77B9 */  jal       func_802DDEE4
/* D4DB3C 80240AFC AFA0001C */   sw       $zero, 0x1c($sp)
/* D4DB40 80240B00 4405A000 */  mfc1      $a1, $f20
/* D4DB44 80240B04 4406B000 */  mfc1      $a2, $f22
/* D4DB48 80240B08 3C07BF80 */  lui       $a3, 0xbf80
/* D4DB4C 80240B0C 27A40020 */  addiu     $a0, $sp, 0x20
/* D4DB50 80240B10 0C019EC8 */  jal       guRotateF
/* D4DB54 80240B14 E7B60010 */   swc1     $f22, 0x10($sp)
/* D4DB58 80240B18 4405A000 */  mfc1      $a1, $f20
/* D4DB5C 80240B1C 4406B000 */  mfc1      $a2, $f22
/* D4DB60 80240B20 3C07BF80 */  lui       $a3, 0xbf80
/* D4DB64 80240B24 0200202D */  daddu     $a0, $s0, $zero
/* D4DB68 80240B28 0C019EC8 */  jal       guRotateF
/* D4DB6C 80240B2C E7B60010 */   swc1     $f22, 0x10($sp)
/* D4DB70 80240B30 4405C000 */  mfc1      $a1, $f24
/* D4DB74 80240B34 4406B000 */  mfc1      $a2, $f22
/* D4DB78 80240B38 3C073F80 */  lui       $a3, 0x3f80
/* D4DB7C 80240B3C 27A40020 */  addiu     $a0, $sp, 0x20
/* D4DB80 80240B40 0C019EC8 */  jal       guRotateF
/* D4DB84 80240B44 E7B60010 */   swc1     $f22, 0x10($sp)
/* D4DB88 80240B48 0200202D */  daddu     $a0, $s0, $zero
/* D4DB8C 80240B4C 27A50020 */  addiu     $a1, $sp, 0x20
/* D4DB90 80240B50 0C019D80 */  jal       guMtxCatF
/* D4DB94 80240B54 00A0302D */   daddu    $a2, $a1, $zero
.L80240B58:
/* D4DB98 80240B58 862200B0 */  lh        $v0, 0xb0($s1)
/* D4DB9C 80240B5C 3C013F00 */  lui       $at, 0x3f00
/* D4DBA0 80240B60 44812000 */  mtc1      $at, $f4
/* D4DBA4 80240B64 00021023 */  negu      $v0, $v0
/* D4DBA8 80240B68 44820000 */  mtc1      $v0, $f0
/* D4DBAC 80240B6C 00000000 */  nop       
/* D4DBB0 80240B70 46800020 */  cvt.s.w   $f0, $f0
/* D4DBB4 80240B74 46040102 */  mul.s     $f4, $f0, $f4
/* D4DBB8 80240B78 00000000 */  nop       
/* D4DBBC 80240B7C 4405B000 */  mfc1      $a1, $f22
/* D4DBC0 80240B80 4407B000 */  mfc1      $a3, $f22
/* D4DBC4 80240B84 44062000 */  mfc1      $a2, $f4
/* D4DBC8 80240B88 0C019E40 */  jal       guTranslateF
/* D4DBCC 80240B8C 0240202D */   daddu    $a0, $s2, $zero
/* D4DBD0 80240B90 0240202D */  daddu     $a0, $s2, $zero
/* D4DBD4 80240B94 27A50020 */  addiu     $a1, $sp, 0x20
/* D4DBD8 80240B98 0C019D80 */  jal       guMtxCatF
/* D4DBDC 80240B9C 00A0302D */   daddu    $a2, $a1, $zero
/* D4DBE0 80240BA0 4405A000 */  mfc1      $a1, $f20
/* D4DBE4 80240BA4 4406B000 */  mfc1      $a2, $f22
/* D4DBE8 80240BA8 3C073F80 */  lui       $a3, 0x3f80
/* D4DBEC 80240BAC 0200202D */  daddu     $a0, $s0, $zero
/* D4DBF0 80240BB0 0C019EC8 */  jal       guRotateF
/* D4DBF4 80240BB4 E7B60010 */   swc1     $f22, 0x10($sp)
/* D4DBF8 80240BB8 27A40020 */  addiu     $a0, $sp, 0x20
/* D4DBFC 80240BBC 0200282D */  daddu     $a1, $s0, $zero
/* D4DC00 80240BC0 0C019D80 */  jal       guMtxCatF
/* D4DC04 80240BC4 0080302D */   daddu    $a2, $a0, $zero
/* D4DC08 80240BC8 E7B60010 */  swc1      $f22, 0x10($sp)
/* D4DC0C 80240BCC 8E2500A8 */  lw        $a1, 0xa8($s1)
/* D4DC10 80240BD0 4406B000 */  mfc1      $a2, $f22
/* D4DC14 80240BD4 3C073F80 */  lui       $a3, 0x3f80
/* D4DC18 80240BD8 0C019EC8 */  jal       guRotateF
/* D4DC1C 80240BDC 0200202D */   daddu    $a0, $s0, $zero
/* D4DC20 80240BE0 27A40020 */  addiu     $a0, $sp, 0x20
/* D4DC24 80240BE4 0200282D */  daddu     $a1, $s0, $zero
/* D4DC28 80240BE8 0C019D80 */  jal       guMtxCatF
/* D4DC2C 80240BEC 0080302D */   daddu    $a2, $a0, $zero
/* D4DC30 80240BF0 862200B0 */  lh        $v0, 0xb0($s1)
/* D4DC34 80240BF4 3C013F00 */  lui       $at, 0x3f00
/* D4DC38 80240BF8 44812000 */  mtc1      $at, $f4
/* D4DC3C 80240BFC 44820000 */  mtc1      $v0, $f0
/* D4DC40 80240C00 00000000 */  nop       
/* D4DC44 80240C04 46800020 */  cvt.s.w   $f0, $f0
/* D4DC48 80240C08 46040102 */  mul.s     $f4, $f0, $f4
/* D4DC4C 80240C0C 00000000 */  nop       
/* D4DC50 80240C10 4405B000 */  mfc1      $a1, $f22
/* D4DC54 80240C14 4407B000 */  mfc1      $a3, $f22
/* D4DC58 80240C18 44062000 */  mfc1      $a2, $f4
/* D4DC5C 80240C1C 0C019E40 */  jal       guTranslateF
/* D4DC60 80240C20 0240202D */   daddu    $a0, $s2, $zero
/* D4DC64 80240C24 27A40020 */  addiu     $a0, $sp, 0x20
/* D4DC68 80240C28 0240282D */  daddu     $a1, $s2, $zero
/* D4DC6C 80240C2C 0C019D80 */  jal       guMtxCatF
/* D4DC70 80240C30 0080302D */   daddu    $a2, $a0, $zero
/* D4DC74 80240C34 3C013F36 */  lui       $at, 0x3f36
/* D4DC78 80240C38 3421DB6E */  ori       $at, $at, 0xdb6e
/* D4DC7C 80240C3C 44810000 */  mtc1      $at, $f0
/* D4DC80 80240C40 0280202D */  daddu     $a0, $s4, $zero
/* D4DC84 80240C44 44050000 */  mfc1      $a1, $f0
/* D4DC88 80240C48 3C06BF36 */  lui       $a2, 0xbf36
/* D4DC8C 80240C4C 34C6DB6E */  ori       $a2, $a2, 0xdb6e
/* D4DC90 80240C50 0C019DF0 */  jal       guScaleF
/* D4DC94 80240C54 00A0382D */   daddu    $a3, $a1, $zero
/* D4DC98 80240C58 27A40020 */  addiu     $a0, $sp, 0x20
/* D4DC9C 80240C5C 0280282D */  daddu     $a1, $s4, $zero
/* D4DCA0 80240C60 0C019D80 */  jal       guMtxCatF
/* D4DCA4 80240C64 0080302D */   daddu    $a2, $a0, $zero
/* D4DCA8 80240C68 4600D687 */  neg.s     $f26, $f26
/* D4DCAC 80240C6C 4405F000 */  mfc1      $a1, $f30
/* D4DCB0 80240C70 4407E000 */  mfc1      $a3, $f28
/* D4DCB4 80240C74 4406D000 */  mfc1      $a2, $f26
/* D4DCB8 80240C78 0C019E40 */  jal       guTranslateF
/* D4DCBC 80240C7C 0240202D */   daddu    $a0, $s2, $zero
/* D4DCC0 80240C80 27A40020 */  addiu     $a0, $sp, 0x20
/* D4DCC4 80240C84 0240282D */  daddu     $a1, $s2, $zero
/* D4DCC8 80240C88 0C019D80 */  jal       guMtxCatF
/* D4DCCC 80240C8C 0080302D */   daddu    $a2, $a0, $zero
/* D4DCD0 80240C90 C62200A8 */  lwc1      $f2, 0xa8($s1)
/* D4DCD4 80240C94 3C0142B4 */  lui       $at, 0x42b4
/* D4DCD8 80240C98 44810000 */  mtc1      $at, $f0
/* D4DCDC 80240C9C 00000000 */  nop       
/* D4DCE0 80240CA0 4602003E */  c.le.s    $f0, $f2
/* D4DCE4 80240CA4 00000000 */  nop       
/* D4DCE8 80240CA8 4500000A */  bc1f      .L80240CD4
/* D4DCEC 80240CAC 24040001 */   addiu    $a0, $zero, 1
/* D4DCF0 80240CB0 3C014387 */  lui       $at, 0x4387
/* D4DCF4 80240CB4 44812000 */  mtc1      $at, $f4
/* D4DCF8 80240CB8 00000000 */  nop       
/* D4DCFC 80240CBC 4604103C */  c.lt.s    $f2, $f4
/* D4DD00 80240CC0 00000000 */  nop       
/* D4DD04 80240CC4 45000004 */  bc1f      .L80240CD8
/* D4DD08 80240CC8 27A20020 */   addiu    $v0, $sp, 0x20
/* D4DD0C 80240CCC 3C041000 */  lui       $a0, 0x1000
/* D4DD10 80240CD0 34840001 */  ori       $a0, $a0, 1
.L80240CD4:
/* D4DD14 80240CD4 27A20020 */  addiu     $v0, $sp, 0x20
.L80240CD8:
/* D4DD18 80240CD8 AFA20010 */  sw        $v0, 0x10($sp)
/* D4DD1C 80240CDC 0000282D */  daddu     $a1, $zero, $zero
/* D4DD20 80240CE0 00A0302D */  daddu     $a2, $a1, $zero
/* D4DD24 80240CE4 0C0B7710 */  jal       render_sprite
/* D4DD28 80240CE8 00A0382D */   daddu    $a3, $a1, $zero
/* D4DD2C 80240CEC 26730001 */  addiu     $s3, $s3, 1
/* D4DD30 80240CF0 2A620002 */  slti      $v0, $s3, 2
/* D4DD34 80240CF4 1440FEF6 */  bnez      $v0, .L802408D0
/* D4DD38 80240CF8 00000000 */   nop      
/* D4DD3C 80240CFC 8FBF014C */  lw        $ra, 0x14c($sp)
/* D4DD40 80240D00 8FB60148 */  lw        $s6, 0x148($sp)
/* D4DD44 80240D04 8FB50144 */  lw        $s5, 0x144($sp)
/* D4DD48 80240D08 8FB40140 */  lw        $s4, 0x140($sp)
/* D4DD4C 80240D0C 8FB3013C */  lw        $s3, 0x13c($sp)
/* D4DD50 80240D10 8FB20138 */  lw        $s2, 0x138($sp)
/* D4DD54 80240D14 8FB10134 */  lw        $s1, 0x134($sp)
/* D4DD58 80240D18 8FB00130 */  lw        $s0, 0x130($sp)
/* D4DD5C 80240D1C D7BE0178 */  ldc1      $f30, 0x178($sp)
/* D4DD60 80240D20 D7BC0170 */  ldc1      $f28, 0x170($sp)
/* D4DD64 80240D24 D7BA0168 */  ldc1      $f26, 0x168($sp)
/* D4DD68 80240D28 D7B80160 */  ldc1      $f24, 0x160($sp)
/* D4DD6C 80240D2C D7B60158 */  ldc1      $f22, 0x158($sp)
/* D4DD70 80240D30 D7B40150 */  ldc1      $f20, 0x150($sp)
/* D4DD74 80240D34 03E00008 */  jr        $ra
/* D4DD78 80240D38 27BD0180 */   addiu    $sp, $sp, 0x180
