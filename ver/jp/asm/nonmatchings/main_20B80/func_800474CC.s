.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800474CC
/* 228CC 800474CC 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 228D0 800474D0 0080302D */  daddu     $a2, $a0, $zero
/* 228D4 800474D4 AFB10014 */  sw        $s1, 0x14($sp)
/* 228D8 800474D8 00A0882D */  daddu     $s1, $a1, $zero
/* 228DC 800474DC 00061040 */  sll       $v0, $a2, 1
/* 228E0 800474E0 00461021 */  addu      $v0, $v0, $a2
/* 228E4 800474E4 00021080 */  sll       $v0, $v0, 2
/* 228E8 800474E8 00461023 */  subu      $v0, $v0, $a2
/* 228EC 800474EC 3C03800A */  lui       $v1, %hi(D_8009ED54)
/* 228F0 800474F0 8C63ED54 */  lw        $v1, %lo(D_8009ED54)($v1)
/* 228F4 800474F4 00021100 */  sll       $v0, $v0, 4
/* 228F8 800474F8 AFBF0018 */  sw        $ra, 0x18($sp)
/* 228FC 800474FC AFB00010 */  sw        $s0, 0x10($sp)
/* 22900 80047500 00628021 */  addu      $s0, $v1, $v0
/* 22904 80047504 2403FFFB */  addiu     $v1, $zero, -5
/* 22908 80047508 8E020000 */  lw        $v0, ($s0)
/* 2290C 8004750C 82040038 */  lb        $a0, 0x38($s0)
/* 22910 80047510 00431024 */  and       $v0, $v0, $v1
/* 22914 80047514 10910006 */  beq       $a0, $s1, .L80047530
/* 22918 80047518 AE020000 */   sw       $v0, ($s0)
/* 2291C 8004751C 0C011D51 */  jal       func_80047544
/* 22920 80047520 00C0202D */   daddu    $a0, $a2, $zero
/* 22924 80047524 24020001 */  addiu     $v0, $zero, 1
/* 22928 80047528 A2110038 */  sb        $s1, 0x38($s0)
/* 2292C 8004752C A202003A */  sb        $v0, 0x3a($s0)
.L80047530:
/* 22930 80047530 8FBF0018 */  lw        $ra, 0x18($sp)
/* 22934 80047534 8FB10014 */  lw        $s1, 0x14($sp)
/* 22938 80047538 8FB00010 */  lw        $s0, 0x10($sp)
/* 2293C 8004753C 03E00008 */  jr        $ra
/* 22940 80047540 27BD0020 */   addiu    $sp, $sp, 0x20
