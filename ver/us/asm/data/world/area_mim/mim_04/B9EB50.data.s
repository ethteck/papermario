.include "macro.inc"

.section .data

glabel D_802411F0_B9EB50
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80242D60, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024124C_B9EBAC
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80242D68, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802412A8_B9EC08
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000002, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80242D68, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241304_B9EC64
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000003, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80242D70, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241360_B9ECC0
.word 0x00000047, 0x00000005, D_802411F0_B9EB50, 0x00080000, 0x00000005, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_8024124C_B9EBAC, 0x00080000, 0x00000014, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_802412A8_B9EC08, 0x00080000, 0x0000000F, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80241304_B9EC64, 0x00080000, 0x0000000A, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x0000000C, 0x00000043, 0x00000002, SetSpriteShading, 0x00070003, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x0000028A, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xF70F2E82, 0xF5DE022B, 0x00000043, 0x00000002, GetMapID, 0xF5DE022B, 0x00000046, 0x00000001, 0x80242360, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, 0x80242D34, 0x00000024, 0x00000002, 0xFE363C80, D_80241360_B9ECC0, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000044, 0x00000001, 0x802411B0, 0x00000044, 0x00000001, D_802415C0_B9EF20, 0x00000043, 0x00000001, func_80240000_B9D960, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8680, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241530_B9EE90
.word 0x00000000

glabel D_80241534_B9EE94
.word 0x00000000

glabel D_80241538_B9EE98
.byte 0x00, 0x00, 0x00

glabel D_8024153B_B9EE9B
.byte 0x00

glabel D_8024153C_B9EE9C
.word 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000004, AwaitPlayerApproach, 0x00000000, 0xFFFFFEAC, 0x00000032, 0x00000043, 0x00000004, AwaitPlayerLeave, 0x00000000, 0xFFFFFEAC, 0x00000032, 0x00000043, 0x00000001, func_802401DC_B9DB3C, 0x00000043, 0x00000006, PlaySoundAt, 0x0000205F, 0x00000000, 0x00000037, 0x00000060, 0xFFFFFF02, 0x00000004, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802415C0_B9EF20
.word 0x00000043, 0x00000004, func_802C94A0, 0x00000001, func_80240070_B9D9D0, 0x00000000, 0x00000043, 0x00000004, func_802C90FC, 0x00000026, 0x00000001, 0xFFFFFFFF, 0x00000043, 0x00000004, SetModelFlags, 0x00000026, 0x00000010, 0x00000001, 0x00000008, 0x00000001, 0x00000014, 0x00000044, 0x00000001, D_8024153C_B9EE9C, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0x00000026, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000000, 0x00000000, 0x00000000, 0xFFFF8000, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000003, 0x00000004, 0x00000001, 0x00000000, 0x00000057, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000
