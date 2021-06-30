.include "macro.inc"

.section .data

glabel D_80241FE0_DAF3E0
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80244CA0, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024203C_DAF43C
.word 0x00000047, 0x00000005, D_80241FE0_DAF3E0, 0x00080000, 0x00000000, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000010, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x0000000A, 0x00000002, 0xF8405FDE, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, D_80243E30_DB1230, 0x00000012, 0x00000000, 0x0000000A, 0x00000002, 0xF8405FCE, 0x00000000, 0x00000014, 0x00000001, 0xF5DE0258, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, D_80243DAC_DB11AC, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, D_80243DDC_DB11DC, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, D_80243E0C_DB120C, 0x00000043, 0x00000007, MakeItemEntity, 0x0000008A, 0x0000044C, 0x00000000, 0x00000000, 0x00000011, 0xF8405FCE, 0x00000023, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, D_80243E0C_DB120C, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000046, 0x00000001, D_80242B1C_DAFF1C, 0x00000046, 0x00000001, D_80242608_DAFA08, 0x00000046, 0x00000001, 0x80241F70, 0x0000000A, 0x00000002, 0xF8405FDE, 0x00000000, 0x00000044, 0x00000001, D_80244288_DB1688, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, D_8024203C_DAF43C, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242260_DAF660
.word 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0xFFFFFE98, 0x00000064, 0x00000000, 0x00000003, 0x00000001, 0x00000001, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x00000074, 0xFE363C80, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000006, RotateModel, 0x00000076, 0xFE363C80, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000006, RotateModel, 0x00000078, 0xFE363C80, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000006, RotateModel, 0x0000007A, 0xFE363C80, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000006, RotateModel, 0x0000007C, 0xFE363C80, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000004, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024238C_DAF78C
.word 0x00000003, 0x00000001, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x000000A0, 0x0000003C, 0x0000000A, 0x00000003, 0x00000001, 0x00000001, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x0000007F, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000081, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000083, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000085, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000087, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000089, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x000000A0, 0x00000000, 0x0000003C, 0x0000000A, 0x00000003, 0x00000001, 0x00000002, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x0000007F, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000081, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000083, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000085, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000087, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000089, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000002, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000002, 0x00000013, 0x00000000, 0x00000004, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242608_DAFA08
.word 0x00000044, 0x00000001, D_80242260_DAF660, 0x00000044, 0x00000001, D_8024238C_DAF78C, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242630_DAFA30
.word 0x00000000

glabel D_80242634_DAFA34
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000002, SetTimeFreezeMode, 0x00000002, 0x00000008, 0x00000001, 0x00000028, 0x00000043, 0x00000004, ShowGotItem, 0xFE363C80, 0x00000000, 0x00000000, 0x00000043, 0x00000002, SetTimeFreezeMode, 0x00000000, 0x00000002, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024269C_DAFA9C
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0xFE363C8A, 0x0000000B, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000046, 0x00000001, D_80242634_DAFA34, 0x00000013, 0x00000000, 0x00000014, 0x00000001, 0xFE363C8B, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000003, AddItem, 0xFE363C8A, 0xFE363C80, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000002, AddKeyItem, 0xFE363C8A, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000003, AddBadge, 0xFE363C8A, 0xFE363C80, 0x00000023, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024277C_DAFB7C
.word 0x00000024, 0x00000002, 0xFE363C8A, 0x00000020, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000001, 0x00000024, 0x00000002, 0xF8405FDF, 0x00000001, 0x00000046, 0x00000001, D_8024269C_DAFA9C, 0x00000024, 0x00000002, 0xF8405CA2, 0x00000001, 0x00000024, 0x00000002, 0xF5DE0180, 0xFFFFFFF8, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802427E8_DAFBE8
.word 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetCamTarget, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242850_DAFC50
.word 0xFFFFFCAC, 0x00000000, 0xFFFFFF83, 0xFFFFFC89, 0x00000000, 0x00000062, 0xFFFFFD56, 0x00000050, 0xFFFFFFB3, 0xFFFFFDE2, 0x00000050, 0x0000003E, 0xFFFFFD79, 0x00000050, 0x00000084, 0xFFFFFE05, 0x00000050, 0x00000084, 0x000002A0, 0x00000069, 0x00000084, 0x0000039F, 0x00000050, 0xFFFFFFA9

