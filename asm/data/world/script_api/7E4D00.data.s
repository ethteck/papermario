.include "macro.inc"

.section .data

glabel D_80283E80
.word 0x00000043, 0x00000006, SpeakToPlayer, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000000, 0xFE363C80, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80283EB0
.word 0x00000043, 0x00000006, ContinueSpeech, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000000, 0xFE363C80, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80283EE0
.word 0x00000043, 0x00000005, EndSpeech, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000000, 0xFE363C80, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80283F2C
.word 0x00000043, 0x00000005, EndSpeech, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80283F58
.word 0x00000043, 0x00000002, GetCurrentPartner, 0xFE363C81, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000002, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000003, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000001, func_802803C8, 0x0000000A, 0x00000002, 0xFE363C82, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, func_80280410, 0xFE363C80, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80284034
.word 0x00000043, 0x00000002, func_8028051C, 0xFE363C80, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80280BD0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80282414, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C8B, 0xFE363C8C, 0xFE363C8D, 0x00000024, 0x00000002, 0xFE363C8B, 0xFE363C83, 0x00000024, 0x00000002, 0xFE363C8D, 0xFE363C84, 0x00000043, 0x00000004, PlayerMoveTo, 0xFE363C83, 0xFE363C84, 0xFE363C8E, 0x00000043, 0x00000004, func_802D2884, 0xFE363C85, 0xFE363C86, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80282314, 0x00000043, 0x00000001, func_802827CC, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C8B, 0xFE363C8C, 0xFE363C8D, 0x00000024, 0x00000002, 0xFE363C8B, 0xFE363C85, 0x00000024, 0x00000002, 0xFE363C8D, 0xFE363C86, 0x00000024, 0x00000002, 0xFE363C8E, 0x00000014, 0x00000043, 0x00000004, PlayerMoveTo, 0xFE363C85, 0xFE363C86, 0xFE363C8E, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_80282594, 0xF24A81B0, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C8B, 0xFE363C8C, 0xFE363C8D, 0x00000024, 0x00000002, 0xFE363C8B, 0xFE363C85, 0x00000024, 0x00000002, 0xFE363C8D, 0xFE363C86, 0x00000024, 0x00000002, 0xFE363C8E, 0x0000000A, 0x00000043, 0x00000007, func_802CB008, 0x00000000, 0x00000001, 0xFE363C8B, 0xFE363C8C, 0xFE363C8D, 0xFE363C8E, 0x00000043, 0x00000002, func_80282594, 0xFFFFFFFF, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C8B, 0xFE363C8C, 0xFE363C8D, 0x00000024, 0x00000002, 0xFE363C8B, 0xFE363C87, 0x00000024, 0x00000002, 0xFE363C8D, 0xFE363C88, 0x00000024, 0x00000002, 0xFE363C8E, 0x0000000A, 0x00000043, 0x00000004, PlayerMoveTo, 0xFE363C87, 0xFE363C88, 0xFE363C8E, 0x00000043, 0x00000004, func_802D2884, 0xFE363C89, 0xFE363C8A, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80282314, 0x00000043, 0x00000001, func_802827CC, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C8B, 0xFE363C8C, 0xFE363C8D, 0x00000024, 0x00000002, 0xFE363C8B, 0xFE363C89, 0x00000024, 0x00000002, 0xFE363C8D, 0xFE363C8A, 0x00000024, 0x00000002, 0xFE363C8E, 0x00000014, 0x00000043, 0x00000004, PlayerMoveTo, 0xFE363C89, 0xFE363C8A, 0xFE363C8E, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_80282594, 0xF24A81B0, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C8B, 0xFE363C8C, 0xFE363C8D, 0x00000024, 0x00000002, 0xFE363C8B, 0xFE363C89, 0x00000024, 0x00000002, 0xFE363C8D, 0xFE363C8A, 0x00000024, 0x00000002, 0xFE363C8E, 0x0000000A, 0x00000043, 0x00000007, func_802CB008, 0x00000000, 0x00000001, 0xFE363C8B, 0xFE363C8C, 0xFE363C8D, 0xFE363C8E, 0x00000043, 0x00000002, func_80282594, 0xFFFFFFFF, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80282314, 0x00000024, 0x00000002, 0xFE363C82, 0xFE363C8B, 0x00000024, 0x00000002, 0xFE363C83, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x0000005A, 0x0000000A, 0x00000005, 0x00000043, 0x00000002, func_802822A8, D_A0000000, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000005, MakeLerp, 0x0000005A, 0x00000000, 0x0000000A, 0x00000002, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x0000005A, 0x0000000A, 0x00000005, 0x00000043, 0x00000002, func_802822A8, D_A0000000, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000005, MakeLerp, 0x0000005A, 0x00000000, 0x0000000A, 0x00000002, 0x00000023, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000044, 0x00000001, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000014, 0x00000001, 0xFE363C83, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000002, func_802822A8, 0xA0000001, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000002, func_802822A8, 0xA0000001, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0xFE363C8C, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x0000005A, 0x00000014, 0x00000005, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000005, MakeLerp, 0x0000005A, 0x00000000, 0x00000014, 0x00000002, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x0000005A, 0x00000014, 0x00000005, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000005, MakeLerp, 0x0000005A, 0x00000000, 0x00000014, 0x00000002, 0x00000023, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000044, 0x00000001, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0xFE363C8D, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x0000005A, 0x00000014, 0x00000002, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000005, MakeLerp, 0x0000005A, 0x00000000, 0x0000000A, 0x00000005, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x0000005A, 0x00000014, 0x00000002, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000005, MakeLerp, 0x0000005A, 0x00000000, 0x0000000A, 0x00000005, 0x00000023, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000044, 0x00000001, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802847D4
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetPlayerActionState, 0xFE363C83, 0x00000024, 0x00000002, 0xFE363C84, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C83, 0x00000000, 0x00000027, 0x00000002, 0xFE363C84, 0x00000001, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C83, 0x00000001, 0x00000027, 0x00000002, 0xFE363C84, 0x00000001, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C83, 0x00000002, 0x00000027, 0x00000002, 0xFE363C84, 0x00000001, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C84, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, func_80282314, 0x00000043, 0x00000001, func_80282324, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, func_80282338, 0x00000001, 0x00000043, 0x00000001, func_80282634, 0x00000043, 0x00000001, func_80282774, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000001, func_802827CC, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8E, 0x00000000, 0x00000046, 0x00000001, 0xFE363C8E, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C80, 0xFFFFFFFF, 0x00000004, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000043, 0x00000001, func_802827CC, 0x00000044, 0x00000001, 0x8028418C, 0x00000043, 0x00000001, func_802827CC, 0x00000040, 0x00000002, 0xFE363C82, 0x000000FF, 0x00000024, 0x00000002, 0xFE363C8E, 0x0000000A, 0x00000014, 0x00000001, 0xFE363C82, 0x00000016, 0x00000001, 0x00000000, 0x00000046, 0x00000001, 0x8028408C, 0x00000016, 0x00000001, 0x00000002, 0x00000046, 0x00000001, 0x8028408C, 0x00000016, 0x00000001, 0x00000004, 0x00000046, 0x00000001, 0x8028408C, 0x00000016, 0x00000001, 0x00000005, 0x00000024, 0x00000002, 0xFE363C8E, 0x00000014, 0x00000046, 0x00000001, 0x8028408C, 0x00000016, 0x00000001, 0x00000007, 0x00000024, 0x00000002, 0xFE363C8E, 0x00000014, 0x00000046, 0x00000001, 0x8028408C, 0x00000023, 0x00000000, 0x00000043, 0x00000001, func_802827CC, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000001, func_80282868, 0x0000000B, 0x00000002, 0xFE363C8F, 0x00000000, 0x00000045, 0x00000002, 0x80284070, 0xFE363C85, 0x00000043, 0x00000003, func_802823B0, 0x00000000, 0xFE363C85, 0x00000013, 0x00000000, 0x00000043, 0x00000001, func_802825FC, 0x0000000B, 0x00000002, 0xFE363C8F, 0x00000000, 0x00000043, 0x00000002, func_8028236C, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, func_802827CC, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000040, 0x00000002, 0xFE363C82, 0x00000200, 0x0000000B, 0x00000002, 0xFE363C8C, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C82, 0x00000000, 0x00000045, 0x00000002, 0xFE363C8C, 0xFE363C85, 0x00000012, 0x00000000, 0x00000045, 0x00000002, 0x80284584, 0xFE363C85, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000043, 0x00000003, func_802823B0, 0x00000000, 0xFE363C85, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000040, 0x00000002, 0xFE363C82, 0x00000100, 0x0000000B, 0x00000002, 0xFE363C82, 0x00000000, 0x00000045, 0x00000002, 0xFE363C8B, 0xFE363C85, 0x00000012, 0x00000000, 0x00000045, 0x00000002, 0x802843D4, 0xFE363C85, 0x00000013, 0x00000000, 0x00000043, 0x00000003, func_802823B0, 0x00000003, 0xFE363C85, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFC, 0x00000040, 0x00000001, 0x00000043, 0x00000002, func_8028236C, 0x00000003, 0x00000043, 0x00000001, func_80282610, 0x00000045, 0x00000002, 0x80284104, 0xFE363C87, 0x00000043, 0x00000003, func_802823B0, 0x00000003, 0xFE363C87, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000001, func_80282314, 0x00000043, 0x00000001, func_802827CC, 0x00000043, 0x00000003, func_80281C20, 0xFE363C85, 0xFE363C86, 0x00000043, 0x00000002, func_8028236C, 0x00000003, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFC, 0x00000040, 0x00000000, 0x00000043, 0x00000001, func_80281C84, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000040, 0x00000002, 0xFE363C82, 0x00000100, 0x0000000B, 0x00000002, 0xFE363C82, 0x00000000, 0x00000045, 0x00000002, 0xFE363C8B, 0xFE363C85, 0x00000012, 0x00000000, 0x00000045, 0x00000002, 0x802843D4, 0xFE363C85, 0x00000013, 0x00000000, 0x00000043, 0x00000003, func_802823B0, 0x00000003, 0xFE363C85, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000040, 0x00000002, 0xFE363C82, 0x00000400, 0x0000000B, 0x00000002, 0xFE363C8D, 0x00000000, 0x00000043, 0x00000002, func_8028236C, 0x00000003, 0x0000000B, 0x00000002, 0xFE363C82, 0x00000000, 0x00000045, 0x00000002, 0xFE363C8D, 0xFE363C85, 0x00000012, 0x00000000, 0x00000045, 0x00000002, 0x802846AC, 0xFE363C85, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8D, 0x00000000, 0x00000043, 0x00000003, func_802823B0, 0x00000001, 0xFE363C85, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x0000000B, 0x00000002, 0xFE363C8E, 0x00000000, 0x00000045, 0x00000002, 0xFE363C8E, 0xFE363C85, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8E, 0x00000000, 0x00000043, 0x00000003, func_802823B0, 0x00000002, 0xFE363C85, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8E, 0x00000000, 0x00000043, 0x00000002, func_8028236C, 0x00000002, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000043, 0x00000002, func_8028236C, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8D, 0x00000000, 0x00000043, 0x00000002, func_8028236C, 0x00000001, 0x00000013, 0x00000000, 0x00000043, 0x00000002, func_80282338, 0x00000000, 0x00000002, 0x00000000, 0x00000003, 0x00000001, 0x00000001, 0x00000043, 0x00000002, func_80282338, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80284F80
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetPlayerActionState, 0xFE363C83, 0x00000024, 0x00000002, 0xFE363C84, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C83, 0x00000000, 0x00000027, 0x00000002, 0xFE363C84, 0x00000001, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C83, 0x00000001, 0x00000027, 0x00000002, 0xFE363C84, 0x00000001, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C83, 0x00000002, 0x00000027, 0x00000002, 0xFE363C84, 0x00000001, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C84, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, func_80282314, 0x00000043, 0x00000001, func_80282324, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, func_80282338, 0x00000002, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000001, func_802827CC, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x0000000B, 0x00000002, 0xFE363C8E, 0x00000000, 0x00000046, 0x00000001, 0xFE363C8E, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C80, 0xFFFFFFFF, 0x00000004, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000043, 0x00000001, func_802827CC, 0x00000044, 0x00000001, 0x80284338, 0x00000043, 0x00000001, func_802827CC, 0x00000040, 0x00000002, 0xFE363C82, 0x000000FF, 0x00000014, 0x00000001, 0xFE363C82, 0x00000016, 0x00000001, 0x00000001, 0x00000046, 0x00000001, 0x80284228, 0x00000016, 0x00000001, 0x00000006, 0x00000046, 0x00000001, 0x80284228, 0x00000016, 0x00000001, 0x00000003, 0x00000046, 0x00000001, 0x80284228, 0x00000023, 0x00000000, 0x00000043, 0x00000001, func_802827CC, 0x00000043, 0x00000001, func_80282868, 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x00000040, 0x00000002, 0xFE363C82, 0x00000200, 0x0000000B, 0x00000002, 0xFE363C8C, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C82, 0x00000000, 0x00000045, 0x00000002, 0xFE363C8C, 0xFE363C85, 0x00000012, 0x00000000, 0x00000045, 0x00000002, 0x80284584, 0xFE363C85, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000043, 0x00000003, func_802823B0, 0x00000000, 0xFE363C85, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x00000040, 0x00000002, 0xFE363C82, 0x00000400, 0x0000000B, 0x00000002, 0xFE363C8D, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C82, 0x00000000, 0x00000045, 0x00000002, 0xFE363C8D, 0xFE363C85, 0x00000012, 0x00000000, 0x00000045, 0x00000002, 0x802846AC, 0xFE363C85, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8D, 0x00000000, 0x00000043, 0x00000003, func_802823B0, 0x00000001, 0xFE363C85, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8D, 0x00000000, 0x00000043, 0x00000002, func_8028236C, 0x00000001, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000040, 0x00000002, 0xFE363C82, 0x00000100, 0x0000000B, 0x00000002, 0xFE363C82, 0x00000000, 0x00000045, 0x00000002, 0xFE363C8B, 0xFE363C85, 0x00000012, 0x00000000, 0x00000045, 0x00000002, 0x802843D4, 0xFE363C85, 0x00000013, 0x00000000, 0x00000043, 0x00000003, func_802823B0, 0x00000001, 0xFE363C85, 0x00000043, 0x00000002, func_8028236C, 0x00000001, 0x00000043, 0x00000001, func_80282868, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFC, 0x00000040, 0x00000001, 0x00000043, 0x00000001, func_80282314, 0x00000043, 0x00000001, func_802827CC, 0x00000043, 0x00000003, func_80281C20, 0xFE363C89, 0xFE363C8A, 0x00000045, 0x00000002, 0x802842B0, 0xFE363C85, 0x00000043, 0x00000003, func_802823B0, 0x00000001, 0xFE363C85, 0x00000043, 0x00000001, func_80282624, 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x0000000B, 0x00000002, 0xFE363C8F, 0x00000000, 0x00000045, 0x00000002, 0x80284070, 0xFE363C85, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8F, 0x00000000, 0x00000043, 0x00000003, func_802823B0, 0x00000002, 0xFE363C85, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C8F, 0x00000000, 0x00000043, 0x00000002, func_8028236C, 0x00000002, 0x00000013, 0x00000000, 0x00000043, 0x00000002, func_8028236C, 0x00000001, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFC, 0x00000040, 0x00000000, 0x00000043, 0x00000001, func_80281C84, 0x00000043, 0x00000001, func_802827CC, 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x00000040, 0x00000002, 0xFE363C82, 0x00000100, 0x0000000B, 0x00000002, 0xFE363C82, 0x00000000, 0x00000046, 0x00000001, 0xFE363C8B, 0x00000012, 0x00000000, 0x00000046, 0x00000001, 0x802843D4, 0x00000013, 0x00000000, 0x00000043, 0x00000001, func_802827CC, 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x0000000B, 0x00000002, 0xFE363C8E, 0x00000000, 0x00000046, 0x00000001, 0xFE363C8E, 0x00000013, 0x00000000, 0x00000043, 0x00000001, func_80282700, 0x00000043, 0x00000001, func_802827A8, 0x00000043, 0x00000002, func_80282338, 0x00000000, 0x00000002, 0x00000000, 0x00000003, 0x00000001, 0x00000001, 0x00000043, 0x00000002, func_80282338, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000

