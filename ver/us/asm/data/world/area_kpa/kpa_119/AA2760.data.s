.include "macro.inc"

.section .data

glabel D_80240100_AA2760
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80240280, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024015C_AA27BC
.word 0x00000047, 0x00000005, D_80240100_AA2760, 0x00080000, 0x0000000B, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000016, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000046, 0x00000001, D_802400C0_AA2720, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x0000000D, 0x7FFFFE00, 0x00000024, 0x00000002, 0xFE363C80, D_8024015C_AA27BC, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000044, 0x00000001, 0x80240050, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000
