.include "macro.inc"

.section .data

glabel D_80240990_A57E40
.word 0x0000004D, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C85, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C86, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C87, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C88, 0x00000001, 0x00000043, 0x00000001, kpa_14_UnkTexturePanFunc, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, kpa_14_UnkTexturePanFunc2, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240A2C_A57EDC
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80241EC0, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0x00000058, 0x0000000A, 0x00000002, 0xF8406194, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x0000006A, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x000000CB, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0x00000001, 0x00000044, 0x00000001, ExitSingleDoor, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x80241EC8, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240B5C_A5800C
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000002, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80241ED0, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240BB8_A58068
.word 0x00000047, 0x00000005, D_80240A2C_A57EDC, 0x00080000, 0x00000053, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80240B5C_A5800C, 0x00080000, 0x0000005A, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240C00_A580B0
.word 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, D_80240BB8_A58068, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000016, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0x00000058, 0x00000024, 0x00000002, 0xFE363C82, 0x0000006A, 0x00000024, 0x00000002, 0xFE363C83, 0x00000001, 0x00000044, 0x00000001, EnterSingleDoor, 0x00000044, 0x00000001, D_80240BB8_A58068, 0x00000016, 0x00000001, 0x00000002, 0x00000024, 0x00000002, 0xFE363C80, D_80240BB8_A58068, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240D00_A581B0
.word 0x00000056, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0xFFFFFC18, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0xFFFFF830, 0x00000024, 0x00000002, 0xFE363C84, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000001, 0x00000024, 0x00000002, 0xFE363C86, 0x00000000, 0x00000024, 0x00000002, 0xFE363C87, 0x00000001, 0x00000024, 0x00000002, 0xFE363C88, 0x00000000, 0x00000024, 0x00000002, 0xFE363C89, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000044, 0x00000001, D_80240990_A57E40, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0xFFFFFE70, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0xFFFFFCE0, 0x00000024, 0x00000002, 0xFE363C84, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000001, 0x00000024, 0x00000002, 0xFE363C86, 0x00000000, 0x00000024, 0x00000002, 0xFE363C87, 0x00000001, 0x00000024, 0x00000002, 0xFE363C88, 0x00000000, 0x00000024, 0x00000002, 0xFE363C89, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000044, 0x00000001, D_80240990_A57E40, 0x00000057, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0x0000005F, 0x00000001, 0x00000043, 0x00000003, SetTexPanner, 0x00000060, 0x00000001, 0x00000043, 0x00000003, SetTexPanner, 0x00000061, 0x00000001, 0x00000043, 0x00000003, SetTexPanner, 0x00000062, 0x00000001, 0x00000043, 0x00000003, SetTexPanner, 0x00000063, 0x00000001, 0x00000043, 0x00000003, SetTexPanner, 0x00000064, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240F60_A58410
.word 0x00000010, 0x42DC0000, 0x41F00000, 0xC3070000, 0x0000000F, 0x43AC8000, 0x41F00000, 0xC3070000, 0x0000000A, 0x44098000, 0x41F00000, 0xC3070000, 0x0000000B, 0x44480000, 0x41F00000, 0xC3070000, 0x00000009, 0x4482A000, 0x41F00000, 0xC3070000, 0x0000000C, 0x44AF0000, 0x41F00000, 0xC3070000, 0x0000000E, 0x44C6C000, 0x41F00000, 0xC2B40000, 0x0000000D, 0x44F28000, 0x41F00000, 0xC3070000, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000

glabel D_80240FF0_A584A0
.word 0x00000024, 0x00000002, 0xFD050F8A, 0x00000009, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241010_A584C0
.word 0x00000024, 0x00000002, 0xFD050F8A, 0x0000000C, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241030_A584E0
.word 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x0000000F, PlayEffect, 0x00000027, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000001, 0x0000000A, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802410BC_A5856C
.word 0x0000004D, 0x00000001, 0x0000000B, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000060, 0x7FFFFE00, 0x00000043, 0x00000001, func_8024034C_A577FC, 0x00000014, 0x00000001, 0xFE363C89, 0x00000016, 0x00000001, 0x00000008, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000060, 0x7FFFFE00, 0x00000016, 0x00000001, 0x00000009, 0x0000001C, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000000C, 0x00000002, 0xFE363C81, 0x00000078, 0x00000014, 0x00000001, 0xFE363C80, 0x00000021, 0x00000002, 0x000004B0, 0x000004DD, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000024, 0x00000002, 0xFD050F8B, 0x00000001, 0x00000043, 0x00000002, SetPlayerActionState, 0x0000000A, 0x00000045, 0x00000002, D_80241030_A584E0, 0xFE363C89, 0x0000000A, 0x00000002, 0xFD050F8A, 0x00000009, 0x00000024, 0x00000002, 0xFE363C85, 0x00000415, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000578, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000001, func_802D2B6C, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000017, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C85, 0x0000001E, 0xFFFFFF79, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C85, 0x0000001E, 0xFFFFFF79, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000005, MakeLerp, 0xFE363C80, 0xFE363C85, 0x0000001E, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C80, 0x000000FA, 0xFFFFFF79, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x000000FA, 0x0000001E, 0x00000014, 0x00000001, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C85, 0xFE363C80, 0xFFFFFF79, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000002, SetPlayerAnimation, 0x0008001A, 0x00000043, 0x00000005, MakeLerp, 0x0000001E, 0x0000003C, 0x00000005, 0x00000001, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C85, 0xFE363C80, 0xFFFFFF79, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000049, 0x00000001, 0xFE363C89, 0x00000043, 0x00000005, MakeLerp, 0x0000003C, 0x0000001E, 0x00000005, 0x00000001, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C85, 0xFE363C80, 0xFFFFFF79, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010002, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFD050F8B, 0x00000000, 0x00000023, 0x00000000, 0x00000013, 0x00000000, 0x00000023, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000016, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000046, 0x00000001, 0x80241AC4, 0x0000000A, 0x00000002, 0xF8406194, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x000000CD, 0x00000000, 0x00000044, 0x00000001, D_80240D00_A581B0, 0x00000012, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x0000006C, 0x00000000, 0x00000013, 0x00000000, 0x00000044, 0x00000001, D_80240C00_A580B0, 0x00000044, 0x00000001, 0x802408E0, 0x0000000A, 0x00000002, 0xF8406194, 0x00000000, 0x00000044, 0x00000001, 0x80241BB0, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xF8406194, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000012, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000013, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000014, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000015, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000016, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000017, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000018, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000019, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x0000001A, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x0000001B, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x0000001C, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x0000001D, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x0000001E, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x0000001F, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000020, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000064, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000065, 0x00000003, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x0000005A, 0x00000003, 0x00000056, 0x00000000, 0x00000043, 0x00000002, ResetFromLava, D_80240F60_A58410, 0x00000057, 0x00000000, 0x00000047, 0x00000005, D_80240FF0_A584A0, 0x00000080, 0x00000009, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80241010_A584C0, 0x00000080, 0x0000000C, 0x00000001, 0x00000000, 0x00000044, 0x00000001, D_802410BC_A5856C, 0x00000057, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000060, 0x7FFFFE00, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000