glabel D_802428B0_DAFCB0
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000030, 0x00000001, D_80242850_DAFC50, 0x00000005, 0x00000001, 0xFE363C80, 0x00000033, 0x00000003, 0xFE363C87, 0xFE363C88, 0xFE363C89, 0x00000006, 0x00000000, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000006, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000001, omo_04_UnsetCamera0MoveFlag1, 0x00000045, 0x00000002, D_802427E8_DAFBE8, 0xFE363C8A, 0x00000043, 0x00000002, SetPlayerJumpscale, 0xF24A7D4D, 0x00000043, 0x00000005, PlayerJump, 0xFE363C87, 0xFE363C88, 0xFE363C89, 0x00000028, 0x00000049, 0x00000001, 0xFE363C8A, 0x00000043, 0x00000001, omo_04_SetCamera0MoveFlag1, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000000, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802429E8_DAFDE8
.word 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000046, 0x00000001, D_802428B0_DAFCB0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242A14_DAFE14
.word 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000046, 0x00000001, D_802428B0_DAFCB0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242A40_DAFE40
.word 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x00000046, 0x00000001, D_802428B0_DAFCB0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242A6C_DAFE6C
.word 0x00000024, 0x00000002, 0xFE363C80, 0x00000004, 0x00000046, 0x00000001, D_802428B0_DAFCB0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242A98_DAFE98
.word 0x00000024, 0x00000002, 0xFE363C80, 0x00000005, 0x00000046, 0x00000001, D_802428B0_DAFCB0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242AC4_DAFEC4
.word 0x00000024, 0x00000002, 0xFE363C80, 0x00000006, 0x00000046, 0x00000001, D_802428B0_DAFCB0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242AF0_DAFEF0
.word 0x00000024, 0x00000002, 0xFE363C80, 0x00000007, 0x00000046, 0x00000001, D_802428B0_DAFCB0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242B1C_DAFF1C
.word 0x00000043, 0x00000008, MakeEntity, 0x802EAE30, 0x0000047E, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignFlag, 0xF8405FDF, 0x00000043, 0x00000002, AssignScript, D_8024277C_DAFB7C, 0x00000043, 0x00000007, MakeEntity, 0x802BCB44, 0xFFFFFC84, 0x00000000, 0xFFFFFF83, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignScript, D_802429E8_DAFDE8, 0x00000043, 0x00000007, MakeEntity, 0x802BCB44, 0xFFFFFCB1, 0x00000000, 0x00000062, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignScript, D_80242A14_DAFE14, 0x00000043, 0x00000007, MakeEntity, 0x802BCB44, 0xFFFFFD2E, 0x00000000, 0xFFFFFFB8, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignScript, D_80242A40_DAFE40, 0x00000043, 0x00000007, MakeEntity, 0x802BCB44, 0xFFFFFD79, 0x00000050, 0x0000003E, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignScript, D_80242A6C_DAFE6C, 0x00000043, 0x00000007, MakeEntity, 0x802BCB44, 0xFFFFFDA1, 0x00000000, 0x00000085, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignScript, D_80242A98_DAFE98, 0x00000043, 0x00000007, MakeEntity, 0x802BCB44, 0xFFFFFE2D, 0x00000000, 0x00000085, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignScript, D_80242AC4_DAFEC4, 0x00000043, 0x00000007, MakeEntity, 0x802BCB44, 0x000002C8, 0x00000000, 0x00000085, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignScript, D_80242AF0_DAFEF0, 0x00000043, 0x00000008, MakeEntity, 0x802EA564, 0x0000023F, 0x0000003C, 0x0000003C, 0x00000000, 0x00000157, D_80000000, 0x00000043, 0x00000002, AssignBlockFlag, 0xF8405FE0, 0x00000043, 0x00000008, MakeEntity, 0x802EA564, 0x000002F9, 0x0000003C, 0xFFFFFFAB, 0x00000000, 0x00000157, D_80000000, 0x00000043, 0x00000002, AssignBlockFlag, 0xF8405FE1, 0x00000043, 0x00000008, MakeEntity, 0x802EA564, 0x00000375, 0x0000008C, 0xFFFFFF92, 0x00000000, 0x00000084, D_80000000, 0x00000043, 0x00000002, AssignBlockFlag, 0xF8405FE2, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFFC84, 0x0000006E, 0xFFFFFF84, 0x00000011, 0xF8405FE3, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFFC84, 0x00000082, 0xFFFFFF84, 0x00000011, 0xF8405FE4, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFFC84, 0x00000096, 0xFFFFFF84, 0x00000011, 0xF8405FE5, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFFD83, 0x000000BE, 0x0000003E, 0x00000011, 0xF8405FE6, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFFD9A, 0x000000D2, 0x0000003E, 0x00000011, 0xF8405FE7, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFFDAE, 0x000000DC, 0x0000003E, 0x00000011, 0xF8405FE8, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFFDC2, 0x000000D2, 0x0000003E, 0x00000011, 0xF8405FE9, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFFDD6, 0x000000BE, 0x0000003E, 0x00000011, 0xF8405FEA, 0x00000043, 0x00000007, MakeItemEntity, 0x0000015C, 0x00000078, 0x000000B4, 0xFFFFFFB0, 0x00000011, 0xF8405FEC, 0x00000043, 0x00000007, MakeItemEntity, 0x0000015C, 0xFFFFFFA6, 0x00000000, 0xFFFFFF83, 0x00000011, 0xF8405FED, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242EF0_DB02F0
.float 4.5, 3.5, 2.6, 2.0, 1.5, 20.0

