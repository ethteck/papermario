.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8003E5B0
/* 199B0 8003E5B0 3C03800A */  lui       $v1, %hi(gGameState)
/* 199B4 8003E5B4 8C63A600 */  lw        $v1, %lo(gGameState)($v1)
/* 199B8 8003E5B8 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 199BC 8003E5BC 2C620006 */  sltiu     $v0, $v1, 6
/* 199C0 8003E5C0 10400019 */  beqz      $v0, .L8003E628
/* 199C4 8003E5C4 AFBF0010 */   sw       $ra, 0x10($sp)
/* 199C8 8003E5C8 00031080 */  sll       $v0, $v1, 2
/* 199CC 8003E5CC 3C01800A */  lui       $at, 0x800a
/* 199D0 8003E5D0 00220821 */  addu      $at, $at, $v0
/* 199D4 8003E5D4 8C2285D8 */  lw        $v0, -0x7a28($at)
/* 199D8 8003E5D8 00400008 */  jr        $v0
/* 199DC 8003E5DC 00000000 */   nop      
/* 199E0 8003E5E0 0C011050 */  jal       func_80044140
/* 199E4 8003E5E4 00000000 */   nop      
/* 199E8 8003E5E8 0800F98A */  j         .L8003E628
/* 199EC 8003E5EC 00000000 */   nop      
/* 199F0 8003E5F0 0C0104D7 */  jal       func_8004135C
/* 199F4 8003E5F4 00000000 */   nop      
/* 199F8 8003E5F8 0800F98A */  j         .L8003E628
/* 199FC 8003E5FC 00000000 */   nop      
/* 19A00 8003E600 0C010659 */  jal       func_80041964
/* 19A04 8003E604 00000000 */   nop      
/* 19A08 8003E608 0800F98A */  j         .L8003E628
/* 19A0C 8003E60C 00000000 */   nop      
/* 19A10 8003E610 0C010C75 */  jal       func_800431D4
/* 19A14 8003E614 00000000 */   nop      
/* 19A18 8003E618 0800F98A */  j         .L8003E628
/* 19A1C 8003E61C 00000000 */   nop      
/* 19A20 8003E620 0C010C13 */  jal       func_8004304C
/* 19A24 8003E624 00000000 */   nop      
.L8003E628:
/* 19A28 8003E628 0C01170A */  jal       func_80045C28
/* 19A2C 8003E62C 00000000 */   nop      
/* 19A30 8003E630 8FBF0010 */  lw        $ra, 0x10($sp)
/* 19A34 8003E634 03E00008 */  jr        $ra
/* 19A38 8003E638 27BD0018 */   addiu    $sp, $sp, 0x18
