.include "macro.inc"

.section .data

glabel D_80243CA0_8B3D10
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000043, 0x00000002, HidePlayerShadow, 0x00000001, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010000, 0x00000043, 0x00000002, GetCurrentPartnerID, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFC, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000043, 0x00000001, kmr_02_GetEntryPos, 0x00000028, 0x00000002, 0xFE363C82, 0x00000028, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000043, 0x00000003, InterpPlayerYaw, 0xFE363C84, 0x00000000, 0x00000043, 0x00000002, PlaySound, 0x00000163, 0x00000043, 0x00000002, func_802D286C, 0x00000100, 0x00000043, 0x00000007, func_802D2520, 0x00010000, 0x00000005, 0x00000002, 0x00000001, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000005, 0x00000001, 0x00000028, 0x00000027, 0x00000002, 0xFE363C81, 0x00000001, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x00000002, GetCurrentPartnerID, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000002, 0xFE363C82, 0x00000003, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFC, 0x00000002, 0x00000000, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFC, 0x00000001, 0x00000057, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x00000007, func_802D2520, 0x00010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010002, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000002, HidePlayerShadow, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000001, kmr_02_GetCurrentFloor, 0x00000008, 0x00000001, 0x00000001, 0x0000000B, 0x00000002, 0xFE363C80, 0xFFFFFFFF, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000044, 0x00000001, 0xFE363C8A, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000002, HidePlayerShadow, 0x00000001, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0xFE363C8B, 0x7FFFFE00, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000043, 0x00000001, kmr_02_GetEntryPos, 0x00000024, 0x00000002, 0xFE363C85, 0xFE363C81, 0x00000024, 0x00000002, 0xFE363C86, 0xFE363C82, 0x00000024, 0x00000002, 0xFE363C87, 0xFE363C83, 0x00000027, 0x00000002, 0xFE363C82, 0x00000002, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000043, 0x00000003, InterpPlayerYaw, 0xFE363C84, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C84, 0x0000005A, 0x00000027, 0x00000002, 0xFE363C85, 0x00000028, 0x00000012, 0x00000000, 0x00000028, 0x00000002, 0xFE363C85, 0x00000028, 0x00000013, 0x00000000, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C85, 0xFE363C86, 0xFE363C87, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C85, 0xFE363C86, 0xFE363C87, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000002, GetCurrentPartnerID, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFC, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFC, 0xFE363C80, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, PlaySound, 0x00000163, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000019, 0x00000043, 0x00000002, HidePlayerShadow, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000002, func_802D286C, 0x00000900, 0x00000043, 0x00000007, func_802D2520, 0x00010002, 0x00000005, 0x00000003, 0x00000001, 0x00000001, 0x00000000, 0x00000005, 0x00000001, 0x00000028, 0x00000043, 0x00000002, kmr_02_SomeXYZFunc2, 0xF24A7E80, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000002, GetCurrentPartnerID, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000002, 0xFE363C82, 0x00000003, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFC, 0x00000001, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000057, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000007, func_802D2520, 0x00010002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0xFE363C8B, 0x7FFFFE00, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000044, 0x00000001, 0xFE363C8A, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, kmr_02_UnkFunc25, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, GetCurrentPartner, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000002, GetCurrentPartnerID, 0xFE363C81, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000006, 0x00000002, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000001, func_802D2B6C, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000013, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000013, 0x00000000, 0x00000046, 0x00000001, 0x802444C0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, kmr_02_SetPlayerStatusAnimFlags100000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000002, HidePlayerShadow, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0xFE363C8A, 0x00000043, 0x00000001, kmr_02_GetEntryPos, 0x00000043, 0x00000004, PlayerMoveTo, 0xFE363C81, 0xFE363C83, 0x00000003, 0x00000024, 0x00000002, 0xFE363C80, 0xFE363C8A, 0x00000043, 0x00000001, kmr_02_GetEntryPos, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000043, 0x00000003, SetPlayerFlagBits, 0x00200000, 0x00000001, 0x00000043, 0x00000001, kmr_02_GetCurrentCameraYawClamped180, 0x00000043, 0x00000003, InterpPlayerYaw, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x00000003, SetPlayerFlagBits, 0x00200000, 0x00000000, 0x00000043, 0x00000002, PlaySound, 0x00000163, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000004, 0x00000005, 0x00000001, 0x00000028, 0x00000028, 0x00000002, 0xFE363C81, 0x00000001, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000002, func_802D286C, 0x00000800, 0x00000043, 0x00000007, func_802D2520, 0x00010002, 0x00000005, 0x00000002, 0x00000001, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000019, 0x00000046, 0x00000001, 0xFE363C8C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, IsPlayerOnValidFloor, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, GetPlayerActionState, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x0000001A, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, GetCurrentPartner, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000002, GetCurrentPartnerID, 0xFE363C81, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000006, 0x00000002, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000001, func_802D2B6C, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000013, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000013, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000001, kmr_02_SetPlayerStatusAnimFlags100000, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0xFE363C8B, 0x7FFFFE00, 0x00000024, 0x00000002, 0xFE363C80, 0xFE363C8A, 0x00000043, 0x00000001, kmr_02_GetEntryPos, 0x00000024, 0x00000002, 0xFE363C85, 0xFE363C81, 0x00000024, 0x00000002, 0xFE363C86, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C86, 0x00000002, 0x00000024, 0x00000002, 0xFE363C87, 0xFE363C83, 0x00000024, 0x00000002, 0xFE363C88, 0xFE363C84, 0x00000027, 0x00000002, 0xFE363C88, 0x000000B4, 0x0000000F, 0x00000002, 0xFE363C84, 0x00000168, 0x00000028, 0x00000002, 0xFE363C84, 0x00000168, 0x00000013, 0x00000000, 0x00000043, 0x00000003, InterpPlayerYaw, 0xFE363C88, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, PlaySound, 0x00000163, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C80, 0xFE363C86, 0xFE363C87, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010000, 0x00000043, 0x00000002, func_802D286C, 0x00000800, 0x00000043, 0x00000007, func_802D2520, 0x00010000, 0x00000005, 0x00000003, 0x00000001, 0x00000001, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000008, 0x00000043, 0x00000002, HidePlayerShadow, 0x00000001, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000003, 0x00000005, 0x00000001, 0x00000028, 0x00000043, 0x00000002, kmr_02_SomeXYZFunc2, 0xF24A7E80, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x00000019, 0x00000046, 0x00000001, 0xFE363C8C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x3FC00000, 0x0000003C, 0x0000001E, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000002, DoBasicAI, 0x802449D0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00160018, 0x00000000, 0x00000000, 0x80244A00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630010, 0x00000000, 0x00000000, 0x00000000, 0x00000096, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000096, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000096, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000096, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001

