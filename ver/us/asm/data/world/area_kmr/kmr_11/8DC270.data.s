.include "macro.inc"

.section .data

glabel D_80242170_8DC270
.word 0x00000008, 0x00000001, 0x0000000A, 0x00000056, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000064, 0x0000000A, 0x00000096, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x0000002E, 0x00000002, 0xFE363C80, 0xF24A7A8B, 0x00000043, 0x00000005, SetNpcScale, 0x00000002, 0xFE363C80, 0xFE363C80, 0xFE363C80, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000002, 0xF24A7BB4, 0x00000043, 0x00000006, NpcJump0, 0x00000002, 0xFFFFF9C0, 0x000003E8, 0xFFFFF9C0, 0x00000096, 0x00000043, 0x00000006, PlaySoundAt, 0x00000055, 0x00000000, 0xFFFFF9C0, 0x000003E8, 0xFFFFF9C0, 0x00000043, 0x00000005, func_802402A0_8DA3A0, 0xFFFFF9C0, 0x000003E8, 0xFFFFF9C0, 0x00000028, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000043, 0x00000002, RemoveNpc, 0x00000002, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802422C8_8DC3C8
.word 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, SetCamType, 0x00000000, 0x00000004, 0x00000000, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xFFFFFFF9, 0x00000000, 0x00000043, 0x00000004, SetCamPosA, 0x00000000, 0xFFFFFB48, 0x00000371, 0x00000043, 0x00000004, SetCamPosB, 0x00000000, 0xFFFFFDF4, 0xFFFFFFA7, 0x00000043, 0x00000004, SetCamPosC, 0x00000000, 0x00000000, 0x0000006E, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x000001F4, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024237C_8DC47C
.word 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, SetCamType, 0x00000000, 0x00000004, 0x00000000, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xFFFFFFF1, 0x00000019, 0x00000043, 0x00000004, SetCamPosA, 0x00000000, 0xFFFFFB48, 0x00000371, 0x00000043, 0x00000004, SetCamPosB, 0x00000000, 0xFFFFFDBD, 0xFFFFFFA7, 0x00000043, 0x00000004, SetCamPosC, 0x00000000, 0x00000000, 0x0000006E, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x000000C8, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242430_8DC530
.word 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, SetCamType, 0x00000000, 0x00000004, 0x00000000, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xFFFFFFF9, 0x00000002, 0x00000043, 0x00000004, SetCamPosA, 0x00000000, 0xFFFFF96F, 0x000001FF, 0x00000043, 0x00000004, SetCamPosB, 0x00000000, 0xFFFFFE52, 0xFFFFFFA4, 0x00000043, 0x00000004, SetCamPosC, 0x00000000, 0x00000000, 0x000000C8, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x000000FA, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802424E4_8DC5E4
.word 0x00000043, 0x00000002, PlaySound, 0x000000A5, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000003, RandInt, 0x0000000A, 0xFE363C80, 0x00000027, 0x00000002, 0xFE363C80, 0x00000005, 0x0000002E, 0x00000002, 0xFE363C80, 0xF24A7AE7, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000014, 0xFE363C80, 0x00000004, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024256C_8DC66C
.word 0x00000043, 0x0000000F, PlayEffect, 0x00000015, 0x00000000, 0xFFFFFEEF, 0x00000159, 0xFFFFFFD4, 0x00000046, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802425C0_8DC6C0
.word 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000004, 0xFFFFFF03, 0x00000008, 0x00000076, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000004, 0xFFFFFF03, 0x00000012, 0x0000008A, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000004, 0xFFFFFF03, 0x00000012, 0x00000062, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000004, 0xFFFFFF03, 0x0000001C, 0x00000076, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802426E0_8DC7E0
.word 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000001, 0xFFFFFEA6, 0x00000093, 0xFFFFFFEB, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242734_8DC834
.word 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000001, 0xFFFFFEB0, 0x00000093, 0xFFFFFFEB, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242788_8DC888
.word 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000001, 0xFFFFFF07, 0x00000093, 0xFFFFFFC0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802427DC_8DC8DC
.word 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000001, 0xFFFFFF11, 0x00000093, 0xFFFFFFC0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242830_8DC930
.word 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000004, 0xFFFFFF62, 0xFFFFFFF6, 0xFFFFFF51, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000004, 0xFFFFFF62, 0x00000000, 0xFFFFFF65, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000004, 0xFFFFFF62, 0x00000000, 0xFFFFFF3D, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000004, 0xFFFFFF62, 0x0000000A, 0xFFFFFF51, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242950_8DCA50
.word 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000004, 0x00000107, 0xFFFFFFF6, 0xFFFFFEF8, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000004, 0x00000107, 0x00000000, 0xFFFFFF0C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000004, 0x00000107, 0x00000000, 0xFFFFFEE4, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000004, 0x00000107, 0x0000000A, 0xFFFFFEF8, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242A70_8DCB70
.word 0x00000043, 0x00000002, PlaySound, 0x000001E1, 0x00000044, 0x00000001, D_8024256C_8DC66C, 0x00000008, 0x00000001, 0x00000061, 0x00000043, 0x00000002, PlaySound, 0x000001E2, 0x00000044, 0x00000001, D_802425C0_8DC6C0, 0x00000008, 0x00000001, 0x0000005F, 0x00000043, 0x00000002, PlaySound, 0x000000A6, 0x00000044, 0x00000001, D_802426E0_8DC7E0, 0x00000044, 0x00000001, D_80242734_8DC834, 0x00000008, 0x00000001, 0x00000022, 0x00000043, 0x00000002, PlaySound, 0x000000A6, 0x00000044, 0x00000001, D_80242788_8DC888, 0x00000044, 0x00000001, D_802427DC_8DC8DC, 0x00000008, 0x00000001, 0x00000028, 0x00000043, 0x00000002, PlaySound, 0x000000A7, 0x00000008, 0x00000001, 0x000000A0, 0x00000043, 0x00000002, PlaySound, 0x000001E8, 0x00000008, 0x00000001, 0x00000028, 0x00000043, 0x00000002, PlaySound, 0x000001E2, 0x00000044, 0x00000001, D_80242830_8DC930, 0x00000044, 0x00000001, D_80242950_8DCA50, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242B98_8DCC98
.word 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000008, 0x00000001, 0x00000025, 0x00000043, 0x00000002, SetPlayerAnimation, 0x0008001F, 0x00000008, 0x00000001, 0x0000003C, 0x00000043, 0x00000002, SetPlayerAnimation, 0x0001002B, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000002, SetPlayerJumpscale, 0xF24A81B4, 0x00000043, 0x00000005, PlayerJump1, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000000A, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010005, 0x00000043, 0x00000002, SetPlayerSpeed, 0xF24A9280, 0x00000043, 0x00000003, SetNpcSpeed, 0xFFFFFFFC, 0xF24A9280, 0x00000056, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFC, 0xFFFFFDC3, 0x000000A2, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000004, PlayerMoveTo, 0xFFFFFDDD, 0x00000093, 0x00000000, 0x00000043, 0x00000003, InterpPlayerYaw, 0x0000005A, 0x00000000, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010002, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000004, SetCamType, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0x00000000, 0xF24A4880, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x0000012C, 0x00000043, 0x00000004, SetCamPosA, 0x00000000, 0xFFFFFE7B, 0xFFFFFFF4, 0x00000043, 0x00000004, SetCamPosB, 0x00000000, 0xFFFFFE2B, 0x0000009C, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFFFFFE7B, 0x00000078, 0xFFFFFFF4, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8A80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0xFFFFFE84, 0x00000000, 0xFFFFFFD6, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000002, 0xF24A7DB4, 0x00000043, 0x00000003, NpcFacePlayer, 0x00000002, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000002, 0x000003E7, 0x00000000, 0x00000043, 0x00000006, NpcJump1, 0x00000002, 0xFFFFFE84, 0x00000078, 0xFFFFFFD6, 0x00000019, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000005, 0xF24A7E80, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, SetPlayerPos, 0xFFFFFE0F, 0x00000000, 0x00000082, 0x00000043, 0x00000003, InterpPlayerYaw, 0x0000010E, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0xFFFFFDEA, 0x00000000, 0x0000007F, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFC, 0x0000005A, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x00630001, 0x00630001, 0x00000000, 0x000B00D8, 0x00000024, 0x00000002, 0xF5DE0180, 0xFFFFFF92, 0x00000043, 0x00000003, EnableModel, 0x00000010, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x00000045, 0x00000002, D_802424E4_8DC5E4, 0xFE363C8A, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7D4D, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000000, 0xFFFFFF9C, 0x00000000, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x0000003C, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x00630001, 0x00630001, 0x00000000, 0x000B00D9, 0x00000005, 0x00000001, 0x00000064, 0x00000043, 0x00000005, GetNpcPos, 0x00000002, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000002, 0xFE363C81, 0x00000001, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0xFFFFFED1, 0x0000011E, 0xFFFFFF88, 0x00000043, 0x00000003, FadeOutMusic, 0x00000000, 0x000003E8, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010023, 0x00000008, 0x00000001, 0x0000001E, 0x00000049, 0x00000001, 0xFE363C8A, 0x00000056, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000064, 0xF24A7C80, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000000F, 0xF24A8A80, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000053, 0xF24A7C80, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000000A, 0xF24A8080, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000000F, 0xF24A7C80, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000000A, 0xF24A8080, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x000000AA, 0xF24A7C80, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000000A, 0xF24A8680, 0x00000008, 0x00000001, 0x00000032, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000014, 0xF24A8A80, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000000A, 0xF24A7C80, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000000A, 0xF24A7B4D, 0x00000043, 0x00000002, PlaySound, 0x000004A5, 0x00000057, 0x00000000, 0x00000044, 0x00000001, 0x80241B54, 0x00000044, 0x00000001, D_80242A70_8DCB70, 0x00000044, 0x00000001, D_80242B98_8DCC98, 0x00000008, 0x00000001, 0x0000017C, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000000, 0xFFFFFF6A, 0x00000000, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x00000014, 0x00000044, 0x00000001, D_80242170_8DC270, 0x00000044, 0x00000001, 0x80241BBC, 0x00000008, 0x00000001, 0x00000096, 0x00000008, 0x00000001, 0x00000032, 0x00000043, 0x00000003, EnableModel, 0x0000000D, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x0000000B, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x00000010, 0x00000000, 0x00000043, 0x00000002, func_802CD3C0, 0x00000001, 0x00000043, 0x00000002, func_802CD3C0, 0x00000000, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000044, 0x00000001, 0x802411C0, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000043, 0x00000003, SetNpcJumpscale, 0xFFFFFFFC, 0xF24A7DB4, 0x00000005, 0x00000001, 0x00000002, 0x00000043, 0x00000005, GetNpcPos, 0xFFFFFFFC, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000006, NpcJump0, 0xFFFFFFFC, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000000A, 0x00000008, 0x00000001, 0x00000003, 0x00000006, 0x00000000, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x00010008, 0x00010001, 0x00000000, 0x000B00DA, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000005, 0x7FFFFE00, 0x00000024, 0x00000002, 0xF5DE0180, 0xFFFFFF93, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000048, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80243460_8DD560
.word 0x00000056, 0x00000000, 0x00000043, 0x00000002, SetPlayerJumpscale, 0xF24A8280, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, PlayerJump1, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000057, 0x00000000, 0x00000043, 0x00000003, SetNpcJumpscale, 0xFFFFFFFC, 0xF24A8280, 0x00000043, 0x00000005, GetNpcPos, 0xFFFFFFFC, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000006, NpcJump1, 0xFFFFFFFC, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80243514_8DD614
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000046, 0x00000001, D_802422C8_8DC3C8, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7BB4, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0xF24A7C80, 0x00000001, 0x00000008, 0x00000001, 0x000000AA, 0x00000043, 0x00000005, SetNpcPos, 0x00000000, 0xFFFFFCC2, 0x00000000, 0xFFFFFFBA, 0x00000043, 0x00000005, SetNpcPos, 0x00000001, 0xFFFFFCE0, 0x00000000, 0xFFFFFFEC, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00620107, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00620007, 0x00000043, 0x00000003, SetNpcSpeed, 0x00000000, 0xF24A8A80, 0x00000043, 0x00000003, SetNpcSpeed, 0x00000001, 0xF24A8A80, 0x00000008, 0x00000001, 0x00000032, 0x00000056, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0x00000000, 0xFFFFFDF7, 0xFFFFFF9C, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0x00000001, 0xFFFFFE08, 0xFFFFFFB6, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00620005, 0x00620003, 0x00000005, 0x000B00C3, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00620105, 0x00620103, 0x00000005, 0x000B00C4, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x00000005, 0x000001C3, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x0000005A, 0x0000001E, 0x0000000A, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x0000000D, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000000B, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0x00000000, 0xFFFFFE9F, 0xFFFFFFA3, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0x00000001, 0xFFFFFE94, 0xFFFFFFB3, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x0000005A, 0x00000000, 0x0000001E, 0x0000000A, 0x00000003, 0x00000001, 0x00000001, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x0000000D, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000000B, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x00000005, 0x000001C4, 0x00000000, 0x00000043, 0x00000006, PlaySoundAt, 0x000020EC, 0x00000000, 0xFFFFFEB6, 0x00000000, 0xFFFFFF7E, 0x00000043, 0x00000006, PlaySoundAt, 0x000020B4, 0x00000000, 0xFFFFFEB6, 0x00000000, 0xFFFFFF7E, 0x00000043, 0x0000000F, PlayEffect, 0x00000014, 0x00000000, 0xFFFFFD2B, 0x00000075, 0xFFFFFF77, 0x00000064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000014, 0x00000000, 0xFFFFFD97, 0x0000006C, 0xFFFFFF77, 0x00000064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000005, 0xF24A7C80, 0x00000043, 0x00000004, SetPlayerPos, 0xFFFFFC68, 0x00000000, 0xFFFFFFDD, 0x00000043, 0x00000002, SetPlayerSpeed, 0xF24A8680, 0x00000043, 0x00000004, PlayerMoveTo, 0xFFFFFDC1, 0xFFFFFFC4, 0x00000000, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, PlayerFaceNpc, 0xFFFFFFFC, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x00010008, 0x00010001, 0x00000000, 0x000B00C5, 0x00000043, 0x00000003, InterpPlayerYaw, 0x0000005A, 0x00000000, 0x00000008, 0x00000001, 0x00000028, 0x00000043, 0x00000006, PlaySoundAt, 0x000020EC, 0x00000000, 0xFFFFFEB6, 0x00000000, 0xFFFFFF7E, 0x00000043, 0x00000006, PlaySoundAt, 0x000020B4, 0x00000000, 0xFFFFFEB6, 0x00000000, 0xFFFFFF7E, 0x00000043, 0x0000000F, PlayEffect, 0x00000014, 0x00000000, 0xFFFFFD2B, 0x00000075, 0xFFFFFF77, 0x00000064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000014, 0x00000000, 0xFFFFFD97, 0x0000006C, 0xFFFFFF77, 0x00000064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000005, 0xF24A7B4D, 0x00000024, 0x00000002, 0xFE363C83, 0x00000002, 0x00000044, 0x00000001, D_80243460_8DD560, 0x00000008, 0x00000001, 0x0000003C, 0x00000043, 0x00000006, PlaySoundAt, 0x000020EC, 0x00000000, 0xFFFFFEB6, 0x00000000, 0xFFFFFF7E, 0x00000043, 0x00000006, PlaySoundAt, 0x000020B4, 0x00000000, 0xFFFFFEB6, 0x00000000, 0xFFFFFF7E, 0x00000043, 0x0000000F, PlayEffect, 0x00000014, 0x00000000, 0xFFFFFD2B, 0x00000075, 0xFFFFFF77, 0x00000064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000014, 0x00000000, 0xFFFFFD97, 0x0000006C, 0xFFFFFF77, 0x00000064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000005, 0xF24A7CE7, 0x00000024, 0x00000002, 0xFE363C83, 0x00000004, 0x00000044, 0x00000001, D_80243460_8DD560, 0x00000008, 0x00000001, 0x0000003C, 0x00000043, 0x00000006, PlaySoundAt, 0x000020EC, 0x00000000, 0xFFFFFEB6, 0x00000000, 0xFFFFFF7E, 0x00000043, 0x00000006, PlaySoundAt, 0x000020B4, 0x00000000, 0xFFFFFEB6, 0x00000000, 0xFFFFFF7E, 0x00000043, 0x0000000F, PlayEffect, 0x00000014, 0x00000000, 0xFFFFFD2B, 0x00000075, 0xFFFFFF77, 0x00000064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000014, 0x00000000, 0xFFFFFD97, 0x0000006C, 0xFFFFFF77, 0x00000064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000005, 0xF24A7E80, 0x00000024, 0x00000002, 0xFE363C83, 0x00000006, 0x00000044, 0x00000001, D_80243460_8DD560, 0x00000008, 0x00000001, 0x0000003C, 0x00000043, 0x00000006, PlaySoundAt, 0x000020EC, 0x00000000, 0xFFFFFEB6, 0x00000000, 0xFFFFFF7E, 0x00000043, 0x00000006, PlaySoundAt, 0x000020B4, 0x00000000, 0xFFFFFEB6, 0x00000000, 0xFFFFFF7E, 0x00000043, 0x0000000F, PlayEffect, 0x00000014, 0x00000000, 0xFFFFFD2B, 0x00000075, 0xFFFFFF77, 0x00000064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000014, 0x00000000, 0xFFFFFD97, 0x0000006C, 0xFFFFFF77, 0x00000064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000005, 0xF24A8080, 0x00000024, 0x00000002, 0xFE363C83, 0x00000008, 0x00000044, 0x00000001, D_80243460_8DD560, 0x00000008, 0x00000001, 0x0000001C, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000050, 0x00000000, 0x00000008, 0x00000008, 0x00000001, 0x00000020, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00620102, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00620002, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000000, 0xF24A7DB4, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000001, 0xF24A7DB4, 0x00000056, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0x00000000, 0xFFFFFE70, 0x00000000, 0xFFFFFF5E, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x0000010F, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0x00000000, 0xFFFFFE50, 0x00000082, 0xFFFFFF6E, 0x0000001E, 0x00000057, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0x00000001, 0xFFFFFE70, 0x00000000, 0xFFFFFFD7, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000001, 0x0000010F, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0x00000001, 0xFFFFFE64, 0x00000082, 0xFFFFFFDD, 0x0000001E, 0x00000008, 0x00000001, 0x0000000A, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000002, 0xF24A7DB4, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0xFFFFFE6B, 0x00000000, 0xFFFFFFA5, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000002, 0x000003E7, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0x00000002, 0xFFFFFE5D, 0x00000077, 0xFFFFFFA5, 0x0000001E, 0x00000043, 0x00000006, PlaySoundAt, 0x000020EC, 0x00000000, 0xFFFFFEB6, 0x00000000, 0xFFFFFF7E, 0x00000043, 0x00000006, PlaySoundAt, 0x000020B4, 0x00000000, 0xFFFFFEB6, 0x00000000, 0xFFFFFF7E, 0x00000043, 0x0000000F, PlayEffect, 0x00000014, 0x00000000, 0xFFFFFD2B, 0x00000075, 0xFFFFFF77, 0x00000064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000F, PlayEffect, 0x00000014, 0x00000000, 0xFFFFFD97, 0x0000006C, 0xFFFFFF77, 0x00000064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000000A, 0xF24A7E80, 0x00000057, 0x00000000, 0x00000046, 0x00000001, D_80242430_8DC530, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x00000037, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x00630001, 0x00630001, 0x00000000, 0x000B00C6, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00620004, 0x00620002, 0x00000000, 0x000B00C7, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00620104, 0x00620102, 0x00000000, 0x000B00C8, 0x00000046, 0x00000001, D_8024237C_8DC47C, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x00010008, 0x00010001, 0x00000000, 0x000B00C9, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000046, 0x00000001, D_80242430_8DC530, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x00630001, 0x00630001, 0x00000000, 0x000B00CA, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000004, SetNpcVar, 0x00000002, 0x00000000, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_80240344_8DA444, 0x00000020, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000044, 0x00000001, D_80243514_8DD614, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000
