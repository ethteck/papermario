.include "macro.inc"

.section .data

glabel D_80241B20_9A2B00
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000002, 0x00000024, 0x00000002, 0xFE363C82, 0x00000019, 0x00000024, 0x00000002, 0xFE363C83, 0x0000001B, 0x00000044, 0x00000001, ExitDoubleDoor, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x802432D0, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241BC4_9A2BA4
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0x00000007, 0x00000024, 0x00000002, 0xFE363C82, 0x0000001F, 0x00000024, 0x00000002, 0xFE363C83, 0x0000001D, 0x00000044, 0x00000001, ExitDoubleDoor, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x802432D8, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241C68_9A2C48
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000024, 0x00000002, 0xFE363C81, 0x00000011, 0x00000024, 0x00000002, 0xFE363C82, 0x00000025, 0x00000024, 0x00000002, 0xFE363C83, 0x00000027, 0x00000044, 0x00000001, ExitDoubleDoor, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x802432D0, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241D0C_9A2CEC
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x00000024, 0x00000002, 0xFE363C81, 0x0000000C, 0x00000024, 0x00000002, 0xFE363C82, 0x00000021, 0x00000024, 0x00000002, 0xFE363C83, 0x00000023, 0x00000044, 0x00000001, ExitDoubleDoor, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x802432D8, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241DB0_9A2D90
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x00000028, 0x00000004, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x802432D8, 0x00000004, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241E0C_9A2DEC
.word 0x00000047, 0x00000005, D_80241DB0_9A2D90, 0x00080000, 0x00000015, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241E38_9A2E18
.word 0x0000004D, 0x00000001, 0x00000000, 0x0000004F, 0x00000001, 0x00000001, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000019, 0x00000024, 0x00000002, 0xFE363C83, 0x0000001B, 0x00000046, 0x00000001, EnterDoubleDoor, 0x00000044, 0x00000001, D_80241E0C_9A2DEC, 0x00000016, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C82, 0x0000001F, 0x00000024, 0x00000002, 0xFE363C83, 0x0000001D, 0x00000046, 0x00000001, EnterDoubleDoor, 0x00000044, 0x00000001, D_80241E0C_9A2DEC, 0x00000016, 0x00000001, 0x00000002, 0x00000024, 0x00000002, 0xFE363C82, 0x00000025, 0x00000024, 0x00000002, 0xFE363C83, 0x00000027, 0x00000046, 0x00000001, EnterDoubleDoor, 0x00000044, 0x00000001, D_80241E0C_9A2DEC, 0x00000016, 0x00000001, 0x00000003, 0x00000024, 0x00000002, 0xFE363C82, 0x00000021, 0x00000024, 0x00000002, 0xFE363C83, 0x00000023, 0x00000046, 0x00000001, EnterDoubleDoor, 0x00000044, 0x00000001, D_80241E0C_9A2DEC, 0x00000016, 0x00000001, 0x00000004, 0x00000024, 0x00000002, 0xFE363C80, D_80241E0C_9A2DEC, 0x00000044, 0x00000001, EnterWalk, 0x00000023, 0x00000000, 0x00000050, 0x00000001, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241FC8_9A2FA8
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_802D5830, 0x00000000, 0x0000004F, 0x00000001, 0x00000001, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000003, SetGroupEnabled, 0x0000000A, 0x00000000, 0x00000043, 0x00000002, PlaySound, 0x80000004, 0x00000056, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000000A, 0xF24A7D4D, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000140, 0xF24A7E80, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000000A, 0xF24A7D4D, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000000A, 0xF24A7C1A, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000056, 0x00000000, 0x00000005, 0x00000001, 0x00000005, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C81, 0x00000096, 0x00000043, 0x0000000F, PlayEffect, 0x00000015, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, RandInt, 0x00000014, 0xFE363C80, 0x00000027, 0x00000002, 0xFE363C80, 0x00000014, 0x00000008, 0x00000001, 0xFE363C80, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000005, 0x00000001, 0x00000007, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000043, 0x00000003, RandInt, 0x000000C8, 0xFE363C84, 0x00000028, 0x00000002, 0xFE363C84, 0x00000064, 0x00000043, 0x00000003, RandInt, 0x000000C8, 0xFE363C85, 0x00000028, 0x00000002, 0xFE363C85, 0x00000064, 0x00000027, 0x00000002, 0xFE363C81, 0xFE363C84, 0x00000027, 0x00000002, 0xFE363C82, 0x000000C8, 0x00000027, 0x00000002, 0xFE363C83, 0xFE363C85, 0x00000043, 0x0000000F, PlayEffect, 0x00000016, 0x00000000, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x000000BB, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, RandInt, 0x0000001E, 0xFE363C80, 0x00000027, 0x00000002, 0xFE363C80, 0x0000001E, 0x00000008, 0x00000001, 0xFE363C80, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000005, MakeLerp, 0x000000BB, 0x00000000, 0x0000012C, 0x0000000A, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateModel, 0x00000016, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000015, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000017, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0x0000001E, 0x00000043, 0x00000002, UpdateColliderTransform, 0x0000001F, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000020, 0x00000043, 0x00000002, StopSound, 0x80000004, 0x00000043, 0x00000002, PlaySound, 0x00000025, 0x00000024, 0x00000002, 0xF5DE0180, 0xFFFFFFAF, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000002, func_802D5830, 0x00000000, 0x00000050, 0x00000001, 0x00000001, 0x00000048, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024240C_9A33EC
.word 0x437F0000, 0x42480000, 0xC2A00000, 0x00000000