glabel D_80285640
.float 0.04, 0.04, 0.08, 0.16, 0.21, 0.4, 0.6, 0.72, 0.84, 0.92, 0.96, 0.96, 1.0

glabel D_80285674
.word 0x00000024, 0x00000002, 0xFE363C8A, 0xFE363C80, 0x00000024, 0x00000002, 0xFE363C8B, 0xFE363C81, 0x00000043, 0x00000001, func_80282E30, 0x00000043, 0x00000004, func_802D2884, 0xFE363C83, 0xFE363C85, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C89, 0x00000002, 0x00000043, 0x00000001, func_80282880, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000043, 0x00000003, CheckActionState, 0xFE363C8D, 0x00000002, 0x0000000A, 0x00000002, 0xFE363C8D, 0x00000000, 0x00000043, 0x00000003, CheckActionState, 0xFE363C8D, 0x00000014, 0x0000000A, 0x00000002, 0xFE363C8D, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C89, 0x00000000, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000027, 0x00000002, 0xFE363C8C, 0x00000001, 0x00000043, 0x00000001, func_80283174, 0x0000000A, 0x00000002, 0xFE363C8D, 0x00000001, 0x00000004, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000043, 0x00000002, GetPlayerActionState, 0xFE363C8D, 0x0000000A, 0x00000002, 0xFE363C8D, 0x00000003, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000000, 0x00000002, 0x00000000, 0x00000003, 0x00000001, 0x00000001, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000014, 0x00000043, 0x00000001, func_80282880, 0x0000000C, 0x00000002, 0xFE363C8C, 0x00000008, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, func_80283080, 0x00000043, 0x00000002, PlaySound, 0x00002088, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000001, func_802828DC, 0x00000043, 0x00000001, func_80282C40, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x00000003, CheckActionState, 0xFE363C8D, 0x00000014, 0x0000000B, 0x00000002, 0xFE363C8D, 0x00000000, 0x00000043, 0x00000003, func_80283240, 0xFE363C8D, D_80285674, 0x0000000A, 0x00000002, 0xFE363C8D, 0x00000000, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80283B88, 0x00000043, 0x00000001, func_80283810, 0x00000043, 0x00000003, UseEntryHeading, 0x0000003C, 0x0000000F, 0x0000000A, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000043, 0x00000001, TeleportPartnerToPlayer, 0x00000043, 0x00000004, PlayerMoveTo, 0xFE363C81, 0xFE363C83, 0x0000000F, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8F, 0xFE363C80, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000001, 0x00000024, 0x00000002, 0xFE363C84, 0x0000000F, 0x00000046, 0x00000001, 0xFE363C8B, 0x00000024, 0x00000002, 0xFE363C80, 0xFE363C8F, 0x00000013, 0x00000000, 0x00000044, 0x00000001, 0xFE363C80, 0x00000043, 0x00000001, func_802D2148, 0x00000043, 0x00000001, func_80283BB0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80283B88, 0x00000043, 0x00000001, func_80283810, 0x00000043, 0x00000003, UseEntryHeading, 0x00000028, 0x0000000F, 0x0000000A, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000043, 0x00000001, TeleportPartnerToPlayer, 0x00000043, 0x00000004, PlayerMoveTo, 0xFE363C81, 0xFE363C83, 0x0000000F, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8F, 0xFE363C80, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000001, 0x00000024, 0x00000002, 0xFE363C84, 0x0000000F, 0x00000046, 0x00000001, 0xFE363C8B, 0x00000024, 0x00000002, 0xFE363C80, 0xFE363C8F, 0x00000013, 0x00000000, 0x00000044, 0x00000001, 0xFE363C80, 0x00000043, 0x00000001, func_802D2148, 0x00000043, 0x00000001, func_80283BB0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80283B88, 0x00000043, 0x00000001, func_80283810, 0x00000043, 0x00000003, UseEntryHeading, 0xFE363C81, 0xFE363C84, 0x0000000A, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000043, 0x00000001, TeleportPartnerToPlayer, 0x00000043, 0x00000004, PlayerMoveTo, 0xFE363C81, 0xFE363C83, 0xFE363C84, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8F, 0xFE363C80, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000001, 0x00000046, 0x00000001, 0xFE363C8B, 0x00000024, 0x00000002, 0xFE363C80, 0xFE363C8F, 0x00000013, 0x00000000, 0x00000044, 0x00000001, 0xFE363C80, 0x00000043, 0x00000001, func_802D2148, 0x00000043, 0x00000001, func_80283BB0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000001, func_80283B88, 0x00000043, 0x00000001, func_80283810, 0x00000043, 0x00000001, func_80283A50, 0x00000043, 0x00000001, func_80283BB0, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80283B88, 0x00000043, 0x00000001, func_80283908, 0x00000043, 0x00000002, ClearPartnerMoveHistory, 0xFFFFFFFC, 0x00000043, 0x00000001, func_80283BB0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000001, func_80283B88, 0x00000043, 0x00000001, func_80283810, 0x0000000A, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000043, 0x00000004, PlayerMoveTo, 0xFE363C81, 0xFE363C83, 0x0000000F, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000024, 0x00000002, 0xFE363C84, 0x0000000F, 0x00000046, 0x00000001, 0xFE363C8B, 0x00000013, 0x00000000, 0x00000043, 0x00000001, func_80283BB0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80283D00, 0x00000046, 0x00000001, 0x80285EEC, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80283D00, 0x00000046, 0x00000001, 0x802861B0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80283D6C, 0x00000046, 0x00000001, 0x80285EEC, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80283D6C, 0x00000046, 0x00000001, 0x802861B0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80283DF0, 0x00000046, 0x00000001, 0x80285EEC, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80283DF0, 0x00000046, 0x00000001, 0x802861B0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80283E2C, 0x00000046, 0x00000001, 0x80285EEC, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80283E2C, 0x00000046, 0x00000001, 0x802861B0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000001, func_80283B88, 0x00000024, 0x00000002, 0xFE363C89, 0xFE363C80, 0x00000043, 0x00000006, func_80283C34, 0xFE363C80, 0xFE363C8C, 0xFE363C8D, 0xFE363C8E, 0xFE363C8B, 0x00000027, 0x00000002, 0xFE363C8B, 0x000000B4, 0x00000043, 0x00000003, InterpPlayerYaw, 0xFE363C8B, 0x00000002, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0xFE363C81, 0x7FFFFE00, 0x00000043, 0x00000006, PlaySoundAt, 0x90000000, 0x00000000, 0xFE363C8C, 0xFE363C8D, 0xFE363C8E, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x00000050, 0x0000000A, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000030, 0x00000001, 0xFE363C82, 0x00000005, 0x00000001, 0x00000000, 0x00000031, 0x00000001, 0xFE363C8A, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFFFFFFFF, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0xFE363C8A, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000006, 0x00000000, 0x00000030, 0x00000001, 0xFE363C83, 0x00000005, 0x00000001, 0x00000000, 0x00000031, 0x00000001, 0xFE363C8A, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFFFFFFFF, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0xFE363C8A, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000006, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000000, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, UseExitHeading, 0x00000028, 0xFE363C89, 0x00000043, 0x00000001, func_80283810, 0x0000000A, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000043, 0x00000004, PlayerMoveTo, 0xFE363C81, 0xFE363C83, 0x0000000F, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000024, 0x00000002, 0xFE363C84, 0x0000000F, 0x00000046, 0x00000001, 0xFE363C8B, 0x00000013, 0x00000000, 0x00000043, 0x00000001, func_80283BB0, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000001, func_80283B88, 0x00000030, 0x00000001, 0xFE363C82, 0x00000005, 0x00000001, 0x00000000, 0x00000031, 0x00000001, 0xFE363C8A, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFFFFFFFF, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0xFE363C8A, 0xFFFFFFB0, 0x00000000, 0x00000001, 0x00000000, 0x00000006, 0x00000000, 0x00000030, 0x00000001, 0xFE363C83, 0x00000005, 0x00000001, 0x00000000, 0x00000031, 0x00000001, 0xFE363C8A, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFFFFFFFF, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0xFE363C8A, 0xFFFFFFB0, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000006, func_80283C34, 0xFE363C80, 0xFE363C87, 0xFE363C88, 0xFE363C89, 0xFE363C8B, 0x00000043, 0x00000003, InterpPlayerYaw, 0xFE363C8B, 0x00000002, 0x00000043, 0x00000001, func_80283810, 0x0000000A, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000043, 0x00000001, TeleportPartnerToPlayer, 0x00000043, 0x00000002, func_80283BD0, 0x0000000A, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000001, 0x00000024, 0x00000002, 0xFE363C84, 0x0000000F, 0x00000046, 0x00000001, 0xFE363C8B, 0x00000013, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000008, 0x00000043, 0x00000006, PlaySoundAt, 0x90000001, 0x00000000, 0xFE363C87, 0xFE363C88, 0xFE363C89, 0x00000057, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0xFFFFFFB0, 0x00000000, 0x0000000A, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000030, 0x00000001, 0xFE363C82, 0x00000005, 0x00000001, 0x00000000, 0x00000031, 0x00000001, 0xFE363C8A, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFFFFFFFF, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0xFE363C8A, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000006, 0x00000000, 0x00000030, 0x00000001, 0xFE363C83, 0x00000005, 0x00000001, 0x00000000, 0x00000031, 0x00000001, 0xFE363C8A, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFFFFFFFF, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0xFE363C8A, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000006, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000000, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, func_80283BB0, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000
