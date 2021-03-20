.include "macro.inc"

.section .data

glabel D_80241260_B74310
.word 0xC3960000, 0x00000000, 0x42F00000, 0x00000000, 0x437A0000, 0x00000000, 0xC2F00000, 0x43340000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x802413C0, D_80241260_B74310, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, func_80200000, 0x001900FA, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x802433A0, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x802433A8, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x8024131C, 0x00080000, 0x00000000, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x802412C0, 0x00080000, 0x00000004, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000024, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x8024337C, 0x00000046, 0x00000001, 0x80242C80, 0x00000044, 0x00000001, 0x80242098, 0x00000044, 0x00000001, 0x80242BD4, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000001, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000005, 0x7FFFFE00, 0x00000024, 0x00000002, 0xFE363C80, 0x80241378, 0x00000044, 0x00000001, EnterWalk, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000025, 0x00000000, 0x00000008, 0x00000043, 0x00000002, PlayAmbientSounds, 0x00000003, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetModelCenter, 0xFE363C8E, 0x00000024, 0x00000002, 0xFE363C86, 0xFE363C80, 0x00000024, 0x00000002, 0xFE363C87, 0xFE363C81, 0x00000024, 0x00000002, 0xFE363C88, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C87, 0xFFFFFFEC, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, func_80240000_B730B0, 0xFE363C86, 0xFE363C87, 0xFE363C88, 0x00000014, 0x00000043, 0x00000002, GetPlayerActionState, 0xFE363C81, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000003, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000002, GetModelCenter, 0xFE363C8D, 0x00000043, 0x00000006, PlaySoundAt, 0x00002089, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000026, 0x00000002, 0xFE363C80, 0xF24A7A80, 0x00000026, 0x00000002, 0xFE363C81, 0xF24A7A80, 0x00000056, 0x00000000, 0x00000005, 0x00000001, 0x00000003, 0x0000000B, 0x00000002, 0xFE363C89, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C89, 0xFFFFFFFE, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8B, 0x00000002, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000B, 0x00000002, 0xFE363C89, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C89, 0x00000002, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8A, 0x00000001, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8B, 0xFFFFFFFE, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C89, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C89, 0x00000000, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8A, 0x00000000, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8B, 0x00000000, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x00000057, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C85, 0x00000000, 0x00000044, 0x00000001, 0xFD050F8A, 0x00000012, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0xFE363C85, 0x00000044, 0x00000001, 0xFD050F8A, 0x00000057, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, SetPlayerActionState, 0x0000000A, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, SetPlayerAnimation, 0x0008000D, 0x00000005, 0x00000001, 0x00000032, 0x00000043, 0x00000004, func_802400F8_B731A8, 0xFE363C80, 0xF24A3E80, 0xFE363C82, 0x0000002C, 0x00000002, 0xFE363C81, 0xFE363C82, 0x0000002E, 0x00000002, 0xFE363C81, 0xF24A7E39, 0x0000002C, 0x00000002, 0xFE363C80, 0xFE363C81, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8D, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8E, 0x00000000, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0xFE363C87, 0x00000027, 0x00000002, 0xFE363C83, 0xFE363C80, 0x00000024, 0x00000002, 0xFE363C84, 0xFE363C88, 0x00000027, 0x00000002, 0xFE363C84, 0x00000002, 0x00000027, 0x00000002, 0xFE363C83, 0x00000005, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C86, 0xFE363C83, 0xFE363C84, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000002, GetModelCenter, 0xFE363C8F, 0x00000043, 0x00000002, SetPlayerJumpscale, 0x00000001, 0x00000043, 0x00000005, PlayerJump, 0xFE363C86, 0xFE363C81, 0xFE363C84, 0x0000000A, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000000, 0x00000043, 0x00000002, GetModelCenter, 0xFE363C8D, 0x00000043, 0x00000006, PlaySoundAt, 0x00002089, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000005, 0x00000001, 0x00000005, 0x0000000B, 0x00000002, 0xFE363C89, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C89, 0xFFFFFFFE, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8A, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8B, 0x00000002, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000B, 0x00000002, 0xFE363C89, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C89, 0x00000002, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8A, 0x00000001, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8B, 0xFFFFFFFE, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C89, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C89, 0x00000000, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8A, 0x00000000, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8B, 0x00000000, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000026, 0x00000002, 0xFE363C80, 0xF24A3E80, 0x00000026, 0x00000002, 0xFE363C81, 0xF24A7A80, 0x00000005, 0x00000001, 0x00000064, 0x00000043, 0x00000004, func_802400F8_B731A8, 0xFE363C80, 0xF24ACA80, 0xFE363C82, 0x0000002C, 0x00000002, 0xFE363C81, 0xFE363C82, 0x0000002E, 0x00000002, 0xFE363C81, 0xF24A7E39, 0x0000002C, 0x00000002, 0xFE363C80, 0xFE363C81, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8D, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C8E, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x00000011, 0x0000209F, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0xFD050F80, 0x00000024, 0x00000002, 0xFE363C81, 0xFD050F81, 0x00000024, 0x00000002, 0xFE363C86, 0x00000000, 0x00000024, 0x00000002, 0xFE363C87, 0x00000000, 0x00000005, 0x00000001, 0x0000003C, 0x00000026, 0x00000002, 0xFE363C82, 0xFD050F80, 0x00000026, 0x00000002, 0xFE363C83, 0xFD050F81, 0x0000002D, 0x00000002, 0xFE363C82, 0xFE363C80, 0x0000002D, 0x00000002, 0xFE363C83, 0xFE363C81, 0x00000026, 0x00000002, 0xFE363C84, 0xFE363C82, 0x00000026, 0x00000002, 0xFE363C85, 0xFE363C83, 0x0000002E, 0x00000002, 0xFE363C84, 0xF24A7AE0, 0x0000002E, 0x00000002, 0xFE363C85, 0xF24A7AE0, 0x0000002E, 0x00000002, 0xFE363C86, 0xF24A7DB4, 0x0000002E, 0x00000002, 0xFE363C87, 0xF24A7DB4, 0x0000002C, 0x00000002, 0xFE363C86, 0xFE363C84, 0x0000002C, 0x00000002, 0xFE363C87, 0xFE363C85, 0x0000002C, 0x00000002, 0xFE363C80, 0xFE363C86, 0x0000002C, 0x00000002, 0xFE363C81, 0xFE363C87, 0x00000043, 0x00000005, TranslateModel, 0x0000001C, 0xFD050F80, 0x00000000, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000001E, 0xFD050F81, 0x00000000, 0x00000000, 0x00000043, 0x00000003, func_802401CC_B7327C, 0x0000001C, 0xFE363C86, 0x00000043, 0x00000003, func_802401CC_B7327C, 0x0000001E, 0xFE363C87, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000011, 0x7FFFFE00, 0x00000044, 0x00000001, 0x80241D90, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x0000002D, 0x0000001E, 0x00000005, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000026, 0x00000002, 0xFD050F81, 0xFE363C80, 0x00000026, 0x00000002, 0xFD050F80, 0xFD050F81, 0x0000002E, 0x00000002, 0xFD050F80, 0xFFFFFFFF, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetModelCenter, 0xFE363C89, 0x00000027, 0x00000002, 0xFE363C82, 0x0000000A, 0x00000043, 0x00000007, MakeItemEntity, 0x000000AB, 0xFE363C80, 0x00000064, 0xFE363C82, 0x0000000E, 0xF840605A, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x80241F58, 0x00000100, 0x00000011, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000044, 0x00000001, 0x80241F58, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFD050F8A, 0x80242044, 0x00000024, 0x00000002, 0xFE363C8F, 0x0000000A, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8D, 0x00000017, 0x00000024, 0x00000002, 0xFE363C8E, 0x00000018, 0x00000024, 0x00000002, 0xFE363C89, 0x0000000D, 0x00000024, 0x00000002, 0xFE363C8A, 0x0000000E, 0x00000024, 0x00000002, 0xFE363C8B, 0x0000000F, 0x00000024, 0x00000002, 0xFE363C85, 0x0000000F, 0x00000044, 0x00000001, 0x802414F0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000
