.include "macro.inc"

.section .data

glabel D_802433C0_DC0670
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80246BC0, 0x00000004, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024341C_DC06CC
.word 0x00000047, 0x00000005, D_802433C0_DC0670, 0x00080000, 0x00000000, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000010, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x0000000A, 0x00000002, 0xF8405FF4, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, 0x80245DCC, 0x00000012, 0x00000000, 0x0000000A, 0x00000002, 0xF8405FCF, 0x00000000, 0x00000014, 0x00000001, 0xF5DE0259, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, 0x80245CB8, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, 0x80245D18, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, 0x80245D78, 0x00000043, 0x00000007, MakeItemEntity, 0x00000082, 0x00000438, 0x00000000, 0x00000000, 0x00000011, 0xF8405FCF, 0x00000023, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, 0x80245D78, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000046, 0x00000001, 0x802462C0, 0x00000046, 0x00000001, 0x8024389C, 0x00000046, 0x00000001, 0x80243350, 0x00000044, 0x00000001, 0x80243E50, 0x0000000A, 0x00000002, 0xF8405FF4, 0x00000000, 0x00000044, 0x00000001, 0x80246734, 0x00000008, 0x00000001, 0x00000002, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, D_8024341C_DC06CC, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000