glabel D_80244B2C_8B4B9C
.word 0x80244A4C, 0x80244A84, 0x80244ABC, 0x80244AF4, 0x40000000, 0x0000000F, 0x0000001E, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000002, DoBasicAI, 0x80244B3C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000002, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80257D20, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80257D28, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80257D30, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000000F, 0x00000002, 0xF5DE0180, 0xFFFFFF98, 0x00000043, 0x00000006, RotateGroup, 0x000000BD, 0x00000078, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x000000BF, 0x00000078, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000014, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000068, 0x7FFFFE00, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x80244B8C, 0x00080000, 0x00000007, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x80244BE8, 0x00080000, 0x00000009, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x80244C44, 0x00080000, 0x0000000B, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetLoadType, 0xFE363C81, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000044, 0x00000001, EnterSavePoint, 0x00000044, 0x00000001, 0x80244D38, 0x00000044, 0x00000001, 0x80244CA0, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000044, 0x00000001, 0x80244CA0, 0x00000013, 0x00000000, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000002, 0x00000024, 0x00000002, 0xFE363C80, 0x80244D38, 0x00000044, 0x00000001, EnterWalk, 0x0000000A, 0x00000002, 0xF8405BAB, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x009D0008, 0x009D0001, 0x00000004, 0x000B001C, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000024, 0x00000002, 0xF8405BAB, 0x00000001, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000013, 0x00000000, 0x00000016, 0x00000001, 0x00000003, 0x0000000A, 0x00000002, 0xF8406311, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C80, 0xFFFFFC18, 0xFE363C82, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000002, PlaySound, 0x0000208E, 0x00000024, 0x00000002, 0xF8406311, 0x00000001, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000000, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0x80244D38, 0x00000046, 0x00000001, D_80243CA0_8B3D10, 0x00000016, 0x00000001, 0x00000005, 0x00000044, 0x00000001, 0x80255380, 0x00000044, 0x00000001, 0x80244D38, 0x00000016, 0x00000001, 0x0000000A, 0x00000044, 0x00000001, 0x80285C50, 0x00000044, 0x00000001, 0x80244D38, 0x0000001C, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x80244D38, 0x00000044, 0x00000001, EnterWalk, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x001D00D8, 0x000000A0, 0x00000028, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x00000014, 0x000001D2, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x00000078, 0x00000014, 0x0000000A, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateGroup, 0x000000BD, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000006, RotateGroup, 0x000000BF, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000014, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000068, 0x7FFFFE00, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x0000001E, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000002, GetLoadType, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000004, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x802513D8, 0x00000044, 0x00000001, 0x80243B30, 0x00000002, 0x00000000, 0x00000003, 0x00000001, 0x0000000A, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000016, 0x00000001, 0xFFFFFF8C, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x8025136C, 0x00000018, 0x00000001, 0xFFFFFF8C, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x80251324, 0x0000001C, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x8025139C, 0x00000023, 0x00000000, 0x00000003, 0x00000001, 0x00000014, 0x00000043, 0x00000001, ClearDefeatedEnemies, 0x00000046, 0x00000001, 0x80251E84, 0x00000046, 0x00000001, 0x80255588, 0x00000046, 0x00000001, 0x80254FD0, 0x00000044, 0x00000001, 0x80243B74, 0x00000046, 0x00000001, 0x80257A0C, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000018, 0x00000001, 0xFFFFFF86, 0x00000047, 0x00000005, 0x802450B4, 0x00000100, 0x00000015, 0x00000001, 0x00000000, 0x00000018, 0x00000001, 0xFFFFFF98, 0x0000001C, 0x00000000, 0x00000047, 0x00000005, 0x802450FC, 0x00000100, 0x00000014, 0x00000001, 0x00000000, 0x00000023, 0x00000000, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000018, 0x00000001, 0xFFFFFF85, 0x00000043, 0x00000003, EnableGroup, 0x000000B8, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x000000C1, 0x00000000, 0x00000018, 0x00000001, 0xFFFFFF98, 0x00000043, 0x00000003, EnableGroup, 0x000000B4, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x000000C1, 0x00000000, 0x0000001C, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x000000B4, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x000000B8, 0x00000000, 0x00000023, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000068, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000013, 0x7FFFFE00, 0x00000044, 0x00000001, 0x80244D9C, 0x00000008, 0x00000001, 0x00000001, 0x0000000B, 0x00000002, 0xF5DE0180, 0xFFFFFF81, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000005, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000001, func_80240370_8B03E0, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000
