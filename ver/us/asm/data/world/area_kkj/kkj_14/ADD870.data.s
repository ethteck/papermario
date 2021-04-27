.include "macro.inc"

.section .data

glabel D_802429D0_ADD870
.word 0xC3998000, 0x41F00000, 0xC1F00000, 0xC3910000, 0x420C0000, 0xC1F00000, 0xC37A0000, 0x00000000, 0xC1F00000

glabel D_802429F4_ADD894
.word 0xC3F00000, 0x41F00000, 0xC1F00000, 0xC3B40000, 0x42700000, 0xC1F00000, 0xC3AA0000, 0x42F00000, 0xC28C0000, 0xC3BE0000, 0x42200000, 0xC2C80000

glabel D_80242A24_ADD8C4
.word 0xC3BE0000, 0x42200000, 0xC2C80000, 0xC3B40000, 0x42340000, 0xC2A40000, 0xC3AA0000, 0x42200000, 0xC2820000, 0xC3A00000, 0x42000000, 0xC2500000, 0xC3910000, 0x41C80000, 0xC1F00000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000076, 0x00000000, 0x00000008, 0x00000043, 0x00000004, SetPlayerPos, 0xFFFFFE20, 0x0000001E, 0xFFFFFFE2, 0x00000043, 0x00000002, SetPlayerAnimation, 0x000C0018, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0xFFFFFE20, 0x0000001E, 0xFFFFFFE2, 0x00000043, 0x00000005, SetNpcPos, 0x00000000, 0xFFFFFE14, 0x00000000, 0xFFFFFFE2, 0x00000043, 0x00000005, SetNpcPos, 0x00000001, 0xFFFFFE34, 0x00000000, 0xFFFFFFE2, 0x00000043, 0x00000003, SetNpcYaw, 0x00000000, 0x0000005A, 0x00000043, 0x00000003, SetNpcYaw, 0x00000001, 0x0000005A, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFFFFFED4, 0x00000000, 0xFFFFFFE2, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFFFFFED4, 0x00000000, 0xFFFFFFE2, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000002, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000003, 0x7FFFFE00, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x00000002, 0x000001C1, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x00000050, 0x0000000E, 0x00000004, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x00000002, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000005, LoadPath, 0x00000032, D_802429F4_ADD894, 0x00000004, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, GetNextPathPos, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFC, 0x0000005A, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000004, SetNpcVar, 0x00000000, 0x00000000, 0x00000001, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00580014, 0x00000043, 0x00000003, SetNpcSpeed, 0x00000000, 0xF24A8E80, 0x00000043, 0x00000005, NpcMoveTo, 0x00000000, 0xFFFFFEC4, 0xFFFFFFE0, 0x00000000, 0x00000043, 0x00000004, SetNpcVar, 0x00000000, 0x00000000, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00580014, 0x00000043, 0x00000003, SetNpcSpeed, 0x00000001, 0xF24A8E80, 0x00000043, 0x00000005, NpcMoveTo, 0x00000001, 0xFFFFFEE4, 0xFFFFFFE4, 0x00000000, 0x00000057, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000005, GetNpcPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x0000000A, 0x00000027, 0x00000002, 0xFE363C82, 0x00000002, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C80, 0x0000001E, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000004, GetNpcVar, 0x00000000, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00580012, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00580012, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000002, SetPlayerAnimation, 0x000C0019, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00580015, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00580015, 0x00000043, 0x00000005, LoadPath, 0x0000000F, D_802429D0_ADD870, 0x00000003, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, GetNextPathPos, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtPlayer, 0x00000162, 0x00000000, 0x00000043, 0x00000002, SetPlayerAnimation, 0x000C001A, 0x00000056, 0x00000000, 0x00000027, 0x00000002, 0xFE363C81, 0x0000000A, 0x00000043, 0x0000000F, PlayEffect, 0x00000006, 0x00000001, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x0000002F, 0x00000027, 0x00000002, 0xFE363C81, 0xFFFFFFFB, 0x00000027, 0x00000002, 0xFE363C82, 0x0000000A, 0x00000027, 0x00000002, 0xFE363C83, 0x00000005, 0x00000005, 0x00000001, 0x00000004, 0x00000043, 0x0000000F, PlayEffect, 0x00000007, 0x00000001, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00580001, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00580006, 0x00000043, 0x00000005, NpcMoveTo, 0x00000000, 0xFFFFFE32, 0xFFFFFFE2, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0x00000000, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00580001, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00580006, 0x00000043, 0x00000005, NpcMoveTo, 0x00000001, 0xFFFFFE52, 0xFFFFFFE2, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0x00000001, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000078, 0x00000000, 0x00000008, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x00000002, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000003, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000002, 0x7FFFFE00, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x00000002, 0x000001C2, 0x00000000, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x0000003C, 0x00000043, 0x00000005, LoadPath, 0x00000032, D_80242A24_ADD8C4, 0x00000005, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, GetNextPathPos, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFC, 0x0000005A, 0x00000000, 0x00000043, 0x00000002, SetPlayerAnimation, 0x000A0001, 0x0000000A, 0x00000002, 0xF5DE0180, 0x0000003A, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x00200009, 0x00200001, 0x00000000, 0x00140159, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFE, 0x000C0013, 0x000C0012, 0x00000005, 0x0014015A, 0x0000000C, 0x00000002, 0xF5DE01CF, 0x00000003, 0x0000000A, 0x00000002, 0xF9718893, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x0014015B, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x0014015D, 0x00000013, 0x00000000, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x0014015C, 0x00000013, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x00200009, 0x00200001, 0x00000000, 0xFE363C80, 0x00000012, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x00200009, 0x00200001, 0x00000000, 0x00140176, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFE, 0x000C0013, 0x000C0012, 0x00000005, 0x00140177, 0x0000000C, 0x00000002, 0xF5DE01CF, 0x00000003, 0x0000000A, 0x00000002, 0xF9718893, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00140178, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x0014017A, 0x00000013, 0x00000000, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00140179, 0x00000013, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x00200009, 0x00200001, 0x00000000, 0xFE363C80, 0x00000013, 0x00000000, 0x00000044, 0x00000001, 0x802405C0, 0x00000043, 0x00000003, ResetCam, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80243590_ADE430
.word 0x00000000, 0x00280018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00190000

glabel D_802435BC_ADE45C
.word 0x00580001, 0x00580006, 0x00580012, 0x00580014, 0x00580015, 0xFFFFFFFF

glabel D_802435D4_ADE474
.word 0x00000000, D_80243590_ADE430, 0x00000000, 0xC3FA0000, 0x00000000, 0x00000F0D, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00580001, 0x00580004, 0x00580006, 0x00580006, 0x00580001, 0x00580001, 0x00580010, 0x00580010, 0x0058000C, 0x0058000B, 0x0058000D, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00000000, 0x00000000, D_802435BC_ADE45C, 0x00000000, 0x00000001, D_80243590_ADE430, 0x00000000, 0xC3FA0000, 0x00000000, 0x00000F0D, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00580001, 0x00580004, 0x00580006, 0x00580006, 0x00580001, 0x00580001, 0x00580010, 0x00580010, 0x0058000C, 0x0058000B, 0x0058000D, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00000000, 0x00000000, D_802435BC_ADE45C, 0x00000000, 0x00000002, D_802435D4_ADE474, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