glabel D_80242F08_DB0308
.word 0x3FE66666, 0x00000000, 0x00000000, 0x42F00000, 0x41F00000, 0x00000003, 0x40800000, 0x0000003C, 0x00000003, 0x43160000, 0x41F00000, 0x00000001

glabel D_80242F38_DB0338
.word 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000005, 0xFFFFFD76, 0x00000043, 0x00000003, SetSelfVar, 0x00000006, 0x0000001E, 0x00000043, 0x00000003, SetSelfVar, 0x00000001, 0x00000258, 0x00000043, 0x00000002, func_802416AC_DAEAAC, D_80242F08_DB0308, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242FA8_DB03A8
.word 0x00000000, 0x00190016, 0x00000000, 0x00000000, D_80242F38_DB0338, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x000E0001

glabel D_80242FD4_DB03D4
.word 0x40000000, 0x0000003C, 0x0000000F, 0x42C80000, 0x41F00000, 0x00000004, 0x40800000, 0x00000006, 0x00000001, 0x430C0000, 0x41F00000, 0x00000001

glabel D_80243004_DB0404
.word 0x00000043, 0x00000002, func_80241AD0_DAEED0, D_80242FD4_DB03D4, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80243024_DB0424
.word 0x00000000, 0x00170016, 0x00000000, 0x00000000, D_80243004_DB0404, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x000E0001

glabel D_80243050_DB0450
.word 0x00000000, 0x00170016, 0x00000000, 0x00000000, 0x00000000, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x000E0001

glabel D_8024307C_DB047C
.word 0x00000000, 0x00240022, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000D0000

glabel D_802430A8_DB04A8
.word 0x00000000, 0x00220018, 0x00000000, 0x00000000, 0x00000000, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x001A0000

