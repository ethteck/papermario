.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242154_C38684
/* C38684 80242154 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* C38688 80242158 AFB40050 */  sw        $s4, 0x50($sp)
/* C3868C 8024215C 0080A02D */  daddu     $s4, $a0, $zero
/* C38690 80242160 AFBF0058 */  sw        $ra, 0x58($sp)
/* C38694 80242164 AFB50054 */  sw        $s5, 0x54($sp)
/* C38698 80242168 AFB3004C */  sw        $s3, 0x4c($sp)
/* C3869C 8024216C AFB20048 */  sw        $s2, 0x48($sp)
/* C386A0 80242170 AFB10044 */  sw        $s1, 0x44($sp)
/* C386A4 80242174 AFB00040 */  sw        $s0, 0x40($sp)
/* C386A8 80242178 8E920148 */  lw        $s2, 0x148($s4)
/* C386AC 8024217C 86440008 */  lh        $a0, 8($s2)
/* C386B0 80242180 0C00EABB */  jal       get_npc_unsafe
/* C386B4 80242184 00A0802D */   daddu    $s0, $a1, $zero
/* C386B8 80242188 8E83000C */  lw        $v1, 0xc($s4)
/* C386BC 8024218C 0280202D */  daddu     $a0, $s4, $zero
/* C386C0 80242190 8C650000 */  lw        $a1, ($v1)
/* C386C4 80242194 0C0B1EAF */  jal       get_variable
/* C386C8 80242198 0040A82D */   daddu    $s5, $v0, $zero
/* C386CC 8024219C AFA00020 */  sw        $zero, 0x20($sp)
/* C386D0 802421A0 8E4300D0 */  lw        $v1, 0xd0($s2)
/* C386D4 802421A4 8C630030 */  lw        $v1, 0x30($v1)
/* C386D8 802421A8 AFA30024 */  sw        $v1, 0x24($sp)
/* C386DC 802421AC 8E4300D0 */  lw        $v1, 0xd0($s2)
/* C386E0 802421B0 8C63001C */  lw        $v1, 0x1c($v1)
/* C386E4 802421B4 AFA30028 */  sw        $v1, 0x28($sp)
/* C386E8 802421B8 8E4300D0 */  lw        $v1, 0xd0($s2)
/* C386EC 802421BC 8C630024 */  lw        $v1, 0x24($v1)
/* C386F0 802421C0 AFA3002C */  sw        $v1, 0x2c($sp)
/* C386F4 802421C4 8E4300D0 */  lw        $v1, 0xd0($s2)
/* C386F8 802421C8 8C630028 */  lw        $v1, 0x28($v1)
/* C386FC 802421CC 27B30020 */  addiu     $s3, $sp, 0x20
/* C38700 802421D0 AFA30030 */  sw        $v1, 0x30($sp)
/* C38704 802421D4 8E4300D0 */  lw        $v1, 0xd0($s2)
/* C38708 802421D8 3C0142FA */  lui       $at, 0x42fa
/* C3870C 802421DC 44810000 */  mtc1      $at, $f0
/* C38710 802421E0 8C63002C */  lw        $v1, 0x2c($v1)
/* C38714 802421E4 0040882D */  daddu     $s1, $v0, $zero
/* C38718 802421E8 E7A00038 */  swc1      $f0, 0x38($sp)
/* C3871C 802421EC A7A0003C */  sh        $zero, 0x3c($sp)
/* C38720 802421F0 12000007 */  beqz      $s0, .L80242210
/* C38724 802421F4 AFA30034 */   sw       $v1, 0x34($sp)
/* C38728 802421F8 AE800070 */  sw        $zero, 0x70($s4)
/* C3872C 802421FC 02A0202D */  daddu     $a0, $s5, $zero
/* C38730 80242200 0240282D */  daddu     $a1, $s2, $zero
/* C38734 80242204 0280302D */  daddu     $a2, $s4, $zero
/* C38738 80242208 0C09047A */  jal       func_802411E8_C37718
/* C3873C 8024220C 0220382D */   daddu    $a3, $s1, $zero
.L80242210:
/* C38740 80242210 8E830070 */  lw        $v1, 0x70($s4)
/* C38744 80242214 2C620020 */  sltiu     $v0, $v1, 0x20
/* C38748 80242218 10400060 */  beqz      $v0, L8024239C_C388CC
/* C3874C 8024221C 00031080 */   sll      $v0, $v1, 2
/* C38750 80242220 3C018024 */  lui       $at, %hi(jtbl_80244458_C3A988)
/* C38754 80242224 00220821 */  addu      $at, $at, $v0
/* C38758 80242228 8C224458 */  lw        $v0, %lo(jtbl_80244458_C3A988)($at)
/* C3875C 8024222C 00400008 */  jr        $v0
/* C38760 80242230 00000000 */   nop
glabel L80242234_C38764
/* C38764 80242234 0280202D */  daddu     $a0, $s4, $zero
/* C38768 80242238 0220282D */  daddu     $a1, $s1, $zero
/* C3876C 8024223C 0C090000 */  jal       func_80240000_C36530
/* C38770 80242240 0260302D */   daddu    $a2, $s3, $zero
/* C38774 80242244 0000282D */  daddu     $a1, $zero, $zero
/* C38778 80242248 00A0302D */  daddu     $a2, $a1, $zero
/* C3877C 8024224C AFA00010 */  sw        $zero, 0x10($sp)
/* C38780 80242250 AFA00014 */  sw        $zero, 0x14($sp)
/* C38784 80242254 AFA00018 */  sw        $zero, 0x18($sp)
/* C38788 80242258 8EA40024 */  lw        $a0, 0x24($s5)
/* C3878C 8024225C 0C0B7A25 */  jal       func_802DE894
/* C38790 80242260 00A0382D */   daddu    $a3, $a1, $zero
glabel L80242264_C38794
/* C38794 80242264 0280202D */  daddu     $a0, $s4, $zero
/* C38798 80242268 0220282D */  daddu     $a1, $s1, $zero
/* C3879C 8024226C 0C09006C */  jal       func_802401B0_C366E0
/* C387A0 80242270 0260302D */   daddu    $a2, $s3, $zero
/* C387A4 80242274 080908A7 */  j         .L8024229C
/* C387A8 80242278 00000000 */   nop
glabel L8024227C_C387AC
/* C387AC 8024227C 0280202D */  daddu     $a0, $s4, $zero
/* C387B0 80242280 0220282D */  daddu     $a1, $s1, $zero
/* C387B4 80242284 0C0901F6 */  jal       dgb_04_UnkNpcAIFunc1
/* C387B8 80242288 0260302D */   daddu    $a2, $s3, $zero
glabel L8024228C_C387BC
/* C387BC 8024228C 0280202D */  daddu     $a0, $s4, $zero
/* C387C0 80242290 0220282D */  daddu     $a1, $s1, $zero
/* C387C4 80242294 0C090226 */  jal       func_80240898_C36DC8
/* C387C8 80242298 0260302D */   daddu    $a2, $s3, $zero
.L8024229C:
/* C387CC 8024229C 8E830070 */  lw        $v1, 0x70($s4)
/* C387D0 802422A0 2402000C */  addiu     $v0, $zero, 0xc
/* C387D4 802422A4 1462003D */  bne       $v1, $v0, L8024239C_C388CC
/* C387D8 802422A8 24020006 */   addiu    $v0, $zero, 6
/* C387DC 802422AC 080908E7 */  j         L8024239C_C388CC
/* C387E0 802422B0 A6A2008E */   sh       $v0, 0x8e($s5)
glabel L802422B4_C387E4
/* C387E4 802422B4 0280202D */  daddu     $a0, $s4, $zero
/* C387E8 802422B8 0220282D */  daddu     $a1, $s1, $zero
/* C387EC 802422BC 0C09053E */  jal       func_802414F8_C37A28
/* C387F0 802422C0 0260302D */   daddu    $a2, $s3, $zero
/* C387F4 802422C4 8E830070 */  lw        $v1, 0x70($s4)
/* C387F8 802422C8 2402000D */  addiu     $v0, $zero, 0xd
/* C387FC 802422CC 14620033 */  bne       $v1, $v0, L8024239C_C388CC
/* C38800 802422D0 00000000 */   nop
glabel L802422D4_C38804
/* C38804 802422D4 0280202D */  daddu     $a0, $s4, $zero
/* C38808 802422D8 0220282D */  daddu     $a1, $s1, $zero
/* C3880C 802422DC 0C090594 */  jal       func_80241650_C37B80
/* C38810 802422E0 0260302D */   daddu    $a2, $s3, $zero
/* C38814 802422E4 080908E7 */  j         L8024239C_C388CC
/* C38818 802422E8 00000000 */   nop
glabel L802422EC_C3881C
/* C3881C 802422EC 0280202D */  daddu     $a0, $s4, $zero
/* C38820 802422F0 0220282D */  daddu     $a1, $s1, $zero
/* C38824 802422F4 0C0905D5 */  jal       func_80241754_C37C84
/* C38828 802422F8 0260302D */   daddu    $a2, $s3, $zero
/* C3882C 802422FC 8E830070 */  lw        $v1, 0x70($s4)
/* C38830 80242300 2402000F */  addiu     $v0, $zero, 0xf
/* C38834 80242304 14620025 */  bne       $v1, $v0, L8024239C_C388CC
/* C38838 80242308 00000000 */   nop
glabel L8024230C_C3883C
/* C3883C 8024230C 0280202D */  daddu     $a0, $s4, $zero
/* C38840 80242310 0220282D */  daddu     $a1, $s1, $zero
/* C38844 80242314 0C0905FE */  jal       func_802417F8_C37D28
/* C38848 80242318 0260302D */   daddu    $a2, $s3, $zero
/* C3884C 8024231C 080908E7 */  j         L8024239C_C388CC
/* C38850 80242320 00000000 */   nop
glabel L80242324_C38854
/* C38854 80242324 0280202D */  daddu     $a0, $s4, $zero
/* C38858 80242328 0220282D */  daddu     $a1, $s1, $zero
/* C3885C 8024232C 0C0906A5 */  jal       func_80241A94_C37FC4
/* C38860 80242330 0260302D */   daddu    $a2, $s3, $zero
glabel L80242334_C38864
/* C38864 80242334 0280202D */  daddu     $a0, $s4, $zero
/* C38868 80242338 0220282D */  daddu     $a1, $s1, $zero
/* C3886C 8024233C 0C0906D3 */  jal       func_80241B4C_C3807C
/* C38870 80242340 0260302D */   daddu    $a2, $s3, $zero
/* C38874 80242344 080908E7 */  j         L8024239C_C388CC
/* C38878 80242348 00000000 */   nop
glabel L8024234C_C3887C
/* C3887C 8024234C 0280202D */  daddu     $a0, $s4, $zero
/* C38880 80242350 0220282D */  daddu     $a1, $s1, $zero
/* C38884 80242354 0C090733 */  jal       func_80241CCC_C381FC
/* C38888 80242358 0260302D */   daddu    $a2, $s3, $zero
/* C3888C 8024235C 080908E7 */  j         L8024239C_C388CC
/* C38890 80242360 00000000 */   nop
glabel L80242364_C38894
/* C38894 80242364 0280202D */  daddu     $a0, $s4, $zero
/* C38898 80242368 0220282D */  daddu     $a1, $s1, $zero
/* C3889C 8024236C 0C090745 */  jal       func_80241D14_C38244
/* C388A0 80242370 0260302D */   daddu    $a2, $s3, $zero
/* C388A4 80242374 080908E7 */  j         L8024239C_C388CC
/* C388A8 80242378 00000000 */   nop
glabel L8024237C_C388AC
/* C388AC 8024237C 0280202D */  daddu     $a0, $s4, $zero
/* C388B0 80242380 0220282D */  daddu     $a1, $s1, $zero
/* C388B4 80242384 0C090765 */  jal       func_80241D94_C382C4
/* C388B8 80242388 0260302D */   daddu    $a2, $s3, $zero
glabel L8024238C_C388BC
/* C388BC 8024238C 0280202D */  daddu     $a0, $s4, $zero
/* C388C0 80242390 0220282D */  daddu     $a1, $s1, $zero
/* C388C4 80242394 0C09078F */  jal       func_80241E3C_C3836C
/* C388C8 80242398 0260302D */   daddu    $a2, $s3, $zero
glabel L8024239C_C388CC
/* C388CC 8024239C 8E820070 */  lw        $v0, 0x70($s4)
/* C388D0 802423A0 8FBF0058 */  lw        $ra, 0x58($sp)
/* C388D4 802423A4 8FB50054 */  lw        $s5, 0x54($sp)
/* C388D8 802423A8 8FB40050 */  lw        $s4, 0x50($sp)
/* C388DC 802423AC 8FB3004C */  lw        $s3, 0x4c($sp)
/* C388E0 802423B0 8FB20048 */  lw        $s2, 0x48($sp)
/* C388E4 802423B4 8FB10044 */  lw        $s1, 0x44($sp)
/* C388E8 802423B8 8FB00040 */  lw        $s0, 0x40($sp)
/* C388EC 802423BC 38420064 */  xori      $v0, $v0, 0x64
/* C388F0 802423C0 2C420001 */  sltiu     $v0, $v0, 1
/* C388F4 802423C4 00021040 */  sll       $v0, $v0, 1
/* C388F8 802423C8 03E00008 */  jr        $ra
/* C388FC 802423CC 27BD0060 */   addiu    $sp, $sp, 0x60
