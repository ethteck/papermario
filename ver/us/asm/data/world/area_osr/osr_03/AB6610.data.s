.include "macro.inc"

.section .data

glabel D_80240380_AB6610
.word 0x00000000, 0x00000000, 0x44170000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x43870000, 0x00000000, 0x00000000, 0x43910000, 0x43340000, 0x00000000, 0xC2480000, 0x00000000, 0x43340000, 0x00000000, 0x00000000, 0x00000000, 0x43340000, 0x00000000, 0xC2480000, 0x00000000, 0x43340000, 0x00000000, 0x00000000, 0xC3910000, 0x43340000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x802405FC, D_80240380_AB6610, 0x00000007, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, func_80200000, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x00000045, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x0000004D, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x0000005E, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x00000063, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x00000066, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x0000006C, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x00000073, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x00000081, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000001, 0x00000044, 0x00000001, 0x802413E0, 0x00000016, 0x00000001, 0x00000002, 0x00000044, 0x00000001, 0x80241654, 0x00000016, 0x00000001, 0x00000003, 0x00000044, 0x00000001, 0x80240430, 0x00000044, 0x00000001, 0x80241CFC, 0x00000016, 0x00000001, 0x00000004, 0x00000008, 0x00000001, 0x0000000F, 0x00000044, 0x00000001, 0x80242528, 0x00000016, 0x00000001, 0x00000005, 0x00000044, 0x00000001, 0x80240430, 0x00000044, 0x00000001, 0x80242AE0, 0x00000016, 0x00000001, 0x00000006, 0x00000044, 0x00000001, 0x8024191C, 0x0000001C, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x802404E0, 0x00000044, 0x00000001, EnterWalk, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000018, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000004, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x80240AFC, 0x0000001C, 0x00000000, 0x00000023, 0x00000000, 0x00000014, 0x00000001, 0xF5DE0180, 0x0000001D, 0x00000001, 0xFFFFFF96, 0x0000001D, 0x00000001, 0xFFFFFFB3, 0x0000001D, 0x00000001, 0xFFFFFFF1, 0x00000043, 0x00000002, ClearAmbientSounds, 0x000000FA, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000073, 0x00000000, 0x00000008, 0x00000020, 0x00000000, 0x00000016, 0x00000001, 0xFFFFFFC9, 0x00000043, 0x00000002, ClearAmbientSounds, 0x000000FA, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000066, 0x00000000, 0x00000008, 0x0000001D, 0x00000001, 0x00000005, 0x0000001D, 0x00000001, 0x00000025, 0x0000001D, 0x00000001, 0x00000039, 0x00000043, 0x00000002, ClearAmbientSounds, 0x000000FA, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000074, 0x00000000, 0x00000008, 0x00000020, 0x00000000, 0x00000016, 0x00000001, 0x00000057, 0x00000043, 0x00000002, ClearAmbientSounds, 0x000000FA, 0x00000043, 0x00000003, FadeOutMusic, 0x00000000, 0x000001F4, 0x0000001C, 0x00000000, 0x0000000A, 0x00000002, 0xF8405D7D, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x0000005F, 0x00000000, 0x00000008, 0x00000013, 0x00000000, 0x00000023, 0x00000000, 0x00000044, 0x00000001, 0x802404F0, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000004, 0x00000008, 0x00000001, 0x0000000F, 0x00000012, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x0028001E, 0x00000000, 0x00000000, 0x00000000, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x001A0000, 0x00600009, 0x0060000A, 0x0060000B, 0x0060000C, 0x0060000D, 0x0060000E, 0x0060000F, 0x00600010, 0x00600011, 0x00600012, 0x00600013, 0x00600014, 0x00600015, 0x00600016, 0x0060001A, 0xFFFFFFFF, 0x00000000, 0x802408A0, 0x00000000, 0xC47A0000, 0x00000000, 0x00000D0D, 0x00000000, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00600001, 0x00600002, 0x00600003, 0x00600003, 0x00600001, 0x00600001, 0x00600000, 0x00600000, 0x00600003, 0x00600003, 0x00600003, 0x00600003, 0x00600003, 0x00600003, 0x00600003, 0x00600003, 0x00000000, 0x00000000, 0x802408CC, 0x00000000, 0x00000001, 0x8024090C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
