.include "macro.inc"

.section .data

glabel D_80242A00_E111A0
.word 0x3FC00000, 0x0000001E, 0x0000001E, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001

glabel D_80242A30_E111D0
.word 0x00000043, 0x00000002, func_80240E74_E0F614, D_80242A00_E111A0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242A50_E111F0
.word 0x00000000, 0x001E0018, 0x00000000, 0x00000000, D_80242A30_E111D0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630010, 0x00000000, 0x00170013, 0x00000000, 0x00000000, D_80242A30_E111D0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630010

glabel D_80242AA8_E11248
.word 0x00000000, 0x001E0018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000, 0x00000000, 0x00170013, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000

glabel D_80242B00_E112A0
.word 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFFFFFFE7, 0x00000000, 0xFFFFFF65, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFFFFFFE7, 0x00000000, 0xFFFFFF65, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF250BA80, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A874D, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000003, PlaySoundWithVolume, 0x0000208E, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x00000005, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0xFFFFFFE2, 0x00000005, 0x00000001, 0x0000001E, 0x00000027, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000005, TranslateModel, 0x00000005, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000005, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x0000000B, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000002, 0x7FFFFE00, 0x00000047, 0x00000005, D_80242648_E10DE8, 0x00000080, 0x00000002, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242CA0_E11440
.word 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x0000005F, 0x00000000, 0xFFFFFF65, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x0000005F, 0x00000000, 0xFFFFFF65, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF250BA80, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A874D, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000003, PlaySoundWithVolume, 0x0000208E, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x00000007, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0xFFFFFFE2, 0x00000005, 0x00000001, 0x0000001E, 0x00000027, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000005, TranslateModel, 0x00000007, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000007, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x0000000C, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000003, 0x7FFFFE00, 0x00000047, 0x00000005, D_802426D0_E10E70, 0x00000080, 0x00000003, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242E40_E115E0
.word 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C80, 0x00000000, 0xFE363C82, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF2518280, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A874D, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242F18_E116B8
.word 0x00000043, 0x00000001, func_80241170_E0F910, 0x00000024, 0x00000002, 0xFE363C86, 0x00000000, 0x00000024, 0x00000002, 0xFE363C87, 0x00000000, 0x0000000A, 0x00000002, 0xF8405CEC, 0x00000000, 0x00000014, 0x00000001, 0xFE363C85, 0x00000016, 0x00000001, 0x00000000, 0x00000016, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C86, 0x00000001, 0x00000024, 0x00000002, 0xFE363C87, 0x00000001, 0x00000016, 0x00000001, 0x00000002, 0x00000024, 0x00000002, 0xFE363C86, 0x00000001, 0x00000024, 0x00000002, 0xFE363C87, 0x00000003, 0x00000023, 0x00000000, 0x00000012, 0x00000000, 0x0000000A, 0x00000002, 0xF8405CEE, 0x00000000, 0x0000000E, 0x00000002, 0xFE363C85, 0x00000001, 0x00000024, 0x00000002, 0xFE363C86, 0x00000002, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C86, 0x00000003, 0x00000024, 0x00000002, 0xFE363C87, 0x00000002, 0x00000013, 0x00000000, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C86, 0x00000004, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xF8405CEB, 0x00000000, 0x00000024, 0x00000002, 0xF8405CEB, 0x00000001, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830004, 0x00830001, 0x00000000, 0x00080012, 0x00000012, 0x00000000, 0x00000014, 0x00000001, 0xFE363C86, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830004, 0x00830001, 0x00000000, 0x00080013, 0x00000002, 0x00000000, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830004, 0x00830001, 0x00000000, 0x00080014, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830004, 0x00830001, 0x00000000, 0x00080015, 0x00000002, 0x00000000, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830004, 0x00830001, 0x00000000, 0x00080016, 0x00000016, 0x00000001, 0x00000004, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830004, 0x00830001, 0x00000000, 0x00080017, 0x00000002, 0x00000000, 0x00000023, 0x00000000, 0x00000013, 0x00000000, 0x00000014, 0x00000001, 0xFE363C87, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000005, EndSpeech, 0xFFFFFFFF, 0x00830004, 0x00830001, 0x00000005, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000006, ContinueSpeech, 0xFFFFFFFF, 0x00830004, 0x00830001, 0x00000000, 0x00080018, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000006, ContinueSpeech, 0xFFFFFFFF, 0x00830004, 0x00830001, 0x00000000, 0x00080019, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000006, ContinueSpeech, 0xFFFFFFFF, 0x00830004, 0x00830001, 0x00000000, 0x0008001A, 0x00000023, 0x00000000, 0x00000014, 0x00000001, 0xFE363C87, 0x00000016, 0x00000001, 0x00000000, 0x00000016, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xF8405CEC, 0x00000001, 0x00000046, 0x00000001, D_80242B00_E112A0, 0x00000046, 0x00000001, D_80242E40_E115E0, 0x00000016, 0x00000001, 0x00000002, 0x00000024, 0x00000002, 0xF8405CEE, 0x00000001, 0x00000046, 0x00000001, D_80242CA0_E11440, 0x00000046, 0x00000001, D_80242E40_E115E0, 0x00000016, 0x00000001, 0x00000003, 0x00000024, 0x00000002, 0xF8405CEC, 0x00000001, 0x00000024, 0x00000002, 0xF8405CEE, 0x00000001, 0x00000046, 0x00000001, D_80242B00_E112A0, 0x00000008, 0x00000001, 0x0000000A, 0x00000046, 0x00000001, D_80242CA0_E11440, 0x00000046, 0x00000001, D_80242E40_E115E0, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80243368_E11B08
.word 0x00000043, 0x00000004, SetNpcCollisionSize, 0xFFFFFFFF, 0x00000020, 0x0000004B, 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_80242F18_E116B8, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802433A4_E11B44
.word 0x00000000, D_80242AA8_E11248, 0xC3550000, 0x41400000, 0xC3340000, 0x00002D01, D_80243368_E11B08, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00830001, 0x00830002, 0x00830003, 0x00830003, 0x00830001, 0x00830001, 0x00830006, 0x00830006, 0x00830003, 0x00830003, 0x00830003, 0x00830003, 0x00830003, 0x00830003, 0x00830003, 0x00830003, 0x00000000, 0x00000000, 0x00000000, 0x001A005E

