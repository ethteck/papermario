.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800E34D8
/* 7C988 800E34D8 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 7C98C 800E34DC AFBF0010 */  sw        $ra, 0x10($sp)
/* 7C990 800E34E0 0C038D12 */  jal       integrate_gravity
/* 7C994 800E34E4 F7B40018 */   sdc1     $f20, 0x18($sp)
/* 7C998 800E34E8 0C038082 */  jal       func_800E0208
/* 7C99C 800E34EC 46000506 */   mov.s    $f20, $f0
/* 7C9A0 800E34F0 10400004 */  beqz      $v0, .L800E3504
/* 7C9A4 800E34F4 4600A006 */   mov.s    $f0, $f20
/* 7C9A8 800E34F8 4480A000 */  mtc1      $zero, $f20
/* 7C9AC 800E34FC 00000000 */  nop       
/* 7C9B0 800E3500 4600A006 */  mov.s     $f0, $f20
.L800E3504:
/* 7C9B4 800E3504 8FBF0010 */  lw        $ra, 0x10($sp)
/* 7C9B8 800E3508 D7B40018 */  ldc1      $f20, 0x18($sp)
/* 7C9BC 800E350C 03E00008 */  jr        $ra
/* 7C9C0 800E3510 27BD0020 */   addiu    $sp, $sp, 0x20
