.include "macro.inc"

.section .data

glabel D_802466D0_806F50
.word 0xC4160000, 0x00000000, 0x00000000, 0x42B40000, 0x44160000, 0x00000000, 0x00000000, 0x43870000, 0x00000000, 0x00000000, 0xC40E8000, 0x43340000, 0x00000000, 0x00000000, 0x44160000, 0x00000000, 0xC3C80000, 0x00000000, 0x00000000, 0x42B40000, 0x43840000, 0x41D80000, 0x43AF0000, 0x43340000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80246EF8_807778, D_802466D0_806F50, 0x00000006, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, func_80200000, 0x00190001

glabel D_80246770_806FF0
.word 0x00000014, 0x00000001, 0xF5DE0180, 0x00000016, 0x00000001, 0xFFFFFF80, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x0000003F, 0x00000001, 0x00000008, 0x00000016, 0x00000001, 0x00000060, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x0000003F, 0x00000000, 0x00000008, 0x00000021, 0x00000002, 0xFFFFFFF3, 0x00000005, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x0000004A, 0x00000000, 0x00000008, 0x0000001C, 0x00000000, 0x00000044, 0x00000001, 0x802488A8, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x0000007C, 0x00000001, 0x00000008, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000021, 0x00000002, 0xFFFFFFF3, 0x00000005, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x0000004A, 0x00000000, 0x00000008, 0x0000001C, 0x00000000, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000002, func_802D5EE0, 0x00000000, 0x00000043, 0x00000004, func_802D5F28, 0x00000000, 0x00000002, 0x00000002, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x0000008A, 0x00000000, 0x00000008, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000088, 0x00000000, 0x00000008, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80246950_8071D0
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x802626B0, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802469AC_80722C
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x0000000A, 0x00000002, 0xF8405B81, 0x00000000, 0x00000024, 0x00000002, 0xF8405B81, 0x00000001, 0x00000043, 0x00000003, FadeOutMusic, 0x00000000, 0x000005DC, 0x00000043, 0x00000004, GotoMapSpecial, 0x802626C0, 0x00000001, 0x00000006, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, GotoMap, 0x802626B8, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80246A70_8072F0
.word 0x0000009E, 0x0000009F, 0xFFFFFFFF

glabel D_80246A7C_8072FC
.word 0x000000A1, 0x000000A2, 0xFFFFFFFF

