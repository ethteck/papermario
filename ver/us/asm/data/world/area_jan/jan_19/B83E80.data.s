.include "macro.inc"

.section .data

glabel D_80240020_B83E80
.word 0xC35C0000, 0x00000000, 0x41200000, 0x42B40000, 0x433E0000, 0x43E10000, 0x42DC0000, 0x43870000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_802401A0_B84000, D_80240020_B83E80, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00190101

glabel D_80240080_B83EE0
.word 0x00000043, 0x00000002, ClearAmbientSounds, 0x000000FA, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802400A0_B83F00
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80240310, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802400FC_B83F5C
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80240318, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240158_B83FB8
.word 0x00000047, 0x00000005, D_802400A0_B83F00, 0x00080000, 0x00000000, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_802400FC_B83F5C, 0x00080000, 0x00000004, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802401A0_B84000
.word 0x00000024, 0x00000002, 0xF5DE0329, 0x00000024, 0x00000043, 0x00000002, SetSpriteShading, 0x00060001, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000046, 0x00000001, 0x802402B0, 0x00000043, 0x00000001, func_80240000_B83E60, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000001, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000005, 0x7FFFFE00, 0x00000024, 0x00000002, 0xFE363C80, D_80240158_B83FB8, 0x00000044, 0x00000001, EnterWalk, 0x00000046, 0x00000001, D_80240080_B83EE0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000
