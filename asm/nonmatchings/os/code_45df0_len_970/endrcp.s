.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel endrcp
/* 45F6C 8006AB6C AF490128 */  sw        $t1, 0x128($k0)
/* 45F70 8006AB70 40087000 */  mfc0      $t0, $14
/* 45F74 8006AB74 AF48011C */  sw        $t0, 0x11c($k0)
/* 45F78 8006AB78 8F480018 */  lw        $t0, 0x18($k0)
/* 45F7C 8006AB7C 11000014 */  beqz      $t0, .L8006ABD0
/* 45F80 8006AB80 00000000 */   nop      
/* 45F84 8006AB84 4448F800 */  cfc1      $t0, $31
/* 45F88 8006AB88 00000000 */  nop       
/* 45F8C 8006AB8C AF48012C */  sw        $t0, 0x12c($k0)
/* 45F90 8006AB90 F7400130 */  sdc1      $f0, 0x130($k0)
/* 45F94 8006AB94 F7420138 */  sdc1      $f2, 0x138($k0)
/* 45F98 8006AB98 F7440140 */  sdc1      $f4, 0x140($k0)
/* 45F9C 8006AB9C F7460148 */  sdc1      $f6, 0x148($k0)
/* 45FA0 8006ABA0 F7480150 */  sdc1      $f8, 0x150($k0)
/* 45FA4 8006ABA4 F74A0158 */  sdc1      $f10, 0x158($k0)
/* 45FA8 8006ABA8 F74C0160 */  sdc1      $f12, 0x160($k0)
/* 45FAC 8006ABAC F74E0168 */  sdc1      $f14, 0x168($k0)
/* 45FB0 8006ABB0 F7500170 */  sdc1      $f16, 0x170($k0)
/* 45FB4 8006ABB4 F7520178 */  sdc1      $f18, 0x178($k0)
/* 45FB8 8006ABB8 F7540180 */  sdc1      $f20, 0x180($k0)
/* 45FBC 8006ABBC F7560188 */  sdc1      $f22, 0x188($k0)
/* 45FC0 8006ABC0 F7580190 */  sdc1      $f24, 0x190($k0)
/* 45FC4 8006ABC4 F75A0198 */  sdc1      $f26, 0x198($k0)
/* 45FC8 8006ABC8 F75C01A0 */  sdc1      $f28, 0x1a0($k0)
/* 45FCC 8006ABCC F75E01A8 */  sdc1      $f30, 0x1a8($k0)
.L8006ABD0:
/* 45FD0 8006ABD0 40086800 */  mfc0      $t0, $13
/* 45FD4 8006ABD4 AF480120 */  sw        $t0, 0x120($k0)
/* 45FD8 8006ABD8 24090002 */  addiu     $t1, $zero, 2
/* 45FDC 8006ABDC A7490010 */  sh        $t1, 0x10($k0)
/* 45FE0 8006ABE0 3109007C */  andi      $t1, $t0, 0x7c
/* 45FE4 8006ABE4 240A0024 */  addiu     $t2, $zero, 0x24
/* 45FE8 8006ABE8 112A00BF */  beq       $t1, $t2, handle_break
/* 45FEC 8006ABEC 00000000 */   nop      
/* 45FF0 8006ABF0 240A002C */  addiu     $t2, $zero, 0x2c
/* 45FF4 8006ABF4 112A0110 */  beq       $t1, $t2, handle_CPU
/* 45FF8 8006ABF8 00000000 */   nop      
/* 45FFC 8006ABFC 240A0000 */  addiu     $t2, $zero, 0
/* 46000 8006AC00 152A00D2 */  bne       $t1, $t2, panic
/* 46004 8006AC04 00000000 */   nop      
