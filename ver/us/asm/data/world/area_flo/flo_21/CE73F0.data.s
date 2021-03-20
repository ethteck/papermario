.include "macro.inc"

.section .data

glabel D_80240CF0_CE73F0
.word 0xC4480000, 0xC2380000, 0x00000000, 0x42B40000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x8024137C, D_80240CF0_CE73F0, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, func_80200000, 0x00190124, 0x0000000A, 0x00000002, 0xF5DE0180, 0x00000038, 0x00000043, 0x00000003, FadeOutMusic, 0x00000000, 0x000001F4, 0x00000012, 0x00000000, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000032, 0x00000000, 0x00000008, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C85, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C86, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C87, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C88, 0x00000001, 0x00000043, 0x00000001, flo_21_UnkTexturePanFunc, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, flo_21_UnkTexturePanFunc2, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000016, 0x00000001, 0x00000037, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x0000000A, 0x00000002, 0xFD050F8A, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0180, 0x00000038, 0x00000016, 0x00000001, 0x00000038, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x0000001C, 0x00000000, 0x00000002, 0x00000000, 0x00000023, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x0000028A, 0x000000CD, 0x00000000, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7CE7, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x0000028A, 0x00000096, 0x00000000, 0x00000043, 0x00000003, GetCamDistance, 0x00000000, 0xFE363C81, 0x00000028, 0x00000002, 0xFE363C81, 0x00000064, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xFE363C81, 0x0000000B, 0x00000002, 0xF24A6480, 0x00002710, 0x00000043, 0x00000004, GetCamPitch, 0x00000000, 0xFE363C82, 0xFE363C83, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xFE363C82, 0xF24A6480, 0x00000013, 0x00000000, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x0000000B, func_8024004C_CE674C, 0x00000005, 0x000000B4, 0x0000028A, 0x000000AA, 0x00000000, 0x0000028A, 0x000000CD, 0x00000000, 0x00000096, 0x00000078, 0x00000056, 0x00000000, 0x00000043, 0x00000001, func_802401AC_CE68AC, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, PlaySound, 0x80000067, 0x00000043, 0x00000001, func_80240000_CE6700, 0x00000043, 0x00000002, StopSound, 0x80000067, 0x00000043, 0x00000006, PlaySoundAt, 0x000000B2, 0x00000000, 0x0000028A, 0x000000CD, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000002D, 0x00000043, 0x00000002, SetPlayerAnimation, 0x0001002A, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x000000B4, 0x00000008, 0x00000001, 0x00000073, 0x00000043, 0x00000006, PlaySoundAt, 0x00000137, 0x00000000, 0x0000028A, 0x000000CD, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000002, func_802405BC_CE6CBC, 0x00000001, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000050, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010002, 0x00000057, 0x00000000, 0x00000027, 0x00000002, 0xFE363C81, 0x00000064, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xFE363C81, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x0000028A, 0x00000078, 0x00000000, 0x00000043, 0x00000002, func_802405BC_CE6CBC, 0x00000002, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000006, func_802405FC_CE6CFC, 0x00000005, 0x0000028A, 0x00000096, 0x00000000, 0x00000078, 0x00000056, 0x00000000, 0x00000043, 0x00000001, func_80240708_CE6E08, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000043, 0x00000002, func_802405BC_CE6CBC, 0x00000003, 0x00000043, 0x00000003, PlaySoundAtPlayer, 0x00000138, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xF5DE0180, 0x00000039, 0x00000043, 0x00000004, GotoMapSpecial, 0x80245B24, 0x00000005, 0x0000000E, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80245B2C, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x802412F4, 0x00080000, 0x00000000, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000027, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x80245AEC, 0x00000044, 0x00000001, 0x80241B98, 0x00000043, 0x00000002, HidePlayerShadow, 0x00000001, 0x00000044, 0x00000001, 0x80241600, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000005, 0x00000007, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000007, 0x00000007, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000001, 0x7FFFFE00, 0x00000024, 0x00000002, 0xFE363C80, 0x80241350, 0x00000044, 0x00000001, EnterWalk, 0x00000046, 0x00000001, 0x80240D40, 0x0000000F, 0x00000002, 0xF5DE0180, 0x00000035, 0x00000043, 0x00000001, func_80240B00_CE7200, 0x00000013, 0x00000000, 0x00000044, 0x00000001, 0x80240E3C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0xF24A7E80, 0xF24A7E80, 0xF24A7E80, 0xF24A7E80, 0xF24A7E80, 0xF24A7E80, 0xF24A7EE7, 0xF24A7EE7, 0xF24A7EE7, 0xF24A7EE7, 0xF24A7EE7, 0xF24A7EE7, 0xF24A7E80, 0xF24A7E80, 0xF24A7E80, 0xF24A7E80, 0xF24A7E80, 0xF24A7E80, 0xF24A7E1A, 0xF24A7E1A, 0xF24A7E1A, 0xF24A7E1A, 0xF24A7E1A, 0xF24A7E1A, 0x0000002C, 0x00000002, 0xFD050F80, 0xF24A7480, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000002C, 0x00000002, 0xFD050F81, 0xF24A7480, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000002C, 0x00000002, 0xFD050F82, 0xF24A7480, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000002C, 0x00000002, 0xFD050F83, 0xF24A7480, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000002C, 0x00000002, 0xFD050F84, 0xF24A7480, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000056, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8F, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000008, flo_21_UnkFloatFunc, 0xFE363C8F, 0xFE363C80, 0xF24A7E60, 0xF24A7EA0, 0x0000000F, 0x00000000, 0x00000000, 0x00000043, 0x00000008, flo_21_UnkFloatFunc, 0xFE363C8F, 0xFE363C81, 0xF24A7EA0, 0xF24A7E60, 0x0000000F, 0x00000000, 0x00000000, 0x00000043, 0x00000005, ScaleModel, 0x00000058, 0xFE363C81, 0xFE363C80, 0x00000001, 0x00000043, 0x00000005, ScaleModel, 0x0000005A, 0xFE363C81, 0xFE363C80, 0x00000001, 0x00000043, 0x00000005, ScaleModel, 0x0000005C, 0xFE363C80, 0xFE363C81, 0x00000001, 0x00000043, 0x00000005, ScaleModel, 0x0000005E, 0xFE363C80, 0xFE363C81, 0x00000001, 0x00000043, 0x00000005, ScaleModel, 0x00000060, 0xFE363C80, 0xFE363C81, 0x00000001, 0x00000043, 0x00000005, ScaleModel, 0x00000062, 0xFE363C81, 0xFE363C80, 0x00000001, 0x00000043, 0x00000005, ScaleModel, 0x00000064, 0xFE363C80, 0xFE363C81, 0x00000001, 0x00000043, 0x00000005, ScaleModel, 0x00000066, 0xFE363C80, 0xFE363C81, 0x00000001, 0x00000027, 0x00000002, 0xFE363C8F, 0x00000001, 0x0000000F, 0x00000002, 0xFE363C8F, 0x0000001E, 0x00000024, 0x00000002, 0xFE363C8F, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000057, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000
