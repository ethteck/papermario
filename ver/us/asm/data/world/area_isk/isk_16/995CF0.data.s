.include "macro.inc"

.section .data

glabel D_80240B00_995CF0
.word 0x43998000, 0xC4638000, 0x43F60000, 0x42480000, 0x43F60000, 0xC4638000, 0x43998000, 0x435C0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x80241080, D_80240B00_995CF0, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x001900A3, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000016, 0x00000001, 0xFFFFFFC7, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0180, 0xFFFFFFC8, 0x00000016, 0x00000001, 0xFFFFFFC8, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x0000001C, 0x00000000, 0x00000002, 0x00000000, 0x00000023, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000198, 0xFFFFFCC7, 0x0000019E, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7CE7, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000198, 0xFFFFFC90, 0x0000019E, 0x00000043, 0x00000003, GetCamDistance, 0x00000000, 0xFE363C81, 0x00000028, 0x00000002, 0xFE363C81, 0x00000064, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xFE363C81, 0x0000000B, 0x00000002, 0x00002710, 0x00002710, 0x00000043, 0x00000004, GetCamPitch, 0x00000000, 0xFE363C82, 0xFE363C83, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xFE363C82, 0x00002710, 0x00000013, 0x00000000, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x0000000B, func_8024004C_99523C, 0x00000001, 0x000000B4, 0x00000198, 0xFFFFFC7C, 0x0000019E, 0x00000198, 0xFFFFFCC7, 0x0000019E, 0xFFFFFC90, 0xFFFFFC72, 0x00000056, 0x00000000, 0x00000043, 0x00000001, func_802401AC_99539C, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, PlaySound, 0x80000067, 0x00000043, 0x00000001, func_80240000_9951F0, 0x00000043, 0x00000002, StopSound, 0x80000067, 0x00000043, 0x00000006, PlaySoundAt, 0x000000B2, 0x00000000, 0x00000198, 0xFFFFFCC7, 0x0000019E, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000002D, 0x00000043, 0x00000002, SetPlayerAnimation, 0x0001002A, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x000000B4, 0x00000008, 0x00000001, 0x00000073, 0x00000043, 0x00000006, PlaySoundAt, 0x00000137, 0x00000000, 0x00000198, 0xFFFFFCC7, 0x0000019E, 0x00000057, 0x00000000, 0x00000043, 0x00000002, func_802405BC_9957AC, 0x00000001, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000050, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010002, 0x00000057, 0x00000000, 0x00000027, 0x00000002, 0xFE363C81, 0x00000064, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xFE363C81, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000198, 0xFFFFFC72, 0x0000019E, 0x00000043, 0x00000002, func_802405BC_9957AC, 0x00000002, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000006, func_802405FC_9957EC, 0x00000001, 0x00000198, 0xFFFFFC90, 0x0000019E, 0xFFFFFC72, 0x00000056, 0x00000000, 0x00000043, 0x00000001, func_80240708_9958F8, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000043, 0x00000002, func_802405BC_9957AC, 0x00000003, 0x00000043, 0x00000003, PlaySoundAtPlayer, 0x00000138, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xF5DE0180, 0xFFFFFFC9, 0x00000043, 0x00000004, GotoMapSpecial, 0x80242D64, 0x00000001, 0x0000000E, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x00000028, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80242D6C, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x80240FF8, 0x00080000, 0x00000000, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x0000000B, 0x00000043, 0x00000002, SetSpriteShading, 0x0002000C, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x80241A24, 0x00000046, 0x00000001, 0x80242C30, 0x0000000A, 0x00000002, 0xF5DE0180, 0xFFFFFFC8, 0x00000044, 0x00000001, 0x80240B60, 0x00000013, 0x00000000, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000018, 0x00000001, 0xFFFFFFC8, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000054, 0x00000000, 0x00000008, 0x00000016, 0x00000001, 0xFFFFFFC8, 0x00000043, 0x00000003, FadeOutMusic, 0x00000000, 0x000001F4, 0x00000019, 0x00000001, 0xFFFFFFC8, 0x00000023, 0x00000000, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000018, 0x00000001, 0xFFFFFFC8, 0x00000044, 0x00000001, 0x80241A50, 0x0000001B, 0x00000001, 0xFFFFFFC8, 0x00000024, 0x00000002, 0xFE363C80, 0x80241054, 0x00000044, 0x00000001, EnterWalk, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000