glabel D_80246A88_807308
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, UseDoorSounds, 0x00000002, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000024, 0x00000002, 0xFE363C81, 0x00000005, 0x00000024, 0x00000002, 0xFE363C82, D_80246A70_8072F0, 0x00000024, 0x00000002, 0xFE363C83, D_80246A7C_8072FC, 0x00000044, 0x00000001, D_80285EEC_7E6D6C, 0x00000008, 0x00000001, 0x00000011, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000021, 0x00000002, 0xFFFFFF81, 0x0000005F, 0x00000043, 0x00000003, GotoMap, 0x802626D0, 0x00000000, 0x0000001C, 0x00000000, 0x00000043, 0x00000003, GotoMap, 0x802626C8, 0x00000000, 0x00000023, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80246B7C_8073FC
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000003, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x802626D8, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80246BD8_807458
.word 0x00000047, 0x00000005, D_80246950_8071D0, 0x00080000, 0x00000001, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80246A88_807308, 0x00000100, 0x00000005, 0x00000001, 0x00000000, 0x0000000F, 0x00000002, 0xF5DE0180, 0x00000060, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000047, 0x00000005, D_802469AC_80722C, 0x00080000, 0x00000000, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80246B7C_8073FC, 0x00080000, 0x00000006, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x80259AD0, 0x00000100, 0x00000059, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80246C94_807514
.word 0x00000043, 0x00000002, GetLoadType, 0xFE363C81, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000044, 0x00000001, EnterSavePoint, 0x00000044, 0x00000001, D_80246BD8_807458, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000005, 0x7FFFFE00, 0x00000043, 0x00000006, RotateGroup, 0x000000A3, 0x00000050, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x000000A0, 0x00000050, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000002, UseDoorSounds, 0x00000002, 0x00000024, 0x00000002, 0xFE363C80, D_80246BD8_807458, 0x00000046, 0x00000001, EnterWalk, 0x00000043, 0x00000005, MakeLerp, 0x00000050, 0x00000000, 0x0000000A, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateGroup, 0x000000A3, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x000000A0, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x00000005, 0x000001C6, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000005, 0x7FFFFE00, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000016, 0x00000001, 0x00000004, 0x00000044, 0x00000001, 0x80261880, 0x00000016, 0x00000001, 0x00000005, 0x00000046, 0x00000001, 0x8025A004, 0x00000044, 0x00000001, D_80246BD8_807458, 0x0000001C, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, D_80246BD8_807458, 0x00000044, 0x00000001, EnterWalk, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80246EF8_807778
.word 0x00000024, 0x00000002, 0xF5DE0329, 0x00000001, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x0000005A, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xF971888E, 0x00000000, 0x00000024, 0x00000002, 0xF971888F, 0x00000000, 0x00000024, 0x00000002, 0xF9718890, 0x00000000, 0x00000024, 0x00000002, 0xF9718891, 0x00000000, 0x00000024, 0x00000002, 0xF9718892, 0x00000000, 0x00000024, 0x00000002, 0xF9718893, 0x00000000, 0x00000024, 0x00000002, 0xF9718894, 0x00000000, 0x00000024, 0x00000002, 0xF9718895, 0x00000000, 0x0000000C, 0x00000002, 0xF5DE0180, 0x00000060, 0x00000044, 0x00000001, 0x80248070, 0x00000012, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x00000091, 0x00000000, 0x00000013, 0x00000000, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000016, 0x00000001, 0xFFFFFF80, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x8025FA2C, 0x0000001B, 0x00000001, 0x00000060, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x80261830, 0x00000018, 0x00000001, 0xFFFFFF9C, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x8025EFF0, 0x00000018, 0x00000001, 0xFFFFFFB5, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x8025F044, 0x00000016, 0x00000001, 0xFFFFFFB6, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x8025F080, 0x00000021, 0x00000002, 0xFFFFFFF3, 0x00000005, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x8025F0BC, 0x00000016, 0x00000001, 0x0000003C, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x8025F0F8, 0x0000001C, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x8025EFA8, 0x00000023, 0x00000000, 0x0000000F, 0x00000002, 0xF5DE0180, 0xFFFFFF9C, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000013, 0x7FFFFE00, 0x00000013, 0x00000000, 0x00000044, 0x00000001, 0x8025A2F0, 0x00000044, 0x00000001, 0x802473C8, 0x00000044, 0x00000001, 0x80247D18, 0x00000044, 0x00000001, 0x80248818, 0x00000044, 0x00000001, 0x80248428, 0x00000044, 0x00000001, D_80246770_806FF0, 0x00000043, 0x00000002, UseDoorSounds, 0x00000002, 0x00000043, 0x00000002, func_802D6340, 0x00000000, 0x00000044, 0x00000001, D_80246C94_807514, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000003, EnableTexPanning, 0x0000002D, 0x00000001, 0x00000056, 0x00000000, 0x0000004D, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000027, 0x00000002, 0xFE363C80, 0xFFFFFF9C, 0x00000027, 0x00000002, 0xFE363C81, 0xFFFFFF38, 0x0000000C, 0x00000002, 0xFE363C80, 0x00000000, 0x00000027, 0x00000002, 0xFE363C80, 0x00010000, 0x00000013, 0x00000000, 0x0000000C, 0x00000002, 0xFE363C81, 0x00000000, 0x00000027, 0x00000002, 0xFE363C80, 0x00010000, 0x00000013, 0x00000000, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000003, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, SetTexPanOffset, 0x00000003, 0x00000001, 0xFE363C81, 0xFE363C81, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000057, 0x00000000, 0x00000047, 0x00000005, 0x8024F27C, 0x00000100, 0x0000004E, 0x00000001, 0x00000000, 0x00000044, 0x00000001, 0x8025023C, 0x00000044, 0x00000001, 0x80262604, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8280, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000