glabel D_802430D4_DB04D4
.word 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000000C, 0x00000002, 0xFE363C80, 0x0000041A, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000001, func_80241E04_DAF204, 0x00000043, 0x00000005, GetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000009, SetCamProperties, 0x00000000, 0xF24A8E80, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000012C, 0xF24AAE80, 0xF24A5480, 0x0000000A, 0x00000002, 0xF5DE0258, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00260003, 0x00260001, 0x00000000, 0x000F003A, 0x00000012, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00390005, 0x00390002, 0x00000000, 0x000F003B, 0x00000013, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000001, omo_04_UnsetCamera0Flag1000, 0x00000043, 0x00000003, ResetCam, 0x00000000, 0xF24A8A80, 0x00000057, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000002, StartBossBattle, 0x00000003, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024324C_DB064C
.word 0x00000043, 0x00000002, GetBattleOutcome, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF8405FCE, 0x00000001, 0x00000043, 0x00000001, DoNpcDefeat, 0x00000016, 0x00000001, 0x00000001, 0x00000016, 0x00000001, 0x00000002, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802432C0_DB06C0
.word 0x0000000A, 0x00000002, 0xF5DE0258, 0x00000000, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, D_802430D4_DB04D4, 0x00000043, 0x00000003, BindNpcDefeat, 0xFFFFFFFF, D_8024324C_DB064C, 0x00000012, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80243334_DB0734
.word 0x0000000A, 0x00000002, 0xF5DE0258, 0x00000001, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, D_802430D4_DB04D4, 0x00000043, 0x00000003, BindNpcDefeat, 0xFFFFFFFF, D_8024324C_DB064C, 0x00000012, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802433A8_DB07A8
.word 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, D_80243E88_DB1288, 0x00000043, 0x00000003, BindNpcAux, 0xFFFFFFFF, D_80244000_DB1400, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802433E0_DB07E0
.word 0x00000000, D_80243050_DB0450, 0x44898000, 0x00000000, 0x00000000, 0x00440F00, D_802432C0_DB06C0, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00260001, 0x00260002, 0x00260003, 0x00260003, 0x00260001, 0x00260001, 0x00260005, 0x00260005, 0x00260003, 0x00260003, 0x00260003, 0x00260003, 0x00260003, 0x00260003, 0x00260003, 0x00260003, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_802435D0_DB09D0
.word 0x00000001, D_8024307C_DB047C, 0x44898000, 0x00000000, 0x00000000, 0x00440F00, D_80243334_DB0734, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00390002, 0x00390003, 0x00390004, 0x00390004, 0x00390002, 0x00390002, 0x0039000C, 0x0039000C, 0x00390011, 0x00390012, 0x00390007, 0x00390008, 0x00390002, 0x00390002, 0x00390002, 0x00390002, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_802437C0_DB0BC0
.word 0x00000003, D_80243024_DB0424, 0xC4408000, 0x00000000, 0x00000000, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x0000010E, 0x8005009A, 0x00020000, 0x008C0002, 0x00000084, 0x00020000, 0x008D0002, 0x0000008F, 0x00020000, 0x00900002, 0x00000098, 0x00020000, 0x00000000, 0x00001999, 0x59980002, 0x3FFF2666, 0x4CCC0002, 0x3FFF3FFF, 0x3FFF0002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00020000, 0xFFFFFCFE, 0x00000000, 0x00000000, 0x0000001E, 0x00000000, 0xFFFF8001, 0x00000000, 0xFFFFFCFE, 0x00000000, 0x00000000, 0x000000C8, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x003B0301, 0x003B0302, 0x003B0303, 0x003B0303, 0x003B0301, 0x003B0301, 0x003B030C, 0x003B030C, 0x003B0315, 0x003B0312, 0x003B0311, 0x003B0310, 0x003B0305, 0x003B0301, 0x003B0301, 0x003B0301, 0x00000001, 0x00000000, 0x00000000, 0x00000000

