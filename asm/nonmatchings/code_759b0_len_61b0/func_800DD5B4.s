.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800DD5B4
/* 76A64 800DD5B4 44863000 */  mtc1      $a2, $f6
/* 76A68 800DD5B8 C7A40010 */  lwc1      $f4, 0x10($sp)
/* 76A6C 800DD5BC 46043082 */  mul.s     $f2, $f6, $f4
/* 76A70 800DD5C0 00000000 */  nop       
/* 76A74 800DD5C4 44874000 */  mtc1      $a3, $f8
/* 76A78 800DD5C8 C7AA0014 */  lwc1      $f10, 0x14($sp)
/* 76A7C 800DD5CC 460A4002 */  mul.s     $f0, $f8, $f10
/* 76A80 800DD5D0 00000000 */  nop       
/* 76A84 800DD5D4 46001080 */  add.s     $f2, $f2, $f0
/* 76A88 800DD5D8 46041102 */  mul.s     $f4, $f2, $f4
/* 76A8C 800DD5DC 00000000 */  nop       
/* 76A90 800DD5E0 460A1082 */  mul.s     $f2, $f2, $f10
/* 76A94 800DD5E4 00000000 */  nop       
/* 76A98 800DD5E8 46043181 */  sub.s     $f6, $f6, $f4
/* 76A9C 800DD5EC 3C013F00 */  lui       $at, 0x3f00
/* 76AA0 800DD5F0 44810000 */  mtc1      $at, $f0
/* 76AA4 800DD5F4 00000000 */  nop       
/* 76AA8 800DD5F8 46003182 */  mul.s     $f6, $f6, $f0
/* 76AAC 800DD5FC 00000000 */  nop       
/* 76AB0 800DD600 46024201 */  sub.s     $f8, $f8, $f2
/* 76AB4 800DD604 46004202 */  mul.s     $f8, $f8, $f0
/* 76AB8 800DD608 00000000 */  nop       
/* 76ABC 800DD60C E4860000 */  swc1      $f6, ($a0)
/* 76AC0 800DD610 03E00008 */  jr        $ra
/* 76AC4 800DD614 E4A80000 */   swc1     $f8, ($a1)
