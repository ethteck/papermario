.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024330C
/* 163B6C 8024330C 3C028016 */  lui       $v0, 0x8016
/* 163B70 80243310 24429D50 */  addiu     $v0, $v0, -0x62b0
/* 163B74 80243314 00042140 */  sll       $a0, $a0, 5
/* 163B78 80243318 00822021 */  addu      $a0, $a0, $v0
/* 163B7C 8024331C 9083001C */  lbu       $v1, 0x1c($a0)
/* 163B80 80243320 14600005 */  bnez      $v1, .L80243338
/* 163B84 80243324 28620010 */   slti     $v0, $v1, 0x10
/* 163B88 80243328 90820000 */  lbu       $v0, ($a0)
/* 163B8C 8024332C 304200FB */  andi      $v0, $v0, 0xfb
/* 163B90 80243330 A0820000 */  sb        $v0, ($a0)
/* 163B94 80243334 28620010 */  slti      $v0, $v1, 0x10
.L80243338:
/* 163B98 80243338 10400008 */  beqz      $v0, .L8024335C
/* 163B9C 8024333C 00031040 */   sll      $v0, $v1, 1
/* 163BA0 80243340 3C038025 */  lui       $v1, 0x8025
/* 163BA4 80243344 00621821 */  addu      $v1, $v1, $v0
/* 163BA8 80243348 84639BBC */  lh        $v1, -0x6444($v1)
/* 163BAC 8024334C 8CC20000 */  lw        $v0, ($a2)
/* 163BB0 80243350 00431023 */  subu      $v0, $v0, $v1
/* 163BB4 80243354 03E00008 */  jr        $ra
/* 163BB8 80243358 ACC20000 */   sw       $v0, ($a2)
.L8024335C:
/* 163BBC 8024335C 3C028025 */  lui       $v0, 0x8025
/* 163BC0 80243360 84429BDA */  lh        $v0, -0x6426($v0)
/* 163BC4 80243364 8CC30000 */  lw        $v1, ($a2)
/* 163BC8 80243368 00621823 */  subu      $v1, $v1, $v0
/* 163BCC 8024336C ACC30000 */  sw        $v1, ($a2)
/* 163BD0 80243370 90820000 */  lbu       $v0, ($a0)
/* 163BD4 80243374 304200F7 */  andi      $v0, $v0, 0xf7
/* 163BD8 80243378 03E00008 */  jr        $ra
/* 163BDC 8024337C A0820000 */   sb       $v0, ($a0)
