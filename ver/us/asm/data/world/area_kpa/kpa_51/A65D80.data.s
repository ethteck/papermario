.include "macro.inc"

.section .data

glabel D_80241CF0_A65D80
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000009, 0x00000024, 0x00000002, 0xFE363C82, 0x00000081, 0x00000024, 0x00000002, 0xFE363C83, 0x00000083, 0x00000044, 0x00000001, ExitDoubleDoor, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x80242F3C, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241D94_A65E24
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0x0000000E, 0x00000024, 0x00000002, 0xFE363C82, 0x00000087, 0x00000024, 0x00000002, 0xFE363C83, 0x00000085, 0x00000044, 0x00000001, ExitDoubleDoor, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x80242F44, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241E38_A65EC8
.word 0x00000047, 0x00000005, D_80241CF0_A65D80, 0x00000100, 0x00000009, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80241D94_A65E24, 0x00000100, 0x0000000E, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241E80_A65F10
.word 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000081, 0x00000024, 0x00000002, 0xFE363C83, 0x00000083, 0x00000044, 0x00000001, EnterDoubleDoor, 0x00000044, 0x00000001, D_80241E38_A65EC8, 0x00000016, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000024, 0x00000002, 0xFE363C82, 0x00000087, 0x00000024, 0x00000002, 0xFE363C83, 0x00000085, 0x00000044, 0x00000001, EnterDoubleDoor, 0x00000044, 0x00000001, D_80241E38_A65EC8, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000016, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, 0x80242EEC, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000009, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x0000000E, 0x7FFFFE00, 0x00000044, 0x00000001, D_80241E80_A65F10, 0x00000008, 0x00000001, 0x00000001, 0x00000044, 0x00000001, 0x80241C80, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000
