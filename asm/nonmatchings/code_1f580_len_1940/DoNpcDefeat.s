.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel DoNpcDefeat
/* 1FA2C 8004462C 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1FA30 80044630 AFB10014 */  sw        $s1, 0x14($sp)
/* 1FA34 80044634 0080882D */  daddu     $s1, $a0, $zero
/* 1FA38 80044638 AFBF0018 */  sw        $ra, 0x18($sp)
/* 1FA3C 8004463C AFB00010 */  sw        $s0, 0x10($sp)
/* 1FA40 80044640 8E300148 */  lw        $s0, 0x148($s1)
/* 1FA44 80044644 0C00EABB */  jal       get_npc_unsafe
/* 1FA48 80044648 86040008 */   lh       $a0, 8($s0)
/* 1FA4C 8004464C 0220202D */  daddu     $a0, $s1, $zero
/* 1FA50 80044650 0C0B0FCF */  jal       kill_script
/* 1FA54 80044654 0040882D */   daddu    $s1, $v0, $zero
/* 1FA58 80044658 3C048007 */  lui       $a0, 0x8007
/* 1FA5C 8004465C 24847E38 */  addiu     $a0, $a0, 0x7e38
/* 1FA60 80044660 8E0200CC */  lw        $v0, 0xcc($s0)
/* 1FA64 80044664 2405000A */  addiu     $a1, $zero, 0xa
/* 1FA68 80044668 8C420018 */  lw        $v0, 0x18($v0)
/* 1FA6C 8004466C 0000302D */  daddu     $a2, $zero, $zero
/* 1FA70 80044670 0C0B0CF8 */  jal       start_script
/* 1FA74 80044674 AE220028 */   sw       $v0, 0x28($s1)
/* 1FA78 80044678 0040182D */  daddu     $v1, $v0, $zero
/* 1FA7C 8004467C AE030048 */  sw        $v1, 0x48($s0)
/* 1FA80 80044680 8C620144 */  lw        $v0, 0x144($v1)
/* 1FA84 80044684 AE020060 */  sw        $v0, 0x60($s0)
/* 1FA88 80044688 AC700148 */  sw        $s0, 0x148($v1)
/* 1FA8C 8004468C 86020008 */  lh        $v0, 8($s0)
/* 1FA90 80044690 AC62014C */  sw        $v0, 0x14c($v1)
/* 1FA94 80044694 92040006 */  lbu       $a0, 6($s0)
/* 1FA98 80044698 A0640004 */  sb        $a0, 4($v1)
/* 1FA9C 8004469C 8FBF0018 */  lw        $ra, 0x18($sp)
/* 1FAA0 800446A0 8FB10014 */  lw        $s1, 0x14($sp)
/* 1FAA4 800446A4 8FB00010 */  lw        $s0, 0x10($sp)
/* 1FAA8 800446A8 240200FF */  addiu     $v0, $zero, 0xff
/* 1FAAC 800446AC 03E00008 */  jr        $ra
/* 1FAB0 800446B0 27BD0020 */   addiu    $sp, $sp, 0x20
