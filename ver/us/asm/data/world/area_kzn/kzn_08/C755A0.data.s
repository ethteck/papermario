.include "macro.inc"

.section .data

glabel D_80244120_C755A0
.word 0xC39D8000, 0x00000000, 0x42AA0000, 0x42B40000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80244988_C75E08, D_80244120_C755A0, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0019010A

glabel D_80244170_C755F0
.word 0x00000000

glabel D_80244174_C755F4
.word 0x0000004D, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C85, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C86, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C87, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C88, 0x00000001, 0x00000043, 0x00000001, kzn_08_UnkTexturePanFunc, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, kzn_08_UnkTexturePanFunc2, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80244210_C75690
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0xFE363C80, 0x00000003, 0x00000056, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x00000024, 0x00000002, 0xFE363C81, 0xFFFFFF38, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0x00000258, 0x00000024, 0x00000002, 0xFE363C84, 0xFFFFFE70, 0x00000024, 0x00000002, 0xFE363C85, 0x00000001, 0x00000024, 0x00000002, 0xFE363C86, 0x00000000, 0x00000024, 0x00000002, 0xFE363C87, 0x00000001, 0x00000024, 0x00000002, 0xFE363C88, 0x00000001, 0x00000024, 0x00000002, 0xFE363C89, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000044, 0x00000001, D_80244174_C755F4, 0x00000057, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024432C_C757AC
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0xFE363C80, 0x00000004, 0x00000056, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000004, 0x00000024, 0x00000002, 0xFE363C81, 0x000001F4, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0x00000000, 0x00000024, 0x00000002, 0xFE363C84, 0xFFFFFE70, 0x00000024, 0x00000002, 0xFE363C85, 0x00000001, 0x00000024, 0x00000002, 0xFE363C86, 0x00000000, 0x00000024, 0x00000002, 0xFE363C87, 0x00000000, 0x00000024, 0x00000002, 0xFE363C88, 0x00000001, 0x00000024, 0x00000002, 0xFE363C89, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000044, 0x00000001, D_80244174_C755F4, 0x00000057, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80244448_C758C8
.word 0x00010001

glabel D_8024444C_C758CC
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x802455D8, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802444B8_C75938
.word 0x00000047, 0x00000005, D_8024444C_C758CC, 0x00000080, 0x00000000, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802444E4_C75964
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0x00000003, 0x00000000, 0x00000056, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0xFFFFFCE0, 0x00000024, 0x00000002, 0xFE363C83, 0x00000000, 0x00000024, 0x00000002, 0xFE363C84, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000000, 0x00000024, 0x00000002, 0xFE363C86, 0x00000001, 0x00000024, 0x00000002, 0xFE363C87, 0x00000000, 0x00000024, 0x00000002, 0xFE363C88, 0x00000000, 0x00000024, 0x00000002, 0xFE363C89, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000044, 0x00000001, D_80244174_C755F4, 0x00000057, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80244600_C75A80
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetTexPanner, 0x00000001, 0x00000001, 0x00000043, 0x00000003, SetTexPanner, 0x00000000, 0x00000001, 0x00000056, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0x00000320, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0x00000640, 0x00000024, 0x00000002, 0xFE363C84, 0x00000000, 0x00000024, 0x00000002, 0xFE363C85, 0x00000001, 0x00000024, 0x00000002, 0xFE363C86, 0x00000000, 0x00000024, 0x00000002, 0xFE363C87, 0x00000001, 0x00000024, 0x00000002, 0xFE363C88, 0x00000000, 0x00000024, 0x00000002, 0xFE363C89, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000044, 0x00000001, D_80244174_C755F4, 0x00000057, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80244730_C75BB0
.word 0x00000016, 0xC3660000, 0x00000000, 0x42C80000, 0x00000017, 0xC3660000, 0x00000000, 0x42C80000, 0x0000000E, 0xC1200000, 0x00000000, 0x42C80000, 0x00000019, 0xC1200000, 0x00000000, 0x42C80000, 0x00000014, 0xC2B40000, 0x00000000, 0xC2340000, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000005, MakeLerp, 0x00000001, 0x00000064, 0x000000C8, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x0000002F, 0x00000002, 0xFE363C80, 0xF24AA280, 0x00000043, 0x00000005, ScaleModel, 0x00000003, 0xFE363C80, 0xF24A7E80, 0xF24A7E80, 0x0000002E, 0x00000002, 0xFE363C80, 0xF24A6680, 0x0000002C, 0x00000002, 0xFE363C80, 0xF24C0A80, 0x00000024, 0x00000002, 0xFD050F80, 0xFE363C80, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x00000023, 0x00000064, 0x00000000, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateModel, 0x00000001, 0x00000000, 0xFE363C80, 0x00000000, 0x0000002E, 0x00000002, 0xFE363C80, 0xF24A7580, 0x0000002C, 0x00000002, 0xFE363C80, 0xF24B4280, 0x00000024, 0x00000002, 0xFD050F80, 0xFE363C80, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x0000000B, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x0000000B, 0x00000003, 0x00000056, 0x00000000, 0x00000043, 0x00000002, ResetFromLava, D_80244730_C75BB0, 0x00000057, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000048, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80244988_C75E08
.word 0x00000024, 0x00000002, 0xF5DE0329, 0x00000012, 0x00000043, 0x00000002, SetSpriteShading, 0x000A0007, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, 0x80245588, 0x00000046, 0x00000001, 0x80244D48, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000029, 0x00000000, 0x00000008, 0x00000043, 0x00000002, PlayAmbientSounds, 0x00000004, 0x00000024, 0x00000002, 0xFE363C80, D_802444B8_C75938, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000044, 0x00000001, 0x802455A0, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x0000000B, 0x00000003, 0x00000056, 0x00000000, 0x00000043, 0x00000002, ResetFromLava, D_80244730_C75BB0, 0x00000057, 0x00000000, 0x00000043, 0x00000005, ScaleModel, 0x00000003, 0xF24AA280, 0xF24A7E80, 0xF24A7E80, 0x00000043, 0x00000005, TranslateModel, 0x00000001, 0x00000000, 0x00000028, 0x00000000, 0x00000024, 0x00000002, 0xFD050F80, 0x00000000, 0x00000056, 0x00000000, 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000003, func_80240000_C71480, 0x00000002, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000002, func_80240348_C717C8, D_80244448_C758C8, 0x00000057, 0x00000000, 0x00000044, 0x00000001, D_802444E4_C75964, 0x00000044, 0x00000001, D_80244600_C75A80, 0x00000024, 0x00000002, 0xFE363C80, 0x0000001B, 0x00000044, 0x00000001, D_80244210_C75690, 0x00000024, 0x00000002, 0xFE363C80, 0x0000001C, 0x00000044, 0x00000001, D_8024432C_C757AC, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000
