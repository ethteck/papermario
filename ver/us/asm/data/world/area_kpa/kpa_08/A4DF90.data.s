.include "macro.inc"

.section .data

glabel D_80241570_A4DF90
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000006, 0x00000024, 0x00000002, 0xFE363C82, 0x0000004B, 0x00000024, 0x00000002, 0xFE363C83, 0x0000004D, 0x00000044, 0x00000001, ExitDoubleDoor, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x80242510, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241614_A4E034
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x00000028, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80242518, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241670_A4E090
.word 0x00000047, 0x00000005, D_80241570_A4DF90, 0x00000100, 0x00000006, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80241614_A4E034, 0x00080000, 0x00000000, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802416B8_A4E0D8
.word 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x0000004B, 0x00000024, 0x00000002, 0xFE363C83, 0x0000004D, 0x00000044, 0x00000001, EnterDoubleDoor, 0x00000044, 0x00000001, D_80241670_A4E090, 0x00000016, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, D_80241670_A4E090, 0x00000044, 0x00000001, EnterWalk, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000016, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, 0x802424F0, 0x00000046, 0x00000001, 0x80241C18, 0x00000044, 0x00000001, D_802416B8_A4E0D8, 0x00000008, 0x00000001, 0x00000001, 0x00000044, 0x00000001, 0x80241500, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000