glabel D_802439B0_DB0DB0
.word 0x00000004, D_80242FA8_DB03A8, 0xC32A0000, 0x42700000, 0x41F00000, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x0000010E, 0x8005008A, 0x00050000, 0x008C0005, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980002, 0x3FFF2666, 0x4CCC0002, 0x3FFF3FFF, 0x3FFF0002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00020000, 0xFFFFFF56, 0x0000003C, 0x0000001E, 0x0000001E, 0x00000000, 0xFFFF8001, 0x00000000, 0xFFFFFF56, 0x0000003C, 0x0000001E, 0x000000C8, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x003D0034, 0x003D0034, 0x003D0038, 0x003D0038, 0x003D0033, 0x003D0033, 0x003D0039, 0x003D0039, 0x003D0038, 0x003D0038, 0x003D0001, 0x003D0001, 0x003D0001, 0x003D0001, 0x003D0001, 0x003D0001, 0x00000001, 0x00000000, 0x00000000, 0x00000000

glabel D_80243BA0_DB0FA0
.word 0x0060000E, 0x0060000F, 0x00600010, 0x00600013, 0x00600015, 0x00600016, 0xFFFFFFFF

glabel D_80243BBC_DB0FBC
.word 0x00000002, D_802430A8_DB04A8, 0x00000000, 0xC47A0000, 0x00000000, 0x00000F04, D_802433A8_DB07A8, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00600001, 0x00600002, 0x00600003, 0x00600003, 0x00600001, 0x00600001, 0x00600000, 0x00600000, 0x00600003, 0x00600003, 0x00600003, 0x00600003, 0x00600003, 0x00600003, 0x00600003, 0x00600003, 0x00000000, 0x00000000, D_80243BA0_DB0FA0, 0x00000000

glabel D_80243DAC_DB11AC
.word 0x00000001, D_802433E0_DB07E0, 0x12010001, 0x00000001, D_802437C0_DB0BC0, 0x10040001, 0x00000001, D_802439B0_DB0DB0, 0x100F0001, 0x00000000, 0x00000000, 0x00000000

glabel D_80243DDC_DB11DC
.word 0x00000001, D_802435D0_DB09D0, 0x12030001, 0x00000001, D_802437C0_DB0BC0, 0x10040001, 0x00000001, D_802439B0_DB0DB0, 0x100F0001, 0x00000000, 0x00000000, 0x00000000

glabel D_80243E0C_DB120C
.word 0x00000001, D_802437C0_DB0BC0, 0x10040001, 0x00000001, D_802439B0_DB0DB0, 0x100F0001, 0x00000000, 0x00000000, 0x00000000

glabel D_80243E30_DB1230
.word 0x00000001, D_80243BBC_DB0FBC, 0x00000000, 0x00000001, D_802433E0_DB07E0, 0x12010001, 0x00000001, D_802435D0_DB09D0, 0x12030001, 0x00000000, 0x00000000, 0x00000000

glabel D_80243E60_DB1260
.word 0x00000001, 0x00000002, 0x00000003, 0x00000002, 0x00000001, 0xFFFFFFFF, 0xFFFFFFFE, 0xFFFFFFFD, 0xFFFFFFFE, 0xFFFFFFFF

