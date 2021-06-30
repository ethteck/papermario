.include "macro.inc"

.section .data

glabel D_80243220_CBC420
.word 0x00000000, 0x002D0041, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000005, SetNpcPos, 0x00000000, 0x0000003C, 0x00000000, 0x00000037, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x000001C2, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24ABE80, 0xF24A6280, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00C90002, 0x00C90001, 0x00000000, 0x001100C6, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, GotoMap, 0x80244AC0, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80243394_CBC594
.word 0x00000057, 0x00000000

glabel D_8024339C_CBC59C
.word 0x0000000A, 0x00000002, 0xF84060E0, 0x00000001, 0x00000043, 0x00000002, GetCurrentPartner, 0xFE363C8A, 0x0000000B, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000043, 0x00000004, AwaitPlayerLeave, 0x00000000, 0x00000000, 0x00000013, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000002, SetTimeFreezeMode, 0x00000001, 0x00000043, 0x00000001, ShowKeyChoicePopup, 0x00000024, 0x00000002, 0xFE363C82, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C82, 0x00000016, 0x00000001, 0xFFFFFFFF, 0x00000043, 0x00000001, CloseChoicePopup, 0x00000043, 0x00000002, SetTimeFreezeMode, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00C90004, 0x00C90008, 0x00000000, 0x00110081, 0x0000001C, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x00000043, 0x00000004, PlayerMoveTo, 0xFFFFFFEF, 0xFFFFFFEF, 0x00000014, 0x00000043, 0x00000002, func_802CF56C, 0x00000002, 0x00000043, 0x00000003, InterpPlayerYaw, 0x00000064, 0x00000001, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000007, AdjustCam, 0x00000000, 0xF24A7E80, 0x00000000, 0x000001C2, 0xF24ADE80, 0xF24A6280, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00060006, 0x00000043, 0x00000002, RemoveKeyItemAt, 0xFE363C81, 0x00000043, 0x00000007, MakeItemEntity, 0x00000057, 0x00000000, 0xFFFFFFC4, 0x00000006, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0xFE363C80, 0x00000043, 0x00000001, CloseChoicePopup, 0x00000043, 0x00000002, SetTimeFreezeMode, 0x00000000, 0x00000046, 0x00000001, 0x802425E4, 0x00000023, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000004, AwaitPlayerLeave, 0x00000000, 0x00000000, 0x00000013, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004E, 0x00000006, D_8024339C_CBC59C, 0x00000080, 0x0000000F, D_80243394_CBC594, 0x00000000, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80243628_CBC828
.word 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000005, GetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C83, 0xFE363C84, 0xFE363C85, 0x0000000C, 0x00000002, 0xFE363C85, 0xFE363C82, 0x00000024, 0x00000002, 0xFE363C86, 0x0000001E, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C86, 0x00000014, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C80, 0x00000024, 0x00000002, 0xFE363C84, 0xFE363C80, 0x00000028, 0x00000002, 0xFE363C81, 0xFE363C86, 0x00000027, 0x00000002, 0xFE363C84, 0xFE363C86, 0x00000014, 0x00000001, 0xFE363C83, 0x00000021, 0x00000002, 0xFE363C81, 0xFE363C84, 0x00000056, 0x00000000, 0x0000000C, 0x00000002, 0xFE363C83, 0xFE363C80, 0x00000028, 0x00000002, 0xFE363C80, 0x00000028, 0x00000012, 0x00000000, 0x00000027, 0x00000002, 0xFE363C80, 0x00000028, 0x00000013, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000100, 0x00000001, 0x00000043, 0x00000004, PlayerMoveTo, 0xFE363C80, 0xFE363C85, 0x0000000F, 0x00000043, 0x00000003, PlayerFaceNpc, 0x00000000, 0x00000001, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000100, 0x00000000, 0x00000057, 0x00000000, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802437C8_CBC9C8
.word 0x00000046, 0x00000001, 0x802415C4, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000018, 0x00000001, 0x0000002D, 0x00000044, 0x00000001, D_80243628_CBC828, 0x00000043, 0x00000005, GetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x00000145, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24AD680, 0xF24A5680, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8A80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00C90004, 0x00C90008, 0x00000005, 0x00110078, 0x00000043, 0x00000005, EndSpeech, 0xFFFFFFFF, 0x00C90009, 0x00C90005, 0x00000005, 0x00000018, 0x00000001, 0x00000030, 0x0000000A, 0x00000002, 0xF84060DF, 0x00000000, 0x00000044, 0x00000001, D_80243628_CBC828, 0x00000043, 0x00000005, GetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x00000145, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24AD680, 0xF24A5680, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8A80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00C90004, 0x00C90008, 0x00000005, 0x00110079, 0x00000043, 0x00000003, NpcFacePlayer, 0xFFFFFFFF, 0x00000001, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00C90001, 0x00000043, 0x00000004, PlaySoundAtNpc, 0xFFFFFFFF, 0x00000262, 0x00000000, 0x00000043, 0x0000000A, ShowEmote, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x0000000F, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00C90001, 0x00C90001, 0x00000000, 0x0011007A, 0x00000043, 0x00000005, EndSpeech, 0xFFFFFFFF, 0x00C90005, 0x00C90001, 0x00000000, 0x00000043, 0x00000002, GetPlayerTargetYaw, 0xFE363C80, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFF, 0xFE363C80, 0x00000001, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00C90002, 0x00C90001, 0x00000005, 0x0011007B, 0x00000043, 0x00000003, NpcFacePlayer, 0xFFFFFFFF, 0x00000001, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00C90002, 0x00C90001, 0x00000000, 0x0011007C, 0x00000043, 0x00000002, ShowChoice, 0x001E0011, 0x00000008, 0x00000001, 0x0000000A, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000006, ContinueSpeech, 0xFFFFFFFF, 0x00C90003, 0x00C90007, 0x00000000, 0x0011007D, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000006, ContinueSpeech, 0xFFFFFFFF, 0x00C90004, 0x00C90008, 0x00000000, 0x0011007E, 0x00000023, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000024, 0x00000002, 0xF84060DF, 0x00000001, 0x00000043, 0x00000004, SetEnemyFlagBits, 0xFFFFFFFF, 0x00400000, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00C90004, 0x00C90008, 0x00000005, 0x0011007F, 0x00000013, 0x00000000, 0x00000018, 0x00000001, 0x00000031, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00C90002, 0x00C90001, 0x00000000, 0x00110080, 0x00000024, 0x00000002, 0xF84060E0, 0x00000001, 0x00000018, 0x00000001, 0x00000035, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00C90004, 0x00C90008, 0x00000000, 0x00110085, 0x00000043, 0x00000005, EndSpeech, 0xFFFFFFFF, 0x00C90002, 0x00C90001, 0x00000000, 0x00000043, 0x00000005, EndSpeech, 0xFFFFFFFF, 0x00C90004, 0x00C90008, 0x00000000, 0x00000018, 0x00000001, 0x0000003C, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00C90003, 0x00C90007, 0x00000000, 0x00110086, 0x0000001C, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00C90002, 0x00C90001, 0x00000000, 0x00110087, 0x00000023, 0x00000000, 0x00000043, 0x00000003, ResetCam, 0x00000000, 0xF24A8A80, 0x00000046, 0x00000001, 0x802415E8, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80243D78_CBCF78
.word 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_802437C8_CBC9C8, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000018, 0x00000001, 0x00000030, 0x0000000A, 0x00000002, 0xF84060DF, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00C90008, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFF, 0x0000005A, 0x00000001, 0x00000043, 0x00000004, SetEnemyFlagBits, 0xFFFFFFFF, 0x00400000, 0x00000001, 0x00000013, 0x00000000, 0x00000016, 0x00000001, 0x00000030, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFF, 0x0000010E, 0x00000001, 0x0000001B, 0x00000001, 0x00000031, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFFFFFFBD, 0xFFFFFFEC, 0xFFFFFF97, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80243E64_CBD064
.word 0x00000000, D_80243220_CBC420, 0x42A00000, 0xC2700000, 0x00000000, 0x00000D01, D_80243D78_CBCF78, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00C90001, 0x00C90001, 0x00C90001, 0x00C90001, 0x00C90001, 0x00C90001, 0x00C90001, 0x00C90001, 0x00C90001, 0x00C90001, 0x00C90001, 0x00C90001, 0x00C90001, 0x00C90001, 0x00C90001, 0x00C90001, 0x00000000, 0x00000000, 0x00000000, 0x001A00DF, 0x00000001, D_80243E64_CBD064, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
