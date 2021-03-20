.include "macro.inc"

.section .data

glabel D_80240970_8AADC0
.word 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0xFFFFFFF6, 0x00000019, 0x00000004, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateModel, 0xFE363C82, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C83, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C84, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0xFFFFFFF6, 0x00000000, 0x0000001E, 0x00000004, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateModel, 0xFE363C82, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C83, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0xFE363C84, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x0000000E, 0x00000024, 0x00000002, 0xFE363C83, 0x00000015, 0x00000024, 0x00000002, 0xFE363C84, 0x00000011, 0x00000045, 0x00000002, 0x80240990, 0xFE363C8A, 0x00000008, 0x00000001, 0x00000005, 0x00000024, 0x00000002, 0xFE363C82, 0x00000014, 0x00000024, 0x00000002, 0xFE363C83, 0x00000013, 0x00000024, 0x00000002, 0xFE363C84, 0x00000012, 0x00000045, 0x00000002, 0x80240990, 0xFE363C8B, 0x00000008, 0x00000001, 0x00000005, 0x00000024, 0x00000002, 0xFE363C82, 0x0000000F, 0x00000024, 0x00000002, 0xFE363C83, 0x00000010, 0x00000024, 0x00000002, 0xFE363C84, 0x00000017, 0x00000045, 0x00000002, 0x80240990, 0xFE363C8C, 0x00000008, 0x00000001, 0x00000005, 0x00000024, 0x00000002, 0xFE363C82, 0x0000000B, 0x00000024, 0x00000002, 0xFE363C83, 0x0000000C, 0x00000024, 0x00000002, 0xFE363C84, 0x00000016, 0x00000045, 0x00000002, 0x80240990, 0xFE363C8D, 0x00000043, 0x00000004, SetNpcVar, 0x00000000, 0x00000002, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetNpcVar, 0x00000000, 0x00000002, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000049, 0x00000001, 0xFE363C8A, 0x00000049, 0x00000001, 0xFE363C8B, 0x00000049, 0x00000001, 0xFE363C8C, 0x00000049, 0x00000001, 0xFE363C8D, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000043, 0x00000001, WaitForPlayerInputEnabled, 0x00000005, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000043, 0x00000001, func_80240730_8AAB80, 0x0000000A, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000003, SetNpcJumpscale, 0xFFFFFFFF, 0xF24A7E80, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000000C, 0x00000002, 0xFE363C80, 0x00000000, 0x00000027, 0x00000002, 0xFE363C80, 0x00000050, 0x00000012, 0x00000000, 0x00000027, 0x00000002, 0xFE363C80, 0xFFFFFFB0, 0x00000013, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0xFFFFFFFF, 0xFE363C80, 0x00000000, 0x00000000, 0x00000014, 0x00000043, 0x00000005, GetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000006, NpcJump0, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000000A, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00410024, 0x00410004, 0x00000000, 0x0007009B, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000001, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000001, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, SetSelfEnemyFlagBits, 0x03000000, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000001, 0x00000012, 0x00000000, 0x00000043, 0x00000001, func_80240748_8AAB98, 0x00000043, 0x00000003, SetSelfEnemyFlagBits, 0x03000000, 0x00000001, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0xFFFFFFFF, 0x000020D9, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0xFFFFFFFF, 0xFFFFFF9C, 0x00000050, 0xFFFFFFB0, 0x00000014, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, PlaySoundAtNpc, 0xFFFFFFFF, 0x000020D9, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0xFFFFFFFF, 0x00000064, 0x00000050, 0xFFFFFFB0, 0x00000014, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, PlaySoundAtNpc, 0xFFFFFFFF, 0x000020D9, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0xFFFFFFFF, 0x0000001E, 0x00000028, 0xFFFFFFB0, 0x00000014, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, PlaySoundAtNpc, 0xFFFFFFFF, 0x000020D9, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0xFFFFFFFF, 0x00000087, 0x0000000F, 0xFFFFFF9C, 0x00000014, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, PlaySoundAtNpc, 0xFFFFFFFF, 0x000020D9, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0xFFFFFFFF, 0x0000001E, 0x00000000, 0x00000000, 0x00000014, 0x00000008, 0x00000001, 0x0000000A, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000044, 0x00000001, 0x80240B2C, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000045, 0x00000002, 0x80240F20, 0xFE363C8A, 0x00000043, 0x00000003, SetSelfVar, 0x00000003, 0xFE363C8A, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000003, GetSelfVar, 0x00000001, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000003, SetSelfEnemyFlagBits, 0x00100000, 0x00000000, 0x00000043, 0x00000002, StartBossBattle, 0x00000003, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000003, GetSelfVar, 0x00000003, 0xFE363C80, 0x00000049, 0x00000001, 0xFE363C80, 0x00000043, 0x00000003, SetSelfVar, 0x00000001, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000002, SetPlayerActionState, 0x0000000A, 0x00000043, 0x00000004, SetPlayerPos, 0xFFFFFFD8, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetPlayerFlagBits, 0x00200000, 0x00000001, 0x00000043, 0x00000003, InterpPlayerYaw, 0x0000005A, 0x00000000, 0x00000043, 0x00000003, SetPlayerFlagBits, 0x00200000, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x0000001E, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetNpcYaw, 0xFFFFFFFF, 0x0000010E, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFFFFFFFB, 0x00000000, 0x00000000, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFFFFFFFB, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00410024, 0x00410004, 0x00000000, 0x0007009D, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x0007009E, 0xFFFFFED4, 0x00000064, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, FadeOutMusic, 0x00000000, 0x000003E8, 0x00000043, 0x00000003, SetSelfVar, 0x00000002, 0x00000001, 0x00000056, 0x00000000, 0x00000043, 0x00000002, PlaySound, 0x00000042, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000005, 0x00000001, 0x00000096, 0x00000027, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000005, TranslateGroup, 0x0000000A, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000000E, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000000F, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000010, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000013, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000014, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000015, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000016, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000017, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000005, 0x00000001, 0x0000004B, 0x00000027, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000005, TranslateGroup, 0x0000000D, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000011, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000012, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000002, HidePlayerShadow, 0x00000001, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFC, 0x00000000, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00080017, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C81, 0xFE363C80, 0xFE363C83, 0x00000005, 0x00000001, 0x00000096, 0x00000027, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C81, 0xFE363C80, 0xFE363C83, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000005, GetNpcPos, 0x00000000, 0xFE363C81, 0xFE363C80, 0xFE363C83, 0x00000005, 0x00000001, 0x00000096, 0x00000027, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C81, 0xFE363C80, 0xFE363C83, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000058, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000004, InterpNpcYaw, 0x00000000, 0x0000005A, 0x00000007, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, InterpNpcYaw, 0x00000000, 0x0000010E, 0x00000007, 0x00000008, 0x00000001, 0x0000000A, 0x00000006, 0x00000000, 0x00000059, 0x00000000, 0x00000008, 0x00000001, 0x00000078, 0x00000043, 0x00000003, GotoMap, 0x80241B38, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000043, 0x00000001, func_802D2B6C, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x00000064, 0x00000050, 0xFFFFFFB0, 0x00000044, 0x00000001, 0x80240D00, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00410004, 0x00180018, 0x802417A0, 0x00000000, 0x80241098, 0x802411A4, 0x00000000, 0x802411F8, 0x00000000, 0x00000064, 0x00000000, 0x00000000, 0x802417D8, 0x43A68000, 0xC1200000, 0xC3020000, 0x17148904, 0x00000000, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00410004, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x80241804, 0x13000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000