glabel D_80243E88_DB1288
.word 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000043, 0x00000005, GetNpcPos, 0xFFFFFFFF, 0xFE363C86, 0xFE363C83, 0xFE363C84, 0x00000005, 0x00000001, 0x00000000, 0x00000030, 0x00000001, D_80243E60_DB1260, 0x00000005, 0x00000001, 0x0000000A, 0x00000043, 0x00000005, GetNpcPos, 0xFFFFFFFF, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C85, 0x0000000A, 0x00000002, 0xFE363C85, 0x00000000, 0x00000014, 0x00000001, 0xFE363C86, 0x00000018, 0x00000001, 0xFE363C82, 0x00000043, 0x00000003, SetNpcYaw, 0xFFFFFFFF, 0x0000005A, 0x00000019, 0x00000001, 0xFE363C82, 0x00000043, 0x00000003, SetNpcYaw, 0xFFFFFFFF, 0x0000010E, 0x00000023, 0x00000000, 0x00000024, 0x00000002, 0xFE363C86, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000012, 0x00000000, 0x00000031, 0x00000001, 0xFE363C81, 0x00000027, 0x00000002, 0xFE363C83, 0xFE363C81, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000008, 0x00000001, 0x00000003, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80244000_DB1400
.word 0x00000024, 0x00000002, 0xFAA2B58A, 0x00000000, 0x00000043, 0x00000005, GetNpcPos, 0x00000002, 0xFE363C86, 0xFE363C87, 0xFE363C88, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_80241E40_DAF240, 0xFAA2B58A, 0x00000043, 0x00000005, GetNpcPos, 0x00000002, 0xFE363C89, 0xFE363C8A, 0xFE363C8B, 0x00000024, 0x00000002, 0xFE363C83, 0xFE363C89, 0x00000024, 0x00000002, 0xFE363C84, 0xFE363C8A, 0x00000024, 0x00000002, 0xFE363C85, 0xFE363C8B, 0x0000002D, 0x00000002, 0xFE363C83, 0xFE363C86, 0x0000002D, 0x00000002, 0xFE363C84, 0xFE363C87, 0x0000002D, 0x00000002, 0xFE363C85, 0xFE363C88, 0x00000026, 0x00000002, 0xFE363C86, 0xFE363C89, 0x00000026, 0x00000002, 0xFE363C87, 0xFE363C8A, 0x00000026, 0x00000002, 0xFE363C88, 0xFE363C8B, 0x0000000B, 0x00000002, 0xFE363C83, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C85, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x0000001F, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0xF24A7E80, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000003, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024418C_DB158C
.word 0x44480000, 0x430C0000, 0xC1A00000, 0x44834000, 0x42F00000, 0xC28C0000, 0x448FC000, 0x42BE0000, 0xC2C80000, 0x44960000, 0x429A0000, 0xC1F00000, 0x448FC000, 0x42780000, 0x42AA0000, 0x44834000, 0x42480000, 0x43020000, 0x44480000, 0x42200000, 0x42480000, 0x447A0000, 0x41A00000, 0x00000000

glabel D_802441EC_DB15EC
.word 0x447A0000, 0x41A00000, 0x00000000, 0x447C8000, 0x41880000, 0x00000000, 0x447F0000, 0x41700000, 0x00000000

glabel D_80244210_DB1610
.word 0x447F0000, 0x41700000, 0x00000000, 0x44870000, 0x41F00000, 0x41F00000, 0x44910000, 0x42A00000, 0xC2200000, 0x44160000, 0x43160000, 0x42B40000

