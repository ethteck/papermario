.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802408F4
/* D06024 802408F4 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* D06028 802408F8 AFB10014 */  sw        $s1, 0x14($sp)
/* D0602C 802408FC 0080882D */  daddu     $s1, $a0, $zero
/* D06030 80240900 AFBF0018 */  sw        $ra, 0x18($sp)
/* D06034 80240904 AFB00010 */  sw        $s0, 0x10($sp)
/* D06038 80240908 8E30000C */  lw        $s0, 0xc($s1)
/* D0603C 8024090C 8E050000 */  lw        $a1, ($s0)
/* D06040 80240910 0C0B1EAF */  jal       get_variable
/* D06044 80240914 26100004 */   addiu    $s0, $s0, 4
/* D06048 80240918 0220202D */  daddu     $a0, $s1, $zero
/* D0604C 8024091C 8E050000 */  lw        $a1, ($s0)
/* D06050 80240920 0C0B1EAF */  jal       get_variable
/* D06054 80240924 0040802D */   daddu    $s0, $v0, $zero
/* D06058 80240928 44820000 */  mtc1      $v0, $f0
/* D0605C 8024092C 00000000 */  nop       
/* D06060 80240930 46800020 */  cvt.s.w   $f0, $f0
/* D06064 80240934 24020002 */  addiu     $v0, $zero, 2
/* D06068 80240938 00501804 */  sllv      $v1, $s0, $v0
/* D0606C 8024093C 00701821 */  addu      $v1, $v1, $s0
/* D06070 80240940 00431804 */  sllv      $v1, $v1, $v0
/* D06074 80240944 00701823 */  subu      $v1, $v1, $s0
/* D06078 80240948 000320C0 */  sll       $a0, $v1, 3
/* D0607C 8024094C 00641821 */  addu      $v1, $v1, $a0
/* D06080 80240950 000318C0 */  sll       $v1, $v1, 3
/* D06084 80240954 3C01800B */  lui       $at, 0x800b
/* D06088 80240958 00230821 */  addu      $at, $at, $v1
/* D0608C 8024095C E4201D98 */  swc1      $f0, 0x1d98($at)
/* D06090 80240960 8FBF0018 */  lw        $ra, 0x18($sp)
/* D06094 80240964 8FB10014 */  lw        $s1, 0x14($sp)
/* D06098 80240968 8FB00010 */  lw        $s0, 0x10($sp)
/* D0609C 8024096C 03E00008 */  jr        $ra
/* D060A0 80240970 27BD0020 */   addiu    $sp, $sp, 0x20
