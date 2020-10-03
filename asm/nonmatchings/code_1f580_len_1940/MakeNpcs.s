.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel MakeNpcs
/* 1F698 80044298 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1F69C 8004429C AFB10014 */  sw        $s1, 0x14($sp)
/* 1F6A0 800442A0 0080882D */  daddu     $s1, $a0, $zero
/* 1F6A4 800442A4 AFBF0018 */  sw        $ra, 0x18($sp)
/* 1F6A8 800442A8 AFB00010 */  sw        $s0, 0x10($sp)
/* 1F6AC 800442AC 8E30000C */  lw        $s0, 0xc($s1)
/* 1F6B0 800442B0 54A00001 */  bnel      $a1, $zero, .L800442B8
/* 1F6B4 800442B4 AE200070 */   sw       $zero, 0x70($s1)
.L800442B8:
/* 1F6B8 800442B8 8E240070 */  lw        $a0, 0x70($s1)
/* 1F6BC 800442BC 10800005 */  beqz      $a0, .L800442D4
/* 1F6C0 800442C0 24020001 */   addiu    $v0, $zero, 1
/* 1F6C4 800442C4 10820014 */  beq       $a0, $v0, .L80044318
/* 1F6C8 800442C8 0000102D */   daddu    $v0, $zero, $zero
/* 1F6CC 800442CC 080110CB */  j         .L8004432C
/* 1F6D0 800442D0 00000000 */   nop      
.L800442D4:
/* 1F6D4 800442D4 8E050000 */  lw        $a1, ($s0)
/* 1F6D8 800442D8 26100004 */  addiu     $s0, $s0, 4
/* 1F6DC 800442DC 0C0B1EAF */  jal       get_variable
/* 1F6E0 800442E0 0220202D */   daddu    $a0, $s1, $zero
/* 1F6E4 800442E4 0220202D */  daddu     $a0, $s1, $zero
/* 1F6E8 800442E8 8E050000 */  lw        $a1, ($s0)
/* 1F6EC 800442EC 0C0B1EAF */  jal       get_variable
/* 1F6F0 800442F0 0040802D */   daddu    $s0, $v0, $zero
/* 1F6F4 800442F4 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* 1F6F8 800442F8 8C63419C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* 1F6FC 800442FC 0200202D */  daddu     $a0, $s0, $zero
/* 1F700 80044300 8465008C */  lh        $a1, 0x8c($v1)
/* 1F704 80044304 0C00F99E */  jal       make_npcs
/* 1F708 80044308 0040302D */   daddu    $a2, $v0, $zero
/* 1F70C 8004430C 24020001 */  addiu     $v0, $zero, 1
/* 1F710 80044310 080110CA */  j         .L80044328
/* 1F714 80044314 AE220070 */   sw       $v0, 0x70($s1)
.L80044318:
/* 1F718 80044318 3C03800A */  lui       $v1, %hi(gGameState)
/* 1F71C 8004431C 8C63A600 */  lw        $v1, %lo(gGameState)($v1)
/* 1F720 80044320 14640002 */  bne       $v1, $a0, .L8004432C
/* 1F724 80044324 24020002 */   addiu    $v0, $zero, 2
.L80044328:
/* 1F728 80044328 0000102D */  daddu     $v0, $zero, $zero
.L8004432C:
/* 1F72C 8004432C 8FBF0018 */  lw        $ra, 0x18($sp)
/* 1F730 80044330 8FB10014 */  lw        $s1, 0x14($sp)
/* 1F734 80044334 8FB00010 */  lw        $s0, 0x10($sp)
/* 1F738 80044338 03E00008 */  jr        $ra
/* 1F73C 8004433C 27BD0020 */   addiu    $sp, $sp, 0x20
