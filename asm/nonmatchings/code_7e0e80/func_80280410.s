.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80280410
/* 7E1290 80280410 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 7E1294 80280414 AFB20018 */  sw        $s2, 0x18($sp)
/* 7E1298 80280418 3C128007 */  lui       $s2, %hi(gGameStatusPtr)
/* 7E129C 8028041C 2652419C */  addiu     $s2, $s2, %lo(gGameStatusPtr)
/* 7E12A0 80280420 AFBF001C */  sw        $ra, 0x1c($sp)
/* 7E12A4 80280424 AFB10014 */  sw        $s1, 0x14($sp)
/* 7E12A8 80280428 AFB00010 */  sw        $s0, 0x10($sp)
/* 7E12AC 8028042C 8C82000C */  lw        $v0, 0xc($a0)
/* 7E12B0 80280430 8E430000 */  lw        $v1, ($s2)
/* 7E12B4 80280434 8C450000 */  lw        $a1, ($v0)
/* 7E12B8 80280438 0C0B1EAF */  jal       get_variable
/* 7E12BC 8028043C 8C700144 */   lw       $s0, 0x144($v1)
/* 7E12C0 80280440 96030000 */  lhu       $v1, ($s0)
/* 7E12C4 80280444 30630008 */  andi      $v1, $v1, 8
/* 7E12C8 80280448 14600022 */  bnez      $v1, .L802804D4
/* 7E12CC 8028044C 0040882D */   daddu    $s1, $v0, $zero
/* 7E12D0 80280450 96020000 */  lhu       $v0, ($s0)
/* 7E12D4 80280454 AE110008 */  sw        $s1, 8($s0)
/* 7E12D8 80280458 34420001 */  ori       $v0, $v0, 1
/* 7E12DC 8028045C 0C03A63B */  jal       func_800E98EC
/* 7E12E0 80280460 A6020000 */   sh       $v0, ($s0)
/* 7E12E4 80280464 8E430000 */  lw        $v1, ($s2)
/* 7E12E8 80280468 24020005 */  addiu     $v0, $zero, 5
/* 7E12EC 8028046C AE020358 */  sw        $v0, 0x358($s0)
/* 7E12F0 80280470 8C620010 */  lw        $v0, 0x10($v1)
/* 7E12F4 80280474 30428000 */  andi      $v0, $v0, 0x8000
/* 7E12F8 80280478 10400022 */  beqz      $v0, .L80280504
/* 7E12FC 8028047C 24020002 */   addiu    $v0, $zero, 2
/* 7E1300 80280480 0C03805E */  jal       disable_player_input
/* 7E1304 80280484 00000000 */   nop      
/* 7E1308 80280488 0C038045 */  jal       disable_player_static_collisions
/* 7E130C 8028048C 00000000 */   nop      
/* 7E1310 80280490 3C048028 */  lui       $a0, 0x8028
/* 7E1314 80280494 24844034 */  addiu     $a0, $a0, 0x4034
/* 7E1318 80280498 24050001 */  addiu     $a1, $zero, 1
/* 7E131C 8028049C 0C0B0CF8 */  jal       start_script
/* 7E1320 802804A0 0000302D */   daddu    $a2, $zero, $zero
/* 7E1324 802804A4 0040182D */  daddu     $v1, $v0, $zero
/* 7E1328 802804A8 8C650144 */  lw        $a1, 0x144($v1)
/* 7E132C 802804AC AC710084 */  sw        $s1, 0x84($v1)
/* 7E1330 802804B0 96040000 */  lhu       $a0, ($s0)
/* 7E1334 802804B4 0000102D */  daddu     $v0, $zero, $zero
/* 7E1338 802804B8 3C018028 */  lui       $at, 0x8028
/* 7E133C 802804BC AC236520 */  sw        $v1, 0x6520($at)
/* 7E1340 802804C0 34840008 */  ori       $a0, $a0, 8
/* 7E1344 802804C4 3C018028 */  lui       $at, 0x8028
/* 7E1348 802804C8 AC256524 */  sw        $a1, 0x6524($at)
/* 7E134C 802804CC 080A0141 */  j         .L80280504
/* 7E1350 802804D0 A6040000 */   sh       $a0, ($s0)
.L802804D4:
/* 7E1354 802804D4 3C048028 */  lui       $a0, 0x8028
/* 7E1358 802804D8 0C0B1059 */  jal       does_script_exist
/* 7E135C 802804DC 8C846524 */   lw       $a0, 0x6524($a0)
/* 7E1360 802804E0 54400008 */  bnel      $v0, $zero, .L80280504
/* 7E1364 802804E4 0000102D */   daddu    $v0, $zero, $zero
/* 7E1368 802804E8 96020000 */  lhu       $v0, ($s0)
/* 7E136C 802804EC 3042FFF7 */  andi      $v0, $v0, 0xfff7
/* 7E1370 802804F0 0C038050 */  jal       enable_player_static_collisions
/* 7E1374 802804F4 A6020000 */   sh       $v0, ($s0)
/* 7E1378 802804F8 0C038069 */  jal       enable_player_input
/* 7E137C 802804FC 00000000 */   nop      
/* 7E1380 80280500 24020002 */  addiu     $v0, $zero, 2
.L80280504:
/* 7E1384 80280504 8FBF001C */  lw        $ra, 0x1c($sp)
/* 7E1388 80280508 8FB20018 */  lw        $s2, 0x18($sp)
/* 7E138C 8028050C 8FB10014 */  lw        $s1, 0x14($sp)
/* 7E1390 80280510 8FB00010 */  lw        $s0, 0x10($sp)
/* 7E1394 80280514 03E00008 */  jr        $ra
/* 7E1398 80280518 27BD0020 */   addiu    $sp, $sp, 0x20
