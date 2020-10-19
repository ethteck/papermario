.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802401D0_B65C80
/* B65C80 802401D0 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* B65C84 802401D4 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* B65C88 802401D8 3C014334 */  lui       $at, 0x4334
/* B65C8C 802401DC 44816000 */  mtc1      $at, $f12
/* B65C90 802401E0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* B65C94 802401E4 AFBF0014 */  sw        $ra, 0x14($sp)
/* B65C98 802401E8 AFB00010 */  sw        $s0, 0x10($sp)
/* B65C9C 802401EC 00031080 */  sll       $v0, $v1, 2
/* B65CA0 802401F0 00431021 */  addu      $v0, $v0, $v1
/* B65CA4 802401F4 00021080 */  sll       $v0, $v0, 2
/* B65CA8 802401F8 00431023 */  subu      $v0, $v0, $v1
/* B65CAC 802401FC 000218C0 */  sll       $v1, $v0, 3
/* B65CB0 80240200 00431021 */  addu      $v0, $v0, $v1
/* B65CB4 80240204 000210C0 */  sll       $v0, $v0, 3
/* B65CB8 80240208 3C01800B */  lui       $at, 0x800b
/* B65CBC 8024020C 00220821 */  addu      $at, $at, $v0
/* B65CC0 80240210 C4201DEC */  lwc1      $f0, 0x1dec($at)
/* B65CC4 80240214 460C0300 */  add.s     $f12, $f0, $f12
/* B65CC8 80240218 0C00A6C9 */  jal       clamp_angle
/* B65CCC 8024021C 0080802D */   daddu    $s0, $a0, $zero
/* B65CD0 80240220 4600008D */  trunc.w.s $f2, $f0
/* B65CD4 80240224 E6020084 */  swc1      $f2, 0x84($s0)
/* B65CD8 80240228 8FBF0014 */  lw        $ra, 0x14($sp)
/* B65CDC 8024022C 8FB00010 */  lw        $s0, 0x10($sp)
/* B65CE0 80240230 24020002 */  addiu     $v0, $zero, 2
/* B65CE4 80240234 03E00008 */  jr        $ra
/* B65CE8 80240238 27BD0018 */   addiu    $sp, $sp, 0x18
