.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240518_DEC3E8
/* DEC3E8 80240518 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* DEC3EC 8024051C 2463419C */  addiu     $v1, $v1, %lo(gGameStatusPtr)
/* DEC3F0 80240520 8C620000 */  lw        $v0, ($v1)
/* DEC3F4 80240524 AC800084 */  sw        $zero, 0x84($a0)
/* DEC3F8 80240528 8C420010 */  lw        $v0, 0x10($v0)
/* DEC3FC 8024052C 30428000 */  andi      $v0, $v0, 0x8000
/* DEC400 80240530 10400002 */  beqz      $v0, .L8024053C
/* DEC404 80240534 24020001 */   addiu    $v0, $zero, 1
/* DEC408 80240538 AC820084 */  sw        $v0, 0x84($a0)
.L8024053C:
/* DEC40C 8024053C 8C620000 */  lw        $v0, ($v1)
/* DEC410 80240540 8C420010 */  lw        $v0, 0x10($v0)
/* DEC414 80240544 30424000 */  andi      $v0, $v0, 0x4000
/* DEC418 80240548 10400002 */  beqz      $v0, .L80240554
/* DEC41C 8024054C 24020001 */   addiu    $v0, $zero, 1
/* DEC420 80240550 AC820084 */  sw        $v0, 0x84($a0)
.L80240554:
/* DEC424 80240554 03E00008 */  jr        $ra
/* DEC428 80240558 24020002 */   addiu    $v0, $zero, 2