glabel D_8024241C_9A33FC
.word 0x0000004D, 0x00000001, 0x00000000, 0x0000004F, 0x00000001, 0x00000001, 0x00000043, 0x0000000F, PlayEffect, 0x00000042, 0x00000000, 0x00000011, 0x0000000B, 0x00000001, 0x0000000A, 0x0000001E, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x0000000F, 0x00000001, 0x00000005, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, SetGroupEnabled, 0x00000013, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000003, SetGroupEnabled, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000016, 0x7FFFFE00, 0x00000024, 0x00000002, 0xF8405E0F, 0x00000001, 0x00000050, 0x00000001, 0x00000001, 0x00000048, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024252C_9A350C
.word 0x00000010, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000007, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, 0x802432A0, 0x00000046, 0x00000001, 0x80242A10, 0x00000047, 0x00000005, D_80241B20_9A2B00, 0x00000100, 0x00000002, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80241BC4_9A2BA4, 0x00000100, 0x00000007, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xF8405E0B, 0x00000000, 0x0000004E, 0x00000006, 0x80242890, 0x00000100, 0x00004000, D_8024252C_9A350C, 0x00000000, 0x00000001, 0x00000012, 0x00000000, 0x00000047, 0x00000005, D_80241C68_9A2C48, 0x00000100, 0x00000011, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000047, 0x00000005, D_80241D0C_9A2CEC, 0x00000100, 0x0000000C, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xF8405E0F, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x0000000F, 0x00000000, 0x00000047, 0x00000005, D_8024241C_9A33FC, 0x00100000, D_8024240C_9A33EC, 0x00000001, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000003, SetGroupEnabled, 0x00000013, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000016, 0x7FFFFE00, 0x00000013, 0x00000000, 0x00000044, 0x00000001, 0x80241AE0, 0x00000024, 0x00000002, 0xF9718882, 0x00000000, 0x00000043, 0x00000003, ParentColliderToModel, 0x0000001F, 0x00000016, 0x00000043, 0x00000003, ParentColliderToModel, 0x0000001E, 0x00000015, 0x00000043, 0x00000003, ParentColliderToModel, 0x00000020, 0x00000017, 0x0000000C, 0x00000002, 0xF5DE0180, 0xFFFFFFAF, 0x00000043, 0x00000005, TranslateModel, 0x00000016, 0x00000000, 0x000000BB, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000015, 0x00000000, 0x000000BB, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000017, 0x00000000, 0x000000BB, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0x0000001F, 0x00000043, 0x00000002, UpdateColliderTransform, 0x0000001E, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000020, 0x00000047, 0x00000005, D_80241FC8_9A2FA8, 0x00020000, 0xF9718882, 0x00000001, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000002, UpdateColliderTransform, 0x0000001F, 0x00000043, 0x00000002, UpdateColliderTransform, 0x0000001E, 0x00000043, 0x00000002, UpdateColliderTransform, 0x00000020, 0x00000043, 0x00000003, SetGroupEnabled, 0x0000000A, 0x00000000, 0x00000013, 0x00000000, 0x00000044, 0x00000001, D_80241E38_9A2E18, 0x00000008, 0x00000001, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000