glabel D_80244240_DB1640
.word 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000002, 0x00000295, 0x00000000, 0x00000008, 0x00000001, 0x00000004, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80244288_DB1688
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xF8405FDE, 0x00000001, 0x00000024, 0x00000002, 0xF70F2E84, 0xF5DE0258, 0x00000014, 0x00000001, 0xF70F2E84, 0x00000016, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFD050F8A, 0x00000000, 0x00000016, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFD050F8A, 0x00000001, 0x00000016, 0x00000001, 0x00000002, 0x00000024, 0x00000002, 0xFD050F8A, 0x0000008A, 0x00000023, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0x00000320, 0x0000008C, 0xFFFFFFEC, 0x00000043, 0x00000003, SetNpcYaw, 0x00000002, 0x0000010E, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000002, 0x00600015, 0x0000000B, 0x00000002, 0xF70F2E84, 0x00000002, 0x00000043, 0x00000005, SetNpcPos, 0xFD050F8A, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x0000044C, 0x00000000, 0x00000000, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x0000044C, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF2524A80, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24AB680, 0xF24A5C80, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000008, 0x00000001, 0x0000003C, 0x00000045, 0x00000002, D_80244240_DB1640, 0xFD050F8B, 0x00000024, 0x00000002, 0xFAA2B58A, 0x00000001, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF24FF280, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0x00000002, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000057, 0x00000000, 0x00000043, 0x00000005, LoadPath, 0x00000096, D_8024418C_DB158C, 0x00000008, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, GetNextPathPos, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000008, 0x00000001, 0x00000001, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000001, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000024, 0x00000002, 0xFAA2B58A, 0x00000000, 0x00000049, 0x00000001, 0xFD050F8B, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000002, 0x0000032B, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000002, 0x00600010, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, SetNpcRotation, 0x00000002, 0x00000000, 0x00000000, 0xFFFFFFFB, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, SetNpcRotation, 0x00000002, 0x00000000, 0x00000000, 0xFFFFFFF6, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, SetNpcRotation, 0x00000002, 0x00000000, 0x00000000, 0xFFFFFFF1, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, SetNpcRotation, 0x00000002, 0x00000000, 0x00000000, 0xFFFFFFF6, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, SetNpcRotation, 0x00000002, 0x00000000, 0x00000000, 0xFFFFFFF1, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, SetNpcRotation, 0x00000002, 0x00000000, 0x00000000, 0xFFFFFFF6, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, SetNpcRotation, 0x00000002, 0x00000000, 0x00000000, 0xFFFFFFF1, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, SetNpcRotation, 0x00000002, 0x00000000, 0x00000000, 0xFFFFFFF6, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, SetNpcRotation, 0x00000002, 0x00000000, 0x00000000, 0xFFFFFFF1, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x00000005, SetNpcRotation, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000005, LoadPath, 0x0000000A, D_802441EC_DB15EC, 0x00000003, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, GetNextPathPos, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000008, 0x00000001, 0x00000001, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000001, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000004, SetNpcVar, 0x00000002, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000002, 0x00600013, 0x00000008, 0x00000001, 0x0000002D, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000002, 0x0060000E, 0x00000043, 0x00000005, GetNpcPos, 0x00000002, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x00000019, 0x00000027, 0x00000002, 0xFE363C81, 0x00000026, 0x00000043, 0x00000006, PlaySoundAt, 0x0000207A, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x0000000F, PlayEffect, 0x00000013, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0xF24A7E80, 0x00000064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000002, 0x0060000F, 0x00000027, 0x00000002, 0xFE363C80, 0x00000037, 0x00000043, 0x00000006, PlaySoundAt, 0x00002098, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x0000000F, PlayEffect, 0x00000001, 0xFE363C80, 0x00000000, 0x00000000, 0x00000001, 0x0000000F, 0x00000003, 0x00000008, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x0000000B, 0x00000002, 0xF70F2E84, 0x00000002, 0x00000043, 0x00000005, SetNpcPos, 0xFD050F8A, 0xFE363C80, 0x00000000, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000007, MakeItemEntity, 0xFD050F8A, 0xFE363C80, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000002, 0x00600013, 0x00000008, 0x00000001, 0x0000002D, 0x00000014, 0x00000001, 0xF70F2E84, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x00600016, 0x00600013, 0x00000205, 0x000F0036, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x00600016, 0x00600013, 0x00000205, 0x000F0037, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x00600016, 0x00600013, 0x00000205, 0x000F0038, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x00600016, 0x00600013, 0x00000205, 0x000F0039, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x00600016, 0x00600013, 0x00000205, 0x000F0034, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x00600016, 0x00600013, 0x00000205, 0x000F0035, 0x00000023, 0x00000000, 0x00000043, 0x00000004, SetNpcVar, 0x00000002, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF2524A80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000045, 0x00000002, D_80244240_DB1640, 0xFD050F8B, 0x00000024, 0x00000002, 0xFAA2B58A, 0x00000001, 0x00000056, 0x00000000, 0x00000043, 0x00000005, LoadPath, 0x00000082, D_80244210_DB1610, 0x00000004, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, GetNextPathPos, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000008, 0x00000001, 0x00000001, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000001, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x0000005A, 0x0000000B, 0x00000002, 0xF70F2E84, 0x00000002, 0x00000043, 0x00000004, PlaySoundAtNpc, 0xFD050F8A, 0x00000263, 0x00000000, 0x00000043, 0x0000000A, ShowEmote, 0xFD050F8A, 0x00000002, 0x00000000, 0x00000014, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000013, 0x00000000, 0x00000043, 0x00000003, GotoMap, 0x80244EB0, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000
