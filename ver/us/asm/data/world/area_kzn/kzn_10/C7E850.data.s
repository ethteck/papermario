.include "macro.inc"

.section .data

glabel D_802406D0_C7E850
.word 0xC3DE8000, 0x00000000, 0x00000000, 0x42B40000, 0x43D48000, 0xC3818000, 0x00000000, 0x43870000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80240B04_C7EC84, D_802406D0_C7E850, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0019010C

glabel D_80240730_C7E8B0
.word 0x0000004D, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C85, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C86, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C87, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C88, 0x00000001, 0x00000043, 0x00000001, kzn_10_UnkTexturePanFunc, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, kzn_10_UnkTexturePanFunc2, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802407CC_C7E94C
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0xFE363C80, 0x00000003, 0x00000056, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x00000024, 0x00000002, 0xFE363C81, 0xFFFFFF38, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0x00000258, 0x00000024, 0x00000002, 0xFE363C84, 0xFFFFFE70, 0x00000024, 0x00000002, 0xFE363C85, 0x00000001, 0x00000024, 0x00000002, 0xFE363C86, 0x00000000, 0x00000024, 0x00000002, 0xFE363C87, 0x00000001, 0x00000024, 0x00000002, 0xFE363C88, 0x00000001, 0x00000024, 0x00000002, 0xFE363C89, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000044, 0x00000001, D_80240730_C7E8B0, 0x00000057, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0xFE363C80, 0x00000004, 0x00000056, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000004, 0x00000024, 0x00000002, 0xFE363C81, 0x000001F4, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0x00000000, 0x00000024, 0x00000002, 0xFE363C84, 0xFFFFFE70, 0x00000024, 0x00000002, 0xFE363C85, 0x00000001, 0x00000024, 0x00000002, 0xFE363C86, 0x00000000, 0x00000024, 0x00000002, 0xFE363C87, 0x00000000, 0x00000024, 0x00000002, 0xFE363C88, 0x00000001, 0x00000024, 0x00000002, 0xFE363C89, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000044, 0x00000001, D_80240730_C7E8B0, 0x00000057, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240A04_C7EB84
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80241FF0, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240A60_C7EBE0
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80241FF8, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240ABC_C7EC3C
.word 0x00000047, 0x00000005, D_80240A04_C7EB84, 0x00080000, 0x00000005, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80240A60_C7EBE0, 0x00080000, 0x00000002, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240B04_C7EC84
.word 0x00000024, 0x00000002, 0xF5DE0329, 0x00000012, 0x00000043, 0x00000002, SetSpriteShading, 0x000A0009, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000056, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFFFFFE43, 0xFFFFFFF3, 0x00000000, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFFFFFE43, 0xFFFFFFF3, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x000001A9, 0xFFFFFF0A, 0x00000000, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x000001A9, 0xFFFFFF0A, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x00000001, func_8024030C_C7E48C, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000057, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, D_80240ABC_C7EC3C, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000029, 0x00000000, 0x00000008, 0x00000043, 0x00000002, PlayAmbientSounds, 0x00000004, 0x00000044, 0x00000001, 0x80241464, 0x00000024, 0x00000002, 0xFE363C80, 0x0000002C, 0x00000044, 0x00000001, D_802407CC_C7E94C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000
