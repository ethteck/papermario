.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel contPakFileReadWrite
/* 3AB70 8005F770 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 3AB74 8005F774 AFBF0018 */  sw        $ra, 0x18($sp)
/* 3AB78 8005F778 8C83000C */  lw        $v1, 0xc($a0)
/* 3AB7C 8005F77C 8C620008 */  lw        $v0, 8($v1)
/* 3AB80 8005F780 8C650000 */  lw        $a1, ($v1)
/* 3AB84 8005F784 9066000C */  lbu       $a2, 0xc($v1)
/* 3AB88 8005F788 AFA20010 */  sw        $v0, 0x10($sp)
/* 3AB8C 8005F78C 8C620010 */  lw        $v0, 0x10($v1)
/* 3AB90 8005F790 AFA20014 */  sw        $v0, 0x14($sp)
/* 3AB94 8005F794 8CA40000 */  lw        $a0, ($a1)
/* 3AB98 8005F798 8CA50004 */  lw        $a1, 4($a1)
/* 3AB9C 8005F79C 0C01A1F8 */  jal       osPfsReadWriteFile
/* 3ABA0 8005F7A0 8C670004 */   lw       $a3, 4($v1)
/* 3ABA4 8005F7A4 8FBF0018 */  lw        $ra, 0x18($sp)
/* 3ABA8 8005F7A8 03E00008 */  jr        $ra
/* 3ABAC 8005F7AC 27BD0020 */   addiu    $sp, $sp, 0x20