glabel D_80243594_E11D34
.word 0x00000043, 0x00000001, func_80241170_E0F910, 0x00000014, 0x00000001, 0xFE363C85, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830104, 0x00830101, 0x00000000, 0x00080025, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830104, 0x00830101, 0x00000000, 0x00080026, 0x0000001C, 0x00000000, 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830104, 0x00830101, 0x00000000, 0x00080027, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000001, 0x00000012, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830104, 0x00830101, 0x00000000, 0x00080028, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000013, 0x00000000, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802436C0_E11E60
.word 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_80243594_E11D34, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802436F8_E11E98
.word 0x00000001, D_80242A50_E111F0, 0xC2B00000, 0x00000000, 0xC2BE0000, 0x00002D01, D_802436C0_E11E60, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0xFFFFFF9C, 0x00000000, 0xFFFFFFA1, 0xFFFFFFBA, 0x00000000, 0xFFFFFFA1, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00830101, 0x00830102, 0x00830103, 0x00830103, 0x00830101, 0x00830101, 0x00830106, 0x00830106, 0x00830103, 0x00830103, 0x00830103, 0x00830103, 0x00830103, 0x00830103, 0x00830103, 0x00830103, 0x00000000, 0x00000000, 0x00000000, 0x001A005F

glabel D_802438E8_E12088
.word 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000018, 0x00000001, 0x00000019, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830204, 0x00830201, 0x00000000, 0x00080029, 0x00000018, 0x00000001, 0x00000032, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830204, 0x00830201, 0x00000000, 0x0008002A, 0x00000018, 0x00000001, 0x0000004B, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830204, 0x00830201, 0x00000000, 0x0008002B, 0x0000001C, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830204, 0x00830201, 0x00000000, 0x0008002C, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802439CC_E1216C
.word 0x00000043, 0x00000003, RandInt, 0x00000064, 0xFE363C80, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0xFE363C80, 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, D_802438E8_E12088, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80243A18_E121B8
.word 0x00000002, D_80242A50_E111F0, 0x42380000, 0x00000000, 0xC34D0000, 0x00002D01, D_802439CC_E1216C, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000019, 0x00000000, 0xFFFFFF33, 0x0000004B, 0x00000000, 0xFFFFFF33, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00830201, 0x00830202, 0x00830203, 0x00830203, 0x00830201, 0x00830201, 0x00830206, 0x00830206, 0x00830203, 0x00830203, 0x00830203, 0x00830203, 0x00830203, 0x00830203, 0x00830203, 0x00830203, 0x00000000, 0x00000000, 0x00000000, 0x001A0060, 0x00000001, D_802433A4_E11B44, 0x00000000, 0x00000001, D_802436F8_E11E98, 0x00000000, 0x00000001, D_80243A18_E121B8, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
